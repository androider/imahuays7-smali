.class public abstract Lorg/fourthline/cling/support/avtransport/AbstractAVTransportService;
.super Ljava/lang/Object;
.source "AbstractAVTransportService.java"

# interfaces
.implements Lorg/fourthline/cling/support/lastchange/LastChangeDelegator;


# annotations
.annotation runtime Lorg/fourthline/cling/binding/annotations/UpnpService;
    serviceId = .subannotation Lorg/fourthline/cling/binding/annotations/UpnpServiceId;
        value = "AVTransport"
    .end subannotation
    serviceType = .subannotation Lorg/fourthline/cling/binding/annotations/UpnpServiceType;
        value = "AVTransport"
        version = 0x1
    .end subannotation
    stringConvertibleTypes = {
        Lorg/fourthline/cling/support/lastchange/LastChange;
    }
.end annotation

.annotation runtime Lorg/fourthline/cling/binding/annotations/UpnpStateVariables;
    value = {
        .subannotation Lorg/fourthline/cling/binding/annotations/UpnpStateVariable;
            allowedValuesEnum = Lorg/fourthline/cling/support/model/TransportState;
            name = "TransportState"
            sendEvents = false
        .end subannotation,
        .subannotation Lorg/fourthline/cling/binding/annotations/UpnpStateVariable;
            allowedValuesEnum = Lorg/fourthline/cling/support/model/TransportStatus;
            name = "TransportStatus"
            sendEvents = false
        .end subannotation,
        .subannotation Lorg/fourthline/cling/binding/annotations/UpnpStateVariable;
            allowedValuesEnum = Lorg/fourthline/cling/support/model/StorageMedium;
            defaultValue = "NONE"
            name = "PlaybackStorageMedium"
            sendEvents = false
        .end subannotation,
        .subannotation Lorg/fourthline/cling/binding/annotations/UpnpStateVariable;
            allowedValuesEnum = Lorg/fourthline/cling/support/model/StorageMedium;
            defaultValue = "NOT_IMPLEMENTED"
            name = "RecordStorageMedium"
            sendEvents = false
        .end subannotation,
        .subannotation Lorg/fourthline/cling/binding/annotations/UpnpStateVariable;
            datatype = "string"
            defaultValue = "NETWORK"
            name = "PossiblePlaybackStorageMedia"
            sendEvents = false
        .end subannotation,
        .subannotation Lorg/fourthline/cling/binding/annotations/UpnpStateVariable;
            datatype = "string"
            defaultValue = "NOT_IMPLEMENTED"
            name = "PossibleRecordStorageMedia"
            sendEvents = false
        .end subannotation,
        .subannotation Lorg/fourthline/cling/binding/annotations/UpnpStateVariable;
            allowedValuesEnum = Lorg/fourthline/cling/support/model/PlayMode;
            defaultValue = "NORMAL"
            name = "CurrentPlayMode"
            sendEvents = false
        .end subannotation,
        .subannotation Lorg/fourthline/cling/binding/annotations/UpnpStateVariable;
            datatype = "string"
            defaultValue = "1"
            name = "TransportPlaySpeed"
            sendEvents = false
        .end subannotation,
        .subannotation Lorg/fourthline/cling/binding/annotations/UpnpStateVariable;
            allowedValuesEnum = Lorg/fourthline/cling/support/model/RecordMediumWriteStatus;
            defaultValue = "NOT_IMPLEMENTED"
            name = "RecordMediumWriteStatus"
            sendEvents = false
        .end subannotation,
        .subannotation Lorg/fourthline/cling/binding/annotations/UpnpStateVariable;
            allowedValuesEnum = Lorg/fourthline/cling/support/model/RecordQualityMode;
            defaultValue = "NOT_IMPLEMENTED"
            name = "CurrentRecordQualityMode"
            sendEvents = false
        .end subannotation,
        .subannotation Lorg/fourthline/cling/binding/annotations/UpnpStateVariable;
            datatype = "string"
            defaultValue = "NOT_IMPLEMENTED"
            name = "PossibleRecordQualityModes"
            sendEvents = false
        .end subannotation,
        .subannotation Lorg/fourthline/cling/binding/annotations/UpnpStateVariable;
            datatype = "ui4"
            defaultValue = "0"
            name = "NumberOfTracks"
            sendEvents = false
        .end subannotation,
        .subannotation Lorg/fourthline/cling/binding/annotations/UpnpStateVariable;
            datatype = "ui4"
            defaultValue = "0"
            name = "CurrentTrack"
            sendEvents = false
        .end subannotation,
        .subannotation Lorg/fourthline/cling/binding/annotations/UpnpStateVariable;
            datatype = "string"
            name = "CurrentTrackDuration"
            sendEvents = false
        .end subannotation,
        .subannotation Lorg/fourthline/cling/binding/annotations/UpnpStateVariable;
            datatype = "string"
            defaultValue = "00:00:00"
            name = "CurrentMediaDuration"
            sendEvents = false
        .end subannotation,
        .subannotation Lorg/fourthline/cling/binding/annotations/UpnpStateVariable;
            datatype = "string"
            defaultValue = "NOT_IMPLEMENTED"
            name = "CurrentTrackMetaData"
            sendEvents = false
        .end subannotation,
        .subannotation Lorg/fourthline/cling/binding/annotations/UpnpStateVariable;
            datatype = "string"
            name = "CurrentTrackURI"
            sendEvents = false
        .end subannotation,
        .subannotation Lorg/fourthline/cling/binding/annotations/UpnpStateVariable;
            datatype = "string"
            name = "AVTransportURI"
            sendEvents = false
        .end subannotation,
        .subannotation Lorg/fourthline/cling/binding/annotations/UpnpStateVariable;
            datatype = "string"
            defaultValue = "NOT_IMPLEMENTED"
            name = "AVTransportURIMetaData"
            sendEvents = false
        .end subannotation,
        .subannotation Lorg/fourthline/cling/binding/annotations/UpnpStateVariable;
            datatype = "string"
            defaultValue = "NOT_IMPLEMENTED"
            name = "NextAVTransportURI"
            sendEvents = false
        .end subannotation,
        .subannotation Lorg/fourthline/cling/binding/annotations/UpnpStateVariable;
            datatype = "string"
            defaultValue = "NOT_IMPLEMENTED"
            name = "NextAVTransportURIMetaData"
            sendEvents = false
        .end subannotation,
        .subannotation Lorg/fourthline/cling/binding/annotations/UpnpStateVariable;
            datatype = "string"
            name = "RelativeTimePosition"
            sendEvents = false
        .end subannotation,
        .subannotation Lorg/fourthline/cling/binding/annotations/UpnpStateVariable;
            datatype = "string"
            name = "AbsoluteTimePosition"
            sendEvents = false
        .end subannotation,
        .subannotation Lorg/fourthline/cling/binding/annotations/UpnpStateVariable;
            datatype = "i4"
            defaultValue = "2147483647"
            name = "RelativeCounterPosition"
            sendEvents = false
        .end subannotation,
        .subannotation Lorg/fourthline/cling/binding/annotations/UpnpStateVariable;
            datatype = "i4"
            defaultValue = "2147483647"
            name = "AbsoluteCounterPosition"
            sendEvents = false
        .end subannotation,
        .subannotation Lorg/fourthline/cling/binding/annotations/UpnpStateVariable;
            datatype = "string"
            name = "CurrentTransportActions"
            sendEvents = false
        .end subannotation,
        .subannotation Lorg/fourthline/cling/binding/annotations/UpnpStateVariable;
            allowedValuesEnum = Lorg/fourthline/cling/support/model/SeekMode;
            name = "A_ARG_TYPE_SeekMode"
            sendEvents = false
        .end subannotation,
        .subannotation Lorg/fourthline/cling/binding/annotations/UpnpStateVariable;
            datatype = "string"
            name = "A_ARG_TYPE_SeekTarget"
            sendEvents = false
        .end subannotation,
        .subannotation Lorg/fourthline/cling/binding/annotations/UpnpStateVariable;
            datatype = "ui4"
            name = "A_ARG_TYPE_InstanceID"
            sendEvents = false
        .end subannotation
    }
