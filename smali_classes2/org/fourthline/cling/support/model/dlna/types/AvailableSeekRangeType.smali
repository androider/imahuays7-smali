.class public Lorg/fourthline/cling/support/model/dlna/types/AvailableSeekRangeType;
.super Ljava/lang/Object;
.source "AvailableSeekRangeType.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/fourthline/cling/support/model/dlna/types/AvailableSeekRangeType$Mode;
    }
.end annotation


# instance fields
.field private bytesRange:Lorg/fourthline/cling/model/types/BytesRange;

.field private modeFlag:Lorg/fourthline/cling/support/model/dlna/types/AvailableSeekRangeType$Mode;

.field private normalPlayTimeRange:Lorg/fourthline/cling/support/model/dlna/types/NormalPlayTimeRange;


# direct methods
.method public constructor <init>(Lorg/fourthline/cling/support/model/dlna/types/AvailableSeekRangeType$Mode;Lorg/fourthline/cling/model/types/BytesRange;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lorg/fourthline/cling/support/model/dlna/types/AvailableSeekRangeType;->modeFlag:Lorg/fourthline/cling/support/model/dlna/types/AvailableSeekRangeType$Mode;

    .line 43
    iput-object p2, p0, Lorg/fourthline/cling/support/model/dlna/types/AvailableSeekRangeType;->bytesRange:Lorg/fourthline/cling/model/types/BytesRange;

    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/support/model/dlna/types/AvailableSeekRangeType$Mode;Lorg/fourthline/cling/support/model/dlna/types/NormalPlayTimeRange;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lorg/fourthline/cling/support/model/dlna/types/AvailableSeekRangeType;->modeFlag:Lorg/fourthline/cling/support/model/dlna/types/AvailableSeekRangeType$Mode;

    .line 38
    iput-object p2, p0, Lorg/fourthline/cling/support/model/dlna/types/AvailableSeekRangeType;->normalPlayTimeRange:Lorg/fourthline/cling/support/model/dlna/types/NormalPlayTimeRange;

    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/support/model/dlna/types/AvailableSeekRangeType$Mode;Lorg/fourthline/cling/support/model/dlna/types/NormalPlayTimeRange;Lorg/fourthline/cling/model/types/BytesRange;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lorg/fourthline/cling/support/model/dlna/types/AvailableSeekRangeType;->modeFlag:Lorg/fourthline/cling/support/model/dlna/types/AvailableSeekRangeType$Mode;

    .line 48
    iput-object p2, p0, Lorg/fourthline/cling/support/model/dlna/types/AvailableSeekRangeType;->normalPlayTimeRange:Lorg/fourthline/cling/support/model/dlna/types/NormalPlayTimeRange;

    .line 49
    iput-object p3, p0, Lorg/fourthline/cling/support/model/dlna/types/AvailableSeekRangeType;->bytesRange:Lorg/fourthline/cling/model/types/BytesRange;

    return-void
.end method


# virtual methods
.method public getBytesRange()Lorg/fourthline/cling/model/types/BytesRange;
    .locals 1

    .line 63
    iget-object v0, p0, Lorg/fourthline/cling/support/model/dlna/types/AvailableSeekRangeType;->bytesRange:Lorg/fourthline/cling/model/types/BytesRange;

    return-object v0
.end method

.method public getModeFlag()Lorg/fourthline/cling/support/model/dlna/types/AvailableSeekRangeType$Mode;
    .locals 1

    .line 70
    iget-object v0, p0, Lorg/fourthline/cling/support/model/dlna/types/AvailableSeekRangeType;->modeFlag:Lorg/fourthline/cling/support/model/dlna/types/AvailableSeekRangeType$Mode;

    return-object v0
.end method

.method public getNormalPlayTimeRange()Lorg/fourthline/cling/support/model/dlna/types/NormalPlayTimeRange;
    .locals 1

    .line 56
    iget-object v0, p0, Lorg/fourthline/cling/support/model/dlna/types/AvailableSeekRangeType;->normalPlayTimeRange:Lorg/fourthline/cling/support/model/dlna/types/NormalPlayTimeRange;

    return-object v0
.end method
