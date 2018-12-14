.class abstract Lme/zhanghai/android/materialprogressbar/IndeterminateProgressDrawableBase;
.super Lme/zhanghai/android/materialprogressbar/ProgressDrawableBase;
.source "IndeterminateProgressDrawableBase.java"

# interfaces
.implements Landroid/graphics/drawable/Animatable;


# instance fields
.field protected mAnimators:[Landroid/animation/Animator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lme/zhanghai/android/materialprogressbar/ProgressDrawableBase;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private isStarted()Z
    .locals 5

    .line 51
    iget-object v0, p0, Lme/zhanghai/android/materialprogressbar/IndeterminateProgressDrawableBase;->mAnimators:[Landroid/animation/Animator;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 52
    invoke-virtual {v4}, Landroid/animation/Animator;->isStarted()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 27
    invoke-super {p0, p1}, Lme/zhanghai/android/materialprogressbar/ProgressDrawableBase;->draw(Landroid/graphics/Canvas;)V

    .line 29
    invoke-direct {p0}, Lme/zhanghai/android/materialprogressbar/IndeterminateProgressDrawableBase;->isStarted()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 30
    invoke-virtual {p0}, Lme/zhanghai/android/materialprogressbar/IndeterminateProgressDrawableBase;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public isRunning()Z
    .locals 5

    .line 74
    iget-object v0, p0, Lme/zhanghai/android/materialprogressbar/IndeterminateProgressDrawableBase;->mAnimators:[Landroid/animation/Animator;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 75
    invoke-virtual {v4}, Landroid/animation/Animator;->isRunning()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public start()V
    .locals 4

    .line 40
    invoke-direct {p0}, Lme/zhanghai/android/materialprogressbar/IndeterminateProgressDrawableBase;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 44
    :cond_0
    iget-object v0, p0, Lme/zhanghai/android/materialprogressbar/IndeterminateProgressDrawableBase;->mAnimators:[Landroid/animation/Animator;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 45
    invoke-virtual {v3}, Landroid/animation/Animator;->start()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 47
    :cond_1
    invoke-virtual {p0}, Lme/zhanghai/android/materialprogressbar/IndeterminateProgressDrawableBase;->invalidateSelf()V

    return-void
.end method

.method public stop()V
    .locals 4

    .line 64
    iget-object v0, p0, Lme/zhanghai/android/materialprogressbar/IndeterminateProgressDrawableBase;->mAnimators:[Landroid/animation/Animator;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 65
    invoke-virtual {v3}, Landroid/animation/Animator;->end()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
