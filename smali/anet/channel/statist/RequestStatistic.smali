.class public Lanet/channel/statist/RequestStatistic;
.super Lanet/channel/statist/StatObject;
.source "Taobao"


# annotations
.annotation runtime Lanet/channel/statist/e;
    a = "networkPrefer"
    b = "network"
.end annotation


# instance fields
.field public volatile bizId:Ljava/lang/String;
    .annotation runtime Lanet/channel/statist/c;
    .end annotation
.end field

.field public volatile cacheTime:J
    .annotation runtime Lanet/channel/statist/d;
    .end annotation
.end field

.field public volatile firstDataTime:J
    .annotation runtime Lanet/channel/statist/d;
    .end annotation
.end field

.field public volatile host:Ljava/lang/String;
    .annotation runtime Lanet/channel/statist/c;
    .end annotation
.end field

.field public volatile ip:Ljava/lang/String;
    .annotation runtime Lanet/channel/statist/c;
    .end annotation
.end field

.field public volatile isBg:Ljava/lang/String;
    .annotation runtime Lanet/channel/statist/c;
    .end annotation
.end field

.field public volatile isDNS:Z
    .annotation runtime Lanet/channel/statist/c;
    .end annotation
.end field

.field public volatile isProxy:Z
    .annotation runtime Lanet/channel/statist/c;
    .end annotation
.end field

.field public volatile isSSL:Z
    .annotation runtime Lanet/channel/statist/c;
    .end annotation
.end field

.field public volatile isSni:Ljava/lang/String;
    .annotation runtime Lanet/channel/statist/c;
    .end annotation
.end field

.field public volatile msg:Ljava/lang/String;
    .annotation runtime Lanet/channel/statist/c;
    .end annotation
.end field

.field public volatile netType:Ljava/lang/String;
    .annotation runtime Lanet/channel/statist/c;
    .end annotation
.end field

.field public volatile oneWayTime:J
    .annotation runtime Lanet/channel/statist/d;
        c = 60000.0
    .end annotation
.end field

.field public volatile port:I
    .annotation runtime Lanet/channel/statist/c;
    .end annotation
.end field

.field public volatile protocolType:Ljava/lang/String;
    .annotation runtime Lanet/channel/statist/c;
    .end annotation
.end field

.field public volatile proxyType:Ljava/lang/String;
    .annotation runtime Lanet/channel/statist/c;
    .end annotation
.end field

.field public volatile recDataSize:J
    .annotation runtime Lanet/channel/statist/d;
    .end annotation
.end field

.field public volatile recDataTime:J
    .annotation runtime Lanet/channel/statist/d;
    .end annotation
.end field

.field public volatile ret:Z
    .annotation runtime Lanet/channel/statist/c;
    .end annotation
.end field

.field public volatile retryTimes:I
    .annotation runtime Lanet/channel/statist/c;
    .end annotation
.end field

.field public volatile sendBeforeTime:J
    .annotation runtime Lanet/channel/statist/d;
    .end annotation
.end field

.field public volatile sendDataSize:J
    .annotation runtime Lanet/channel/statist/d;
    .end annotation
.end field

.field public volatile sendDataTime:J
    .annotation runtime Lanet/channel/statist/d;
    .end annotation
.end field

.field public volatile serverRT:J
    .annotation runtime Lanet/channel/statist/d;
    .end annotation
.end field

.field public volatile start:J

.field public volatile statusCode:I
    .annotation runtime Lanet/channel/statist/c;
    .end annotation
.end field

.field public volatile tcpLinkDate:J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public volatile url:Ljava/lang/String;

