.class public abstract Lcom/transitionseverywhere/a/b;
.super Landroid/animation/ValueAnimator;
.source "BasePointFAnimator.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation


# instance fields
.field private a:Ljava/lang/ref/WeakReference;

.field private b:Lcom/transitionseverywhere/a/e;

.field private c:Landroid/graphics/PointF;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Lcom/transitionseverywhere/a/e;)V
    .locals 1

    .line 26
    invoke-direct {p0}, Landroid/animation/ValueAnimator;-><init>()V

    .line 24
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/transitionseverywhere/a/b;->c:Landroid/graphics/PointF;

    .line 27
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/transitionseverywhere/a/b;->a:Ljava/lang/ref/WeakReference;

    .line 28
    iput-object p2, p0, Lcom/transitionseverywhere/a/b;->b:Lcom/transitionseverywhere/a/e;

    const/4 p1, 0x2

    .line 29
    new-array p1, p1, [F

    fill-array-data p1, :array_0

    invoke-virtual {p0, p1}, Lcom/transitionseverywhere/a/b;->setFloatValues([F)V

    .line 30
    invoke-virtual {p0, p0}, Lcom/transitionseverywhere/a/b;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method protected abstract a(Landroid/graphics/PointF;F)V
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 37
    iget-object v0, p0, Lcom/transitionseverywhere/a/b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 40
    invoke-virtual {p0}, Lcom/transitionseverywhere/a/b;->cancel()V

    return-void

    .line 43
    :cond_0
    iget-object v1, p0, Lcom/transitionseverywhere/a/b;->c:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    invoke-virtual {p0, v1, p1}, Lcom/transitionseverywhere/a/b;->a(Landroid/graphics/PointF;F)V

    .line 44
    iget-object p1, p0, Lcom/transitionseverywhere/a/b;->b:Lcom/transitionseverywhere/a/e;

    iget-object v1, p0, Lcom/transitionseverywhere/a/b;->c:Landroid/graphics/PointF;

    invoke-virtual {p1, v0, v1}, Lcom/transitionseverywhere/a/e;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
