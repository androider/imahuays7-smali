.class Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView$ProgressTimerTask;
.super Ljava/util/TimerTask;
.source "GSYVideoControlView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProgressTimerTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;


# direct methods
.method private constructor <init>(Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;)V
    .locals 0

    .line 1350
    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView$ProgressTimerTask;->this$0:Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView$1;)V
    .locals 0

    .line 1350
    invoke-direct {p0, p1}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView$ProgressTimerTask;-><init>(Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1353
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView$ProgressTimerTask;->this$0:Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;

    iget v0, v0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mCurrentState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView$ProgressTimerTask;->this$0:Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;

    iget v0, v0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mCurrentState:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 1354
    :cond_0
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView$ProgressTimerTask;->this$0:Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;

    new-instance v1, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView$ProgressTimerTask$1;

    invoke-direct {v1, p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView$ProgressTimerTask$1;-><init>(Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView$ProgressTimerTask;)V

    invoke-virtual {v0, v1}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method
