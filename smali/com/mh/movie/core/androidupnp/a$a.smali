.class final Lcom/mh/movie/core/androidupnp/a$a;
.super Landroid/os/Handler;
.source "AndroidupnpMain.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mh/movie/core/androidupnp/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/mh/movie/core/androidupnp/a;


# direct methods
.method private constructor <init>(Lcom/mh/movie/core/androidupnp/a;)V
    .locals 0

    .line 298
    iput-object p1, p0, Lcom/mh/movie/core/androidupnp/a$a;->a:Lcom/mh/movie/core/androidupnp/a;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mh/movie/core/androidupnp/a;Lcom/mh/movie/core/androidupnp/a$1;)V
    .locals 0

    .line 298
    invoke-direct {p0, p1}, Lcom/mh/movie/core/androidupnp/a$a;-><init>(Lcom/mh/movie/core/androidupnp/a;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 301
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 302
    iget p1, p1, Landroid/os/Message;->what:I

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 322
    :pswitch_0
    invoke-static {}, Lcom/mh/movie/core/androidupnp/a;->h()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Execute ERROR_ACTION"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 319
    :pswitch_1
    invoke-static {}, Lcom/mh/movie/core/androidupnp/a;->h()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Execute TRANSITIONING_ACTION"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 314
    :pswitch_2
    invoke-static {}, Lcom/mh/movie/core/androidupnp/a;->h()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Execute STOP_ACTION"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    iget-object p1, p0, Lcom/mh/movie/core/androidupnp/a$a;->a:Lcom/mh/movie/core/androidupnp/a;

    iget-object p1, p1, Lcom/mh/movie/core/androidupnp/a;->a:Lcom/mh/movie/core/androidupnp/a/a;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/mh/movie/core/androidupnp/a/a;->a(I)V

    goto :goto_0

    .line 309
    :pswitch_3
    invoke-static {}, Lcom/mh/movie/core/androidupnp/a;->h()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Execute PAUSE_ACTION"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    iget-object p1, p0, Lcom/mh/movie/core/androidupnp/a$a;->a:Lcom/mh/movie/core/androidupnp/a;

    iget-object p1, p1, Lcom/mh/movie/core/androidupnp/a;->a:Lcom/mh/movie/core/androidupnp/a/a;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/mh/movie/core/androidupnp/a/a;->a(I)V

    goto :goto_0

    .line 304
    :pswitch_4
    invoke-static {}, Lcom/mh/movie/core/androidupnp/a;->h()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Execute PLAY_ACTION"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    iget-object p1, p0, Lcom/mh/movie/core/androidupnp/a$a;->a:Lcom/mh/movie/core/androidupnp/a;

    iget-object p1, p1, Lcom/mh/movie/core/androidupnp/a;->a:Lcom/mh/movie/core/androidupnp/a/a;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/mh/movie/core/androidupnp/a/a;->a(I)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xa1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
