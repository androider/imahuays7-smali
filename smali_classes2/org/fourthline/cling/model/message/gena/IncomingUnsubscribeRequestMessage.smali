.class public Lorg/fourthline/cling/model/message/gena/IncomingUnsubscribeRequestMessage;
.super Lorg/fourthline/cling/model/message/StreamRequestMessage;
.source "IncomingUnsubscribeRequestMessage.java"


# instance fields
.field private final service:Lorg/fourthline/cling/model/meta/LocalService;


# direct methods
.method public constructor <init>(Lorg/fourthline/cling/model/message/StreamRequestMessage;Lorg/fourthline/cling/model/meta/LocalService;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lorg/fourthline/cling/model/message/StreamRequestMessage;-><init>(Lorg/fourthline/cling/model/message/StreamRequestMessage;)V

    .line 34
    iput-object p2, p0, Lorg/fourthline/cling/model/message/gena/IncomingUnsubscribeRequestMessage;->service:Lorg/fourthline/cling/model/meta/LocalService;

    return-void
.end method


# virtual methods
.method public getService()Lorg/fourthline/cling/model/meta/LocalService;
    .locals 1

    .line 38
    iget-object v0, p0, Lorg/fourthline/cling/model/message/gena/IncomingUnsubscribeRequestMessage;->service:Lorg/fourthline/cling/model/meta/LocalService;

    return-object v0
.end method

.method public getSubscriptionId()Ljava/lang/String;
    .locals 3

    .line 50
    invoke-virtual {p0}, Lorg/fourthline/cling/model/message/gena/IncomingUnsubscribeRequestMessage;->getHeaders()Lorg/fourthline/cling/model/message/UpnpHeaders;

    move-result-object v0

    sget-object v1, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;->SID:Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;

    const-class v2, Lorg/fourthline/cling/model/message/header/SubscriptionIdHeader;

    invoke-virtual {v0, v1, v2}, Lorg/fourthline/cling/model/message/UpnpHeaders;->getFirstHeader(Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;Ljava/lang/Class;)Lorg/fourthline/cling/model/message/header/UpnpHeader;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/model/message/header/SubscriptionIdHeader;

    if-eqz v0, :cond_0

    .line 51
    invoke-virtual {v0}, Lorg/fourthline/cling/model/message/header/SubscriptionIdHeader;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public hasCallbackHeader()Z
    .locals 3

    .line 42
    invoke-virtual {p0}, Lorg/fourthline/cling/model/message/gena/IncomingUnsubscribeRequestMessage;->getHeaders()Lorg/fourthline/cling/model/message/UpnpHeaders;

    move-result-object v0

    sget-object v1, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;->CALLBACK:Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;

    const-class v2, Lorg/fourthline/cling/model/message/header/CallbackHeader;

    invoke-virtual {v0, v1, v2}, Lorg/fourthline/cling/model/message/UpnpHeaders;->getFirstHeader(Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;Ljava/lang/Class;)Lorg/fourthline/cling/model/message/header/UpnpHeader;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasNotificationHeader()Z
    .locals 3

    .line 46
    invoke-virtual {p0}, Lorg/fourthline/cling/model/message/gena/IncomingUnsubscribeRequestMessage;->getHeaders()Lorg/fourthline/cling/model/message/UpnpHeaders;

    move-result-object v0

    sget-object v1, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;->NT:Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;

    const-class v2, Lorg/fourthline/cling/model/message/header/NTEventHeader;

    invoke-virtual {v0, v1, v2}, Lorg/fourthline/cling/model/message/UpnpHeaders;->getFirstHeader(Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;Ljava/lang/Class;)Lorg/fourthline/cling/model/message/header/UpnpHeader;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
