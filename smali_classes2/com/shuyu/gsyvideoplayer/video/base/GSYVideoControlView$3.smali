.class Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView$3;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "GSYVideoControlView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;


# direct methods
.method constructor <init>(Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;)V
    .locals 0

    .line 577
    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView$3;->this$0:Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 583
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView$3;->this$0:Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;

    iget-boolean v0, v0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mIfCurrentIsFullscreen:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView$3;->this$0:Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;

    iget-boolean v0, v0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mLockCurScreen:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView$3;->this$0:Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;

    iget-boolean v0, v0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mNeedLockFull:Z

    if-eqz v0, :cond_1

    .line 584
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView$3;->this$0:Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;

    iget-object v0, v0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mLockScreen:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 585
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView$3;->this$0:Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;

    iget-object v1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView$3;->this$0:Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;

    iget-object v1, v1, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mLockScreen:Landroid/widget/ImageView;

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->setViewShowState(Landroid/view/View;I)V

    goto :goto_0

    .line 587
    :cond_0
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView$3;->this$0:Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;

    iget-object v1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView$3;->this$0:Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;

    iget-object v1, v1, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mLockScreen:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->setViewShowState(Landroid/view/View;I)V

    .line 589
    :goto_0
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onDoubleTap(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 592
    :cond_1
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView$3;->this$0:Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;

    invoke-virtual {v0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->touchDoubleUp()V

    .line 593
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onDoubleTap(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 600
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView$3;->this$0:Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;

    iget-boolean v0, v0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mIfCurrentIsFullscreen:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView$3;->this$0:Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;

    iget-boolean v0, v0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mLockCurScreen:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView$3;->this$0:Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;

    iget-boolean v0, v0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mNeedLockFull:Z

    if-eqz v0, :cond_1

    .line 601
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView$3;->this$0:Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;

    iget-object v0, v0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mLockScreen:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 602
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView$3;->this$0:Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;

    iget-object v1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView$3;->this$0:Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;

    iget-object v1, v1, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mLockScreen:Landroid/widget/ImageView;

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->setViewShowState(Landroid/view/View;I)V

    goto :goto_0

    .line 604
    :cond_0
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView$3;->this$0:Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;

    iget-object v1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView$3;->this$0:Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;

    iget-object v1, v1, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mLockScreen:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->setViewShowState(Landroid/view/View;I)V

    .line 606
    :goto_0
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onSingleTapConfirmed(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 609
    :cond_1
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView$3;->this$0:Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;

    iget-boolean v0, v0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mChangePosition:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView$3;->this$0:Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;

    iget-boolean v0, v0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mChangeVolume:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView$3;->this$0:Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;

    iget-boolean v0, v0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mBrightness:Z

    if-nez v0, :cond_2

    .line 610
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView$3;->this$0:Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;

    invoke-virtual {v0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->onClickUiToggle()V

    .line 612
    :cond_2
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onSingleTapConfirmed(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
