.class public Lcom/shuyu/gsyvideoplayer/a/a;
.super Ljava/lang/Object;
.source "GSYVideoOptionBuilder.java"


# instance fields
.field protected mActionBar:Z

.field protected mAutoFullWithSize:Z

.field protected mBottomProgressDrawable:Landroid/graphics/drawable/Drawable;

.field protected mBottomShowProgressDrawable:Landroid/graphics/drawable/Drawable;

.field protected mBottomShowProgressThumbDrawable:Landroid/graphics/drawable/Drawable;

.field protected mCachePath:Ljava/io/File;

.field protected mCacheWithPlay:Z

.field protected mDialogProgressBarDrawable:Landroid/graphics/drawable/Drawable;

.field protected mDialogProgressHighLightColor:I

.field protected mDialogProgressNormalColor:I

.field protected mDismissControlTime:I

.field protected mEffectFilter:Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView$a;

.field protected mEnlargeImageRes:I

.field protected mGSYVideoProgressListener:Lcom/shuyu/gsyvideoplayer/c/d;

.field protected mHideKey:Z

.field protected mIsTouchWiget:Z

.field protected mIsTouchWigetFull:Z

.field protected mLockClickListener:Lcom/shuyu/gsyvideoplayer/c/g;

.field protected mLockLand:Z

.field protected mLooping:Z

.field protected mMapHeadData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mNeedLockFull:Z

.field protected mNeedShowWifiTip:Z

.field protected mPlayPosition:I

.field protected mPlayTag:Ljava/lang/String;

.field protected mReleaseWhenLossAudio:Z

.field protected mRotateViewAuto:Z

.field protected mRotateWithSystem:Z

.field protected mSeekOnStart:J

.field protected mSeekRatio:F

.field protected mSetUpLazy:Z

.field protected mShowFullAnimation:Z

.field protected mShowPauseCover:Z

.field protected mShrinkImageRes:I

.field protected mSounchTouch:Z

.field protected mSpeed:F

.field protected mStartAfterPrepared:Z

.field protected mStatusBar:Z

.field protected mThumbImageView:Landroid/view/View;

.field protected mThumbPlay:Z

.field protected mUrl:Ljava/lang/String;

.field protected mVideoAllCallBack:Lcom/shuyu/gsyvideoplayer/c/i;

.field protected mVideoTitle:Ljava/lang/String;

.field protected mVolumeProgressDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 30
    iput v0, p0, Lcom/shuyu/gsyvideoplayer/a/a;->mShrinkImageRes:I

    .line 33
    iput v0, p0, Lcom/shuyu/gsyvideoplayer/a/a;->mEnlargeImageRes:I

    const/16 v0, -0x16

    .line 36
    iput v0, p0, Lcom/shuyu/gsyvideoplayer/a/a;->mPlayPosition:I

    const/16 v0, -0xb

    .line 39
    iput v0, p0, Lcom/shuyu/gsyvideoplayer/a/a;->mDialogProgressHighLightColor:I

    .line 42
    iput v0, p0, Lcom/shuyu/gsyvideoplayer/a/a;->mDialogProgressNormalColor:I

    const/16 v0, 0x1388

    .line 45
    iput v0, p0, Lcom/shuyu/gsyvideoplayer/a/a;->mDismissControlTime:I

    const-wide/16 v0, -0x1

    .line 48
    iput-wide v0, p0, Lcom/shuyu/gsyvideoplayer/a/a;->mSeekOnStart:J

    const/high16 v0, 0x3f800000    # 1.0f

    .line 51
    iput v0, p0, Lcom/shuyu/gsyvideoplayer/a/a;->mSeekRatio:F

    .line 54
    iput v0, p0, Lcom/shuyu/gsyvideoplayer/a/a;->mSpeed:F

    const/4 v0, 0x1

    .line 57
    iput-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/a/a;->mHideKey:Z

    .line 60
    iput-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/a/a;->mShowFullAnimation:Z

    const/4 v1, 0x0

    .line 63
    iput-boolean v1, p0, Lcom/shuyu/gsyvideoplayer/a/a;->mAutoFullWithSize:Z

    .line 66
    iput-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/a/a;->mNeedShowWifiTip:Z

    .line 69
    iput-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/a/a;->mRotateViewAuto:Z

    .line 72
    iput-boolean v1, p0, Lcom/shuyu/gsyvideoplayer/a/a;->mLockLand:Z

    .line 75
    iput-boolean v1, p0, Lcom/shuyu/gsyvideoplayer/a/a;->mLooping:Z

    .line 78
    iput-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/a/a;->mIsTouchWiget:Z

    .line 81
    iput-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/a/a;->mIsTouchWigetFull:Z

    .line 84
    iput-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/a/a;->mShowPauseCover:Z

    .line 87
    iput-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/a/a;->mRotateWithSystem:Z

    .line 102
    iput-boolean v1, p0, Lcom/shuyu/gsyvideoplayer/a/a;->mSetUpLazy:Z

    .line 105
    iput-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/a/a;->mStartAfterPrepared:Z

    .line 108
    iput-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/a/a;->mReleaseWhenLossAudio:Z

    .line 111
    iput-boolean v1, p0, Lcom/shuyu/gsyvideoplayer/a/a;->mActionBar:Z

    .line 114
    iput-boolean v1, p0, Lcom/shuyu/gsyvideoplayer/a/a;->mStatusBar:Z

    const-string v0, ""

    .line 117
    iput-object v0, p0, Lcom/shuyu/gsyvideoplayer/a/a;->mPlayTag:Ljava/lang/String;

    const/4 v0, 0x0

    .line 123
    iput-object v0, p0, Lcom/shuyu/gsyvideoplayer/a/a;->mVideoTitle:Ljava/lang/String;

    .line 156
    new-instance v0, Lcom/shuyu/gsyvideoplayer/render/a/a;

    invoke-direct {v0}, Lcom/shuyu/gsyvideoplayer/render/a/a;-><init>()V

    iput-object v0, p0, Lcom/shuyu/gsyvideoplayer/a/a;->mEffectFilter:Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView$a;

    return-void
