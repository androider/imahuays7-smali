.class public Lcom/shuyu/gsyvideoplayer/video/PlayerGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "PlayerGestureListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shuyu/gsyvideoplayer/video/PlayerGestureListener$ScrollMode;,
        Lcom/shuyu/gsyvideoplayer/video/PlayerGestureListener$VideoGestureListener;
    }
.end annotation


# instance fields
.field private centerW:I

.field private density:F

.field private dpVideoHeight:F

.field private dpVideoWidth:F

.field private leftTBValue:F

.field private listener:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/shuyu/gsyvideoplayer/video/PlayerGestureListener$VideoGestureListener;",
            ">;"
        }
    .end annotation
.end field

.field private mTouchSlop:I

.field private preDpVideoDuration:I

.field private rightTBValue:F

.field private screenWidth:I

.field private scrollMode:Lcom/shuyu/gsyvideoplayer/video/PlayerGestureListener$ScrollMode;

.field private scrollRatio:I

.field private timeStamp:J

.field private totalDuration:I

.field private videoView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/shuyu/gsyvideoplayer/video/PlayerGestureListener$VideoGestureListener;Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;Landroid/content/Context;)V
    .locals 1

    .line 35
    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    .line 25
    sget-object v0, Lcom/shuyu/gsyvideoplayer/video/PlayerGestureListener$ScrollMode;->NONE:Lcom/shuyu/gsyvideoplayer/video/PlayerGestureListener$ScrollMode;

    iput-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/PlayerGestureListener;->scrollMode:Lcom/shuyu/gsyvideoplayer/video/PlayerGestureListener$ScrollMode;

    const/4 v0, 0x1

    .line 28
    iput v0, p0, Lcom/shuyu/gsyvideoplayer/video/PlayerGestureListener;->scrollRatio:I

    const/4 v0, 0x0

    .line 29
    iput v0, p0, Lcom/shuyu/gsyvideoplayer/video/PlayerGestureListener;->preDpVideoDuration:I

    .line 31
    iput v0, p0, Lcom/shuyu/gsyvideoplayer/video/PlayerGestureListener;->totalDuration:I

    const/4 v0, 0x0

    .line 32
    iput v0, p0, Lcom/shuyu/gsyvideoplayer/video/PlayerGestureListener;->leftTBValue:F

    .line 33
    iput v0, p0, Lcom/shuyu/gsyvideoplayer/video/PlayerGestureListener;->rightTBValue:F

    .line 36
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/PlayerGestureListener;->listener:Ljava/lang/ref/WeakReference;

    .line 37
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/PlayerGestureListener;->videoView:Ljava/lang/ref/WeakReference;

    const-string p1, "window"

    .line 39
    invoke-virtual {p3, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    .line 40
    new-instance p2, Landroid/util/DisplayMetrics;

    invoke-direct {p2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 41
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 43
    iget p1, p2, Landroid/util/DisplayMetrics;->widthPixels:I

    iput p1, p0, Lcom/shuyu/gsyvideoplayer/video/PlayerGestureListener;->screenWidth:I

    .line 44
    iget p1, p0, Lcom/shuyu/gsyvideoplayer/video/PlayerGestureListener;->screenWidth:I

    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/shuyu/gsyvideoplayer/video/PlayerGestureListener;->centerW:I

    .line 45
    invoke-static {p3}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    iput p1, p0, Lcom/shuyu/gsyvideoplayer/video/PlayerGestureListener;->mTouchSlop:I

    .line 47
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    iput p1, p0, Lcom/shuyu/gsyvideoplayer/video/PlayerGestureListener;->density:F

    return-void
.end method

.method private updateScrollRatio(FJ)V
    .locals 0

    .line 153
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    long-to-float p2, p2

    div-float/2addr p1, p2

    const/high16 p2, 0x447a0000    # 1000.0f

    mul-float p1, p1, p2

    float-to-int p1, p1

    const/16 p2, 0x14

    if-ge p1, p2, :cond_0

    const/4 p1, 0x1

    .line 155
    iput p1, p0, Lcom/shuyu/gsyvideoplayer/video/PlayerGestureListener;->scrollRatio:I

    goto :goto_0

    :cond_0
    const/16 p2, 0x28

    if-ge p1, p2, :cond_1

    const/4 p1, 0x3

    .line 157
    iput p1, p0, Lcom/shuyu/gsyvideoplayer/video/PlayerGestureListener;->scrollRatio:I

    goto :goto_0

    :cond_1
    const/16 p3, 0x46

    if-ge p1, p3, :cond_2

    const/4 p1, 0x7

    .line 159
    iput p1, p0, Lcom/shuyu/gsyvideoplayer/video/PlayerGestureListener;->scrollRatio:I

    goto :goto_0

    :cond_2
    const/16 p3, 0x64

    if-ge p1, p3, :cond_3

    const/16 p1, 0xd

    .line 161
    iput p1, p0, Lcom/shuyu/gsyvideoplayer/video/PlayerGestureListener;->scrollRatio:I

    goto :goto_0

    :cond_3
    const/16 p3, 0x12c

    if-ge p1, p3, :cond_4

    const/16 p1, 0x12

    .line 163
    iput p1, p0, Lcom/shuyu/gsyvideoplayer/video/PlayerGestureListener;->scrollRatio:I

    goto :goto_0

    :cond_4
    const/16 p3, 0x1f4

    if-ge p1, p3, :cond_5

    const/16 p1, 0x18

    .line 165
    iput p1, p0, Lcom/shuyu/gsyvideoplayer/video/PlayerGestureListener;->scrollRatio:I

    goto :goto_0

    :cond_5
    const/16 p3, 0x320

    if-ge p1, p3, :cond_6

    const/16 p1, 0x1f

    .line 167
    iput p1, p0, Lcom/shuyu/gsyvideoplayer/video/PlayerGestureListener;->scrollRatio:I

    goto :goto_0

    :cond_6
    const/16 p3, 0x3e8

    if-ge p1, p3, :cond_7

    .line 169
    iput p2, p0, Lcom/shuyu/gsyvideoplayer/video/PlayerGestureListener;->scrollRatio:I

    goto :goto_0

    :cond_7
    const/16 p1, 0x3c

    .line 171
    iput p1, p0, Lcom/shuyu/gsyvideoplayer/video/PlayerGestureListener;->scrollRatio:I

    :goto_0
    return-void
.end method

.method private updateVideoLeftTB(F)V
    .locals 1

    .line 185
    iget v0, p0, Lcom/shuyu/gsyvideoplayer/video/PlayerGestureListener;->leftTBValue:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/shuyu/gsyvideoplayer/video/PlayerGestureListener;->leftTBValue:F

    .line 186
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/PlayerGestureListener;->listener:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 187
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/PlayerGestureListener;->listener:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shuyu/gsyvideoplayer/video/PlayerGestureListener$VideoGestureListener;

    iget v0, p0, Lcom/shuyu/gsyvideoplayer/video/PlayerGestureListener;->leftTBValue:F

    invoke-interface {p1, v0}, Lcom/shuyu/gsyvideoplayer/video/PlayerGestureListener$VideoGestureListener;->onGestureLeftTB(F)V

    :cond_0
    return-void
.end method

.method private updateVideoRightTB(F)V
    .locals 1

    .line 193
    iget v0, p0, Lcom/shuyu/gsyvideoplayer/video/PlayerGestureListener;->rightTBValue:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/shuyu/gsyvideoplayer/video/PlayerGestureListener;->rightTBValue:F

    .line 194
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/PlayerGestureListener;->listener:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 195
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/PlayerGestureListener;->listener:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shuyu/gsyvideoplayer/video/PlayerGestureListener$VideoGestureListener;

    iget v0, p0, Lcom/shuyu/gsyvideoplayer/video/PlayerGestureListener;->rightTBValue:F

    invoke-interface {p1, v0}, Lcom/shuyu/gsyvideoplayer/video/PlayerGestureListener$VideoGestureListener;->onGestureRightTB(F)V

    :cond_0
    return-void
.end method

.method private updateVideoTime(I)V
    .locals 1

    .line 177
    iget v0, p0, Lcom/shuyu/gsyvideoplayer/video/PlayerGestureListener;->totalDuration:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/shuyu/gsyvideoplayer/video/PlayerGestureListener;->totalDuration:I

    .line 178
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/PlayerGestureListener;->listener:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 179
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/PlayerGestureListener;->listener:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shuyu/gsyvideoplayer/video/PlayerGestureListener$VideoGestureListener;

    iget v0, p0, Lcom/shuyu/gsyvideoplayer/video/PlayerGestureListener;->totalDuration:I

    invoke-interface {p1, v0}, Lcom/shuyu/gsyvideoplayer/video/PlayerGestureListener$VideoGestureListener;->onGestureUpdateVideoTime(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/PlayerGestureListener;->listener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/PlayerGestureListener;->listener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shuyu/gsyvideoplayer/video/PlayerGestureListener$VideoGestureListener;

    invoke-interface {v0}, Lcom/shuyu/gsyvideoplayer/video/PlayerGestureListener$VideoGestureListener;->onGestureDoubleClick()V

    .line 129
    :cond_0
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onDoubleTap(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 134
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onDoubleTapEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 60
    sget-object p1, Lcom/shuyu/gsyvideoplayer/video/PlayerGestureListener$ScrollMode;->NONE:Lcom/shuyu/gsyvideoplayer/video/PlayerGestureListener$ScrollMode;

    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/PlayerGestureListener;->scrollMode:Lcom/shuyu/gsyvideoplayer/video/PlayerGestureListener$ScrollMode;

    .line 61
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/shuyu/gsyvideoplayer/video/PlayerGestureListener;->timeStamp:J

    const/4 p1, 0x0

    .line 62
    iput p1, p0, Lcom/shuyu/gsyvideoplayer/video/PlayerGestureListener;->totalDuration:I

    const/4 p1, 0x0

    .line 63
    iput p1, p0, Lcom/shuyu/gsyvideoplayer/video/PlayerGestureListener;->leftTBValue:F

    .line 64
    iput p1, p0, Lcom/shuyu/gsyvideoplayer/video/PlayerGestureListener;->rightTBValue:F

    .line 65
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/PlayerGestureListener;->listener:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 66
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/PlayerGestureListener;->listener:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shuyu/gsyvideoplayer/video/PlayerGestureListener$VideoGestureListener;

    invoke-interface {p1}, Lcom/shuyu/gsyvideoplayer/video/PlayerGestureListener$VideoGestureListener;->onGestureDown()V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0

    .line 83
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onLongPress(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 6

    .line 88
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    neg-float p3, p3

    neg-float p4, p4

    .line 91
    iget v2, p0, Lcom/shuyu/gsyvideoplayer/video/PlayerGestureListener;->density:F

    div-float/2addr p3, v2

    .line 92
    iget v2, p0, Lcom/shuyu/gsyvideoplayer/video/PlayerGestureListener;->density:F

    div-float/2addr p4, v2

    .line 93
    iget-wide v2, p0, Lcom/shuyu/gsyvideoplayer/video/PlayerGestureListener;->timeStamp:J

    sub-long v4, v0, v2

    invoke-direct {p0, p3, v4, v5}, Lcom/shuyu/gsyvideoplayer/video/PlayerGestureListener;->updateScrollRatio(FJ)V

    .line 94
    iput-wide v0, p0, Lcom/shuyu/gsyvideoplayer/video/PlayerGestureListener;->timeStamp:J

    .line 95
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    .line 96
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    sub-float/2addr p2, v1

    .line 97
    iget-object v1, p0, Lcom/shuyu/gsyvideoplayer/video/PlayerGestureListener;->scrollMode:Lcom/shuyu/gsyvideoplayer/video/PlayerGestureListener$ScrollMode;

    sget-object v2, Lcom/shuyu/gsyvideoplayer/video/PlayerGestureListener$ScrollMode;->NONE:Lcom/shuyu/gsyvideoplayer/video/PlayerGestureListener$ScrollMode;

    if-ne v1, v2, :cond_2

    .line 99
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p3

    iget p4, p0, Lcom/shuyu/gsyvideoplayer/video/PlayerGestureListener;->mTouchSlop:I

    int-to-float p4, p4

    cmpl-float p3, p3, p4

    if-lez p3, :cond_0

    .line 100
    sget-object p1, Lcom/shuyu/gsyvideoplayer/video/PlayerGestureListener$ScrollMode;->HORIZONTAL_S:Lcom/shuyu/gsyvideoplayer/video/PlayerGestureListener$ScrollMode;

    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/PlayerGestureListener;->scrollMode:Lcom/shuyu/gsyvideoplayer/video/PlayerGestureListener$ScrollMode;

    .line 101
    iget p1, p0, Lcom/shuyu/gsyvideoplayer/video/PlayerGestureListener;->preDpVideoDuration:I

    int-to-float p1, p1

    mul-float p1, p1, v0

    float-to-int p1, p1

    invoke-direct {p0, p1}, Lcom/shuyu/gsyvideoplayer/video/PlayerGestureListener;->updateVideoTime(I)V

    goto :goto_0

    .line 104
    :cond_0
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    iget p3, p0, Lcom/shuyu/gsyvideoplayer/video/PlayerGestureListener;->mTouchSlop:I

    int-to-float p3, p3

    cmpl-float p2, p2, p3

    if-lez p2, :cond_5

    .line 105
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iget p2, p0, Lcom/shuyu/gsyvideoplayer/video/PlayerGestureListener;->centerW:I

    int-to-float p2, p2

    cmpg-float p1, p1, p2

    if-gez p1, :cond_1

    .line 106
    sget-object p1, Lcom/shuyu/gsyvideoplayer/video/PlayerGestureListener$ScrollMode;->LEFT_TB:Lcom/shuyu/gsyvideoplayer/video/PlayerGestureListener$ScrollMode;

    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/PlayerGestureListener;->scrollMode:Lcom/shuyu/gsyvideoplayer/video/PlayerGestureListener$ScrollMode;

    goto :goto_0

    .line 108
    :cond_1
    sget-object p1, Lcom/shuyu/gsyvideoplayer/video/PlayerGestureListener$ScrollMode;->RIGHT_TB:Lcom/shuyu/gsyvideoplayer/video/PlayerGestureListener$ScrollMode;

    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/PlayerGestureListener;->scrollMode:Lcom/shuyu/gsyvideoplayer/video/PlayerGestureListener$ScrollMode;

    goto :goto_0

    .line 113
    :cond_2
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/PlayerGestureListener;->scrollMode:Lcom/shuyu/gsyvideoplayer/video/PlayerGestureListener$ScrollMode;

    sget-object p2, Lcom/shuyu/gsyvideoplayer/video/PlayerGestureListener$ScrollMode;->HORIZONTAL_S:Lcom/shuyu/gsyvideoplayer/video/PlayerGestureListener$ScrollMode;

    if-ne p1, p2, :cond_3

    .line 114
    iget p1, p0, Lcom/shuyu/gsyvideoplayer/video/PlayerGestureListener;->preDpVideoDuration:I

    iget p2, p0, Lcom/shuyu/gsyvideoplayer/video/PlayerGestureListener;->scrollRatio:I

    mul-int p1, p1, p2

    int-to-float p1, p1

    mul-float p1, p1, p3

    float-to-int p1, p1

    invoke-direct {p0, p1}, Lcom/shuyu/gsyvideoplayer/video/PlayerGestureListener;->updateVideoTime(I)V

    goto :goto_0

    .line 115
    :cond_3
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/PlayerGestureListener;->scrollMode:Lcom/shuyu/gsyvideoplayer/video/PlayerGestureListener$ScrollMode;

    sget-object p2, Lcom/shuyu/gsyvideoplayer/video/PlayerGestureListener$ScrollMode;->LEFT_TB:Lcom/shuyu/gsyvideoplayer/video/PlayerGestureListener$ScrollMode;

    if-ne p1, p2, :cond_4

    .line 116
    iget p1, p0, Lcom/shuyu/gsyvideoplayer/video/PlayerGestureListener;->dpVideoHeight:F

    div-float/2addr p4, p1

    invoke-direct {p0, p4}, Lcom/shuyu/gsyvideoplayer/video/PlayerGestureListener;->updateVideoLeftTB(F)V

    goto :goto_0

    .line 117
    :cond_4
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/PlayerGestureListener;->scrollMode:Lcom/shuyu/gsyvideoplayer/video/PlayerGestureListener$ScrollMode;

    sget-object p2, Lcom/shuyu/gsyvideoplayer/video/PlayerGestureListener$ScrollMode;->RIGHT_TB:Lcom/shuyu/gsyvideoplayer/video/PlayerGestureListener$ScrollMode;

    if-ne p1, p2, :cond_5

    .line 118
    iget p1, p0, Lcom/shuyu/gsyvideoplayer/video/PlayerGestureListener;->dpVideoHeight:F

    div-float/2addr p4, p1

    invoke-direct {p0, p4}, Lcom/shuyu/gsyvideoplayer/video/PlayerGestureListener;->updateVideoRightTB(F)V

    :cond_5
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0

    .line 78
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onShowPress(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/PlayerGestureListener;->listener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/PlayerGestureListener;->listener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shuyu/gsyvideoplayer/video/PlayerGestureListener$VideoGestureListener;

    invoke-interface {v0}, Lcom/shuyu/gsyvideoplayer/video/PlayerGestureListener$VideoGestureListener;->onGestureSingleClick()V

    .line 143
    :cond_0
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onSingleTapConfirmed(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 73
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onSingleTapUp(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setVideoWH(II)V
    .locals 1

    int-to-float p1, p1

    .line 52
    iget v0, p0, Lcom/shuyu/gsyvideoplayer/video/PlayerGestureListener;->density:F

    div-float/2addr p1, v0

    iput p1, p0, Lcom/shuyu/gsyvideoplayer/video/PlayerGestureListener;->dpVideoWidth:F

    int-to-float p1, p2

    .line 53
    iget p2, p0, Lcom/shuyu/gsyvideoplayer/video/PlayerGestureListener;->density:F

    div-float/2addr p1, p2

    iput p1, p0, Lcom/shuyu/gsyvideoplayer/video/PlayerGestureListener;->dpVideoHeight:F

    .line 55
    iget p1, p0, Lcom/shuyu/gsyvideoplayer/video/PlayerGestureListener;->dpVideoWidth:F

    const p2, 0x47ea6000    # 120000.0f

    div-float/2addr p2, p1

    float-to-int p1, p2

    iput p1, p0, Lcom/shuyu/gsyvideoplayer/video/PlayerGestureListener;->preDpVideoDuration:I

    return-void
.end method
