.class public Lorg/fourthline/cling/model/message/discovery/OutgoingNotificationRequestUDN;
.super Lorg/fourthline/cling/model/message/discovery/OutgoingNotificationRequest;
.source "OutgoingNotificationRequestUDN.java"


# direct methods
.method public constructor <init>(Lorg/fourthline/cling/model/Location;Lorg/fourthline/cling/model/meta/LocalDevice;Lorg/fourthline/cling/model/types/NotificationSubtype;)V
    .locals 2

    .line 30
    invoke-direct {p0, p1, p2, p3}, Lorg/fourthline/cling/model/message/discovery/OutgoingNotificationRequest;-><init>(Lorg/fourthline/cling/model/Location;Lorg/fourthline/cling/model/meta/LocalDevice;Lorg/fourthline/cling/model/types/NotificationSubtype;)V

    .line 32
    invoke-virtual {p0}, Lorg/fourthline/cling/model/message/discovery/OutgoingNotificationRequestUDN;->getHeaders()Lorg/fourthline/cling/model/message/UpnpHeaders;

    move-result-object p1

    sget-object p3, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;->NT:Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;

    new-instance v0, Lorg/fourthline/cling/model/message/header/UDNHeader;

    invoke-virtual {p2}, Lorg/fourthline/cling/model/meta/LocalDevice;->getIdentity()Lorg/fourthline/cling/model/meta/DeviceIdentity;

    move-result-object v1

    invoke-virtual {v1}, Lorg/fourthline/cling/model/meta/DeviceIdentity;->getUdn()Lorg/fourthline/cling/model/types/UDN;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/fourthline/cling/model/message/header/UDNHeader;-><init>(Lorg/fourthline/cling/model/types/UDN;)V

    invoke-virtual {p1, p3, v0}, Lorg/fourthline/cling/model/message/UpnpHeaders;->add(Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;Lorg/fourthline/cling/model/message/header/UpnpHeader;)V

    .line 33
    invoke-virtual {p0}, Lorg/fourthline/cling/model/message/discovery/OutgoingNotificationRequestUDN;->getHeaders()Lorg/fourthline/cling/model/message/UpnpHeaders;

    move-result-object p1

    sget-object p3, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;->USN:Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;

    new-instance v0, Lorg/fourthline/cling/model/message/header/UDNHeader;

    invoke-virtual {p2}, Lorg/fourthline/cling/model/meta/LocalDevice;->getIdentity()Lorg/fourthline/cling/model/meta/DeviceIdentity;

    move-result-object p2

    invoke-virtual {p2}, Lorg/fourthline/cling/model/meta/DeviceIdentity;->getUdn()Lorg/fourthline/cling/model/types/UDN;

    move-result-object p2

    invoke-direct {v0, p2}, Lorg/fourthline/cling/model/message/header/UDNHeader;-><init>(Lorg/fourthline/cling/model/types/UDN;)V

    invoke-virtual {p1, p3, v0}, Lorg/fourthline/cling/model/message/UpnpHeaders;->add(Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;Lorg/fourthline/cling/model/message/header/UpnpHeader;)V

    return-void
.end method
