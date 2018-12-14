.class public Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;
.super Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;
.source "MHVideoPlayer.java"

# interfaces
.implements Lcom/shuyu/gsyvideoplayer/c/h;
.implements Lme/jessyan/autosize/internal/CancelAdapt;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer$b;,
        Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer$a;
    }
.end annotation


# instance fields
.field protected aa:Lcom/mh/movie/core/mvp/ui/activity/player/y;

.field private ab:Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer$a;

.field private ac:Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer$b;

.field private ad:I

.field private ae:Z

.field private af:Lcom/mh/movie/core/mvp/ui/activity/player/view/h;

.field bvVideoBattery:Lcom/mh/movie/core/mvp/ui/widget/BatteryView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c0059
    .end annotation
.end field

.field ivFullScreen:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c0144
    .end annotation
.end field

.field ivLandFull:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c0159
    .end annotation
.end field

.field ivPlayerVideoScreen:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c0173
    .end annotation
.end field

.field ivSetting:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c0174
    .end annotation
.end field

.field ivShare:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c0175
    .end annotation
.end field

.field ivVideoBack:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c018f
    .end annotation
.end field

.field ivVolumnIcon:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c0115
    .end annotation
.end field

.field llBackContainer:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c01c0
    .end annotation
.end field

.field llVideoFast:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c022e
    .end annotation
.end field

.field llVideoLoadingError:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c0232
    .end annotation
.end field

.field llVideoPhoneInfoContains:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c020a
    .end annotation
.end field

.field llVideoPlayerTryWatch:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c0235
    .end annotation
.end field

.field llVideoPlayerTryWatchOne:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c0236
    .end annotation
.end field

.field llVideoPlayerWatchMhb:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c0237
    .end annotation
.end field

.field mFuncLayout:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c01d5
    .end annotation
.end field

.field mImgAd:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c0120
    .end annotation
.end field

.field mImgAdShut:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c0124
    .end annotation
.end field

.field mIvDanmaToggle:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c0170
    .end annotation
.end field

.field mRlAd:Landroid/widget/RelativeLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c02db
    .end annotation
.end field

.field mRlAdOne:Landroid/widget/RelativeLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c02dc
    .end annotation
.end field

.field mRlShut:Landroid/widget/RelativeLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c02f8
    .end annotation
.end field

.field pbVolumn:Lcom/mh/movie/core/mvp/ui/widget/SeekBarNotDrag;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c0290
    .end annotation
.end field

.field rlVideoPlayerDetail:Landroid/widget/RelativeLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c02fd
    .end annotation
.end field

.field rlVideoPlayerDetailOne:Landroid/widget/RelativeLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c02fe
    .end annotation
.end field

.field rlVolumn:Landroid/widget/RelativeLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c0300
    .end annotation
.end field

.field sbVideoFastProgress:Lcom/mh/movie/core/mvp/ui/widget/SeekBarNotDrag;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c031d
    .end annotation
.end field

.field tvVideoFastTime:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c0487
    .end annotation
.end field

.field tvVideoFeedback:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c0488
    .end annotation
.end field

.field tvVideoNetwork:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c048d
    .end annotation
.end field

.field tvVideoPlayInfo:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c048e
    .end annotation
.end field

.field tvVideoPlayerTitle:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c0490
    .end annotation
.end field

.field tvVideoPlayerTryWatchM:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c0491
    .end annotation
.end field

.field tvVideoPlayerTryWatchMOne:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c0492
    .end annotation
.end field

.field tvVideoPlayerVideoTip:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c0493
    .end annotation
.end field

.field tvVideoPlayerVideoTipOne:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c0494
    .end annotation
.end field

.field tvVideoPlayerWatchMhb:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c0495
    .end annotation
.end field

.field tvVideoReload:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c0497
    .end annotation
.end field

.field tvVideoTime:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c0435
    .end annotation
.end field

.field tvVideoTitle:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c049d
    .end annotation
.end field

.field vdgvDanmuGuide:Lcom/mh/movie/core/mvp/ui/activity/player/view/VideoDanmuGuideView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c04b9
    .end annotation
.end field

.field vjpvJumpWatchMovie:Lcom/mh/movie/core/mvp/ui/activity/player/view/VideoJumpPlayView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c04c8
    .end annotation
.end field

