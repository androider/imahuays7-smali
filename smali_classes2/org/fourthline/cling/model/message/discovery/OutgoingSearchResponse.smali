.class public Lorg/fourthline/cling/model/message/discovery/OutgoingSearchResponse;
.super Lorg/fourthline/cling/model/message/OutgoingDatagramMessage;
.source "OutgoingSearchResponse.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/fourthline/cling/model/message/OutgoingDatagramMessage<",
        "Lorg/fourthline/cling/model/message/UpnpResponse;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/fourthline/cling/model/message/IncomingDatagramMessage;Lorg/fourthline/cling/model/Location;Lorg/fourthline/cling/model/meta/LocalDevice;)V
    .locals 2

    .line 40
    new-instance v0, Lorg/fourthline/cling/model/message/UpnpResponse;

    sget-object v1, Lorg/fourthline/cling/model/message/UpnpResponse$Status;->OK:Lorg/fourthline/cling/model/message/UpnpResponse$Status;

    invoke-direct {v0, v1}, Lorg/fourthline/cling/model/message/UpnpResponse;-><init>(Lorg/fourthline/cling/model/message/UpnpResponse$Status;)V

    invoke-virtual {p1}, Lorg/fourthline/cling/model/message/IncomingDatagramMessage;->getSourceAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {p1}, Lorg/fourthline/cling/model/message/IncomingDatagramMessage;->getSourcePort()I

    move-result p1

    invoke-direct {p0, v0, v1, p1}, Lorg/fourthline/cling/model/message/OutgoingDatagramMessage;-><init>(Lorg/fourthline/cling/model/message/UpnpOperation;Ljava/net/InetAddress;I)V

    .line 42
    invoke-virtual {p0}, Lorg/fourthline/cling/model/message/discovery/OutgoingSearchResponse;->getHeaders()Lorg/fourthline/cling/model/message/UpnpHeaders;

    move-result-object p1

    sget-object v0, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;->MAX_AGE:Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;

    new-instance v1, Lorg/fourthline/cling/model/message/header/MaxAgeHeader;

    invoke-virtual {p3}, Lorg/fourthline/cling/model/meta/LocalDevice;->getIdentity()Lorg/fourthline/cling/model/meta/DeviceIdentity;

    move-result-object p3

    invoke-virtual {p3}, Lorg/fourthline/cling/model/meta/DeviceIdentity;->getMaxAgeSeconds()Ljava/lang/Integer;

    move-result-object p3

    invoke-direct {v1, p3}, Lorg/fourthline/cling/model/message/header/MaxAgeHeader;-><init>(Ljava/lang/Integer;)V

    invoke-virtual {p1, v0, v1}, Lorg/fourthline/cling/model/message/UpnpHeaders;->add(Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;Lorg/fourthline/cling/model/message/header/UpnpHeader;)V

    .line 43
    invoke-virtual {p0}, Lorg/fourthline/cling/model/message/discovery/OutgoingSearchResponse;->getHeaders()Lorg/fourthline/cling/model/message/UpnpHeaders;

    move-result-object p1

    sget-object p3, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;->LOCATION:Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;

    new-instance v0, Lorg/fourthline/cling/model/message/header/LocationHeader;

    invoke-virtual {p2}, Lorg/fourthline/cling/model/Location;->getURL()Ljava/net/URL;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/fourthline/cling/model/message/header/LocationHeader;-><init>(Ljava/net/URL;)V

    invoke-virtual {p1, p3, v0}, Lorg/fourthline/cling/model/message/UpnpHeaders;->add(Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;Lorg/fourthline/cling/model/message/header/UpnpHeader;)V

    .line 44
    invoke-virtual {p0}, Lorg/fourthline/cling/model/message/discovery/OutgoingSearchResponse;->getHeaders()Lorg/fourthline/cling/model/message/UpnpHeaders;

    move-result-object p1

    sget-object p3, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;->SERVER:Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;

    new-instance v0, Lorg/fourthline/cling/model/message/header/ServerHeader;

    invoke-direct {v0}, Lorg/fourthline/cling/model/message/header/ServerHeader;-><init>()V

    invoke-virtual {p1, p3, v0}, Lorg/fourthline/cling/model/message/UpnpHeaders;->add(Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;Lorg/fourthline/cling/model/message/header/UpnpHeader;)V

    .line 45
    invoke-virtual {p0}, Lorg/fourthline/cling/model/message/discovery/OutgoingSearchResponse;->getHeaders()Lorg/fourthline/cling/model/message/UpnpHeaders;

    move-result-object p1

    sget-object p3, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;->EXT:Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;

    new-instance v0, Lorg/fourthline/cling/model/message/header/EXTHeader;

    invoke-direct {v0}, Lorg/fourthline/cling/model/message/header/EXTHeader;-><init>()V

    invoke-virtual {p1, p3, v0}, Lorg/fourthline/cling/model/message/UpnpHeaders;->add(Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;Lorg/fourthline/cling/model/message/header/UpnpHeader;)V

    const-string p1, "true"

    const-string p3, "org.fourthline.cling.network.announceMACAddress"

    .line 47
    invoke-static {p3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 48
    invoke-virtual {p2}, Lorg/fourthline/cling/model/Location;->getNetworkAddress()Lorg/fourthline/cling/model/NetworkAddress;

    move-result-object p1

    invoke-virtual {p1}, Lorg/fourthline/cling/model/NetworkAddress;->getHardwareAddress()[B

    move-result-object p1

    if-eqz p1, :cond_0

    .line 49
    invoke-virtual {p0}, Lorg/fourthline/cling/model/message/discovery/OutgoingSearchResponse;->getHeaders()Lorg/fourthline/cling/model/message/UpnpHeaders;

    move-result-object p1

    sget-object p3, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;->EXT_IFACE_MAC:Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;

    new-instance v0, Lorg/fourthline/cling/model/message/header/InterfaceMacHeader;

    .line 51
    invoke-virtual {p2}, Lorg/fourthline/cling/model/Location;->getNetworkAddress()Lorg/fourthline/cling/model/NetworkAddress;

    move-result-object p2

    invoke-virtual {p2}, Lorg/fourthline/cling/model/NetworkAddress;->getHardwareAddress()[B

    move-result-object p2

    invoke-direct {v0, p2}, Lorg/fourthline/cling/model/message/header/InterfaceMacHeader;-><init>([B)V

    .line 49
    invoke-virtual {p1, p3, v0}, Lorg/fourthline/cling/model/message/UpnpHeaders;->add(Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;Lorg/fourthline/cling/model/message/header/UpnpHeader;)V

    :cond_0
    return-void
.end method
