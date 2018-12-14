.class public Lcom/github/ybq/android/spinkit/a/a/c;
.super Ljava/lang/Object;
.source "PathInterpolatorCompat.java"


# direct methods
.method public static a(FFFF)Landroid/view/animation/Interpolator;
    .locals 2

    .line 82
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 83
    invoke-static {p0, p1, p2, p3}, Lcom/github/ybq/android/spinkit/a/a/d;->a(FFFF)Landroid/view/animation/Interpolator;

    move-result-object p0

    return-object p0

    .line 85
    :cond_0
    invoke-static {p0, p1, p2, p3}, Lcom/github/ybq/android/spinkit/a/a/e;->a(FFFF)Landroid/view/animation/Interpolator;

    move-result-object p0

    return-object p0
.end method