.field vwsvWatchShare:Lcom/mh/movie/core/mvp/ui/activity/player/view/VideoWatchShareView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c04cc
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 192
    invoke-direct {p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x2

    .line 182
    iput p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->ad:I

    const/4 p1, 0x0

    .line 185
    iput-boolean p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->ae:Z

    .line 193
    invoke-virtual {p0, p0}, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->setPlayButtonListener(Lcom/shuyu/gsyvideoplayer/c/h;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 197
    invoke-direct {p0, p1, p2}, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x2

    .line 182
    iput p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->ad:I

    const/4 p1, 0x0

    .line 185
    iput-boolean p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->ae:Z

    .line 199
    invoke-static {}, Lcom/shuyu/gsyvideoplayer/utils/Debuger;->enable()V

    .line 201
    invoke-static {p0, p0}, Lcom/jess/arms/c/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Lbutterknife/Unbinder;

    .line 202
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->u()V

    .line 203
    invoke-virtual {p0, p0}, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->setPlayButtonListener(Lcom/shuyu/gsyvideoplayer/c/h;)V

    .line 205
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->t()V

    return-void
.end method

.method private G()V
    .locals 2

    .line 926
    iget-boolean v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->mHadPlay:Z

    if-nez v0, :cond_0

    return-void

    .line 929
    :cond_0
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->mTextureView:Lcom/shuyu/gsyvideoplayer/render/a;

    iget v1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->mRotate:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/shuyu/gsyvideoplayer/render/a;->a(F)V

    .line 930
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->mTextureView:Lcom/shuyu/gsyvideoplayer/render/a;

    invoke-virtual {v0}, Lcom/shuyu/gsyvideoplayer/render/a;->a()V

    return-void
.end method

.method private H()V
    .locals 2

    .line 1301
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->K:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->mCurrentTimeTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1302
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->J:Lcom/mh/movie/core/mvp/ui/widget/SeekBarNotDrag;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->mProgressBar:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/ui/widget/SeekBarNotDrag;->setProgress(I)V

    return-void
.end method

.method private I()V
    .locals 2

    .line 1306
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->mCurrentTimeTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->K:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1307
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->mProgressBar:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->J:Lcom/mh/movie/core/mvp/ui/widget/SeekBarNotDrag;

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/ui/widget/SeekBarNotDrag;->getProgress()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    return-void
.end method

.method static synthetic a(Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;)Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer$b;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->ac:Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer$b;

    return-object p0
.end method

.method private b(I)V
    .locals 3

    .line 290
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->vjpvJumpWatchMovie:Lcom/mh/movie/core/mvp/ui/activity/player/view/VideoJumpPlayView;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/activity/player/view/VideoJumpPlayView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 292
    sget v1, Lcom/mh/movie/core/R$id;->layout_land_bottom:I

    if-eq p1, v1, :cond_1

    sget v1, Lcom/mh/movie/core/R$id;->layout_bottom:I

    if-ne p1, v1, :cond_0

    goto :goto_0

    .line 295
    :cond_0
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x41200000    # 10.0f

    invoke-static {v1, v2}, Lcom/jess/arms/c/a;->a(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    goto :goto_1

    .line 293
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x41b00000    # 22.0f

    invoke-static {v1, v2}, Lcom/jess/arms/c/a;->a(Landroid/content/Context;F)I

    move-result v1

    neg-int v1, v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    :goto_1
    const/4 v1, 0x2

    .line 298
    invoke-virtual {v0, v1, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 300
    invoke-direct {p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->c(I)V

    return-void
.end method

.method static synthetic b(Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;)Z
    .locals 0

    .line 61
    iget-boolean p0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->mCache:Z

    return p0
.end method

.method static synthetic c(Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;)Ljava/io/File;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->mCachePath:Ljava/io/File;

    return-object p0
.end method

.method private c(I)V
    .locals 3

    .line 305
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->vwsvWatchShare:Lcom/mh/movie/core/mvp/ui/activity/player/view/VideoWatchShareView;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/activity/player/view/VideoWatchShareView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 307
    sget v1, Lcom/mh/movie/core/R$id;->layout_land_bottom:I

    if-eq p1, v1, :cond_1

    sget v1, Lcom/mh/movie/core/R$id;->layout_bottom:I

    if-ne p1, v1, :cond_0

    goto :goto_0

    .line 310
    :cond_0
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x41200000    # 10.0f

    invoke-static {v1, v2}, Lcom/jess/arms/c/a;->a(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    goto :goto_1

    .line 308
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x41700000    # 15.0f

    invoke-static {v1, v2}, Lcom/jess/arms/c/a;->a(Landroid/content/Context;F)I

    move-result v1

    neg-int v1, v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    :goto_1
    const/4 v1, 0x2

    .line 312
    invoke-virtual {v0, v1, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    return-void
.end method

.method static synthetic d(Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;)Ljava/lang/String;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->mTitle:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic e(Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;)J
    .locals 2

    .line 61
    iget-wide v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->mSeekOnStart:J

    return-wide v0
.end method

.method private t()V
    .locals 4

    .line 217
    new-instance v0, Lcom/mh/movie/core/mvp/ui/activity/player/view/h;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->bvVideoBattery:Lcom/mh/movie/core/mvp/ui/widget/BatteryView;

    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->tvVideoTime:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2, v3}, Lcom/mh/movie/core/mvp/ui/activity/player/view/h;-><init>(Lcom/mh/movie/core/mvp/ui/widget/BatteryView;Landroid/widget/TextView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->af:Lcom/mh/movie/core/mvp/ui/activity/player/view/h;

    return-void
.end method

.method private u()V
    .locals 2

    .line 271
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->changeTextureViewShowType()V

    .line 272
    sget-object v0, Lcom/mh/movie/core/mvp/ui/b;->R:Lcom/mh/movie/core/mvp/model/entity/SettingConfig;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/SettingConfig;->isGestureOperation()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->setIsTouchWiget(Z)V

    .line 273
    sget-object v0, Lcom/mh/movie/core/mvp/ui/b;->R:Lcom/mh/movie/core/mvp/model/entity/SettingConfig;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/SettingConfig;->isGestureOperation()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->setIsTouchWigetFull(Z)V

    .line 274
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->mTextureView:Lcom/shuyu/gsyvideoplayer/render/a;

    if-eqz v0, :cond_0

    .line 275
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->mTextureView:Lcom/shuyu/gsyvideoplayer/render/a;

    invoke-virtual {v0}, Lcom/shuyu/gsyvideoplayer/render/a;->a()V

    .line 277
    :cond_0
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->llVideoLoadingError:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {p0, v0, v1}, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->setViewShowState(Landroid/view/View;I)V

    .line 278
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->llVideoFast:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0, v1}, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->setViewShowState(Landroid/view/View;I)V

    .line 279
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->G:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0, v1}, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->setViewShowState(Landroid/view/View;I)V

    .line 280
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->H:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v1}, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->setViewShowState(Landroid/view/View;I)V

    .line 281
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->I:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v1}, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->setViewShowState(Landroid/view/View;I)V

    const/4 v0, 0x0

    .line 283
    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->e(Z)V

    .line 285
    sget v0, Lcom/mh/movie/core/R$id;->view_video_bottom_line:I

    invoke-direct {p0, v0}, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->b(I)V

    return-void
.end method

.method private v()V
    .locals 2

    .line 879
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/shuyu/gsyvideoplayer/utils/NetworkUtils;->isWifiConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 880
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->tvVideoNetwork:Landroid/widget/TextView;

    const-string v1, "WIFI"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 881
    :cond_0
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/shuyu/gsyvideoplayer/utils/NetworkUtils;->is4G(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 882
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->tvVideoNetwork:Landroid/widget/TextView;

    const-string v1, "4G"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 884
    :cond_1
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->tvVideoNetwork:Landroid/widget/TextView;

    const-string v1, "\u65e0\u7f51\u7edc"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public A()V
    .locals 3

    .line 737
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->isIfCurrentIsFullscreen()Z

    move-result v0

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    .line 738
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->mLockScreen:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v1}, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->setViewShowState(Landroid/view/View;I)V

    .line 740
    :cond_0
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->hideAllWidget()V

    .line 741
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->mThumbImageViewLayout:Landroid/widget/RelativeLayout;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->setViewShowState(Landroid/view/View;I)V

    .line 742
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->llVideoLoadingError:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0, v2}, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->setViewShowState(Landroid/view/View;I)V

    .line 743
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->mTopContainer:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0, v1}, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->setViewShowState(Landroid/view/View;I)V

    .line 744
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->llBackContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0, v2}, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->setViewShowState(Landroid/view/View;I)V

    return-void
.end method

.method public B()V
    .locals 2

    .line 1075
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->mRlAdOne:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {p0, v0, v1}, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->setViewShowState(Landroid/view/View;I)V

    return-void
.end method

