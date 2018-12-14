.class public Lorg/fourthline/cling/model/profile/HeaderDeviceDetailsProvider;
.super Ljava/lang/Object;
.source "HeaderDeviceDetailsProvider.java"

# interfaces
.implements Lorg/fourthline/cling/model/profile/DeviceDetailsProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/fourthline/cling/model/profile/HeaderDeviceDetailsProvider$Key;
    }
.end annotation


# instance fields
.field private final defaultDeviceDetails:Lorg/fourthline/cling/model/meta/DeviceDetails;

.field private final headerDetails:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/fourthline/cling/model/profile/HeaderDeviceDetailsProvider$Key;",
            "Lorg/fourthline/cling/model/meta/DeviceDetails;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/fourthline/cling/model/meta/DeviceDetails;)V
    .locals 1

    const/4 v0, 0x0

    .line 70
    invoke-direct {p0, p1, v0}, Lorg/fourthline/cling/model/profile/HeaderDeviceDetailsProvider;-><init>(Lorg/fourthline/cling/model/meta/DeviceDetails;Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/model/meta/DeviceDetails;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/fourthline/cling/model/meta/DeviceDetails;",
            "Ljava/util/Map<",
            "Lorg/fourthline/cling/model/profile/HeaderDeviceDetailsProvider$Key;",
            "Lorg/fourthline/cling/model/meta/DeviceDetails;",
            ">;)V"
        }
    .end annotation

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object p1, p0, Lorg/fourthline/cling/model/profile/HeaderDeviceDetailsProvider;->defaultDeviceDetails:Lorg/fourthline/cling/model/meta/DeviceDetails;

    if-eqz p2, :cond_0

    goto :goto_0

    .line 76
    :cond_0
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    :goto_0
    iput-object p2, p0, Lorg/fourthline/cling/model/profile/HeaderDeviceDetailsProvider;->headerDetails:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public getDefaultDeviceDetails()Lorg/fourthline/cling/model/meta/DeviceDetails;
    .locals 1

    .line 80
    iget-object v0, p0, Lorg/fourthline/cling/model/profile/HeaderDeviceDetailsProvider;->defaultDeviceDetails:Lorg/fourthline/cling/model/meta/DeviceDetails;

    return-object v0
.end method

.method public getHeaderDetails()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lorg/fourthline/cling/model/profile/HeaderDeviceDetailsProvider$Key;",
            "Lorg/fourthline/cling/model/meta/DeviceDetails;",
            ">;"
        }
    .end annotation

    .line 84
    iget-object v0, p0, Lorg/fourthline/cling/model/profile/HeaderDeviceDetailsProvider;->headerDetails:Ljava/util/Map;

    return-object v0
.end method

.method public provide(Lorg/fourthline/cling/model/profile/RemoteClientInfo;)Lorg/fourthline/cling/model/meta/DeviceDetails;
    .locals 4

    if-eqz p1, :cond_5

    .line 88
    invoke-virtual {p1}, Lorg/fourthline/cling/model/profile/RemoteClientInfo;->getRequestHeaders()Lorg/fourthline/cling/model/message/UpnpHeaders;

    move-result-object v0

    invoke-virtual {v0}, Lorg/fourthline/cling/model/message/UpnpHeaders;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 90
    :cond_0
    invoke-virtual {p0}, Lorg/fourthline/cling/model/profile/HeaderDeviceDetailsProvider;->getHeaderDetails()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/fourthline/cling/model/profile/HeaderDeviceDetailsProvider$Key;

    .line 92
    invoke-virtual {p1}, Lorg/fourthline/cling/model/profile/RemoteClientInfo;->getRequestHeaders()Lorg/fourthline/cling/model/message/UpnpHeaders;

    move-result-object v2

    invoke-virtual {v1}, Lorg/fourthline/cling/model/profile/HeaderDeviceDetailsProvider$Key;->getHeaderName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/fourthline/cling/model/message/UpnpHeaders;->get(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_2

    goto :goto_0

    .line 93
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 94
    invoke-virtual {v1, v3}, Lorg/fourthline/cling/model/profile/HeaderDeviceDetailsProvider$Key;->isValuePatternMatch(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 95
    invoke-virtual {p0}, Lorg/fourthline/cling/model/profile/HeaderDeviceDetailsProvider;->getHeaderDetails()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/fourthline/cling/model/meta/DeviceDetails;

    return-object p1

    .line 98
    :cond_4
    invoke-virtual {p0}, Lorg/fourthline/cling/model/profile/HeaderDeviceDetailsProvider;->getDefaultDeviceDetails()Lorg/fourthline/cling/model/meta/DeviceDetails;

    move-result-object p1

    return-object p1

    .line 88
    :cond_5
    :goto_1
    invoke-virtual {p0}, Lorg/fourthline/cling/model/profile/HeaderDeviceDetailsProvider;->getDefaultDeviceDetails()Lorg/fourthline/cling/model/meta/DeviceDetails;

    move-result-object p1

    return-object p1
.end method
