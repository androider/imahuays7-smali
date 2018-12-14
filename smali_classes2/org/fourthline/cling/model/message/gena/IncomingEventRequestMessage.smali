.class public Lorg/fourthline/cling/model/message/gena/IncomingEventRequestMessage;
.super Lorg/fourthline/cling/model/message/StreamRequestMessage;
.source "IncomingEventRequestMessage.java"


# instance fields
.field private final service:Lorg/fourthline/cling/model/meta/RemoteService;

.field private final stateVariableValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/fourthline/cling/model/state/StateVariableValue;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/fourthline/cling/model/message/StreamRequestMessage;Lorg/fourthline/cling/model/meta/RemoteService;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lorg/fourthline/cling/model/message/StreamRequestMessage;-><init>(Lorg/fourthline/cling/model/message/StreamRequestMessage;)V

    .line 37
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/fourthline/cling/model/message/gena/IncomingEventRequestMessage;->stateVariableValues:Ljava/util/List;

    .line 42
    iput-object p2, p0, Lorg/fourthline/cling/model/message/gena/IncomingEventRequestMessage;->service:Lorg/fourthline/cling/model/meta/RemoteService;

    return-void
.end method


# virtual methods
.method public getSequence()Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;
    .locals 3

    .line 60
    invoke-virtual {p0}, Lorg/fourthline/cling/model/message/gena/IncomingEventRequestMessage;->getHeaders()Lorg/fourthline/cling/model/message/UpnpHeaders;

    move-result-object v0

    sget-object v1, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;->SEQ:Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;

    const-class v2, Lorg/fourthline/cling/model/message/header/EventSequenceHeader;

    invoke-virtual {v0, v1, v2}, Lorg/fourthline/cling/model/message/UpnpHeaders;->getFirstHeader(Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;Ljava/lang/Class;)Lorg/fourthline/cling/model/message/header/UpnpHeader;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/model/message/header/EventSequenceHeader;

    if-eqz v0, :cond_0

    .line 61
    invoke-virtual {v0}, Lorg/fourthline/cling/model/message/header/EventSequenceHeader;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getService()Lorg/fourthline/cling/model/meta/RemoteService;
    .locals 1

    .line 46
    iget-object v0, p0, Lorg/fourthline/cling/model/message/gena/IncomingEventRequestMessage;->service:Lorg/fourthline/cling/model/meta/RemoteService;

    return-object v0
.end method

.method public getStateVariableValues()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/fourthline/cling/model/state/StateVariableValue;",
            ">;"
        }
    .end annotation

    .line 50
    iget-object v0, p0, Lorg/fourthline/cling/model/message/gena/IncomingEventRequestMessage;->stateVariableValues:Ljava/util/List;

    return-object v0
.end method

.method public getSubscrptionId()Ljava/lang/String;
    .locals 3

    .line 55
    invoke-virtual {p0}, Lorg/fourthline/cling/model/message/gena/IncomingEventRequestMessage;->getHeaders()Lorg/fourthline/cling/model/message/UpnpHeaders;

    move-result-object v0

    sget-object v1, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;->SID:Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;

    const-class v2, Lorg/fourthline/cling/model/message/header/SubscriptionIdHeader;

    invoke-virtual {v0, v1, v2}, Lorg/fourthline/cling/model/message/UpnpHeaders;->getFirstHeader(Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;Ljava/lang/Class;)Lorg/fourthline/cling/model/message/header/UpnpHeader;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/model/message/header/SubscriptionIdHeader;

    if-eqz v0, :cond_0

    .line 56
    invoke-virtual {v0}, Lorg/fourthline/cling/model/message/header/SubscriptionIdHeader;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public hasNotificationHeaders()Z
    .locals 3

    .line 68
    invoke-virtual {p0}, Lorg/fourthline/cling/model/message/gena/IncomingEventRequestMessage;->getHeaders()Lorg/fourthline/cling/model/message/UpnpHeaders;

    move-result-object v0

    sget-object v1, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;->NT:Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;

    invoke-virtual {v0, v1}, Lorg/fourthline/cling/model/message/UpnpHeaders;->getFirstHeader(Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;)Lorg/fourthline/cling/model/message/header/UpnpHeader;

    move-result-object v0

    .line 69
    invoke-virtual {p0}, Lorg/fourthline/cling/model/message/gena/IncomingEventRequestMessage;->getHeaders()Lorg/fourthline/cling/model/message/UpnpHeaders;

    move-result-object v1

    sget-object v2, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;->NTS:Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;

    invoke-virtual {v1, v2}, Lorg/fourthline/cling/model/message/UpnpHeaders;->getFirstHeader(Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;)Lorg/fourthline/cling/model/message/header/UpnpHeader;

    move-result-object v1

    if-eqz v0, :cond_0

    .line 70
    invoke-virtual {v0}, Lorg/fourthline/cling/model/message/header/UpnpHeader;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 71
    invoke-virtual {v1}, Lorg/fourthline/cling/model/message/header/UpnpHeader;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasValidNotificationHeaders()Z
    .locals 4

    .line 79
    invoke-virtual {p0}, Lorg/fourthline/cling/model/message/gena/IncomingEventRequestMessage;->getHeaders()Lorg/fourthline/cling/model/message/UpnpHeaders;

    move-result-object v0

    sget-object v1, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;->NT:Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;

    const-class v2, Lorg/fourthline/cling/model/message/header/NTEventHeader;

    invoke-virtual {v0, v1, v2}, Lorg/fourthline/cling/model/message/UpnpHeaders;->getFirstHeader(Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;Ljava/lang/Class;)Lorg/fourthline/cling/model/message/header/UpnpHeader;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/model/message/header/NTEventHeader;

    .line 80
    invoke-virtual {p0}, Lorg/fourthline/cling/model/message/gena/IncomingEventRequestMessage;->getHeaders()Lorg/fourthline/cling/model/message/UpnpHeaders;

    move-result-object v1

    sget-object v2, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;->NTS:Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;

    const-class v3, Lorg/fourthline/cling/model/message/header/NTSHeader;

    invoke-virtual {v1, v2, v3}, Lorg/fourthline/cling/model/message/UpnpHeaders;->getFirstHeader(Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;Ljava/lang/Class;)Lorg/fourthline/cling/model/message/header/UpnpHeader;

    move-result-object v1

    check-cast v1, Lorg/fourthline/cling/model/message/header/NTSHeader;

    if-eqz v0, :cond_0

    .line 81
    invoke-virtual {v0}, Lorg/fourthline/cling/model/message/header/NTEventHeader;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 82
    invoke-virtual {v1}, Lorg/fourthline/cling/model/message/header/NTSHeader;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/model/types/NotificationSubtype;

    sget-object v1, Lorg/fourthline/cling/model/types/NotificationSubtype;->PROPCHANGE:Lorg/fourthline/cling/model/types/NotificationSubtype;

    invoke-virtual {v0, v1}, Lorg/fourthline/cling/model/types/NotificationSubtype;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lorg/fourthline/cling/model/message/StreamRequestMessage;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " SEQUENCE: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/fourthline/cling/model/message/gena/IncomingEventRequestMessage;->getSequence()Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;

    move-result-object v1

    invoke-virtual {v1}, Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;->getValue()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
