.class public Lme/zhanghai/android/materialprogressbar/HorizontalProgressDrawable;
.super Landroid/graphics/drawable/LayerDrawable;
.source "HorizontalProgressDrawable.java"

# interfaces
.implements Lme/zhanghai/android/materialprogressbar/IntrinsicPaddingDrawable;
.implements Lme/zhanghai/android/materialprogressbar/ShowTrackDrawable;
.implements Lme/zhanghai/android/materialprogressbar/TintableDrawable;


# instance fields
.field private mProgressDrawable:Lme/zhanghai/android/materialprogressbar/SingleHorizontalProgressDrawable;

.field private mSecondaryAlpha:I

.field private mSecondaryProgressDrawable:Lme/zhanghai/android/materialprogressbar/SingleHorizontalProgressDrawable;

.field private mTrackDrawable:Lme/zhanghai/android/materialprogressbar/SingleHorizontalProgressDrawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    const/4 v0, 0x3

    .line 37
    new-array v0, v0, [Landroid/graphics/drawable/Drawable;

    new-instance v1, Lme/zhanghai/android/materialprogressbar/SingleHorizontalProgressDrawable;

    invoke-direct {v1, p1}, Lme/zhanghai/android/materialprogressbar/SingleHorizontalProgressDrawable;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lme/zhanghai/android/materialprogressbar/SingleHorizontalProgressDrawable;

    invoke-direct {v1, p1}, Lme/zhanghai/android/materialprogressbar/SingleHorizontalProgressDrawable;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x1

    aput-object v1, v0, v3

    new-instance v1, Lme/zhanghai/android/materialprogressbar/SingleHorizontalProgressDrawable;

    invoke-direct {v1, p1}, Lme/zhanghai/android/materialprogressbar/SingleHorizontalProgressDrawable;-><init>(Landroid/content/Context;)V

    const/4 v4, 0x2

    aput-object v1, v0, v4

    invoke-direct {p0, v0}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    const/high16 v0, 0x1020000

    .line 43
    invoke-virtual {p0, v2, v0}, Lme/zhanghai/android/materialprogressbar/HorizontalProgressDrawable;->setId(II)V

    .line 44
    invoke-virtual {p0, v2}, Lme/zhanghai/android/materialprogressbar/HorizontalProgressDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lme/zhanghai/android/materialprogressbar/SingleHorizontalProgressDrawable;

    iput-object v0, p0, Lme/zhanghai/android/materialprogressbar/HorizontalProgressDrawable;->mTrackDrawable:Lme/zhanghai/android/materialprogressbar/SingleHorizontalProgressDrawable;

    const v0, 0x102000f

    .line 46
    invoke-virtual {p0, v3, v0}, Lme/zhanghai/android/materialprogressbar/HorizontalProgressDrawable;->setId(II)V

    .line 47
    invoke-virtual {p0, v3}, Lme/zhanghai/android/materialprogressbar/HorizontalProgressDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lme/zhanghai/android/materialprogressbar/SingleHorizontalProgressDrawable;

    iput-object v0, p0, Lme/zhanghai/android/materialprogressbar/HorizontalProgressDrawable;->mSecondaryProgressDrawable:Lme/zhanghai/android/materialprogressbar/SingleHorizontalProgressDrawable;

    const v0, 0x1010033

    .line 48
    invoke-static {v0, p1}, Lme/zhanghai/android/materialprogressbar/internal/ThemeUtils;->getFloatFromAttrRes(ILandroid/content/Context;)F

    move-result p1

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float p1, p1, v0

    .line 49
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iput p1, p0, Lme/zhanghai/android/materialprogressbar/HorizontalProgressDrawable;->mSecondaryAlpha:I

    .line 50
    iget-object p1, p0, Lme/zhanghai/android/materialprogressbar/HorizontalProgressDrawable;->mSecondaryProgressDrawable:Lme/zhanghai/android/materialprogressbar/SingleHorizontalProgressDrawable;

    iget v0, p0, Lme/zhanghai/android/materialprogressbar/HorizontalProgressDrawable;->mSecondaryAlpha:I

    invoke-virtual {p1, v0}, Lme/zhanghai/android/materialprogressbar/SingleHorizontalProgressDrawable;->setAlpha(I)V

    .line 51
    iget-object p1, p0, Lme/zhanghai/android/materialprogressbar/HorizontalProgressDrawable;->mSecondaryProgressDrawable:Lme/zhanghai/android/materialprogressbar/SingleHorizontalProgressDrawable;

    invoke-virtual {p1, v2}, Lme/zhanghai/android/materialprogressbar/SingleHorizontalProgressDrawable;->setShowTrack(Z)V

    const p1, 0x102000d

    .line 53
    invoke-virtual {p0, v4, p1}, Lme/zhanghai/android/materialprogressbar/HorizontalProgressDrawable;->setId(II)V

    .line 54
    invoke-virtual {p0, v4}, Lme/zhanghai/android/materialprogressbar/HorizontalProgressDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Lme/zhanghai/android/materialprogressbar/SingleHorizontalProgressDrawable;

    iput-object p1, p0, Lme/zhanghai/android/materialprogressbar/HorizontalProgressDrawable;->mProgressDrawable:Lme/zhanghai/android/materialprogressbar/SingleHorizontalProgressDrawable;

    .line 55
    iget-object p1, p0, Lme/zhanghai/android/materialprogressbar/HorizontalProgressDrawable;->mProgressDrawable:Lme/zhanghai/android/materialprogressbar/SingleHorizontalProgressDrawable;

    invoke-virtual {p1, v2}, Lme/zhanghai/android/materialprogressbar/SingleHorizontalProgressDrawable;->setShowTrack(Z)V

    return-void
.end method


# virtual methods
.method public getShowTrack()Z
    .locals 1

    .line 62
    iget-object v0, p0, Lme/zhanghai/android/materialprogressbar/HorizontalProgressDrawable;->mTrackDrawable:Lme/zhanghai/android/materialprogressbar/SingleHorizontalProgressDrawable;

    invoke-virtual {v0}, Lme/zhanghai/android/materialprogressbar/SingleHorizontalProgressDrawable;->getShowTrack()Z

    move-result v0

    return v0
.end method

.method public getUseIntrinsicPadding()Z
    .locals 1

    .line 82
    iget-object v0, p0, Lme/zhanghai/android/materialprogressbar/HorizontalProgressDrawable;->mTrackDrawable:Lme/zhanghai/android/materialprogressbar/SingleHorizontalProgressDrawable;

    invoke-virtual {v0}, Lme/zhanghai/android/materialprogressbar/SingleHorizontalProgressDrawable;->getUseIntrinsicPadding()Z

    move-result v0

    return v0
.end method

.method public setShowTrack(Z)V
    .locals 1

    .line 70
    iget-object v0, p0, Lme/zhanghai/android/materialprogressbar/HorizontalProgressDrawable;->mTrackDrawable:Lme/zhanghai/android/materialprogressbar/SingleHorizontalProgressDrawable;

    invoke-virtual {v0}, Lme/zhanghai/android/materialprogressbar/SingleHorizontalProgressDrawable;->getShowTrack()Z

    move-result v0

    if-eq v0, p1, :cond_1

    .line 71
    iget-object v0, p0, Lme/zhanghai/android/materialprogressbar/HorizontalProgressDrawable;->mTrackDrawable:Lme/zhanghai/android/materialprogressbar/SingleHorizontalProgressDrawable;

    invoke-virtual {v0, p1}, Lme/zhanghai/android/materialprogressbar/SingleHorizontalProgressDrawable;->setShowTrack(Z)V

    .line 73
    iget-object v0, p0, Lme/zhanghai/android/materialprogressbar/HorizontalProgressDrawable;->mSecondaryProgressDrawable:Lme/zhanghai/android/materialprogressbar/SingleHorizontalProgressDrawable;

    if-eqz p1, :cond_0

    iget p1, p0, Lme/zhanghai/android/materialprogressbar/HorizontalProgressDrawable;->mSecondaryAlpha:I

    goto :goto_0

    :cond_0
    iget p1, p0, Lme/zhanghai/android/materialprogressbar/HorizontalProgressDrawable;->mSecondaryAlpha:I

    mul-int/lit8 p1, p1, 0x2

    :goto_0
    invoke-virtual {v0, p1}, Lme/zhanghai/android/materialprogressbar/SingleHorizontalProgressDrawable;->setAlpha(I)V

    :cond_1
    return-void
.end method

.method public setTint(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 101
    iget-object v0, p0, Lme/zhanghai/android/materialprogressbar/HorizontalProgressDrawable;->mTrackDrawable:Lme/zhanghai/android/materialprogressbar/SingleHorizontalProgressDrawable;

    invoke-virtual {v0, p1}, Lme/zhanghai/android/materialprogressbar/SingleHorizontalProgressDrawable;->setTint(I)V

    .line 102
    iget-object v0, p0, Lme/zhanghai/android/materialprogressbar/HorizontalProgressDrawable;->mSecondaryProgressDrawable:Lme/zhanghai/android/materialprogressbar/SingleHorizontalProgressDrawable;

    invoke-virtual {v0, p1}, Lme/zhanghai/android/materialprogressbar/SingleHorizontalProgressDrawable;->setTint(I)V

    .line 103
    iget-object v0, p0, Lme/zhanghai/android/materialprogressbar/HorizontalProgressDrawable;->mProgressDrawable:Lme/zhanghai/android/materialprogressbar/SingleHorizontalProgressDrawable;

    invoke-virtual {v0, p1}, Lme/zhanghai/android/materialprogressbar/SingleHorizontalProgressDrawable;->setTint(I)V

    return-void
.end method

.method public setTintList(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 112
    iget-object v0, p0, Lme/zhanghai/android/materialprogressbar/HorizontalProgressDrawable;->mTrackDrawable:Lme/zhanghai/android/materialprogressbar/SingleHorizontalProgressDrawable;

    invoke-virtual {v0, p1}, Lme/zhanghai/android/materialprogressbar/SingleHorizontalProgressDrawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 113
    iget-object v0, p0, Lme/zhanghai/android/materialprogressbar/HorizontalProgressDrawable;->mSecondaryProgressDrawable:Lme/zhanghai/android/materialprogressbar/SingleHorizontalProgressDrawable;

    invoke-virtual {v0, p1}, Lme/zhanghai/android/materialprogressbar/SingleHorizontalProgressDrawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 114
    iget-object v0, p0, Lme/zhanghai/android/materialprogressbar/HorizontalProgressDrawable;->mProgressDrawable:Lme/zhanghai/android/materialprogressbar/SingleHorizontalProgressDrawable;

    invoke-virtual {v0, p1}, Lme/zhanghai/android/materialprogressbar/SingleHorizontalProgressDrawable;->setTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1
    .param p1    # Landroid/graphics/PorterDuff$Mode;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 123
    iget-object v0, p0, Lme/zhanghai/android/materialprogressbar/HorizontalProgressDrawable;->mTrackDrawable:Lme/zhanghai/android/materialprogressbar/SingleHorizontalProgressDrawable;

    invoke-virtual {v0, p1}, Lme/zhanghai/android/materialprogressbar/SingleHorizontalProgressDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 124
    iget-object v0, p0, Lme/zhanghai/android/materialprogressbar/HorizontalProgressDrawable;->mSecondaryProgressDrawable:Lme/zhanghai/android/materialprogressbar/SingleHorizontalProgressDrawable;

    invoke-virtual {v0, p1}, Lme/zhanghai/android/materialprogressbar/SingleHorizontalProgressDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 125
    iget-object v0, p0, Lme/zhanghai/android/materialprogressbar/HorizontalProgressDrawable;->mProgressDrawable:Lme/zhanghai/android/materialprogressbar/SingleHorizontalProgressDrawable;

    invoke-virtual {v0, p1}, Lme/zhanghai/android/materialprogressbar/SingleHorizontalProgressDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method public setUseIntrinsicPadding(Z)V
    .locals 1

    .line 90
    iget-object v0, p0, Lme/zhanghai/android/materialprogressbar/HorizontalProgressDrawable;->mTrackDrawable:Lme/zhanghai/android/materialprogressbar/SingleHorizontalProgressDrawable;

    invoke-virtual {v0, p1}, Lme/zhanghai/android/materialprogressbar/SingleHorizontalProgressDrawable;->setUseIntrinsicPadding(Z)V

    .line 91
    iget-object v0, p0, Lme/zhanghai/android/materialprogressbar/HorizontalProgressDrawable;->mSecondaryProgressDrawable:Lme/zhanghai/android/materialprogressbar/SingleHorizontalProgressDrawable;

    invoke-virtual {v0, p1}, Lme/zhanghai/android/materialprogressbar/SingleHorizontalProgressDrawable;->setUseIntrinsicPadding(Z)V

    .line 92
    iget-object v0, p0, Lme/zhanghai/android/materialprogressbar/HorizontalProgressDrawable;->mProgressDrawable:Lme/zhanghai/android/materialprogressbar/SingleHorizontalProgressDrawable;

    invoke-virtual {v0, p1}, Lme/zhanghai/android/materialprogressbar/SingleHorizontalProgressDrawable;->setUseIntrinsicPadding(Z)V

    return-void
.end method