.end annotation


# instance fields
.field private final lastChange:Lorg/fourthline/cling/support/lastchange/LastChange;
    .annotation runtime Lorg/fourthline/cling/binding/annotations/UpnpStateVariable;
        eventMaximumRateMilliseconds = 0xc8
    .end annotation
.end field

.field protected final propertyChangeSupport:Ljava/beans/PropertyChangeSupport;


# direct methods
.method protected constructor <init>()V
    .locals 2

    .line 201
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 202
    new-instance v0, Ljava/beans/PropertyChangeSupport;

    invoke-direct {v0, p0}, Ljava/beans/PropertyChangeSupport;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/fourthline/cling/support/avtransport/AbstractAVTransportService;->propertyChangeSupport:Ljava/beans/PropertyChangeSupport;

    .line 203
    new-instance v0, Lorg/fourthline/cling/support/lastchange/LastChange;

    new-instance v1, Lorg/fourthline/cling/support/avtransport/lastchange/AVTransportLastChangeParser;

    invoke-direct {v1}, Lorg/fourthline/cling/support/avtransport/lastchange/AVTransportLastChangeParser;-><init>()V

    invoke-direct {v0, v1}, Lorg/fourthline/cling/support/lastchange/LastChange;-><init>(Lorg/fourthline/cling/support/lastchange/LastChangeParser;)V

    iput-object v0, p0, Lorg/fourthline/cling/support/avtransport/AbstractAVTransportService;->lastChange:Lorg/fourthline/cling/support/lastchange/LastChange;

    return-void
.end method

