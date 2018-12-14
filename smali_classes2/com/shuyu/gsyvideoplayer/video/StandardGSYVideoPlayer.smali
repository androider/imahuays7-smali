.class public Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;
.super Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoPlayer;
.source "StandardGSYVideoPlayer.java"


# instance fields
.field protected mBottomProgressDrawable:Landroid/graphics/drawable/Drawable;

.field protected mBottomShowProgressDrawable:Landroid/graphics/drawable/Drawable;

.field protected mBottomShowProgressThumbDrawable:Landroid/graphics/drawable/Drawable;

.field protected mBrightnessDialog:Landroid/app/Dialog;

.field protected mBrightnessDialogTv:Landroid/widget/TextView;

.field protected mDialogIcon:Landroid/widget/ImageView;

.field protected mDialogProgressBar:Landroid/widget/ProgressBar;

.field protected mDialogProgressBarDrawable:Landroid/graphics/drawable/Drawable;

.field protected mDialogProgressHighLightColor:I

.field protected mDialogProgressNormalColor:I

.field protected mDialogSeekTime:Landroid/widget/TextView;

.field protected mDialogTotalTime:Landroid/widget/TextView;

.field protected mDialogVolumeProgressBar:Landroid/widget/ProgressBar;

.field protected mProgressDialog:Landroid/app/Dialog;

.field protected mVolumeDialog:Landroid/app/Dialog;

.field protected mVolumeProgressDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 89
    invoke-direct {p0, p1}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoPlayer;-><init>(Landroid/content/Context;)V

    const/16 p1, -0xb

    .line 77
    iput p1, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mDialogProgressHighLightColor:I

    .line 79
    iput p1, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mDialogProgressNormalColor:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 93
    invoke-direct {p0, p1, p2}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoPlayer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 p1, -0xb

    .line 77
    iput p1, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mDialogProgressHighLightColor:I

    .line 79
    iput p1, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mDialogProgressNormalColor:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/Boolean;)V
    .locals 0

    .line 85
    invoke-direct {p0, p1, p2}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoPlayer;-><init>(Landroid/content/Context;Ljava/lang/Boolean;)V

    const/16 p1, -0xb

    .line 77
    iput p1, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mDialogProgressHighLightColor:I

    .line 79
    iput p1, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mDialogProgressNormalColor:I

    return-void
.end method

.method private initFullUI(Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;)V
    .locals 2

    .line 829
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mBottomProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 830
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mBottomProgressDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->setBottomProgressBarDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 833
    :cond_0
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mBottomShowProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mBottomShowProgressThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 834
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mBottomShowProgressDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mBottomShowProgressThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0, v1}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->setBottomShowProgressBarDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 838
    :cond_1
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mVolumeProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 839
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mVolumeProgressDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->setDialogVolumeProgressBar(Landroid/graphics/drawable/Drawable;)V

    .line 842
    :cond_2
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mDialogProgressBarDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    .line 843
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mDialogProgressBarDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->setDialogProgressBar(Landroid/graphics/drawable/Drawable;)V

    .line 846
    :cond_3
    iget v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mDialogProgressHighLightColor:I

    if-ltz v0, :cond_4

    iget v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mDialogProgressNormalColor:I

    if-ltz v0, :cond_4

    .line 847
    iget v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mDialogProgressHighLightColor:I

    iget v1, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mDialogProgressNormalColor:I

    invoke-virtual {p1, v0, v1}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->setDialogProgressColor(II)V

    :cond_4
    return-void
.end method


# virtual methods
.method protected changeUiFromBufferingEnd()V
    .locals 2

    .line 555
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mLoadingProgressBar:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {p0, v0, v1}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->setViewShowState(Landroid/view/View;I)V

    return-void
.end method

.method protected changeUiToClear()V
    .locals 2

    const-string v0, "changeUiToClear"

    .line 764
    invoke-static {v0}, Lcom/shuyu/gsyvideoplayer/utils/Debuger;->printfLog(Ljava/lang/String;)V

    .line 766
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mTopContainer:Landroid/view/ViewGroup;

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->setViewShowState(Landroid/view/View;I)V

    .line 767
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mBottomContainer:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0, v1}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->setViewShowState(Landroid/view/View;I)V

    .line 769
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mLoadingProgressBar:Landroid/view/View;

    invoke-virtual {p0, v0, v1}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->setViewShowState(Landroid/view/View;I)V

    .line 770
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mThumbImageViewLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0, v1}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->setViewShowState(Landroid/view/View;I)V

    .line 771
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mBottomProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v0, v1}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->setViewShowState(Landroid/view/View;I)V

    .line 772
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mLockScreen:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {p0, v0, v1}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->setViewShowState(Landroid/view/View;I)V

    .line 774
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mLoadingProgressBar:Landroid/view/View;

    instance-of v0, v0, Lmoe/codeest/enviews/ENDownloadView;

    if-eqz v0, :cond_0

    .line 775
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mLoadingProgressBar:Landroid/view/View;

    check-cast v0, Lmoe/codeest/enviews/ENDownloadView;

    invoke-virtual {v0}, Lmoe/codeest/enviews/ENDownloadView;->b()V

    :cond_0
    return-void
.end method

