.class public Lcom/jess/arms/c/i;
.super Ljava/lang/Object;
.source "ThirdViewUtil.java"


# static fields
.field private static a:I = -0x1


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 5
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 73
    sget-boolean v0, Lcom/jess/arms/a/j;->a:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 74
    :cond_0
    sget v0, Lcom/jess/arms/c/i;->a:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_2

    const/4 v0, 0x1

    .line 75
    sput v0, Lcom/jess/arms/c/i;->a:I

    .line 76
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v2, 0x0

    .line 80
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x80

    .line 79
    invoke-virtual {v0, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 81
    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v3, :cond_1

    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v4, "design_width"

    .line 82
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v3, "design_height"

    .line 83
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 84
    :cond_1
    sput v2, Lcom/jess/arms/c/i;->a:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 87
    :catch_0
    sput v2, Lcom/jess/arms/c/i;->a:I

    .line 91
    :cond_2
    :goto_0
    sget v0, Lcom/jess/arms/c/i;->a:I

    if-nez v0, :cond_3

    return-object v1

    :cond_3
    const-string v0, "FrameLayout"

    .line 96
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 97
    new-instance v1, Lcom/zhy/autolayout/AutoFrameLayout;

    invoke-direct {v1, p1, p2}, Lcom/zhy/autolayout/AutoFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_1

    :cond_4
    const-string v0, "LinearLayout"

    .line 98
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 99
    new-instance v1, Lcom/zhy/autolayout/AutoLinearLayout;

    invoke-direct {v1, p1, p2}, Lcom/zhy/autolayout/AutoLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_1

    :cond_5
    const-string v0, "RelativeLayout"

    .line 100
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    .line 101
    new-instance v1, Lcom/zhy/autolayout/AutoRelativeLayout;

    invoke-direct {v1, p1, p2}, Lcom/zhy/autolayout/AutoRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    :cond_6
    :goto_1
    return-object v1
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/Object;)Lbutterknife/Unbinder;
    .locals 1

    .line 58
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 59
    check-cast p1, Landroid/app/Activity;

    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/app/Activity;)Lbutterknife/Unbinder;

    move-result-object p0

    return-object p0

    .line 60
    :cond_0
    instance-of v0, p1, Landroid/view/View;

    if-eqz v0, :cond_1

    .line 61
    check-cast p1, Landroid/view/View;

    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    move-result-object p0

    return-object p0

    .line 62
    :cond_1
    instance-of v0, p1, Landroid/app/Dialog;

    if-eqz v0, :cond_2

    .line 63
    check-cast p1, Landroid/app/Dialog;

    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/app/Dialog;)Lbutterknife/Unbinder;

    move-result-object p0

    return-object p0

    .line 65
    :cond_2
    sget-object p0, Lbutterknife/Unbinder;->EMPTY:Lbutterknife/Unbinder;

    return-object p0
.end method

.method public static a()Z
    .locals 2

    .line 54
    sget-boolean v0, Lcom/jess/arms/a/j;->a:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    sget v0, Lcom/jess/arms/c/i;->a:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
