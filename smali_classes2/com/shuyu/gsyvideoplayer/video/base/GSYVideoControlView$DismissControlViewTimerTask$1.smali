.class Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView$DismissControlViewTimerTask$1;
.super Ljava/lang/Object;
.source "GSYVideoControlView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView$DismissControlViewTimerTask;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView$DismissControlViewTimerTask;


# direct methods
.method constructor <init>(Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView$DismissControlViewTimerTask;)V
    .locals 0

    .line 1370
    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView$DismissControlViewTimerTask$1;->this$1:Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView$DismissControlViewTimerTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1373
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView$DismissControlViewTimerTask$1;->this$1:Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView$DismissControlViewTimerTask;

    iget-object v0, v0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView$DismissControlViewTimerTask;->this$0:Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;

    invoke-virtual {v0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->hideAllWidget()V

    .line 1374
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView$DismissControlViewTimerTask$1;->this$1:Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView$DismissControlViewTimerTask;

    iget-object v0, v0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView$DismissControlViewTimerTask;->this$0:Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;

    invoke-virtual {v0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->hideMenuTab()V

    .line 1375
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView$DismissControlViewTimerTask$1;->this$1:Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView$DismissControlViewTimerTask;

    iget-object v0, v0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView$DismissControlViewTimerTask;->this$0:Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;

    iget-object v1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView$DismissControlViewTimerTask$1;->this$1:Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView$DismissControlViewTimerTask;

    iget-object v1, v1, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView$DismissControlViewTimerTask;->this$0:Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;

    iget-object v1, v1, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mLockScreen:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->setViewShowState(Landroid/view/View;I)V

    .line 1376
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView$DismissControlViewTimerTask$1;->this$1:Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView$DismissControlViewTimerTask;

    iget-object v0, v0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView$DismissControlViewTimerTask;->this$0:Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;

    iget-boolean v0, v0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mHideKey:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView$DismissControlViewTimerTask$1;->this$1:Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView$DismissControlViewTimerTask;

    iget-object v0, v0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView$DismissControlViewTimerTask;->this$0:Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;

    iget-boolean v0, v0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mIfCurrentIsFullscreen:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView$DismissControlViewTimerTask$1;->this$1:Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView$DismissControlViewTimerTask;

    iget-object v0, v0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView$DismissControlViewTimerTask;->this$0:Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;

    iget-boolean v0, v0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mShowVKey:Z

    if-eqz v0, :cond_0

    .line 1377
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView$DismissControlViewTimerTask$1;->this$1:Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView$DismissControlViewTimerTask;

    iget-object v0, v0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView$DismissControlViewTimerTask;->this$0:Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;

    iget-object v0, v0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/shuyu/gsyvideoplayer/utils/CommonUtil;->hideNavKey(Landroid/content/Context;)V

    :cond_0
    return-void
.end method
