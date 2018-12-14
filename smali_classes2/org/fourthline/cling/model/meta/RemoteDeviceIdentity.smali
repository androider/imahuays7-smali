.class public Lorg/fourthline/cling/model/meta/RemoteDeviceIdentity;
.super Lorg/fourthline/cling/model/meta/DeviceIdentity;
.source "RemoteDeviceIdentity.java"


# instance fields
.field private final descriptorURL:Ljava/net/URL;

.field private final discoveredOnLocalAddress:Ljava/net/InetAddress;

.field private final interfaceMacAddress:[B


# direct methods
.method public constructor <init>(Lorg/fourthline/cling/model/message/discovery/IncomingNotificationRequest;)V
    .locals 6

    .line 61
    invoke-virtual {p1}, Lorg/fourthline/cling/model/message/discovery/IncomingNotificationRequest;->getUDN()Lorg/fourthline/cling/model/types/UDN;

    move-result-object v1

    .line 62
    invoke-virtual {p1}, Lorg/fourthline/cling/model/message/discovery/IncomingNotificationRequest;->getMaxAge()Ljava/lang/Integer;

    move-result-object v2

    .line 63
    invoke-virtual {p1}, Lorg/fourthline/cling/model/message/discovery/IncomingNotificationRequest;->getLocationURL()Ljava/net/URL;

    move-result-object v3

    .line 64
    invoke-virtual {p1}, Lorg/fourthline/cling/model/message/discovery/IncomingNotificationRequest;->getInterfaceMacHeader()[B

    move-result-object v4

    .line 65
    invoke-virtual {p1}, Lorg/fourthline/cling/model/message/discovery/IncomingNotificationRequest;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v5

    move-object v0, p0

    .line 61
    invoke-direct/range {v0 .. v5}, Lorg/fourthline/cling/model/meta/RemoteDeviceIdentity;-><init>(Lorg/fourthline/cling/model/types/UDN;Ljava/lang/Integer;Ljava/net/URL;[BLjava/net/InetAddress;)V

    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/model/message/discovery/IncomingSearchResponse;)V
    .locals 6

    .line 70
    invoke-virtual {p1}, Lorg/fourthline/cling/model/message/discovery/IncomingSearchResponse;->getRootDeviceUDN()Lorg/fourthline/cling/model/types/UDN;

    move-result-object v1

    .line 71
    invoke-virtual {p1}, Lorg/fourthline/cling/model/message/discovery/IncomingSearchResponse;->getMaxAge()Ljava/lang/Integer;

    move-result-object v2

    .line 72
    invoke-virtual {p1}, Lorg/fourthline/cling/model/message/discovery/IncomingSearchResponse;->getLocationURL()Ljava/net/URL;

    move-result-object v3

    .line 73
    invoke-virtual {p1}, Lorg/fourthline/cling/model/message/discovery/IncomingSearchResponse;->getInterfaceMacHeader()[B

    move-result-object v4

    .line 74
    invoke-virtual {p1}, Lorg/fourthline/cling/model/message/discovery/IncomingSearchResponse;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v5

    move-object v0, p0

    .line 70
    invoke-direct/range {v0 .. v5}, Lorg/fourthline/cling/model/meta/RemoteDeviceIdentity;-><init>(Lorg/fourthline/cling/model/types/UDN;Ljava/lang/Integer;Ljava/net/URL;[BLjava/net/InetAddress;)V

    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/model/types/UDN;Ljava/lang/Integer;Ljava/net/URL;[BLjava/net/InetAddress;)V
    .locals 0

    .line 54
    invoke-direct {p0, p1, p2}, Lorg/fourthline/cling/model/meta/DeviceIdentity;-><init>(Lorg/fourthline/cling/model/types/UDN;Ljava/lang/Integer;)V

    .line 55
    iput-object p3, p0, Lorg/fourthline/cling/model/meta/RemoteDeviceIdentity;->descriptorURL:Ljava/net/URL;

    .line 56
    iput-object p4, p0, Lorg/fourthline/cling/model/meta/RemoteDeviceIdentity;->interfaceMacAddress:[B

    .line 57
    iput-object p5, p0, Lorg/fourthline/cling/model/meta/RemoteDeviceIdentity;->discoveredOnLocalAddress:Ljava/net/InetAddress;

    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/model/types/UDN;Lorg/fourthline/cling/model/meta/RemoteDeviceIdentity;)V
    .locals 6

    .line 50
    invoke-virtual {p2}, Lorg/fourthline/cling/model/meta/RemoteDeviceIdentity;->getMaxAgeSeconds()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2}, Lorg/fourthline/cling/model/meta/RemoteDeviceIdentity;->getDescriptorURL()Ljava/net/URL;

    move-result-object v3

    invoke-virtual {p2}, Lorg/fourthline/cling/model/meta/RemoteDeviceIdentity;->getInterfaceMacAddress()[B

    move-result-object v4

    invoke-virtual {p2}, Lorg/fourthline/cling/model/meta/RemoteDeviceIdentity;->getDiscoveredOnLocalAddress()Ljava/net/InetAddress;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lorg/fourthline/cling/model/meta/RemoteDeviceIdentity;-><init>(Lorg/fourthline/cling/model/types/UDN;Ljava/lang/Integer;Ljava/net/URL;[BLjava/net/InetAddress;)V

    return-void
.end method


# virtual methods
.method public getDescriptorURL()Ljava/net/URL;
    .locals 1

    .line 79
    iget-object v0, p0, Lorg/fourthline/cling/model/meta/RemoteDeviceIdentity;->descriptorURL:Ljava/net/URL;

    return-object v0
.end method

.method public getDiscoveredOnLocalAddress()Ljava/net/InetAddress;
    .locals 1

    .line 87
    iget-object v0, p0, Lorg/fourthline/cling/model/meta/RemoteDeviceIdentity;->discoveredOnLocalAddress:Ljava/net/InetAddress;

    return-object v0
.end method

.method public getInterfaceMacAddress()[B
    .locals 1

    .line 83
    iget-object v0, p0, Lorg/fourthline/cling/model/meta/RemoteDeviceIdentity;->interfaceMacAddress:[B

    return-object v0
.end method

.method public getWakeOnLANBytes()[B
    .locals 5

    .line 91
    invoke-virtual {p0}, Lorg/fourthline/cling/model/meta/RemoteDeviceIdentity;->getInterfaceMacAddress()[B

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 92
    :cond_0
    invoke-virtual {p0}, Lorg/fourthline/cling/model/meta/RemoteDeviceIdentity;->getInterfaceMacAddress()[B

    move-result-object v0

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x10

    const/4 v1, 0x6

    add-int/2addr v0, v1

    new-array v0, v0, [B

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    const/4 v4, -0x1

    .line 94
    aput-byte v4, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 96
    :cond_1
    :goto_1
    array-length v3, v0

    if-ge v1, v3, :cond_2

    .line 97
    invoke-virtual {p0}, Lorg/fourthline/cling/model/meta/RemoteDeviceIdentity;->getInterfaceMacAddress()[B

    move-result-object v3

    invoke-virtual {p0}, Lorg/fourthline/cling/model/meta/RemoteDeviceIdentity;->getInterfaceMacAddress()[B

    move-result-object v4

    array-length v4, v4

    invoke-static {v3, v2, v0, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 96
    invoke-virtual {p0}, Lorg/fourthline/cling/model/meta/RemoteDeviceIdentity;->getInterfaceMacAddress()[B

    move-result-object v3

    array-length v3, v3

    add-int/2addr v1, v3

    goto :goto_1

    :cond_2
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 105
    sget-boolean v0, Lorg/fourthline/cling/model/ModelUtil;->ANDROID_RUNTIME:Z

    if-eqz v0, :cond_0

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(RemoteDeviceIdentity) UDN: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/fourthline/cling/model/meta/RemoteDeviceIdentity;->getUdn()Lorg/fourthline/cling/model/types/UDN;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", Descriptor: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/fourthline/cling/model/meta/RemoteDeviceIdentity;->getDescriptorURL()Ljava/net/URL;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 108
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") UDN: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/fourthline/cling/model/meta/RemoteDeviceIdentity;->getUdn()Lorg/fourthline/cling/model/types/UDN;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", Descriptor: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/fourthline/cling/model/meta/RemoteDeviceIdentity;->getDescriptorURL()Ljava/net/URL;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