.method public C()V
    .locals 4

    .line 1081
    iget-boolean v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->localPlayer:Z

    if-eqz v0, :cond_0

    return-void

    .line 1084
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer$7;

    invoke-direct {v1, p0}, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer$7;-><init>(Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1093
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->y()V

    .line 1094
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->ab:Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer$a;

    if-eqz v0, :cond_1

    .line 1095
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->ab:Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer$a;

    invoke-interface {v0}, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer$a;->b()V

    :cond_1
    return-void
.end method

.method public D()V
    .locals 6

    .line 1147
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->isIfCurrentIsFullscreen()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 1149
    iget-boolean v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->ae:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->l()V

    .line 1150
    :cond_0
    invoke-virtual {p0, v1}, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->setShowLockScreen(Z)V

    .line 1153
    :cond_1
    invoke-virtual {p0, v1}, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->setIfCurrentIsFullscreen(Z)V

    .line 1154
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->mContext:Landroid/content/Context;

    invoke-static {v0, v1, v1}, Lcom/shuyu/gsyvideoplayer/utils/CommonUtil;->hideSupportActionBar(Landroid/content/Context;ZZ)V

    .line 1156
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->mBottomContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->isShown()Z

    move-result v0

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    .line 1157
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->M:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0, v3}, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->setViewShowState(Landroid/view/View;I)V

    .line 1158
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->H:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v3}, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->setViewShowState(Landroid/view/View;I)V

    .line 1159
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->I:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v3}, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->setViewShowState(Landroid/view/View;I)V

    .line 1160
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->mLockScreen:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v3}, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->setViewShowState(Landroid/view/View;I)V

    .line 1162
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->mBottomContainer:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0, v2}, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->setViewShowState(Landroid/view/View;I)V

    .line 1164
    sget v0, Lcom/mh/movie/core/R$id;->layout_land_bottom:I

    invoke-direct {p0, v0}, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->b(I)V

    goto :goto_0

    .line 1167
    :cond_2
    sget v0, Lcom/mh/movie/core/R$id;->view_video_bottom_line:I

    invoke-direct {p0, v0}, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->b(I)V

    .line 1170
    :goto_0
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->mBottomContainer:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0, v2}, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->setViewShowState(Landroid/view/View;I)V

    .line 1171
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->ivShare:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v3}, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->setViewShowState(Landroid/view/View;I)V

    .line 1172
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->ivSetting:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v3}, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->setViewShowState(Landroid/view/View;I)V

    .line 1173
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->llVideoPhoneInfoContains:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0, v3}, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->setViewShowState(Landroid/view/View;I)V

    .line 1175
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->mTopContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->isShown()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1176
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->llBackContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0, v3}, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->setViewShowState(Landroid/view/View;I)V

    goto :goto_1

    .line 1178
    :cond_3
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->llBackContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0, v2}, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->setViewShowState(Landroid/view/View;I)V

    .line 1179
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->mTopContainer:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0, v2}, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->setViewShowState(Landroid/view/View;I)V

    .line 1182
    :goto_1
    iget v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->mCurrentState:I

    const/4 v2, 0x7

    if-ne v0, v2, :cond_4

    .line 1183
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->llBackContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0, v3}, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->setViewShowState(Landroid/view/View;I)V

    .line 1186
    :cond_4
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->H()V

    .line 1188
    invoke-virtual {p0, v1}, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->e(Z)V

    .line 1190
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->llBackContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1191
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v4, 0x41400000    # 12.0f

    invoke-static {v2, v4}, Lcom/jess/arms/c/a;->a(Landroid/content/Context;F)I

    move-result v2

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 1192
    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->llBackContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1194
    sget v0, Lcom/mh/movie/core/R$id;->rl_video_top_containers:I

    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 1195
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 1196
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v4}, Lcom/jess/arms/c/a;->a(Landroid/content/Context;F)I

    move-result v4

    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 1197
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1199
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/jess/arms/c/a;->e(Landroid/content/Context;)V

    .line 1210
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v0, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1212
    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1214
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->startDismissControlViewTimer()V

    .line 1215
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->mVideoAllCallBack:Lcom/shuyu/gsyvideoplayer/c/i;

    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->mOriginUrl:Ljava/lang/String;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->mTitle:Ljava/lang/String;

    aput-object v5, v4, v3

    aput-object p0, v4, v1

    invoke-interface {v0, v2, v4}, Lcom/shuyu/gsyvideoplayer/c/i;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public E()Z
    .locals 1

    .line 1329
    iget-boolean v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->ae:Z

    return v0
.end method

.method final synthetic F()V
    .locals 2

    .line 570
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->G:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method public a(I)V
    .locals 3

    .line 622
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->vjpvJumpWatchMovie:Lcom/mh/movie/core/mvp/ui/activity/player/view/VideoJumpPlayView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/ui/activity/player/view/VideoJumpPlayView;->setVisibility(I)V

    .line 623
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->vjpvJumpWatchMovie:Lcom/mh/movie/core/mvp/ui/activity/player/view/VideoJumpPlayView;

    invoke-virtual {v0, p1}, Lcom/mh/movie/core/mvp/ui/activity/player/view/VideoJumpPlayView;->a(I)V

    .line 625
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->vjpvJumpWatchMovie:Lcom/mh/movie/core/mvp/ui/activity/player/view/VideoJumpPlayView;

    new-instance v0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer$3;

    invoke-direct {v0, p0}, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer$3;-><init>(Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;)V

    invoke-virtual {p1, v0}, Lcom/mh/movie/core/mvp/ui/activity/player/view/VideoJumpPlayView;->setPlayerDialogCallback(Lcom/mh/movie/core/mvp/ui/activity/player/view/d;)V

    .line 639
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer$4;

    invoke-direct {v0, p0}, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer$4;-><init>(Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;)V

    const-wide/16 v1, 0x1388

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public a(ILjava/lang/String;)V
    .locals 1

    .line 655
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->vwsvWatchShare:Lcom/mh/movie/core/mvp/ui/activity/player/view/VideoWatchShareView;

    invoke-virtual {v0, p1}, Lcom/mh/movie/core/mvp/ui/activity/player/view/VideoWatchShareView;->setWatchFilmCount(I)V

    .line 656
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->vwsvWatchShare:Lcom/mh/movie/core/mvp/ui/activity/player/view/VideoWatchShareView;

    invoke-virtual {p1, p2}, Lcom/mh/movie/core/mvp/ui/activity/player/view/VideoWatchShareView;->setVideoType(Ljava/lang/String;)V

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 4

    .line 936
    iget-boolean v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->mHadPlay:Z

    if-nez v0, :cond_0

    return-void

    .line 940
    :cond_0
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->onVideoPause()V

    .line 941
    iget-wide v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->mCurrentPosition:J

    .line 942
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->release()V

    .line 946
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    new-instance v3, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer$5;

    invoke-direct {v3, p0, p1, v0, v1}, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer$5;-><init>(Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;Ljava/lang/String;J)V

    const-wide/16 v0, 0x1f4

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method protected changeNetwork(Ljava/lang/String;)V
    .locals 0

    .line 818
    invoke-super {p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->changeNetwork(Ljava/lang/String;)V

    return-void
.end method

.method protected changePlayingNotShow()V
    .locals 2

    .line 440
    invoke-super {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->changePlayingNotShow()V

    .line 442
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->llVideoLoadingError:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {p0, v0, v1}, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->setViewShowState(Landroid/view/View;I)V

    .line 443
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->llVideoFast:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0, v1}, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->setViewShowState(Landroid/view/View;I)V

    .line 444
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->G:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0, v1}, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->setViewShowState(Landroid/view/View;I)V

    .line 445
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->mLoadingProgressBar:Landroid/view/View;

    invoke-virtual {p0, v0, v1}, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->setViewShowState(Landroid/view/View;I)V

    .line 447
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->mThumbImageViewLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0, v1}, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->setViewShowState(Landroid/view/View;I)V

    .line 448
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->m:Landroid/view/View;

    invoke-virtual {p0, v0, v1}, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->setViewShowState(Landroid/view/View;I)V

    .line 450
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->isIfCurrentIsFullscreen()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 451
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->llBackContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0, v1}, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->setViewShowState(Landroid/view/View;I)V

    .line 456
    :cond_0
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->isIfCurrentIsFullscreen()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->mLockCurScreen:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->mNeedLockFull:Z

    if-eqz v0, :cond_1

    .line 457
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->mLockScreen:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v1}, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->setViewShowState(Landroid/view/View;I)V

    return-void

    .line 461
    :cond_1
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->updateStartImage()V

    return-void
.end method

