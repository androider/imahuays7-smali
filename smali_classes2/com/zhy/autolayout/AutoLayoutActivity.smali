.class public Lcom/zhy/autolayout/AutoLayoutActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "AutoLayoutActivity.java"


# static fields
.field private static final LAYOUT_FRAMELAYOUT:Ljava/lang/String; = "FrameLayout"

.field private static final LAYOUT_LINEARLAYOUT:Ljava/lang/String; = "LinearLayout"

.field private static final LAYOUT_RELATIVELAYOUT:Ljava/lang/String; = "RelativeLayout"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 2

    const-string v0, "FrameLayout"

    .line 24
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 26
    new-instance v0, Lcom/zhy/autolayout/AutoFrameLayout;

    invoke-direct {v0, p2, p3}, Lcom/zhy/autolayout/AutoFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "LinearLayout"

    .line 29
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 31
    new-instance v0, Lcom/zhy/autolayout/AutoLinearLayout;

    invoke-direct {v0, p2, p3}, Lcom/zhy/autolayout/AutoLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    :cond_1
    const-string v1, "RelativeLayout"

    .line 34
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 36
    new-instance v0, Lcom/zhy/autolayout/AutoRelativeLayout;

    invoke-direct {v0, p2, p3}, Lcom/zhy/autolayout/AutoRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    :cond_2
    if-eqz v0, :cond_3

    return-object v0

    .line 41
    :cond_3
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/app/AppCompatActivity;->onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method
