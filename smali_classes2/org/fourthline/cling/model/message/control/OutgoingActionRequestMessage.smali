.class public Lorg/fourthline/cling/model/message/control/OutgoingActionRequestMessage;
.super Lorg/fourthline/cling/model/message/StreamRequestMessage;
.source "OutgoingActionRequestMessage.java"

# interfaces
.implements Lorg/fourthline/cling/model/message/control/ActionRequestMessage;


# static fields
.field private static log:Ljava/util/logging/Logger;


# instance fields
.field private final actionNamespace:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    const-class v0, Lorg/fourthline/cling/model/message/control/OutgoingActionRequestMessage;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/fourthline/cling/model/message/control/OutgoingActionRequestMessage;->log:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/model/action/ActionInvocation;Ljava/net/URL;)V
    .locals 3

    .line 43
    invoke-virtual {p1}, Lorg/fourthline/cling/model/action/ActionInvocation;->getAction()Lorg/fourthline/cling/model/meta/Action;

    move-result-object v0

    new-instance v1, Lorg/fourthline/cling/model/message/UpnpRequest;

    sget-object v2, Lorg/fourthline/cling/model/message/UpnpRequest$Method;->POST:Lorg/fourthline/cling/model/message/UpnpRequest$Method;

    invoke-direct {v1, v2, p2}, Lorg/fourthline/cling/model/message/UpnpRequest;-><init>(Lorg/fourthline/cling/model/message/UpnpRequest$Method;Ljava/net/URL;)V

    invoke-direct {p0, v0, v1}, Lorg/fourthline/cling/model/message/control/OutgoingActionRequestMessage;-><init>(Lorg/fourthline/cling/model/meta/Action;Lorg/fourthline/cling/model/message/UpnpRequest;)V

    .line 46
    instance-of p2, p1, Lorg/fourthline/cling/model/action/RemoteActionInvocation;

    if-eqz p2, :cond_0

    .line 47
    check-cast p1, Lorg/fourthline/cling/model/action/RemoteActionInvocation;

    .line 48
    invoke-virtual {p1}, Lorg/fourthline/cling/model/action/RemoteActionInvocation;->getRemoteClientInfo()Lorg/fourthline/cling/model/profile/RemoteClientInfo;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 49
    invoke-virtual {p1}, Lorg/fourthline/cling/model/action/RemoteActionInvocation;->getRemoteClientInfo()Lorg/fourthline/cling/model/profile/RemoteClientInfo;

    move-result-object p2

    invoke-virtual {p2}, Lorg/fourthline/cling/model/profile/RemoteClientInfo;->getRequestUserAgent()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 50
    invoke-virtual {p0}, Lorg/fourthline/cling/model/message/control/OutgoingActionRequestMessage;->getHeaders()Lorg/fourthline/cling/model/message/UpnpHeaders;

    move-result-object p2

    sget-object v0, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;->USER_AGENT:Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;

    new-instance v1, Lorg/fourthline/cling/model/message/header/UserAgentHeader;

    .line 52
    invoke-virtual {p1}, Lorg/fourthline/cling/model/action/RemoteActionInvocation;->getRemoteClientInfo()Lorg/fourthline/cling/model/profile/RemoteClientInfo;

    move-result-object p1

    invoke-virtual {p1}, Lorg/fourthline/cling/model/profile/RemoteClientInfo;->getRequestUserAgent()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lorg/fourthline/cling/model/message/header/UserAgentHeader;-><init>(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p2, v0, v1}, Lorg/fourthline/cling/model/message/UpnpHeaders;->add(Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;Lorg/fourthline/cling/model/message/header/UpnpHeader;)V

    goto :goto_0

    .line 55
    :cond_0
    invoke-virtual {p1}, Lorg/fourthline/cling/model/action/ActionInvocation;->getClientInfo()Lorg/fourthline/cling/model/profile/ClientInfo;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 56
    invoke-virtual {p0}, Lorg/fourthline/cling/model/message/control/OutgoingActionRequestMessage;->getHeaders()Lorg/fourthline/cling/model/message/UpnpHeaders;

    move-result-object p2

    invoke-virtual {p1}, Lorg/fourthline/cling/model/action/ActionInvocation;->getClientInfo()Lorg/fourthline/cling/model/profile/ClientInfo;

    move-result-object p1

    invoke-virtual {p1}, Lorg/fourthline/cling/model/profile/ClientInfo;->getRequestHeaders()Lorg/fourthline/cling/model/message/UpnpHeaders;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/fourthline/cling/model/message/UpnpHeaders;->putAll(Ljava/util/Map;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/model/meta/Action;Lorg/fourthline/cling/model/message/UpnpRequest;)V
    .locals 4

    .line 61
    invoke-direct {p0, p2}, Lorg/fourthline/cling/model/message/StreamRequestMessage;-><init>(Lorg/fourthline/cling/model/message/UpnpRequest;)V

    .line 63
    invoke-virtual {p0}, Lorg/fourthline/cling/model/message/control/OutgoingActionRequestMessage;->getHeaders()Lorg/fourthline/cling/model/message/UpnpHeaders;

    move-result-object p2

    sget-object v0, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;->CONTENT_TYPE:Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;

    new-instance v1, Lorg/fourthline/cling/model/message/header/ContentTypeHeader;

    sget-object v2, Lorg/fourthline/cling/model/message/header/ContentTypeHeader;->DEFAULT_CONTENT_TYPE_UTF8:Lorg/seamless/util/MimeType;

    invoke-direct {v1, v2}, Lorg/fourthline/cling/model/message/header/ContentTypeHeader;-><init>(Lorg/seamless/util/MimeType;)V

    invoke-virtual {p2, v0, v1}, Lorg/fourthline/cling/model/message/UpnpHeaders;->add(Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;Lorg/fourthline/cling/model/message/header/UpnpHeader;)V

    .line 69
    instance-of p2, p1, Lorg/fourthline/cling/model/meta/QueryStateVariableAction;

    if-eqz p2, :cond_0

    .line 70
    sget-object p2, Lorg/fourthline/cling/model/message/control/OutgoingActionRequestMessage;->log:Ljava/util/logging/Logger;

    const-string v0, "Adding magic control SOAP action header for state variable query action"

    invoke-virtual {p2, v0}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 71
    new-instance p2, Lorg/fourthline/cling/model/message/header/SoapActionHeader;

    new-instance v0, Lorg/fourthline/cling/model/types/SoapActionType;

    const-string v1, "schemas-upnp-org"

    const-string v2, "control-1-0"

    const/4 v3, 0x0

    .line 73
    invoke-virtual {p1}, Lorg/fourthline/cling/model/meta/Action;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, v2, v3, p1}, Lorg/fourthline/cling/model/types/SoapActionType;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-direct {p2, v0}, Lorg/fourthline/cling/model/message/header/SoapActionHeader;-><init>(Lorg/fourthline/cling/model/types/SoapActionType;)V

    goto :goto_0

    .line 77
    :cond_0
    new-instance p2, Lorg/fourthline/cling/model/message/header/SoapActionHeader;

    new-instance v0, Lorg/fourthline/cling/model/types/SoapActionType;

    .line 79
    invoke-virtual {p1}, Lorg/fourthline/cling/model/meta/Action;->getService()Lorg/fourthline/cling/model/meta/Service;

    move-result-object v1

    invoke-virtual {v1}, Lorg/fourthline/cling/model/meta/Service;->getServiceType()Lorg/fourthline/cling/model/types/ServiceType;

    move-result-object v1

    .line 80
    invoke-virtual {p1}, Lorg/fourthline/cling/model/meta/Action;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lorg/fourthline/cling/model/types/SoapActionType;-><init>(Lorg/fourthline/cling/model/types/ServiceType;Ljava/lang/String;)V

    invoke-direct {p2, v0}, Lorg/fourthline/cling/model/message/header/SoapActionHeader;-><init>(Lorg/fourthline/cling/model/types/SoapActionType;)V

    .line 86
    :goto_0
    invoke-virtual {p2}, Lorg/fourthline/cling/model/message/header/SoapActionHeader;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/fourthline/cling/model/types/SoapActionType;

    invoke-virtual {p1}, Lorg/fourthline/cling/model/types/SoapActionType;->getTypeString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/fourthline/cling/model/message/control/OutgoingActionRequestMessage;->actionNamespace:Ljava/lang/String;

    .line 88
    invoke-virtual {p0}, Lorg/fourthline/cling/model/message/control/OutgoingActionRequestMessage;->getOperation()Lorg/fourthline/cling/model/message/UpnpOperation;

    move-result-object p1

    check-cast p1, Lorg/fourthline/cling/model/message/UpnpRequest;

    invoke-virtual {p1}, Lorg/fourthline/cling/model/message/UpnpRequest;->getMethod()Lorg/fourthline/cling/model/message/UpnpRequest$Method;

    move-result-object p1

    sget-object v0, Lorg/fourthline/cling/model/message/UpnpRequest$Method;->POST:Lorg/fourthline/cling/model/message/UpnpRequest$Method;

    invoke-virtual {p1, v0}, Lorg/fourthline/cling/model/message/UpnpRequest$Method;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 90
    invoke-virtual {p0}, Lorg/fourthline/cling/model/message/control/OutgoingActionRequestMessage;->getHeaders()Lorg/fourthline/cling/model/message/UpnpHeaders;

    move-result-object p1

    sget-object v0, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;->SOAPACTION:Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;

    invoke-virtual {p1, v0, p2}, Lorg/fourthline/cling/model/message/UpnpHeaders;->add(Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;Lorg/fourthline/cling/model/message/header/UpnpHeader;)V

    .line 91
    sget-object p1, Lorg/fourthline/cling/model/message/control/OutgoingActionRequestMessage;->log:Ljava/util/logging/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Added SOAP action header: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    return-void

    .line 104
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Can\'t send action with request method: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/fourthline/cling/model/message/control/OutgoingActionRequestMessage;->getOperation()Lorg/fourthline/cling/model/message/UpnpOperation;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/model/message/UpnpRequest;

    invoke-virtual {v0}, Lorg/fourthline/cling/model/message/UpnpRequest;->getMethod()Lorg/fourthline/cling/model/message/UpnpRequest$Method;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getActionNamespace()Ljava/lang/String;
    .locals 1

    .line 109
    iget-object v0, p0, Lorg/fourthline/cling/model/message/control/OutgoingActionRequestMessage;->actionNamespace:Ljava/lang/String;

    return-object v0
.end method
