.class public Lorg/fourthline/cling/model/message/gena/OutgoingSubscribeResponseMessage;
.super Lorg/fourthline/cling/model/message/StreamResponseMessage;
.source "OutgoingSubscribeResponseMessage.java"


# direct methods
.method public constructor <init>(Lorg/fourthline/cling/model/gena/LocalGENASubscription;)V
    .locals 4

    .line 37
    new-instance v0, Lorg/fourthline/cling/model/message/UpnpResponse;

    sget-object v1, Lorg/fourthline/cling/model/message/UpnpResponse$Status;->OK:Lorg/fourthline/cling/model/message/UpnpResponse$Status;

    invoke-direct {v0, v1}, Lorg/fourthline/cling/model/message/UpnpResponse;-><init>(Lorg/fourthline/cling/model/message/UpnpResponse$Status;)V

    invoke-direct {p0, v0}, Lorg/fourthline/cling/model/message/StreamResponseMessage;-><init>(Lorg/fourthline/cling/model/message/UpnpResponse;)V

    .line 39
    invoke-virtual {p0}, Lorg/fourthline/cling/model/message/gena/OutgoingSubscribeResponseMessage;->getHeaders()Lorg/fourthline/cling/model/message/UpnpHeaders;

    move-result-object v0

    sget-object v1, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;->SERVER:Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;

    new-instance v2, Lorg/fourthline/cling/model/message/header/ServerHeader;

    invoke-direct {v2}, Lorg/fourthline/cling/model/message/header/ServerHeader;-><init>()V

    invoke-virtual {v0, v1, v2}, Lorg/fourthline/cling/model/message/UpnpHeaders;->add(Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;Lorg/fourthline/cling/model/message/header/UpnpHeader;)V

    .line 40
    invoke-virtual {p0}, Lorg/fourthline/cling/model/message/gena/OutgoingSubscribeResponseMessage;->getHeaders()Lorg/fourthline/cling/model/message/UpnpHeaders;

    move-result-object v0

    sget-object v1, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;->SID:Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;

    new-instance v2, Lorg/fourthline/cling/model/message/header/SubscriptionIdHeader;

    invoke-virtual {p1}, Lorg/fourthline/cling/model/gena/LocalGENASubscription;->getSubscriptionId()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/fourthline/cling/model/message/header/SubscriptionIdHeader;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lorg/fourthline/cling/model/message/UpnpHeaders;->add(Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;Lorg/fourthline/cling/model/message/header/UpnpHeader;)V

    .line 41
    invoke-virtual {p0}, Lorg/fourthline/cling/model/message/gena/OutgoingSubscribeResponseMessage;->getHeaders()Lorg/fourthline/cling/model/message/UpnpHeaders;

    move-result-object v0

    sget-object v1, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;->TIMEOUT:Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;

    new-instance v2, Lorg/fourthline/cling/model/message/header/TimeoutHeader;

    invoke-virtual {p1}, Lorg/fourthline/cling/model/gena/LocalGENASubscription;->getActualDurationSeconds()I

    move-result p1

    invoke-direct {v2, p1}, Lorg/fourthline/cling/model/message/header/TimeoutHeader;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Lorg/fourthline/cling/model/message/UpnpHeaders;->add(Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;Lorg/fourthline/cling/model/message/header/UpnpHeader;)V

    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/model/message/UpnpResponse$Status;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lorg/fourthline/cling/model/message/StreamResponseMessage;-><init>(Lorg/fourthline/cling/model/message/UpnpResponse$Status;)V

    return-void
.end method
