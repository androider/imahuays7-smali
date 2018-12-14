.class public Lcom/mh/movie/core/mvp/ui/widget/HoverImageView;
.super Landroid/support/v7/widget/AppCompatImageView;
.source "HoverImageView.java"


# static fields
.field private static final a:Landroid/widget/ImageView$ScaleType;

.field private static final b:Landroid/graphics/PorterDuffXfermode;


# instance fields
.field private c:Z

.field private d:I

.field private e:I

.field private f:Landroid/graphics/Paint;

.field private g:Landroid/graphics/Path;

.field private h:Landroid/graphics/Path;

.field private i:Landroid/graphics/RectF;

.field private j:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 24
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    sput-object v0, Lcom/mh/movie/core/mvp/ui/widget/HoverImageView;->a:Landroid/widget/ImageView$ScaleType;

    .line 25
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    sput-object v0, Lcom/mh/movie/core/mvp/ui/widget/HoverImageView;->b:Landroid/graphics/PorterDuffXfermode;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Landroid/support/v7/widget/AppCompatImageView;-><init>(Landroid/content/Context;)V

    const/high16 p1, 0x44000000    # 512.0f

    .line 28
    iput p1, p0, Lcom/mh/movie/core/mvp/ui/widget/HoverImageView;->d:I

    const/high16 p1, 0x22000000

    .line 29
    iput p1, p0, Lcom/mh/movie/core/mvp/ui/widget/HoverImageView;->e:I

    .line 33
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/HoverImageView;->i:Landroid/graphics/RectF;

    const/high16 p1, 0x3f800000    # 1.0f

    .line 34
    iput p1, p0, Lcom/mh/movie/core/mvp/ui/widget/HoverImageView;->j:F

    const/4 p1, 0x0

    .line 48
    invoke-direct {p0, p1}, Lcom/mh/movie/core/mvp/ui/widget/HoverImageView;->setup(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 p1, 0x44000000    # 512.0f

    .line 28
    iput p1, p0, Lcom/mh/movie/core/mvp/ui/widget/HoverImageView;->d:I

    const/high16 p1, 0x22000000

    .line 29
    iput p1, p0, Lcom/mh/movie/core/mvp/ui/widget/HoverImageView;->e:I

    .line 33
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/HoverImageView;->i:Landroid/graphics/RectF;

    const/high16 p1, 0x3f800000    # 1.0f

    .line 34
    iput p1, p0, Lcom/mh/movie/core/mvp/ui/widget/HoverImageView;->j:F

    .line 43
    invoke-direct {p0, p2}, Lcom/mh/movie/core/mvp/ui/widget/HoverImageView;->setup(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 p1, 0x44000000    # 512.0f

    .line 28
    iput p1, p0, Lcom/mh/movie/core/mvp/ui/widget/HoverImageView;->d:I

    const/high16 p1, 0x22000000

    .line 29
    iput p1, p0, Lcom/mh/movie/core/mvp/ui/widget/HoverImageView;->e:I

    .line 33
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/HoverImageView;->i:Landroid/graphics/RectF;

    const/high16 p1, 0x3f800000    # 1.0f

    .line 34
    iput p1, p0, Lcom/mh/movie/core/mvp/ui/widget/HoverImageView;->j:F

    .line 38
    invoke-direct {p0, p2}, Lcom/mh/movie/core/mvp/ui/widget/HoverImageView;->setup(Landroid/util/AttributeSet;)V

    return-void
.end method

.method private setup(Landroid/util/AttributeSet;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 53
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/HoverImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/mh/movie/core/R$styleable;->RoundImageView:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 54
    sget v0, Lcom/mh/movie/core/R$styleable;->RoundImageView_ri_borderColor:I

    iget v1, p0, Lcom/mh/movie/core/mvp/ui/widget/HoverImageView;->d:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/mh/movie/core/mvp/ui/widget/HoverImageView;->d:I

    .line 55
    sget v0, Lcom/mh/movie/core/R$styleable;->RoundImageView_ri_hoverColor:I

    iget v1, p0, Lcom/mh/movie/core/mvp/ui/widget/HoverImageView;->e:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/mh/movie/core/mvp/ui/widget/HoverImageView;->e:I

    .line 56
    sget v0, Lcom/mh/movie/core/R$styleable;->RoundImageView_ri_borderWidth:I

    iget v1, p0, Lcom/mh/movie/core/mvp/ui/widget/HoverImageView;->j:F

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/mh/movie/core/mvp/ui/widget/HoverImageView;->j:F

    .line 57
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 60
    :cond_0
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/HoverImageView;->h:Landroid/graphics/Path;

    .line 61
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/HoverImageView;->g:Landroid/graphics/Path;

    .line 62
    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/HoverImageView;->f:Landroid/graphics/Paint;

    .line 63
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/HoverImageView;->f:Landroid/graphics/Paint;

    iget v0, p0, Lcom/mh/movie/core/mvp/ui/widget/HoverImageView;->j:F

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 65
    sget-object p1, Lcom/mh/movie/core/mvp/ui/widget/HoverImageView;->a:Landroid/widget/ImageView$ScaleType;

    invoke-super {p0, p1}, Landroid/support/v7/widget/AppCompatImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    return-void
.end method


# virtual methods
.method protected a(Landroid/graphics/Canvas;)V
    .locals 2

    .line 75
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/HoverImageView;->f:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 76
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/HoverImageView;->f:Landroid/graphics/Paint;

    iget v1, p0, Lcom/mh/movie/core/mvp/ui/widget/HoverImageView;->d:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 77
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/HoverImageView;->h:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/HoverImageView;->f:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method public a(Landroid/graphics/Path;)V
    .locals 7

    .line 96
    invoke-virtual {p1}, Landroid/graphics/Path;->reset()V

    .line 97
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/HoverImageView;->getWidth()I

    move-result v0

    int-to-float v4, v0

    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/HoverImageView;->getHeight()I

    move-result v0

    int-to-float v5, v0

    sget-object v6, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    return-void
.end method

.method protected b(Landroid/graphics/Canvas;)V
    .locals 2

    .line 81
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/HoverImageView;->isClickable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/mh/movie/core/mvp/ui/widget/HoverImageView;->c:Z

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/HoverImageView;->f:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 83
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/HoverImageView;->f:Landroid/graphics/Paint;

    iget v1, p0, Lcom/mh/movie/core/mvp/ui/widget/HoverImageView;->e:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 84
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/HoverImageView;->g:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/HoverImageView;->f:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method public b(Landroid/graphics/Path;)V
    .locals 7

    .line 89
    invoke-virtual {p1}, Landroid/graphics/Path;->reset()V

    .line 90
    iget p1, p0, Lcom/mh/movie/core/mvp/ui/widget/HoverImageView;->j:F

    const/high16 v0, 0x3f000000    # 0.5f

    mul-float v3, p1, v0

    .line 91
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/HoverImageView;->g:Landroid/graphics/Path;

    .line 92
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/HoverImageView;->getWidth()I

    move-result p1

    int-to-float p1, p1

    sub-float v4, p1, v3

    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/HoverImageView;->getHeight()I

    move-result p1

    int-to-float p1, p1

    sub-float v5, p1, v3

    sget-object v6, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move v2, v3

    .line 91
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    return-void
.end method

.method public getBorderWidth()F
    .locals 1

    .line 165
    iget v0, p0, Lcom/mh/movie/core/mvp/ui/widget/HoverImageView;->j:F

    return v0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    const/4 v0, 0x0

    .line 70
    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/widget/HoverImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 71
    invoke-super {p0}, Landroid/support/v7/widget/AppCompatImageView;->onDetachedFromWindow()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 114
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/HoverImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 115
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/HoverImageView;->isInEditMode()Z

    move-result v1

    if-nez v1, :cond_0

    instance-of v1, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_0

    .line 116
    move-object v1, v0

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    .line 118
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 119
    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/widget/HoverImageView;->i:Landroid/graphics/RectF;

    invoke-virtual {v2, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 120
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/HoverImageView;->i:Landroid/graphics/RectF;

    const/4 v2, 0x0

    const/16 v3, 0x1f

    invoke-virtual {p1, v0, v2, v3}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;I)I

    move-result v0

    .line 121
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/HoverImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    iget-object v3, p0, Lcom/mh/movie/core/mvp/ui/widget/HoverImageView;->i:Landroid/graphics/RectF;

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    const/4 v2, 0x1

    .line 123
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/4 v2, 0x0

    .line 124
    invoke-virtual {p1, v2, v2, v2, v2}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    const/4 v2, -0x1

    .line 126
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 127
    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/widget/HoverImageView;->g:Landroid/graphics/Path;

    invoke-virtual {p1, v2, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 129
    invoke-virtual {v1}, Landroid/graphics/Paint;->getXfermode()Landroid/graphics/Xfermode;

    move-result-object v2

    .line 130
    sget-object v3, Lcom/mh/movie/core/mvp/ui/widget/HoverImageView;->b:Landroid/graphics/PorterDuffXfermode;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 131
    invoke-super {p0, p1}, Landroid/support/v7/widget/AppCompatImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 132
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 133
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 135
    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/ui/widget/HoverImageView;->b(Landroid/graphics/Canvas;)V

    .line 136
    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/ui/widget/HoverImageView;->a(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 138
    :cond_0
    invoke-super {p0, p1}, Landroid/support/v7/widget/AppCompatImageView;->onDraw(Landroid/graphics/Canvas;)V

    :goto_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 102
    invoke-super/range {p0 .. p5}, Landroid/support/v7/widget/AppCompatImageView;->onLayout(ZIIII)V

    if-eqz p1, :cond_0

    .line 105
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/HoverImageView;->g:Landroid/graphics/Path;

    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/ui/widget/HoverImageView;->a(Landroid/graphics/Path;)V

    .line 106
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/HoverImageView;->h:Landroid/graphics/Path;

    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/ui/widget/HoverImageView;->b(Landroid/graphics/Path;)V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 145
    invoke-super {p0, p1}, Landroid/support/v7/widget/AppCompatImageView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 147
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    and-int/lit16 p1, p1, 0xff

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/4 p1, 0x1

    .line 149
    iput-boolean p1, p0, Lcom/mh/movie/core/mvp/ui/widget/HoverImageView;->c:Z

    .line 150
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/HoverImageView;->postInvalidate()V

    goto :goto_0

    :cond_0
    :pswitch_1
    const/4 p1, 0x0

    .line 154
    iput-boolean p1, p0, Lcom/mh/movie/core/mvp/ui/widget/HoverImageView;->c:Z

    .line 155
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/HoverImageView;->postInvalidate()V

    :cond_1
    :goto_0
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
