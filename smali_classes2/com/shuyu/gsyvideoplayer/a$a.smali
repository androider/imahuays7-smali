.class Lcom/shuyu/gsyvideoplayer/a$a;
.super Landroid/os/Handler;
.source "GSYPreViewManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shuyu/gsyvideoplayer/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/shuyu/gsyvideoplayer/a;


# direct methods
.method constructor <init>(Lcom/shuyu/gsyvideoplayer/a;Landroid/os/Looper;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/a$a;->a:Lcom/shuyu/gsyvideoplayer/a;

    .line 58
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 63
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 64
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 72
    :pswitch_0
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/a$a;->a:Lcom/shuyu/gsyvideoplayer/a;

    invoke-static {p1}, Lcom/shuyu/gsyvideoplayer/a;->a(Lcom/shuyu/gsyvideoplayer/a;)Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 73
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/a$a;->a:Lcom/shuyu/gsyvideoplayer/a;

    invoke-static {p1}, Lcom/shuyu/gsyvideoplayer/a;->a(Lcom/shuyu/gsyvideoplayer/a;)Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    move-result-object p1

    invoke-virtual {p1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->release()V

    goto :goto_0

    .line 69
    :pswitch_1
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/a$a;->a:Lcom/shuyu/gsyvideoplayer/a;

    invoke-static {v0, p1}, Lcom/shuyu/gsyvideoplayer/a;->b(Lcom/shuyu/gsyvideoplayer/a;Landroid/os/Message;)V

    goto :goto_0

    .line 66
    :pswitch_2
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/a$a;->a:Lcom/shuyu/gsyvideoplayer/a;

    invoke-static {v0, p1}, Lcom/shuyu/gsyvideoplayer/a;->a(Lcom/shuyu/gsyvideoplayer/a;Landroid/os/Message;)V

    :cond_0
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
