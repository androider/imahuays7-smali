.class public Lorg/fourthline/cling/model/message/control/IncomingActionRequestMessage;
.super Lorg/fourthline/cling/model/message/StreamRequestMessage;
.source "IncomingActionRequestMessage.java"

# interfaces
.implements Lorg/fourthline/cling/model/message/control/ActionRequestMessage;


# instance fields
.field private final action:Lorg/fourthline/cling/model/meta/Action;

.field private final actionNamespace:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/fourthline/cling/model/message/StreamRequestMessage;Lorg/fourthline/cling/model/meta/LocalService;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/model/action/ActionException;
        }
    .end annotation

    .line 38
    invoke-direct {p0, p1}, Lorg/fourthline/cling/model/message/StreamRequestMessage;-><init>(Lorg/fourthline/cling/model/message/StreamRequestMessage;)V

    .line 40
    invoke-virtual {p0}, Lorg/fourthline/cling/model/message/control/IncomingActionRequestMessage;->getHeaders()Lorg/fourthline/cling/model/message/UpnpHeaders;

    move-result-object p1

    sget-object v0, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;->SOAPACTION:Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;

    const-class v1, Lorg/fourthline/cling/model/message/header/SoapActionHeader;

    invoke-virtual {p1, v0, v1}, Lorg/fourthline/cling/model/message/UpnpHeaders;->getFirstHeader(Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;Ljava/lang/Class;)Lorg/fourthline/cling/model/message/header/UpnpHeader;

    move-result-object p1

    check-cast p1, Lorg/fourthline/cling/model/message/header/SoapActionHeader;

    if-nez p1, :cond_0

    .line 42
    new-instance p1, Lorg/fourthline/cling/model/action/ActionException;

    sget-object p2, Lorg/fourthline/cling/model/types/ErrorCode;->INVALID_ACTION:Lorg/fourthline/cling/model/types/ErrorCode;

    const-string v0, "Missing SOAP action header"

    invoke-direct {p1, p2, v0}, Lorg/fourthline/cling/model/action/ActionException;-><init>(Lorg/fourthline/cling/model/types/ErrorCode;Ljava/lang/String;)V

    throw p1

    .line 45
    :cond_0
    invoke-virtual {p1}, Lorg/fourthline/cling/model/message/header/SoapActionHeader;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/fourthline/cling/model/types/SoapActionType;

    .line 47
    invoke-virtual {p1}, Lorg/fourthline/cling/model/types/SoapActionType;->getActionName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/fourthline/cling/model/meta/LocalService;->getAction(Ljava/lang/String;)Lorg/fourthline/cling/model/meta/Action;

    move-result-object v0

    iput-object v0, p0, Lorg/fourthline/cling/model/message/control/IncomingActionRequestMessage;->action:Lorg/fourthline/cling/model/meta/Action;

    .line 48
    iget-object v0, p0, Lorg/fourthline/cling/model/message/control/IncomingActionRequestMessage;->action:Lorg/fourthline/cling/model/meta/Action;

    if-nez v0, :cond_1

    .line 49
    new-instance p2, Lorg/fourthline/cling/model/action/ActionException;

    sget-object v0, Lorg/fourthline/cling/model/types/ErrorCode;->INVALID_ACTION:Lorg/fourthline/cling/model/types/ErrorCode;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Service doesn\'t implement action: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/fourthline/cling/model/types/SoapActionType;->getActionName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, v0, p1}, Lorg/fourthline/cling/model/action/ActionException;-><init>(Lorg/fourthline/cling/model/types/ErrorCode;Ljava/lang/String;)V

    throw p2

    :cond_1
    const-string v0, "QueryStateVariable"

    .line 52
    invoke-virtual {p1}, Lorg/fourthline/cling/model/types/SoapActionType;->getActionName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 53
    invoke-virtual {p2}, Lorg/fourthline/cling/model/meta/LocalService;->getServiceType()Lorg/fourthline/cling/model/types/ServiceType;

    move-result-object p2

    invoke-virtual {p1}, Lorg/fourthline/cling/model/types/SoapActionType;->getServiceType()Lorg/fourthline/cling/model/types/ServiceType;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/fourthline/cling/model/types/ServiceType;->implementsVersion(Lorg/fourthline/cling/model/types/ServiceType;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 54
    new-instance p1, Lorg/fourthline/cling/model/action/ActionException;

    sget-object p2, Lorg/fourthline/cling/model/types/ErrorCode;->INVALID_ACTION:Lorg/fourthline/cling/model/types/ErrorCode;

    const-string v0, "Service doesn\'t support the requested service version"

    invoke-direct {p1, p2, v0}, Lorg/fourthline/cling/model/action/ActionException;-><init>(Lorg/fourthline/cling/model/types/ErrorCode;Ljava/lang/String;)V

    throw p1

    .line 58
    :cond_2
    invoke-virtual {p1}, Lorg/fourthline/cling/model/types/SoapActionType;->getTypeString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/fourthline/cling/model/message/control/IncomingActionRequestMessage;->actionNamespace:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAction()Lorg/fourthline/cling/model/meta/Action;
    .locals 1

    .line 62
    iget-object v0, p0, Lorg/fourthline/cling/model/message/control/IncomingActionRequestMessage;->action:Lorg/fourthline/cling/model/meta/Action;

    return-object v0
.end method

.method public getActionNamespace()Ljava/lang/String;
    .locals 1

    .line 66
    iget-object v0, p0, Lorg/fourthline/cling/model/message/control/IncomingActionRequestMessage;->actionNamespace:Ljava/lang/String;

    return-object v0
.end method
