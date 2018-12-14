.class public Lcom/mh/movie/core/androidupnp/d/a;
.super Ljava/lang/Object;
.source "ClingUtils.java"


# direct methods
.method public static a()Lorg/fourthline/cling/controlpoint/ControlPoint;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 60
    invoke-static {}, Lcom/mh/movie/core/androidupnp/service/b/a;->a()Lcom/mh/movie/core/androidupnp/service/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mh/movie/core/androidupnp/service/b/a;->c()Lcom/mh/movie/core/androidupnp/b/g;

    move-result-object v0

    .line 61
    invoke-static {v0}, Lcom/mh/movie/core/androidupnp/d/b;->a(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 65
    :cond_0
    invoke-interface {v0}, Lcom/mh/movie/core/androidupnp/b/g;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/controlpoint/ControlPoint;

    return-object v0
.end method

.method public static a(Lorg/fourthline/cling/model/types/ServiceType;)Lorg/fourthline/cling/model/meta/Service;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 33
    invoke-static {}, Lcom/mh/movie/core/androidupnp/service/b/a;->a()Lcom/mh/movie/core/androidupnp/service/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mh/movie/core/androidupnp/service/b/a;->e()Lcom/mh/movie/core/androidupnp/b/h;

    move-result-object v0

    .line 34
    invoke-static {v0}, Lcom/mh/movie/core/androidupnp/d/b;->a(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 38
    :cond_0
    invoke-interface {v0}, Lcom/mh/movie/core/androidupnp/b/h;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/model/meta/Device;

    .line 39
    invoke-virtual {v0, p0}, Lorg/fourthline/cling/model/meta/Device;->findService(Lorg/fourthline/cling/model/types/ServiceType;)Lorg/fourthline/cling/model/meta/Service;

    move-result-object p0

    return-object p0
.end method
