.class Lme/zhanghai/android/materialprogressbar/SingleHorizontalProgressDrawable;
.super Lme/zhanghai/android/materialprogressbar/ProgressDrawableBase;
.source "SingleHorizontalProgressDrawable.java"


# static fields
.field private static final LEVEL_MAX:I = 0x2710

.field private static final PADDED_INTRINSIC_HEIGHT_DP:F = 16.0f

.field private static final PROGRESS_INTRINSIC_HEIGHT_DP:F = 3.2f

.field private static final RECT_BOUND:Landroid/graphics/RectF;

.field private static final RECT_PADDED_BOUND:Landroid/graphics/RectF;


# instance fields
.field private mPaddedIntrinsicHeight:I

.field private mProgressIntrinsicHeight:I

.field private mShowTrack:Z

.field private mTrackAlpha:F


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 19
    new-instance v0, Landroid/graphics/RectF;

    const/high16 v1, 0x43340000    # 180.0f

    const/high16 v2, -0x3ccc0000    # -180.0f

    const/high16 v3, -0x40800000    # -1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v2, v3, v1, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    sput-object v0, Lme/zhanghai/android/materialprogressbar/SingleHorizontalProgressDrawable;->RECT_BOUND:Landroid/graphics/RectF;

    .line 20
    new-instance v0, Landroid/graphics/RectF;

    const/high16 v3, -0x3f600000    # -5.0f

    const/high16 v4, 0x40a00000    # 5.0f

    invoke-direct {v0, v2, v3, v1, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    sput-object v0, Lme/zhanghai/android/materialprogressbar/SingleHorizontalProgressDrawable;->RECT_PADDED_BOUND:Landroid/graphics/RectF;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 29
    invoke-direct {p0, p1}, Lme/zhanghai/android/materialprogressbar/ProgressDrawableBase;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 25
    iput-boolean v0, p0, Lme/zhanghai/android/materialprogressbar/SingleHorizontalProgressDrawable;->mShowTrack:Z

    .line 31
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const v1, 0x404ccccd    # 3.2f

    mul-float v1, v1, v0

    .line 32
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, p0, Lme/zhanghai/android/materialprogressbar/SingleHorizontalProgressDrawable;->mProgressIntrinsicHeight:I

    const/high16 v1, 0x41800000    # 16.0f

    mul-float v0, v0, v1

    .line 33
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lme/zhanghai/android/materialprogressbar/SingleHorizontalProgressDrawable;->mPaddedIntrinsicHeight:I

    const v0, 0x1010033

    .line 35
    invoke-static {v0, p1}, Lme/zhanghai/android/materialprogressbar/internal/ThemeUtils;->getFloatFromAttrRes(ILandroid/content/Context;)F

    move-result p1

    iput p1, p0, Lme/zhanghai/android/materialprogressbar/SingleHorizontalProgressDrawable;->mTrackAlpha:F

    return-void
.end method

.method private drawProgressRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 5

    .line 93
    invoke-virtual {p0}, Lme/zhanghai/android/materialprogressbar/SingleHorizontalProgressDrawable;->getLevel()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 98
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    int-to-float v0, v0

    const v2, 0x461c4000    # 10000.0f

    div-float/2addr v0, v2

    const/high16 v2, 0x3f800000    # 1.0f

    .line 99
    sget-object v3, Lme/zhanghai/android/materialprogressbar/SingleHorizontalProgressDrawable;->RECT_BOUND:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    const/4 v4, 0x0

    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 101
    sget-object v0, Lme/zhanghai/android/materialprogressbar/SingleHorizontalProgressDrawable;->RECT_BOUND:Landroid/graphics/RectF;

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 103
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method private static drawTrackRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 1

    .line 88
    sget-object v0, Lme/zhanghai/android/materialprogressbar/SingleHorizontalProgressDrawable;->RECT_BOUND:Landroid/graphics/RectF;

    invoke-virtual {p0, v0, p1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void
.end method


# virtual methods
.method public getIntrinsicHeight()I
    .locals 1

    .line 54
    iget-boolean v0, p0, Lme/zhanghai/android/materialprogressbar/SingleHorizontalProgressDrawable;->mUseIntrinsicPadding:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lme/zhanghai/android/materialprogressbar/SingleHorizontalProgressDrawable;->mPaddedIntrinsicHeight:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lme/zhanghai/android/materialprogressbar/SingleHorizontalProgressDrawable;->mProgressIntrinsicHeight:I

    :goto_0
    return v0
.end method

.method public getShowTrack()Z
    .locals 1

    .line 39
    iget-boolean v0, p0, Lme/zhanghai/android/materialprogressbar/SingleHorizontalProgressDrawable;->mShowTrack:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;IILandroid/graphics/Paint;)V
    .locals 2

    .line 71
    iget-boolean v0, p0, Lme/zhanghai/android/materialprogressbar/SingleHorizontalProgressDrawable;->mUseIntrinsicPadding:Z

    const/high16 v1, 0x40000000    # 2.0f

    if-eqz v0, :cond_0

    int-to-float p2, p2

    .line 72
    sget-object v0, Lme/zhanghai/android/materialprogressbar/SingleHorizontalProgressDrawable;->RECT_PADDED_BOUND:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    div-float/2addr p2, v0

    int-to-float p3, p3

    sget-object v0, Lme/zhanghai/android/materialprogressbar/SingleHorizontalProgressDrawable;->RECT_PADDED_BOUND:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    div-float/2addr p3, v0

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->scale(FF)V

    .line 73
    sget-object p2, Lme/zhanghai/android/materialprogressbar/SingleHorizontalProgressDrawable;->RECT_PADDED_BOUND:Landroid/graphics/RectF;

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result p2

    div-float/2addr p2, v1

    sget-object p3, Lme/zhanghai/android/materialprogressbar/SingleHorizontalProgressDrawable;->RECT_PADDED_BOUND:Landroid/graphics/RectF;

    invoke-virtual {p3}, Landroid/graphics/RectF;->height()F

    move-result p3

    div-float/2addr p3, v1

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_0

    :cond_0
    int-to-float p2, p2

    .line 75
    sget-object v0, Lme/zhanghai/android/materialprogressbar/SingleHorizontalProgressDrawable;->RECT_BOUND:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    div-float/2addr p2, v0

    int-to-float p3, p3

    sget-object v0, Lme/zhanghai/android/materialprogressbar/SingleHorizontalProgressDrawable;->RECT_BOUND:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    div-float/2addr p3, v0

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->scale(FF)V

    .line 76
    sget-object p2, Lme/zhanghai/android/materialprogressbar/SingleHorizontalProgressDrawable;->RECT_BOUND:Landroid/graphics/RectF;

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result p2

    div-float/2addr p2, v1

    sget-object p3, Lme/zhanghai/android/materialprogressbar/SingleHorizontalProgressDrawable;->RECT_BOUND:Landroid/graphics/RectF;

    invoke-virtual {p3}, Landroid/graphics/RectF;->height()F

    move-result p3

    div-float/2addr p3, v1

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 79
    :goto_0
    iget-boolean p2, p0, Lme/zhanghai/android/materialprogressbar/SingleHorizontalProgressDrawable;->mShowTrack:Z

    if-eqz p2, :cond_1

    .line 80
    iget p2, p0, Lme/zhanghai/android/materialprogressbar/SingleHorizontalProgressDrawable;->mAlpha:I

    int-to-float p2, p2

    iget p3, p0, Lme/zhanghai/android/materialprogressbar/SingleHorizontalProgressDrawable;->mTrackAlpha:F

    mul-float p2, p2, p3

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    invoke-virtual {p4, p2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 81
    invoke-static {p1, p4}, Lme/zhanghai/android/materialprogressbar/SingleHorizontalProgressDrawable;->drawTrackRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 82
    iget p2, p0, Lme/zhanghai/android/materialprogressbar/SingleHorizontalProgressDrawable;->mAlpha:I

    invoke-virtual {p4, p2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 84
    :cond_1
    invoke-direct {p0, p1, p4}, Lme/zhanghai/android/materialprogressbar/SingleHorizontalProgressDrawable;->drawProgressRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    return-void
.end method

.method protected onLevelChange(I)Z
    .locals 0

    .line 59
    invoke-virtual {p0}, Lme/zhanghai/android/materialprogressbar/SingleHorizontalProgressDrawable;->invalidateSelf()V

    const/4 p1, 0x1

    return p1
.end method

.method protected onPreparePaint(Landroid/graphics/Paint;)V
    .locals 1

    .line 65
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method

.method public setShowTrack(Z)V
    .locals 1

    .line 43
    iget-boolean v0, p0, Lme/zhanghai/android/materialprogressbar/SingleHorizontalProgressDrawable;->mShowTrack:Z

    if-eq v0, p1, :cond_0

    .line 44
    iput-boolean p1, p0, Lme/zhanghai/android/materialprogressbar/SingleHorizontalProgressDrawable;->mShowTrack:Z

    .line 45
    invoke-virtual {p0}, Lme/zhanghai/android/materialprogressbar/SingleHorizontalProgressDrawable;->invalidateSelf()V

    :cond_0
    return-void
.end method
