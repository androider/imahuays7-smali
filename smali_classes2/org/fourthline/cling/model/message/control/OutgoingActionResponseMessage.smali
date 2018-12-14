.class public Lorg/fourthline/cling/model/message/control/OutgoingActionResponseMessage;
.super Lorg/fourthline/cling/model/message/StreamResponseMessage;
.source "OutgoingActionResponseMessage.java"

# interfaces
.implements Lorg/fourthline/cling/model/message/control/ActionResponseMessage;


# instance fields
.field private actionNamespace:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/fourthline/cling/model/message/UpnpResponse$Status;)V
    .locals 1

    const/4 v0, 0x0

    .line 40
    invoke-direct {p0, p1, v0}, Lorg/fourthline/cling/model/message/control/OutgoingActionResponseMessage;-><init>(Lorg/fourthline/cling/model/message/UpnpResponse$Status;Lorg/fourthline/cling/model/meta/Action;)V

    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/model/message/UpnpResponse$Status;Lorg/fourthline/cling/model/meta/Action;)V
    .locals 1

    .line 44
    new-instance v0, Lorg/fourthline/cling/model/message/UpnpResponse;

    invoke-direct {v0, p1}, Lorg/fourthline/cling/model/message/UpnpResponse;-><init>(Lorg/fourthline/cling/model/message/UpnpResponse$Status;)V

    invoke-direct {p0, v0}, Lorg/fourthline/cling/model/message/StreamResponseMessage;-><init>(Lorg/fourthline/cling/model/message/UpnpResponse;)V

    if-eqz p2, :cond_1

    .line 47
    instance-of p1, p2, Lorg/fourthline/cling/model/meta/QueryStateVariableAction;

    if-eqz p1, :cond_0

    const-string p1, "urn:schemas-upnp-org:control-1-0"

    .line 48
    iput-object p1, p0, Lorg/fourthline/cling/model/message/control/OutgoingActionResponseMessage;->actionNamespace:Ljava/lang/String;

    goto :goto_0

    .line 50
    :cond_0
    invoke-virtual {p2}, Lorg/fourthline/cling/model/meta/Action;->getService()Lorg/fourthline/cling/model/meta/Service;

    move-result-object p1

    invoke-virtual {p1}, Lorg/fourthline/cling/model/meta/Service;->getServiceType()Lorg/fourthline/cling/model/types/ServiceType;

    move-result-object p1

    invoke-virtual {p1}, Lorg/fourthline/cling/model/types/ServiceType;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/fourthline/cling/model/message/control/OutgoingActionResponseMessage;->actionNamespace:Ljava/lang/String;

    .line 54
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lorg/fourthline/cling/model/message/control/OutgoingActionResponseMessage;->addHeaders()V

    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/model/meta/Action;)V
    .locals 1

    .line 36
    sget-object v0, Lorg/fourthline/cling/model/message/UpnpResponse$Status;->OK:Lorg/fourthline/cling/model/message/UpnpResponse$Status;

    invoke-direct {p0, v0, p1}, Lorg/fourthline/cling/model/message/control/OutgoingActionResponseMessage;-><init>(Lorg/fourthline/cling/model/message/UpnpResponse$Status;Lorg/fourthline/cling/model/meta/Action;)V

    return-void
.end method


# virtual methods
.method protected addHeaders()V
    .locals 4

    .line 58
    invoke-virtual {p0}, Lorg/fourthline/cling/model/message/control/OutgoingActionResponseMessage;->getHeaders()Lorg/fourthline/cling/model/message/UpnpHeaders;

    move-result-object v0

    sget-object v1, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;->CONTENT_TYPE:Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;

    new-instance v2, Lorg/fourthline/cling/model/message/header/ContentTypeHeader;

    sget-object v3, Lorg/fourthline/cling/model/message/header/ContentTypeHeader;->DEFAULT_CONTENT_TYPE_UTF8:Lorg/seamless/util/MimeType;

    invoke-direct {v2, v3}, Lorg/fourthline/cling/model/message/header/ContentTypeHeader;-><init>(Lorg/seamless/util/MimeType;)V

    invoke-virtual {v0, v1, v2}, Lorg/fourthline/cling/model/message/UpnpHeaders;->add(Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;Lorg/fourthline/cling/model/message/header/UpnpHeader;)V

    .line 62
    invoke-virtual {p0}, Lorg/fourthline/cling/model/message/control/OutgoingActionResponseMessage;->getHeaders()Lorg/fourthline/cling/model/message/UpnpHeaders;

    move-result-object v0

    sget-object v1, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;->SERVER:Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;

    new-instance v2, Lorg/fourthline/cling/model/message/header/ServerHeader;

    invoke-direct {v2}, Lorg/fourthline/cling/model/message/header/ServerHeader;-><init>()V

    invoke-virtual {v0, v1, v2}, Lorg/fourthline/cling/model/message/UpnpHeaders;->add(Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;Lorg/fourthline/cling/model/message/header/UpnpHeader;)V

    .line 66
    invoke-virtual {p0}, Lorg/fourthline/cling/model/message/control/OutgoingActionResponseMessage;->getHeaders()Lorg/fourthline/cling/model/message/UpnpHeaders;

    move-result-object v0

    sget-object v1, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;->EXT:Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;

    new-instance v2, Lorg/fourthline/cling/model/message/header/EXTHeader;

    invoke-direct {v2}, Lorg/fourthline/cling/model/message/header/EXTHeader;-><init>()V

    invoke-virtual {v0, v1, v2}, Lorg/fourthline/cling/model/message/UpnpHeaders;->add(Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;Lorg/fourthline/cling/model/message/header/UpnpHeader;)V

    return-void
.end method

.method public getActionNamespace()Ljava/lang/String;
    .locals 1

    .line 73
    iget-object v0, p0, Lorg/fourthline/cling/model/message/control/OutgoingActionResponseMessage;->actionNamespace:Ljava/lang/String;

    return-object v0
.end method
