.class public Lanet/channel/statist/SessionStatistic;
.super Lanet/channel/statist/StatObject;
.source "Taobao"


# annotations
.annotation runtime Lanet/channel/statist/e;
    a = "networkPrefer"
    b = "session"
.end annotation


# static fields
.field public static maxRetryTime:I


# instance fields
.field public ackTime:J
    .annotation runtime Lanet/channel/statist/d;
    .end annotation
.end field

.field public authTime:J
    .annotation runtime Lanet/channel/statist/d;
        c = 15000.0
    .end annotation
.end field

.field public cfRCount:J
    .annotation runtime Lanet/channel/statist/d;
    .end annotation
.end field

.field public closeReason:Ljava/lang/String;
    .annotation runtime Lanet/channel/statist/c;
    .end annotation
.end field

.field public connectionTime:J
    .annotation runtime Lanet/channel/statist/d;
        c = 15000.0
    .end annotation
.end field

.field public conntype:Ljava/lang/String;
    .annotation runtime Lanet/channel/statist/c;
    .end annotation
.end field

.field public errorCode:J
    .annotation runtime Lanet/channel/statist/c;
    .end annotation
.end field

.field public host:Ljava/lang/String;
    .annotation runtime Lanet/channel/statist/c;
    .end annotation
.end field

.field public inceptCount:J
    .annotation runtime Lanet/channel/statist/d;
    .end annotation
.end field

.field public ip:Ljava/lang/String;
    .annotation runtime Lanet/channel/statist/c;
    .end annotation
.end field

.field public ipType:I
    .annotation runtime Lanet/channel/statist/c;
    .end annotation
.end field

.field public isBackground:Z
    .annotation runtime Lanet/channel/statist/c;
    .end annotation
.end field

.field public isCommitted:Z

.field public isKL:J
    .annotation runtime Lanet/channel/statist/c;
    .end annotation
.end field

.field public isProxy:Ljava/lang/String;
    .annotation runtime Lanet/channel/statist/c;
    .end annotation
.end field

.field public isTunnel:Ljava/lang/String;
    .annotation runtime Lanet/channel/statist/c;
    .end annotation
.end field

.field public lastPingInterval:I
    .annotation runtime Lanet/channel/statist/d;
    .end annotation
.end field

.field public liveTime:J
    .annotation runtime Lanet/channel/statist/d;
        c = 86400.0
    .end annotation
.end field

.field public netType:Ljava/lang/String;
    .annotation runtime Lanet/channel/statist/c;
    .end annotation
.end field

.field public pRate:J
    .annotation runtime Lanet/channel/statist/d;
    .end annotation
.end field

.field public port:I
    .annotation runtime Lanet/channel/statist/c;
    .end annotation
.end field

.field public ppkgCount:J
    .annotation runtime Lanet/channel/statist/d;
    .end annotation
.end field

.field public recvSizeCount:J
    .annotation runtime Lanet/channel/statist/d;
    .end annotation
.end field

.field public requestCount:J
    .annotation runtime Lanet/channel/statist/d;
        a = 1.0
    .end annotation
.end field

.field public ret:I
    .annotation runtime Lanet/channel/statist/c;
    .end annotation
.end field

.field public retryTimes:J
    .annotation runtime Lanet/channel/statist/c;
    .end annotation
.end field

.field public sdkv:I
    .annotation runtime Lanet/channel/statist/c;
    .end annotation
.end field

.field public sendSizeCount:J
    .annotation runtime Lanet/channel/statist/d;
    .end annotation
.end field

.field public sslCalTime:J
    .annotation runtime Lanet/channel/statist/d;
        c = 15000.0
    .end annotation
.end field

.field public sslTime:J
    .annotation runtime Lanet/channel/statist/d;
        c = 15000.0
    .end annotation
.end field

