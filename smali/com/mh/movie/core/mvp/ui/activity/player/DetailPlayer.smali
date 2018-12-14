.class public Lcom/mh/movie/core/mvp/ui/activity/player/DetailPlayer;
.super Landroid/support/v7/app/AppCompatActivity;
.source "DetailPlayer.java"


# instance fields
.field private a:Z

.field activityDetailPlayer:Landroid/widget/RelativeLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c002a
    .end annotation
.end field

.field private b:Z

.field private c:Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;

.field detailPlayer:Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c00ab
    .end annotation
.end field

.field postDetailNestedScroll:Landroid/support/v4/widget/NestedScrollView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c0299
    .end annotation
.end field


# direct methods
.method static synthetic a(Lcom/mh/movie/core/mvp/ui/activity/player/DetailPlayer;)Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/DetailPlayer;->c:Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;

    return-object p0
.end method

.method private a()V
    .locals 2

    .line 215
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/DetailPlayer;->detailPlayer:Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->getTitleTextView()Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method static synthetic a(Lcom/mh/movie/core/mvp/ui/activity/player/DetailPlayer;Z)Z
    .locals 0

    .line 28
    iput-boolean p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/DetailPlayer;->a:Z

    return p1
.end method

.method private b()Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoPlayer;
    .locals 1

    .line 221
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/DetailPlayer;->detailPlayer:Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->getFullWindowPlayer()Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/DetailPlayer;->detailPlayer:Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->getFullWindowPlayer()Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoPlayer;

    move-result-object v0

    return-object v0

    .line 224
    :cond_0
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/DetailPlayer;->detailPlayer:Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;

    return-object v0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/DetailPlayer;->c:Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/DetailPlayer;->c:Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;

    invoke-virtual {v0}, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->backToProtVideo()I

    .line 169
    :cond_0
    invoke-static {p0}, Lcom/shuyu/gsyvideoplayer/d;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 172
    :cond_1
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onBackPressed()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 7

    .line 205
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 207
    iget-boolean v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/DetailPlayer;->a:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/DetailPlayer;->b:Z

    if-nez v0, :cond_0

    .line 208
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/DetailPlayer;->detailPlayer:Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;

    iget-object v4, p0, Lcom/mh/movie/core/mvp/ui/activity/player/DetailPlayer;->c:Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object v2, p0

    move-object v3, p1

    invoke-virtual/range {v1 .. v6}, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->onConfigurationChanged(Landroid/app/Activity;Landroid/content/res/Configuration;Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;ZZ)V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 48
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 49
    sget p1, Lcom/mh/movie/core/R$layout;->activity_detail_player:I

    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/player/DetailPlayer;->setContentView(I)V

    .line 50
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Activity;)Lbutterknife/Unbinder;

    const-string p1, "http://172.16.10.40:9427/video/c_21133/1/ecef989a336c1d282961f53a3749e9d6_1080P.m3u8"

    .line 71
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 72
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 73
    sget v1, Lcom/mh/movie/core/R$mipmap;->logo_big:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 77
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/DetailPlayer;->a()V

    .line 80
    new-instance v1, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;

    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/activity/player/DetailPlayer;->detailPlayer:Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;

    invoke-direct {v1, p0, v2}, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;-><init>(Landroid/app/Activity;Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;)V

    iput-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/DetailPlayer;->c:Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;

    .line 82
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/DetailPlayer;->c:Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->setEnable(Z)V

    .line 84
    new-instance v1, Lcom/shuyu/gsyvideoplayer/a/a;

    invoke-direct {v1}, Lcom/shuyu/gsyvideoplayer/a/a;-><init>()V

    .line 85
    invoke-virtual {v1, v0}, Lcom/shuyu/gsyvideoplayer/a/a;->setThumbImageView(Landroid/view/View;)Lcom/shuyu/gsyvideoplayer/a/a;

    move-result-object v0

    const/4 v1, 0x1

    .line 86
    invoke-virtual {v0, v1}, Lcom/shuyu/gsyvideoplayer/a/a;->setIsTouchWiget(Z)Lcom/shuyu/gsyvideoplayer/a/a;

    move-result-object v0

    .line 87
    invoke-virtual {v0, v2}, Lcom/shuyu/gsyvideoplayer/a/a;->setRotateViewAuto(Z)Lcom/shuyu/gsyvideoplayer/a/a;

    move-result-object v0

    .line 88
    invoke-virtual {v0, v2}, Lcom/shuyu/gsyvideoplayer/a/a;->setLockLand(Z)Lcom/shuyu/gsyvideoplayer/a/a;

    move-result-object v0

    .line 89
    invoke-virtual {v0, v1}, Lcom/shuyu/gsyvideoplayer/a/a;->setAutoFullWithSize(Z)Lcom/shuyu/gsyvideoplayer/a/a;

    move-result-object v0

    .line 90
    invoke-virtual {v0, v2}, Lcom/shuyu/gsyvideoplayer/a/a;->setShowFullAnimation(Z)Lcom/shuyu/gsyvideoplayer/a/a;

    move-result-object v0

    .line 91
    invoke-virtual {v0, v1}, Lcom/shuyu/gsyvideoplayer/a/a;->setNeedLockFull(Z)Lcom/shuyu/gsyvideoplayer/a/a;

    move-result-object v0

    .line 92
    invoke-virtual {v0, p1}, Lcom/shuyu/gsyvideoplayer/a/a;->setUrl(Ljava/lang/String;)Lcom/shuyu/gsyvideoplayer/a/a;

    move-result-object p1

    .line 93
    invoke-virtual {p1, v2}, Lcom/shuyu/gsyvideoplayer/a/a;->setCacheWithPlay(Z)Lcom/shuyu/gsyvideoplayer/a/a;

    move-result-object p1

    const-string v0, "\u6d4b\u8bd5\u89c6\u9891"

    .line 94
    invoke-virtual {p1, v0}, Lcom/shuyu/gsyvideoplayer/a/a;->setVideoTitle(Ljava/lang/String;)Lcom/shuyu/gsyvideoplayer/a/a;

    move-result-object p1

    new-instance v0, Lcom/mh/movie/core/mvp/ui/activity/player/DetailPlayer$3;

    invoke-direct {v0, p0}, Lcom/mh/movie/core/mvp/ui/activity/player/DetailPlayer$3;-><init>(Lcom/mh/movie/core/mvp/ui/activity/player/DetailPlayer;)V

    .line 95
    invoke-virtual {p1, v0}, Lcom/shuyu/gsyvideoplayer/a/a;->setVideoAllCallBack(Lcom/shuyu/gsyvideoplayer/c/i;)Lcom/shuyu/gsyvideoplayer/a/a;

    move-result-object p1

    new-instance v0, Lcom/mh/movie/core/mvp/ui/activity/player/DetailPlayer$2;

    invoke-direct {v0, p0}, Lcom/mh/movie/core/mvp/ui/activity/player/DetailPlayer$2;-><init>(Lcom/mh/movie/core/mvp/ui/activity/player/DetailPlayer;)V

    .line 133
    invoke-virtual {p1, v0}, Lcom/shuyu/gsyvideoplayer/a/a;->setLockClickListener(Lcom/shuyu/gsyvideoplayer/c/g;)Lcom/shuyu/gsyvideoplayer/a/a;

    move-result-object p1

    new-instance v0, Lcom/mh/movie/core/mvp/ui/activity/player/DetailPlayer$1;

    invoke-direct {v0, p0}, Lcom/mh/movie/core/mvp/ui/activity/player/DetailPlayer$1;-><init>(Lcom/mh/movie/core/mvp/ui/activity/player/DetailPlayer;)V

    .line 142
    invoke-virtual {p1, v0}, Lcom/shuyu/gsyvideoplayer/a/a;->setGSYVideoProgressListener(Lcom/shuyu/gsyvideoplayer/c/d;)Lcom/shuyu/gsyvideoplayer/a/a;

    move-result-object p1

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/DetailPlayer;->detailPlayer:Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;

    .line 148
    invoke-virtual {p1, v0}, Lcom/shuyu/gsyvideoplayer/a/a;->build(Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;)V

    .line 150
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/DetailPlayer;->detailPlayer:Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->getFullscreenButton()Landroid/widget/ImageView;

    move-result-object p1

    new-instance v0, Lcom/mh/movie/core/mvp/ui/activity/player/DetailPlayer$4;

    invoke-direct {v0, p0}, Lcom/mh/movie/core/mvp/ui/activity/player/DetailPlayer$4;-><init>(Lcom/mh/movie/core/mvp/ui/activity/player/DetailPlayer;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 192
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onDestroy()V

    .line 193
    iget-boolean v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/DetailPlayer;->a:Z

    if-eqz v0, :cond_0

    .line 194
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/DetailPlayer;->b()Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoPlayer;->release()V

    .line 197
    :cond_0
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/DetailPlayer;->c:Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;

    if-eqz v0, :cond_1

    .line 198
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/DetailPlayer;->c:Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;

    invoke-virtual {v0}, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->releaseListener()V

    :cond_1
    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 178
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/DetailPlayer;->b()Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoPlayer;->onVideoPause()V

    .line 179
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onPause()V

    const/4 v0, 0x1

    .line 180
    iput-boolean v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/DetailPlayer;->b:Z

    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 185
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/DetailPlayer;->b()Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoPlayer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoPlayer;->onVideoResume(Z)V

    .line 186
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onResume()V

    .line 187
    iput-boolean v1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/DetailPlayer;->b:Z

    return-void
.end method
