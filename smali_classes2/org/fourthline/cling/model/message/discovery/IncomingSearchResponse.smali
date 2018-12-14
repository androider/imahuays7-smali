.class public Lorg/fourthline/cling/model/message/discovery/IncomingSearchResponse;
.super Lorg/fourthline/cling/model/message/IncomingDatagramMessage;
.source "IncomingSearchResponse.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/fourthline/cling/model/message/IncomingDatagramMessage<",
        "Lorg/fourthline/cling/model/message/UpnpResponse;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/fourthline/cling/model/message/IncomingDatagramMessage;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/fourthline/cling/model/message/IncomingDatagramMessage<",
            "Lorg/fourthline/cling/model/message/UpnpResponse;",
            ">;)V"
        }
    .end annotation

    .line 40
    invoke-direct {p0, p1}, Lorg/fourthline/cling/model/message/IncomingDatagramMessage;-><init>(Lorg/fourthline/cling/model/message/IncomingDatagramMessage;)V

    return-void
.end method


# virtual methods
.method public getInterfaceMacHeader()[B
    .locals 3

    .line 85
    invoke-virtual {p0}, Lorg/fourthline/cling/model/message/discovery/IncomingSearchResponse;->getHeaders()Lorg/fourthline/cling/model/message/UpnpHeaders;

    move-result-object v0

    sget-object v1, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;->EXT_IFACE_MAC:Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;

    const-class v2, Lorg/fourthline/cling/model/message/header/InterfaceMacHeader;

    invoke-virtual {v0, v1, v2}, Lorg/fourthline/cling/model/message/UpnpHeaders;->getFirstHeader(Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;Ljava/lang/Class;)Lorg/fourthline/cling/model/message/header/UpnpHeader;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/model/message/header/InterfaceMacHeader;

    if-eqz v0, :cond_0

    .line 87
    invoke-virtual {v0}, Lorg/fourthline/cling/model/message/header/InterfaceMacHeader;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLocationURL()Ljava/net/URL;
    .locals 3

    .line 69
    invoke-virtual {p0}, Lorg/fourthline/cling/model/message/discovery/IncomingSearchResponse;->getHeaders()Lorg/fourthline/cling/model/message/UpnpHeaders;

    move-result-object v0

    sget-object v1, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;->LOCATION:Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;

    const-class v2, Lorg/fourthline/cling/model/message/header/LocationHeader;

    invoke-virtual {v0, v1, v2}, Lorg/fourthline/cling/model/message/UpnpHeaders;->getFirstHeader(Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;Ljava/lang/Class;)Lorg/fourthline/cling/model/message/header/UpnpHeader;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/model/message/header/LocationHeader;

    if-eqz v0, :cond_0

    .line 71
    invoke-virtual {v0}, Lorg/fourthline/cling/model/message/header/LocationHeader;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/URL;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMaxAge()Ljava/lang/Integer;
    .locals 3

    .line 77
    invoke-virtual {p0}, Lorg/fourthline/cling/model/message/discovery/IncomingSearchResponse;->getHeaders()Lorg/fourthline/cling/model/message/UpnpHeaders;

    move-result-object v0

    sget-object v1, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;->MAX_AGE:Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;

    const-class v2, Lorg/fourthline/cling/model/message/header/MaxAgeHeader;

    invoke-virtual {v0, v1, v2}, Lorg/fourthline/cling/model/message/UpnpHeaders;->getFirstHeader(Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;Ljava/lang/Class;)Lorg/fourthline/cling/model/message/header/UpnpHeader;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/model/message/header/MaxAgeHeader;

    if-eqz v0, :cond_0

    .line 79
    invoke-virtual {v0}, Lorg/fourthline/cling/model/message/header/MaxAgeHeader;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRootDeviceUDN()Lorg/fourthline/cling/model/types/UDN;
    .locals 3

    .line 53
    invoke-virtual {p0}, Lorg/fourthline/cling/model/message/discovery/IncomingSearchResponse;->getHeaders()Lorg/fourthline/cling/model/message/UpnpHeaders;

    move-result-object v0

    sget-object v1, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;->USN:Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;

    const-class v2, Lorg/fourthline/cling/model/message/header/USNRootDeviceHeader;

    invoke-virtual {v0, v1, v2}, Lorg/fourthline/cling/model/message/UpnpHeaders;->getFirstHeader(Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;Ljava/lang/Class;)Lorg/fourthline/cling/model/message/header/UpnpHeader;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 54
    invoke-virtual {v0}, Lorg/fourthline/cling/model/message/header/UpnpHeader;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/model/types/UDN;

    return-object v0

    .line 56
    :cond_0
    invoke-virtual {p0}, Lorg/fourthline/cling/model/message/discovery/IncomingSearchResponse;->getHeaders()Lorg/fourthline/cling/model/message/UpnpHeaders;

    move-result-object v0

    sget-object v1, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;->USN:Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;

    const-class v2, Lorg/fourthline/cling/model/message/header/UDNHeader;

    invoke-virtual {v0, v1, v2}, Lorg/fourthline/cling/model/message/UpnpHeaders;->getFirstHeader(Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;Ljava/lang/Class;)Lorg/fourthline/cling/model/message/header/UpnpHeader;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 57
    invoke-virtual {v0}, Lorg/fourthline/cling/model/message/header/UpnpHeader;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/model/types/UDN;

    return-object v0

    .line 59
    :cond_1
    invoke-virtual {p0}, Lorg/fourthline/cling/model/message/discovery/IncomingSearchResponse;->getHeaders()Lorg/fourthline/cling/model/message/UpnpHeaders;

    move-result-object v0

    sget-object v1, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;->USN:Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;

    const-class v2, Lorg/fourthline/cling/model/message/header/DeviceUSNHeader;

    invoke-virtual {v0, v1, v2}, Lorg/fourthline/cling/model/message/UpnpHeaders;->getFirstHeader(Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;Ljava/lang/Class;)Lorg/fourthline/cling/model/message/header/UpnpHeader;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 60
    invoke-virtual {v0}, Lorg/fourthline/cling/model/message/header/UpnpHeader;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/model/types/NamedDeviceType;

    invoke-virtual {v0}, Lorg/fourthline/cling/model/types/NamedDeviceType;->getUdn()Lorg/fourthline/cling/model/types/UDN;

    move-result-object v0

    return-object v0

    .line 62
    :cond_2
    invoke-virtual {p0}, Lorg/fourthline/cling/model/message/discovery/IncomingSearchResponse;->getHeaders()Lorg/fourthline/cling/model/message/UpnpHeaders;

    move-result-object v0

    sget-object v1, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;->USN:Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;

    const-class v2, Lorg/fourthline/cling/model/message/header/ServiceUSNHeader;

    invoke-virtual {v0, v1, v2}, Lorg/fourthline/cling/model/message/UpnpHeaders;->getFirstHeader(Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;Ljava/lang/Class;)Lorg/fourthline/cling/model/message/header/UpnpHeader;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 63
    invoke-virtual {v0}, Lorg/fourthline/cling/model/message/header/UpnpHeader;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/model/types/NamedServiceType;

    invoke-virtual {v0}, Lorg/fourthline/cling/model/types/NamedServiceType;->getUdn()Lorg/fourthline/cling/model/types/UDN;

    move-result-object v0

    return-object v0

    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method

.method public isSearchResponseMessage()Z
    .locals 4

    .line 44
    invoke-virtual {p0}, Lorg/fourthline/cling/model/message/discovery/IncomingSearchResponse;->getHeaders()Lorg/fourthline/cling/model/message/UpnpHeaders;

    move-result-object v0

    sget-object v1, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;->ST:Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;

    invoke-virtual {v0, v1}, Lorg/fourthline/cling/model/message/UpnpHeaders;->getFirstHeader(Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;)Lorg/fourthline/cling/model/message/header/UpnpHeader;

    move-result-object v0

    .line 45
    invoke-virtual {p0}, Lorg/fourthline/cling/model/message/discovery/IncomingSearchResponse;->getHeaders()Lorg/fourthline/cling/model/message/UpnpHeaders;

    move-result-object v1

    sget-object v2, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;->USN:Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;

    invoke-virtual {v1, v2}, Lorg/fourthline/cling/model/message/UpnpHeaders;->getFirstHeader(Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;)Lorg/fourthline/cling/model/message/header/UpnpHeader;

    move-result-object v1

    .line 46
    invoke-virtual {p0}, Lorg/fourthline/cling/model/message/discovery/IncomingSearchResponse;->getHeaders()Lorg/fourthline/cling/model/message/UpnpHeaders;

    move-result-object v2

    sget-object v3, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;->EXT:Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;

    invoke-virtual {v2, v3}, Lorg/fourthline/cling/model/message/UpnpHeaders;->getFirstHeader(Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;)Lorg/fourthline/cling/model/message/header/UpnpHeader;

    move-result-object v2

    if-eqz v0, :cond_0

    .line 47
    invoke-virtual {v0}, Lorg/fourthline/cling/model/message/header/UpnpHeader;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/fourthline/cling/model/message/header/UpnpHeader;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
