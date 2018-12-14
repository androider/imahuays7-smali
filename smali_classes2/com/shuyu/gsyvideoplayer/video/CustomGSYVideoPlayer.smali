.class public Lcom/shuyu/gsyvideoplayer/video/CustomGSYVideoPlayer;
.super Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;
.source "CustomGSYVideoPlayer.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private mIsFromUser:Z

.field private mOpenPreView:Z

.field private mPreProgress:I

.field private mPreviewLayout:Landroid/widget/RelativeLayout;

.field private mPreviewTexture:Lcom/shuyu/gsyvideoplayer/render/view/GSYTextureView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;-><init>(Landroid/content/Context;)V

    const/4 p1, -0x2

    .line 34
    iput p1, p0, Lcom/shuyu/gsyvideoplayer/video/CustomGSYVideoPlayer;->mPreProgress:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1, p2}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, -0x2

    .line 34
    iput p1, p0, Lcom/shuyu/gsyvideoplayer/video/CustomGSYVideoPlayer;->mPreProgress:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/Boolean;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;-><init>(Landroid/content/Context;Ljava/lang/Boolean;)V

    const/4 p1, -0x2

    .line 34
    iput p1, p0, Lcom/shuyu/gsyvideoplayer/video/CustomGSYVideoPlayer;->mPreProgress:I

    return-void
.end method

.method private initView()V
    .locals 1

    .line 58
    sget v0, Lcom/shuyu/gsyvideoplayer/R$id;->preview_layout:I

    invoke-virtual {p0, v0}, Lcom/shuyu/gsyvideoplayer/video/CustomGSYVideoPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/CustomGSYVideoPlayer;->mPreviewLayout:Landroid/widget/RelativeLayout;

    return-void
.end method


# virtual methods
.method protected addTextureView()V
    .locals 3

    .line 69
    invoke-super {p0}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->addTextureView()V

    .line 71
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/CustomGSYVideoPlayer;->mPreviewLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/CustomGSYVideoPlayer;->mPreviewLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    :cond_0
    const/4 v0, 0x0

    .line 74
    iput-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/CustomGSYVideoPlayer;->mPreviewTexture:Lcom/shuyu/gsyvideoplayer/render/view/GSYTextureView;

    .line 75
    new-instance v0, Lcom/shuyu/gsyvideoplayer/render/view/GSYTextureView;

    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/CustomGSYVideoPlayer;->getActivityContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/shuyu/gsyvideoplayer/render/view/GSYTextureView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/CustomGSYVideoPlayer;->mPreviewTexture:Lcom/shuyu/gsyvideoplayer/render/view/GSYTextureView;

    .line 76
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/CustomGSYVideoPlayer;->mPreviewTexture:Lcom/shuyu/gsyvideoplayer/render/view/GSYTextureView;

    new-instance v1, Lcom/shuyu/gsyvideoplayer/video/CustomGSYVideoPlayer$1;

    invoke-direct {v1, p0}, Lcom/shuyu/gsyvideoplayer/video/CustomGSYVideoPlayer$1;-><init>(Lcom/shuyu/gsyvideoplayer/video/CustomGSYVideoPlayer;)V

    invoke-virtual {v0, v1}, Lcom/shuyu/gsyvideoplayer/render/view/GSYTextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 98
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/CustomGSYVideoPlayer;->mPreviewTexture:Lcom/shuyu/gsyvideoplayer/render/view/GSYTextureView;

    iget v1, p0, Lcom/shuyu/gsyvideoplayer/video/CustomGSYVideoPlayer;->mRotate:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/shuyu/gsyvideoplayer/render/view/GSYTextureView;->setRotation(F)V

    .line 100
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xd

    .line 101
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 102
    iget-object v1, p0, Lcom/shuyu/gsyvideoplayer/video/CustomGSYVideoPlayer;->mPreviewLayout:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/shuyu/gsyvideoplayer/video/CustomGSYVideoPlayer;->mPreviewTexture:Lcom/shuyu/gsyvideoplayer/render/view/GSYTextureView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public getLayoutId()I
    .locals 1

    .line 63
    sget v0, Lcom/shuyu/gsyvideoplayer/R$layout;->video_layout_custom:I

    return v0
.end method

.method protected init(Landroid/content/Context;)V
    .locals 0

    .line 53
    invoke-super {p0, p1}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->init(Landroid/content/Context;)V

    .line 54
    invoke-direct {p0}, Lcom/shuyu/gsyvideoplayer/video/CustomGSYVideoPlayer;->initView()V

    return-void
.end method