.method protected constructor <init>(Ljava/beans/PropertyChangeSupport;)V
    .locals 1

    .line 211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 212
    iput-object p1, p0, Lorg/fourthline/cling/support/avtransport/AbstractAVTransportService;->propertyChangeSupport:Ljava/beans/PropertyChangeSupport;

    .line 213
    new-instance p1, Lorg/fourthline/cling/support/lastchange/LastChange;

    new-instance v0, Lorg/fourthline/cling/support/avtransport/lastchange/AVTransportLastChangeParser;

    invoke-direct {v0}, Lorg/fourthline/cling/support/avtransport/lastchange/AVTransportLastChangeParser;-><init>()V

    invoke-direct {p1, v0}, Lorg/fourthline/cling/support/lastchange/LastChange;-><init>(Lorg/fourthline/cling/support/lastchange/LastChangeParser;)V

    iput-object p1, p0, Lorg/fourthline/cling/support/avtransport/AbstractAVTransportService;->lastChange:Lorg/fourthline/cling/support/lastchange/LastChange;

    return-void
.end method

.method protected constructor <init>(Ljava/beans/PropertyChangeSupport;Lorg/fourthline/cling/support/lastchange/LastChange;)V
    .locals 0

    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 217
    iput-object p1, p0, Lorg/fourthline/cling/support/avtransport/AbstractAVTransportService;->propertyChangeSupport:Ljava/beans/PropertyChangeSupport;

    .line 218
    iput-object p2, p0, Lorg/fourthline/cling/support/avtransport/AbstractAVTransportService;->lastChange:Lorg/fourthline/cling/support/lastchange/LastChange;

    return-void
.end method

.method protected constructor <init>(Lorg/fourthline/cling/support/lastchange/LastChange;)V
    .locals 1

    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 207
    new-instance v0, Ljava/beans/PropertyChangeSupport;

    invoke-direct {v0, p0}, Ljava/beans/PropertyChangeSupport;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/fourthline/cling/support/avtransport/AbstractAVTransportService;->propertyChangeSupport:Ljava/beans/PropertyChangeSupport;

    .line 208
    iput-object p1, p0, Lorg/fourthline/cling/support/avtransport/AbstractAVTransportService;->lastChange:Lorg/fourthline/cling/support/lastchange/LastChange;

    return-void
.end method

.method public static getDefaultInstanceID()Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;
    .locals 3

    .line 266
    new-instance v0, Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;-><init>(J)V

    return-object v0
.end method


