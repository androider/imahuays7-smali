.class public Lcom/github/ybq/android/spinkit/a/a;
.super Ljava/lang/Object;
.source "AnimationUtils.java"


# direct methods
.method public static a(Landroid/animation/Animator;)V
    .locals 1

    if-eqz p0, :cond_0

    .line 14
    invoke-virtual {p0}, Landroid/animation/Animator;->isStarted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 15
    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    :cond_0
    return-void
.end method

.method public static varargs a([Lcom/github/ybq/android/spinkit/b/f;)V
    .locals 3

    .line 26
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    .line 27
    invoke-virtual {v2}, Lcom/github/ybq/android/spinkit/b/f;->start()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static a(Landroid/animation/ValueAnimator;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 47
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static varargs b([Lcom/github/ybq/android/spinkit/b/f;)V
    .locals 3

    .line 32
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    .line 33
    invoke-virtual {v2}, Lcom/github/ybq/android/spinkit/b/f;->stop()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static b(Landroid/animation/ValueAnimator;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 51
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static varargs c([Lcom/github/ybq/android/spinkit/b/f;)Z
    .locals 4

    .line 38
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p0, v2

    .line 39
    invoke-virtual {v3}, Lcom/github/ybq/android/spinkit/b/f;->isRunning()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method
