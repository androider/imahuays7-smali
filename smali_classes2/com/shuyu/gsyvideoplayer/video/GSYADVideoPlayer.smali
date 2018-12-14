.class public Lcom/shuyu/gsyvideoplayer/video/GSYADVideoPlayer;
.super Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;
.source "GSYADVideoPlayer.java"


# instance fields
.field protected isFirstPrepared:Z

.field protected mADTime:Landroid/widget/TextView;

.field protected mJumpAd:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/Boolean;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;-><init>(Landroid/content/Context;Ljava/lang/Boolean;)V

    return-void
.end method


# virtual methods
.method protected backFromFull(Landroid/content/Context;)Z
    .locals 0

    .line 74
    invoke-static {p1}, Lcom/shuyu/gsyvideoplayer/b;->a(Landroid/content/Context;)Z

    move-result p1

    return p1
.end method

.method protected changeAdUIState()V
    .locals 4

    .line 222
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/GSYADVideoPlayer;->mJumpAd:Landroid/view/View;

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 223
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/GSYADVideoPlayer;->mJumpAd:Landroid/view/View;

    iget-boolean v3, p0, Lcom/shuyu/gsyvideoplayer/video/GSYADVideoPlayer;->isFirstPrepared:Z

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    const/16 v3, 0x8

    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 225
    :cond_1
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/GSYADVideoPlayer;->mADTime:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 226
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/GSYADVideoPlayer;->mADTime:Landroid/widget/TextView;

    iget-boolean v3, p0, Lcom/shuyu/gsyvideoplayer/video/GSYADVideoPlayer;->isFirstPrepared:Z

    if-eqz v3, :cond_2

    const/4 v1, 0x0

    :cond_2
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 229
    :cond_3
    iget-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/video/GSYADVideoPlayer;->isFirstPrepared:Z

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/GSYADVideoPlayer;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/shuyu/gsyvideoplayer/R$color;->bottom_container_bg:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 230
    :goto_1
    iget-object v1, p0, Lcom/shuyu/gsyvideoplayer/video/GSYADVideoPlayer;->mBottomContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 233
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/GSYADVideoPlayer;->mCurrentTimeTextView:Landroid/widget/TextView;

    const/4 v1, 0x4

    if-eqz v0, :cond_6

    .line 234
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/GSYADVideoPlayer;->mCurrentTimeTextView:Landroid/widget/TextView;

    iget-boolean v3, p0, Lcom/shuyu/gsyvideoplayer/video/GSYADVideoPlayer;->isFirstPrepared:Z

    if-eqz v3, :cond_5

    const/4 v3, 0x4

    goto :goto_2

    :cond_5
    const/4 v3, 0x0

    :goto_2
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 236
    :cond_6
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/GSYADVideoPlayer;->mTotalTimeTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_8

    .line 237
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/GSYADVideoPlayer;->mTotalTimeTextView:Landroid/widget/TextView;

    iget-boolean v3, p0, Lcom/shuyu/gsyvideoplayer/video/GSYADVideoPlayer;->isFirstPrepared:Z

    if-eqz v3, :cond_7

    const/4 v3, 0x4

    goto :goto_3

    :cond_7
    const/4 v3, 0x0

    :goto_3
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 239
    :cond_8
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/GSYADVideoPlayer;->mProgressBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_a

    .line 240
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/GSYADVideoPlayer;->mProgressBar:Landroid/widget/SeekBar;

    iget-boolean v3, p0, Lcom/shuyu/gsyvideoplayer/video/GSYADVideoPlayer;->isFirstPrepared:Z

    if-eqz v3, :cond_9

    goto :goto_4

    :cond_9
    const/4 v1, 0x0

    :goto_4
    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 241
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/GSYADVideoPlayer;->mProgressBar:Landroid/widget/SeekBar;

    iget-boolean v1, p0, Lcom/shuyu/gsyvideoplayer/video/GSYADVideoPlayer;->isFirstPrepared:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    :cond_a
    return-void
.end method

.method protected getFullId()I
    .locals 1

    .line 84
    sget v0, Lcom/shuyu/gsyvideoplayer/b;->b:I

    return v0
