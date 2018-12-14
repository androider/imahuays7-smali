.class public Lcom/github/ybq/android/spinkit/b/d;
.super Lcom/github/ybq/android/spinkit/b/e;
.source "RingSprite.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Lcom/github/ybq/android/spinkit/b/e;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Landroid/animation/ValueAnimator;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 3

    .line 15
    invoke-virtual {p0}, Lcom/github/ybq/android/spinkit/b/d;->q()Landroid/graphics/Rect;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 16
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 17
    invoke-virtual {p0}, Lcom/github/ybq/android/spinkit/b/d;->q()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p0}, Lcom/github/ybq/android/spinkit/b/d;->q()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 18
    div-int/lit8 v1, v0, 0xc

    int-to-float v1, v1

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 19
    invoke-virtual {p0}, Lcom/github/ybq/android/spinkit/b/d;->q()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    int-to-float v1, v1

    .line 20
    invoke-virtual {p0}, Lcom/github/ybq/android/spinkit/b/d;->q()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    int-to-float v2, v2

    int-to-float v0, v0

    .line 19
    invoke-virtual {p1, v1, v2, v0, p2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method
