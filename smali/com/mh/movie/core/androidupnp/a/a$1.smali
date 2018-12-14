.class Lcom/mh/movie/core/androidupnp/a/a$1;
.super Ljava/lang/Object;
.source "ClingPlayControl.java"

# interfaces
.implements Lcom/mh/movie/core/androidupnp/a/a/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/androidupnp/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mh/movie/core/androidupnp/a/a/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lcom/mh/movie/core/androidupnp/a/a/a;

.field final synthetic f:Lcom/mh/movie/core/androidupnp/a/a;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/androidupnp/a/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mh/movie/core/androidupnp/a/a/a;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/mh/movie/core/androidupnp/a/a$1;->f:Lcom/mh/movie/core/androidupnp/a/a;

    iput-object p2, p0, Lcom/mh/movie/core/androidupnp/a/a$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/mh/movie/core/androidupnp/a/a$1;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/mh/movie/core/androidupnp/a/a$1;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/mh/movie/core/androidupnp/a/a$1;->d:Ljava/lang/String;

    iput-object p6, p0, Lcom/mh/movie/core/androidupnp/a/a$1;->e:Lcom/mh/movie/core/androidupnp/a/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/mh/movie/core/androidupnp/b/i;)V
    .locals 6

    .line 70
    iget-object v0, p0, Lcom/mh/movie/core/androidupnp/a/a$1;->f:Lcom/mh/movie/core/androidupnp/a/a;

    iget-object v1, p0, Lcom/mh/movie/core/androidupnp/a/a$1;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/mh/movie/core/androidupnp/a/a$1;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/mh/movie/core/androidupnp/a/a$1;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/mh/movie/core/androidupnp/a/a$1;->d:Ljava/lang/String;

    new-instance v5, Lcom/mh/movie/core/androidupnp/a/a$1$1;

    invoke-direct {v5, p0}, Lcom/mh/movie/core/androidupnp/a/a$1$1;-><init>(Lcom/mh/movie/core/androidupnp/a/a$1;)V

    invoke-static/range {v0 .. v5}, Lcom/mh/movie/core/androidupnp/a/a;->a(Lcom/mh/movie/core/androidupnp/a/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mh/movie/core/androidupnp/a/a/a;)V

    return-void
.end method

.method public b(Lcom/mh/movie/core/androidupnp/b/i;)V
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/mh/movie/core/androidupnp/a/a$1;->e:Lcom/mh/movie/core/androidupnp/a/a/a;

    invoke-static {v0}, Lcom/mh/movie/core/androidupnp/d/b;->b(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/mh/movie/core/androidupnp/a/a$1;->e:Lcom/mh/movie/core/androidupnp/a/a/a;

    invoke-interface {v0, p1}, Lcom/mh/movie/core/androidupnp/a/a/a;->b(Lcom/mh/movie/core/androidupnp/b/i;)V

    :cond_0
    return-void
.end method
