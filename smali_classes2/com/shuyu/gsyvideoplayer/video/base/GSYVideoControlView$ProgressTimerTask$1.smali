.class Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView$ProgressTimerTask$1;
.super Ljava/lang/Object;
.source "GSYVideoControlView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView$ProgressTimerTask;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView$ProgressTimerTask;


# direct methods
.method constructor <init>(Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView$ProgressTimerTask;)V
    .locals 0

    .line 1354
    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView$ProgressTimerTask$1;->this$1:Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView$ProgressTimerTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1357
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView$ProgressTimerTask$1;->this$1:Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView$ProgressTimerTask;

    iget-object v0, v0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView$ProgressTimerTask;->this$0:Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->setTextAndProgress(I)V

    return-void
.end method