.end method


# virtual methods
.method public build(Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;)V
    .locals 2

    .line 549
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/a/a;->mBottomShowProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/a/a;->mBottomShowProgressThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 550
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/a/a;->mBottomShowProgressDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/shuyu/gsyvideoplayer/a/a;->mBottomShowProgressThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0, v1}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->setBottomShowProgressBarDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 552
    :cond_0
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/a/a;->mBottomProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 553
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/a/a;->mBottomProgressDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->setBottomProgressBarDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 555
    :cond_1
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/a/a;->mVolumeProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 556
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/a/a;->mVolumeProgressDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->setDialogVolumeProgressBar(Landroid/graphics/drawable/Drawable;)V

    .line 559
    :cond_2
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/a/a;->mDialogProgressBarDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    .line 560
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/a/a;->mDialogProgressBarDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->setDialogProgressBar(Landroid/graphics/drawable/Drawable;)V

    .line 563
    :cond_3
    iget v0, p0, Lcom/shuyu/gsyvideoplayer/a/a;->mDialogProgressHighLightColor:I

    if-lez v0, :cond_4

    iget v0, p0, Lcom/shuyu/gsyvideoplayer/a/a;->mDialogProgressNormalColor:I

    if-lez v0, :cond_4

    .line 564
    iget v0, p0, Lcom/shuyu/gsyvideoplayer/a/a;->mDialogProgressHighLightColor:I

    iget v1, p0, Lcom/shuyu/gsyvideoplayer/a/a;->mDialogProgressNormalColor:I

    invoke-virtual {p1, v0, v1}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->setDialogProgressColor(II)V

    .line 567
    :cond_4
    invoke-virtual {p0, p1}, Lcom/shuyu/gsyvideoplayer/a/a;->build(Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;)V

    return-void
.end method

