.class Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView$2;
.super Ljava/lang/Object;
.source "GSYVideoView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->onLossAudio()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;


# direct methods
.method constructor <init>(Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;)V
    .locals 0

    .line 387
    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView$2;->this$0:Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 389
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView$2;->this$0:Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;

    iget-boolean v0, v0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mReleaseWhenLossAudio:Z

    if-eqz v0, :cond_0

    .line 390
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView$2;->this$0:Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;

    invoke-virtual {v0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->releaseVideos()V

    goto :goto_0

    .line 392
    :cond_0
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView$2;->this$0:Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;

    invoke-virtual {v0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->onVideoPause()V

    :goto_0
    return-void
.end method
