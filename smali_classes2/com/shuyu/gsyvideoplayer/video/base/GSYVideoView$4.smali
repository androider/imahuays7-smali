.class Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView$4;
.super Ljava/lang/Object;
.source "GSYVideoView.java"

# interfaces
.implements Lcom/shuyu/gsyvideoplayer/utils/NetInfoModule$NetChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->createNetWorkState()V
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

    .line 887
    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView$4;->this$0:Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public changed(Ljava/lang/String;)V
    .locals 2

    .line 892
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView$4;->this$0:Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;

    iget-boolean v0, v0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->localPlayer:Z

    if-eqz v0, :cond_0

    return-void

    .line 894
    :cond_0
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView$4;->this$0:Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;

    iget-object v0, v0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mNetSate:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 895
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "******* change network state ******* "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/shuyu/gsyvideoplayer/utils/Debuger;->printfError(Ljava/lang/String;)V

    .line 896
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView$4;->this$0:Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mNetChanged:Z

    .line 897
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView$4;->this$0:Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;

    invoke-virtual {v0, p1}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->changeNetwork(Ljava/lang/String;)V

    .line 899
    :cond_1
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView$4;->this$0:Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;

    iput-object p1, v0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mNetSate:Ljava/lang/String;

    return-void
.end method