.method public build(Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;)V
    .locals 13

    .line 571
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/a/a;->mPlayTag:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->setPlayTag(Ljava/lang/String;)V

    .line 572
    iget v0, p0, Lcom/shuyu/gsyvideoplayer/a/a;->mPlayPosition:I

    invoke-virtual {p1, v0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->setPlayPosition(I)V

    .line 574
    iget-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/a/a;->mThumbPlay:Z

    invoke-virtual {p1, v0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->setThumbPlay(Z)V

    .line 576
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/a/a;->mThumbImageView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 577
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/a/a;->mThumbImageView:Landroid/view/View;

    invoke-virtual {p1, v0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->setThumbImageView(Landroid/view/View;)V

    .line 580
    :cond_0
    iget-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/a/a;->mNeedLockFull:Z

    invoke-virtual {p1, v0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->setNeedLockFull(Z)V

    .line 582
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/a/a;->mLockClickListener:Lcom/shuyu/gsyvideoplayer/c/g;

    if-eqz v0, :cond_1

    .line 583
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/a/a;->mLockClickListener:Lcom/shuyu/gsyvideoplayer/c/g;

    invoke-virtual {p1, v0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->setLockClickListener(Lcom/shuyu/gsyvideoplayer/c/g;)V

    .line 586
    :cond_1
    iget v0, p0, Lcom/shuyu/gsyvideoplayer/a/a;->mDismissControlTime:I

    invoke-virtual {p1, v0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->setDismissControlTime(I)V

    .line 589
    iget-wide v0, p0, Lcom/shuyu/gsyvideoplayer/a/a;->mSeekOnStart:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_2

    .line 590
    iget-wide v0, p0, Lcom/shuyu/gsyvideoplayer/a/a;->mSeekOnStart:J

    invoke-virtual {p1, v0, v1}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->setSeekOnStart(J)V

    .line 593
    :cond_2
    iget-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/a/a;->mShowFullAnimation:Z

    invoke-virtual {p1, v0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->setShowFullAnimation(Z)V

    .line 594
    iget-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/a/a;->mLooping:Z

    invoke-virtual {p1, v0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->setLooping(Z)V

    .line 595
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/a/a;->mVideoAllCallBack:Lcom/shuyu/gsyvideoplayer/c/i;

    if-eqz v0, :cond_3

    .line 596
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/a/a;->mVideoAllCallBack:Lcom/shuyu/gsyvideoplayer/c/i;

    invoke-virtual {p1, v0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->setVideoAllCallBack(Lcom/shuyu/gsyvideoplayer/c/i;)V

    .line 598
    :cond_3
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/a/a;->mGSYVideoProgressListener:Lcom/shuyu/gsyvideoplayer/c/d;

    if-eqz v0, :cond_4

    .line 599
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/a/a;->mGSYVideoProgressListener:Lcom/shuyu/gsyvideoplayer/c/d;

    invoke-virtual {p1, v0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->setGSYVideoProgressListener(Lcom/shuyu/gsyvideoplayer/c/d;)V

    .line 601
    :cond_4
    iget-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/a/a;->mAutoFullWithSize:Z

    invoke-virtual {p1, v0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->setAutoFullWithSize(Z)V

    .line 602
    iget-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/a/a;->mRotateViewAuto:Z

    invoke-virtual {p1, v0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->setRotateViewAuto(Z)V

    .line 603
    iget-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/a/a;->mLockLand:Z

    invoke-virtual {p1, v0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->setLockLand(Z)V

    .line 604
    iget v0, p0, Lcom/shuyu/gsyvideoplayer/a/a;->mSpeed:F

    iget-boolean v1, p0, Lcom/shuyu/gsyvideoplayer/a/a;->mSounchTouch:Z

    invoke-virtual {p1, v0, v1}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->setSpeed(FZ)V

    .line 605
    iget-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/a/a;->mHideKey:Z

    invoke-virtual {p1, v0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->setHideKey(Z)V

    .line 608
    iget-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/a/a;->mNeedShowWifiTip:Z

    invoke-virtual {p1, v0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->setNeedShowWifiTip(Z)V

    .line 609
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/a/a;->mEffectFilter:Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView$a;

    invoke-virtual {p1, v0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->setEffectFilter(Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView$a;)V

    .line 610
    iget-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/a/a;->mStartAfterPrepared:Z

    invoke-virtual {p1, v0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->setStartAfterPrepared(Z)V

    .line 611
    iget-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/a/a;->mReleaseWhenLossAudio:Z

    invoke-virtual {p1, v0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->setReleaseWhenLossAudio(Z)V

    .line 612
    iget-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/a/a;->mActionBar:Z

    invoke-virtual {p1, v0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->setFullHideActionBar(Z)V

    .line 613
    iget-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/a/a;->mStatusBar:Z

    invoke-virtual {p1, v0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->setFullHideStatusBar(Z)V

    .line 614
    iget v0, p0, Lcom/shuyu/gsyvideoplayer/a/a;->mEnlargeImageRes:I

    if-lez v0, :cond_5

    .line 615
    iget v0, p0, Lcom/shuyu/gsyvideoplayer/a/a;->mEnlargeImageRes:I

    invoke-virtual {p1, v0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->setEnlargeImageRes(I)V

    .line 617
    :cond_5
    iget v0, p0, Lcom/shuyu/gsyvideoplayer/a/a;->mShrinkImageRes:I

    if-lez v0, :cond_6

    .line 618
    iget v0, p0, Lcom/shuyu/gsyvideoplayer/a/a;->mShrinkImageRes:I

    invoke-virtual {p1, v0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->setShrinkImageRes(I)V

    .line 620
    :cond_6
    iget-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/a/a;->mShowPauseCover:Z

    invoke-virtual {p1, v0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->setShowPauseCover(Z)V

    .line 621
    iget v0, p0, Lcom/shuyu/gsyvideoplayer/a/a;->mSeekRatio:F

    invoke-virtual {p1, v0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->setSeekRatio(F)V

    .line 622
    iget-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/a/a;->mRotateWithSystem:Z

    invoke-virtual {p1, v0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->setRotateWithSystem(Z)V

    .line 623
    iget-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/a/a;->mSetUpLazy:Z

    if-eqz v0, :cond_7

    .line 624
    iget-object v2, p0, Lcom/shuyu/gsyvideoplayer/a/a;->mUrl:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/shuyu/gsyvideoplayer/a/a;->mCacheWithPlay:Z

    iget-object v4, p0, Lcom/shuyu/gsyvideoplayer/a/a;->mCachePath:Ljava/io/File;

    iget-object v5, p0, Lcom/shuyu/gsyvideoplayer/a/a;->mMapHeadData:Ljava/util/Map;

    iget-object v6, p0, Lcom/shuyu/gsyvideoplayer/a/a;->mVideoTitle:Ljava/lang/String;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->setUpLazy(Ljava/lang/String;ZLjava/io/File;Ljava/util/Map;Ljava/lang/String;)Z

    goto :goto_0

    .line 626
    :cond_7
    iget-object v8, p0, Lcom/shuyu/gsyvideoplayer/a/a;->mUrl:Ljava/lang/String;

    iget-boolean v9, p0, Lcom/shuyu/gsyvideoplayer/a/a;->mCacheWithPlay:Z

    iget-object v10, p0, Lcom/shuyu/gsyvideoplayer/a/a;->mCachePath:Ljava/io/File;

    iget-object v11, p0, Lcom/shuyu/gsyvideoplayer/a/a;->mMapHeadData:Ljava/util/Map;

    iget-object v12, p0, Lcom/shuyu/gsyvideoplayer/a/a;->mVideoTitle:Ljava/lang/String;

    move-object v7, p1

    invoke-virtual/range {v7 .. v12}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->setUp(Ljava/lang/String;ZLjava/io/File;Ljava/util/Map;Ljava/lang/String;)Z

    :goto_0
    return-void
.end method

.method public setAutoFullWithSize(Z)Lcom/shuyu/gsyvideoplayer/a/a;
    .locals 0

    .line 168
    iput-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/a/a;->mAutoFullWithSize:Z

    return-object p0
.end method

.method public setBottomProgressBarDrawable(Landroid/graphics/drawable/Drawable;)Lcom/shuyu/gsyvideoplayer/a/a;
    .locals 0

    .line 457
    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/a/a;->mBottomProgressDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public setBottomShowProgressBarDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Lcom/shuyu/gsyvideoplayer/a/a;
    .locals 0

    .line 448
    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/a/a;->mBottomShowProgressDrawable:Landroid/graphics/drawable/Drawable;

    .line 449
    iput-object p2, p0, Lcom/shuyu/gsyvideoplayer/a/a;->mBottomShowProgressThumbDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public setCachePath(Ljava/io/File;)Lcom/shuyu/gsyvideoplayer/a/a;
    .locals 0

    .line 411
    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/a/a;->mCachePath:Ljava/io/File;

    return-object p0
.end method

.method public setCacheWithPlay(Z)Lcom/shuyu/gsyvideoplayer/a/a;
    .locals 0

    .line 380
    iput-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/a/a;->mCacheWithPlay:Z

    return-object p0
.end method

.method public setDialogProgressBar(Landroid/graphics/drawable/Drawable;)Lcom/shuyu/gsyvideoplayer/a/a;
    .locals 0

    .line 474
    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/a/a;->mDialogProgressBarDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public setDialogProgressColor(II)Lcom/shuyu/gsyvideoplayer/a/a;
    .locals 0

    .line 482
    iput p1, p0, Lcom/shuyu/gsyvideoplayer/a/a;->mDialogProgressHighLightColor:I

    .line 483
    iput p2, p0, Lcom/shuyu/gsyvideoplayer/a/a;->mDialogProgressNormalColor:I

    return-object p0
.end method

.method public setDialogVolumeProgressBar(Landroid/graphics/drawable/Drawable;)Lcom/shuyu/gsyvideoplayer/a/a;
    .locals 0

    .line 465
    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/a/a;->mVolumeProgressDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public setDismissControlTime(I)Lcom/shuyu/gsyvideoplayer/a/a;
    .locals 0

    .line 518
    iput p1, p0, Lcom/shuyu/gsyvideoplayer/a/a;->mDismissControlTime:I

    return-object p0
.end method

.method public setEffectFilter(Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView$a;)Lcom/shuyu/gsyvideoplayer/a/a;
    .locals 0

    .line 526
    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/a/a;->mEffectFilter:Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView$a;

    return-object p0
.end method

.method public setEnlargeImageRes(I)Lcom/shuyu/gsyvideoplayer/a/a;
    .locals 0

    .line 275
    iput p1, p0, Lcom/shuyu/gsyvideoplayer/a/a;->mEnlargeImageRes:I

    return-object p0
.end method

.method public setFullHideActionBar(Z)Lcom/shuyu/gsyvideoplayer/a/a;
    .locals 0

    .line 539
    iput-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/a/a;->mActionBar:Z

    return-object p0
.end method

.method public setFullHideStatusBar(Z)Lcom/shuyu/gsyvideoplayer/a/a;
    .locals 0

    .line 544
    iput-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/a/a;->mStatusBar:Z

    return-object p0
.end method

.method public setGSYVideoProgressListener(Lcom/shuyu/gsyvideoplayer/c/d;)Lcom/shuyu/gsyvideoplayer/a/a;
    .locals 0

    .line 430
    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/a/a;->mGSYVideoProgressListener:Lcom/shuyu/gsyvideoplayer/c/d;

    return-object p0
.end method

.method public setHideKey(Z)Lcom/shuyu/gsyvideoplayer/a/a;
    .locals 0

    .line 238
    iput-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/a/a;->mHideKey:Z

    return-object p0
.end method

.method public setIsTouchWiget(Z)Lcom/shuyu/gsyvideoplayer/a/a;
    .locals 0

    .line 247
    iput-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/a/a;->mIsTouchWiget:Z

    return-object p0
.end method

.method public setIsTouchWigetFull(Z)Lcom/shuyu/gsyvideoplayer/a/a;
    .locals 0

    .line 256
    iput-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/a/a;->mIsTouchWigetFull:Z

    return-object p0
.end method

.method public setLockClickListener(Lcom/shuyu/gsyvideoplayer/c/g;)Lcom/shuyu/gsyvideoplayer/a/a;
    .locals 0

    .line 508
    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/a/a;->mLockClickListener:Lcom/shuyu/gsyvideoplayer/c/g;

    return-object p0
.end method

.method public setLockLand(Z)Lcom/shuyu/gsyvideoplayer/a/a;
    .locals 0

    .line 213
    iput-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/a/a;->mLockLand:Z

    return-object p0
.end method

.method public setLooping(Z)Lcom/shuyu/gsyvideoplayer/a/a;
    .locals 0

    .line 186
    iput-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/a/a;->mLooping:Z

    return-object p0
.end method

.method public setMapHeadData(Ljava/util/Map;)Lcom/shuyu/gsyvideoplayer/a/a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/shuyu/gsyvideoplayer/a/a;"
        }
    .end annotation

    .line 421
    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/a/a;->mMapHeadData:Ljava/util/Map;

    return-object p0
.end method

.method public setNeedLockFull(Z)Lcom/shuyu/gsyvideoplayer/a/a;
    .locals 0

    .line 500
    iput-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/a/a;->mNeedLockFull:Z

    return-object p0
.end method

.method public setNeedShowWifiTip(Z)Lcom/shuyu/gsyvideoplayer/a/a;
    .locals 0

    .line 265
    iput-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/a/a;->mNeedShowWifiTip:Z

    return-object p0
.end method

.method public setPlayPosition(I)Lcom/shuyu/gsyvideoplayer/a/a;
    .locals 0

    .line 340
    iput p1, p0, Lcom/shuyu/gsyvideoplayer/a/a;->mPlayPosition:I

    return-object p0
.end method

.method public setPlayTag(Ljava/lang/String;)Lcom/shuyu/gsyvideoplayer/a/a;
    .locals 0

    .line 331
    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/a/a;->mPlayTag:Ljava/lang/String;

    return-object p0
.end method

.method public setReleaseWhenLossAudio(Z)Lcom/shuyu/gsyvideoplayer/a/a;
    .locals 0

    .line 401
    iput-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/a/a;->mReleaseWhenLossAudio:Z

    return-object p0
.end method

.method public setRotateViewAuto(Z)Lcom/shuyu/gsyvideoplayer/a/a;
    .locals 0

    .line 205
    iput-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/a/a;->mRotateViewAuto:Z

    return-object p0
.end method

.method public setRotateWithSystem(Z)Lcom/shuyu/gsyvideoplayer/a/a;
    .locals 0

    .line 321
    iput-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/a/a;->mRotateWithSystem:Z

    return-object p0
.end method

.method public setSeekOnStart(J)Lcom/shuyu/gsyvideoplayer/a/a;
    .locals 0

    .line 350
    iput-wide p1, p0, Lcom/shuyu/gsyvideoplayer/a/a;->mSeekOnStart:J

    return-object p0
.end method

.method public setSeekRatio(F)Lcom/shuyu/gsyvideoplayer/a/a;
    .locals 1

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    return-object p0

    .line 311
    :cond_0
    iput p1, p0, Lcom/shuyu/gsyvideoplayer/a/a;->mSeekRatio:F

    return-object p0
.end method

.method public setSetUpLazy(Z)Lcom/shuyu/gsyvideoplayer/a/a;
    .locals 0

    .line 534
    iput-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/a/a;->mSetUpLazy:Z

    return-object p0
.end method

.method public setShowFullAnimation(Z)Lcom/shuyu/gsyvideoplayer/a/a;
    .locals 0

    .line 178
    iput-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/a/a;->mShowFullAnimation:Z

    return-object p0
.end method

.method public setShowPauseCover(Z)Lcom/shuyu/gsyvideoplayer/a/a;
    .locals 0

    .line 298
    iput-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/a/a;->mShowPauseCover:Z

    return-object p0
.end method

.method public setShrinkImageRes(I)Lcom/shuyu/gsyvideoplayer/a/a;
    .locals 0

    .line 285
    iput p1, p0, Lcom/shuyu/gsyvideoplayer/a/a;->mShrinkImageRes:I

    return-object p0
.end method

.method public setSoundTouch(Z)Lcom/shuyu/gsyvideoplayer/a/a;
    .locals 0

    .line 230
    iput-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/a/a;->mSounchTouch:Z

    return-object p0
.end method

.method public setSpeed(F)Lcom/shuyu/gsyvideoplayer/a/a;
    .locals 0

    .line 221
    iput p1, p0, Lcom/shuyu/gsyvideoplayer/a/a;->mSpeed:F

    return-object p0
.end method

.method public setStartAfterPrepared(Z)Lcom/shuyu/gsyvideoplayer/a/a;
    .locals 0

    .line 390
    iput-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/a/a;->mStartAfterPrepared:Z

    return-object p0
.end method

.method public setThumbImageView(Landroid/view/View;)Lcom/shuyu/gsyvideoplayer/a/a;
    .locals 0

    .line 439
    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/a/a;->mThumbImageView:Landroid/view/View;

    return-object p0
.end method

.method public setThumbPlay(Z)Lcom/shuyu/gsyvideoplayer/a/a;
    .locals 0

    .line 491
    iput-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/a/a;->mThumbPlay:Z

    return-object p0
.end method

.method public setUrl(Ljava/lang/String;)Lcom/shuyu/gsyvideoplayer/a/a;
    .locals 0

    .line 360
    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/a/a;->mUrl:Ljava/lang/String;

    return-object p0
.end method

.method public setVideoAllCallBack(Lcom/shuyu/gsyvideoplayer/c/i;)Lcom/shuyu/gsyvideoplayer/a/a;
    .locals 0

    .line 197
    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/a/a;->mVideoAllCallBack:Lcom/shuyu/gsyvideoplayer/c/i;

    return-object p0
.end method

.method public setVideoTitle(Ljava/lang/String;)Lcom/shuyu/gsyvideoplayer/a/a;
    .locals 0

    .line 370
    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/a/a;->mVideoTitle:Ljava/lang/String;

    return-object p0
.end method
