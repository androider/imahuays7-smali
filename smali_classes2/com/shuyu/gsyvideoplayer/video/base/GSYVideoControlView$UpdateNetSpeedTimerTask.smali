.class Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView$UpdateNetSpeedTimerTask;
.super Ljava/util/TimerTask;
.source "GSYVideoControlView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateNetSpeedTimerTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;


# direct methods
.method private constructor <init>(Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;)V
    .locals 0

    .line 1662
    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView$UpdateNetSpeedTimerTask;->this$0:Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView$1;)V
    .locals 0

    .line 1662
    invoke-direct {p0, p1}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView$UpdateNetSpeedTimerTask;-><init>(Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;)V

    return-void
.end method


# virtual methods
.method final synthetic lambda$run$0$GSYVideoControlView$UpdateNetSpeedTimerTask()V
    .locals 2

    .line 1673
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView$UpdateNetSpeedTimerTask;->this$0:Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;

    iget-object v1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView$UpdateNetSpeedTimerTask;->this$0:Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;

    invoke-virtual {v1}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->getBuffterPoint()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->onBufferingUpdate(I)V

    return-void
.end method

.method public run()V
    .locals 2

    .line 1667
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView$UpdateNetSpeedTimerTask;->this$0:Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;

    invoke-virtual {v0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->getActivityContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1669
    :cond_0
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView$UpdateNetSpeedTimerTask;->this$0:Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;

    iget v0, v0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mCurrentState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView$UpdateNetSpeedTimerTask;->this$0:Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;

    iget v0, v0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mCurrentState:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView$UpdateNetSpeedTimerTask;->this$0:Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;

    iget v0, v0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mCurrentState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView$UpdateNetSpeedTimerTask;->this$0:Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;

    iget v0, v0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mCurrentState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 1672
    :cond_1
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView$UpdateNetSpeedTimerTask;->this$0:Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;

    invoke-virtual {v0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->getActivityContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView$UpdateNetSpeedTimerTask$$Lambda$0;

    invoke-direct {v1, p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView$UpdateNetSpeedTimerTask$$Lambda$0;-><init>(Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView$UpdateNetSpeedTimerTask;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_2
    return-void
.end method
