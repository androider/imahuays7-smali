.class public Lorg/fourthline/cling/support/model/MediaInfo;
.super Ljava/lang/Object;
.source "MediaInfo.java"


# instance fields
.field private currentURI:Ljava/lang/String;

.field private currentURIMetaData:Ljava/lang/String;

.field private mediaDuration:Ljava/lang/String;

.field private nextURI:Ljava/lang/String;

.field private nextURIMetaData:Ljava/lang/String;

.field private numberOfTracks:Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;

.field private playMedium:Lorg/fourthline/cling/support/model/StorageMedium;

.field private recordMedium:Lorg/fourthline/cling/support/model/StorageMedium;

.field private writeStatus:Lorg/fourthline/cling/support/model/RecordMediumWriteStatus;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 28
    iput-object v0, p0, Lorg/fourthline/cling/support/model/MediaInfo;->currentURI:Ljava/lang/String;

    const-string v0, ""

    .line 29
    iput-object v0, p0, Lorg/fourthline/cling/support/model/MediaInfo;->currentURIMetaData:Ljava/lang/String;

    const-string v0, "NOT_IMPLEMENTED"

    .line 30
    iput-object v0, p0, Lorg/fourthline/cling/support/model/MediaInfo;->nextURI:Ljava/lang/String;

    const-string v0, "NOT_IMPLEMENTED"

    .line 31
    iput-object v0, p0, Lorg/fourthline/cling/support/model/MediaInfo;->nextURIMetaData:Ljava/lang/String;

    .line 33
    new-instance v0, Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;-><init>(J)V

    iput-object v0, p0, Lorg/fourthline/cling/support/model/MediaInfo;->numberOfTracks:Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;

    const-string v0, "00:00:00"

    .line 34
    iput-object v0, p0, Lorg/fourthline/cling/support/model/MediaInfo;->mediaDuration:Ljava/lang/String;

    .line 35
    sget-object v0, Lorg/fourthline/cling/support/model/StorageMedium;->NONE:Lorg/fourthline/cling/support/model/StorageMedium;

    iput-object v0, p0, Lorg/fourthline/cling/support/model/MediaInfo;->playMedium:Lorg/fourthline/cling/support/model/StorageMedium;

    .line 36
    sget-object v0, Lorg/fourthline/cling/support/model/StorageMedium;->NOT_IMPLEMENTED:Lorg/fourthline/cling/support/model/StorageMedium;

    iput-object v0, p0, Lorg/fourthline/cling/support/model/MediaInfo;->recordMedium:Lorg/fourthline/cling/support/model/StorageMedium;

    .line 37
    sget-object v0, Lorg/fourthline/cling/support/model/RecordMediumWriteStatus;->NOT_IMPLEMENTED:Lorg/fourthline/cling/support/model/RecordMediumWriteStatus;

    iput-object v0, p0, Lorg/fourthline/cling/support/model/MediaInfo;->writeStatus:Lorg/fourthline/cling/support/model/RecordMediumWriteStatus;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 28
    iput-object v0, p0, Lorg/fourthline/cling/support/model/MediaInfo;->currentURI:Ljava/lang/String;

    const-string v0, ""

    .line 29
    iput-object v0, p0, Lorg/fourthline/cling/support/model/MediaInfo;->currentURIMetaData:Ljava/lang/String;

    const-string v0, "NOT_IMPLEMENTED"

    .line 30
    iput-object v0, p0, Lorg/fourthline/cling/support/model/MediaInfo;->nextURI:Ljava/lang/String;

    const-string v0, "NOT_IMPLEMENTED"

    .line 31
    iput-object v0, p0, Lorg/fourthline/cling/support/model/MediaInfo;->nextURIMetaData:Ljava/lang/String;

    .line 33
    new-instance v0, Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;-><init>(J)V

    iput-object v0, p0, Lorg/fourthline/cling/support/model/MediaInfo;->numberOfTracks:Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;

    const-string v0, "00:00:00"

    .line 34
    iput-object v0, p0, Lorg/fourthline/cling/support/model/MediaInfo;->mediaDuration:Ljava/lang/String;

    .line 35
    sget-object v0, Lorg/fourthline/cling/support/model/StorageMedium;->NONE:Lorg/fourthline/cling/support/model/StorageMedium;

    iput-object v0, p0, Lorg/fourthline/cling/support/model/MediaInfo;->playMedium:Lorg/fourthline/cling/support/model/StorageMedium;

    .line 36
    sget-object v0, Lorg/fourthline/cling/support/model/StorageMedium;->NOT_IMPLEMENTED:Lorg/fourthline/cling/support/model/StorageMedium;

    iput-object v0, p0, Lorg/fourthline/cling/support/model/MediaInfo;->recordMedium:Lorg/fourthline/cling/support/model/StorageMedium;

    .line 37
    sget-object v0, Lorg/fourthline/cling/support/model/RecordMediumWriteStatus;->NOT_IMPLEMENTED:Lorg/fourthline/cling/support/model/RecordMediumWriteStatus;

    iput-object v0, p0, Lorg/fourthline/cling/support/model/MediaInfo;->writeStatus:Lorg/fourthline/cling/support/model/RecordMediumWriteStatus;

    .line 58
    iput-object p1, p0, Lorg/fourthline/cling/support/model/MediaInfo;->currentURI:Ljava/lang/String;

    .line 59
    iput-object p2, p0, Lorg/fourthline/cling/support/model/MediaInfo;->currentURIMetaData:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;Ljava/lang/String;Lorg/fourthline/cling/support/model/StorageMedium;)V
    .locals 3

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 28
    iput-object v0, p0, Lorg/fourthline/cling/support/model/MediaInfo;->currentURI:Ljava/lang/String;

    const-string v0, ""

    .line 29
    iput-object v0, p0, Lorg/fourthline/cling/support/model/MediaInfo;->currentURIMetaData:Ljava/lang/String;

    const-string v0, "NOT_IMPLEMENTED"

    .line 30
    iput-object v0, p0, Lorg/fourthline/cling/support/model/MediaInfo;->nextURI:Ljava/lang/String;

    const-string v0, "NOT_IMPLEMENTED"

    .line 31
    iput-object v0, p0, Lorg/fourthline/cling/support/model/MediaInfo;->nextURIMetaData:Ljava/lang/String;

    .line 33
    new-instance v0, Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;-><init>(J)V

    iput-object v0, p0, Lorg/fourthline/cling/support/model/MediaInfo;->numberOfTracks:Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;

    const-string v0, "00:00:00"

    .line 34
    iput-object v0, p0, Lorg/fourthline/cling/support/model/MediaInfo;->mediaDuration:Ljava/lang/String;

    .line 35
    sget-object v0, Lorg/fourthline/cling/support/model/StorageMedium;->NONE:Lorg/fourthline/cling/support/model/StorageMedium;

    iput-object v0, p0, Lorg/fourthline/cling/support/model/MediaInfo;->playMedium:Lorg/fourthline/cling/support/model/StorageMedium;

    .line 36
    sget-object v0, Lorg/fourthline/cling/support/model/StorageMedium;->NOT_IMPLEMENTED:Lorg/fourthline/cling/support/model/StorageMedium;

    iput-object v0, p0, Lorg/fourthline/cling/support/model/MediaInfo;->recordMedium:Lorg/fourthline/cling/support/model/StorageMedium;

    .line 37
    sget-object v0, Lorg/fourthline/cling/support/model/RecordMediumWriteStatus;->NOT_IMPLEMENTED:Lorg/fourthline/cling/support/model/RecordMediumWriteStatus;

    iput-object v0, p0, Lorg/fourthline/cling/support/model/MediaInfo;->writeStatus:Lorg/fourthline/cling/support/model/RecordMediumWriteStatus;

    .line 89
    iput-object p1, p0, Lorg/fourthline/cling/support/model/MediaInfo;->currentURI:Ljava/lang/String;

    .line 90
    iput-object p2, p0, Lorg/fourthline/cling/support/model/MediaInfo;->currentURIMetaData:Ljava/lang/String;

    .line 91
    iput-object p3, p0, Lorg/fourthline/cling/support/model/MediaInfo;->nextURI:Ljava/lang/String;

    .line 92
    iput-object p4, p0, Lorg/fourthline/cling/support/model/MediaInfo;->nextURIMetaData:Ljava/lang/String;

    .line 93
    iput-object p5, p0, Lorg/fourthline/cling/support/model/MediaInfo;->numberOfTracks:Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;

    .line 94
    iput-object p6, p0, Lorg/fourthline/cling/support/model/MediaInfo;->mediaDuration:Ljava/lang/String;

    .line 95
    iput-object p7, p0, Lorg/fourthline/cling/support/model/MediaInfo;->playMedium:Lorg/fourthline/cling/support/model/StorageMedium;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;Ljava/lang/String;Lorg/fourthline/cling/support/model/StorageMedium;Lorg/fourthline/cling/support/model/StorageMedium;Lorg/fourthline/cling/support/model/RecordMediumWriteStatus;)V
    .locals 3

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 28
    iput-object v0, p0, Lorg/fourthline/cling/support/model/MediaInfo;->currentURI:Ljava/lang/String;

    const-string v0, ""

    .line 29
    iput-object v0, p0, Lorg/fourthline/cling/support/model/MediaInfo;->currentURIMetaData:Ljava/lang/String;

    const-string v0, "NOT_IMPLEMENTED"

    .line 30
    iput-object v0, p0, Lorg/fourthline/cling/support/model/MediaInfo;->nextURI:Ljava/lang/String;

    const-string v0, "NOT_IMPLEMENTED"

    .line 31
    iput-object v0, p0, Lorg/fourthline/cling/support/model/MediaInfo;->nextURIMetaData:Ljava/lang/String;

    .line 33
    new-instance v0, Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;-><init>(J)V

    iput-object v0, p0, Lorg/fourthline/cling/support/model/MediaInfo;->numberOfTracks:Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;

    const-string v0, "00:00:00"

    .line 34
    iput-object v0, p0, Lorg/fourthline/cling/support/model/MediaInfo;->mediaDuration:Ljava/lang/String;

    .line 35
    sget-object v0, Lorg/fourthline/cling/support/model/StorageMedium;->NONE:Lorg/fourthline/cling/support/model/StorageMedium;

    iput-object v0, p0, Lorg/fourthline/cling/support/model/MediaInfo;->playMedium:Lorg/fourthline/cling/support/model/StorageMedium;

    .line 36
    sget-object v0, Lorg/fourthline/cling/support/model/StorageMedium;->NOT_IMPLEMENTED:Lorg/fourthline/cling/support/model/StorageMedium;

    iput-object v0, p0, Lorg/fourthline/cling/support/model/MediaInfo;->recordMedium:Lorg/fourthline/cling/support/model/StorageMedium;

    .line 37
    sget-object v0, Lorg/fourthline/cling/support/model/RecordMediumWriteStatus;->NOT_IMPLEMENTED:Lorg/fourthline/cling/support/model/RecordMediumWriteStatus;

    iput-object v0, p0, Lorg/fourthline/cling/support/model/MediaInfo;->writeStatus:Lorg/fourthline/cling/support/model/RecordMediumWriteStatus;

    .line 103
    iput-object p1, p0, Lorg/fourthline/cling/support/model/MediaInfo;->currentURI:Ljava/lang/String;

    .line 104
    iput-object p2, p0, Lorg/fourthline/cling/support/model/MediaInfo;->currentURIMetaData:Ljava/lang/String;

    .line 105
    iput-object p3, p0, Lorg/fourthline/cling/support/model/MediaInfo;->nextURI:Ljava/lang/String;

    .line 106
    iput-object p4, p0, Lorg/fourthline/cling/support/model/MediaInfo;->nextURIMetaData:Ljava/lang/String;

    .line 107
    iput-object p5, p0, Lorg/fourthline/cling/support/model/MediaInfo;->numberOfTracks:Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;

    .line 108
    iput-object p6, p0, Lorg/fourthline/cling/support/model/MediaInfo;->mediaDuration:Ljava/lang/String;

    .line 109
    iput-object p7, p0, Lorg/fourthline/cling/support/model/MediaInfo;->playMedium:Lorg/fourthline/cling/support/model/StorageMedium;

    .line 110
    iput-object p8, p0, Lorg/fourthline/cling/support/model/MediaInfo;->recordMedium:Lorg/fourthline/cling/support/model/StorageMedium;

    .line 111
    iput-object p9, p0, Lorg/fourthline/cling/support/model/MediaInfo;->writeStatus:Lorg/fourthline/cling/support/model/RecordMediumWriteStatus;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;Ljava/lang/String;Lorg/fourthline/cling/support/model/StorageMedium;)V
    .locals 3

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 28
    iput-object v0, p0, Lorg/fourthline/cling/support/model/MediaInfo;->currentURI:Ljava/lang/String;

    const-string v0, ""

    .line 29
    iput-object v0, p0, Lorg/fourthline/cling/support/model/MediaInfo;->currentURIMetaData:Ljava/lang/String;

    const-string v0, "NOT_IMPLEMENTED"

    .line 30
    iput-object v0, p0, Lorg/fourthline/cling/support/model/MediaInfo;->nextURI:Ljava/lang/String;

    const-string v0, "NOT_IMPLEMENTED"

    .line 31
    iput-object v0, p0, Lorg/fourthline/cling/support/model/MediaInfo;->nextURIMetaData:Ljava/lang/String;

    .line 33
    new-instance v0, Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;-><init>(J)V

    iput-object v0, p0, Lorg/fourthline/cling/support/model/MediaInfo;->numberOfTracks:Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;

    const-string v0, "00:00:00"

    .line 34
    iput-object v0, p0, Lorg/fourthline/cling/support/model/MediaInfo;->mediaDuration:Ljava/lang/String;

    .line 35
    sget-object v0, Lorg/fourthline/cling/support/model/StorageMedium;->NONE:Lorg/fourthline/cling/support/model/StorageMedium;

    iput-object v0, p0, Lorg/fourthline/cling/support/model/MediaInfo;->playMedium:Lorg/fourthline/cling/support/model/StorageMedium;

    .line 36
    sget-object v0, Lorg/fourthline/cling/support/model/StorageMedium;->NOT_IMPLEMENTED:Lorg/fourthline/cling/support/model/StorageMedium;

    iput-object v0, p0, Lorg/fourthline/cling/support/model/MediaInfo;->recordMedium:Lorg/fourthline/cling/support/model/StorageMedium;

    .line 37
    sget-object v0, Lorg/fourthline/cling/support/model/RecordMediumWriteStatus;->NOT_IMPLEMENTED:Lorg/fourthline/cling/support/model/RecordMediumWriteStatus;

    iput-object v0, p0, Lorg/fourthline/cling/support/model/MediaInfo;->writeStatus:Lorg/fourthline/cling/support/model/RecordMediumWriteStatus;

    .line 65
    iput-object p1, p0, Lorg/fourthline/cling/support/model/MediaInfo;->currentURI:Ljava/lang/String;

    .line 66
    iput-object p2, p0, Lorg/fourthline/cling/support/model/MediaInfo;->currentURIMetaData:Ljava/lang/String;

    .line 67
    iput-object p3, p0, Lorg/fourthline/cling/support/model/MediaInfo;->numberOfTracks:Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;

    .line 68
    iput-object p4, p0, Lorg/fourthline/cling/support/model/MediaInfo;->mediaDuration:Ljava/lang/String;

    .line 69
    iput-object p5, p0, Lorg/fourthline/cling/support/model/MediaInfo;->playMedium:Lorg/fourthline/cling/support/model/StorageMedium;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;Ljava/lang/String;Lorg/fourthline/cling/support/model/StorageMedium;Lorg/fourthline/cling/support/model/StorageMedium;Lorg/fourthline/cling/support/model/RecordMediumWriteStatus;)V
    .locals 3

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 28
    iput-object v0, p0, Lorg/fourthline/cling/support/model/MediaInfo;->currentURI:Ljava/lang/String;

    const-string v0, ""

    .line 29
    iput-object v0, p0, Lorg/fourthline/cling/support/model/MediaInfo;->currentURIMetaData:Ljava/lang/String;

    const-string v0, "NOT_IMPLEMENTED"

    .line 30
    iput-object v0, p0, Lorg/fourthline/cling/support/model/MediaInfo;->nextURI:Ljava/lang/String;

    const-string v0, "NOT_IMPLEMENTED"

    .line 31
    iput-object v0, p0, Lorg/fourthline/cling/support/model/MediaInfo;->nextURIMetaData:Ljava/lang/String;

    .line 33
    new-instance v0, Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;-><init>(J)V

    iput-object v0, p0, Lorg/fourthline/cling/support/model/MediaInfo;->numberOfTracks:Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;

    const-string v0, "00:00:00"

    .line 34
    iput-object v0, p0, Lorg/fourthline/cling/support/model/MediaInfo;->mediaDuration:Ljava/lang/String;

    .line 35
    sget-object v0, Lorg/fourthline/cling/support/model/StorageMedium;->NONE:Lorg/fourthline/cling/support/model/StorageMedium;

    iput-object v0, p0, Lorg/fourthline/cling/support/model/MediaInfo;->playMedium:Lorg/fourthline/cling/support/model/StorageMedium;

    .line 36
    sget-object v0, Lorg/fourthline/cling/support/model/StorageMedium;->NOT_IMPLEMENTED:Lorg/fourthline/cling/support/model/StorageMedium;

    iput-object v0, p0, Lorg/fourthline/cling/support/model/MediaInfo;->recordMedium:Lorg/fourthline/cling/support/model/StorageMedium;

    .line 37
    sget-object v0, Lorg/fourthline/cling/support/model/RecordMediumWriteStatus;->NOT_IMPLEMENTED:Lorg/fourthline/cling/support/model/RecordMediumWriteStatus;

    iput-object v0, p0, Lorg/fourthline/cling/support/model/MediaInfo;->writeStatus:Lorg/fourthline/cling/support/model/RecordMediumWriteStatus;

    .line 76
    iput-object p1, p0, Lorg/fourthline/cling/support/model/MediaInfo;->currentURI:Ljava/lang/String;

    .line 77
    iput-object p2, p0, Lorg/fourthline/cling/support/model/MediaInfo;->currentURIMetaData:Ljava/lang/String;

    .line 78
    iput-object p3, p0, Lorg/fourthline/cling/support/model/MediaInfo;->numberOfTracks:Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;

    .line 79
    iput-object p4, p0, Lorg/fourthline/cling/support/model/MediaInfo;->mediaDuration:Ljava/lang/String;

    .line 80
    iput-object p5, p0, Lorg/fourthline/cling/support/model/MediaInfo;->playMedium:Lorg/fourthline/cling/support/model/StorageMedium;

    .line 81
    iput-object p6, p0, Lorg/fourthline/cling/support/model/MediaInfo;->recordMedium:Lorg/fourthline/cling/support/model/StorageMedium;

    .line 82
    iput-object p7, p0, Lorg/fourthline/cling/support/model/MediaInfo;->writeStatus:Lorg/fourthline/cling/support/model/RecordMediumWriteStatus;

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/fourthline/cling/model/action/ActionArgumentValue;",
            ">;)V"
        }
    .end annotation

    const-string v0, "CurrentURI"

    .line 44
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/model/action/ActionArgumentValue;

    invoke-virtual {v0}, Lorg/fourthline/cling/model/action/ActionArgumentValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    const-string v0, "CurrentURIMetaData"

    .line 45
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/model/action/ActionArgumentValue;

    invoke-virtual {v0}, Lorg/fourthline/cling/model/action/ActionArgumentValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    const-string v0, "NextURI"

    .line 46
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/model/action/ActionArgumentValue;

    invoke-virtual {v0}, Lorg/fourthline/cling/model/action/ActionArgumentValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ljava/lang/String;

    const-string v0, "NextURIMetaData"

    .line 47
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/model/action/ActionArgumentValue;

    invoke-virtual {v0}, Lorg/fourthline/cling/model/action/ActionArgumentValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljava/lang/String;

    const-string v0, "NrTracks"

    .line 49
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/model/action/ActionArgumentValue;

    invoke-virtual {v0}, Lorg/fourthline/cling/model/action/ActionArgumentValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;

    const-string v0, "MediaDuration"

    .line 50
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/model/action/ActionArgumentValue;

    invoke-virtual {v0}, Lorg/fourthline/cling/model/action/ActionArgumentValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Ljava/lang/String;

    const-string v0, "PlayMedium"

    .line 51
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/model/action/ActionArgumentValue;

    invoke-virtual {v0}, Lorg/fourthline/cling/model/action/ActionArgumentValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lorg/fourthline/cling/support/model/StorageMedium;->valueOrVendorSpecificOf(Ljava/lang/String;)Lorg/fourthline/cling/support/model/StorageMedium;

    move-result-object v8

    const-string v0, "RecordMedium"

    .line 52
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/model/action/ActionArgumentValue;

    invoke-virtual {v0}, Lorg/fourthline/cling/model/action/ActionArgumentValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lorg/fourthline/cling/support/model/StorageMedium;->valueOrVendorSpecificOf(Ljava/lang/String;)Lorg/fourthline/cling/support/model/StorageMedium;

    move-result-object v9

    const-string v0, "WriteStatus"

    .line 53
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/fourthline/cling/model/action/ActionArgumentValue;

    invoke-virtual {p1}, Lorg/fourthline/cling/model/action/ActionArgumentValue;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lorg/fourthline/cling/support/model/RecordMediumWriteStatus;->valueOrUnknownOf(Ljava/lang/String;)Lorg/fourthline/cling/support/model/RecordMediumWriteStatus;

    move-result-object v10

    move-object v1, p0

    .line 43
    invoke-direct/range {v1 .. v10}, Lorg/fourthline/cling/support/model/MediaInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;Ljava/lang/String;Lorg/fourthline/cling/support/model/StorageMedium;Lorg/fourthline/cling/support/model/StorageMedium;Lorg/fourthline/cling/support/model/RecordMediumWriteStatus;)V

    return-void