.method protected changeUiToCompleteClear()V
    .locals 3

    const-string v0, "changeUiToCompleteClear"

    .line 780
    invoke-static {v0}, Lcom/shuyu/gsyvideoplayer/utils/Debuger;->printfLog(Ljava/lang/String;)V

    .line 782
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mTopContainer:Landroid/view/ViewGroup;

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->setViewShowState(Landroid/view/View;I)V

    .line 783
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mBottomContainer:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0, v1}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->setViewShowState(Landroid/view/View;I)V

    .line 786
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mLoadingProgressBar:Landroid/view/View;

    invoke-virtual {p0, v0, v1}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->setViewShowState(Landroid/view/View;I)V

    .line 787
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mThumbImageViewLayout:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->setViewShowState(Landroid/view/View;I)V

    .line 788
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mBottomProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v0, v1}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->setViewShowState(Landroid/view/View;I)V

    .line 789
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mLockScreen:Landroid/widget/ImageView;

    iget-boolean v2, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mIfCurrentIsFullscreen:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mNeedLockFull:Z

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->setViewShowState(Landroid/view/View;I)V

    .line 791
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mLoadingProgressBar:Landroid/view/View;

    instance-of v0, v0, Lmoe/codeest/enviews/ENDownloadView;

    if-eqz v0, :cond_1

    .line 792
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mLoadingProgressBar:Landroid/view/View;

    check-cast v0, Lmoe/codeest/enviews/ENDownloadView;

    invoke-virtual {v0}, Lmoe/codeest/enviews/ENDownloadView;->b()V

    .line 794
    :cond_1
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->updateStartImage()V

    return-void
.end method

.method protected changeUiToCompleteShow()V
    .locals 3

    const-string v0, "changeUiToCompleteShow"

    .line 561
    invoke-static {v0}, Lcom/shuyu/gsyvideoplayer/utils/Debuger;->printfLog(Ljava/lang/String;)V

    .line 563
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mTopContainer:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->setViewShowState(Landroid/view/View;I)V

    .line 565
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mLoadingProgressBar:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {p0, v0, v2}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->setViewShowState(Landroid/view/View;I)V

    .line 566
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mThumbImageViewLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0, v1}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->setViewShowState(Landroid/view/View;I)V

    .line 568
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mLockScreen:Landroid/widget/ImageView;

    iget-boolean v2, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mIfCurrentIsFullscreen:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mNeedLockFull:Z

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->setViewShowState(Landroid/view/View;I)V

    return-void
.end method

.method protected changeUiToError()V
    .locals 2

    const-string v0, "changeUiToError"

    .line 578
    invoke-static {v0}, Lcom/shuyu/gsyvideoplayer/utils/Debuger;->printfLog(Ljava/lang/String;)V

    .line 580
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mTopContainer:Landroid/view/ViewGroup;

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->setViewShowState(Landroid/view/View;I)V

    .line 581
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mBottomContainer:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0, v1}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->setViewShowState(Landroid/view/View;I)V

    .line 582
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mLoadingProgressBar:Landroid/view/View;

    invoke-virtual {p0, v0, v1}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->setViewShowState(Landroid/view/View;I)V

    .line 583
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mThumbImageViewLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0, v1}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->setViewShowState(Landroid/view/View;I)V

    .line 584
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mBottomProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v0, v1}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->setViewShowState(Landroid/view/View;I)V

    .line 585
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mLockScreen:Landroid/widget/ImageView;

    iget-boolean v1, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mIfCurrentIsFullscreen:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mNeedLockFull:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->setViewShowState(Landroid/view/View;I)V

    .line 587
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mLoadingProgressBar:Landroid/view/View;

    instance-of v0, v0, Lmoe/codeest/enviews/ENDownloadView;

    if-eqz v0, :cond_1

    .line 588
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mLoadingProgressBar:Landroid/view/View;

    check-cast v0, Lmoe/codeest/enviews/ENDownloadView;

    invoke-virtual {v0}, Lmoe/codeest/enviews/ENDownloadView;->b()V

    .line 590
    :cond_1
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->updateStartImage()V

    return-void
.end method

.method protected changeUiToNormal()V
    .locals 3

    const-string v0, "changeUiToNormal"

    .line 460
    invoke-static {v0}, Lcom/shuyu/gsyvideoplayer/utils/Debuger;->printfLog(Ljava/lang/String;)V

    .line 462
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mTopContainer:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->setViewShowState(Landroid/view/View;I)V

    .line 463
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mBottomContainer:Landroid/view/ViewGroup;

    const/4 v2, 0x4

    invoke-virtual {p0, v0, v2}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->setViewShowState(Landroid/view/View;I)V

    .line 469
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mLoadingProgressBar:Landroid/view/View;

    invoke-virtual {p0, v0, v2}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->setViewShowState(Landroid/view/View;I)V

    .line 470
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mThumbImageViewLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0, v1}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->setViewShowState(Landroid/view/View;I)V

    .line 471
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mBottomProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v0, v2}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->setViewShowState(Landroid/view/View;I)V

    .line 472
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mLockScreen:Landroid/widget/ImageView;

    iget-boolean v2, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mIfCurrentIsFullscreen:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mNeedLockFull:Z

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->setViewShowState(Landroid/view/View;I)V

    .line 474
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->updateStartImage()V

    .line 475
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mLoadingProgressBar:Landroid/view/View;

    instance-of v0, v0, Lmoe/codeest/enviews/ENDownloadView;

    if-eqz v0, :cond_1

    .line 476
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mLoadingProgressBar:Landroid/view/View;

    check-cast v0, Lmoe/codeest/enviews/ENDownloadView;

    invoke-virtual {v0}, Lmoe/codeest/enviews/ENDownloadView;->b()V

    :cond_1
    return-void
