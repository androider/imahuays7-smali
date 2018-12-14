.class public Lcom/wang/avi/AVLoadingIndicatorView;
.super Landroid/view/View;
.source "AVLoadingIndicatorView.java"


# static fields
.field private static final e:Lcom/wang/avi/a/a;


# instance fields
.field a:I

.field b:I

.field c:I

.field d:I

.field private f:J

.field private g:Z

.field private h:Z

.field private i:Z

.field private final j:Ljava/lang/Runnable;

.field private final k:Ljava/lang/Runnable;

.field private l:Lcom/wang/avi/a;

.field private m:I

.field private n:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    new-instance v0, Lcom/wang/avi/a/a;

    invoke-direct {v0}, Lcom/wang/avi/a/a;-><init>()V

    sput-object v0, Lcom/wang/avi/AVLoadingIndicatorView;->e:Lcom/wang/avi/a/a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 70
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const-wide/16 v0, -0x1

    .line 29
    iput-wide v0, p0, Lcom/wang/avi/AVLoadingIndicatorView;->f:J

    const/4 v0, 0x0

    .line 31
    iput-boolean v0, p0, Lcom/wang/avi/AVLoadingIndicatorView;->g:Z

    .line 33
    iput-boolean v0, p0, Lcom/wang/avi/AVLoadingIndicatorView;->h:Z

    .line 35
    iput-boolean v0, p0, Lcom/wang/avi/AVLoadingIndicatorView;->i:Z

    .line 37
    new-instance v1, Lcom/wang/avi/AVLoadingIndicatorView$1;

    invoke-direct {v1, p0}, Lcom/wang/avi/AVLoadingIndicatorView$1;-><init>(Lcom/wang/avi/AVLoadingIndicatorView;)V

    iput-object v1, p0, Lcom/wang/avi/AVLoadingIndicatorView;->j:Ljava/lang/Runnable;

    .line 47
    new-instance v1, Lcom/wang/avi/AVLoadingIndicatorView$2;

    invoke-direct {v1, p0}, Lcom/wang/avi/AVLoadingIndicatorView$2;-><init>(Lcom/wang/avi/AVLoadingIndicatorView;)V

    iput-object v1, p0, Lcom/wang/avi/AVLoadingIndicatorView;->k:Ljava/lang/Runnable;

    const/4 v1, 0x0

    .line 71
    invoke-direct {p0, p1, v1, v0, v0}, Lcom/wang/avi/AVLoadingIndicatorView;->a(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 75
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-wide/16 v0, -0x1

    .line 29
    iput-wide v0, p0, Lcom/wang/avi/AVLoadingIndicatorView;->f:J

    const/4 v0, 0x0

    .line 31
    iput-boolean v0, p0, Lcom/wang/avi/AVLoadingIndicatorView;->g:Z

    .line 33
    iput-boolean v0, p0, Lcom/wang/avi/AVLoadingIndicatorView;->h:Z

    .line 35
    iput-boolean v0, p0, Lcom/wang/avi/AVLoadingIndicatorView;->i:Z

    .line 37
    new-instance v1, Lcom/wang/avi/AVLoadingIndicatorView$1;

    invoke-direct {v1, p0}, Lcom/wang/avi/AVLoadingIndicatorView$1;-><init>(Lcom/wang/avi/AVLoadingIndicatorView;)V

    iput-object v1, p0, Lcom/wang/avi/AVLoadingIndicatorView;->j:Ljava/lang/Runnable;

    .line 47
    new-instance v1, Lcom/wang/avi/AVLoadingIndicatorView$2;

    invoke-direct {v1, p0}, Lcom/wang/avi/AVLoadingIndicatorView$2;-><init>(Lcom/wang/avi/AVLoadingIndicatorView;)V

    iput-object v1, p0, Lcom/wang/avi/AVLoadingIndicatorView;->k:Ljava/lang/Runnable;

    .line 76
    sget v1, Lcom/wang/avi/R$style;->AVLoadingIndicatorView:I

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/wang/avi/AVLoadingIndicatorView;->a(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 80
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-wide/16 v0, -0x1

    .line 29
    iput-wide v0, p0, Lcom/wang/avi/AVLoadingIndicatorView;->f:J

    const/4 v0, 0x0

    .line 31
    iput-boolean v0, p0, Lcom/wang/avi/AVLoadingIndicatorView;->g:Z

    .line 33
    iput-boolean v0, p0, Lcom/wang/avi/AVLoadingIndicatorView;->h:Z

    .line 35
    iput-boolean v0, p0, Lcom/wang/avi/AVLoadingIndicatorView;->i:Z

    .line 37
    new-instance v0, Lcom/wang/avi/AVLoadingIndicatorView$1;

    invoke-direct {v0, p0}, Lcom/wang/avi/AVLoadingIndicatorView$1;-><init>(Lcom/wang/avi/AVLoadingIndicatorView;)V

    iput-object v0, p0, Lcom/wang/avi/AVLoadingIndicatorView;->j:Ljava/lang/Runnable;

    .line 47
    new-instance v0, Lcom/wang/avi/AVLoadingIndicatorView$2;

    invoke-direct {v0, p0}, Lcom/wang/avi/AVLoadingIndicatorView$2;-><init>(Lcom/wang/avi/AVLoadingIndicatorView;)V

    iput-object v0, p0, Lcom/wang/avi/AVLoadingIndicatorView;->k:Ljava/lang/Runnable;

    .line 81
    sget v0, Lcom/wang/avi/R$style;->AVLoadingIndicatorView:I

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/wang/avi/AVLoadingIndicatorView;->a(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 86
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const-wide/16 v0, -0x1

    .line 29
    iput-wide v0, p0, Lcom/wang/avi/AVLoadingIndicatorView;->f:J

    const/4 p4, 0x0

    .line 31
    iput-boolean p4, p0, Lcom/wang/avi/AVLoadingIndicatorView;->g:Z

    .line 33
    iput-boolean p4, p0, Lcom/wang/avi/AVLoadingIndicatorView;->h:Z

    .line 35
    iput-boolean p4, p0, Lcom/wang/avi/AVLoadingIndicatorView;->i:Z

    .line 37
    new-instance p4, Lcom/wang/avi/AVLoadingIndicatorView$1;

    invoke-direct {p4, p0}, Lcom/wang/avi/AVLoadingIndicatorView$1;-><init>(Lcom/wang/avi/AVLoadingIndicatorView;)V

    iput-object p4, p0, Lcom/wang/avi/AVLoadingIndicatorView;->j:Ljava/lang/Runnable;

    .line 47
    new-instance p4, Lcom/wang/avi/AVLoadingIndicatorView$2;

    invoke-direct {p4, p0}, Lcom/wang/avi/AVLoadingIndicatorView$2;-><init>(Lcom/wang/avi/AVLoadingIndicatorView;)V

    iput-object p4, p0, Lcom/wang/avi/AVLoadingIndicatorView;->k:Ljava/lang/Runnable;

    .line 87
    sget p4, Lcom/wang/avi/R$style;->AVLoadingIndicatorView:I

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/wang/avi/AVLoadingIndicatorView;->a(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method static synthetic a(Lcom/wang/avi/AVLoadingIndicatorView;J)J
    .locals 0

    .line 20
    iput-wide p1, p0, Lcom/wang/avi/AVLoadingIndicatorView;->f:J

    return-wide p1
.end method

.method private a(II)V
    .locals 6

    .line 295
    invoke-virtual {p0}, Lcom/wang/avi/AVLoadingIndicatorView;->getPaddingRight()I

    move-result v0

    invoke-virtual {p0}, Lcom/wang/avi/AVLoadingIndicatorView;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    sub-int/2addr p1, v0

    .line 296
    invoke-virtual {p0}, Lcom/wang/avi/AVLoadingIndicatorView;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Lcom/wang/avi/AVLoadingIndicatorView;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    sub-int/2addr p2, v0

    .line 303
    iget-object v0, p0, Lcom/wang/avi/AVLoadingIndicatorView;->l:Lcom/wang/avi/a;

    if-eqz v0, :cond_2

    .line 306
    iget-object v0, p0, Lcom/wang/avi/AVLoadingIndicatorView;->l:Lcom/wang/avi/a;

    invoke-virtual {v0}, Lcom/wang/avi/a;->getIntrinsicWidth()I

    move-result v0

    .line 307
    iget-object v1, p0, Lcom/wang/avi/AVLoadingIndicatorView;->l:Lcom/wang/avi/a;

    invoke-virtual {v1}, Lcom/wang/avi/a;->getIntrinsicHeight()I

    move-result v1

    int-to-float v0, v0

    int-to-float v1, v1

    div-float/2addr v0, v1

    int-to-float v1, p1

    int-to-float v2, p2

    div-float v3, v1, v2

    cmpl-float v4, v0, v3

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    cmpl-float v3, v3, v0

    if-lez v3, :cond_0

    mul-float v2, v2, v0

    float-to-int v0, v2

    sub-int/2addr p1, v0

    .line 314
    div-int/lit8 p1, p1, 0x2

    add-int/2addr v0, p1

    move v5, p1

    move p1, v0

    goto :goto_0

    :cond_0
    const/high16 v2, 0x3f800000    # 1.0f

    div-float/2addr v2, v0

    mul-float v1, v1, v2

    float-to-int v0, v1

    sub-int/2addr p2, v0

    .line 319
    div-int/lit8 p2, p2, 0x2

    add-int/2addr v0, p2

    goto :goto_1

    :cond_1
    :goto_0
    move v0, p2

    const/4 p2, 0x0

    .line 323
    :goto_1
    iget-object v1, p0, Lcom/wang/avi/AVLoadingIndicatorView;->l:Lcom/wang/avi/a;

    invoke-virtual {v1, v5, p2, p1, v0}, Lcom/wang/avi/a;->setBounds(IIII)V

    :cond_2
    return-void
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2

    const/16 v0, 0x18

    .line 91
    iput v0, p0, Lcom/wang/avi/AVLoadingIndicatorView;->a:I

    const/16 v1, 0x30

    .line 92
    iput v1, p0, Lcom/wang/avi/AVLoadingIndicatorView;->b:I

    .line 93
    iput v0, p0, Lcom/wang/avi/AVLoadingIndicatorView;->c:I

    .line 94
    iput v1, p0, Lcom/wang/avi/AVLoadingIndicatorView;->d:I

    .line 96
    sget-object v0, Lcom/wang/avi/R$styleable;->AVLoadingIndicatorView:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 99
    sget p2, Lcom/wang/avi/R$styleable;->AVLoadingIndicatorView_minWidth:I

    iget p3, p0, Lcom/wang/avi/AVLoadingIndicatorView;->a:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/wang/avi/AVLoadingIndicatorView;->a:I

    .line 100
    sget p2, Lcom/wang/avi/R$styleable;->AVLoadingIndicatorView_maxWidth:I

    iget p3, p0, Lcom/wang/avi/AVLoadingIndicatorView;->b:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/wang/avi/AVLoadingIndicatorView;->b:I

    .line 101
    sget p2, Lcom/wang/avi/R$styleable;->AVLoadingIndicatorView_minHeight:I

    iget p3, p0, Lcom/wang/avi/AVLoadingIndicatorView;->c:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/wang/avi/AVLoadingIndicatorView;->c:I

    .line 102
    sget p2, Lcom/wang/avi/R$styleable;->AVLoadingIndicatorView_maxHeight:I

    iget p3, p0, Lcom/wang/avi/AVLoadingIndicatorView;->d:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/wang/avi/AVLoadingIndicatorView;->d:I

    .line 103
    sget p2, Lcom/wang/avi/R$styleable;->AVLoadingIndicatorView_indicatorName:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 104
    sget p3, Lcom/wang/avi/R$styleable;->AVLoadingIndicatorView_indicatorColor:I

    const/4 p4, -0x1

    invoke-virtual {p1, p3, p4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lcom/wang/avi/AVLoadingIndicatorView;->m:I

    .line 105
    invoke-virtual {p0, p2}, Lcom/wang/avi/AVLoadingIndicatorView;->setIndicator(Ljava/lang/String;)V

    .line 106
    iget-object p2, p0, Lcom/wang/avi/AVLoadingIndicatorView;->l:Lcom/wang/avi/a;

    if-nez p2, :cond_0

    .line 107
    sget-object p2, Lcom/wang/avi/AVLoadingIndicatorView;->e:Lcom/wang/avi/a/a;

    invoke-virtual {p0, p2}, Lcom/wang/avi/AVLoadingIndicatorView;->setIndicator(Lcom/wang/avi/a;)V

    .line 109
    :cond_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method static synthetic a(Lcom/wang/avi/AVLoadingIndicatorView;)Z
    .locals 0

    .line 20
    iget-boolean p0, p0, Lcom/wang/avi/AVLoadingIndicatorView;->i:Z

    return p0
.end method

.method static synthetic a(Lcom/wang/avi/AVLoadingIndicatorView;Z)Z
    .locals 0

    .line 20
    iput-boolean p1, p0, Lcom/wang/avi/AVLoadingIndicatorView;->g:Z

    return p1
.end method

.method static synthetic b(Lcom/wang/avi/AVLoadingIndicatorView;Z)Z
    .locals 0

    .line 20
    iput-boolean p1, p0, Lcom/wang/avi/AVLoadingIndicatorView;->h:Z

    return p1
.end method

.method private d()V
    .locals 2

    .line 380
    invoke-virtual {p0}, Lcom/wang/avi/AVLoadingIndicatorView;->getDrawableState()[I

    move-result-object v0

    .line 381
    iget-object v1, p0, Lcom/wang/avi/AVLoadingIndicatorView;->l:Lcom/wang/avi/a;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/wang/avi/AVLoadingIndicatorView;->l:Lcom/wang/avi/a;

    invoke-virtual {v1}, Lcom/wang/avi/a;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 382
    iget-object v1, p0, Lcom/wang/avi/AVLoadingIndicatorView;->l:Lcom/wang/avi/a;

    invoke-virtual {v1, v0}, Lcom/wang/avi/a;->setState([I)Z

    :cond_0
    return-void
.end method

.method private e()V
    .locals 1

    .line 413
    iget-object v0, p0, Lcom/wang/avi/AVLoadingIndicatorView;->j:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/wang/avi/AVLoadingIndicatorView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 414
    iget-object v0, p0, Lcom/wang/avi/AVLoadingIndicatorView;->k:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/wang/avi/AVLoadingIndicatorView;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    const-wide/16 v0, -0x1

    .line 217
    iput-wide v0, p0, Lcom/wang/avi/AVLoadingIndicatorView;->f:J

    const/4 v0, 0x0

    .line 218
    iput-boolean v0, p0, Lcom/wang/avi/AVLoadingIndicatorView;->i:Z

    .line 219
    iget-object v0, p0, Lcom/wang/avi/AVLoadingIndicatorView;->j:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/wang/avi/AVLoadingIndicatorView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 220
    iget-boolean v0, p0, Lcom/wang/avi/AVLoadingIndicatorView;->h:Z

    if-nez v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/wang/avi/AVLoadingIndicatorView;->k:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1f4

    invoke-virtual {p0, v0, v1, v2}, Lcom/wang/avi/AVLoadingIndicatorView;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 v0, 0x1

    .line 222
    iput-boolean v0, p0, Lcom/wang/avi/AVLoadingIndicatorView;->h:Z

    :cond_0
    return-void
.end method

.method a(Landroid/graphics/Canvas;)V
    .locals 4

    .line 334
    iget-object v0, p0, Lcom/wang/avi/AVLoadingIndicatorView;->l:Lcom/wang/avi/a;

    if-eqz v0, :cond_0

    .line 338
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 340
    invoke-virtual {p0}, Lcom/wang/avi/AVLoadingIndicatorView;->getPaddingLeft()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/wang/avi/AVLoadingIndicatorView;->getPaddingTop()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 342
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 343
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 345
    iget-boolean p1, p0, Lcom/wang/avi/AVLoadingIndicatorView;->n:Z

    if-eqz p1, :cond_0

    instance-of p1, v0, Landroid/graphics/drawable/Animatable;

    if-eqz p1, :cond_0

    .line 346
    check-cast v0, Landroid/graphics/drawable/Animatable;

    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->start()V

    const/4 p1, 0x0

    .line 347
    iput-boolean p1, p0, Lcom/wang/avi/AVLoadingIndicatorView;->n:Z

    :cond_0
    return-void
.end method

.method b()V
    .locals 1

    .line 233
    invoke-virtual {p0}, Lcom/wang/avi/AVLoadingIndicatorView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 237
    :cond_0
    iget-object v0, p0, Lcom/wang/avi/AVLoadingIndicatorView;->l:Lcom/wang/avi/a;

    instance-of v0, v0, Landroid/graphics/drawable/Animatable;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 238
    iput-boolean v0, p0, Lcom/wang/avi/AVLoadingIndicatorView;->n:Z

    .line 240
    :cond_1
    invoke-virtual {p0}, Lcom/wang/avi/AVLoadingIndicatorView;->postInvalidate()V

    return-void
.end method

.method c()V
    .locals 1

    .line 244
    iget-object v0, p0, Lcom/wang/avi/AVLoadingIndicatorView;->l:Lcom/wang/avi/a;

    instance-of v0, v0, Landroid/graphics/drawable/Animatable;

    if-eqz v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/wang/avi/AVLoadingIndicatorView;->l:Lcom/wang/avi/a;

    invoke-virtual {v0}, Lcom/wang/avi/a;->stop()V

    const/4 v0, 0x0

    .line 246
    iput-boolean v0, p0, Lcom/wang/avi/AVLoadingIndicatorView;->n:Z

    .line 248
    :cond_0
    invoke-virtual {p0}, Lcom/wang/avi/AVLoadingIndicatorView;->postInvalidate()V

    return-void
.end method

.method public drawableHotspotChanged(FF)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 389
    invoke-super {p0, p1, p2}, Landroid/view/View;->drawableHotspotChanged(FF)V

    .line 391
    iget-object v0, p0, Lcom/wang/avi/AVLoadingIndicatorView;->l:Lcom/wang/avi/a;

    if-eqz v0, :cond_0

    .line 392
    iget-object v0, p0, Lcom/wang/avi/AVLoadingIndicatorView;->l:Lcom/wang/avi/a;

    invoke-virtual {v0, p1, p2}, Lcom/wang/avi/a;->setHotspot(FF)V

    :cond_0
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 0

    .line 375
    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    .line 376
    invoke-direct {p0}, Lcom/wang/avi/AVLoadingIndicatorView;->d()V

    return-void
.end method

.method public getIndicator()Lcom/wang/avi/a;
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/wang/avi/AVLoadingIndicatorView;->l:Lcom/wang/avi/a;

    return-object v0
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 5

    .line 275
    invoke-virtual {p0, p1}, Lcom/wang/avi/AVLoadingIndicatorView;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 276
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    .line 277
    invoke-virtual {p0}, Lcom/wang/avi/AVLoadingIndicatorView;->getScrollX()I

    move-result v0

    invoke-virtual {p0}, Lcom/wang/avi/AVLoadingIndicatorView;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    .line 278
    invoke-virtual {p0}, Lcom/wang/avi/AVLoadingIndicatorView;->getScrollY()I

    move-result v1

    invoke-virtual {p0}, Lcom/wang/avi/AVLoadingIndicatorView;->getPaddingTop()I

    move-result v2

    add-int/2addr v1, v2

    .line 280
    iget v2, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v0

    iget v3, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v1

    iget v4, p1, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v0

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p1, v1

    invoke-virtual {p0, v2, v3, v4, p1}, Lcom/wang/avi/AVLoadingIndicatorView;->invalidate(IIII)V

    goto :goto_0

    .line 283
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .line 398
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 399
    invoke-virtual {p0}, Lcom/wang/avi/AVLoadingIndicatorView;->b()V

    .line 400
    invoke-direct {p0}, Lcom/wang/avi/AVLoadingIndicatorView;->e()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 405
    invoke-virtual {p0}, Lcom/wang/avi/AVLoadingIndicatorView;->c()V

    .line 408
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 409
    invoke-direct {p0}, Lcom/wang/avi/AVLoadingIndicatorView;->e()V

    return-void
.end method

.method protected declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    monitor-enter p0

    .line 329
    :try_start_0
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 330
    invoke-virtual {p0, p1}, Lcom/wang/avi/AVLoadingIndicatorView;->a(Landroid/graphics/Canvas;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 331
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 328
    monitor-exit p0

    throw p1
.end method

.method protected declared-synchronized onMeasure(II)V
    .locals 5

    monitor-enter p0

    .line 357
    :try_start_0
    iget-object v0, p0, Lcom/wang/avi/AVLoadingIndicatorView;->l:Lcom/wang/avi/a;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 359
    iget v2, p0, Lcom/wang/avi/AVLoadingIndicatorView;->a:I

    iget v3, p0, Lcom/wang/avi/AVLoadingIndicatorView;->b:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 360
    iget v3, p0, Lcom/wang/avi/AVLoadingIndicatorView;->c:I

    iget v4, p0, Lcom/wang/avi/AVLoadingIndicatorView;->d:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 363
    :goto_0
    invoke-direct {p0}, Lcom/wang/avi/AVLoadingIndicatorView;->d()V

    .line 365
    invoke-virtual {p0}, Lcom/wang/avi/AVLoadingIndicatorView;->getPaddingLeft()I

    move-result v3

    invoke-virtual {p0}, Lcom/wang/avi/AVLoadingIndicatorView;->getPaddingRight()I

    move-result v4

    add-int/2addr v3, v4

    add-int/2addr v2, v3

    .line 366
    invoke-virtual {p0}, Lcom/wang/avi/AVLoadingIndicatorView;->getPaddingTop()I

    move-result v3

    invoke-virtual {p0}, Lcom/wang/avi/AVLoadingIndicatorView;->getPaddingBottom()I

    move-result v4

    add-int/2addr v3, v4

    add-int/2addr v0, v3

    .line 368
    invoke-static {v2, p1, v1}, Lcom/wang/avi/AVLoadingIndicatorView;->resolveSizeAndState(III)I

    move-result p1

    .line 369
    invoke-static {v0, p2, v1}, Lcom/wang/avi/AVLoadingIndicatorView;->resolveSizeAndState(III)I

    move-result p2

    .line 370
    invoke-virtual {p0, p1, p2}, Lcom/wang/avi/AVLoadingIndicatorView;->setMeasuredDimension(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 371
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 353
    monitor-exit p0

    throw p1
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 289
    invoke-direct {p0, p1, p2}, Lcom/wang/avi/AVLoadingIndicatorView;->a(II)V

    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    .line 265
    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    const/16 p1, 0x8

    if-eq p2, p1, :cond_1

    const/4 p1, 0x4

    if-ne p2, p1, :cond_0

    goto :goto_0

    .line 269
    :cond_0
    invoke-virtual {p0}, Lcom/wang/avi/AVLoadingIndicatorView;->b()V

    goto :goto_1

    .line 267
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/wang/avi/AVLoadingIndicatorView;->c()V

    :goto_1
    return-void
.end method

.method public setIndicator(Lcom/wang/avi/a;)V
    .locals 2

    .line 117
    iget-object v0, p0, Lcom/wang/avi/AVLoadingIndicatorView;->l:Lcom/wang/avi/a;

    if-eq v0, p1, :cond_2

    .line 118
    iget-object v0, p0, Lcom/wang/avi/AVLoadingIndicatorView;->l:Lcom/wang/avi/a;

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/wang/avi/AVLoadingIndicatorView;->l:Lcom/wang/avi/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/wang/avi/a;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 120
    iget-object v0, p0, Lcom/wang/avi/AVLoadingIndicatorView;->l:Lcom/wang/avi/a;

    invoke-virtual {p0, v0}, Lcom/wang/avi/AVLoadingIndicatorView;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 123
    :cond_0
    iput-object p1, p0, Lcom/wang/avi/AVLoadingIndicatorView;->l:Lcom/wang/avi/a;

    .line 125
    iget v0, p0, Lcom/wang/avi/AVLoadingIndicatorView;->m:I

    invoke-virtual {p0, v0}, Lcom/wang/avi/AVLoadingIndicatorView;->setIndicatorColor(I)V

    if-eqz p1, :cond_1

    .line 127
    invoke-virtual {p1, p0}, Lcom/wang/avi/a;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 129
    :cond_1
    invoke-virtual {p0}, Lcom/wang/avi/AVLoadingIndicatorView;->postInvalidate()V

    :cond_2
    return-void
.end method

.method public setIndicator(Ljava/lang/String;)V
    .locals 2

    .line 161
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 164
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "."

    .line 165
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 166
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v1

    .line 167
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".indicators"

    .line 168
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    .line 169
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    :cond_1
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    .line 174
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/wang/avi/a;

    .line 175
    invoke-virtual {p0, p1}, Lcom/wang/avi/AVLoadingIndicatorView;->setIndicator(Lcom/wang/avi/a;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 181
    invoke-static {p1}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 179
    invoke-static {p1}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_2
    const-string p1, "AVLoadingIndicatorView"

    const-string v0, "Didn\'t find your class , check the name again !"

    .line 177
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public setIndicatorColor(I)V
    .locals 1

    .line 147
    iput p1, p0, Lcom/wang/avi/AVLoadingIndicatorView;->m:I

    .line 148
    iget-object v0, p0, Lcom/wang/avi/AVLoadingIndicatorView;->l:Lcom/wang/avi/a;

    invoke-virtual {v0, p1}, Lcom/wang/avi/a;->a(I)V

    return-void
.end method

.method public setVisibility(I)V
    .locals 1

    .line 253
    invoke-virtual {p0}, Lcom/wang/avi/AVLoadingIndicatorView;->getVisibility()I

    move-result v0

    if-eq v0, p1, :cond_2

    .line 254
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    const/16 v0, 0x8

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 258
    :cond_0
    invoke-virtual {p0}, Lcom/wang/avi/AVLoadingIndicatorView;->b()V

    goto :goto_1

    .line 256
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/wang/avi/AVLoadingIndicatorView;->c()V

    :cond_2
    :goto_1
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    .line 228
    iget-object v0, p0, Lcom/wang/avi/AVLoadingIndicatorView;->l:Lcom/wang/avi/a;

    if-eq p1, v0, :cond_1

    .line 229
    invoke-super {p0, p1}, Landroid/view/View;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method
