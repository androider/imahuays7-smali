.class public Lorg/fourthline/cling/model/message/discovery/OutgoingSearchRequest;
.super Lorg/fourthline/cling/model/message/OutgoingDatagramMessage;
.source "OutgoingSearchRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/fourthline/cling/model/message/OutgoingDatagramMessage<",
        "Lorg/fourthline/cling/model/message/UpnpRequest;",
        ">;"
    }
.end annotation


# instance fields
.field private searchTarget:Lorg/fourthline/cling/model/message/header/UpnpHeader;


# direct methods
.method public constructor <init>(Lorg/fourthline/cling/model/message/header/UpnpHeader;I)V
    .locals 4

    .line 36
    new-instance v0, Lorg/fourthline/cling/model/message/UpnpRequest;

    sget-object v1, Lorg/fourthline/cling/model/message/UpnpRequest$Method;->MSEARCH:Lorg/fourthline/cling/model/message/UpnpRequest$Method;

    invoke-direct {v0, v1}, Lorg/fourthline/cling/model/message/UpnpRequest;-><init>(Lorg/fourthline/cling/model/message/UpnpRequest$Method;)V

    const-string v1, "239.255.255.250"

    .line 38
    invoke-static {v1}, Lorg/fourthline/cling/model/ModelUtil;->getInetAddressByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    const/16 v2, 0x76c

    .line 36
    invoke-direct {p0, v0, v1, v2}, Lorg/fourthline/cling/model/message/OutgoingDatagramMessage;-><init>(Lorg/fourthline/cling/model/message/UpnpOperation;Ljava/net/InetAddress;I)V

    .line 42
    iput-object p1, p0, Lorg/fourthline/cling/model/message/discovery/OutgoingSearchRequest;->searchTarget:Lorg/fourthline/cling/model/message/header/UpnpHeader;

    .line 44
    invoke-virtual {p0}, Lorg/fourthline/cling/model/message/discovery/OutgoingSearchRequest;->getHeaders()Lorg/fourthline/cling/model/message/UpnpHeaders;

    move-result-object v0

    sget-object v1, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;->MAN:Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;

    new-instance v2, Lorg/fourthline/cling/model/message/header/MANHeader;

    sget-object v3, Lorg/fourthline/cling/model/types/NotificationSubtype;->DISCOVER:Lorg/fourthline/cling/model/types/NotificationSubtype;

    invoke-virtual {v3}, Lorg/fourthline/cling/model/types/NotificationSubtype;->getHeaderString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/fourthline/cling/model/message/header/MANHeader;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lorg/fourthline/cling/model/message/UpnpHeaders;->add(Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;Lorg/fourthline/cling/model/message/header/UpnpHeader;)V

    .line 45
    invoke-virtual {p0}, Lorg/fourthline/cling/model/message/discovery/OutgoingSearchRequest;->getHeaders()Lorg/fourthline/cling/model/message/UpnpHeaders;

    move-result-object v0

    sget-object v1, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;->MX:Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;

    new-instance v2, Lorg/fourthline/cling/model/message/header/MXHeader;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {v2, p2}, Lorg/fourthline/cling/model/message/header/MXHeader;-><init>(Ljava/lang/Integer;)V

    invoke-virtual {v0, v1, v2}, Lorg/fourthline/cling/model/message/UpnpHeaders;->add(Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;Lorg/fourthline/cling/model/message/header/UpnpHeader;)V

    .line 46
    invoke-virtual {p0}, Lorg/fourthline/cling/model/message/discovery/OutgoingSearchRequest;->getHeaders()Lorg/fourthline/cling/model/message/UpnpHeaders;

    move-result-object p2

    sget-object v0, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;->ST:Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;

    invoke-virtual {p2, v0, p1}, Lorg/fourthline/cling/model/message/UpnpHeaders;->add(Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;Lorg/fourthline/cling/model/message/header/UpnpHeader;)V

    .line 47
    invoke-virtual {p0}, Lorg/fourthline/cling/model/message/discovery/OutgoingSearchRequest;->getHeaders()Lorg/fourthline/cling/model/message/UpnpHeaders;

    move-result-object p1

    sget-object p2, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;->HOST:Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;

    new-instance v0, Lorg/fourthline/cling/model/message/header/HostHeader;

    invoke-direct {v0}, Lorg/fourthline/cling/model/message/header/HostHeader;-><init>()V

    invoke-virtual {p1, p2, v0}, Lorg/fourthline/cling/model/message/UpnpHeaders;->add(Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;Lorg/fourthline/cling/model/message/header/UpnpHeader;)V

    return-void
.end method


# virtual methods
.method public getSearchTarget()Lorg/fourthline/cling/model/message/header/UpnpHeader;
    .locals 1

    .line 51
    iget-object v0, p0, Lorg/fourthline/cling/model/message/discovery/OutgoingSearchRequest;->searchTarget:Lorg/fourthline/cling/model/message/header/UpnpHeader;

    return-object v0
.end method
