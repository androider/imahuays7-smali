.class public Lcom/shuyu/gsyvideoplayer/video/NormalGSYVideoPlayer;
.super Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;
.source "NormalGSYVideoPlayer.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/Boolean;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1, p2}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;-><init>(Landroid/content/Context;Ljava/lang/Boolean;)V

    return-void
.end method


# virtual methods
.method public getLayoutId()I
    .locals 1

    .line 31
    sget v0, Lcom/shuyu/gsyvideoplayer/R$layout;->video_layout_normal:I

    return v0
.end method

.method protected updateStartImage()V
    .locals 3

    .line 36
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/NormalGSYVideoPlayer;->mStartButton:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 37
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/NormalGSYVideoPlayer;->mStartButton:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    .line 40
    iget v1, p0, Lcom/shuyu/gsyvideoplayer/video/NormalGSYVideoPlayer;->mCurrentState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 41
    sget v1, Lcom/shuyu/gsyvideoplayer/R$drawable;->video_click_pause_selector:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 44
    :cond_0
    iget v1, p0, Lcom/shuyu/gsyvideoplayer/video/NormalGSYVideoPlayer;->mCurrentState:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_1

    .line 45
    sget v1, Lcom/shuyu/gsyvideoplayer/R$drawable;->video_click_play_selector:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 48
    :cond_1
    sget v1, Lcom/shuyu/gsyvideoplayer/R$drawable;->video_click_play_selector:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_2
    :goto_0
    return-void
.end method