.end method

.method protected changeUiToPauseClear()V
    .locals 2

    const-string v0, "changeUiToPauseClear"

    .line 698
    invoke-static {v0}, Lcom/shuyu/gsyvideoplayer/utils/Debuger;->printfLog(Ljava/lang/String;)V

    .line 699
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->changeUiToClear()V

    .line 700
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mBottomProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->setViewShowState(Landroid/view/View;I)V

    .line 701
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->updatePauseCover()V

    return-void
.end method

.method protected changeUiToPauseShow()V
    .locals 3

    const-string v0, "changeUiToPauseShow"

    .line 531
    invoke-static {v0}, Lcom/shuyu/gsyvideoplayer/utils/Debuger;->printfLog(Ljava/lang/String;)V

    .line 533
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->isIfCurrentIsFullscreen()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mLockCurScreen:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mNeedLockFull:Z

    if-eqz v0, :cond_0

    .line 534
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mLockScreen:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v1}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->setViewShowState(Landroid/view/View;I)V

    return-void

    .line 538
    :cond_0
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mTopContainer:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0, v1}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->setViewShowState(Landroid/view/View;I)V

    .line 539
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mBottomContainer:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0, v1}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->setViewShowState(Landroid/view/View;I)V

    .line 540
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mLoadingProgressBar:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {p0, v0, v2}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->setViewShowState(Landroid/view/View;I)V

    .line 541
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mThumbImageViewLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0, v2}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->setViewShowState(Landroid/view/View;I)V

    .line 542
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mBottomProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v0, v2}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->setViewShowState(Landroid/view/View;I)V

    .line 543
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mLockScreen:Landroid/widget/ImageView;

    iget-boolean v2, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mIfCurrentIsFullscreen:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mNeedLockFull:Z

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->setViewShowState(Landroid/view/View;I)V

    .line 545
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mLoadingProgressBar:Landroid/view/View;

    instance-of v0, v0, Lmoe/codeest/enviews/ENDownloadView;

    if-eqz v0, :cond_2

    .line 546
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mLoadingProgressBar:Landroid/view/View;

    check-cast v0, Lmoe/codeest/enviews/ENDownloadView;

    invoke-virtual {v0}, Lmoe/codeest/enviews/ENDownloadView;->b()V

    .line 548
    :cond_2
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->updateStartImage()V

    .line 549
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->updatePauseCover()V

    return-void
.end method

.method protected changeUiToPlayingBufferingClear()V
    .locals 4

    const-string v0, "changeUiToPlayingBufferingClear"

    .line 705
    invoke-static {v0}, Lcom/shuyu/gsyvideoplayer/utils/Debuger;->printfLog(Ljava/lang/String;)V

    .line 708
    iget-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mIfCurrentIsFullscreen:Z

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mLockCurScreen:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mNeedLockFull:Z

    if-eqz v0, :cond_0

    .line 709
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mLockScreen:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v1}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->setViewShowState(Landroid/view/View;I)V

    return-void

    .line 713
    :cond_0
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->isIfCurrentIsFullscreen()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 714
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mLockScreen:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v1}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->setViewShowState(Landroid/view/View;I)V

    .line 716
    :cond_1
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mTopContainer:Landroid/view/ViewGroup;

    const/4 v2, 0x4

    invoke-virtual {p0, v0, v2}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->setViewShowState(Landroid/view/View;I)V

    .line 717
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mBottomContainer:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0, v2}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->setViewShowState(Landroid/view/View;I)V

    .line 719
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mLoadingProgressBar:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v3}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->setViewShowState(Landroid/view/View;I)V

    .line 720
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mThumbImageViewLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0, v2}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->setViewShowState(Landroid/view/View;I)V

    .line 721
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mBottomProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v0, v3}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->setViewShowState(Landroid/view/View;I)V

    .line 722
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mLockScreen:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v1}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->setViewShowState(Landroid/view/View;I)V

    .line 724
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mLoadingProgressBar:Landroid/view/View;

    instance-of v0, v0, Lmoe/codeest/enviews/ENDownloadView;

    if-eqz v0, :cond_2

    .line 725
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mLoadingProgressBar:Landroid/view/View;

    check-cast v0, Lmoe/codeest/enviews/ENDownloadView;

    .line 726
    invoke-virtual {v0}, Lmoe/codeest/enviews/ENDownloadView;->getCurrentState()I

    move-result v0

    if-nez v0, :cond_2

    .line 727
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mLoadingProgressBar:Landroid/view/View;

    check-cast v0, Lmoe/codeest/enviews/ENDownloadView;

    invoke-virtual {v0}, Lmoe/codeest/enviews/ENDownloadView;->a()V

    .line 730
    :cond_2
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->updateStartImage()V

    return-void
.end method

