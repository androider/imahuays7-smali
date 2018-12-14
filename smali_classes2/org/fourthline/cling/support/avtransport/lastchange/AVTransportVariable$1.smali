.class final Lorg/fourthline/cling/support/avtransport/lastchange/AVTransportVariable$1;
.super Ljava/util/HashSet;
.source "AVTransportVariable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/fourthline/cling/support/avtransport/lastchange/AVTransportVariable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashSet<",
        "Ljava/lang/Class<",
        "+",
        "Lorg/fourthline/cling/support/lastchange/EventedValue;",
        ">;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    .line 44
    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    .line 45
    const-class v0, Lorg/fourthline/cling/support/avtransport/lastchange/AVTransportVariable$TransportState;

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/avtransport/lastchange/AVTransportVariable$1;->add(Ljava/lang/Object;)Z

    .line 46
    const-class v0, Lorg/fourthline/cling/support/avtransport/lastchange/AVTransportVariable$TransportStatus;

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/avtransport/lastchange/AVTransportVariable$1;->add(Ljava/lang/Object;)Z

    .line 47
    const-class v0, Lorg/fourthline/cling/support/avtransport/lastchange/AVTransportVariable$RecordStorageMedium;

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/avtransport/lastchange/AVTransportVariable$1;->add(Ljava/lang/Object;)Z

    .line 48
    const-class v0, Lorg/fourthline/cling/support/avtransport/lastchange/AVTransportVariable$PossibleRecordStorageMedia;

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/avtransport/lastchange/AVTransportVariable$1;->add(Ljava/lang/Object;)Z

    .line 49
    const-class v0, Lorg/fourthline/cling/support/avtransport/lastchange/AVTransportVariable$PossiblePlaybackStorageMedia;

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/avtransport/lastchange/AVTransportVariable$1;->add(Ljava/lang/Object;)Z

    .line 50
    const-class v0, Lorg/fourthline/cling/support/avtransport/lastchange/AVTransportVariable$CurrentPlayMode;

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/avtransport/lastchange/AVTransportVariable$1;->add(Ljava/lang/Object;)Z

    .line 51
    const-class v0, Lorg/fourthline/cling/support/avtransport/lastchange/AVTransportVariable$TransportPlaySpeed;

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/avtransport/lastchange/AVTransportVariable$1;->add(Ljava/lang/Object;)Z

    .line 52
    const-class v0, Lorg/fourthline/cling/support/avtransport/lastchange/AVTransportVariable$RecordMediumWriteStatus;

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/avtransport/lastchange/AVTransportVariable$1;->add(Ljava/lang/Object;)Z

    .line 53
    const-class v0, Lorg/fourthline/cling/support/avtransport/lastchange/AVTransportVariable$CurrentRecordQualityMode;

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/avtransport/lastchange/AVTransportVariable$1;->add(Ljava/lang/Object;)Z

    .line 54
    const-class v0, Lorg/fourthline/cling/support/avtransport/lastchange/AVTransportVariable$PossibleRecordQualityModes;

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/avtransport/lastchange/AVTransportVariable$1;->add(Ljava/lang/Object;)Z

    .line 55
    const-class v0, Lorg/fourthline/cling/support/avtransport/lastchange/AVTransportVariable$NumberOfTracks;

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/avtransport/lastchange/AVTransportVariable$1;->add(Ljava/lang/Object;)Z

    .line 56
    const-class v0, Lorg/fourthline/cling/support/avtransport/lastchange/AVTransportVariable$CurrentTrack;

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/avtransport/lastchange/AVTransportVariable$1;->add(Ljava/lang/Object;)Z

    .line 57
    const-class v0, Lorg/fourthline/cling/support/avtransport/lastchange/AVTransportVariable$CurrentTrackDuration;

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/avtransport/lastchange/AVTransportVariable$1;->add(Ljava/lang/Object;)Z

    .line 58
    const-class v0, Lorg/fourthline/cling/support/avtransport/lastchange/AVTransportVariable$CurrentMediaDuration;

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/avtransport/lastchange/AVTransportVariable$1;->add(Ljava/lang/Object;)Z

    .line 59
    const-class v0, Lorg/fourthline/cling/support/avtransport/lastchange/AVTransportVariable$CurrentTrackMetaData;

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/avtransport/lastchange/AVTransportVariable$1;->add(Ljava/lang/Object;)Z

    .line 60
    const-class v0, Lorg/fourthline/cling/support/avtransport/lastchange/AVTransportVariable$CurrentTrackURI;

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/avtransport/lastchange/AVTransportVariable$1;->add(Ljava/lang/Object;)Z

    .line 61
    const-class v0, Lorg/fourthline/cling/support/avtransport/lastchange/AVTransportVariable$AVTransportURI;

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/avtransport/lastchange/AVTransportVariable$1;->add(Ljava/lang/Object;)Z

    .line 62
    const-class v0, Lorg/fourthline/cling/support/avtransport/lastchange/AVTransportVariable$NextAVTransportURI;

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/avtransport/lastchange/AVTransportVariable$1;->add(Ljava/lang/Object;)Z

    .line 63
    const-class v0, Lorg/fourthline/cling/support/avtransport/lastchange/AVTransportVariable$AVTransportURIMetaData;

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/avtransport/lastchange/AVTransportVariable$1;->add(Ljava/lang/Object;)Z

    .line 64
    const-class v0, Lorg/fourthline/cling/support/avtransport/lastchange/AVTransportVariable$NextAVTransportURIMetaData;

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/avtransport/lastchange/AVTransportVariable$1;->add(Ljava/lang/Object;)Z

    .line 65
    const-class v0, Lorg/fourthline/cling/support/avtransport/lastchange/AVTransportVariable$CurrentTransportActions;

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/avtransport/lastchange/AVTransportVariable$1;->add(Ljava/lang/Object;)Z

    .line 66
    const-class v0, Lorg/fourthline/cling/support/avtransport/lastchange/AVTransportVariable$RelativeTimePosition;

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/avtransport/lastchange/AVTransportVariable$1;->add(Ljava/lang/Object;)Z

    .line 67
    const-class v0, Lorg/fourthline/cling/support/avtransport/lastchange/AVTransportVariable$AbsoluteTimePosition;

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/avtransport/lastchange/AVTransportVariable$1;->add(Ljava/lang/Object;)Z

    .line 68
    const-class v0, Lorg/fourthline/cling/support/avtransport/lastchange/AVTransportVariable$RelativeCounterPosition;

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/avtransport/lastchange/AVTransportVariable$1;->add(Ljava/lang/Object;)Z

    .line 69
    const-class v0, Lorg/fourthline/cling/support/avtransport/lastchange/AVTransportVariable$AbsoluteCounterPosition;

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/avtransport/lastchange/AVTransportVariable$1;->add(Ljava/lang/Object;)Z

    return-void
.end method
