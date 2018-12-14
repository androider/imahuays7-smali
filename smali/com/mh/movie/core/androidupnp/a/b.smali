.class public Lcom/mh/movie/core/androidupnp/a/b;
.super Ljava/lang/Object;
.source "SubscriptionControl.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private a:Lcom/mh/movie/core/androidupnp/service/a/a;

.field private b:Lcom/mh/movie/core/androidupnp/service/a/c;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/mh/movie/core/androidupnp/a/b;->a:Lcom/mh/movie/core/androidupnp/service/a/a;

    invoke-static {v0}, Lcom/mh/movie/core/androidupnp/d/b;->b(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/mh/movie/core/androidupnp/a/b;->a:Lcom/mh/movie/core/androidupnp/service/a/a;

    invoke-virtual {v0}, Lcom/mh/movie/core/androidupnp/service/a/a;->end()V

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/mh/movie/core/androidupnp/a/b;->b:Lcom/mh/movie/core/androidupnp/service/a/c;

    invoke-static {v0}, Lcom/mh/movie/core/androidupnp/d/b;->b(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 64
    iget-object v0, p0, Lcom/mh/movie/core/androidupnp/a/b;->b:Lcom/mh/movie/core/androidupnp/service/a/c;

    invoke-virtual {v0}, Lcom/mh/movie/core/androidupnp/service/a/c;->end()V

    :cond_1
    return-void
.end method

.method public a(Lcom/mh/movie/core/androidupnp/b/h;Landroid/content/Context;)V
    .locals 3
    .param p1    # Lcom/mh/movie/core/androidupnp/b/h;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mh/movie/core/androidupnp/b/h<",
            "Lorg/fourthline/cling/model/meta/Device;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .line 32
    iget-object v0, p0, Lcom/mh/movie/core/androidupnp/a/b;->a:Lcom/mh/movie/core/androidupnp/service/a/a;

    invoke-static {v0}, Lcom/mh/movie/core/androidupnp/d/b;->b(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 33
    iget-object v0, p0, Lcom/mh/movie/core/androidupnp/a/b;->a:Lcom/mh/movie/core/androidupnp/service/a/a;

    invoke-virtual {v0}, Lcom/mh/movie/core/androidupnp/service/a/a;->end()V

    .line 35
    :cond_0
    invoke-static {}, Lcom/mh/movie/core/androidupnp/d/a;->a()Lorg/fourthline/cling/controlpoint/ControlPoint;

    move-result-object v0

    .line 36
    invoke-static {v0}, Lcom/mh/movie/core/androidupnp/d/b;->a(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 40
    :cond_1
    new-instance v1, Lcom/mh/movie/core/androidupnp/service/a/a;

    invoke-interface {p1}, Lcom/mh/movie/core/androidupnp/b/h;->b()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/fourthline/cling/model/meta/Device;

    sget-object v2, Lcom/mh/movie/core/androidupnp/service/b/a;->a:Lorg/fourthline/cling/model/types/ServiceType;

    invoke-virtual {p1, v2}, Lorg/fourthline/cling/model/meta/Device;->findService(Lorg/fourthline/cling/model/types/ServiceType;)Lorg/fourthline/cling/model/meta/Service;

    move-result-object p1

    invoke-direct {v1, p1, p2}, Lcom/mh/movie/core/androidupnp/service/a/a;-><init>(Lorg/fourthline/cling/model/meta/Service;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/mh/movie/core/androidupnp/a/b;->a:Lcom/mh/movie/core/androidupnp/service/a/a;

    .line 41
    iget-object p1, p0, Lcom/mh/movie/core/androidupnp/a/b;->a:Lcom/mh/movie/core/androidupnp/service/a/a;

    invoke-interface {v0, p1}, Lorg/fourthline/cling/controlpoint/ControlPoint;->execute(Lorg/fourthline/cling/controlpoint/SubscriptionCallback;)V

    return-void
.end method

.method public b(Lcom/mh/movie/core/androidupnp/b/h;Landroid/content/Context;)V
    .locals 3
    .param p1    # Lcom/mh/movie/core/androidupnp/b/h;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mh/movie/core/androidupnp/b/h<",
            "Lorg/fourthline/cling/model/meta/Device;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .line 46
    iget-object v0, p0, Lcom/mh/movie/core/androidupnp/a/b;->b:Lcom/mh/movie/core/androidupnp/service/a/c;

    invoke-static {v0}, Lcom/mh/movie/core/androidupnp/d/b;->b(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/mh/movie/core/androidupnp/a/b;->b:Lcom/mh/movie/core/androidupnp/service/a/c;

    invoke-virtual {v0}, Lcom/mh/movie/core/androidupnp/service/a/c;->end()V

    .line 49
    :cond_0
    invoke-static {}, Lcom/mh/movie/core/androidupnp/d/a;->a()Lorg/fourthline/cling/controlpoint/ControlPoint;

    move-result-object v0

    .line 50
    invoke-static {v0}, Lcom/mh/movie/core/androidupnp/d/b;->a(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 53
    :cond_1
    new-instance v1, Lcom/mh/movie/core/androidupnp/service/a/c;

    invoke-interface {p1}, Lcom/mh/movie/core/androidupnp/b/h;->b()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/fourthline/cling/model/meta/Device;

    sget-object v2, Lcom/mh/movie/core/androidupnp/service/b/a;->b:Lorg/fourthline/cling/model/types/ServiceType;

    invoke-virtual {p1, v2}, Lorg/fourthline/cling/model/meta/Device;->findService(Lorg/fourthline/cling/model/types/ServiceType;)Lorg/fourthline/cling/model/meta/Service;

    move-result-object p1

    invoke-direct {v1, p1, p2}, Lcom/mh/movie/core/androidupnp/service/a/c;-><init>(Lorg/fourthline/cling/model/meta/Service;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/mh/movie/core/androidupnp/a/b;->b:Lcom/mh/movie/core/androidupnp/service/a/c;

    .line 55
    iget-object p1, p0, Lcom/mh/movie/core/androidupnp/a/b;->b:Lcom/mh/movie/core/androidupnp/service/a/c;

    invoke-interface {v0, p1}, Lorg/fourthline/cling/controlpoint/ControlPoint;->execute(Lorg/fourthline/cling/controlpoint/SubscriptionCallback;)V

    return-void
.end method