.field public stdRCount:J
    .annotation runtime Lanet/channel/statist/d;
        a = 0.0
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lanet/channel/entity/b;)V
    .locals 4

    .line 52
    invoke-direct {p0}, Lanet/channel/statist/StatObject;-><init>()V

    const-string v0, "false"

    .line 20
    iput-object v0, p0, Lanet/channel/statist/SessionStatistic;->isProxy:Ljava/lang/String;

    const/4 v0, 0x1

    .line 26
    iput v0, p0, Lanet/channel/statist/SessionStatistic;->ipType:I

    const-wide/16 v0, 0x0

    .line 35
    iput-wide v0, p0, Lanet/channel/statist/SessionStatistic;->liveTime:J

    const-wide/16 v2, 0x1

    .line 36
    iput-wide v2, p0, Lanet/channel/statist/SessionStatistic;->requestCount:J

    .line 38
    iput-wide v2, p0, Lanet/channel/statist/SessionStatistic;->stdRCount:J

    const/4 v2, 0x0

    .line 49
    iput-boolean v2, p0, Lanet/channel/statist/SessionStatistic;->isCommitted:Z

    .line 53
    invoke-virtual {p1}, Lanet/channel/entity/b;->f()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lanet/channel/statist/SessionStatistic;->host:Ljava/lang/String;

    .line 54
    invoke-virtual {p1}, Lanet/channel/entity/b;->a()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lanet/channel/statist/SessionStatistic;->ip:Ljava/lang/String;

    .line 55
    invoke-virtual {p1}, Lanet/channel/entity/b;->b()I

    move-result v2

    iput v2, p0, Lanet/channel/statist/SessionStatistic;->port:I

    .line 56
    invoke-virtual {p1}, Lanet/channel/entity/b;->g()I

    move-result v2

    int-to-long v2, v2

    iput-wide v2, p0, Lanet/channel/statist/SessionStatistic;->pRate:J

    .line 57
    iput-wide v0, p0, Lanet/channel/statist/SessionStatistic;->retryTimes:J

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lanet/channel/entity/b;->c()Lanet/channel/entity/ConnType;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lanet/channel/statist/SessionStatistic;->conntype:Ljava/lang/String;

    .line 59
    iget v0, p1, Lanet/channel/entity/b;->b:I

    int-to-long v0, v0

    iput-wide v0, p0, Lanet/channel/statist/SessionStatistic;->retryTimes:J

    .line 60
    iget v0, p1, Lanet/channel/entity/b;->c:I

    sput v0, Lanet/channel/statist/SessionStatistic;->maxRetryTime:I

    .line 61
    iget-object v0, p1, Lanet/channel/entity/b;->a:Lanet/channel/strategy/c;

    if-eqz v0, :cond_0

    .line 62
    iget-object p1, p1, Lanet/channel/entity/b;->a:Lanet/channel/strategy/c;

    invoke-interface {p1}, Lanet/channel/strategy/c;->b()I

    move-result p1

    iput p1, p0, Lanet/channel/statist/SessionStatistic;->ipType:I

    :cond_0
    return-void
.end method


# virtual methods
.method public beforeCommit()Z
    .locals 8

    .line 67
    iget v0, p0, Lanet/channel/statist/SessionStatistic;->ret:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    iget-wide v3, p0, Lanet/channel/statist/SessionStatistic;->retryTimes:J

    sget v0, Lanet/channel/statist/SessionStatistic;->maxRetryTime:I

    int-to-long v5, v0

    cmp-long v0, v3, v5

    if-nez v0, :cond_0

    iget-wide v3, p0, Lanet/channel/statist/SessionStatistic;->errorCode:J

    const-wide/16 v5, -0xa35

    cmp-long v0, v3, v5

    if-eqz v0, :cond_0

    iget-wide v3, p0, Lanet/channel/statist/SessionStatistic;->errorCode:J

    const-wide/16 v5, -0xa29

    cmp-long v0, v3, v5

    if-nez v0, :cond_2

    .line 71
    :cond_0
    invoke-static {v2}, Lanet/channel/h/a;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "SessionStat no need commit"

    const/4 v3, 0x0

    const-string v4, "retry:"

    const/4 v5, 0x5

    .line 72
    new-array v5, v5, [Ljava/lang/Object;

    iget-wide v6, p0, Lanet/channel/statist/SessionStatistic;->retryTimes:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v1

    const-string v6, "maxRetryTime"

    aput-object v6, v5, v2

    const/4 v2, 0x2

    sget v6, Lanet/channel/statist/SessionStatistic;->maxRetryTime:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    const/4 v2, 0x3

    const-string v6, "errorCode"

    aput-object v6, v5, v2

    const/4 v2, 0x4

    iget-wide v6, p0, Lanet/channel/statist/SessionStatistic;->errorCode:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static {v0, v3, v4, v5}, Lanet/channel/h/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    return v1

    .line 76
    :cond_2
    iget-boolean v0, p0, Lanet/channel/statist/SessionStatistic;->isCommitted:Z

    if-eqz v0, :cond_3

    return v1

    .line 79
    :cond_3
    iput-boolean v2, p0, Lanet/channel/statist/SessionStatistic;->isCommitted:Z

    return v2
.end method

.method public getAlarmObject()Lanet/channel/statist/a;
    .locals 3

    .line 84
    new-instance v0, Lanet/channel/statist/a;

    invoke-direct {v0}, Lanet/channel/statist/a;-><init>()V

    const-string v1, "networkPrefer"

    .line 85
    iput-object v1, v0, Lanet/channel/statist/a;->e:Ljava/lang/String;

    const-string v1, "connect_succ_rate"

    .line 86
    iput-object v1, v0, Lanet/channel/statist/a;->f:Ljava/lang/String;

    .line 87
    iget v1, p0, Lanet/channel/statist/SessionStatistic;->ret:I

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, v0, Lanet/channel/statist/a;->a:Z

    .line 88
    iget-boolean v1, v0, Lanet/channel/statist/a;->a:Z

    if-eqz v1, :cond_1

    .line 89
    iget-object v1, p0, Lanet/channel/statist/SessionStatistic;->closeReason:Ljava/lang/String;

    iput-object v1, v0, Lanet/channel/statist/a;->b:Ljava/lang/String;

    goto :goto_1

    .line 91
    :cond_1
    iget-wide v1, p0, Lanet/channel/statist/SessionStatistic;->errorCode:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lanet/channel/statist/a;->c:Ljava/lang/String;

    :goto_1
    return-object v0
.end method
