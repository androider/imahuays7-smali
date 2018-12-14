.class public Lorg/fourthline/cling/support/model/dlna/types/TimeSeekRangeType;
.super Ljava/lang/Object;
.source "TimeSeekRangeType.java"


# instance fields
.field private bytesRange:Lorg/fourthline/cling/model/types/BytesRange;

.field private normalPlayTimeRange:Lorg/fourthline/cling/support/model/dlna/types/NormalPlayTimeRange;


# direct methods
.method public constructor <init>(Lorg/fourthline/cling/support/model/dlna/types/NormalPlayTimeRange;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lorg/fourthline/cling/support/model/dlna/types/TimeSeekRangeType;->normalPlayTimeRange:Lorg/fourthline/cling/support/model/dlna/types/NormalPlayTimeRange;

    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/support/model/dlna/types/NormalPlayTimeRange;Lorg/fourthline/cling/model/types/BytesRange;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lorg/fourthline/cling/support/model/dlna/types/TimeSeekRangeType;->normalPlayTimeRange:Lorg/fourthline/cling/support/model/dlna/types/NormalPlayTimeRange;

    .line 35
    iput-object p2, p0, Lorg/fourthline/cling/support/model/dlna/types/TimeSeekRangeType;->bytesRange:Lorg/fourthline/cling/model/types/BytesRange;

    return-void
.end method


# virtual methods
.method public getBytesRange()Lorg/fourthline/cling/model/types/BytesRange;
    .locals 1

    .line 49
    iget-object v0, p0, Lorg/fourthline/cling/support/model/dlna/types/TimeSeekRangeType;->bytesRange:Lorg/fourthline/cling/model/types/BytesRange;

    return-object v0
.end method

.method public getNormalPlayTimeRange()Lorg/fourthline/cling/support/model/dlna/types/NormalPlayTimeRange;
    .locals 1

    .line 42
    iget-object v0, p0, Lorg/fourthline/cling/support/model/dlna/types/TimeSeekRangeType;->normalPlayTimeRange:Lorg/fourthline/cling/support/model/dlna/types/NormalPlayTimeRange;

    return-object v0
.end method

.method public setBytesRange(Lorg/fourthline/cling/model/types/BytesRange;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lorg/fourthline/cling/support/model/dlna/types/TimeSeekRangeType;->bytesRange:Lorg/fourthline/cling/model/types/BytesRange;

    return-void
.end method
