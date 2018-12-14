.class public Lcom/github/ybq/android/spinkit/b/c;
.super Lcom/github/ybq/android/spinkit/b/e;
.source "RectSprite.java"


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
    .locals 1

    .line 18
    invoke-virtual {p0}, Lcom/github/ybq/android/spinkit/b/c;->q()Landroid/graphics/Rect;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 19
    invoke-virtual {p0}, Lcom/github/ybq/android/spinkit/b/c;->q()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :cond_0
    return-void
.end method