.method protected changeUiToPlayingBufferingShow()V
    .locals 2

    const-string v0, "changeUiToPlayingBufferingShow"

    .line 735
    invoke-static {v0}, Lcom/shuyu/gsyvideoplayer/utils/Debuger;->printfLog(Ljava/lang/String;)V

    .line 738
    iget-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mIfCurrentIsFullscreen:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mLockCurScreen:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mNeedLockFull:Z

    if-eqz v0, :cond_0

    .line 739
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mLockScreen:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v1}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->setViewShowState(Landroid/view/View;I)V

    return-void

    .line 743
    :cond_0
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->isIfCurrentIsFullscreen()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 744
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mLockScreen:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v1}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->setViewShowState(Landroid/view/View;I)V

    .line 746
    :cond_1
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mLoadingProgressBar:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-nez v0, :cond_2

    .line 747
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mLoadingProgressBar:Landroid/view/View;

    invoke-virtual {p0, v0, v1}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->setViewShowState(Landroid/view/View;I)V

    .line 749
    :cond_2
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mTopContainer:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0, v1}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->setViewShowState(Landroid/view/View;I)V

    .line 750
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mBottomContainer:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0, v1}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->setViewShowState(Landroid/view/View;I)V

    .line 751
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mThumbImageViewLayout:Landroid/widget/RelativeLayout;

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->setViewShowState(Landroid/view/View;I)V

    .line 752
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mBottomProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v0, v1}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->setViewShowState(Landroid/view/View;I)V

    .line 754
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mLoadingProgressBar:Landroid/view/View;

    instance-of v0, v0, Lmoe/codeest/enviews/ENDownloadView;

    if-eqz v0, :cond_3

    .line 755
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mLoadingProgressBar:Landroid/view/View;

    check-cast v0, Lmoe/codeest/enviews/ENDownloadView;

    .line 756
    invoke-virtual {v0}, Lmoe/codeest/enviews/ENDownloadView;->getCurrentState()I

    move-result v0

    if-nez v0, :cond_3

    .line 757
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mLoadingProgressBar:Landroid/view/View;

    check-cast v0, Lmoe/codeest/enviews/ENDownloadView;

    invoke-virtual {v0}, Lmoe/codeest/enviews/ENDownloadView;->a()V

    :cond_3
    return-void
.end method

.method protected changeUiToPlayingClear()V
    .locals 2

    const-string v0, "changeUiToPlayingClear"

    .line 692
    invoke-static {v0}, Lcom/shuyu/gsyvideoplayer/utils/Debuger;->printfLog(Ljava/lang/String;)V

    .line 693
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->changeUiToClear()V

    .line 694
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mBottomProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->setViewShowState(Landroid/view/View;I)V

    return-void
.end method

.method protected changeUiToPlayingShow()V
    .locals 2

    const-string v0, "changeUiToPlayingShow"

    .line 501
    invoke-static {v0}, Lcom/shuyu/gsyvideoplayer/utils/Debuger;->printfLog(Ljava/lang/String;)V

    .line 505
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->isIfCurrentIsFullscreen()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mLockCurScreen:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mNeedLockFull:Z

    if-eqz v0, :cond_0

    .line 506
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mLockScreen:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v1}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->setViewShowState(Landroid/view/View;I)V

    return-void

    .line 510
    :cond_0
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mTopContainer:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0, v1}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->setViewShowState(Landroid/view/View;I)V

    .line 512
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->isIfCurrentIsFullscreen()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 514
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mLockScreen:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v1}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->setViewShowState(Landroid/view/View;I)V

    .line 517
    :cond_1
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mBottomContainer:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0, v1}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->setViewShowState(Landroid/view/View;I)V

    .line 519
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mThumbImageViewLayout:Landroid/widget/RelativeLayout;

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->setViewShowState(Landroid/view/View;I)V

    .line 520
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mBottomProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v0, v1}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->setViewShowState(Landroid/view/View;I)V

    .line 523
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mLoadingProgressBar:Landroid/view/View;

    instance-of v0, v0, Lmoe/codeest/enviews/ENDownloadView;

    if-eqz v0, :cond_2

    .line 524
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mLoadingProgressBar:Landroid/view/View;

    check-cast v0, Lmoe/codeest/enviews/ENDownloadView;

    invoke-virtual {v0}, Lmoe/codeest/enviews/ENDownloadView;->b()V

    .line 526
    :cond_2
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->updateStartImage()V

    return-void
.end method

.method protected changeUiToPrepareingClear()V
    .locals 2

    const-string v0, "changeUiToPrepareingClear"

    .line 676
    invoke-static {v0}, Lcom/shuyu/gsyvideoplayer/utils/Debuger;->printfLog(Ljava/lang/String;)V

    .line 678
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mTopContainer:Landroid/view/ViewGroup;

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->setViewShowState(Landroid/view/View;I)V

    .line 679
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mBottomContainer:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0, v1}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->setViewShowState(Landroid/view/View;I)V

    .line 681
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mLoadingProgressBar:Landroid/view/View;

    invoke-virtual {p0, v0, v1}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->setViewShowState(Landroid/view/View;I)V

    .line 682
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mThumbImageViewLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0, v1}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->setViewShowState(Landroid/view/View;I)V

    .line 683
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mBottomProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v0, v1}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->setViewShowState(Landroid/view/View;I)V

    .line 684
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mLockScreen:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {p0, v0, v1}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->setViewShowState(Landroid/view/View;I)V

    .line 686
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mLoadingProgressBar:Landroid/view/View;

    instance-of v0, v0, Lmoe/codeest/enviews/ENDownloadView;

    if-eqz v0, :cond_0

    .line 687
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mLoadingProgressBar:Landroid/view/View;

    check-cast v0, Lmoe/codeest/enviews/ENDownloadView;

    invoke-virtual {v0}, Lmoe/codeest/enviews/ENDownloadView;->b()V

    :cond_0
    return-void
.end method

