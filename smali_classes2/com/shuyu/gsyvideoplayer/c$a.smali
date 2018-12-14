.class Lcom/shuyu/gsyvideoplayer/c$a;
.super Landroid/os/Handler;
.source "GSYVideoBaseManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shuyu/gsyvideoplayer/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/shuyu/gsyvideoplayer/c;


# direct methods
.method constructor <init>(Lcom/shuyu/gsyvideoplayer/c;Landroid/os/Looper;)V
    .locals 0

    .line 555
    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/c$a;->a:Lcom/shuyu/gsyvideoplayer/c;

    .line 556
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 561
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 562
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 580
    :pswitch_0
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/c$a;->a:Lcom/shuyu/gsyvideoplayer/c;

    invoke-static {v0, p1}, Lcom/shuyu/gsyvideoplayer/c;->b(Lcom/shuyu/gsyvideoplayer/c;Landroid/os/Message;)V

    goto :goto_0

    .line 569
    :pswitch_1
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/c$a;->a:Lcom/shuyu/gsyvideoplayer/c;

    iget-object p1, p1, Lcom/shuyu/gsyvideoplayer/c;->l:Lcom/shuyu/gsyvideoplayer/e/b;

    if-eqz p1, :cond_0

    .line 570
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/c$a;->a:Lcom/shuyu/gsyvideoplayer/c;

    iget-object p1, p1, Lcom/shuyu/gsyvideoplayer/c;->l:Lcom/shuyu/gsyvideoplayer/e/b;

    invoke-interface {p1}, Lcom/shuyu/gsyvideoplayer/e/b;->c()V

    .line 572
    :cond_0
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/c$a;->a:Lcom/shuyu/gsyvideoplayer/c;

    iget-object p1, p1, Lcom/shuyu/gsyvideoplayer/c;->m:Lcom/shuyu/gsyvideoplayer/b/c;

    if-eqz p1, :cond_1

    .line 573
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/c$a;->a:Lcom/shuyu/gsyvideoplayer/c;

    iget-object p1, p1, Lcom/shuyu/gsyvideoplayer/c;->m:Lcom/shuyu/gsyvideoplayer/b/c;

    invoke-interface {p1}, Lcom/shuyu/gsyvideoplayer/b/c;->a()V

    .line 575
    :cond_1
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/c$a;->a:Lcom/shuyu/gsyvideoplayer/c;

    const/4 v0, 0x0

    iput v0, p1, Lcom/shuyu/gsyvideoplayer/c;->r:I

    .line 576
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/c$a;->a:Lcom/shuyu/gsyvideoplayer/c;

    invoke-virtual {p1, v0}, Lcom/shuyu/gsyvideoplayer/c;->a(Z)V

    .line 577
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/c$a;->a:Lcom/shuyu/gsyvideoplayer/c;

    invoke-virtual {p1}, Lcom/shuyu/gsyvideoplayer/c;->e()V

    goto :goto_0

    .line 564
    :pswitch_2
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/c$a;->a:Lcom/shuyu/gsyvideoplayer/c;

    invoke-static {v0, p1}, Lcom/shuyu/gsyvideoplayer/c;->a(Lcom/shuyu/gsyvideoplayer/c;Landroid/os/Message;)V

    :goto_0
    :pswitch_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
