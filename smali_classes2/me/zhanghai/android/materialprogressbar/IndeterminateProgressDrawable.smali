.class public Lme/zhanghai/android/materialprogressbar/IndeterminateProgressDrawable;
.super Lme/zhanghai/android/materialprogressbar/IndeterminateProgressDrawableBase;
.source "IndeterminateProgressDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lme/zhanghai/android/materialprogressbar/IndeterminateProgressDrawable$RingRotation;,
        Lme/zhanghai/android/materialprogressbar/IndeterminateProgressDrawable$RingPathTransform;
    }
.end annotation


# static fields
.field private static final PADDED_INTRINSIC_SIZE_DP:F = 16.0f

.field private static final PROGRESS_INTRINSIC_SIZE_DP:F = 3.2f

.field private static final RECT_BOUND:Landroid/graphics/RectF;

.field private static final RECT_PADDED_BOUND:Landroid/graphics/RectF;

.field private static final RECT_PROGRESS:Landroid/graphics/RectF;


# instance fields
.field private mPaddedIntrinsicSize:I

.field private mProgressIntrinsicSize:I

.field private mRingPathTransform:Lme/zhanghai/android/materialprogressbar/IndeterminateProgressDrawable$RingPathTransform;

.field private mRingRotation:Lme/zhanghai/android/materialprogressbar/IndeterminateProgressDrawable$RingRotation;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 22
    new-instance v0, Landroid/graphics/RectF;

    const/high16 v1, 0x41a80000    # 21.0f

    const/high16 v2, -0x3e580000    # -21.0f

    invoke-direct {v0, v2, v2, v1, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    sput-object v0, Lme/zhanghai/android/materialprogressbar/IndeterminateProgressDrawable;->RECT_BOUND:Landroid/graphics/RectF;

    .line 23
    new-instance v0, Landroid/graphics/RectF;

    const/high16 v1, 0x41c00000    # 24.0f

    const/high16 v2, -0x3e400000    # -24.0f

    invoke-direct {v0, v2, v2, v1, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    sput-object v0, Lme/zhanghai/android/materialprogressbar/IndeterminateProgressDrawable;->RECT_PADDED_BOUND:Landroid/graphics/RectF;

    .line 24
    new-instance v0, Landroid/graphics/RectF;

    const/high16 v1, 0x41980000    # 19.0f

    const/high16 v2, -0x3e680000    # -19.0f

    invoke-direct {v0, v2, v2, v1, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    sput-object v0, Lme/zhanghai/android/materialprogressbar/IndeterminateProgressDrawable;->RECT_PROGRESS:Landroid/graphics/RectF;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 38
    invoke-direct {p0, p1}, Lme/zhanghai/android/materialprogressbar/IndeterminateProgressDrawableBase;-><init>(Landroid/content/Context;)V

    .line 29
    new-instance v0, Lme/zhanghai/android/materialprogressbar/IndeterminateProgressDrawable$RingPathTransform;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lme/zhanghai/android/materialprogressbar/IndeterminateProgressDrawable$RingPathTransform;-><init>(Lme/zhanghai/android/materialprogressbar/IndeterminateProgressDrawable$1;)V

    iput-object v0, p0, Lme/zhanghai/android/materialprogressbar/IndeterminateProgressDrawable;->mRingPathTransform:Lme/zhanghai/android/materialprogressbar/IndeterminateProgressDrawable$RingPathTransform;

    .line 30
    new-instance v0, Lme/zhanghai/android/materialprogressbar/IndeterminateProgressDrawable$RingRotation;

    invoke-direct {v0, v1}, Lme/zhanghai/android/materialprogressbar/IndeterminateProgressDrawable$RingRotation;-><init>(Lme/zhanghai/android/materialprogressbar/IndeterminateProgressDrawable$1;)V

    iput-object v0, p0, Lme/zhanghai/android/materialprogressbar/IndeterminateProgressDrawable;->mRingRotation:Lme/zhanghai/android/materialprogressbar/IndeterminateProgressDrawable$RingRotation;

    .line 40
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    const v0, 0x404ccccd    # 3.2f

    mul-float v0, v0, p1

    .line 41
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lme/zhanghai/android/materialprogressbar/IndeterminateProgressDrawable;->mProgressIntrinsicSize:I

    const/high16 v0, 0x41800000    # 16.0f

    mul-float p1, p1, v0

    .line 42
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iput p1, p0, Lme/zhanghai/android/materialprogressbar/IndeterminateProgressDrawable;->mPaddedIntrinsicSize:I

    const/4 p1, 0x2

    .line 44
    new-array p1, p1, [Landroid/animation/Animator;

    iget-object v0, p0, Lme/zhanghai/android/materialprogressbar/IndeterminateProgressDrawable;->mRingPathTransform:Lme/zhanghai/android/materialprogressbar/IndeterminateProgressDrawable$RingPathTransform;

    invoke-static {v0}, Lme/zhanghai/android/materialprogressbar/Animators;->createIndeterminate(Ljava/lang/Object;)Landroid/animation/Animator;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p1, v1

    iget-object v0, p0, Lme/zhanghai/android/materialprogressbar/IndeterminateProgressDrawable;->mRingRotation:Lme/zhanghai/android/materialprogressbar/IndeterminateProgressDrawable$RingRotation;

    invoke-static {v0}, Lme/zhanghai/android/materialprogressbar/Animators;->createIndeterminateRotation(Ljava/lang/Object;)Landroid/animation/Animator;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, p1, v1

    iput-object p1, p0, Lme/zhanghai/android/materialprogressbar/IndeterminateProgressDrawable;->mAnimators:[Landroid/animation/Animator;

    return-void
.end method

.method private drawRing(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 10

    .line 94
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 95
    iget-object v1, p0, Lme/zhanghai/android/materialprogressbar/IndeterminateProgressDrawable;->mRingRotation:Lme/zhanghai/android/materialprogressbar/IndeterminateProgressDrawable$RingRotation;

    invoke-static {v1}, Lme/zhanghai/android/materialprogressbar/IndeterminateProgressDrawable$RingRotation;->access$200(Lme/zhanghai/android/materialprogressbar/IndeterminateProgressDrawable$RingRotation;)F

    move-result v1

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->rotate(F)V

    .line 98
    iget-object v1, p0, Lme/zhanghai/android/materialprogressbar/IndeterminateProgressDrawable;->mRingPathTransform:Lme/zhanghai/android/materialprogressbar/IndeterminateProgressDrawable$RingPathTransform;

    iget v1, v1, Lme/zhanghai/android/materialprogressbar/IndeterminateProgressDrawable$RingPathTransform;->mTrimPathOffset:F

    iget-object v2, p0, Lme/zhanghai/android/materialprogressbar/IndeterminateProgressDrawable;->mRingPathTransform:Lme/zhanghai/android/materialprogressbar/IndeterminateProgressDrawable$RingPathTransform;

    iget v2, v2, Lme/zhanghai/android/materialprogressbar/IndeterminateProgressDrawable$RingPathTransform;->mTrimPathStart:F

    add-float/2addr v1, v2

    const/high16 v2, 0x43b40000    # 360.0f

    mul-float v1, v1, v2

    const/high16 v3, -0x3d4c0000    # -90.0f

    add-float v6, v1, v3

    .line 100
    iget-object v1, p0, Lme/zhanghai/android/materialprogressbar/IndeterminateProgressDrawable;->mRingPathTransform:Lme/zhanghai/android/materialprogressbar/IndeterminateProgressDrawable$RingPathTransform;

    iget v1, v1, Lme/zhanghai/android/materialprogressbar/IndeterminateProgressDrawable$RingPathTransform;->mTrimPathEnd:F

    iget-object v3, p0, Lme/zhanghai/android/materialprogressbar/IndeterminateProgressDrawable;->mRingPathTransform:Lme/zhanghai/android/materialprogressbar/IndeterminateProgressDrawable$RingPathTransform;

    iget v3, v3, Lme/zhanghai/android/materialprogressbar/IndeterminateProgressDrawable$RingPathTransform;->mTrimPathStart:F

    sub-float/2addr v1, v3

    mul-float v7, v1, v2

    .line 102
    sget-object v5, Lme/zhanghai/android/materialprogressbar/IndeterminateProgressDrawable;->RECT_PROGRESS:Landroid/graphics/RectF;

    const/4 v8, 0x0

    move-object v4, p1

    move-object v9, p2

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 104
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method private getIntrinsicSize()I
    .locals 1

    .line 51
    iget-boolean v0, p0, Lme/zhanghai/android/materialprogressbar/IndeterminateProgressDrawable;->mUseIntrinsicPadding:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lme/zhanghai/android/materialprogressbar/IndeterminateProgressDrawable;->mPaddedIntrinsicSize:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lme/zhanghai/android/materialprogressbar/IndeterminateProgressDrawable;->mProgressIntrinsicSize:I

    :goto_0
    return v0
.end method


# virtual methods
.method public bridge synthetic draw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 18
    invoke-super {p0, p1}, Lme/zhanghai/android/materialprogressbar/IndeterminateProgressDrawableBase;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public bridge synthetic getAlpha()I
    .locals 1

    .line 18
    invoke-super {p0}, Lme/zhanghai/android/materialprogressbar/IndeterminateProgressDrawableBase;->getAlpha()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getColorFilter()Landroid/graphics/ColorFilter;
    .locals 1

    .line 18
    invoke-super {p0}, Lme/zhanghai/android/materialprogressbar/IndeterminateProgressDrawableBase;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v0

    return-object v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .line 67
    invoke-direct {p0}, Lme/zhanghai/android/materialprogressbar/IndeterminateProgressDrawable;->getIntrinsicSize()I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .line 59
    invoke-direct {p0}, Lme/zhanghai/android/materialprogressbar/IndeterminateProgressDrawable;->getIntrinsicSize()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getOpacity()I
    .locals 1

    .line 18
    invoke-super {p0}, Lme/zhanghai/android/materialprogressbar/IndeterminateProgressDrawableBase;->getOpacity()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getUseIntrinsicPadding()Z
    .locals 1

    .line 18
    invoke-super {p0}, Lme/zhanghai/android/materialprogressbar/IndeterminateProgressDrawableBase;->getUseIntrinsicPadding()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isAutoMirrored()Z
    .locals 1

    .line 18
    invoke-super {p0}, Lme/zhanghai/android/materialprogressbar/IndeterminateProgressDrawableBase;->isAutoMirrored()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isRunning()Z
    .locals 1

    .line 18
    invoke-super {p0}, Lme/zhanghai/android/materialprogressbar/IndeterminateProgressDrawableBase;->isRunning()Z

    move-result v0

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;IILandroid/graphics/Paint;)V
    .locals 2

    .line 81
    iget-boolean v0, p0, Lme/zhanghai/android/materialprogressbar/IndeterminateProgressDrawable;->mUseIntrinsicPadding:Z

    const/high16 v1, 0x40000000    # 2.0f

    if-eqz v0, :cond_0

    int-to-float p2, p2

    .line 82
    sget-object v0, Lme/zhanghai/android/materialprogressbar/IndeterminateProgressDrawable;->RECT_PADDED_BOUND:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    div-float/2addr p2, v0

    int-to-float p3, p3

    sget-object v0, Lme/zhanghai/android/materialprogressbar/IndeterminateProgressDrawable;->RECT_PADDED_BOUND:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    div-float/2addr p3, v0

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->scale(FF)V

    .line 83
    sget-object p2, Lme/zhanghai/android/materialprogressbar/IndeterminateProgressDrawable;->RECT_PADDED_BOUND:Landroid/graphics/RectF;

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result p2

    div-float/2addr p2, v1

    sget-object p3, Lme/zhanghai/android/materialprogressbar/IndeterminateProgressDrawable;->RECT_PADDED_BOUND:Landroid/graphics/RectF;

    invoke-virtual {p3}, Landroid/graphics/RectF;->height()F

    move-result p3

    div-float/2addr p3, v1

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_0

    :cond_0
    int-to-float p2, p2

    .line 85
    sget-object v0, Lme/zhanghai/android/materialprogressbar/IndeterminateProgressDrawable;->RECT_BOUND:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    div-float/2addr p2, v0

    int-to-float p3, p3

    sget-object v0, Lme/zhanghai/android/materialprogressbar/IndeterminateProgressDrawable;->RECT_BOUND:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    div-float/2addr p3, v0

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->scale(FF)V

    .line 86
    sget-object p2, Lme/zhanghai/android/materialprogressbar/IndeterminateProgressDrawable;->RECT_BOUND:Landroid/graphics/RectF;

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result p2

    div-float/2addr p2, v1

    sget-object p3, Lme/zhanghai/android/materialprogressbar/IndeterminateProgressDrawable;->RECT_BOUND:Landroid/graphics/RectF;

    invoke-virtual {p3}, Landroid/graphics/RectF;->height()F

    move-result p3

    div-float/2addr p3, v1

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 89
    :goto_0
    invoke-direct {p0, p1, p4}, Lme/zhanghai/android/materialprogressbar/IndeterminateProgressDrawable;->drawRing(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    return-void
.end method

.method protected onPreparePaint(Landroid/graphics/Paint;)V
    .locals 1

    .line 72
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/high16 v0, 0x40800000    # 4.0f

    .line 73
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 74
    sget-object v0, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 75
    sget-object v0, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    return-void
.end method

.method public bridge synthetic setAlpha(I)V
    .locals 0

    .line 18
    invoke-super {p0, p1}, Lme/zhanghai/android/materialprogressbar/IndeterminateProgressDrawableBase;->setAlpha(I)V

    return-void
.end method

.method public bridge synthetic setAutoMirrored(Z)V
    .locals 0

    .line 18
    invoke-super {p0, p1}, Lme/zhanghai/android/materialprogressbar/IndeterminateProgressDrawableBase;->setAutoMirrored(Z)V

    return-void
.end method

.method public bridge synthetic setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1    # Landroid/graphics/ColorFilter;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 18
    invoke-super {p0, p1}, Lme/zhanghai/android/materialprogressbar/IndeterminateProgressDrawableBase;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method

.method public bridge synthetic setTint(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .line 18
    invoke-super {p0, p1}, Lme/zhanghai/android/materialprogressbar/IndeterminateProgressDrawableBase;->setTint(I)V

    return-void
.end method

.method public bridge synthetic setTintList(Landroid/content/res/ColorStateList;)V
    .locals 0
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 18
    invoke-super {p0, p1}, Lme/zhanghai/android/materialprogressbar/IndeterminateProgressDrawableBase;->setTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public bridge synthetic setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 0
    .param p1    # Landroid/graphics/PorterDuff$Mode;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 18
    invoke-super {p0, p1}, Lme/zhanghai/android/materialprogressbar/IndeterminateProgressDrawableBase;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method public bridge synthetic setUseIntrinsicPadding(Z)V
    .locals 0

    .line 18
    invoke-super {p0, p1}, Lme/zhanghai/android/materialprogressbar/IndeterminateProgressDrawableBase;->setUseIntrinsicPadding(Z)V

    return-void
.end method

.method public bridge synthetic start()V
    .locals 0

    .line 18
    invoke-super {p0}, Lme/zhanghai/android/materialprogressbar/IndeterminateProgressDrawableBase;->start()V

    return-void
.end method

.method public bridge synthetic stop()V
    .locals 0

    .line 18
    invoke-super {p0}, Lme/zhanghai/android/materialprogressbar/IndeterminateProgressDrawableBase;->stop()V

    return-void
.end method
