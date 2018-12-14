.class public Lcom/jaeger/library/StatusBarUtil;
.super Ljava/lang/Object;
.source "StatusBarUtil.java"


# static fields
.field public static final DEFAULT_STATUS_BAR_ALPHA:I = 0x70

.field private static final FAKE_STATUS_BAR_VIEW_ID:I

.field private static final FAKE_TRANSLUCENT_VIEW_ID:I

.field private static final TAG_KEY_HAVE_SET_OFFSET:I = -0x7b


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    sget v0, Lcom/jaeger/library/R$id;->statusbarutil_fake_status_bar_view:I

    sput v0, Lcom/jaeger/library/StatusBarUtil;->FAKE_STATUS_BAR_VIEW_ID:I

    .line 27
    sget v0, Lcom/jaeger/library/R$id;->statusbarutil_translucent_view:I

    sput v0, Lcom/jaeger/library/StatusBarUtil;->FAKE_TRANSLUCENT_VIEW_ID:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addTranslucentView(Landroid/app/Activity;I)V
    .locals 3
    .param p1    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
            to = 0xffL
        .end annotation
    .end param

    const v0, 0x1020002

    .line 532
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 533
    sget v1, Lcom/jaeger/library/StatusBarUtil;->FAKE_TRANSLUCENT_VIEW_ID:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 535
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result p0

    const/16 v0, 0x8

    const/4 v2, 0x0

    if-ne p0, v0, :cond_0

    .line 536
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 538
    :cond_0
    invoke-static {p1, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    invoke-virtual {v1, p0}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    .line 540
    :cond_1
    invoke-static {p0, p1}, Lcom/jaeger/library/StatusBarUtil;->createTranslucentStatusBarView(Landroid/app/Activity;I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :goto_0
    return-void
.end method

.method private static calculateStatusColor(II)I
    .locals 6
    .param p0    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    if-nez p1, :cond_0

    return p0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    int-to-float p1, p1

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr p1, v1

    sub-float/2addr v0, p1

    shr-int/lit8 p1, p0, 0x10

    and-int/lit16 p1, p1, 0xff

    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    and-int/lit16 p0, p0, 0xff

    int-to-float p1, p1

    mul-float p1, p1, v0

    float-to-double v2, p1

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    add-double/2addr v2, v4

    double-to-int p1, v2

    int-to-float v1, v1

    mul-float v1, v1, v0

    float-to-double v1, v1

    add-double/2addr v1, v4

    double-to-int v1, v1

    int-to-float p0, p0

    mul-float p0, p0, v0

    float-to-double v2, p0

    add-double/2addr v2, v4

    double-to-int p0, v2

    const/high16 v0, -0x1000000

    shl-int/lit8 p1, p1, 0x10

    or-int/2addr p1, v0

    shl-int/lit8 v0, v1, 0x8

    or-int/2addr p1, v0

    or-int/2addr p0, p1

    return p0
.end method

.method private static clearPreviousSetting(Landroid/app/Activity;)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .line 516
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 517
    sget v1, Lcom/jaeger/library/StatusBarUtil;->FAKE_STATUS_BAR_VIEW_ID:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 519
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const v0, 0x1020002

    .line 520
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    .line 521
    invoke-virtual {p0, v0, v0, v0, v0}, Landroid/view/ViewGroup;->setPadding(IIII)V

    :cond_0
    return-void
.end method

.method private static createStatusBarView(Landroid/app/Activity;I)Landroid/view/View;
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 552
    invoke-static {p0, p1, v0}, Lcom/jaeger/library/StatusBarUtil;->createStatusBarView(Landroid/app/Activity;II)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method private static createStatusBarView(Landroid/app/Activity;II)Landroid/view/View;
    .locals 3
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .line 565
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 566
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 567
    invoke-static {p0}, Lcom/jaeger/library/StatusBarUtil;->getStatusBarHeight(Landroid/content/Context;)I

    move-result p0

    const/4 v2, -0x1

    invoke-direct {v1, v2, p0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 568
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 569
    invoke-static {p1, p2}, Lcom/jaeger/library/StatusBarUtil;->calculateStatusColor(II)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 570
    sget p0, Lcom/jaeger/library/StatusBarUtil;->FAKE_STATUS_BAR_VIEW_ID:I

    invoke-virtual {v0, p0}, Landroid/view/View;->setId(I)V

    return-object v0
.end method

.method private static createTranslucentStatusBarView(Landroid/app/Activity;I)Landroid/view/View;
    .locals 3

    .line 626
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 627
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 628
    invoke-static {p0}, Lcom/jaeger/library/StatusBarUtil;->getStatusBarHeight(Landroid/content/Context;)I

    move-result p0

    const/4 v2, -0x1

    invoke-direct {v1, v2, p0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 629
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p0, 0x0

    .line 630
    invoke-static {p1, p0, p0, p0}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 631
    sget p0, Lcom/jaeger/library/StatusBarUtil;->FAKE_TRANSLUCENT_VIEW_ID:I

    invoke-virtual {v0, p0}, Landroid/view/View;->setId(I)V

    return-object v0
.end method

.method private static getStatusBarHeight(Landroid/content/Context;)I
    .locals 4

    .line 643
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "status_bar_height"

    const-string v2, "dimen"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 644
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method public static hideFakeStatusBarView(Landroid/app/Activity;)V
    .locals 2

    .line 501
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    .line 502
    sget v0, Lcom/jaeger/library/StatusBarUtil;->FAKE_STATUS_BAR_VIEW_ID:I

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    .line 504
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 506
    :cond_0
    sget v0, Lcom/jaeger/library/StatusBarUtil;->FAKE_TRANSLUCENT_VIEW_ID:I

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 508
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public static setColor(Landroid/app/Activity;I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    const/16 v0, 0x70

    .line 37
    invoke-static {p0, p1, v0}, Lcom/jaeger/library/StatusBarUtil;->setColor(Landroid/app/Activity;II)V

    return-void
.end method

.method public static setColor(Landroid/app/Activity;II)V
    .locals 3
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
            to = 0xffL
        .end annotation
    .end param

    .line 49
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/high16 v1, 0x4000000

    const/16 v2, 0x15

    if-lt v0, v2, :cond_0

    .line 50
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v2, -0x80000000

    invoke-virtual {v0, v2}, Landroid/view/Window;->addFlags(I)V

    .line 51
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 52
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-static {p1, p2}, Lcom/jaeger/library/StatusBarUtil;->calculateStatusColor(II)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/Window;->setStatusBarColor(I)V

    goto :goto_1

    .line 53
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v0, v2, :cond_3

    .line 54
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 55
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 56
    sget v1, Lcom/jaeger/library/StatusBarUtil;->FAKE_STATUS_BAR_VIEW_ID:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 58
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v2, 0x8

    if-ne v0, v2, :cond_1

    const/4 v0, 0x0

    .line 59
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 61
    :cond_1
    invoke-static {p1, p2}, Lcom/jaeger/library/StatusBarUtil;->calculateStatusColor(II)I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    .line 63
    :cond_2
    invoke-static {p0, p1, p2}, Lcom/jaeger/library/StatusBarUtil;->createStatusBarView(Landroid/app/Activity;II)Landroid/view/View;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 65
    :goto_0
    invoke-static {p0}, Lcom/jaeger/library/StatusBarUtil;->setRootView(Landroid/app/Activity;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public static setColorDiff(Landroid/app/Activity;I)V
    .locals 3
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 137
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ge v0, v1, :cond_0

    return-void

    .line 140
    :cond_0
    invoke-static {p0}, Lcom/jaeger/library/StatusBarUtil;->transparentStatusBar(Landroid/app/Activity;)V

    const v0, 0x1020002

    .line 141
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 143
    sget v1, Lcom/jaeger/library/StatusBarUtil;->FAKE_STATUS_BAR_VIEW_ID:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 145
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v2, 0x8

    if-ne v0, v2, :cond_1

    const/4 v0, 0x0

    .line 146
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 148
    :cond_1
    invoke-virtual {v1, p1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    .line 150
    :cond_2
    invoke-static {p0, p1}, Lcom/jaeger/library/StatusBarUtil;->createStatusBarView(Landroid/app/Activity;I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 152
    :goto_0
    invoke-static {p0}, Lcom/jaeger/library/StatusBarUtil;->setRootView(Landroid/app/Activity;)V

    return-void
.end method

.method public static setColorForDrawerLayout(Landroid/app/Activity;Landroid/support/v4/widget/DrawerLayout;I)V
    .locals 1
    .param p2    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    const/16 v0, 0x70

    .line 235
    invoke-static {p0, p1, p2, v0}, Lcom/jaeger/library/StatusBarUtil;->setColorForDrawerLayout(Landroid/app/Activity;Landroid/support/v4/widget/DrawerLayout;II)V

    return-void
.end method

.method public static setColorForDrawerLayout(Landroid/app/Activity;Landroid/support/v4/widget/DrawerLayout;II)V
    .locals 5
    .param p2    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
            to = 0xffL
        .end annotation
    .end param

    .line 259
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ge v0, v1, :cond_0

    return-void

    .line 262
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    const/high16 v2, 0x4000000

    const/4 v3, 0x0

    if-lt v0, v1, :cond_1

    .line 263
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, -0x80000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 264
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Window;->clearFlags(I)V

    .line 265
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/Window;->setStatusBarColor(I)V

    goto :goto_0

    .line 267
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Window;->addFlags(I)V

    .line 271
    :goto_0
    invoke-virtual {p1, v3}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 272
    sget v1, Lcom/jaeger/library/StatusBarUtil;->FAKE_STATUS_BAR_VIEW_ID:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 274
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v4, 0x8

    if-ne v2, v4, :cond_2

    .line 275
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 277
    :cond_2
    invoke-virtual {v1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_1

    .line 279
    :cond_3
    invoke-static {p0, p2}, Lcom/jaeger/library/StatusBarUtil;->createStatusBarView(Landroid/app/Activity;I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {v0, p2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 282
    :goto_1
    instance-of p2, v0, Landroid/widget/LinearLayout;

    if-nez p2, :cond_4

    const/4 p2, 0x1

    invoke-virtual {v0, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 283
    invoke-virtual {v0, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    .line 284
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v1

    invoke-static {p0}, Lcom/jaeger/library/StatusBarUtil;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v3

    add-int/2addr v2, v3

    .line 285
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v4

    .line 284
    invoke-virtual {p2, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 288
    :cond_4
    invoke-static {p1, v0}, Lcom/jaeger/library/StatusBarUtil;->setDrawerLayoutProperty(Landroid/support/v4/widget/DrawerLayout;Landroid/view/ViewGroup;)V

    .line 289
    invoke-static {p0, p3}, Lcom/jaeger/library/StatusBarUtil;->addTranslucentView(Landroid/app/Activity;I)V

    return-void
.end method

.method public static setColorForDrawerLayoutDiff(Landroid/app/Activity;Landroid/support/v4/widget/DrawerLayout;I)V
    .locals 5
    .param p2    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 315
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_3

    .line 316
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    const/4 v0, 0x0

    .line 318
    invoke-virtual {p1, v0}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 319
    sget v2, Lcom/jaeger/library/StatusBarUtil;->FAKE_STATUS_BAR_VIEW_ID:I

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 321
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_0

    .line 322
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    const/16 v3, 0x70

    .line 324
    invoke-static {p2, v3}, Lcom/jaeger/library/StatusBarUtil;->calculateStatusColor(II)I

    move-result p2

    invoke-virtual {v2, p2}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    .line 327
    :cond_1
    invoke-static {p0, p2}, Lcom/jaeger/library/StatusBarUtil;->createStatusBarView(Landroid/app/Activity;I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {v1, p2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 330
    :goto_0
    instance-of p2, v1, Landroid/widget/LinearLayout;

    if-nez p2, :cond_2

    const/4 p2, 0x1

    invoke-virtual {v1, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 331
    invoke-virtual {v1, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    invoke-static {p0}, Lcom/jaeger/library/StatusBarUtil;->getStatusBarHeight(Landroid/content/Context;)I

    move-result p0

    invoke-virtual {p2, v0, p0, v0, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 334
    :cond_2
    invoke-static {p1, v1}, Lcom/jaeger/library/StatusBarUtil;->setDrawerLayoutProperty(Landroid/support/v4/widget/DrawerLayout;Landroid/view/ViewGroup;)V

    :cond_3
    return-void
.end method

.method public static setColorForSwipeBack(Landroid/app/Activity;I)V
    .locals 1

    const/16 v0, 0x70

    .line 76
    invoke-static {p0, p1, v0}, Lcom/jaeger/library/StatusBarUtil;->setColorForSwipeBack(Landroid/app/Activity;II)V

    return-void
.end method

.method public static setColorForSwipeBack(Landroid/app/Activity;II)V
    .locals 6
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
            to = 0xffL
        .end annotation
    .end param

    .line 88
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_4

    const v0, 0x1020002

    .line 90
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    .line 91
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 92
    invoke-static {p0}, Lcom/jaeger/library/StatusBarUtil;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v3

    if-eqz v2, :cond_2

    .line 93
    instance-of v4, v2, Landroid/support/design/widget/CoordinatorLayout;

    if-eqz v4, :cond_2

    .line 94
    check-cast v2, Landroid/support/design/widget/CoordinatorLayout;

    .line 95
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-ge v4, v5, :cond_1

    .line 96
    invoke-virtual {v2, v1}, Landroid/support/design/widget/CoordinatorLayout;->setFitsSystemWindows(Z)V

    .line 97
    invoke-static {p1, p2}, Lcom/jaeger/library/StatusBarUtil;->calculateStatusColor(II)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 98
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result p1

    if-ge p1, v3, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_3

    .line 100
    invoke-virtual {v0, v1, v3, v1, v1}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 101
    new-instance p1, Lcom/jaeger/library/StatusBarUtil$1;

    invoke-direct {p1, v2}, Lcom/jaeger/library/StatusBarUtil$1;-><init>(Landroid/support/design/widget/CoordinatorLayout;)V

    invoke-virtual {v2, p1}, Landroid/support/design/widget/CoordinatorLayout;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 109
    :cond_1
    invoke-static {p1, p2}, Lcom/jaeger/library/StatusBarUtil;->calculateStatusColor(II)I

    move-result p1

    invoke-virtual {v2, p1}, Landroid/support/design/widget/CoordinatorLayout;->setStatusBarBackgroundColor(I)V

    goto :goto_1

    .line 112
    :cond_2
    invoke-virtual {v0, v1, v3, v1, v1}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 113
    invoke-static {p1, p2}, Lcom/jaeger/library/StatusBarUtil;->calculateStatusColor(II)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 115
    :cond_3
    :goto_1
    invoke-static {p0}, Lcom/jaeger/library/StatusBarUtil;->setTransparentForWindow(Landroid/app/Activity;)V

    :cond_4
    return-void
.end method

.method public static setColorNoTranslucent(Landroid/app/Activity;I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 126
    invoke-static {p0, p1, v0}, Lcom/jaeger/library/StatusBarUtil;->setColor(Landroid/app/Activity;II)V

    return-void
.end method

.method public static setColorNoTranslucentForDrawerLayout(Landroid/app/Activity;Landroid/support/v4/widget/DrawerLayout;I)V
    .locals 1
    .param p2    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 246
    invoke-static {p0, p1, p2, v0}, Lcom/jaeger/library/StatusBarUtil;->setColorForDrawerLayout(Landroid/app/Activity;Landroid/support/v4/widget/DrawerLayout;II)V

    return-void
.end method

.method private static setDrawerLayoutProperty(Landroid/support/v4/widget/DrawerLayout;Landroid/view/ViewGroup;)V
    .locals 3

    const/4 v0, 0x1

    .line 299
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    const/4 v2, 0x0

    .line 300
    invoke-virtual {p0, v2}, Landroid/support/v4/widget/DrawerLayout;->setFitsSystemWindows(Z)V

    .line 301
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setFitsSystemWindows(Z)V

    .line 302
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 303
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setFitsSystemWindows(Z)V

    return-void
.end method

.method private static setRootView(Landroid/app/Activity;)V
    .locals 4

    const v0, 0x1020002

    .line 578
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    .line 579
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 580
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 581
    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    .line 582
    invoke-virtual {v2, v3}, Landroid/view/View;->setFitsSystemWindows(Z)V

    .line 583
    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static setTranslucent(Landroid/app/Activity;)V
    .locals 1

    const/16 v0, 0x70

    .line 163
    invoke-static {p0, v0}, Lcom/jaeger/library/StatusBarUtil;->setTranslucent(Landroid/app/Activity;I)V

    return-void
.end method

.method public static setTranslucent(Landroid/app/Activity;I)V
    .locals 2
    .param p1    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
            to = 0xffL
        .end annotation
    .end param

    .line 175
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ge v0, v1, :cond_0

    return-void

    .line 178
    :cond_0
    invoke-static {p0}, Lcom/jaeger/library/StatusBarUtil;->setTransparent(Landroid/app/Activity;)V

    .line 179
    invoke-static {p0, p1}, Lcom/jaeger/library/StatusBarUtil;->addTranslucentView(Landroid/app/Activity;I)V

    return-void
.end method

.method public static setTranslucentDiff(Landroid/app/Activity;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 220
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 222
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 223
    invoke-static {p0}, Lcom/jaeger/library/StatusBarUtil;->setRootView(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method public static setTranslucentForCoordinatorLayout(Landroid/app/Activity;I)V
    .locals 2
    .param p1    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
            to = 0xffL
        .end annotation
    .end param

    .line 191
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ge v0, v1, :cond_0

    return-void

    .line 194
    :cond_0
    invoke-static {p0}, Lcom/jaeger/library/StatusBarUtil;->transparentStatusBar(Landroid/app/Activity;)V

    .line 195
    invoke-static {p0, p1}, Lcom/jaeger/library/StatusBarUtil;->addTranslucentView(Landroid/app/Activity;I)V

    return-void
.end method

.method public static setTranslucentForDrawerLayout(Landroid/app/Activity;Landroid/support/v4/widget/DrawerLayout;)V
    .locals 1

    const/16 v0, 0x70

    .line 345
    invoke-static {p0, p1, v0}, Lcom/jaeger/library/StatusBarUtil;->setTranslucentForDrawerLayout(Landroid/app/Activity;Landroid/support/v4/widget/DrawerLayout;I)V

    return-void
.end method

.method public static setTranslucentForDrawerLayout(Landroid/app/Activity;Landroid/support/v4/widget/DrawerLayout;I)V
    .locals 2
    .param p2    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
            to = 0xffL
        .end annotation
    .end param

    .line 356
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ge v0, v1, :cond_0

    return-void

    .line 359
    :cond_0
    invoke-static {p0, p1}, Lcom/jaeger/library/StatusBarUtil;->setTransparentForDrawerLayout(Landroid/app/Activity;Landroid/support/v4/widget/DrawerLayout;)V

    .line 360
    invoke-static {p0, p2}, Lcom/jaeger/library/StatusBarUtil;->addTranslucentView(Landroid/app/Activity;I)V

    return-void
.end method

.method public static setTranslucentForDrawerLayoutDiff(Landroid/app/Activity;Landroid/support/v4/widget/DrawerLayout;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 399
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 401
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/high16 v0, 0x4000000

    invoke-virtual {p0, v0}, Landroid/view/Window;->addFlags(I)V

    const/4 p0, 0x0

    .line 403
    invoke-virtual {p1, p0}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x1

    .line 404
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setFitsSystemWindows(Z)V

    .line 405
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 407
    invoke-virtual {p1, v1}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 408
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->setFitsSystemWindows(Z)V

    .line 410
    invoke-virtual {p1, p0}, Landroid/support/v4/widget/DrawerLayout;->setFitsSystemWindows(Z)V

    :cond_0
    return-void
.end method

.method public static setTranslucentForImageView(Landroid/app/Activity;ILandroid/view/View;)V
    .locals 4
    .param p1    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
            to = 0xffL
        .end annotation
    .end param

    .line 443
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ge v0, v1, :cond_0

    return-void

    .line 446
    :cond_0
    invoke-static {p0}, Lcom/jaeger/library/StatusBarUtil;->setTransparentForWindow(Landroid/app/Activity;)V

    .line 447
    invoke-static {p0, p1}, Lcom/jaeger/library/StatusBarUtil;->addTranslucentView(Landroid/app/Activity;I)V

    if-eqz p2, :cond_2

    const/16 p1, -0x7b

    .line 449
    invoke-virtual {p2, p1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 450
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 453
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 454
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-static {p0}, Lcom/jaeger/library/StatusBarUtil;->getStatusBarHeight(Landroid/content/Context;)I

    move-result p0

    add-int/2addr v2, p0

    iget p0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    const/4 p0, 0x1

    .line 456
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p2, p1, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public static setTranslucentForImageView(Landroid/app/Activity;Landroid/view/View;)V
    .locals 1

    const/16 v0, 0x70

    .line 431
    invoke-static {p0, v0, p1}, Lcom/jaeger/library/StatusBarUtil;->setTranslucentForImageView(Landroid/app/Activity;ILandroid/view/View;)V

    return-void
.end method

.method public static setTranslucentForImageViewInFragment(Landroid/app/Activity;ILandroid/view/View;)V
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
            to = 0xffL
        .end annotation
    .end param

    .line 489
    invoke-static {p0, p1, p2}, Lcom/jaeger/library/StatusBarUtil;->setTranslucentForImageView(Landroid/app/Activity;ILandroid/view/View;)V

    .line 490
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x13

    if-lt p1, p2, :cond_0

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x15

    if-ge p1, p2, :cond_0

    .line 491
    invoke-static {p0}, Lcom/jaeger/library/StatusBarUtil;->clearPreviousSetting(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method public static setTranslucentForImageViewInFragment(Landroid/app/Activity;Landroid/view/View;)V
    .locals 1

    const/16 v0, 0x70

    .line 467
    invoke-static {p0, v0, p1}, Lcom/jaeger/library/StatusBarUtil;->setTranslucentForImageViewInFragment(Landroid/app/Activity;ILandroid/view/View;)V

    return-void
.end method

.method public static setTransparent(Landroid/app/Activity;)V
    .locals 2

    .line 204
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ge v0, v1, :cond_0

    return-void

    .line 207
    :cond_0
    invoke-static {p0}, Lcom/jaeger/library/StatusBarUtil;->transparentStatusBar(Landroid/app/Activity;)V

    .line 208
    invoke-static {p0}, Lcom/jaeger/library/StatusBarUtil;->setRootView(Landroid/app/Activity;)V

    return-void
.end method

.method public static setTransparentForDrawerLayout(Landroid/app/Activity;Landroid/support/v4/widget/DrawerLayout;)V
    .locals 4

    .line 370
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ge v0, v1, :cond_0

    return-void

    .line 373
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    const/high16 v2, 0x4000000

    const/4 v3, 0x0

    if-lt v0, v1, :cond_1

    .line 374
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, -0x80000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 375
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Window;->clearFlags(I)V

    .line 376
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/Window;->setStatusBarColor(I)V

    goto :goto_0

    .line 378
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Window;->addFlags(I)V

    .line 381
    :goto_0
    invoke-virtual {p1, v3}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 383
    instance-of v1, v0, Landroid/widget/LinearLayout;

    if-nez v1, :cond_2

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 384
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-static {p0}, Lcom/jaeger/library/StatusBarUtil;->getStatusBarHeight(Landroid/content/Context;)I

    move-result p0

    invoke-virtual {v1, v3, p0, v3, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 388
    :cond_2
    invoke-static {p1, v0}, Lcom/jaeger/library/StatusBarUtil;->setDrawerLayoutProperty(Landroid/support/v4/widget/DrawerLayout;Landroid/view/ViewGroup;)V

    return-void
.end method

.method public static setTransparentForImageView(Landroid/app/Activity;Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    .line 421
    invoke-static {p0, v0, p1}, Lcom/jaeger/library/StatusBarUtil;->setTranslucentForImageView(Landroid/app/Activity;ILandroid/view/View;)V

    return-void
.end method

.method public static setTransparentForImageViewInFragment(Landroid/app/Activity;Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    .line 477
    invoke-static {p0, v0, p1}, Lcom/jaeger/library/StatusBarUtil;->setTranslucentForImageViewInFragment(Landroid/app/Activity;ILandroid/view/View;)V

    return-void
.end method

.method private static setTransparentForWindow(Landroid/app/Activity;)V
    .locals 2

    .line 592
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 593
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 594
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    .line 595
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    const/16 v0, 0x500

    .line 596
    invoke-virtual {p0, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_0

    .line 597
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_1

    .line 598
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/high16 v0, 0x4000000

    .line 599
    invoke-virtual {p0, v0, v0}, Landroid/view/Window;->setFlags(II)V

    :cond_1
    :goto_0
    return-void
.end method

.method private static transparentStatusBar(Landroid/app/Activity;)V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .line 608
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/high16 v1, 0x4000000

    const/16 v2, 0x15

    if-lt v0, v2, :cond_0

    .line 609
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v2, -0x80000000

    invoke-virtual {v0, v2}, Landroid/view/Window;->addFlags(I)V

    .line 610
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 611
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x8000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 612
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/Window;->setStatusBarColor(I)V

    goto :goto_0

    .line 614
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/view/Window;->addFlags(I)V

    :goto_0
    return-void
.end method
