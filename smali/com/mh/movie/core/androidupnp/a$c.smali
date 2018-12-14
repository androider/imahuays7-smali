.class Lcom/mh/movie/core/androidupnp/a$c;
.super Landroid/content/BroadcastReceiver;
.source "AndroidupnpMain.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mh/movie/core/androidupnp/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/mh/movie/core/androidupnp/a;


# direct methods
.method private constructor <init>(Lcom/mh/movie/core/androidupnp/a;)V
    .locals 0

    .line 331
    iput-object p1, p0, Lcom/mh/movie/core/androidupnp/a$c;->a:Lcom/mh/movie/core/androidupnp/a;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mh/movie/core/androidupnp/a;Lcom/mh/movie/core/androidupnp/a$1;)V
    .locals 0

    .line 331
    invoke-direct {p0, p1}, Lcom/mh/movie/core/androidupnp/a$c;-><init>(Lcom/mh/movie/core/androidupnp/a;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 335
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 336
    invoke-static {}, Lcom/mh/movie/core/androidupnp/a;->h()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Receive playback intent:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p2, "com.zane.androidupnp.action.playing"

    .line 337
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 338
    iget-object p1, p0, Lcom/mh/movie/core/androidupnp/a$c;->a:Lcom/mh/movie/core/androidupnp/a;

    invoke-static {p1}, Lcom/mh/movie/core/androidupnp/a;->c(Lcom/mh/movie/core/androidupnp/a;)Landroid/os/Handler;

    move-result-object p1

    const/16 p2, 0xa1

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 339
    invoke-static {}, Lcom/mh/movie/core/androidupnp/b;->a()Lcom/mh/movie/core/androidupnp/b;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/mh/movie/core/androidupnp/b;->a(Z)V

    goto :goto_0

    :cond_0
    const-string p2, "com.zane.androidupnp.action.paused_playback"

    .line 341
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 342
    iget-object p1, p0, Lcom/mh/movie/core/androidupnp/a$c;->a:Lcom/mh/movie/core/androidupnp/a;

    invoke-static {p1}, Lcom/mh/movie/core/androidupnp/a;->c(Lcom/mh/movie/core/androidupnp/a;)Landroid/os/Handler;

    move-result-object p1

    const/16 p2, 0xa2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_1
    const-string p2, "com.zane.androidupnp.action.stopped"

    .line 344
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 345
    iget-object p1, p0, Lcom/mh/movie/core/androidupnp/a$c;->a:Lcom/mh/movie/core/androidupnp/a;

    invoke-static {p1}, Lcom/mh/movie/core/androidupnp/a;->c(Lcom/mh/movie/core/androidupnp/a;)Landroid/os/Handler;

    move-result-object p1

    const/16 p2, 0xa3

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_2
    const-string p2, "com.zane.androidupnp.action.transitioning"

    .line 347
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 348
    iget-object p1, p0, Lcom/mh/movie/core/androidupnp/a$c;->a:Lcom/mh/movie/core/androidupnp/a;

    invoke-static {p1}, Lcom/mh/movie/core/androidupnp/a;->c(Lcom/mh/movie/core/androidupnp/a;)Landroid/os/Handler;

    move-result-object p1

    const/16 p2, 0xa4

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_3
    :goto_0
    return-void
.end method