.method protected changeUiToPreparingShow()V
    .locals 2

    const-string v0, "changeUiToPreparingShow"

    .line 482
    invoke-static {v0}, Lcom/shuyu/gsyvideoplayer/utils/Debuger;->printfLog(Ljava/lang/String;)V

    .line 484
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mLoadingProgressBar:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->setViewShowState(Landroid/view/View;I)V

    .line 485
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mTopContainer:Landroid/view/ViewGroup;

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->setViewShowState(Landroid/view/View;I)V

    .line 486
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mBottomContainer:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0, v1}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->setViewShowState(Landroid/view/View;I)V

    .line 487
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mThumbImageViewLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0, v1}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->setViewShowState(Landroid/view/View;I)V

    .line 488
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mBottomProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v0, v1}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->setViewShowState(Landroid/view/View;I)V

    .line 489
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mLockScreen:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v1}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->setViewShowState(Landroid/view/View;I)V

    .line 491
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mLoadingProgressBar:Landroid/view/View;

    instance-of v0, v0, Lmoe/codeest/enviews/ENDownloadView;

    if-eqz v0, :cond_0

    .line 492
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mLoadingProgressBar:Landroid/view/View;

    check-cast v0, Lmoe/codeest/enviews/ENDownloadView;

    .line 493
    invoke-virtual {v0}, Lmoe/codeest/enviews/ENDownloadView;->getCurrentState()I

    move-result v0

    if-nez v0, :cond_0

    .line 494
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mLoadingProgressBar:Landroid/view/View;

    check-cast v0, Lmoe/codeest/enviews/ENDownloadView;

    invoke-virtual {v0}, Lmoe/codeest/enviews/ENDownloadView;->a()V

    :cond_0
    return-void
.end method

.method protected dismissBrightnessDialog()V
    .locals 1

    .line 333
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mBrightnessDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 334
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mBrightnessDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const/4 v0, 0x0

    .line 335
    iput-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mBrightnessDialog:Landroid/app/Dialog;

    :cond_0
    return-void
.end method

.method protected dismissProgressDialog()V
    .locals 1

    .line 245
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mProgressDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mProgressDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const/4 v0, 0x0

    .line 247
    iput-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mProgressDialog:Landroid/app/Dialog;

    :cond_0
    return-void
.end method

.method protected dismissVolumeDialog()V
    .locals 1

    .line 290
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mVolumeDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 291
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mVolumeDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const/4 v0, 0x0

    .line 292
    iput-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mVolumeDialog:Landroid/app/Dialog;

    :cond_0
    return-void
.end method

.method protected getBrightnessLayoutId()I
    .locals 1

    .line 663
    sget v0, Lcom/shuyu/gsyvideoplayer/R$layout;->video_brightness:I

    return v0
.end method

.method protected getBrightnessTextId()I
    .locals 1

    .line 672
    sget v0, Lcom/shuyu/gsyvideoplayer/R$id;->app_video_brightness:I

    return v0
.end method

.method public getLayoutId()I
    .locals 1

    .line 124
    sget v0, Lcom/shuyu/gsyvideoplayer/R$layout;->video_layout_standard:I

    return v0
.end method

.method protected getProgressDialogAllDurationTextId()I
    .locals 1

    .line 626
    sget v0, Lcom/shuyu/gsyvideoplayer/R$id;->tv_duration:I

    return v0
.end method

.method protected getProgressDialogCurrentDurationTextId()I
    .locals 1

    .line 617
    sget v0, Lcom/shuyu/gsyvideoplayer/R$id;->tv_current:I

    return v0
.end method

.method protected getProgressDialogImageId()I
    .locals 1

    .line 635
    sget v0, Lcom/shuyu/gsyvideoplayer/R$id;->duration_image_tip:I

    return v0
.end method

.method protected getProgressDialogLayoutId()I
    .locals 1

    .line 599
    sget v0, Lcom/shuyu/gsyvideoplayer/R$layout;->video_progress_dialog:I

    return v0
.end method

.method protected getProgressDialogProgressId()I
    .locals 1

    .line 608
    sget v0, Lcom/shuyu/gsyvideoplayer/R$id;->duration_progressbar:I

    return v0
.end method

.method protected getVolumeLayoutId()I
    .locals 1

    .line 644
    sget v0, Lcom/shuyu/gsyvideoplayer/R$layout;->video_volume_dialog:I

    return v0
.end method

.method protected getVolumeProgressId()I
    .locals 1

    .line 653
    sget v0, Lcom/shuyu/gsyvideoplayer/R$id;->volume_progressbar:I

    return v0
.end method

.method protected hideAllWidget()V
    .locals 2

    .line 444
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mBottomContainer:Landroid/view/ViewGroup;

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->setViewShowState(Landroid/view/View;I)V

    .line 445
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mTopContainer:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0, v1}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->setViewShowState(Landroid/view/View;I)V

    .line 446
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mBottomProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->setViewShowState(Landroid/view/View;I)V

    return-void
.end method

.method protected init(Landroid/content/Context;)V
    .locals 1

    .line 98
    invoke-super {p0, p1}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoPlayer;->init(Landroid/content/Context;)V

    .line 103
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mBottomProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_0

    .line 104
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mBottomProgressBar:Landroid/widget/ProgressBar;

    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mBottomProgressDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 107
    :cond_0
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mBottomShowProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_1

    .line 108
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mProgressBar:Landroid/widget/SeekBar;

    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mBottomProgressDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 111
    :cond_1
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mBottomShowProgressThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_2

    .line 112
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mProgressBar:Landroid/widget/SeekBar;

    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mBottomShowProgressThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    return-void
