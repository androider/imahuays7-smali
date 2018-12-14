.class Lcom/mh/movie/core/androidupnp/a$4;
.super Ljava/lang/Object;
.source "AndroidupnpMain.java"

# interfaces
.implements Lcom/mh/movie/core/androidupnp/a/a/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/androidupnp/a;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mh/movie/core/androidupnp/a;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/androidupnp/a;)V
    .locals 0

    .line 251
    iput-object p1, p0, Lcom/mh/movie/core/androidupnp/a$4;->a:Lcom/mh/movie/core/androidupnp/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/mh/movie/core/androidupnp/b/i;)V
    .locals 1

    .line 254
    invoke-static {}, Lcom/mh/movie/core/androidupnp/a;->h()Ljava/lang/String;

    move-result-object p1

    const-string v0, "play success"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public b(Lcom/mh/movie/core/androidupnp/b/i;)V
    .locals 1

    .line 259
    invoke-static {}, Lcom/mh/movie/core/androidupnp/a;->h()Ljava/lang/String;

    move-result-object p1

    const-string v0, "play fail"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    iget-object p1, p0, Lcom/mh/movie/core/androidupnp/a$4;->a:Lcom/mh/movie/core/androidupnp/a;

    invoke-static {p1}, Lcom/mh/movie/core/androidupnp/a;->c(Lcom/mh/movie/core/androidupnp/a;)Landroid/os/Handler;

    move-result-object p1

    const/16 v0, 0xa5

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
