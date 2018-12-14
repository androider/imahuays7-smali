.class public Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper$GSYVideoHelperBuilder;
.super Lcom/shuyu/gsyvideoplayer/a/a;
.source "GSYVideoHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GSYVideoHelperBuilder"
.end annotation


# instance fields
.field protected mHideActionBar:Z

.field protected mHideStatusBar:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 561
    invoke-direct {p0}, Lcom/shuyu/gsyvideoplayer/a/a;-><init>()V

    return-void
.end method


# virtual methods
.method public getBottomProgressDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 714
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper$GSYVideoHelperBuilder;->mBottomProgressDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getBottomShowProgressDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 718
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper$GSYVideoHelperBuilder;->mBottomShowProgressDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getBottomShowProgressThumbDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 722
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper$GSYVideoHelperBuilder;->mBottomShowProgressThumbDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getCachePath()Ljava/io/File;
    .locals 1

    .line 694
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper$GSYVideoHelperBuilder;->mCachePath:Ljava/io/File;

    return-object v0
.end method

.method public getDialogProgressBarDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 730
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper$GSYVideoHelperBuilder;->mDialogProgressBarDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getDialogProgressHighLightColor()I
    .locals 1

    .line 598
    iget v0, p0, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper$GSYVideoHelperBuilder;->mDialogProgressHighLightColor:I

    return v0
.end method

.method public getDialogProgressNormalColor()I
    .locals 1

    .line 602
    iget v0, p0, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper$GSYVideoHelperBuilder;->mDialogProgressNormalColor:I

    return v0
.end method

.method public getDismissControlTime()I
    .locals 1

    .line 606
    iget v0, p0, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper$GSYVideoHelperBuilder;->mDismissControlTime:I

    return v0
.end method

.method public getEffectFilter()Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView$a;
    .locals 1

    .line 734
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper$GSYVideoHelperBuilder;->mEffectFilter:Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView$a;

    return-object v0
.end method

.method public getEnlargeImageRes()I
    .locals 1

    .line 590
    iget v0, p0, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper$GSYVideoHelperBuilder;->mEnlargeImageRes:I

    return v0
.end method

.method public getGSYVideoProgressListener()Lcom/shuyu/gsyvideoplayer/c/d;
    .locals 1

    .line 738
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper$GSYVideoHelperBuilder;->mGSYVideoProgressListener:Lcom/shuyu/gsyvideoplayer/c/d;

    return-object v0
.end method

.method public getLockClickListener()Lcom/shuyu/gsyvideoplayer/c/g;
    .locals 1

    .line 706
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper$GSYVideoHelperBuilder;->mLockClickListener:Lcom/shuyu/gsyvideoplayer/c/g;

    return-object v0
.end method

.method public getMapHeadData()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 698
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper$GSYVideoHelperBuilder;->mMapHeadData:Ljava/util/Map;

    return-object v0
.end method

.method public getPlayPosition()I
    .locals 1

    .line 594
    iget v0, p0, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper$GSYVideoHelperBuilder;->mPlayPosition:I

    return v0
.end method

.method public getPlayTag()Ljava/lang/String;
    .locals 1

    .line 682
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper$GSYVideoHelperBuilder;->mPlayTag:Ljava/lang/String;

    return-object v0
.end method

.method public getSeekOnStart()J
    .locals 2

    .line 610
    iget-wide v0, p0, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper$GSYVideoHelperBuilder;->mSeekOnStart:J

    return-wide v0
.end method

.method public getSeekRatio()F
    .locals 1

    .line 614
    iget v0, p0, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper$GSYVideoHelperBuilder;->mSeekRatio:F

    return v0
.end method

.method public getShrinkImageRes()I
    .locals 1

    .line 586
    iget v0, p0, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper$GSYVideoHelperBuilder;->mShrinkImageRes:I

    return v0
.end method

.method public getSpeed()F
    .locals 1

    .line 618
    iget v0, p0, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper$GSYVideoHelperBuilder;->mSpeed:F

    return v0
.end method