.method protected changeUiToCompleteShow()V
    .locals 2

    .line 507
    invoke-super {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->changeUiToCompleteShow()V

    .line 509
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->k()V

    .line 511
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->vwsvWatchShare:Lcom/mh/movie/core/mvp/ui/activity/player/view/VideoWatchShareView;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/activity/player/view/VideoWatchShareView;->d()V

    .line 512
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->vdgvDanmuGuide:Lcom/mh/movie/core/mvp/ui/activity/player/view/VideoDanmuGuideView;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/activity/player/view/VideoDanmuGuideView;->d()V

    .line 514
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->llBackContainer:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->setViewShowState(Landroid/view/View;I)V

    .line 516
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->mStartButton:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    sget v1, Lcom/mh/movie/core/R$mipmap;->ico_player_replay:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 521
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->N:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    sget v1, Lcom/mh/movie/core/R$mipmap;->ico_player_replay:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method protected changeUiToError()V
    .locals 2

    .line 545
    invoke-super {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->changeUiToError()V

    .line 546
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->M:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {p0, v0, v1}, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->setViewShowState(Landroid/view/View;I)V

    return-void
.end method

.method protected changeUiToNormal()V
    .locals 3

    .line 318
    iget-boolean v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->S:Z

    if-eqz v0, :cond_0

    return-void

    .line 320
    :cond_0
    invoke-super {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->changeUiToNormal()V

    .line 322
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->mTopContainer:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {p0, v0, v1}, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->setViewShowState(Landroid/view/View;I)V

    .line 323
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->mBottomContainer:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0, v1}, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->setViewShowState(Landroid/view/View;I)V

    .line 324
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->M:Landroid/view/ViewGroup;

    const/4 v2, 0x4

    invoke-virtual {p0, v0, v2}, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->setViewShowState(Landroid/view/View;I)V

    .line 325
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->llVideoLoadingError:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0, v1}, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->setViewShowState(Landroid/view/View;I)V

    .line 326
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->llVideoFast:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0, v1}, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->setViewShowState(Landroid/view/View;I)V

    .line 327
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->G:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0, v1}, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->setViewShowState(Landroid/view/View;I)V

    .line 328
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->H:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v1}, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->setViewShowState(Landroid/view/View;I)V

    .line 329
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->I:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v1}, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->setViewShowState(Landroid/view/View;I)V

    return-void
.end method

.method protected changeUiToPauseShow()V
    .locals 2

    .line 494
    iget-boolean v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->T:Z

    if-eqz v0, :cond_0

    .line 495
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->hideAllWidget()V

    return-void

    .line 499
    :cond_0
    invoke-super {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->changeUiToPauseShow()V

    .line 500
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->k()V

    .line 501
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->llVideoLoadingError:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {p0, v0, v1}, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->setViewShowState(Landroid/view/View;I)V

    .line 502
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->llVideoFast:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0, v1}, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->setViewShowState(Landroid/view/View;I)V

    return-void
.end method

.method protected changeUiToPlayingBufferingClear()V
    .locals 2

    .line 400
    invoke-super {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->changeUiToPlayingBufferingClear()V

    .line 402
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->M:Landroid/view/ViewGroup;

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->setViewShowState(Landroid/view/View;I)V

    .line 404
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->isIfCurrentIsFullscreen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 405
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->llBackContainer:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {p0, v0, v1}, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->setViewShowState(Landroid/view/View;I)V

    :cond_0
    return-void
.end method

.method protected changeUiToPlayingBufferingShow()V
    .locals 1

    .line 359
    invoke-super {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->changeUiToPlayingBufferingShow()V

    .line 360
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->ab:Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer$a;

    if-eqz v0, :cond_0

    .line 361
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->ab:Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer$a;

    invoke-interface {v0}, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer$a;->a()V

    :cond_0
    return-void
.end method

.method protected changeUiToPlayingClear()V
    .locals 2

    .line 482
    invoke-super {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->changeUiToPlayingClear()V

    .line 483
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->llVideoLoadingError:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {p0, v0, v1}, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->setViewShowState(Landroid/view/View;I)V

    .line 485
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->isIfCurrentIsFullscreen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 486
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->llBackContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0, v1}, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->setViewShowState(Landroid/view/View;I)V

    :cond_0
    return-void
.end method

.method protected changeUiToPlayingShow()V
    .locals 2

    .line 413
    invoke-super {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->changeUiToPlayingShow()V

    .line 415
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->llVideoLoadingError:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {p0, v0, v1}, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->setViewShowState(Landroid/view/View;I)V

    .line 416
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->llVideoFast:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0, v1}, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->setViewShowState(Landroid/view/View;I)V

    .line 417
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->G:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0, v1}, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->setViewShowState(Landroid/view/View;I)V

    .line 423
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->isIfCurrentIsFullscreen()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->mLockCurScreen:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->mNeedLockFull:Z

    if-eqz v0, :cond_0

    .line 424
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->mLockScreen:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v1}, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->setViewShowState(Landroid/view/View;I)V

    return-void

    .line 428
    :cond_0
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->isIfCurrentIsFullscreen()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 429
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->llBackContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0, v1}, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->setViewShowState(Landroid/view/View;I)V

    :cond_1
    return-void
.end method

.method protected changeUiToPreparingShow()V
    .locals 3

    .line 335
    iget-boolean v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->S:Z

    if-eqz v0, :cond_0

    return-void

    .line 337
    :cond_0
    invoke-super {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->changeUiToPreparingShow()V

    .line 339
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->isIfCurrentIsFullscreen()Z

    move-result v0

    const/16 v1, 0x8

    if-eqz v0, :cond_1

    .line 340
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->llBackContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0, v1}, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->setViewShowState(Landroid/view/View;I)V

    goto :goto_0

    .line 342
    :cond_1
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->llBackContainer:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->setViewShowState(Landroid/view/View;I)V

    .line 345
    :goto_0
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->mTopContainer:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0, v1}, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->setViewShowState(Landroid/view/View;I)V

    .line 346
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->mBottomContainer:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0, v1}, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->setViewShowState(Landroid/view/View;I)V

    .line 347
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->M:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0, v1}, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->setViewShowState(Landroid/view/View;I)V

    .line 348
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->llVideoLoadingError:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0, v1}, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->setViewShowState(Landroid/view/View;I)V

    .line 349
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->llVideoFast:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0, v1}, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->setViewShowState(Landroid/view/View;I)V

    .line 350
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->G:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0, v1}, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->setViewShowState(Landroid/view/View;I)V

    .line 351
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->H:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v1}, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->setViewShowState(Landroid/view/View;I)V

    .line 352
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->I:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v1}, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->setViewShowState(Landroid/view/View;I)V

    .line 354
    sget v0, Lcom/mh/movie/core/R$id;->view_video_bottom_line:I

    invoke-direct {p0, v0}, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->b(I)V

    return-void
.end method