.field public volatile waitingTime:J
    .annotation runtime Lanet/channel/statist/d;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 41
    invoke-direct {p0}, Lanet/channel/statist/StatObject;-><init>()V

    const-string v0, ""

    .line 14
    iput-object v0, p0, Lanet/channel/statist/RequestStatistic;->proxyType:Ljava/lang/String;

    const-string v0, ""

    .line 15
    iput-object v0, p0, Lanet/channel/statist/RequestStatistic;->netType:Ljava/lang/String;

    const/4 v0, 0x0

    .line 17
    iput-boolean v0, p0, Lanet/channel/statist/RequestStatistic;->isDNS:Z

    .line 21
    iput v0, p0, Lanet/channel/statist/RequestStatistic;->statusCode:I

    const-string v0, ""

    .line 22
    iput-object v0, p0, Lanet/channel/statist/RequestStatistic;->msg:Ljava/lang/String;

    const-string v0, ""

    .line 23
    iput-object v0, p0, Lanet/channel/statist/RequestStatistic;->isBg:Ljava/lang/String;

    const-string v0, ""

    .line 24
    iput-object v0, p0, Lanet/channel/statist/RequestStatistic;->isSni:Ljava/lang/String;

    const-wide/16 v0, 0x0

    .line 27
    iput-wide v0, p0, Lanet/channel/statist/RequestStatistic;->start:J

    .line 28
    iput-wide v0, p0, Lanet/channel/statist/RequestStatistic;->firstDataTime:J

    .line 29
    iput-wide v0, p0, Lanet/channel/statist/RequestStatistic;->sendDataTime:J

    .line 30
    iput-wide v0, p0, Lanet/channel/statist/RequestStatistic;->sendDataSize:J

    .line 31
    iput-wide v0, p0, Lanet/channel/statist/RequestStatistic;->recDataTime:J

    .line 32
    iput-wide v0, p0, Lanet/channel/statist/RequestStatistic;->recDataSize:J

    .line 33
    iput-wide v0, p0, Lanet/channel/statist/RequestStatistic;->serverRT:J

    .line 34
    iput-wide v0, p0, Lanet/channel/statist/RequestStatistic;->sendBeforeTime:J

    .line 35
    iput-wide v0, p0, Lanet/channel/statist/RequestStatistic;->cacheTime:J

    .line 36
    iput-wide v0, p0, Lanet/channel/statist/RequestStatistic;->oneWayTime:J

    .line 37
    iput-wide v0, p0, Lanet/channel/statist/RequestStatistic;->waitingTime:J

    .line 38
    iput-wide v0, p0, Lanet/channel/statist/RequestStatistic;->tcpLinkDate:J

    .line 42
    iput-object p1, p0, Lanet/channel/statist/RequestStatistic;->host:Ljava/lang/String;

    .line 43
    invoke-static {}, Lanet/channel/status/NetworkStatusHelper;->i()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lanet/channel/statist/RequestStatistic;->proxyType:Ljava/lang/String;

    .line 44
    iget-object p1, p0, Lanet/channel/statist/RequestStatistic;->proxyType:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lanet/channel/statist/RequestStatistic;->isProxy:Z

    .line 45
    invoke-static {}, Lanet/channel/status/NetworkStatusHelper;->b()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lanet/channel/statist/RequestStatistic;->netType:Ljava/lang/String;

    .line 46
    invoke-static {}, Lanet/channel/d;->h()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "bg"

    goto :goto_0

    :cond_0
    const-string p1, "fg"

    :goto_0
    iput-object p1, p0, Lanet/channel/statist/RequestStatistic;->isBg:Ljava/lang/String;

    .line 47
    iput-object p2, p0, Lanet/channel/statist/RequestStatistic;->bizId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public setConnType(Lanet/channel/entity/ConnType;)V
    .locals 1

    .line 51
    invoke-virtual {p1}, Lanet/channel/entity/ConnType;->c()Z

    move-result v0

    iput-boolean v0, p0, Lanet/channel/statist/RequestStatistic;->isSSL:Z

    .line 52
    invoke-virtual {p1}, Lanet/channel/entity/ConnType;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lanet/channel/statist/RequestStatistic;->protocolType:Ljava/lang/String;

    return-void
.end method

.method public setIPAndPort(Ljava/lang/String;I)V
    .locals 0

    .line 56
    iput-object p1, p0, Lanet/channel/statist/RequestStatistic;->ip:Ljava/lang/String;

    .line 57
    iput p2, p0, Lanet/channel/statist/RequestStatistic;->port:I

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    .line 59
    iput-boolean p1, p0, Lanet/channel/statist/RequestStatistic;->isDNS:Z

    :cond_0
    return-void
.end method