.end method


# virtual methods
.method public getCurrentURI()Ljava/lang/String;
    .locals 1

    .line 115
    iget-object v0, p0, Lorg/fourthline/cling/support/model/MediaInfo;->currentURI:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentURIMetaData()Ljava/lang/String;
    .locals 1

    .line 119
    iget-object v0, p0, Lorg/fourthline/cling/support/model/MediaInfo;->currentURIMetaData:Ljava/lang/String;

    return-object v0
.end method

.method public getMediaDuration()Ljava/lang/String;
    .locals 1

    .line 135
    iget-object v0, p0, Lorg/fourthline/cling/support/model/MediaInfo;->mediaDuration:Ljava/lang/String;

    return-object v0
.end method

.method public getNextURI()Ljava/lang/String;
    .locals 1

    .line 123
    iget-object v0, p0, Lorg/fourthline/cling/support/model/MediaInfo;->nextURI:Ljava/lang/String;

    return-object v0
.end method

.method public getNextURIMetaData()Ljava/lang/String;
    .locals 1

    .line 127
    iget-object v0, p0, Lorg/fourthline/cling/support/model/MediaInfo;->nextURIMetaData:Ljava/lang/String;

    return-object v0
.end method

.method public getNumberOfTracks()Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;
    .locals 1

    .line 131
    iget-object v0, p0, Lorg/fourthline/cling/support/model/MediaInfo;->numberOfTracks:Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;

    return-object v0
.end method

.method public getPlayMedium()Lorg/fourthline/cling/support/model/StorageMedium;
    .locals 1

    .line 139
    iget-object v0, p0, Lorg/fourthline/cling/support/model/MediaInfo;->playMedium:Lorg/fourthline/cling/support/model/StorageMedium;

    return-object v0
.end method

.method public getRecordMedium()Lorg/fourthline/cling/support/model/StorageMedium;
    .locals 1

    .line 143
    iget-object v0, p0, Lorg/fourthline/cling/support/model/MediaInfo;->recordMedium:Lorg/fourthline/cling/support/model/StorageMedium;

    return-object v0
.end method

.method public getWriteStatus()Lorg/fourthline/cling/support/model/RecordMediumWriteStatus;
    .locals 1

    .line 147
    iget-object v0, p0, Lorg/fourthline/cling/support/model/MediaInfo;->writeStatus:Lorg/fourthline/cling/support/model/RecordMediumWriteStatus;

    return-object v0
.end method
