.class public Lcom/zhy/autolayout/utils/ScreenUtils;
.super Ljava/lang/Object;
.source "ScreenUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getScreenSize(Landroid/content/Context;Z)[I
    .locals 9

    const/4 v0, 0x2

    .line 39
    new-array v0, v0, [I

    const-string v1, "window"

    .line 41
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 42
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 43
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 44
    invoke-virtual {v1, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 46
    iget v3, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 47
    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez p1, :cond_0

    aput v3, v0, v5

    .line 52
    invoke-static {p0}, Lcom/zhy/autolayout/utils/ScreenUtils;->getStatusBarHeight(Landroid/content/Context;)I

    move-result p0

    sub-int/2addr v2, p0

    aput v2, v0, v4

    return-object v0

    .line 58
    :cond_0
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p1, 0xe

    const/16 v6, 0x11

    if-lt p0, p1, :cond_1

    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge p0, v6, :cond_1

    .line 61
    :try_start_0
    const-class p0, Landroid/view/Display;

    const-string p1, "getRawWidth"

    new-array v7, v5, [Ljava/lang/Class;

    invoke-virtual {p0, p1, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    new-array p1, v5, [Ljava/lang/Object;

    invoke-virtual {p0, v1, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 62
    :try_start_1
    const-class p1, Landroid/view/Display;

    const-string v3, "getRawHeight"

    new-array v7, v5, [Ljava/lang/Class;

    invoke-virtual {p1, v3, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    new-array v3, v5, [Ljava/lang/Object;

    invoke-virtual {p1, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move v3, p0

    move v2, p1

    goto :goto_0

    :catch_0
    move v3, p0

    .line 67
    :catch_1
    :cond_1
    :goto_0
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p0, v6, :cond_2

    .line 70
    :try_start_2
    new-instance p0, Landroid/graphics/Point;

    invoke-direct {p0}, Landroid/graphics/Point;-><init>()V

    .line 71
    const-class p1, Landroid/view/Display;

    const-string v6, "getRealSize"

    new-array v7, v4, [Ljava/lang/Class;

    const-class v8, Landroid/graphics/Point;

    aput-object v8, v7, v5

    invoke-virtual {p1, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    new-array v6, v4, [Ljava/lang/Object;

    aput-object p0, v6, v5

    invoke-virtual {p1, v1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    iget p1, p0, Landroid/graphics/Point;->x:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 73
    :try_start_3
    iget p0, p0, Landroid/graphics/Point;->y:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move v2, p0

    :catch_2
    move v3, p1

    :catch_3
    :cond_2
    aput v3, v0, v5

    aput v2, v0, v4

    return-object v0
.end method

.method public static getStatusBarHeight(Landroid/content/Context;)I
    .locals 5

    const/4 v0, 0x0

    .line 23
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "status_bar_height"

    const-string v3, "dimen"

    const-string v4, "android"

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_0

    .line 26
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, p0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 30
    invoke-static {p0}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return v0
.end method
