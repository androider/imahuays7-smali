.class public Lcom/mh/movie/core/androidupnp/b/f;
.super Ljava/lang/Object;
.source "ClingResponse.java"

# interfaces
.implements Lcom/mh/movie/core/androidupnp/b/i;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/mh/movie/core/androidupnp/b/i<",
        "Lorg/fourthline/cling/model/action/ActionInvocation;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lorg/fourthline/cling/model/action/ActionInvocation;

.field private b:Lorg/fourthline/cling/model/message/UpnpResponse;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/fourthline/cling/model/action/ActionInvocation;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/mh/movie/core/androidupnp/b/f;->a:Lorg/fourthline/cling/model/action/ActionInvocation;

    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/model/action/ActionInvocation;Lorg/fourthline/cling/model/message/UpnpResponse;Ljava/lang/String;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/mh/movie/core/androidupnp/b/f;->a:Lorg/fourthline/cling/model/action/ActionInvocation;

    .line 36
    iput-object p2, p0, Lcom/mh/movie/core/androidupnp/b/f;->b:Lorg/fourthline/cling/model/message/UpnpResponse;

    .line 37
    iput-object p3, p0, Lcom/mh/movie/core/androidupnp/b/f;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public synthetic a()Ljava/lang/Object;
    .locals 1

    .line 12
    invoke-virtual {p0}, Lcom/mh/movie/core/androidupnp/b/f;->b()Lorg/fourthline/cling/model/action/ActionInvocation;

    move-result-object v0

    return-object v0
.end method

.method public b()Lorg/fourthline/cling/model/action/ActionInvocation;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
