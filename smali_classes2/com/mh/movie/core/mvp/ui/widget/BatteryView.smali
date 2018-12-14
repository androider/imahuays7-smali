.class public Lcom/mh/movie/core/mvp/ui/widget/BatteryView;
.super Landroid/view/View;
.source "BatteryView.java"


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/16 p1, 0x64

    .line 16
    iput p1, p0, Lcom/mh/movie/core/mvp/ui/widget/BatteryView;->a:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 27
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 v0, 0x64

    .line 16
    iput v0, p0, Lcom/mh/movie/core/mvp/ui/widget/BatteryView;->a:I

    .line 28
    sget-object v1, Lcom/mh/movie/core/R$styleable;->Battery:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 29
    sget p2, Lcom/mh/movie/core/R$styleable;->Battery_batteryColor:I

    const/4 v1, -0x1

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/mh/movie/core/mvp/ui/widget/BatteryView;->e:I

    .line 30
    sget p2, Lcom/mh/movie/core/R$styleable;->Battery_batteryOrientation:I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/mh/movie/core/mvp/ui/widget/BatteryView;->b:I

    .line 31
    sget p2, Lcom/mh/movie/core/R$styleable;->Battery_batteryPower:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/mh/movie/core/mvp/ui/widget/BatteryView;->a:I

    .line 32
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/BatteryView;->getMeasuredWidth()I

    move-result p2

    iput p2, p0, Lcom/mh/movie/core/mvp/ui/widget/BatteryView;->c:I

    .line 33
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/BatteryView;->getMeasuredHeight()I

    move-result p2

    iput p2, p0, Lcom/mh/movie/core/mvp/ui/widget/BatteryView;->d:I

    .line 39
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private a(Landroid/graphics/Canvas;)V
    .locals 8

    .line 68
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 69
    iget v1, p0, Lcom/mh/movie/core/mvp/ui/widget/BatteryView;->e:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 70
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 71
    iget v1, p0, Lcom/mh/movie/core/mvp/ui/widget/BatteryView;->c:I

    int-to-float v1, v1

    const/high16 v2, 0x41a00000    # 20.0f

    div-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float v3, v1, v2

    .line 73
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 74
    new-instance v4, Landroid/graphics/RectF;

    iget v5, p0, Lcom/mh/movie/core/mvp/ui/widget/BatteryView;->c:I

    int-to-float v5, v5

    sub-float/2addr v5, v1

    sub-float/2addr v5, v3

    iget v6, p0, Lcom/mh/movie/core/mvp/ui/widget/BatteryView;->d:I

    int-to-float v6, v6

    sub-float/2addr v6, v3

    invoke-direct {v4, v3, v3, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/4 v3, -0x1

    .line 76
    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 77
    invoke-virtual {p1, v4, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    const/4 v4, 0x0

    .line 78
    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 79
    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 81
    iget v4, p0, Lcom/mh/movie/core/mvp/ui/widget/BatteryView;->c:I

    int-to-float v4, v4

    mul-float v2, v2, v1

    sub-float/2addr v4, v2

    iget v2, p0, Lcom/mh/movie/core/mvp/ui/widget/BatteryView;->a:I

    int-to-float v2, v2

    mul-float v4, v4, v2

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v4, v2

    .line 82
    new-instance v2, Landroid/graphics/RectF;

    iget v5, p0, Lcom/mh/movie/core/mvp/ui/widget/BatteryView;->d:I

    int-to-float v5, v5

    sub-float/2addr v5, v1

    invoke-direct {v2, v1, v1, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 84
    iget v4, p0, Lcom/mh/movie/core/mvp/ui/widget/BatteryView;->a:I

    const/16 v5, 0x1e

    if-ge v4, v5, :cond_0

    .line 85
    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 87
    :cond_0
    iget v4, p0, Lcom/mh/movie/core/mvp/ui/widget/BatteryView;->a:I

    const/16 v6, 0x32

    if-lt v4, v5, :cond_1

    iget v4, p0, Lcom/mh/movie/core/mvp/ui/widget/BatteryView;->a:I

    if-ge v4, v6, :cond_1

    .line 88
    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 90
    :cond_1
    iget v4, p0, Lcom/mh/movie/core/mvp/ui/widget/BatteryView;->a:I

    if-lt v4, v6, :cond_2

    .line 91
    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 93
    :cond_2
    invoke-virtual {p1, v2, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 95
    new-instance v2, Landroid/graphics/RectF;

    iget v4, p0, Lcom/mh/movie/core/mvp/ui/widget/BatteryView;->c:I

    int-to-float v4, v4

    sub-float/2addr v4, v1

    iget v1, p0, Lcom/mh/movie/core/mvp/ui/widget/BatteryView;->d:I

    int-to-float v1, v1

    const/high16 v5, 0x3e800000    # 0.25f

    mul-float v1, v1, v5

    iget v5, p0, Lcom/mh/movie/core/mvp/ui/widget/BatteryView;->c:I

    int-to-float v5, v5

    iget v6, p0, Lcom/mh/movie/core/mvp/ui/widget/BatteryView;->d:I

    int-to-float v6, v6

    const/high16 v7, 0x3f400000    # 0.75f

    mul-float v6, v6, v7

    invoke-direct {v2, v4, v1, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 97
    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 98
    invoke-virtual {p1, v2, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void
.end method

.method private b(Landroid/graphics/Canvas;)V
    .locals 9

    .line 107
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 108
    iget v1, p0, Lcom/mh/movie/core/mvp/ui/widget/BatteryView;->e:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 109
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 110
    iget v1, p0, Lcom/mh/movie/core/mvp/ui/widget/BatteryView;->d:I

    int-to-float v1, v1

    const/high16 v2, 0x41a00000    # 20.0f

    div-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float v2, v1, v2

    .line 112
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v3, v1

    float-to-int v3, v3

    .line 114
    new-instance v4, Landroid/graphics/RectF;

    int-to-float v5, v3

    add-float v6, v5, v2

    iget v7, p0, Lcom/mh/movie/core/mvp/ui/widget/BatteryView;->c:I

    int-to-float v7, v7

    sub-float/2addr v7, v2

    iget v8, p0, Lcom/mh/movie/core/mvp/ui/widget/BatteryView;->d:I

    int-to-float v8, v8

    sub-float/2addr v8, v2

    invoke-direct {v4, v2, v6, v7, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 115
    invoke-virtual {p1, v4, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    const/4 v2, 0x0

    .line 116
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 117
    iget v4, p0, Lcom/mh/movie/core/mvp/ui/widget/BatteryView;->d:I

    sub-int/2addr v4, v3

    int-to-float v3, v4

    sub-float/2addr v3, v1

    iget v4, p0, Lcom/mh/movie/core/mvp/ui/widget/BatteryView;->a:I

    rsub-int/lit8 v4, v4, 0x64

    int-to-float v4, v4

    mul-float v3, v3, v4

    const/high16 v4, 0x42c80000    # 100.0f

    div-float/2addr v3, v4

    .line 118
    new-instance v4, Landroid/graphics/RectF;

    add-float v6, v5, v1

    add-float/2addr v6, v3

    iget v3, p0, Lcom/mh/movie/core/mvp/ui/widget/BatteryView;->c:I

    int-to-float v3, v3

    sub-float/2addr v3, v1

    iget v7, p0, Lcom/mh/movie/core/mvp/ui/widget/BatteryView;->d:I

    int-to-float v7, v7

    sub-float/2addr v7, v1

    invoke-direct {v4, v1, v6, v3, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 119
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 120
    invoke-virtual {p1, v4, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 121
    new-instance v1, Landroid/graphics/RectF;

    iget v3, p0, Lcom/mh/movie/core/mvp/ui/widget/BatteryView;->c:I

    int-to-float v3, v3

    const/high16 v4, 0x40800000    # 4.0f

    div-float/2addr v3, v4

    iget v4, p0, Lcom/mh/movie/core/mvp/ui/widget/BatteryView;->c:I

    int-to-float v4, v4

    const/high16 v6, 0x3f400000    # 0.75f

    mul-float v4, v4, v6

    invoke-direct {v1, v3, v2, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 122
    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void
.end method


# virtual methods
.method public getPower()I
    .locals 1

    .line 154
    iget v0, p0, Lcom/mh/movie/core/mvp/ui/widget/BatteryView;->a:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 53
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 55
    iget v0, p0, Lcom/mh/movie/core/mvp/ui/widget/BatteryView;->b:I

    if-nez v0, :cond_0

    .line 56
    invoke-direct {p0, p1}, Lcom/mh/movie/core/mvp/ui/widget/BatteryView;->a(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 58
    :cond_0
    invoke-direct {p0, p1}, Lcom/mh/movie/core/mvp/ui/widget/BatteryView;->b(Landroid/graphics/Canvas;)V

    :goto_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 44
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 46
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/BatteryView;->getMeasuredWidth()I

    move-result p1

    iput p1, p0, Lcom/mh/movie/core/mvp/ui/widget/BatteryView;->c:I

    .line 48
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/BatteryView;->getMeasuredHeight()I

    move-result p1

    iput p1, p0, Lcom/mh/movie/core/mvp/ui/widget/BatteryView;->d:I

    return-void
.end method

.method public setColor(I)V
    .locals 0

    .line 144
    iput p1, p0, Lcom/mh/movie/core/mvp/ui/widget/BatteryView;->e:I

    .line 145
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/BatteryView;->invalidate()V

    return-void
.end method

.method public setPower(I)V
    .locals 0

    .line 131
    iput p1, p0, Lcom/mh/movie/core/mvp/ui/widget/BatteryView;->a:I

    .line 132
    iget p1, p0, Lcom/mh/movie/core/mvp/ui/widget/BatteryView;->a:I

    if-gez p1, :cond_0

    const/16 p1, 0x64

    .line 133
    iput p1, p0, Lcom/mh/movie/core/mvp/ui/widget/BatteryView;->a:I

    .line 135
    :cond_0
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/BatteryView;->invalidate()V

    return-void
.end method
