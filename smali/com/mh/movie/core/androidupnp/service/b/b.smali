.class public Lcom/mh/movie/core/androidupnp/service/b/b;
.super Ljava/lang/Object;
.source "DeviceManager.java"

# interfaces
.implements Lcom/mh/movie/core/androidupnp/service/b/c;


# static fields
.field private static final a:Ljava/lang/String; = "b"


# instance fields
.field private b:Lcom/mh/movie/core/androidupnp/b/c;

.field private c:Lcom/mh/movie/core/androidupnp/a/b;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Lcom/mh/movie/core/androidupnp/a/b;

    invoke-direct {v0}, Lcom/mh/movie/core/androidupnp/a/b;-><init>()V

    iput-object v0, p0, Lcom/mh/movie/core/androidupnp/service/b/b;->c:Lcom/mh/movie/core/androidupnp/a/b;

    return-void
.end method


# virtual methods
.method public a()Lcom/mh/movie/core/androidupnp/b/h;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/mh/movie/core/androidupnp/service/b/b;->b:Lcom/mh/movie/core/androidupnp/b/c;

    return-object v0
.end method

.method public a(Landroid/content/Context;)V
    .locals 2

    .line 72
    iget-object v0, p0, Lcom/mh/movie/core/androidupnp/service/b/b;->b:Lcom/mh/movie/core/androidupnp/b/c;

    invoke-static {v0}, Lcom/mh/movie/core/androidupnp/d/b;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/mh/movie/core/androidupnp/service/b/b;->c:Lcom/mh/movie/core/androidupnp/a/b;

    iget-object v1, p0, Lcom/mh/movie/core/androidupnp/service/b/b;->b:Lcom/mh/movie/core/androidupnp/b/c;

    invoke-virtual {v0, v1, p1}, Lcom/mh/movie/core/androidupnp/a/b;->a(Lcom/mh/movie/core/androidupnp/b/h;Landroid/content/Context;)V

    return-void
.end method

.method public a(Lcom/mh/movie/core/androidupnp/b/h;)V
    .locals 2

    .line 46
    sget-object v0, Lcom/mh/movie/core/androidupnp/service/b/b;->a:Ljava/lang/String;

    const-string v1, "Change selected device."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    check-cast p1, Lcom/mh/movie/core/androidupnp/b/c;

    iput-object p1, p0, Lcom/mh/movie/core/androidupnp/service/b/b;->b:Lcom/mh/movie/core/androidupnp/b/c;

    .line 50
    invoke-static {}, Lcom/mh/movie/core/androidupnp/b/d;->a()Lcom/mh/movie/core/androidupnp/b/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mh/movie/core/androidupnp/b/d;->b()Ljava/util/Collection;

    move-result-object p1

    .line 51
    invoke-static {p1}, Lcom/mh/movie/core/androidupnp/d/b;->b(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 52
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/androidupnp/b/c;

    .line 53
    invoke-virtual {v0, v1}, Lcom/mh/movie/core/androidupnp/b/c;->a(Z)V

    goto :goto_0

    .line 57
    :cond_0
    iget-object p1, p0, Lcom/mh/movie/core/androidupnp/service/b/b;->b:Lcom/mh/movie/core/androidupnp/b/c;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/mh/movie/core/androidupnp/b/c;->a(Z)V

    .line 59
    invoke-static {}, Lcom/mh/movie/core/androidupnp/b;->a()Lcom/mh/movie/core/androidupnp/b;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/mh/movie/core/androidupnp/b;->a(Z)V

    return-void
.end method

.method public b()V
    .locals 2

    .line 64
    iget-object v0, p0, Lcom/mh/movie/core/androidupnp/service/b/b;->b:Lcom/mh/movie/core/androidupnp/b/c;

    invoke-static {v0}, Lcom/mh/movie/core/androidupnp/d/b;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/mh/movie/core/androidupnp/service/b/b;->b:Lcom/mh/movie/core/androidupnp/b/c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/androidupnp/b/c;->a(Z)V

    return-void
.end method

.method public b(Landroid/content/Context;)V
    .locals 2

    .line 80
    iget-object v0, p0, Lcom/mh/movie/core/androidupnp/service/b/b;->b:Lcom/mh/movie/core/androidupnp/b/c;

    invoke-static {v0}, Lcom/mh/movie/core/androidupnp/d/b;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/mh/movie/core/androidupnp/service/b/b;->c:Lcom/mh/movie/core/androidupnp/a/b;

    iget-object v1, p0, Lcom/mh/movie/core/androidupnp/service/b/b;->b:Lcom/mh/movie/core/androidupnp/b/c;

    invoke-virtual {v0, v1, p1}, Lcom/mh/movie/core/androidupnp/a/b;->b(Lcom/mh/movie/core/androidupnp/b/h;Landroid/content/Context;)V

    return-void
.end method

.method public c()V
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/mh/movie/core/androidupnp/service/b/b;->c:Lcom/mh/movie/core/androidupnp/a/b;

    invoke-static {v0}, Lcom/mh/movie/core/androidupnp/d/b;->b(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/mh/movie/core/androidupnp/service/b/b;->c:Lcom/mh/movie/core/androidupnp/a/b;

    invoke-virtual {v0}, Lcom/mh/movie/core/androidupnp/a/b;->a()V

    :cond_0
    return-void
.end method