.end method

.method public getGSYVideoManager()Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;
    .locals 2

    .line 68
    invoke-static {}, Lcom/shuyu/gsyvideoplayer/b;->a()Lcom/shuyu/gsyvideoplayer/b;

    move-result-object v0

    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/GSYADVideoPlayer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/shuyu/gsyvideoplayer/b;->b(Landroid/content/Context;)V

    .line 69
    invoke-static {}, Lcom/shuyu/gsyvideoplayer/b;->a()Lcom/shuyu/gsyvideoplayer/b;

    move-result-object v0

    return-object v0
.end method

.method public getLayoutId()I
    .locals 1

    .line 63
    sget v0, Lcom/shuyu/gsyvideoplayer/R$layout;->video_layout_ad:I

    return v0
.end method

.method protected getSmallId()I
    .locals 1

    .line 89
    sget v0, Lcom/shuyu/gsyvideoplayer/b;->a:I

    return v0
.end method

.method protected hideAllWidget()V
    .locals 1

    .line 185
    iget-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/video/GSYADVideoPlayer;->isFirstPrepared:Z

    if-eqz v0, :cond_0

    return-void

    .line 188
    :cond_0
    invoke-super {p0}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->hideAllWidget()V

    return-void
.end method

.method protected init(Landroid/content/Context;)V
    .locals 1

    .line 46
    invoke-super {p0, p1}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->init(Landroid/content/Context;)V

    .line 47
    sget p1, Lcom/shuyu/gsyvideoplayer/R$id;->jump_ad:I

    invoke-virtual {p0, p1}, Lcom/shuyu/gsyvideoplayer/video/GSYADVideoPlayer;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/GSYADVideoPlayer;->mJumpAd:Landroid/view/View;

    .line 48
    sget p1, Lcom/shuyu/gsyvideoplayer/R$id;->ad_time:I

    invoke-virtual {p0, p1}, Lcom/shuyu/gsyvideoplayer/video/GSYADVideoPlayer;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/GSYADVideoPlayer;->mADTime:Landroid/widget/TextView;

    .line 49
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/GSYADVideoPlayer;->mJumpAd:Landroid/view/View;

    if-eqz p1, :cond_0

    .line 50
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/GSYADVideoPlayer;->mJumpAd:Landroid/view/View;

    new-instance v0, Lcom/shuyu/gsyvideoplayer/video/GSYADVideoPlayer$1;

    invoke-direct {v0, p0}, Lcom/shuyu/gsyvideoplayer/video/GSYADVideoPlayer$1;-><init>(Lcom/shuyu/gsyvideoplayer/video/GSYADVideoPlayer;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 102
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/shuyu/gsyvideoplayer/R$id;->start:I

    if-ne v0, v1, :cond_0

    .line 103
    iget p1, p0, Lcom/shuyu/gsyvideoplayer/video/GSYADVideoPlayer;->mCurrentState:I

    const/4 v0, 0x7

    if-ne p1, v0, :cond_1

    .line 104
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/GSYADVideoPlayer;->clickStartIcon()V

    goto :goto_0

    .line 107
    :cond_0
    invoke-super {p0, p1}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->onClick(Landroid/view/View;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onPrepared()V
    .locals 1

    .line 94
    invoke-super {p0}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->onPrepared()V

    const/4 v0, 0x1

    .line 95
    iput-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/video/GSYADVideoPlayer;->isFirstPrepared:Z

    .line 96
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/GSYADVideoPlayer;->changeAdUIState()V

    return-void
.end method

.method public release()V
    .locals 2

    .line 212
    invoke-super {p0}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->release()V

    .line 213
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/GSYADVideoPlayer;->mADTime:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/GSYADVideoPlayer;->mADTime:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method protected releaseVideos()V
    .locals 0

    .line 79
    invoke-static {}, Lcom/shuyu/gsyvideoplayer/b;->b()V

    return-void
.end method

.method public removeFullWindowViewOnly()V
    .locals 3

    .line 249
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/GSYADVideoPlayer;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/shuyu/gsyvideoplayer/utils/CommonUtil;->scanForActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 250
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/GSYADVideoPlayer;->getFullId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 252
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 253
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 254
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    const/4 v0, 0x0

    .line 257
    iput-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/video/GSYADVideoPlayer;->mIfCurrentIsFullscreen:Z

    return-void
.end method

.method protected setProgressAndTime(IIII)V
    .locals 1

    .line 193
    invoke-super {p0, p1, p2, p3, p4}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->setProgressAndTime(IIII)V

    .line 194
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/GSYADVideoPlayer;->mADTime:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    if-lez p3, :cond_0

    .line 195
    div-int/lit16 p4, p4, 0x3e8

    .line 196
    div-int/lit16 p3, p3, 0x3e8

    .line 197
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/GSYADVideoPlayer;->mADTime:Landroid/widget/TextView;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-int/2addr p4, p3

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method protected touchDoubleUp()V
    .locals 0

    return-void
.end method

.method protected touchSurfaceMove(FFF)V
    .locals 1

    .line 147
    iget-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/video/GSYADVideoPlayer;->mChangePosition:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 149
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->touchSurfaceMove(FFF)V

    :goto_0
    return-void
.end method

.method protected touchSurfaceMoveFullLogic(FF)V
    .locals 2

    .line 158
    iget v0, p0, Lcom/shuyu/gsyvideoplayer/video/GSYADVideoPlayer;->mThreshold:I

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-gtz v0, :cond_0

    iget v0, p0, Lcom/shuyu/gsyvideoplayer/video/GSYADVideoPlayer;->mThreshold:I

    int-to-float v0, v0

    cmpl-float v0, p2, v0

    if-lez v0, :cond_2

    .line 159
    :cond_0
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/GSYADVideoPlayer;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/shuyu/gsyvideoplayer/utils/CommonUtil;->getScreenWidth(Landroid/content/Context;)I

    move-result v0

    .line 160
    iget v1, p0, Lcom/shuyu/gsyvideoplayer/video/GSYADVideoPlayer;->mThreshold:I

    int-to-float v1, v1

    cmpl-float v1, p1, v1

    if-ltz v1, :cond_1

    int-to-float v0, v0

    iget v1, p0, Lcom/shuyu/gsyvideoplayer/video/GSYADVideoPlayer;->mDownX:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/shuyu/gsyvideoplayer/video/GSYADVideoPlayer;->mSeekEndOffset:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    const/4 p1, 0x1

    .line 162
    iput-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/video/GSYADVideoPlayer;->mChangePosition:Z

    .line 163
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/GSYADVideoPlayer;->getCurrentPositionWhenPlaying()I

    move-result p1

    iput p1, p0, Lcom/shuyu/gsyvideoplayer/video/GSYADVideoPlayer;->mDownPosition:I

    goto :goto_0

    .line 165
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->touchSurfaceMoveFullLogic(FF)V

    :cond_2
    :goto_0
    return-void
.end method

.method protected touchSurfaceUp()V
    .locals 1

    .line 175
    iget-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/video/GSYADVideoPlayer;->mChangePosition:Z

    if-eqz v0, :cond_0

    return-void

    .line 178
    :cond_0
    invoke-super {p0}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->touchSurfaceUp()V

    return-void
.end method

.method protected updateStartImage()V
    .locals 3

    .line 114
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/GSYADVideoPlayer;->mStartButton:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 115
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/GSYADVideoPlayer;->mStartButton:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    .line 118
    iget v1, p0, Lcom/shuyu/gsyvideoplayer/video/GSYADVideoPlayer;->mCurrentState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 119
    sget v1, Lcom/shuyu/gsyvideoplayer/R$drawable;->empty_drawable:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 123
    :cond_0
    iget v1, p0, Lcom/shuyu/gsyvideoplayer/video/GSYADVideoPlayer;->mCurrentState:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_1

    .line 124
    sget v1, Lcom/shuyu/gsyvideoplayer/R$drawable;->video_click_error_selector:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 127
    :cond_1
    sget v1, Lcom/shuyu/gsyvideoplayer/R$drawable;->empty_drawable:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_2
    :goto_0
    return-void
.end method
