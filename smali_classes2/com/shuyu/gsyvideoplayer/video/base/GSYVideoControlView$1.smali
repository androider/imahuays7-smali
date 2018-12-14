.class Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView$1;
.super Ljava/lang/Object;
.source "GSYVideoControlView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->init(Landroid/content/Context;)V
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

    .line 257
    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView$1;->this$0:Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7

    .line 261
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView$1;->this$0:Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;

    iget-boolean p1, p1, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mIfCurrentIsFullscreen:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView$1;->this$0:Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;

    iget-boolean p1, p1, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mLockCurScreen:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView$1;->this$0:Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;

    iget-boolean p1, p1, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mNeedLockFull:Z

    if-eqz p1, :cond_0

    .line 262
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView$1;->this$0:Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;

    iget-object p1, p1, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {p1, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 265
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    .line 266
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    .line 268
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_0

    .line 279
    :pswitch_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView$1;->this$0:Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;

    invoke-static {v3}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->access$000(Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;)J

    move-result-wide v3

    sub-long v5, v1, v3

    iget-object v1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView$1;->this$0:Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;

    invoke-static {v1}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->access$100(Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;)J

    move-result-wide v1

    cmp-long v3, v5, v1

    if-lez v3, :cond_4

    .line 280
    iget-object v1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView$1;->this$0:Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;

    iget v1, v1, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mDownX:F

    sub-float/2addr p1, v1

    .line 281
    iget-object v1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView$1;->this$0:Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;

    iget v1, v1, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mDownY:F

    sub-float v1, v0, v1

    .line 283
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 284
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    .line 286
    iget-object v4, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView$1;->this$0:Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;

    iget-boolean v4, v4, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mIfCurrentIsFullscreen:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView$1;->this$0:Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;

    iget-boolean v4, v4, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mIsTouchWigetFull:Z

    if-nez v4, :cond_2

    :cond_1
    iget-object v4, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView$1;->this$0:Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;

    iget-boolean v4, v4, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mIsTouchWiget:Z

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView$1;->this$0:Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;

    iget-boolean v4, v4, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mIfCurrentIsFullscreen:Z

    if-nez v4, :cond_3

    .line 288
    :cond_2
    iget-object v4, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView$1;->this$0:Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;

    iget-boolean v4, v4, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mChangePosition:Z

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView$1;->this$0:Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;

    iget-boolean v4, v4, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mChangeVolume:Z

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView$1;->this$0:Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;

    iget-boolean v4, v4, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mBrightness:Z

    if-nez v4, :cond_3

    .line 289
    iget-object v4, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView$1;->this$0:Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;

    invoke-virtual {v4, v2, v3}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->touchSurfaceMoveFullLogic(FF)V

    .line 292
    :cond_3
    iget-object v2, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView$1;->this$0:Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;

    invoke-virtual {v2, p1, v1, v0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->touchSurfaceMove(FFF)V

    goto :goto_0

    .line 298
    :pswitch_1
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView$1;->this$0:Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;

    invoke-virtual {p1}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->startDismissControlViewTimer()V

    .line 300
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView$1;->this$0:Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;

    invoke-virtual {p1}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->touchSurfaceUp()V

    .line 302
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView$1;->this$0:Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;

    invoke-virtual {p1}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->startProgressTimer()V

    .line 305
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView$1;->this$0:Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;

    iget-boolean p1, p1, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mHideKey:Z

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView$1;->this$0:Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;

    iget-boolean p1, p1, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mShowVKey:Z

    if-eqz p1, :cond_4

    const/4 p1, 0x1

    return p1

    .line 272
    :pswitch_2
    iget-object v1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView$1;->this$0:Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->access$002(Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;J)J

    .line 273
    iget-object v1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView$1;->this$0:Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;

    invoke-virtual {v1, p1, v0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->touchSurfaceDown(FF)V

    .line 311
    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView$1;->this$0:Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;

    iget-object p1, p1, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {p1, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
