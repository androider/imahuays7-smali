.class public Lcom/mh/movie/core/androidupnp/b/e;
.super Lcom/mh/movie/core/androidupnp/b/a;
.source "ClingPositionResponse.java"

# interfaces
.implements Lcom/mh/movie/core/androidupnp/b/i;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mh/movie/core/androidupnp/b/a<",
        "Lorg/fourthline/cling/support/model/PositionInfo;",
        ">;",
        "Lcom/mh/movie/core/androidupnp/b/i<",
        "Lorg/fourthline/cling/support/model/PositionInfo;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/fourthline/cling/model/action/ActionInvocation;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lcom/mh/movie/core/androidupnp/b/a;-><init>(Lorg/fourthline/cling/model/action/ActionInvocation;)V

    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/model/action/ActionInvocation;Lorg/fourthline/cling/model/message/UpnpResponse;Ljava/lang/String;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2, p3}, Lcom/mh/movie/core/androidupnp/b/a;-><init>(Lorg/fourthline/cling/model/action/ActionInvocation;Lorg/fourthline/cling/model/message/UpnpResponse;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/model/action/ActionInvocation;Lorg/fourthline/cling/support/model/PositionInfo;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2}, Lcom/mh/movie/core/androidupnp/b/a;-><init>(Lorg/fourthline/cling/model/action/ActionInvocation;Ljava/lang/Object;)V

    return-void
.end method