.end method

.method protected onClickUiToggle()V
    .locals 0

    return-void
.end method

.method public saveFrame(Ljava/io/File;Lcom/shuyu/gsyvideoplayer/c/f;)V
    .locals 1

    const/4 v0, 0x0

    .line 921
    invoke-virtual {p0, p1, v0, p2}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->saveFrame(Ljava/io/File;ZLcom/shuyu/gsyvideoplayer/c/f;)V

    return-void
.end method

.method public saveFrame(Ljava/io/File;ZLcom/shuyu/gsyvideoplayer/c/f;)V
    .locals 1

    .line 930
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->getCurrentPlayer()Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->getRenderProxy()Lcom/shuyu/gsyvideoplayer/render/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 931
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->getCurrentPlayer()Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->getRenderProxy()Lcom/shuyu/gsyvideoplayer/render/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/shuyu/gsyvideoplayer/render/a;->a(Ljava/io/File;ZLcom/shuyu/gsyvideoplayer/c/f;)V

    :cond_0
    return-void
.end method

.method public setBottomProgressBarDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 867
    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mBottomProgressDrawable:Landroid/graphics/drawable/Drawable;

    .line 868
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mBottomProgressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 869
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mBottomProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setBottomShowProgressBarDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 855
    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mBottomShowProgressDrawable:Landroid/graphics/drawable/Drawable;

    .line 856
    iput-object p2, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mBottomShowProgressThumbDrawable:Landroid/graphics/drawable/Drawable;

    .line 857
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mProgressBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_0

    .line 858
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mProgressBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 859
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mProgressBar:Landroid/widget/SeekBar;

    invoke-virtual {p1, p2}, Landroid/widget/SeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setDialogProgressBar(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 885
    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mDialogProgressBarDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setDialogProgressColor(II)V
    .locals 0

    .line 892
    iput p1, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mDialogProgressHighLightColor:I

    .line 893
    iput p2, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mDialogProgressNormalColor:I

    return-void
.end method

.method public setDialogVolumeProgressBar(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 877
    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mVolumeProgressDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method protected showAllWidget()V
    .locals 2

    .line 452
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mBottomContainer:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->setViewShowState(Landroid/view/View;I)V

    .line 453
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mTopContainer:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0, v1}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->setViewShowState(Landroid/view/View;I)V

    .line 454
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mBottomProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->setViewShowState(Landroid/view/View;I)V

    return-void
.end method

.method protected showBrightnessDialog(F)V
    .locals 4

    .line 302
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mBrightnessDialog:Landroid/app/Dialog;

    if-nez v0, :cond_1

    .line 303
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->getActivityContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->getBrightnessLayoutId()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 304
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->getBrightnessTextId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    instance-of v1, v1, Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 305
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->getBrightnessTextId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mBrightnessDialogTv:Landroid/widget/TextView;

    .line 307
    :cond_0
    new-instance v1, Landroid/app/Dialog;

    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->getActivityContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/shuyu/gsyvideoplayer/R$style;->video_style_dialog_progress:I

    invoke-direct {v1, v2, v3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mBrightnessDialog:Landroid/app/Dialog;

    .line 308
    iget-object v1, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mBrightnessDialog:Landroid/app/Dialog;

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 309
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mBrightnessDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 310
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mBrightnessDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 311
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mBrightnessDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 312
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mBrightnessDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, -0x2

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setLayout(II)V

    .line 313
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mBrightnessDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/16 v1, 0x35

    .line 314
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 315
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->getWidth()I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 316
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->getHeight()I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    const/4 v1, 0x2

    .line 317
    new-array v1, v1, [I

    .line 318
    invoke-virtual {p0, v1}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->getLocationOnScreen([I)V

    const/4 v2, 0x0

    .line 319
    aget v2, v1, v2

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    const/4 v2, 0x1

    .line 320
    aget v1, v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 321
    iget-object v1, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mBrightnessDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 323
    :cond_1
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mBrightnessDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_2

    .line 324
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mBrightnessDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 326
    :cond_2
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mBrightnessDialogTv:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 327
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mBrightnessDialogTv:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float p1, p1, v2

    float-to-int p1, p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "%"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    return-void
.end method

.method protected showProgressDialog(FLjava/lang/String;ILjava/lang/String;I)V
    .locals 4

    .line 179
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mProgressDialog:Landroid/app/Dialog;

    if-nez v0, :cond_6

    .line 180
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->getActivityContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->getProgressDialogLayoutId()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 181
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->getProgressDialogProgressId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    instance-of v1, v1, Landroid/widget/ProgressBar;

    if-eqz v1, :cond_0

    .line 182
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->getProgressDialogProgressId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mDialogProgressBar:Landroid/widget/ProgressBar;

    .line 183
    iget-object v1, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mDialogProgressBarDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 184
    iget-object v1, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mDialogProgressBar:Landroid/widget/ProgressBar;

    iget-object v2, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mDialogProgressBarDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 187
    :cond_0
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->getProgressDialogCurrentDurationTextId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    instance-of v1, v1, Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 188
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->getProgressDialogCurrentDurationTextId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mDialogSeekTime:Landroid/widget/TextView;

    .line 190
    :cond_1
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->getProgressDialogAllDurationTextId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    instance-of v1, v1, Landroid/widget/TextView;

    if-eqz v1, :cond_2

    .line 191
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->getProgressDialogAllDurationTextId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mDialogTotalTime:Landroid/widget/TextView;

    .line 193
    :cond_2
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->getProgressDialogImageId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    instance-of v1, v1, Landroid/widget/ImageView;

    if-eqz v1, :cond_3

    .line 194
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->getProgressDialogImageId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mDialogIcon:Landroid/widget/ImageView;

    .line 196
    :cond_3
    new-instance v1, Landroid/app/Dialog;

    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->getActivityContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/shuyu/gsyvideoplayer/R$style;->video_style_dialog_progress:I

    invoke-direct {v1, v2, v3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mProgressDialog:Landroid/app/Dialog;

    .line 197
    iget-object v1, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mProgressDialog:Landroid/app/Dialog;

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 198
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mProgressDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 199
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mProgressDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 200
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mProgressDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 201
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mProgressDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->getHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setLayout(II)V

    .line 202
    iget v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mDialogProgressNormalColor:I

    const/16 v1, -0xb

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mDialogTotalTime:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    .line 203
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mDialogTotalTime:Landroid/widget/TextView;

    iget v2, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mDialogProgressNormalColor:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 205
    :cond_4
    iget v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mDialogProgressHighLightColor:I

    if-eq v0, v1, :cond_5

    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mDialogSeekTime:Landroid/widget/TextView;

    if-eqz v0, :cond_5

    .line 206
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mDialogSeekTime:Landroid/widget/TextView;

    iget v1, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mDialogProgressHighLightColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 208
    :cond_5
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mProgressDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/16 v1, 0x30

    .line 209
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 210
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->getWidth()I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 211
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->getHeight()I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    const/4 v1, 0x2

    .line 212
    new-array v1, v1, [I

    .line 213
    invoke-virtual {p0, v1}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->getLocationOnScreen([I)V

    const/4 v2, 0x0

    .line 214
    aget v2, v1, v2

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    const/4 v2, 0x1

    .line 215
    aget v1, v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 216
    iget-object v1, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mProgressDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 218
    :cond_6
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mProgressDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_7

    .line 219
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mProgressDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 221
    :cond_7
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mDialogSeekTime:Landroid/widget/TextView;

    if-eqz v0, :cond_8

    .line 222
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mDialogSeekTime:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 224
    :cond_8
    iget-object p2, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mDialogTotalTime:Landroid/widget/TextView;

    if-eqz p2, :cond_9

    .line 225
    iget-object p2, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mDialogTotalTime:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " / "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_9
    if-lez p5, :cond_a

    .line 228
    iget-object p2, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mDialogProgressBar:Landroid/widget/ProgressBar;

    if-eqz p2, :cond_a

    .line 229
    iget-object p2, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mDialogProgressBar:Landroid/widget/ProgressBar;

    mul-int/lit8 p3, p3, 0x64

    div-int/2addr p3, p5

    invoke-virtual {p2, p3}, Landroid/widget/ProgressBar;->setProgress(I)V

    :cond_a
    const/4 p2, 0x0

    cmpl-float p1, p1, p2

    if-lez p1, :cond_b

    .line 232
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mDialogIcon:Landroid/widget/ImageView;

    if-eqz p1, :cond_c

    .line 233
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mDialogIcon:Landroid/widget/ImageView;

    sget p2, Lcom/shuyu/gsyvideoplayer/R$drawable;->video_forward_icon:I

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 236
    :cond_b
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mDialogIcon:Landroid/widget/ImageView;

    if-eqz p1, :cond_c

    .line 237
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mDialogIcon:Landroid/widget/ImageView;

    sget p2, Lcom/shuyu/gsyvideoplayer/R$drawable;->video_backward_icon:I

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    :cond_c
    :goto_0
    return-void
.end method

.method protected showVolumeDialog(FI)V
    .locals 3

    .line 256
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mVolumeDialog:Landroid/app/Dialog;

    if-nez p1, :cond_1

    .line 257
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->getActivityContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->getVolumeLayoutId()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 258
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->getVolumeProgressId()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 259
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->getVolumeProgressId()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mDialogVolumeProgressBar:Landroid/widget/ProgressBar;

    .line 260
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mVolumeProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mDialogVolumeProgressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 261
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mDialogVolumeProgressBar:Landroid/widget/ProgressBar;

    iget-object v1, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mVolumeProgressDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 264
    :cond_0
    new-instance v0, Landroid/app/Dialog;

    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->getActivityContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/shuyu/gsyvideoplayer/R$style;->video_style_dialog_progress:I

    invoke-direct {v0, v1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mVolumeDialog:Landroid/app/Dialog;

    .line 265
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mVolumeDialog:Landroid/app/Dialog;

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 266
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mVolumeDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    .line 267
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mVolumeDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    .line 268
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mVolumeDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x10

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    .line 269
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mVolumeDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v0, -0x2

    invoke-virtual {p1, v0, v0}, Landroid/view/Window;->setLayout(II)V

    .line 270
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mVolumeDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    const/16 v0, 0x33

    .line 271
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 272
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->getWidth()I

    move-result v0

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 273
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->getHeight()I

    move-result v0

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    const/4 v0, 0x2

    .line 274
    new-array v0, v0, [I

    .line 275
    invoke-virtual {p0, v0}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->getLocationOnScreen([I)V

    const/4 v1, 0x0

    .line 276
    aget v1, v0, v1

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    const/4 v1, 0x1

    .line 277
    aget v0, v0, v1

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 278
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mVolumeDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 280
    :cond_1
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mVolumeDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-nez p1, :cond_2

    .line 281
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mVolumeDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 283
    :cond_2
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mDialogVolumeProgressBar:Landroid/widget/ProgressBar;

    if-eqz p1, :cond_3

    .line 284
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mDialogVolumeProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    :cond_3
    return-void
.end method

.method protected showWifiDialog()V
    .locals 3

    .line 151
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/shuyu/gsyvideoplayer/utils/NetworkUtils;->isAvailable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 152
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->startPlayLogic()V

    return-void

    .line 155
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->getActivityContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 156
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/shuyu/gsyvideoplayer/R$string;->tips_not_wifi:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 157
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/shuyu/gsyvideoplayer/R$string;->tips_not_wifi_confirm:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer$1;

    invoke-direct {v2, p0}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer$1;-><init>(Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 164
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/shuyu/gsyvideoplayer/R$string;->tips_not_wifi_cancel:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer$2;

    invoke-direct {v2, p0}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer$2;-><init>(Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 170
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method public startPlayLogic()V
    .locals 5

    .line 138
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mVideoAllCallBack:Lcom/shuyu/gsyvideoplayer/c/i;

    if-eqz v0, :cond_0

    const-string v0, "onClickStartThumb"

    .line 139
    invoke-static {v0}, Lcom/shuyu/gsyvideoplayer/utils/Debuger;->printfLog(Ljava/lang/String;)V

    .line 140
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mVideoAllCallBack:Lcom/shuyu/gsyvideoplayer/c/i;

    iget-object v1, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mOriginUrl:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mTitle:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p0, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/shuyu/gsyvideoplayer/c/i;->t(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 142
    :cond_0
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->prepareVideo()V

    .line 143
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->startDismissControlViewTimer()V

    return-void
.end method

.method public startWindowFullscreen(Landroid/content/Context;ZZ)Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;
    .locals 0

    .line 366
    invoke-super {p0, p1, p2, p3}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoPlayer;->startWindowFullscreen(Landroid/content/Context;ZZ)Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 368
    move-object p2, p1

    check-cast p2, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;

    .line 369
    iget-object p3, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mLockClickListener:Lcom/shuyu/gsyvideoplayer/c/g;

    invoke-virtual {p2, p3}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->setLockClickListener(Lcom/shuyu/gsyvideoplayer/c/g;)V

    .line 370
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->isNeedLockFull()Z

    move-result p3

    invoke-virtual {p2, p3}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->setNeedLockFull(Z)V

    .line 371
    invoke-direct {p0, p2}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->initFullUI(Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;)V

    :cond_0
    return-object p1
.end method

.method public taskShotPic(Lcom/shuyu/gsyvideoplayer/c/e;)V
    .locals 1

    const/4 v0, 0x0

    .line 903
    invoke-virtual {p0, p1, v0}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->taskShotPic(Lcom/shuyu/gsyvideoplayer/c/e;Z)V

    return-void
.end method

.method public taskShotPic(Lcom/shuyu/gsyvideoplayer/c/e;Z)V
    .locals 1

    .line 912
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->getCurrentPlayer()Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->getRenderProxy()Lcom/shuyu/gsyvideoplayer/render/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 913
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->getCurrentPlayer()Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->getRenderProxy()Lcom/shuyu/gsyvideoplayer/render/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/shuyu/gsyvideoplayer/render/a;->a(Lcom/shuyu/gsyvideoplayer/c/e;Z)V

    :cond_0
    return-void
.end method

.method protected updateStartImage()V
    .locals 4

    .line 801
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mStartButton:Landroid/view/View;

    instance-of v0, v0, Lmoe/codeest/enviews/ENPlayView;

    const/4 v1, 0x7

    const/4 v2, 0x2

    if-eqz v0, :cond_2

    .line 802
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mStartButton:Landroid/view/View;

    check-cast v0, Lmoe/codeest/enviews/ENPlayView;

    const/16 v3, 0x1f4

    .line 803
    invoke-virtual {v0, v3}, Lmoe/codeest/enviews/ENPlayView;->setDuration(I)V

    .line 805
    iget v3, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mCurrentState:I

    if-ne v3, v2, :cond_0

    .line 806
    invoke-virtual {v0}, Lmoe/codeest/enviews/ENPlayView;->a()V

    goto :goto_0

    .line 807
    :cond_0
    iget v2, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mCurrentState:I

    if-ne v2, v1, :cond_1

    .line 808
    invoke-virtual {v0}, Lmoe/codeest/enviews/ENPlayView;->b()V

    goto :goto_0

    .line 810
    :cond_1
    invoke-virtual {v0}, Lmoe/codeest/enviews/ENPlayView;->b()V

    goto :goto_0

    .line 812
    :cond_2
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mStartButton:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_5

    .line 813
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mStartButton:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    .line 814
    iget v3, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mCurrentState:I

    if-ne v3, v2, :cond_3

    .line 815
    sget v1, Lcom/shuyu/gsyvideoplayer/R$drawable;->video_click_pause_selector:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 816
    :cond_3
    iget v2, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mCurrentState:I

    if-ne v2, v1, :cond_4

    .line 817
    sget v1, Lcom/shuyu/gsyvideoplayer/R$drawable;->video_click_error_selector:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 819
    :cond_4
    sget v1, Lcom/shuyu/gsyvideoplayer/R$drawable;->video_click_play_selector:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_5
    :goto_0
    return-void
.end method
