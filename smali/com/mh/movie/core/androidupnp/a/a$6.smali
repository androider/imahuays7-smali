.class Lcom/mh/movie/core/androidupnp/a/a$6;
.super Lorg/fourthline/cling/support/renderingcontrol/callback/SetVolume;
.source "ClingPlayControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/androidupnp/a/a;->b(ILcom/mh/movie/core/androidupnp/a/a/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mh/movie/core/androidupnp/a/a/a;

.field final synthetic b:Lcom/mh/movie/core/androidupnp/a/a;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/androidupnp/a/a;Lorg/fourthline/cling/model/meta/Service;JLcom/mh/movie/core/androidupnp/a/a/a;)V
    .locals 0

    .line 237
    iput-object p1, p0, Lcom/mh/movie/core/androidupnp/a/a$6;->b:Lcom/mh/movie/core/androidupnp/a/a;

    iput-object p5, p0, Lcom/mh/movie/core/androidupnp/a/a$6;->a:Lcom/mh/movie/core/androidupnp/a/a/a;

    invoke-direct {p0, p2, p3, p4}, Lorg/fourthline/cling/support/renderingcontrol/callback/SetVolume;-><init>(Lorg/fourthline/cling/model/meta/Service;J)V

    return-void
.end method


# virtual methods
.method public failure(Lorg/fourthline/cling/model/action/ActionInvocation;Lorg/fourthline/cling/model/message/UpnpResponse;Ljava/lang/String;)V
    .locals 2

    .line 248
    iget-object v0, p0, Lcom/mh/movie/core/androidupnp/a/a$6;->a:Lcom/mh/movie/core/androidupnp/a/a/a;

    invoke-static {v0}, Lcom/mh/movie/core/androidupnp/d/b;->b(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 249
    iget-object v0, p0, Lcom/mh/movie/core/androidupnp/a/a$6;->a:Lcom/mh/movie/core/androidupnp/a/a/a;

    new-instance v1, Lcom/mh/movie/core/androidupnp/b/f;

    invoke-direct {v1, p1, p2, p3}, Lcom/mh/movie/core/androidupnp/b/f;-><init>(Lorg/fourthline/cling/model/action/ActionInvocation;Lorg/fourthline/cling/model/message/UpnpResponse;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/mh/movie/core/androidupnp/a/a/a;->b(Lcom/mh/movie/core/androidupnp/b/i;)V

    :cond_0
    return-void
.end method

.method public success(Lorg/fourthline/cling/model/action/ActionInvocation;)V
    .locals 2

    .line 241
    iget-object v0, p0, Lcom/mh/movie/core/androidupnp/a/a$6;->a:Lcom/mh/movie/core/androidupnp/a/a/a;

    invoke-static {v0}, Lcom/mh/movie/core/androidupnp/d/b;->b(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/mh/movie/core/androidupnp/a/a$6;->a:Lcom/mh/movie/core/androidupnp/a/a/a;

    new-instance v1, Lcom/mh/movie/core/androidupnp/b/f;

    invoke-direct {v1, p1}, Lcom/mh/movie/core/androidupnp/b/f;-><init>(Lorg/fourthline/cling/model/action/ActionInvocation;)V

    invoke-interface {v0, v1}, Lcom/mh/movie/core/androidupnp/a/a/a;->a(Lcom/mh/movie/core/androidupnp/b/i;)V

    :cond_0
    return-void
.end method
