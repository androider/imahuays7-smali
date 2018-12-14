.class Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView$1;
.super Ljava/lang/Object;
.source "GSYVideoView.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;
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

    .line 357
    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView$1;->this$0:Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 365
    :pswitch_0
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView$1;->this$0:Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;

    invoke-virtual {p1}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->onLossAudio()V

    goto :goto_0

    .line 368
    :pswitch_1
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView$1;->this$0:Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;

    invoke-virtual {p1}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->onLossTransientAudio()V

    goto :goto_0

    .line 371
    :pswitch_2
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView$1;->this$0:Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;

    invoke-virtual {p1}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->onLossTransientCanDuck()V

    goto :goto_0

    .line 362
    :cond_0
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView$1;->this$0:Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;

    invoke-virtual {p1}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->onGankAudio()V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
