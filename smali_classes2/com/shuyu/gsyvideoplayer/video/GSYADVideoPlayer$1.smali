.class Lcom/shuyu/gsyvideoplayer/video/GSYADVideoPlayer$1;
.super Ljava/lang/Object;
.source "GSYADVideoPlayer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shuyu/gsyvideoplayer/video/GSYADVideoPlayer;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shuyu/gsyvideoplayer/video/GSYADVideoPlayer;


# direct methods
.method constructor <init>(Lcom/shuyu/gsyvideoplayer/video/GSYADVideoPlayer;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/GSYADVideoPlayer$1;->this$0:Lcom/shuyu/gsyvideoplayer/video/GSYADVideoPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 53
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/GSYADVideoPlayer$1;->this$0:Lcom/shuyu/gsyvideoplayer/video/GSYADVideoPlayer;

    invoke-virtual {p1}, Lcom/shuyu/gsyvideoplayer/video/GSYADVideoPlayer;->getGSYVideoManager()Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;

    move-result-object p1

    invoke-interface {p1}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;->listener()Lcom/shuyu/gsyvideoplayer/c/a;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 54
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/GSYADVideoPlayer$1;->this$0:Lcom/shuyu/gsyvideoplayer/video/GSYADVideoPlayer;

    invoke-virtual {p1}, Lcom/shuyu/gsyvideoplayer/video/GSYADVideoPlayer;->getGSYVideoManager()Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;

    move-result-object p1

    invoke-interface {p1}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;->listener()Lcom/shuyu/gsyvideoplayer/c/a;

    move-result-object p1

    invoke-interface {p1}, Lcom/shuyu/gsyvideoplayer/c/a;->onAutoCompletion()V

    :cond_0
    return-void
.end method
