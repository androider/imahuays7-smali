.class public Lanet/channel/statist/SessionConnStat;
.super Lanet/channel/statist/StatObject;
.source "Taobao"


# annotations
.annotation runtime Lanet/channel/statist/e;
    a = "networkPrefer"
    b = "conn_stat"
.end annotation


# instance fields
.field public costTime:J
    .annotation runtime Lanet/channel/statist/d;
        c = 60000.0
    .end annotation
.end field

.field public errorCode:Ljava/lang/String;
    .annotation runtime Lanet/channel/statist/c;
    .end annotation
.end field

.field public firstIpType:I
    .annotation runtime Lanet/channel/statist/c;
    .end annotation
.end field

.field public host:Ljava/lang/String;
    .annotation runtime Lanet/channel/statist/c;
    .end annotation
.end field

.field public ret:I
    .annotation runtime Lanet/channel/statist/c;
    .end annotation
.end field

.field public retryTimes:I
    .annotation runtime Lanet/channel/statist/c;
    .end annotation
.end field

.field public startTime:J

.field public succIpType:I
    .annotation runtime Lanet/channel/statist/c;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 8
    invoke-direct {p0}, Lanet/channel/statist/StatObject;-><init>()V

    const/4 v0, 0x1

    .line 11
    iput v0, p0, Lanet/channel/statist/SessionConnStat;->firstIpType:I

    .line 12
    iput v0, p0, Lanet/channel/statist/SessionConnStat;->succIpType:I

    const-wide/16 v0, 0x0

    .line 15
    iput-wide v0, p0, Lanet/channel/statist/SessionConnStat;->costTime:J

    .line 16
    iput-wide v0, p0, Lanet/channel/statist/SessionConnStat;->startTime:J

    return-void
.end method
