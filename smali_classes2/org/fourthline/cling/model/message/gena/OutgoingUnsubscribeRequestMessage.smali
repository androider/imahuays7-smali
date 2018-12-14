.class public Lorg/fourthline/cling/model/message/gena/OutgoingUnsubscribeRequestMessage;
.super Lorg/fourthline/cling/model/message/StreamRequestMessage;
.source "OutgoingUnsubscribeRequestMessage.java"


# direct methods
.method public constructor <init>(Lorg/fourthline/cling/model/gena/RemoteGENASubscription;Lorg/fourthline/cling/model/message/UpnpHeaders;)V
    .locals 3

    .line 33
    sget-object v0, Lorg/fourthline/cling/model/message/UpnpRequest$Method;->UNSUBSCRIBE:Lorg/fourthline/cling/model/message/UpnpRequest$Method;

    invoke-virtual {p1}, Lorg/fourthline/cling/model/gena/RemoteGENASubscription;->getEventSubscriptionURL()Ljava/net/URL;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/fourthline/cling/model/message/StreamRequestMessage;-><init>(Lorg/fourthline/cling/model/message/UpnpRequest$Method;Ljava/net/URL;)V

    .line 35
    invoke-virtual {p0}, Lorg/fourthline/cling/model/message/gena/OutgoingUnsubscribeRequestMessage;->getHeaders()Lorg/fourthline/cling/model/message/UpnpHeaders;

    move-result-object v0

    sget-object v1, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;->SID:Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;

    new-instance v2, Lorg/fourthline/cling/model/message/header/SubscriptionIdHeader;

    .line 37
    invoke-virtual {p1}, Lorg/fourthline/cling/model/gena/RemoteGENASubscription;->getSubscriptionId()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Lorg/fourthline/cling/model/message/header/SubscriptionIdHeader;-><init>(Ljava/lang/String;)V

    .line 35
    invoke-virtual {v0, v1, v2}, Lorg/fourthline/cling/model/message/UpnpHeaders;->add(Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;Lorg/fourthline/cling/model/message/header/UpnpHeader;)V

    if-eqz p2, :cond_0

    .line 41
    invoke-virtual {p0}, Lorg/fourthline/cling/model/message/gena/OutgoingUnsubscribeRequestMessage;->getHeaders()Lorg/fourthline/cling/model/message/UpnpHeaders;

    move-result-object p1

    invoke-virtual {p1, p2}, Lorg/fourthline/cling/model/message/UpnpHeaders;->putAll(Ljava/util/Map;)V

    :cond_0
    return-void
.end method
