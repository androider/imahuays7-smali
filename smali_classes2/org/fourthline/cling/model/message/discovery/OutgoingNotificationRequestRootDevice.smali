.class public Lorg/fourthline/cling/model/message/discovery/OutgoingNotificationRequestRootDevice;
.super Lorg/fourthline/cling/model/message/discovery/OutgoingNotificationRequest;
.source "OutgoingNotificationRequestRootDevice.java"


# direct methods
.method public constructor <init>(Lorg/fourthline/cling/model/Location;Lorg/fourthline/cling/model/meta/LocalDevice;Lorg/fourthline/cling/model/types/NotificationSubtype;)V
    .locals 2

    .line 33
    invoke-direct {p0, p1, p2, p3}, Lorg/fourthline/cling/model/message/discovery/OutgoingNotificationRequest;-><init>(Lorg/fourthline/cling/model/Location;Lorg/fourthline/cling/model/meta/LocalDevice;Lorg/fourthline/cling/model/types/NotificationSubtype;)V

    .line 35
    invoke-virtual {p0}, Lorg/fourthline/cling/model/message/discovery/OutgoingNotificationRequestRootDevice;->getHeaders()Lorg/fourthline/cling/model/message/UpnpHeaders;

    move-result-object p3

    sget-object v0, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;->NT:Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;

    new-instance v1, Lorg/fourthline/cling/model/message/header/RootDeviceHeader;

    invoke-direct {v1}, Lorg/fourthline/cling/model/message/header/RootDeviceHeader;-><init>()V

    invoke-virtual {p3, v0, v1}, Lorg/fourthline/cling/model/message/UpnpHeaders;->add(Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;Lorg/fourthline/cling/model/message/header/UpnpHeader;)V

    .line 36
    invoke-virtual {p0}, Lorg/fourthline/cling/model/message/discovery/OutgoingNotificationRequestRootDevice;->getHeaders()Lorg/fourthline/cling/model/message/UpnpHeaders;

    move-result-object p3

    sget-object v0, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;->USN:Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;

    new-instance v1, Lorg/fourthline/cling/model/message/header/USNRootDeviceHeader;

    invoke-virtual {p2}, Lorg/fourthline/cling/model/meta/LocalDevice;->getIdentity()Lorg/fourthline/cling/model/meta/DeviceIdentity;

    move-result-object p2

    invoke-virtual {p2}, Lorg/fourthline/cling/model/meta/DeviceIdentity;->getUdn()Lorg/fourthline/cling/model/types/UDN;

    move-result-object p2

    invoke-direct {v1, p2}, Lorg/fourthline/cling/model/message/header/USNRootDeviceHeader;-><init>(Lorg/fourthline/cling/model/types/UDN;)V

    invoke-virtual {p3, v0, v1}, Lorg/fourthline/cling/model/message/UpnpHeaders;->add(Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;Lorg/fourthline/cling/model/message/header/UpnpHeader;)V

    const-string p2, "true"

    const-string p3, "org.fourthline.cling.network.announceMACAddress"

    .line 38
    invoke-static {p3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 39
    invoke-virtual {p1}, Lorg/fourthline/cling/model/Location;->getNetworkAddress()Lorg/fourthline/cling/model/NetworkAddress;

    move-result-object p2

    invoke-virtual {p2}, Lorg/fourthline/cling/model/NetworkAddress;->getHardwareAddress()[B

    move-result-object p2

    if-eqz p2, :cond_0

    .line 40
    invoke-virtual {p0}, Lorg/fourthline/cling/model/message/discovery/OutgoingNotificationRequestRootDevice;->getHeaders()Lorg/fourthline/cling/model/message/UpnpHeaders;

    move-result-object p2

    sget-object p3, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;->EXT_IFACE_MAC:Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;

    new-instance v0, Lorg/fourthline/cling/model/message/header/InterfaceMacHeader;

    .line 42
    invoke-virtual {p1}, Lorg/fourthline/cling/model/Location;->getNetworkAddress()Lorg/fourthline/cling/model/NetworkAddress;

    move-result-object p1

    invoke-virtual {p1}, Lorg/fourthline/cling/model/NetworkAddress;->getHardwareAddress()[B

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/fourthline/cling/model/message/header/InterfaceMacHeader;-><init>([B)V

    .line 40
    invoke-virtual {p2, p3, v0}, Lorg/fourthline/cling/model/message/UpnpHeaders;->add(Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;Lorg/fourthline/cling/model/message/header/UpnpHeader;)V

    :cond_0
    return-void
.end method
