.class Lcom/mh/movie/core/androidupnp/a/a$8;
.super Lorg/fourthline/cling/support/avtransport/callback/GetPositionInfo;
.source "ClingPlayControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/androidupnp/a/a;->a(Lcom/mh/movie/core/androidupnp/a/a/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mh/movie/core/androidupnp/a/a/b;

.field final synthetic b:Lcom/mh/movie/core/androidupnp/a/a;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/androidupnp/a/a;Lorg/fourthline/cling/model/meta/Service;Lcom/mh/movie/core/androidupnp/a/a/b;)V
    .locals 0

    .line 340
    iput-object p1, p0, Lcom/mh/movie/core/androidupnp/a/a$8;->b:Lcom/mh/movie/core/androidupnp/a/a;

    iput-object p3, p0, Lcom/mh/movie/core/androidupnp/a/a$8;->a:Lcom/mh/movie/core/androidupnp/a/a/b;

    invoke-direct {p0, p2}, Lorg/fourthline/cling/support/avtransport/callback/GetPositionInfo;-><init>(Lorg/fourthline/cling/model/meta/Service;)V

    return-void
.end method


# virtual methods
.method public failure(Lorg/fourthline/cling/model/action/ActionInvocation;Lorg/fourthline/cling/model/message/UpnpResponse;Ljava/lang/String;)V
    .locals 2

    .line 343
    iget-object v0, p0, Lcom/mh/movie/core/androidupnp/a/a$8;->a:Lcom/mh/movie/core/androidupnp/a/a/b;

    invoke-static {v0}, Lcom/mh/movie/core/androidupnp/d/b;->b(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 344
    iget-object v0, p0, Lcom/mh/movie/core/androidupnp/a/a$8;->a:Lcom/mh/movie/core/androidupnp/a/a/b;

    new-instance v1, Lcom/mh/movie/core/androidupnp/b/e;

    invoke-direct {v1, p1, p2, p3}, Lcom/mh/movie/core/androidupnp/b/e;-><init>(Lorg/fourthline/cling/model/action/ActionInvocation;Lorg/fourthline/cling/model/message/UpnpResponse;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/mh/movie/core/androidupnp/a/a/b;->b(Lcom/mh/movie/core/androidupnp/b/i;)V

    :cond_0
    return-void
.end method

.method public received(Lorg/fourthline/cling/model/action/ActionInvocation;Lorg/fourthline/cling/support/model/PositionInfo;)V
    .locals 2

    .line 358
    iget-object v0, p0, Lcom/mh/movie/core/androidupnp/a/a$8;->a:Lcom/mh/movie/core/androidupnp/a/a/b;

    invoke-static {v0}, Lcom/mh/movie/core/androidupnp/d/b;->b(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 359
    iget-object v0, p0, Lcom/mh/movie/core/androidupnp/a/a$8;->a:Lcom/mh/movie/core/androidupnp/a/a/b;

    new-instance v1, Lcom/mh/movie/core/androidupnp/b/e;

    invoke-direct {v1, p1, p2}, Lcom/mh/movie/core/androidupnp/b/e;-><init>(Lorg/fourthline/cling/model/action/ActionInvocation;Lorg/fourthline/cling/support/model/PositionInfo;)V

    invoke-interface {v0, v1}, Lcom/mh/movie/core/androidupnp/a/a/b;->c(Lcom/mh/movie/core/androidupnp/b/i;)V

    :cond_0
    return-void
.end method

.method public success(Lorg/fourthline/cling/model/action/ActionInvocation;)V
    .locals 2

    .line 350
    invoke-super {p0, p1}, Lorg/fourthline/cling/support/avtransport/callback/GetPositionInfo;->success(Lorg/fourthline/cling/model/action/ActionInvocation;)V

    .line 351
    iget-object v0, p0, Lcom/mh/movie/core/androidupnp/a/a$8;->a:Lcom/mh/movie/core/androidupnp/a/a/b;

    invoke-static {v0}, Lcom/mh/movie/core/androidupnp/d/b;->b(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 352
    iget-object v0, p0, Lcom/mh/movie/core/androidupnp/a/a$8;->a:Lcom/mh/movie/core/androidupnp/a/a/b;

    new-instance v1, Lcom/mh/movie/core/androidupnp/b/e;

    invoke-direct {v1, p1}, Lcom/mh/movie/core/androidupnp/b/e;-><init>(Lorg/fourthline/cling/model/action/ActionInvocation;)V

    invoke-interface {v0, v1}, Lcom/mh/movie/core/androidupnp/a/a/b;->a(Lcom/mh/movie/core/androidupnp/b/i;)V

    :cond_0
    return-void
.end method