.method public isOpenPreView()Z
    .locals 1

    .line 174
    iget-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/video/CustomGSYVideoPlayer;->mOpenPreView:Z

    return v0
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2

    .line 113
    invoke-super {p0, p1, p2, p3}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->onProgressChanged(Landroid/widget/SeekBar;IZ)V

    if-eqz p3, :cond_0

    .line 114
    iget-boolean p3, p0, Lcom/shuyu/gsyvideoplayer/video/CustomGSYVideoPlayer;->mOpenPreView:Z

    if-eqz p3, :cond_0

    .line 115
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getWidth()I

    move-result p1

    int-to-float p1, p1

    .line 116
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/CustomGSYVideoPlayer;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v0, Lcom/shuyu/gsyvideoplayer/R$dimen;->seek_bar_image:I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p3

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p3, v0

    sub-float/2addr p1, p3

    float-to-int p1, p1

    div-int/lit8 p1, p1, 0x64

    mul-int p1, p1, p2

    .line 118
    iget-object p3, p0, Lcom/shuyu/gsyvideoplayer/video/CustomGSYVideoPlayer;->mPreviewLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p3}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    check-cast p3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 119
    iput p1, p3, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 121
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/CustomGSYVideoPlayer;->mPreviewLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, p3}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 122
    invoke-static {}, Lcom/shuyu/gsyvideoplayer/a;->a()Lcom/shuyu/gsyvideoplayer/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/shuyu/gsyvideoplayer/a;->b()Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/video/CustomGSYVideoPlayer;->mHadPlay:Z

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/video/CustomGSYVideoPlayer;->mOpenPreView:Z

    if-eqz p1, :cond_0

    .line 124
    invoke-static {}, Lcom/shuyu/gsyvideoplayer/a;->a()Lcom/shuyu/gsyvideoplayer/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/shuyu/gsyvideoplayer/a;->c()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 125
    invoke-static {}, Lcom/shuyu/gsyvideoplayer/a;->a()Lcom/shuyu/gsyvideoplayer/a;

    move-result-object p1

    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Lcom/shuyu/gsyvideoplayer/a;->a(Z)V

    .line 126
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/CustomGSYVideoPlayer;->getDuration()I

    move-result p1

    mul-int p1, p1, p2

    div-int/lit8 p1, p1, 0x64

    .line 127
    invoke-static {}, Lcom/shuyu/gsyvideoplayer/a;->a()Lcom/shuyu/gsyvideoplayer/a;

    move-result-object p3

    invoke-virtual {p3}, Lcom/shuyu/gsyvideoplayer/a;->b()Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    move-result-object p3

    int-to-long v0, p1

    invoke-virtual {p3, v0, v1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->seekTo(J)V

    .line 128
    iput p2, p0, Lcom/shuyu/gsyvideoplayer/video/CustomGSYVideoPlayer;->mPreProgress:I

    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    .line 135
    invoke-super {p0, p1}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->onStartTrackingTouch(Landroid/widget/SeekBar;)V

    .line 136
    iget-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/video/CustomGSYVideoPlayer;->mOpenPreView:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 137
    iput-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/video/CustomGSYVideoPlayer;->mIsFromUser:Z

    .line 138
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/CustomGSYVideoPlayer;->mPreviewLayout:Landroid/widget/RelativeLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    const/4 p1, -0x2

    .line 139
    iput p1, p0, Lcom/shuyu/gsyvideoplayer/video/CustomGSYVideoPlayer;->mPreProgress:I

    :cond_0
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    .line 145
    iget-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/video/CustomGSYVideoPlayer;->mOpenPreView:Z

    if-eqz v0, :cond_0

    .line 149
    invoke-super {p0, p1}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->onStopTrackingTouch(Landroid/widget/SeekBar;)V

    const/4 p1, 0x0

    .line 150
    iput-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/video/CustomGSYVideoPlayer;->mIsFromUser:Z

    .line 151
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/CustomGSYVideoPlayer;->mPreviewLayout:Landroid/widget/RelativeLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 153
    :cond_0
    invoke-super {p0, p1}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->onStopTrackingTouch(Landroid/widget/SeekBar;)V

    :goto_0
    return-void
.end method

.method protected prepareVideo()V
    .locals 5

    .line 107
    invoke-static {}, Lcom/shuyu/gsyvideoplayer/a;->a()Lcom/shuyu/gsyvideoplayer/a;

    move-result-object v0

    iget-object v1, p0, Lcom/shuyu/gsyvideoplayer/video/CustomGSYVideoPlayer;->mUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/shuyu/gsyvideoplayer/video/CustomGSYVideoPlayer;->mMapHeadData:Ljava/util/Map;

    iget-boolean v3, p0, Lcom/shuyu/gsyvideoplayer/video/CustomGSYVideoPlayer;->mLooping:Z

    iget v4, p0, Lcom/shuyu/gsyvideoplayer/video/CustomGSYVideoPlayer;->mSpeed:F

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/shuyu/gsyvideoplayer/a;->a(Ljava/lang/String;Ljava/util/Map;ZF)V

    .line 108
    invoke-super {p0}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->prepareVideo()V

    return-void
.end method

.method public setOpenPreView(Z)V
    .locals 0

    .line 181
    iput-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/video/CustomGSYVideoPlayer;->mOpenPreView:Z

    return-void
.end method

.method protected setTextAndProgress(I)V
    .locals 1

    .line 159
    iget-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/video/CustomGSYVideoPlayer;->mIsFromUser:Z

    if-eqz v0, :cond_0

    return-void

    .line 162
    :cond_0
    invoke-super {p0, p1}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->setTextAndProgress(I)V

    return-void
.end method

.method public startWindowFullscreen(Landroid/content/Context;ZZ)Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;
    .locals 0

    .line 167
    invoke-super {p0, p1, p2, p3}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->startWindowFullscreen(Landroid/content/Context;ZZ)Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    move-result-object p1

    .line 168
    move-object p2, p1

    check-cast p2, Lcom/shuyu/gsyvideoplayer/video/CustomGSYVideoPlayer;

    .line 169
    iget-boolean p3, p0, Lcom/shuyu/gsyvideoplayer/video/CustomGSYVideoPlayer;->mOpenPreView:Z

    iput-boolean p3, p2, Lcom/shuyu/gsyvideoplayer/video/CustomGSYVideoPlayer;->mOpenPreView:Z

    return-object p1
.end method
