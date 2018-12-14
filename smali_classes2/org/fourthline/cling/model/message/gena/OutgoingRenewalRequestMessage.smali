.class public Lorg/fourthline/cling/model/message/gena/OutgoingRenewalRequestMessage;
.super Lorg/fourthline/cling/model/message/StreamRequestMessage;
.source "OutgoingRenewalRequestMessage.java"


# direct methods
.method public constructor <init>(Lorg/fourthline/cling/model/gena/RemoteGENASubscription;Lorg/fourthline/cling/model/message/UpnpHeaders;)V
    .locals 4

    .line 34
    sget-object v0, Lorg/fourthline/cling/model/message/UpnpRequest$Method;->SUBSCRIBE:Lorg/fourthline/cling/model/message/UpnpRequest$Method;

    invoke-virtual {p1}, Lorg/fourthline/cling/model/gena/RemoteGENASubscription;->getEventSubscriptionURL()Ljava/net/URL;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/fourthline/cling/model/message/StreamRequestMessage;-><init>(Lorg/fourthline/cling/model/message/UpnpRequest$Method;Ljava/net/URL;)V

    .line 36
    invoke-virtual {p0}, Lorg/fourthline/cling/model/message/gena/OutgoingRenewalRequestMessage;->getHeaders()Lorg/fourthline/cling/model/message/UpnpHeaders;

    move-result-object v0

    sget-object v1, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;->SID:Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;

    new-instance v2, Lorg/fourthline/cling/model/message/header/SubscriptionIdHeader;

    .line 38
    invoke-virtual {p1}, Lorg/fourthline/cling/model/gena/RemoteGENASubscription;->getSubscriptionId()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/fourthline/cling/model/message/header/SubscriptionIdHeader;-><init>(Ljava/lang/String;)V

    .line 36
    invoke-virtual {v0, v1, v2}, Lorg/fourthline/cling/model/message/UpnpHeaders;->add(Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;Lorg/fourthline/cling/model/message/header/UpnpHeader;)V

    .line 41
    invoke-virtual {p0}, Lorg/fourthline/cling/model/message/gena/OutgoingRenewalRequestMessage;->getHeaders()Lorg/fourthline/cling/model/message/UpnpHeaders;

    move-result-object v0

    sget-object v1, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;->TIMEOUT:Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;

    new-instance v2, Lorg/fourthline/cling/model/message/header/TimeoutHeader;

    .line 43
    invoke-virtual {p1}, Lorg/fourthline/cling/model/gena/RemoteGENASubscription;->getRequestedDurationSeconds()I

    move-result p1

    invoke-direct {v2, p1}, Lorg/fourthline/cling/model/message/header/TimeoutHeader;-><init>(I)V

    .line 41
    invoke-virtual {v0, v1, v2}, Lorg/fourthline/cling/model/message/UpnpHeaders;->add(Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;Lorg/fourthline/cling/model/message/header/UpnpHeader;)V

    if-eqz p2, :cond_0

    .line 47
    invoke-virtual {p0}, Lorg/fourthline/cling/model/message/gena/OutgoingRenewalRequestMessage;->getHeaders()Lorg/fourthline/cling/model/message/UpnpHeaders;

    move-result-object p1

    invoke-virtual {p1, p2}, Lorg/fourthline/cling/model/message/UpnpHeaders;->putAll(Ljava/util/Map;)V

    :cond_0
    return-void
.end method
