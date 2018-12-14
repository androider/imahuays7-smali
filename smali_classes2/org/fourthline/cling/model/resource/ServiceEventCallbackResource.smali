.class public Lorg/fourthline/cling/model/resource/ServiceEventCallbackResource;
.super Lorg/fourthline/cling/model/resource/Resource;
.source "ServiceEventCallbackResource.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/fourthline/cling/model/resource/Resource<",
        "Lorg/fourthline/cling/model/meta/RemoteService;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/net/URI;Lorg/fourthline/cling/model/meta/RemoteService;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2}, Lorg/fourthline/cling/model/resource/Resource;-><init>(Ljava/net/URI;Ljava/lang/Object;)V

    return-void
.end method
