.class public Lorg/fourthline/cling/model/message/discovery/OutgoingSearchResponseDeviceType;
.super Lorg/fourthline/cling/model/message/discovery/OutgoingSearchResponse;
.source "OutgoingSearchResponseDeviceType.java"


# direct methods
.method public constructor <init>(Lorg/fourthline/cling/model/message/IncomingDatagramMessage;Lorg/fourthline/cling/model/Location;Lorg/fourthline/cling/model/meta/LocalDevice;)V
    .locals 2

    .line 33
    invoke-direct {p0, p1, p2, p3}, Lorg/fourthline/cling/model/message/discovery/OutgoingSearchResponse;-><init>(Lorg/fourthline/cling/model/message/IncomingDatagramMessage;Lorg/fourthline/cling/model/Location;Lorg/fourthline/cling/model/meta/LocalDevice;)V

    .line 35
    invoke-virtual {p0}, Lorg/fourthline/cling/model/message/discovery/OutgoingSearchResponseDeviceType;->getHeaders()Lorg/fourthline/cling/model/message/UpnpHeaders;

    move-result-object p1

    sget-object p2, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;->ST:Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;

    new-instance v0, Lorg/fourthline/cling/model/message/header/DeviceTypeHeader;

    invoke-virtual {p3}, Lorg/fourthline/cling/model/meta/LocalDevice;->getType()Lorg/fourthline/cling/model/types/DeviceType;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/fourthline/cling/model/message/header/DeviceTypeHeader;-><init>(Lorg/fourthline/cling/model/types/DeviceType;)V

    invoke-virtual {p1, p2, v0}, Lorg/fourthline/cling/model/message/UpnpHeaders;->add(Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;Lorg/fourthline/cling/model/message/header/UpnpHeader;)V

    .line 36
    invoke-virtual {p0}, Lorg/fourthline/cling/model/message/discovery/OutgoingSearchResponseDeviceType;->getHeaders()Lorg/fourthline/cling/model/message/UpnpHeaders;

    move-result-object p1

    sget-object p2, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;->USN:Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;

    new-instance v0, Lorg/fourthline/cling/model/message/header/DeviceUSNHeader;

    invoke-virtual {p3}, Lorg/fourthline/cling/model/meta/LocalDevice;->getIdentity()Lorg/fourthline/cling/model/meta/DeviceIdentity;

    move-result-object v1

    invoke-virtual {v1}, Lorg/fourthline/cling/model/meta/DeviceIdentity;->getUdn()Lorg/fourthline/cling/model/types/UDN;

    move-result-object v1

    invoke-virtual {p3}, Lorg/fourthline/cling/model/meta/LocalDevice;->getType()Lorg/fourthline/cling/model/types/DeviceType;

    move-result-object p3

    invoke-direct {v0, v1, p3}, Lorg/fourthline/cling/model/message/header/DeviceUSNHeader;-><init>(Lorg/fourthline/cling/model/types/UDN;Lorg/fourthline/cling/model/types/DeviceType;)V

    invoke-virtual {p1, p2, v0}, Lorg/fourthline/cling/model/message/UpnpHeaders;->add(Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;Lorg/fourthline/cling/model/message/header/UpnpHeader;)V

    return-void
.end method
