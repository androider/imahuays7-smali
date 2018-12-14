.class Lcom/mh/movie/core/androidupnp/a$3;
.super Ljava/lang/Object;
.source "AndroidupnpMain.java"

# interfaces
.implements Lcom/mh/movie/core/androidupnp/a/a/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/androidupnp/a;->d()V
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

    .line 227
    iput-object p1, p0, Lcom/mh/movie/core/androidupnp/a$3;->a:Lcom/mh/movie/core/androidupnp/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/mh/movie/core/androidupnp/b/i;)V
    .locals 2

    .line 230
    invoke-static {}, Lcom/mh/movie/core/androidupnp/a;->h()Ljava/lang/String;

    move-result-object v0

    const-string v1, "stop success"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    iget-object v0, p0, Lcom/mh/movie/core/androidupnp/a$3;->a:Lcom/mh/movie/core/androidupnp/a;

    invoke-static {v0}, Lcom/mh/movie/core/androidupnp/a;->b(Lcom/mh/movie/core/androidupnp/a;)Lcom/mh/movie/core/androidupnp/a$b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/mh/movie/core/androidupnp/a$3;->a:Lcom/mh/movie/core/androidupnp/a;

    invoke-static {v0}, Lcom/mh/movie/core/androidupnp/a;->b(Lcom/mh/movie/core/androidupnp/a;)Lcom/mh/movie/core/androidupnp/a$b;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/mh/movie/core/androidupnp/a$b;->a(ZLjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public b(Lcom/mh/movie/core/androidupnp/b/i;)V
    .locals 2

    .line 238
    invoke-static {}, Lcom/mh/movie/core/androidupnp/a;->h()Ljava/lang/String;

    move-result-object v0

    const-string v1, "stop fail"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    iget-object v0, p0, Lcom/mh/movie/core/androidupnp/a$3;->a:Lcom/mh/movie/core/androidupnp/a;

    invoke-static {v0}, Lcom/mh/movie/core/androidupnp/a;->b(Lcom/mh/movie/core/androidupnp/a;)Lcom/mh/movie/core/androidupnp/a$b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/mh/movie/core/androidupnp/a$3;->a:Lcom/mh/movie/core/androidupnp/a;

    invoke-static {v0}, Lcom/mh/movie/core/androidupnp/a;->b(Lcom/mh/movie/core/androidupnp/a;)Lcom/mh/movie/core/androidupnp/a$b;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/mh/movie/core/androidupnp/a$b;->a(ZLjava/lang/String;)V

    :cond_0
    return-void
.end method