.method public d(Z)V
    .locals 1

    if-nez p1, :cond_0

    .line 599
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->vjpvJumpWatchMovie:Lcom/mh/movie/core/mvp/ui/activity/player/view/VideoJumpPlayView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/mh/movie/core/mvp/ui/activity/player/view/VideoJumpPlayView;->setVisibility(I)V

    return-void

    .line 602
    :cond_0
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->vjpvJumpWatchMovie:Lcom/mh/movie/core/mvp/ui/activity/player/view/VideoJumpPlayView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/mh/movie/core/mvp/ui/activity/player/view/VideoJumpPlayView;->setVisibility(I)V

    .line 603
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->vjpvJumpWatchMovie:Lcom/mh/movie/core/mvp/ui/activity/player/view/VideoJumpPlayView;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/ui/activity/player/view/VideoJumpPlayView;->f()V

    .line 604
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->vjpvJumpWatchMovie:Lcom/mh/movie/core/mvp/ui/activity/player/view/VideoJumpPlayView;

    new-instance v0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer$2;

    invoke-direct {v0, p0}, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer$2;-><init>(Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;)V

    invoke-virtual {p1, v0}, Lcom/mh/movie/core/mvp/ui/activity/player/view/VideoJumpPlayView;->setPlayerDialogCallback(Lcom/mh/movie/core/mvp/ui/activity/player/view/d;)V

    return-void
.end method

.method protected dismissBrightnessDialog()V
    .locals 2

    .line 697
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->rlVolumn:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method

.method protected dismissProgressDialog()V
    .locals 2

    .line 1003
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->llVideoFast:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1004
    sget v0, Lcom/mh/movie/core/R$id;->view_video_control_bg:I

    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method protected dismissVolumeDialog()V
    .locals 2

    .line 680
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->rlVolumn:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 3

    .line 581
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->tvVideoPlayInfo:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 582
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->tvVideoPlayInfo:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 583
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->llVideoLoadingError:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p0, p1, v0}, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->setViewShowState(Landroid/view/View;I)V

    .line 584
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->llVideoFast:Landroid/widget/LinearLayout;

    invoke-virtual {p0, p1, v0}, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->setViewShowState(Landroid/view/View;I)V

    .line 586
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer$1;

    invoke-direct {v0, p0}, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer$1;-><init>(Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;)V

    const-wide/16 v1, 0xbb8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public e(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 843
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->tvVideoNetwork:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->setViewShowState(Landroid/view/View;I)V

    .line 844
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->tvVideoTitle:Landroid/widget/TextView;

    invoke-virtual {p0, p1, v0}, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->setViewShowState(Landroid/view/View;I)V

    goto :goto_0

    .line 846
    :cond_0
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->tvVideoNetwork:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p0, p1, v0}, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->setViewShowState(Landroid/view/View;I)V

    .line 847
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->tvVideoTitle:Landroid/widget/TextView;

    invoke-virtual {p0, p1, v0}, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->setViewShowState(Landroid/view/View;I)V

    :goto_0
    return-void
.end method

.method public f(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    .line 967
    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->a(Z)V

    .line 968
    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->d(Ljava/lang/String;)V

    .line 969
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->mFuncLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, p1, v0}, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->setViewShowState(Landroid/view/View;I)V

    .line 970
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->ivLandFull:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {p0, p1, v1}, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->setViewShowState(Landroid/view/View;I)V

    .line 971
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->mIvDanmaToggle:Landroid/widget/ImageView;

    invoke-virtual {p0, p1, v1}, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->setViewShowState(Landroid/view/View;I)V

    .line 972
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->ivShare:Landroid/widget/ImageView;

    invoke-virtual {p0, p1, v1}, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->setViewShowState(Landroid/view/View;I)V

    .line 973
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->ivSetting:Landroid/widget/ImageView;

    invoke-virtual {p0, p1, v1}, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->setViewShowState(Landroid/view/View;I)V

    .line 974
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->ivPlayerVideoScreen:Landroid/widget/ImageView;

    invoke-virtual {p0, p1, v0}, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->setViewShowState(Landroid/view/View;I)V

    .line 975
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->r:Landroid/widget/TextView;

    invoke-virtual {p0, p1, v1}, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->setViewShowState(Landroid/view/View;I)V

    .line 976
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->l:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, p1, v1}, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->setViewShowState(Landroid/view/View;I)V

    return-void
.end method

