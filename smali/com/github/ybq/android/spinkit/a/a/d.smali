.class Lcom/github/ybq/android/spinkit/a/a/d;
.super Ljava/lang/Object;
.source "PathInterpolatorCompatApi21.java"


# direct methods
.method public static a(FFFF)Landroid/view/animation/Interpolator;
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 47
    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    return-object v0
.end method
