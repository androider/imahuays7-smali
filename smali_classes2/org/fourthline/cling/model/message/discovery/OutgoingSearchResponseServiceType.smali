.class public Lorg/fourthline/cling/model/message/discovery/OutgoingSearchResponseServiceType;
.super Lorg/fourthline/cling/model/message/discovery/OutgoingSearchResponse;
.source "OutgoingSearchResponseServiceType.java"


# direct methods
.method public constructor <init>(Lorg/fourthline/cling/model/message/IncomingDatagramMessage;Lorg/fourthline/cling/model/Location;Lorg/fourthline/cling/model/meta/LocalDevice;Lorg/fourthline/cling/model/types/ServiceType;)V
    .locals 1

    .line 35
    invoke-direct {p0, p1, p2, p3}, Lorg/fourthline/cling/model/message/discovery/OutgoingSearchResponse;-><init>(Lorg/fourthline/cling/model/message/IncomingDatagramMessage;Lorg/fourthline/cling/model/Location;Lorg/fourthline/cling/model/meta/LocalDevice;)V

    .line 37
    invoke-virtual {p0}, Lorg/fourthline/cling/model/message/discovery/OutgoingSearchResponseServiceType;->getHeaders()Lorg/fourthline/cling/model/message/UpnpHeaders;

    move-result-object p1

    sget-object p2, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;->ST:Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;

    new-instance v0, Lorg/fourthline/cling/model/message/header/ServiceTypeHeader;

    invoke-direct {v0, p4}, Lorg/fourthline/cling/model/message/header/ServiceTypeHeader;-><init>(Lorg/fourthline/cling/model/types/ServiceType;)V

    invoke-virtual {p1, p2, v0}, Lorg/fourthline/cling/model/message/UpnpHeaders;->add(Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;Lorg/fourthline/cling/model/message/header/UpnpHeader;)V

    .line 38
    invoke-virtual {p0}, Lorg/fourthline/cling/model/message/discovery/OutgoingSearchResponseServiceType;->getHeaders()Lorg/fourthline/cling/model/message/UpnpHeaders;

    move-result-object p1

    sget-object p2, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;->USN:Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;

    new-instance v0, Lorg/fourthline/cling/model/message/header/ServiceUSNHeader;

    invoke-virtual {p3}, Lorg/fourthline/cling/model/meta/LocalDevice;->getIdentity()Lorg/fourthline/cling/model/meta/DeviceIdentity;

    move-result-object p3

    invoke-virtual {p3}, Lorg/fourthline/cling/model/meta/DeviceIdentity;->getUdn()Lorg/fourthline/cling/model/types/UDN;

    move-result-object p3

    invoke-direct {v0, p3, p4}, Lorg/fourthline/cling/model/message/header/ServiceUSNHeader;-><init>(Lorg/fourthline/cling/model/types/UDN;Lorg/fourthline/cling/model/types/ServiceType;)V

    invoke-virtual {p1, p2, v0}, Lorg/fourthline/cling/model/message/UpnpHeaders;->add(Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;Lorg/fourthline/cling/model/message/header/UpnpHeader;)V

    return-void
.end method