.method public getCurrentState()I
    .locals 1

    .line 833
    invoke-super {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->getCurrentState()I

    move-result v0

    return v0
.end method

.method public getEnlargeImageRes()I
    .locals 1

    .line 908
    sget v0, Lcom/mh/movie/core/R$mipmap;->player_fullscreen:I

    return v0
.end method

.method public getLayoutId()I
    .locals 1

    .line 259
    sget v0, Lcom/mh/movie/core/R$layout;->view_video_player:I

    return v0
.end method

.method public getLocalPlayer()Z
    .locals 1

    .line 1321
    iget-boolean v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->localPlayer:Z

    return v0
.end method

.method public getShrinkImageRes()I
    .locals 1

    .line 913
    sget v0, Lcom/mh/movie/core/R$mipmap;->play_adapt_to_screen:I

    return v0
.end method

.method protected hideAllWidget()V
    .locals 2

    .line 370
    invoke-super {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->hideAllWidget()V

    .line 371
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->isIfCurrentIsFullscreen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 372
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->llBackContainer:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {p0, v0, v1}, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->setViewShowState(Landroid/view/View;I)V

    .line 375
    :cond_0
    sget v0, Lcom/mh/movie/core/R$id;->view_video_bottom_line:I

    invoke-direct {p0, v0}, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->b(I)V

    return-void
.end method

.method public isInPlayingState()Z
    .locals 1

    .line 828
    invoke-super {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->isInPlayingState()Z

    move-result v0

    return v0
.end method

.method public k()V
    .locals 1

    .line 533
    invoke-super {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->k()V

    .line 535
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->isIfCurrentIsFullscreen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 536
    sget v0, Lcom/mh/movie/core/R$id;->layout_land_bottom:I

    invoke-direct {p0, v0}, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->b(I)V

    goto :goto_0

    .line 538
    :cond_0
    sget v0, Lcom/mh/movie/core/R$id;->layout_bottom:I

    invoke-direct {p0, v0}, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->b(I)V

    :goto_0
    return-void
.end method

.method protected o()V
    .locals 0

    .line 395
    invoke-super {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->o()V

    .line 396
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->hideAllWidget()V

    return-void
.end method

.method public onAutoCompletion()V
    .locals 0

    .line 557
    invoke-super {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->onAutoCompletion()V

    return-void
.end method

.method public onBufferingUpdate(I)V
    .locals 1

    .line 756
    invoke-super {p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->onBufferingUpdate(I)V

    .line 757
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->mLoadingProgressBar:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    .line 758
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->mLoadingProgressBar:Landroid/view/View;

    check-cast p1, Lcom/mh/movie/core/mvp/ui/activity/player/view/VideoLoadingView;

    .line 759
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->getNetSpeedText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/mh/movie/core/mvp/ui/activity/player/view/VideoLoadingView;->setSpeed(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onCompletion()V
    .locals 0

    .line 552
    invoke-super {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->onCompletion()V

    return-void
.end method

.method public onError(II)V
    .locals 0

    .line 811
    invoke-super {p0, p1, p2}, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->onError(II)V

    .line 812
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->llVideoLoadingError:Landroid/widget/LinearLayout;

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->setViewShowState(Landroid/view/View;I)V

    return-void
.end method

.method public onPrepared()V
    .locals 0

    .line 231
    invoke-super {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->onPrepared()V

    return-void
.end method

.method public onSurfaceAvailable(Landroid/view/Surface;)V
    .locals 0

    .line 918
    invoke-super {p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->onSurfaceAvailable(Landroid/view/Surface;)V

    .line 919
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->G()V

    return-void
.end method

.method public onViewClicked(Landroid/view/View;)V
    .locals 4
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0c0497,
            0x7f0c0488,
            0x7f0c0159,
            0x7f0c0144,
            0x7f0c02db,
            0x7f0c02dc,
            0x7f0c018f,
            0x7f0c02f8
        }
    .end annotation

    .line 1013
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 1015
    sget v0, Lcom/mh/movie/core/R$id;->iv_video_back:I

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    .line 1016
    invoke-virtual {p0, v1}, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->setShowLockScreen(Z)V

    .line 1017
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->onBackPressed()V

    goto/16 :goto_1

    .line 1019
    :cond_0
    sget v0, Lcom/mh/movie/core/R$id;->iv_land_full:I

    const/4 v2, 0x1

    if-ne p1, v0, :cond_1

    .line 1021
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1, v2}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto/16 :goto_1

    .line 1023
    :cond_1
    sget v0, Lcom/mh/movie/core/R$id;->iv_full:I

    if-ne p1, v0, :cond_2

    .line 1025
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 1026
    invoke-virtual {p0, v1}, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->setShowLockScreen(Z)V

    goto/16 :goto_1

    .line 1030
    :cond_2
    sget v0, Lcom/mh/movie/core/R$id;->tv_video_reload:I

    if-ne p1, v0, :cond_6

    .line 1032
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->mUrl:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->mUrl:Ljava/lang/String;

    const-string v0, "url_player_not_network_error"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    .line 1039
    :cond_3
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->getGSYVideoManager()Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;

    move-result-object p1

    invoke-interface {p1}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;->releaseMediaPlayer()V

    .line 1040
    new-instance p1, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer$6;

    invoke-direct {p1, p0}, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer$6;-><init>(Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;)V

    const-wide/16 v0, 0x1f4

    invoke-virtual {p0, p1, v0, v1}, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_1

    .line 1034
    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->ab:Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer$a;

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->ab:Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer$a;

    invoke-interface {p1}, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer$a;->c()V

    :cond_5
    return-void

    .line 1050
    :cond_6
    sget v0, Lcom/mh/movie/core/R$id;->rl_ad:I

    if-ne p1, v0, :cond_8

    .line 1051
    sget-object p1, Lcom/mh/movie/core/mvp/ui/b;->K:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Lcom/mh/movie/core/mvp/ui/b;->a(I)Lcom/mh/movie/core/mvp/model/entity/response/AdListResponse;

    move-result-object p1

    if-eqz p1, :cond_b

    sget-object p1, Lcom/mh/movie/core/mvp/ui/b;->K:Ljava/lang/Integer;

    .line 1052
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Lcom/mh/movie/core/mvp/ui/b;->a(I)Lcom/mh/movie/core/mvp/model/entity/response/AdListResponse;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/AdListResponse;->getLinkUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_b

    .line 1053
    sget-object p1, Lcom/mh/movie/core/mvp/ui/b;->K:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Lcom/mh/movie/core/mvp/ui/b;->a(I)Lcom/mh/movie/core/mvp/model/entity/response/AdListResponse;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/AdListResponse;->getLinkUrl()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/mh/movie/core/mvp/ui/b;->K:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/b;->a(I)Lcom/mh/movie/core/mvp/model/entity/response/AdListResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/response/AdListResponse;->getId()I

    move-result v0

    sget-object v3, Lcom/mh/movie/core/mvp/ui/b;->K:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Lcom/mh/movie/core/mvp/ui/b;->a(I)Lcom/mh/movie/core/mvp/model/entity/response/AdListResponse;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mh/movie/core/mvp/model/entity/response/AdListResponse;->getTargetType()I

    move-result v3

    if-ne v3, v2, :cond_7

    const/4 v1, 0x1

    :cond_7
    const/4 v2, 0x4

    invoke-static {p1, v0, v1, v2}, Lcom/mh/movie/core/mvp/ui/utils/UIUtils;->openWeb(Ljava/lang/String;IZI)V

    goto :goto_1

    .line 1055
    :cond_8
    sget v0, Lcom/mh/movie/core/R$id;->rl_shut:I

    if-ne p1, v0, :cond_9

    .line 1056
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->mRlAdOne:Landroid/widget/RelativeLayout;

    const/16 v0, 0x8

    invoke-virtual {p0, p1, v0}, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->setViewShowState(Landroid/view/View;I)V

    goto :goto_1

    .line 1057
    :cond_9
    sget v0, Lcom/mh/movie/core/R$id;->rl_ad_one:I

    if-ne p1, v0, :cond_a

    goto :goto_1

    .line 1061
    :cond_a
    sget v0, Lcom/mh/movie/core/R$id;->tv_video_feedback:I

    if-ne p1, v0, :cond_b

    .line 1062
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/mh/movie/core/mvp/ui/activity/FeedBackActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "title"

    const-string v1, "\u64ad\u653e\u89c6\u9891\u53cd\u9988"

    .line 1063
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1064
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_b
    :goto_1
    return-void
.end method

.method public release()V
    .locals 1

    .line 244
    invoke-super {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->release()V

    .line 245
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->mLoadingProgressBar:Landroid/view/View;

    check-cast v0, Lcom/mh/movie/core/mvp/ui/activity/player/view/VideoLoadingView;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/activity/player/view/VideoLoadingView;->a()V

    return-void
.end method

.method public setLocalPlayer(Z)V
    .locals 0

    .line 1317
    iput-boolean p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->localPlayer:Z

    return-void
.end method

.method public setMhVideoOnClick(Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer$b;)V
    .locals 0

    .line 212
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->ac:Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer$b;

    return-void
.end method

.method protected setProgressAndTime(IIII)V
    .locals 0

    .line 766
    invoke-super {p0, p1, p2, p3, p4}, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->setProgressAndTime(IIII)V

    .line 769
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->ab:Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer$a;

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->mCurrentState:I

    const/4 p2, 0x7

    if-eq p1, p2, :cond_0

    if-eq p3, p4, :cond_0

    .line 771
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->ab:Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer$a;

    invoke-interface {p1, p3}, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer$a;->a(I)V

    .line 774
    iget p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->mCurrentState:I

    const/4 p2, 0x6

    if-ne p1, p2, :cond_0

    .line 776
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->mProgressBar:Landroid/widget/SeekBar;

    const/16 p2, 0x64

    invoke-virtual {p1, p2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 777
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->J:Lcom/mh/movie/core/mvp/ui/widget/SeekBarNotDrag;

    invoke-virtual {p1, p2}, Lcom/mh/movie/core/mvp/ui/widget/SeekBarNotDrag;->setProgress(I)V

    :cond_0
    return-void
.end method

.method public setShowLockScreen(Z)V
    .locals 0

    .line 1325
    iput-boolean p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->ae:Z

    return-void
.end method

.method protected setStateAndUi(I)V
    .locals 4

    .line 784
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->aa:Lcom/mh/movie/core/mvp/ui/activity/player/y;

    if-eqz v0, :cond_0

    .line 785
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->aa:Lcom/mh/movie/core/mvp/ui/activity/player/y;

    invoke-interface {v0, p1}, Lcom/mh/movie/core/mvp/ui/activity/player/y;->a(I)V

    .line 787
    :cond_0
    invoke-super {p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->setStateAndUi(I)V

    .line 789
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->ab:Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer$a;

    if-eqz v0, :cond_3

    .line 790
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->getCurrentState()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    .line 791
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->getCurrentState()I

    move-result v0

    const/4 v3, 0x3

    if-eq v0, v3, :cond_1

    .line 792
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->getCurrentState()I

    move-result v0

    if-ne v0, v1, :cond_2

    :cond_1
    if-eq p1, v1, :cond_2

    .line 795
    iput v1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->ad:I

    .line 796
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->ab:Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer$a;

    iget v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->ad:I

    invoke-interface {p1, v0}, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer$a;->b(I)V

    goto :goto_0

    :cond_2
    if-eq p1, v2, :cond_3

    .line 801
    iput v2, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->ad:I

    .line 802
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->ab:Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer$a;

    iget v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->ad:I

    invoke-interface {p1, v0}, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer$a;->b(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method public setStatusListener(Lcom/mh/movie/core/mvp/ui/activity/player/y;)V
    .locals 0

    .line 1313
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->aa:Lcom/mh/movie/core/mvp/ui/activity/player/y;

    return-void
.end method

.method public setVideoTitle(Ljava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 1138
    :cond_0
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->tvVideoTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected setViewShowState(Landroid/view/View;I)V
    .locals 2

    .line 895
    invoke-super {p0, p1, p2}, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->setViewShowState(Landroid/view/View;I)V

    .line 897
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->mTopContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getId()I

    move-result v1

    if-ne v0, v1, :cond_0

    if-nez p2, :cond_0

    .line 898
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->af:Lcom/mh/movie/core/mvp/ui/activity/player/view/h;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/activity/player/view/h;->a()V

    .line 901
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->llBackContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getId()I

    move-result v0

    if-ne p1, v0, :cond_1

    if-nez p2, :cond_1

    .line 902
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->v()V

    :cond_1
    return-void
.end method

.method public setiPlayStateListener(Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer$a;)V
    .locals 0

    .line 1070
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->ab:Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer$a;

    return-void
.end method

.method protected showAllWidget()V
    .locals 2

    .line 380
    invoke-super {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->showAllWidget()V

    .line 382
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->llBackContainer:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->setViewShowState(Landroid/view/View;I)V

    .line 384
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->isIfCurrentIsFullscreen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 385
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->mLockScreen:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v1}, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->setViewShowState(Landroid/view/View;I)V

    .line 386
    sget v0, Lcom/mh/movie/core/R$id;->layout_land_bottom:I

    invoke-direct {p0, v0}, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->b(I)V

    goto :goto_0

    .line 388
    :cond_0
    sget v0, Lcom/mh/movie/core/R$id;->layout_bottom:I

    invoke-direct {p0, v0}, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->b(I)V

    :goto_0
    return-void
.end method

.method protected showBrightnessDialog(F)V
    .locals 3

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float p1, p1, v0

    float-to-int p1, p1

    .line 687
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->rlVolumn:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 688
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->ivVolumnIcon:Landroid/widget/ImageView;

    sget v2, Lcom/mh/movie/core/R$mipmap;->video_light_big:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    if-gez p1, :cond_0

    const/4 p1, 0x0

    :cond_0
    const/16 v0, 0x64

    if-le p1, v0, :cond_1

    const/16 p1, 0x64

    .line 691
    :cond_1
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->pbVolumn:Lcom/mh/movie/core/mvp/ui/widget/SeekBarNotDrag;

    invoke-virtual {v0, p1}, Lcom/mh/movie/core/mvp/ui/widget/SeekBarNotDrag;->setProgress(I)V

    return-void
.end method

.method protected showProgressDialog(FLjava/lang/String;ILjava/lang/String;I)V
    .locals 0

    if-nez p5, :cond_0

    return-void

    .line 988
    :cond_0
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->llVideoFast:Landroid/widget/LinearLayout;

    const/4 p4, 0x0

    invoke-virtual {p1, p4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 989
    sget p1, Lcom/mh/movie/core/R$id;->view_video_control_bg:I

    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p4}, Landroid/view/View;->setVisibility(I)V

    .line 990
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->updateInSeekStartImage()V

    mul-int/lit8 p3, p3, 0x64

    .line 992
    div-int/2addr p3, p5

    .line 993
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->sbVideoFastProgress:Lcom/mh/movie/core/mvp/ui/widget/SeekBarNotDrag;

    invoke-virtual {p1, p3}, Lcom/mh/movie/core/mvp/ui/widget/SeekBarNotDrag;->setProgress(I)V

    .line 994
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->J:Lcom/mh/movie/core/mvp/ui/widget/SeekBarNotDrag;

    invoke-virtual {p1, p3}, Lcom/mh/movie/core/mvp/ui/widget/SeekBarNotDrag;->setProgress(I)V

    .line 996
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->tvVideoFastTime:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 997
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->mCurrentTimeTextView:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 998
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->K:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public showSmallVideo(Landroid/graphics/Point;ZZ)Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;
    .locals 0

    .line 838
    invoke-super {p0, p1, p2, p3}, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->showSmallVideo(Landroid/graphics/Point;ZZ)Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    move-result-object p1

    return-object p1
.end method

.method protected showVolumeDialog(FI)V
    .locals 2

    .line 670
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->rlVolumn:Landroid/widget/RelativeLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 671
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->ivVolumnIcon:Landroid/widget/ImageView;

    sget v1, Lcom/mh/movie/core/R$mipmap;->video_volume_big:I

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    if-gez p2, :cond_0

    const/4 p2, 0x0

    :cond_0
    const/16 p1, 0x64

    if-le p2, p1, :cond_1

    goto :goto_0

    :cond_1
    move p1, p2

    .line 674
    :goto_0
    iget-object p2, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->pbVolumn:Lcom/mh/movie/core/mvp/ui/widget/SeekBarNotDrag;

    invoke-virtual {p2, p1}, Lcom/mh/movie/core/mvp/ui/widget/SeekBarNotDrag;->setProgress(I)V

    return-void
.end method

.method public startPlayLogic()V
    .locals 0

    .line 823
    invoke-super {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->startPlayLogic()V

    return-void
.end method

.method protected touchDoubleUp()V
    .locals 5

    .line 565
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->getCurrentState()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    .line 566
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->M:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->isShown()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->mBottomContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 569
    :goto_1
    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->G:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 570
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/mh/movie/core/mvp/ui/activity/player/j;

    invoke-direct {v2, p0}, Lcom/mh/movie/core/mvp/ui/activity/player/j;-><init>(Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;)V

    const-wide/16 v3, 0xbb8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    .line 572
    :goto_2
    invoke-super {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->touchDoubleUp()V

    if-nez v0, :cond_3

    .line 575
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->hideAllWidget()V

    :cond_3
    return-void
.end method

.method protected updateInSeekStartImage()V
    .locals 2

    .line 467
    invoke-super {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->updateInSeekStartImage()V

    .line 468
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->mStartButton:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    sget v1, Lcom/mh/movie/core/R$mipmap;->icon_video_play:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 469
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->N:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    sget v1, Lcom/mh/movie/core/R$mipmap;->icon_video_play:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method protected updateInSeekStopImage()V
    .locals 2

    .line 474
    invoke-super {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->updateInSeekStopImage()V

    .line 476
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->mStartButton:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    sget v1, Lcom/mh/movie/core/R$mipmap;->icon_video_pause:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 477
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->N:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    sget v1, Lcom/mh/movie/core/R$mipmap;->icon_video_pause:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method protected updateStartImage()V
    .locals 4

    const-string v0, "TTT"

    .line 703
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateStartImage:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->mCurrentState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 705
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->mStartButton:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    .line 706
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->N:Landroid/view/View;

    check-cast v1, Landroid/widget/ImageView;

    .line 708
    iget v2, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->mCurrentState:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 709
    sget v2, Lcom/mh/movie/core/R$mipmap;->icon_video_pause:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 710
    sget v0, Lcom/mh/movie/core/R$mipmap;->icon_video_pause:I

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 712
    :cond_0
    iget v2, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->mCurrentState:I

    const/4 v3, 0x7

    if-ne v2, v3, :cond_1

    .line 714
    iget-boolean v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->localPlayer:Z

    if-nez v0, :cond_3

    .line 724
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->A()V

    goto :goto_0

    .line 728
    :cond_1
    iget v2, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->mCurrentState:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    goto :goto_0

    .line 731
    :cond_2
    sget v2, Lcom/mh/movie/core/R$mipmap;->icon_video_play:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 732
    sget v0, Lcom/mh/movie/core/R$mipmap;->icon_video_play:I

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method public w()V
    .locals 1

    .line 665
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->vdgvDanmuGuide:Lcom/mh/movie/core/mvp/ui/activity/player/view/VideoDanmuGuideView;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/activity/player/view/VideoDanmuGuideView;->c()V

    return-void
.end method

.method public x()V
    .locals 6

    .line 1224
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->m()V

    const/4 v0, 0x0

    .line 1225
    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->setIfCurrentIsFullscreen(Z)V

    .line 1226
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->f()V

    .line 1227
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->M:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->isShown()Z

    move-result v1

    const/16 v2, 0x8

    if-eqz v1, :cond_0

    .line 1228
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->mBottomContainer:Landroid/view/ViewGroup;

    invoke-virtual {p0, v1, v0}, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->setViewShowState(Landroid/view/View;I)V

    .line 1229
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->M:Landroid/view/ViewGroup;

    invoke-virtual {p0, v1, v2}, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->setViewShowState(Landroid/view/View;I)V

    .line 1230
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->H:Landroid/widget/ImageView;

    invoke-virtual {p0, v1, v2}, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->setViewShowState(Landroid/view/View;I)V

    .line 1231
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->I:Landroid/widget/ImageView;

    invoke-virtual {p0, v1, v2}, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->setViewShowState(Landroid/view/View;I)V

    .line 1233
    sget v1, Lcom/mh/movie/core/R$id;->layout_bottom:I

    invoke-direct {p0, v1}, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->b(I)V

    goto :goto_0

    .line 1236
    :cond_0
    sget v1, Lcom/mh/movie/core/R$id;->view_video_bottom_line:I

    invoke-direct {p0, v1}, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->b(I)V

    .line 1241
    :goto_0
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->I()V

    .line 1243
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->m:Landroid/view/View;

    invoke-virtual {p0, v1, v2}, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->setViewShowState(Landroid/view/View;I)V

    .line 1244
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->O:Lcom/mh/movie/core/mvp/ui/activity/player/view/PlayerDialogFrameLayout;

    invoke-virtual {p0, v1, v2}, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->setViewShowState(Landroid/view/View;I)V

    .line 1246
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->mLockScreen:Landroid/widget/ImageView;

    invoke-virtual {p0, v1, v2}, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->setViewShowState(Landroid/view/View;I)V

    .line 1247
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->ivShare:Landroid/widget/ImageView;

    invoke-virtual {p0, v1, v2}, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->setViewShowState(Landroid/view/View;I)V

    .line 1248
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->ivSetting:Landroid/widget/ImageView;

    invoke-virtual {p0, v1, v2}, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->setViewShowState(Landroid/view/View;I)V

    .line 1249
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->llVideoPhoneInfoContains:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v1, v2}, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->setViewShowState(Landroid/view/View;I)V

    .line 1251
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->llBackContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v1, v0}, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->setViewShowState(Landroid/view/View;I)V

    .line 1254
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lcom/shuyu/gsyvideoplayer/utils/CommonUtil;->showSupportActionBar(Landroid/content/Context;ZZ)V

    .line 1263
    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->e(Z)V

    .line 1265
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->llBackContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1266
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->getContext()Landroid/content/Context;

    move-result-object v3

    const/high16 v4, 0x40800000    # 4.0f

    invoke-static {v3, v4}, Lcom/jess/arms/c/a;->a(Landroid/content/Context;F)I

    move-result v3

    iput v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 1267
    iget-object v3, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->llBackContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1269
    sget v1, Lcom/mh/movie/core/R$id;->rl_video_top_containers:I

    invoke-virtual {p0, v1}, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 1270
    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 1271
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v4}, Lcom/jess/arms/c/a;->a(Landroid/content/Context;F)I

    move-result v4

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 1272
    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1274
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/jess/arms/c/a;->f(Landroid/content/Context;)V

    .line 1283
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    .line 1284
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/mh/movie/core/R$dimen;->post_media_height:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    invoke-direct {v1, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1285
    invoke-virtual {p0, v1}, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1293
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/mh/movie/core/mvp/ui/utils/UIUtils;->scanForActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v1

    const/4 v3, 0x0

    invoke-static {v1, v0, v3}, Lcom/jaeger/library/StatusBarUtil;->setTranslucentForImageView(Landroid/app/Activity;ILandroid/view/View;)V

    .line 1294
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->startDismissControlViewTimer()V

    .line 1295
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->mVideoAllCallBack:Lcom/shuyu/gsyvideoplayer/c/i;

    iget-object v3, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->mOriginUrl:Ljava/lang/String;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->mTitle:Ljava/lang/String;

    aput-object v5, v4, v0

    aput-object p0, v4, v2

    invoke-interface {v1, v3, v4}, Lcom/shuyu/gsyvideoplayer/c/i;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public y()V
    .locals 2

    .line 223
    sget-object v0, Lcom/mh/movie/core/mvp/ui/b;->K:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/b;->a(I)Lcom/mh/movie/core/mvp/model/entity/response/AdListResponse;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/mh/movie/core/mvp/ui/b;->K:Ljava/lang/Integer;

    .line 224
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/b;->a(I)Lcom/mh/movie/core/mvp/model/entity/response/AdListResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/response/AdListResponse;->getThumbnailUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    sget-object v1, Lcom/mh/movie/core/mvp/ui/b;->K:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/mh/movie/core/mvp/ui/b;->a(I)Lcom/mh/movie/core/mvp/model/entity/response/AdListResponse;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/model/entity/response/AdListResponse;->getThumbnailUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->mImgAd:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    :cond_0
    return-void
.end method

.method public z()V
    .locals 0

    return-void
.end method