# virtual methods
.method public appendCurrentState(Lorg/fourthline/cling/support/lastchange/LastChange;Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 229
    invoke-virtual {p0, p2}, Lorg/fourthline/cling/support/avtransport/AbstractAVTransportService;->getMediaInfo(Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;)Lorg/fourthline/cling/support/model/MediaInfo;

    move-result-object v0

    .line 230
    invoke-virtual {p0, p2}, Lorg/fourthline/cling/support/avtransport/AbstractAVTransportService;->getTransportInfo(Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;)Lorg/fourthline/cling/support/model/TransportInfo;

    move-result-object v1

    .line 231
    invoke-virtual {p0, p2}, Lorg/fourthline/cling/support/avtransport/AbstractAVTransportService;->getTransportSettings(Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;)Lorg/fourthline/cling/support/model/TransportSettings;

    move-result-object v2

    .line 232
    invoke-virtual {p0, p2}, Lorg/fourthline/cling/support/avtransport/AbstractAVTransportService;->getPositionInfo(Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;)Lorg/fourthline/cling/support/model/PositionInfo;

    move-result-object v3

    .line 233
    invoke-virtual {p0, p2}, Lorg/fourthline/cling/support/avtransport/AbstractAVTransportService;->getDeviceCapabilities(Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;)Lorg/fourthline/cling/support/model/DeviceCapabilities;

    move-result-object v4

    const/16 v5, 0x15

    .line 235
    new-array v5, v5, [Lorg/fourthline/cling/support/lastchange/EventedValue;

    new-instance v6, Lorg/fourthline/cling/support/avtransport/lastchange/AVTransportVariable$AVTransportURI;

    .line 237
    invoke-virtual {v0}, Lorg/fourthline/cling/support/model/MediaInfo;->getCurrentURI()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/fourthline/cling/support/avtransport/lastchange/AVTransportVariable$AVTransportURI;-><init>(Ljava/net/URI;)V

    const/4 v7, 0x0

    aput-object v6, v5, v7

    new-instance v6, Lorg/fourthline/cling/support/avtransport/lastchange/AVTransportVariable$AVTransportURIMetaData;

    .line 238
    invoke-virtual {v0}, Lorg/fourthline/cling/support/model/MediaInfo;->getCurrentURIMetaData()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/fourthline/cling/support/avtransport/lastchange/AVTransportVariable$AVTransportURIMetaData;-><init>(Ljava/lang/String;)V

    const/4 v7, 0x1

    aput-object v6, v5, v7

    new-instance v6, Lorg/fourthline/cling/support/avtransport/lastchange/AVTransportVariable$CurrentMediaDuration;

    .line 239
    invoke-virtual {v0}, Lorg/fourthline/cling/support/model/MediaInfo;->getMediaDuration()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/fourthline/cling/support/avtransport/lastchange/AVTransportVariable$CurrentMediaDuration;-><init>(Ljava/lang/String;)V

    const/4 v7, 0x2

    aput-object v6, v5, v7

    new-instance v6, Lorg/fourthline/cling/support/avtransport/lastchange/AVTransportVariable$CurrentPlayMode;

    .line 240
    invoke-virtual {v2}, Lorg/fourthline/cling/support/model/TransportSettings;->getPlayMode()Lorg/fourthline/cling/support/model/PlayMode;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/fourthline/cling/support/avtransport/lastchange/AVTransportVariable$CurrentPlayMode;-><init>(Lorg/fourthline/cling/support/model/PlayMode;)V

    const/4 v7, 0x3

    aput-object v6, v5, v7

    new-instance v6, Lorg/fourthline/cling/support/avtransport/lastchange/AVTransportVariable$CurrentRecordQualityMode;

    .line 241
    invoke-virtual {v2}, Lorg/fourthline/cling/support/model/TransportSettings;->getRecQualityMode()Lorg/fourthline/cling/support/model/RecordQualityMode;

    move-result-object v2

    invoke-direct {v6, v2}, Lorg/fourthline/cling/support/avtransport/lastchange/AVTransportVariable$CurrentRecordQualityMode;-><init>(Lorg/fourthline/cling/support/model/RecordQualityMode;)V

    const/4 v2, 0x4

    aput-object v6, v5, v2

    new-instance v2, Lorg/fourthline/cling/support/avtransport/lastchange/AVTransportVariable$CurrentTrack;

    .line 242
    invoke-virtual {v3}, Lorg/fourthline/cling/support/model/PositionInfo;->getTrack()Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;

    move-result-object v6

    invoke-direct {v2, v6}, Lorg/fourthline/cling/support/avtransport/lastchange/AVTransportVariable$CurrentTrack;-><init>(Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;)V

    const/4 v6, 0x5

    aput-object v2, v5, v6

    new-instance v2, Lorg/fourthline/cling/support/avtransport/lastchange/AVTransportVariable$CurrentTrackDuration;

    .line 243
    invoke-virtual {v3}, Lorg/fourthline/cling/support/model/PositionInfo;->getTrackDuration()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Lorg/fourthline/cling/support/avtransport/lastchange/AVTransportVariable$CurrentTrackDuration;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x6

    aput-object v2, v5, v6

    new-instance v2, Lorg/fourthline/cling/support/avtransport/lastchange/AVTransportVariable$CurrentTrackMetaData;

    .line 244
    invoke-virtual {v3}, Lorg/fourthline/cling/support/model/PositionInfo;->getTrackMetaData()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Lorg/fourthline/cling/support/avtransport/lastchange/AVTransportVariable$CurrentTrackMetaData;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x7

    aput-object v2, v5, v6

    new-instance v2, Lorg/fourthline/cling/support/avtransport/lastchange/AVTransportVariable$CurrentTrackURI;

    .line 245
    invoke-virtual {v3}, Lorg/fourthline/cling/support/model/PositionInfo;->getTrackURI()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/fourthline/cling/support/avtransport/lastchange/AVTransportVariable$CurrentTrackURI;-><init>(Ljava/net/URI;)V

    const/16 v3, 0x8

    aput-object v2, v5, v3

    new-instance v2, Lorg/fourthline/cling/support/avtransport/lastchange/AVTransportVariable$CurrentTransportActions;

    .line 246
    invoke-virtual {p0, p2}, Lorg/fourthline/cling/support/avtransport/AbstractAVTransportService;->getCurrentTransportActions(Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;)[Lorg/fourthline/cling/support/model/TransportAction;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/fourthline/cling/support/avtransport/lastchange/AVTransportVariable$CurrentTransportActions;-><init>([Lorg/fourthline/cling/support/model/TransportAction;)V

    const/16 v3, 0x9

    aput-object v2, v5, v3

    new-instance v2, Lorg/fourthline/cling/support/avtransport/lastchange/AVTransportVariable$NextAVTransportURI;

    .line 247
    invoke-virtual {v0}, Lorg/fourthline/cling/support/model/MediaInfo;->getNextURI()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/fourthline/cling/support/avtransport/lastchange/AVTransportVariable$NextAVTransportURI;-><init>(Ljava/net/URI;)V

    const/16 v3, 0xa

    aput-object v2, v5, v3

    new-instance v2, Lorg/fourthline/cling/support/avtransport/lastchange/AVTransportVariable$NextAVTransportURIMetaData;

    .line 248
    invoke-virtual {v0}, Lorg/fourthline/cling/support/model/MediaInfo;->getNextURIMetaData()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/fourthline/cling/support/avtransport/lastchange/AVTransportVariable$NextAVTransportURIMetaData;-><init>(Ljava/lang/String;)V

    const/16 v3, 0xb

    aput-object v2, v5, v3

    new-instance v2, Lorg/fourthline/cling/support/avtransport/lastchange/AVTransportVariable$NumberOfTracks;

    .line 249
    invoke-virtual {v0}, Lorg/fourthline/cling/support/model/MediaInfo;->getNumberOfTracks()Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/fourthline/cling/support/avtransport/lastchange/AVTransportVariable$NumberOfTracks;-><init>(Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;)V

    const/16 v3, 0xc

    aput-object v2, v5, v3

    new-instance v2, Lorg/fourthline/cling/support/avtransport/lastchange/AVTransportVariable$PossiblePlaybackStorageMedia;

    .line 250
    invoke-virtual {v4}, Lorg/fourthline/cling/support/model/DeviceCapabilities;->getPlayMedia()[Lorg/fourthline/cling/support/model/StorageMedium;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/fourthline/cling/support/avtransport/lastchange/AVTransportVariable$PossiblePlaybackStorageMedia;-><init>([Lorg/fourthline/cling/support/model/StorageMedium;)V

    const/16 v3, 0xd

    aput-object v2, v5, v3

    new-instance v2, Lorg/fourthline/cling/support/avtransport/lastchange/AVTransportVariable$PossibleRecordQualityModes;

    .line 251
    invoke-virtual {v4}, Lorg/fourthline/cling/support/model/DeviceCapabilities;->getRecQualityModes()[Lorg/fourthline/cling/support/model/RecordQualityMode;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/fourthline/cling/support/avtransport/lastchange/AVTransportVariable$PossibleRecordQualityModes;-><init>([Lorg/fourthline/cling/support/model/RecordQualityMode;)V

    const/16 v3, 0xe

    aput-object v2, v5, v3

    new-instance v2, Lorg/fourthline/cling/support/avtransport/lastchange/AVTransportVariable$PossibleRecordStorageMedia;

    .line 252
    invoke-virtual {v4}, Lorg/fourthline/cling/support/model/DeviceCapabilities;->getRecMedia()[Lorg/fourthline/cling/support/model/StorageMedium;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/fourthline/cling/support/avtransport/lastchange/AVTransportVariable$PossibleRecordStorageMedia;-><init>([Lorg/fourthline/cling/support/model/StorageMedium;)V

    const/16 v3, 0xf

    aput-object v2, v5, v3

    new-instance v2, Lorg/fourthline/cling/support/avtransport/lastchange/AVTransportVariable$RecordMediumWriteStatus;

    .line 253
    invoke-virtual {v0}, Lorg/fourthline/cling/support/model/MediaInfo;->getWriteStatus()Lorg/fourthline/cling/support/model/RecordMediumWriteStatus;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/fourthline/cling/support/avtransport/lastchange/AVTransportVariable$RecordMediumWriteStatus;-><init>(Lorg/fourthline/cling/support/model/RecordMediumWriteStatus;)V

    const/16 v3, 0x10

    aput-object v2, v5, v3

    new-instance v2, Lorg/fourthline/cling/support/avtransport/lastchange/AVTransportVariable$RecordStorageMedium;

    .line 254
    invoke-virtual {v0}, Lorg/fourthline/cling/support/model/MediaInfo;->getRecordMedium()Lorg/fourthline/cling/support/model/StorageMedium;

    move-result-object v0

    invoke-direct {v2, v0}, Lorg/fourthline/cling/support/avtransport/lastchange/AVTransportVariable$RecordStorageMedium;-><init>(Lorg/fourthline/cling/support/model/StorageMedium;)V

    const/16 v0, 0x11

    aput-object v2, v5, v0

    new-instance v0, Lorg/fourthline/cling/support/avtransport/lastchange/AVTransportVariable$TransportPlaySpeed;

    .line 255
    invoke-virtual {v1}, Lorg/fourthline/cling/support/model/TransportInfo;->getCurrentSpeed()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/fourthline/cling/support/avtransport/lastchange/AVTransportVariable$TransportPlaySpeed;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x12

    aput-object v0, v5, v2

    new-instance v0, Lorg/fourthline/cling/support/avtransport/lastchange/AVTransportVariable$TransportState;

    .line 256
    invoke-virtual {v1}, Lorg/fourthline/cling/support/model/TransportInfo;->getCurrentTransportState()Lorg/fourthline/cling/support/model/TransportState;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/fourthline/cling/support/avtransport/lastchange/AVTransportVariable$TransportState;-><init>(Lorg/fourthline/cling/support/model/TransportState;)V

    const/16 v2, 0x13

    aput-object v0, v5, v2

    new-instance v0, Lorg/fourthline/cling/support/avtransport/lastchange/AVTransportVariable$TransportStatus;

    .line 257
    invoke-virtual {v1}, Lorg/fourthline/cling/support/model/TransportInfo;->getCurrentTransportStatus()Lorg/fourthline/cling/support/model/TransportStatus;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/fourthline/cling/support/avtransport/lastchange/AVTransportVariable$TransportStatus;-><init>(Lorg/fourthline/cling/support/model/TransportStatus;)V

    const/16 v1, 0x14

    aput-object v0, v5, v1

    .line 235
    invoke-virtual {p1, p2, v5}, Lorg/fourthline/cling/support/lastchange/LastChange;->setEventedValue(Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;[Lorg/fourthline/cling/support/lastchange/EventedValue;)V

    return-void
.end method

.method protected abstract getCurrentTransportActions(Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;)[Lorg/fourthline/cling/support/model/TransportAction;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public getCurrentTransportActionsString(Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;)Ljava/lang/String;
    .locals 0
    .param p1    # Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;
        .annotation runtime Lorg/fourthline/cling/binding/annotations/UpnpInputArgument;
            name = "InstanceID"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/support/avtransport/AVTransportException;
        }
    .end annotation

    .annotation runtime Lorg/fourthline/cling/binding/annotations/UpnpAction;
        name = "GetCurrentTransportActions"
        out = {
            .subannotation Lorg/fourthline/cling/binding/annotations/UpnpOutputArgument;
                name = "Actions"
                stateVariable = "CurrentTransportActions"
            .end subannotation
        }
    .end annotation

    .line 376
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/fourthline/cling/support/avtransport/AbstractAVTransportService;->getCurrentTransportActions(Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;)[Lorg/fourthline/cling/support/model/TransportAction;

    move-result-object p1

    invoke-static {p1}, Lorg/fourthline/cling/model/ModelUtil;->toCommaSeparatedList([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const-string p1, ""

    return-object p1
.end method

.method public abstract getDeviceCapabilities(Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;)Lorg/fourthline/cling/support/model/DeviceCapabilities;
    .param p1    # Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;
        .annotation runtime Lorg/fourthline/cling/binding/annotations/UpnpInputArgument;
            name = "InstanceID"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/support/avtransport/AVTransportException;
        }
    .end annotation

    .annotation runtime Lorg/fourthline/cling/binding/annotations/UpnpAction;
        out = {
            .subannotation Lorg/fourthline/cling/binding/annotations/UpnpOutputArgument;
                getterName = "getPlayMediaString"
                name = "PlayMedia"
                stateVariable = "PossiblePlaybackStorageMedia"
            .end subannotation,
            .subannotation Lorg/fourthline/cling/binding/annotations/UpnpOutputArgument;
                getterName = "getRecMediaString"
                name = "RecMedia"
                stateVariable = "PossibleRecordStorageMedia"
            .end subannotation,
            .subannotation Lorg/fourthline/cling/binding/annotations/UpnpOutputArgument;
                getterName = "getRecQualityModesString"
                name = "RecQualityModes"
                stateVariable = "PossibleRecordQualityModes"
            .end subannotation
        }
    .end annotation
.end method

.method public getLastChange()Lorg/fourthline/cling/support/lastchange/LastChange;
    .locals 1

    .line 223
    iget-object v0, p0, Lorg/fourthline/cling/support/avtransport/AbstractAVTransportService;->lastChange:Lorg/fourthline/cling/support/lastchange/LastChange;

    return-object v0
.end method

.method public abstract getMediaInfo(Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;)Lorg/fourthline/cling/support/model/MediaInfo;
    .param p1    # Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;
        .annotation runtime Lorg/fourthline/cling/binding/annotations/UpnpInputArgument;
            name = "InstanceID"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/support/avtransport/AVTransportException;
        }
    .end annotation

    .annotation runtime Lorg/fourthline/cling/binding/annotations/UpnpAction;
        out = {
            .subannotation Lorg/fourthline/cling/binding/annotations/UpnpOutputArgument;
                getterName = "getNumberOfTracks"
                name = "NrTracks"
                stateVariable = "NumberOfTracks"
            .end subannotation,
            .subannotation Lorg/fourthline/cling/binding/annotations/UpnpOutputArgument;
                getterName = "getMediaDuration"
                name = "MediaDuration"
                stateVariable = "CurrentMediaDuration"
            .end subannotation,
            .subannotation Lorg/fourthline/cling/binding/annotations/UpnpOutputArgument;
                getterName = "getCurrentURI"
                name = "CurrentURI"
                stateVariable = "AVTransportURI"
            .end subannotation,
            .subannotation Lorg/fourthline/cling/binding/annotations/UpnpOutputArgument;
                getterName = "getCurrentURIMetaData"
                name = "CurrentURIMetaData"
                stateVariable = "AVTransportURIMetaData"
            .end subannotation,
            .subannotation Lorg/fourthline/cling/binding/annotations/UpnpOutputArgument;
                getterName = "getNextURI"
                name = "NextURI"
                stateVariable = "NextAVTransportURI"
            .end subannotation,
            .subannotation Lorg/fourthline/cling/binding/annotations/UpnpOutputArgument;
                getterName = "getNextURIMetaData"
                name = "NextURIMetaData"
                stateVariable = "NextAVTransportURIMetaData"
            .end subannotation,
            .subannotation Lorg/fourthline/cling/binding/annotations/UpnpOutputArgument;
                getterName = "getPlayMedium"
                name = "PlayMedium"
                stateVariable = "PlaybackStorageMedium"
            .end subannotation,
            .subannotation Lorg/fourthline/cling/binding/annotations/UpnpOutputArgument;
                getterName = "getRecordMedium"
                name = "RecordMedium"
                stateVariable = "RecordStorageMedium"
            .end subannotation,
            .subannotation Lorg/fourthline/cling/binding/annotations/UpnpOutputArgument;
                getterName = "getWriteStatus"
                name = "WriteStatus"
                stateVariable = "RecordMediumWriteStatus"
            .end subannotation
        }
    .end annotation
.end method

.method public abstract getPositionInfo(Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;)Lorg/fourthline/cling/support/model/PositionInfo;
    .param p1    # Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;
        .annotation runtime Lorg/fourthline/cling/binding/annotations/UpnpInputArgument;
            name = "InstanceID"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/support/avtransport/AVTransportException;
        }
    .end annotation

    .annotation runtime Lorg/fourthline/cling/binding/annotations/UpnpAction;
        out = {
            .subannotation Lorg/fourthline/cling/binding/annotations/UpnpOutputArgument;
                getterName = "getTrack"
                name = "Track"
                stateVariable = "CurrentTrack"
            .end subannotation,
            .subannotation Lorg/fourthline/cling/binding/annotations/UpnpOutputArgument;
                getterName = "getTrackDuration"
                name = "TrackDuration"
                stateVariable = "CurrentTrackDuration"
            .end subannotation,
            .subannotation Lorg/fourthline/cling/binding/annotations/UpnpOutputArgument;
                getterName = "getTrackMetaData"
                name = "TrackMetaData"
                stateVariable = "CurrentTrackMetaData"
            .end subannotation,
            .subannotation Lorg/fourthline/cling/binding/annotations/UpnpOutputArgument;
                getterName = "getTrackURI"
                name = "TrackURI"
                stateVariable = "CurrentTrackURI"
            .end subannotation,
            .subannotation Lorg/fourthline/cling/binding/annotations/UpnpOutputArgument;
                getterName = "getRelTime"
                name = "RelTime"
                stateVariable = "RelativeTimePosition"
            .end subannotation,
            .subannotation Lorg/fourthline/cling/binding/annotations/UpnpOutputArgument;
                getterName = "getAbsTime"
                name = "AbsTime"
                stateVariable = "AbsoluteTimePosition"
            .end subannotation,
            .subannotation Lorg/fourthline/cling/binding/annotations/UpnpOutputArgument;
                getterName = "getRelCount"
                name = "RelCount"
                stateVariable = "RelativeCounterPosition"
            .end subannotation,
            .subannotation Lorg/fourthline/cling/binding/annotations/UpnpOutputArgument;
                getterName = "getAbsCount"
                name = "AbsCount"
                stateVariable = "AbsoluteCounterPosition"
            .end subannotation
        }
    .end annotation
.end method

.method public getPropertyChangeSupport()Ljava/beans/PropertyChangeSupport;
    .locals 1

    .line 262
    iget-object v0, p0, Lorg/fourthline/cling/support/avtransport/AbstractAVTransportService;->propertyChangeSupport:Ljava/beans/PropertyChangeSupport;

    return-object v0
.end method

.method public abstract getTransportInfo(Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;)Lorg/fourthline/cling/support/model/TransportInfo;
    .param p1    # Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;
        .annotation runtime Lorg/fourthline/cling/binding/annotations/UpnpInputArgument;
            name = "InstanceID"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/support/avtransport/AVTransportException;
        }
    .end annotation

    .annotation runtime Lorg/fourthline/cling/binding/annotations/UpnpAction;
        out = {
            .subannotation Lorg/fourthline/cling/binding/annotations/UpnpOutputArgument;
                getterName = "getCurrentTransportState"
                name = "CurrentTransportState"
                stateVariable = "TransportState"
            .end subannotation,
            .subannotation Lorg/fourthline/cling/binding/annotations/UpnpOutputArgument;
                getterName = "getCurrentTransportStatus"
                name = "CurrentTransportStatus"
                stateVariable = "TransportStatus"
            .end subannotation,
            .subannotation Lorg/fourthline/cling/binding/annotations/UpnpOutputArgument;
                getterName = "getCurrentSpeed"
                name = "CurrentSpeed"
                stateVariable = "TransportPlaySpeed"
            .end subannotation
        }
    .end annotation
.end method

.method public abstract getTransportSettings(Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;)Lorg/fourthline/cling/support/model/TransportSettings;
    .param p1    # Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;
        .annotation runtime Lorg/fourthline/cling/binding/annotations/UpnpInputArgument;
            name = "InstanceID"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/support/avtransport/AVTransportException;
        }
    .end annotation

    .annotation runtime Lorg/fourthline/cling/binding/annotations/UpnpAction;
        out = {
            .subannotation Lorg/fourthline/cling/binding/annotations/UpnpOutputArgument;
                getterName = "getPlayMode"
                name = "PlayMode"
                stateVariable = "CurrentPlayMode"
            .end subannotation,
            .subannotation Lorg/fourthline/cling/binding/annotations/UpnpOutputArgument;
                getterName = "getRecQualityMode"
                name = "RecQualityMode"
                stateVariable = "CurrentRecordQualityMode"
            .end subannotation
        }
    .end annotation
.end method

.method public abstract next(Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;)V
    .param p1    # Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;
        .annotation runtime Lorg/fourthline/cling/binding/annotations/UpnpInputArgument;
            name = "InstanceID"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/support/avtransport/AVTransportException;
        }
    .end annotation

    .annotation runtime Lorg/fourthline/cling/binding/annotations/UpnpAction;
    .end annotation
.end method

.method public abstract pause(Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;)V
    .param p1    # Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;
        .annotation runtime Lorg/fourthline/cling/binding/annotations/UpnpInputArgument;
            name = "InstanceID"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/support/avtransport/AVTransportException;
        }
    .end annotation

    .annotation runtime Lorg/fourthline/cling/binding/annotations/UpnpAction;
    .end annotation
.end method

.method public abstract play(Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;Ljava/lang/String;)V
    .param p1    # Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;
        .annotation runtime Lorg/fourthline/cling/binding/annotations/UpnpInputArgument;
            name = "InstanceID"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lorg/fourthline/cling/binding/annotations/UpnpInputArgument;
            name = "Speed"
            stateVariable = "TransportPlaySpeed"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/support/avtransport/AVTransportException;
        }
    .end annotation

    .annotation runtime Lorg/fourthline/cling/binding/annotations/UpnpAction;
    .end annotation
.end method

.method public abstract previous(Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;)V
    .param p1    # Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;
        .annotation runtime Lorg/fourthline/cling/binding/annotations/UpnpInputArgument;
            name = "InstanceID"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/support/avtransport/AVTransportException;
        }
    .end annotation

    .annotation runtime Lorg/fourthline/cling/binding/annotations/UpnpAction;
    .end annotation
.end method

.method public abstract record(Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;)V
    .param p1    # Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;
        .annotation runtime Lorg/fourthline/cling/binding/annotations/UpnpInputArgument;
            name = "InstanceID"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/support/avtransport/AVTransportException;
        }
    .end annotation

    .annotation runtime Lorg/fourthline/cling/binding/annotations/UpnpAction;
    .end annotation
.end method

.method public abstract seek(Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;Ljava/lang/String;Ljava/lang/String;)V
    .param p1    # Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;
        .annotation runtime Lorg/fourthline/cling/binding/annotations/UpnpInputArgument;
            name = "InstanceID"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lorg/fourthline/cling/binding/annotations/UpnpInputArgument;
            name = "Unit"
            stateVariable = "A_ARG_TYPE_SeekMode"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lorg/fourthline/cling/binding/annotations/UpnpInputArgument;
            name = "Target"
            stateVariable = "A_ARG_TYPE_SeekTarget"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/support/avtransport/AVTransportException;
        }
    .end annotation

    .annotation runtime Lorg/fourthline/cling/binding/annotations/UpnpAction;
    .end annotation
.end method

.method public abstract setAVTransportURI(Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;Ljava/lang/String;Ljava/lang/String;)V
    .param p1    # Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;
        .annotation runtime Lorg/fourthline/cling/binding/annotations/UpnpInputArgument;
            name = "InstanceID"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lorg/fourthline/cling/binding/annotations/UpnpInputArgument;
            name = "CurrentURI"
            stateVariable = "AVTransportURI"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lorg/fourthline/cling/binding/annotations/UpnpInputArgument;
            name = "CurrentURIMetaData"
            stateVariable = "AVTransportURIMetaData"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/support/avtransport/AVTransportException;
        }
    .end annotation

    .annotation runtime Lorg/fourthline/cling/binding/annotations/UpnpAction;
    .end annotation
.end method

.method public abstract setNextAVTransportURI(Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;Ljava/lang/String;Ljava/lang/String;)V
    .param p1    # Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;
        .annotation runtime Lorg/fourthline/cling/binding/annotations/UpnpInputArgument;
            name = "InstanceID"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lorg/fourthline/cling/binding/annotations/UpnpInputArgument;
            name = "NextURI"
            stateVariable = "AVTransportURI"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lorg/fourthline/cling/binding/annotations/UpnpInputArgument;
            name = "NextURIMetaData"
            stateVariable = "AVTransportURIMetaData"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/support/avtransport/AVTransportException;
        }
    .end annotation

    .annotation runtime Lorg/fourthline/cling/binding/annotations/UpnpAction;
    .end annotation
.end method

.method public abstract setPlayMode(Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;Ljava/lang/String;)V
    .param p1    # Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;
        .annotation runtime Lorg/fourthline/cling/binding/annotations/UpnpInputArgument;
            name = "InstanceID"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lorg/fourthline/cling/binding/annotations/UpnpInputArgument;
            name = "NewPlayMode"
            stateVariable = "CurrentPlayMode"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/support/avtransport/AVTransportException;
        }
    .end annotation

    .annotation runtime Lorg/fourthline/cling/binding/annotations/UpnpAction;
    .end annotation
.end method

.method public abstract setRecordQualityMode(Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;Ljava/lang/String;)V
    .param p1    # Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;
        .annotation runtime Lorg/fourthline/cling/binding/annotations/UpnpInputArgument;
            name = "InstanceID"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lorg/fourthline/cling/binding/annotations/UpnpInputArgument;
            name = "NewRecordQualityMode"
            stateVariable = "CurrentRecordQualityMode"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/support/avtransport/AVTransportException;
        }
    .end annotation

    .annotation runtime Lorg/fourthline/cling/binding/annotations/UpnpAction;
    .end annotation
.end method

.method public abstract stop(Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;)V
    .param p1    # Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;
        .annotation runtime Lorg/fourthline/cling/binding/annotations/UpnpInputArgument;
            name = "InstanceID"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/support/avtransport/AVTransportException;
        }
    .end annotation

    .annotation runtime Lorg/fourthline/cling/binding/annotations/UpnpAction;
    .end annotation
.end method
