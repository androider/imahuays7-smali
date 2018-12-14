.class public Lorg/fourthline/cling/support/model/AVTransport;
.super Ljava/lang/Object;
.source "AVTransport.java"


# instance fields
.field protected deviceCapabilities:Lorg/fourthline/cling/support/model/DeviceCapabilities;

.field protected final instanceID:Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;

.field protected final lastChange:Lorg/fourthline/cling/support/lastchange/LastChange;

.field protected mediaInfo:Lorg/fourthline/cling/support/model/MediaInfo;

.field protected positionInfo:Lorg/fourthline/cling/support/model/PositionInfo;

.field protected transportInfo:Lorg/fourthline/cling/support/model/TransportInfo;

.field protected transportSettings:Lorg/fourthline/cling/support/model/TransportSettings;


# direct methods
.method public constructor <init>(Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;Lorg/fourthline/cling/support/lastchange/LastChange;Lorg/fourthline/cling/support/model/StorageMedium;)V
    .locals 2

    const/4 v0, 0x1

    .line 37
    new-array v0, v0, [Lorg/fourthline/cling/support/model/StorageMedium;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    invoke-direct {p0, p1, p2, v0}, Lorg/fourthline/cling/support/model/AVTransport;-><init>(Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;Lorg/fourthline/cling/support/lastchange/LastChange;[Lorg/fourthline/cling/support/model/StorageMedium;)V

    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;Lorg/fourthline/cling/support/lastchange/LastChange;[Lorg/fourthline/cling/support/model/StorageMedium;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lorg/fourthline/cling/support/model/AVTransport;->instanceID:Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;

    .line 42
    iput-object p2, p0, Lorg/fourthline/cling/support/model/AVTransport;->lastChange:Lorg/fourthline/cling/support/lastchange/LastChange;

    .line 43
    new-instance p1, Lorg/fourthline/cling/support/model/DeviceCapabilities;

    invoke-direct {p1, p3}, Lorg/fourthline/cling/support/model/DeviceCapabilities;-><init>([Lorg/fourthline/cling/support/model/StorageMedium;)V

    invoke-virtual {p0, p1}, Lorg/fourthline/cling/support/model/AVTransport;->setDeviceCapabilities(Lorg/fourthline/cling/support/model/DeviceCapabilities;)V

    .line 44
    new-instance p1, Lorg/fourthline/cling/support/model/MediaInfo;

    invoke-direct {p1}, Lorg/fourthline/cling/support/model/MediaInfo;-><init>()V

    invoke-virtual {p0, p1}, Lorg/fourthline/cling/support/model/AVTransport;->setMediaInfo(Lorg/fourthline/cling/support/model/MediaInfo;)V

    .line 45
    new-instance p1, Lorg/fourthline/cling/support/model/TransportInfo;

    invoke-direct {p1}, Lorg/fourthline/cling/support/model/TransportInfo;-><init>()V

    invoke-virtual {p0, p1}, Lorg/fourthline/cling/support/model/AVTransport;->setTransportInfo(Lorg/fourthline/cling/support/model/TransportInfo;)V

    .line 46
    new-instance p1, Lorg/fourthline/cling/support/model/PositionInfo;

    invoke-direct {p1}, Lorg/fourthline/cling/support/model/PositionInfo;-><init>()V

    invoke-virtual {p0, p1}, Lorg/fourthline/cling/support/model/AVTransport;->setPositionInfo(Lorg/fourthline/cling/support/model/PositionInfo;)V

    .line 47
    new-instance p1, Lorg/fourthline/cling/support/model/TransportSettings;

    invoke-direct {p1}, Lorg/fourthline/cling/support/model/TransportSettings;-><init>()V

    invoke-virtual {p0, p1}, Lorg/fourthline/cling/support/model/AVTransport;->setTransportSettings(Lorg/fourthline/cling/support/model/TransportSettings;)V

    return-void
.end method


# virtual methods
.method public getDeviceCapabilities()Lorg/fourthline/cling/support/model/DeviceCapabilities;
    .locals 1

    .line 83
    iget-object v0, p0, Lorg/fourthline/cling/support/model/AVTransport;->deviceCapabilities:Lorg/fourthline/cling/support/model/DeviceCapabilities;

    return-object v0
.end method

.method public getInstanceId()Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;
    .locals 1

    .line 51
    iget-object v0, p0, Lorg/fourthline/cling/support/model/AVTransport;->instanceID:Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;

    return-object v0
.end method

.method public getLastChange()Lorg/fourthline/cling/support/lastchange/LastChange;
    .locals 1

    .line 55
    iget-object v0, p0, Lorg/fourthline/cling/support/model/AVTransport;->lastChange:Lorg/fourthline/cling/support/lastchange/LastChange;

    return-object v0
.end method

.method public getMediaInfo()Lorg/fourthline/cling/support/model/MediaInfo;
    .locals 1

    .line 59
    iget-object v0, p0, Lorg/fourthline/cling/support/model/AVTransport;->mediaInfo:Lorg/fourthline/cling/support/model/MediaInfo;

    return-object v0
.end method

.method public getPositionInfo()Lorg/fourthline/cling/support/model/PositionInfo;
    .locals 1

    .line 75
    iget-object v0, p0, Lorg/fourthline/cling/support/model/AVTransport;->positionInfo:Lorg/fourthline/cling/support/model/PositionInfo;

    return-object v0
.end method

.method public getTransportInfo()Lorg/fourthline/cling/support/model/TransportInfo;
    .locals 1

    .line 67
    iget-object v0, p0, Lorg/fourthline/cling/support/model/AVTransport;->transportInfo:Lorg/fourthline/cling/support/model/TransportInfo;

    return-object v0
.end method

.method public getTransportSettings()Lorg/fourthline/cling/support/model/TransportSettings;
    .locals 1

    .line 91
    iget-object v0, p0, Lorg/fourthline/cling/support/model/AVTransport;->transportSettings:Lorg/fourthline/cling/support/model/TransportSettings;

    return-object v0
.end method

.method public setDeviceCapabilities(Lorg/fourthline/cling/support/model/DeviceCapabilities;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lorg/fourthline/cling/support/model/AVTransport;->deviceCapabilities:Lorg/fourthline/cling/support/model/DeviceCapabilities;

    return-void
.end method

.method public setMediaInfo(Lorg/fourthline/cling/support/model/MediaInfo;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lorg/fourthline/cling/support/model/AVTransport;->mediaInfo:Lorg/fourthline/cling/support/model/MediaInfo;

    return-void
.end method

.method public setPositionInfo(Lorg/fourthline/cling/support/model/PositionInfo;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lorg/fourthline/cling/support/model/AVTransport;->positionInfo:Lorg/fourthline/cling/support/model/PositionInfo;

    return-void
.end method

.method public setTransportInfo(Lorg/fourthline/cling/support/model/TransportInfo;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lorg/fourthline/cling/support/model/AVTransport;->transportInfo:Lorg/fourthline/cling/support/model/TransportInfo;

    return-void
.end method

.method public setTransportSettings(Lorg/fourthline/cling/support/model/TransportSettings;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lorg/fourthline/cling/support/model/AVTransport;->transportSettings:Lorg/fourthline/cling/support/model/TransportSettings;

    return-void
.end method