.method public getThumbImageView()Landroid/view/View;
    .locals 1

    .line 710
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper$GSYVideoHelperBuilder;->mThumbImageView:Landroid/view/View;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 686
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper$GSYVideoHelperBuilder;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoAllCallBack()Lcom/shuyu/gsyvideoplayer/c/i;
    .locals 1

    .line 702
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper$GSYVideoHelperBuilder;->mVideoAllCallBack:Lcom/shuyu/gsyvideoplayer/c/i;

    return-object v0
.end method

.method public getVideoTitle()Ljava/lang/String;
    .locals 1

    .line 690
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper$GSYVideoHelperBuilder;->mVideoTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getVolumeProgressDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 726
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper$GSYVideoHelperBuilder;->mVolumeProgressDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public isCacheWithPlay()Z
    .locals 1

    .line 662
    iget-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper$GSYVideoHelperBuilder;->mCacheWithPlay:Z

    return v0
.end method

.method public isHideActionBar()Z
    .locals 1

    .line 568
    iget-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper$GSYVideoHelperBuilder;->mHideActionBar:Z

    return v0
.end method

.method public isHideKey()Z
    .locals 1

    .line 622
    iget-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper$GSYVideoHelperBuilder;->mHideKey:Z

    return v0
.end method

.method public isHideStatusBar()Z
    .locals 1

    .line 577
    iget-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper$GSYVideoHelperBuilder;->mHideStatusBar:Z

    return v0
.end method

.method public isIsTouchWiget()Z
    .locals 1

    .line 646
    iget-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper$GSYVideoHelperBuilder;->mIsTouchWiget:Z

    return v0
.end method

.method public isIsTouchWigetFull()Z
    .locals 1

    .line 650
    iget-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper$GSYVideoHelperBuilder;->mIsTouchWigetFull:Z

    return v0
.end method

.method public isLockLand()Z
    .locals 1

    .line 638
    iget-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper$GSYVideoHelperBuilder;->mLockLand:Z

    return v0
.end method

.method public isLooping()Z
    .locals 1

    .line 642
    iget-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper$GSYVideoHelperBuilder;->mLooping:Z

    return v0
.end method

.method public isNeedLockFull()Z
    .locals 1

    .line 666
    iget-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper$GSYVideoHelperBuilder;->mNeedLockFull:Z

    return v0
.end method

.method public isNeedShowWifiTip()Z
    .locals 1

    .line 630
    iget-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper$GSYVideoHelperBuilder;->mNeedShowWifiTip:Z

    return v0
.end method

.method public isRotateViewAuto()Z
    .locals 1

    .line 634
    iget-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper$GSYVideoHelperBuilder;->mRotateViewAuto:Z

    return v0
.end method

.method public isRotateWithSystem()Z
    .locals 1

    .line 658
    iget-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper$GSYVideoHelperBuilder;->mRotateWithSystem:Z

    return v0
.end method

.method public isSetUpLazy()Z
    .locals 1

    .line 678
    iget-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper$GSYVideoHelperBuilder;->mSetUpLazy:Z

    return v0
.end method

.method public isShowFullAnimation()Z
    .locals 1

    .line 626
    iget-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper$GSYVideoHelperBuilder;->mShowFullAnimation:Z

    return v0
.end method

.method public isShowPauseCover()Z
    .locals 1

    .line 654
    iget-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper$GSYVideoHelperBuilder;->mShowPauseCover:Z

    return v0
.end method

.method public isSounchTouch()Z
    .locals 1

    .line 674
    iget-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper$GSYVideoHelperBuilder;->mSounchTouch:Z

    return v0
.end method

.method public isThumbPlay()Z
    .locals 1

    .line 670
    iget-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper$GSYVideoHelperBuilder;->mThumbPlay:Z

    return v0
.end method

.method public setHideActionBar(Z)Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper$GSYVideoHelperBuilder;
    .locals 0

    .line 572
    iput-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper$GSYVideoHelperBuilder;->mHideActionBar:Z

    return-object p0
.end method

.method public setHideStatusBar(Z)Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper$GSYVideoHelperBuilder;
    .locals 0

    .line 581
    iput-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper$GSYVideoHelperBuilder;->mHideStatusBar:Z

    return-object p0
.end method
