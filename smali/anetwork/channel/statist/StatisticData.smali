.class public Lanetwork/channel/statist/StatisticData;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# static fields
.field private static final serialVersionUID:J = -0x311ba3e23688005cL


# instance fields
.field public api_v:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public cacheTime:J

.field public connectionType:Ljava/lang/String;

.field public dataSpeed:J

.field public dnsTime:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public firstDataTime:J

.field public host:Ljava/lang/String;

.field public ip_port:Ljava/lang/String;

.field public isDNSTimeout:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public isRequestSuccess:Z

.field public isSSL:Z

.field public isSpdy:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public netStatSum:Ljava/lang/String;

.field public netTime:J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public oneWayTime_AEngine:J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public oneWayTime_ANet:J

.field public oneWayTime_Jni:J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public postBodyTime:J

.field public recDataTime:J

.field public receiveDataTime:J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public redirectTime:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public responseBodySize:J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public resultCode:I

.field public retryTime:I

.field public rtt:J

.field public sendBeforeTime:J

.field public sendSize:J

.field public serverRT:J

.field public spdyWaitTime:J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public tcpConnTime:J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public tcpLinkDate:J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public timeoutType:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public totalSize:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 20
    iput-object v0, p0, Lanetwork/channel/statist/StatisticData;->connectionType:Ljava/lang/String;

    const/4 v0, 0x0

    .line 25
    iput-boolean v0, p0, Lanetwork/channel/statist/StatisticData;->isRequestSuccess:Z

    .line 30
    iput v0, p0, Lanetwork/channel/statist/StatisticData;->resultCode:I

    const-string v1, ""

    .line 35
    iput-object v1, p0, Lanetwork/channel/statist/StatisticData;->host:Ljava/lang/String;

    const-string v1, ""

    .line 40
    iput-object v1, p0, Lanetwork/channel/statist/StatisticData;->api_v:Ljava/lang/String;

    const-string v1, ""

    .line 46
    iput-object v1, p0, Lanetwork/channel/statist/StatisticData;->ip_port:Ljava/lang/String;

    .line 51
    iput-boolean v0, p0, Lanetwork/channel/statist/StatisticData;->isSpdy:Z

    .line 57
    iput-boolean v0, p0, Lanetwork/channel/statist/StatisticData;->isSSL:Z

    .line 62
    iput v0, p0, Lanetwork/channel/statist/StatisticData;->dnsTime:I

    .line 68
    iput v0, p0, Lanetwork/channel/statist/StatisticData;->isDNSTimeout:I

    const-wide/16 v0, 0x0

    .line 74
    iput-wide v0, p0, Lanetwork/channel/statist/StatisticData;->tcpLinkDate:J

    .line 81
    iput-wide v0, p0, Lanetwork/channel/statist/StatisticData;->tcpConnTime:J

    .line 87
    iput-wide v0, p0, Lanetwork/channel/statist/StatisticData;->oneWayTime_ANet:J

    .line 90
    iput-wide v0, p0, Lanetwork/channel/statist/StatisticData;->cacheTime:J

    .line 95
    iput-wide v0, p0, Lanetwork/channel/statist/StatisticData;->oneWayTime_AEngine:J

    .line 101
    iput-wide v0, p0, Lanetwork/channel/statist/StatisticData;->oneWayTime_Jni:J

    .line 107
    iput-wide v0, p0, Lanetwork/channel/statist/StatisticData;->postBodyTime:J

    .line 113
    iput-wide v0, p0, Lanetwork/channel/statist/StatisticData;->spdyWaitTime:J

    .line 116
    iput-wide v0, p0, Lanetwork/channel/statist/StatisticData;->sendBeforeTime:J

    .line 121
    iput-wide v0, p0, Lanetwork/channel/statist/StatisticData;->firstDataTime:J

    .line 126
    iput-wide v0, p0, Lanetwork/channel/statist/StatisticData;->recDataTime:J

    .line 132
    iput-wide v0, p0, Lanetwork/channel/statist/StatisticData;->receiveDataTime:J

    .line 138
    iput-wide v0, p0, Lanetwork/channel/statist/StatisticData;->serverRT:J

    .line 143
    iput-wide v0, p0, Lanetwork/channel/statist/StatisticData;->rtt:J

    .line 149
    iput-wide v0, p0, Lanetwork/channel/statist/StatisticData;->netTime:J

    .line 155
    iput-wide v0, p0, Lanetwork/channel/statist/StatisticData;->sendSize:J

    .line 160
    iput-wide v0, p0, Lanetwork/channel/statist/StatisticData;->totalSize:J

    .line 165
    iput-wide v0, p0, Lanetwork/channel/statist/StatisticData;->responseBodySize:J

    .line 171
    iput-wide v0, p0, Lanetwork/channel/statist/StatisticData;->dataSpeed:J

    const-string v0, ""

    .line 176
    iput-object v0, p0, Lanetwork/channel/statist/StatisticData;->timeoutType:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public filledBy(Lanet/channel/statist/RequestStatistic;)V
    .locals 4

    if-eqz p1, :cond_2

    .line 200
    iget v0, p1, Lanet/channel/statist/RequestStatistic;->statusCode:I

    iput v0, p0, Lanetwork/channel/statist/StatisticData;->resultCode:I

    .line 201
    iget-object v0, p1, Lanet/channel/statist/RequestStatistic;->protocolType:Ljava/lang/String;

    iput-object v0, p0, Lanetwork/channel/statist/StatisticData;->connectionType:Ljava/lang/String;

    .line 202
    iget-boolean v0, p1, Lanet/channel/statist/RequestStatistic;->ret:Z

    iput-boolean v0, p0, Lanetwork/channel/statist/StatisticData;->isRequestSuccess:Z

    .line 203
    iget-object v0, p1, Lanet/channel/statist/RequestStatistic;->host:Ljava/lang/String;

    iput-object v0, p0, Lanetwork/channel/statist/StatisticData;->host:Ljava/lang/String;

    .line 204
    iget-object v0, p1, Lanet/channel/statist/RequestStatistic;->ip:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget v0, p1, Lanet/channel/statist/RequestStatistic;->port:I

    if-eqz v0, :cond_0

    const-string v0, "%s:%d"

    const/4 v1, 0x2

    .line 205
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p1, Lanet/channel/statist/RequestStatistic;->ip:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p1, Lanet/channel/statist/RequestStatistic;->port:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lanetwork/channel/statist/StatisticData;->ip_port:Ljava/lang/String;

    .line 207
    :cond_0
    iget-boolean v0, p1, Lanet/channel/statist/RequestStatistic;->isSSL:Z

    iput-boolean v0, p0, Lanetwork/channel/statist/StatisticData;->isSSL:Z

    .line 208
    iget-wide v0, p1, Lanet/channel/statist/RequestStatistic;->oneWayTime:J

    iput-wide v0, p0, Lanetwork/channel/statist/StatisticData;->oneWayTime_ANet:J

    .line 209
    iget-wide v0, p1, Lanet/channel/statist/RequestStatistic;->cacheTime:J

    iput-wide v0, p0, Lanetwork/channel/statist/StatisticData;->cacheTime:J

    .line 210
    iget-wide v0, p1, Lanet/channel/statist/RequestStatistic;->firstDataTime:J

    iput-wide v0, p0, Lanetwork/channel/statist/StatisticData;->firstDataTime:J

    .line 211
    iget-wide v0, p1, Lanet/channel/statist/RequestStatistic;->sendBeforeTime:J

    iput-wide v0, p0, Lanetwork/channel/statist/StatisticData;->sendBeforeTime:J

    .line 212
    iget-wide v0, p1, Lanet/channel/statist/RequestStatistic;->recDataTime:J

    iput-wide v0, p0, Lanetwork/channel/statist/StatisticData;->recDataTime:J

    .line 213
    iget-wide v0, p1, Lanet/channel/statist/RequestStatistic;->sendDataSize:J

    iput-wide v0, p0, Lanetwork/channel/statist/StatisticData;->sendSize:J

    .line 214
    iget-wide v0, p1, Lanet/channel/statist/RequestStatistic;->recDataSize:J

    iput-wide v0, p0, Lanetwork/channel/statist/StatisticData;->totalSize:J

    .line 215
    iget-wide v0, p1, Lanet/channel/statist/RequestStatistic;->serverRT:J

    iput-wide v0, p0, Lanetwork/channel/statist/StatisticData;->serverRT:J

    .line 216
    iget-wide v0, p0, Lanetwork/channel/statist/StatisticData;->recDataTime:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_1

    iget-wide v0, p0, Lanetwork/channel/statist/StatisticData;->totalSize:J

    iget-wide v2, p0, Lanetwork/channel/statist/StatisticData;->recDataTime:J

    div-long/2addr v0, v2

    goto :goto_0

    :cond_1
    iget-wide v0, p0, Lanetwork/channel/statist/StatisticData;->totalSize:J

    :goto_0
    iput-wide v0, p0, Lanetwork/channel/statist/StatisticData;->dataSpeed:J

    :cond_2
    return-void
.end method

.method public sumNetStat()Ljava/lang/String;
    .locals 3

    .line 221
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "isSuccess="

    .line 222
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lanetwork/channel/statist/StatisticData;->isRequestSuccess:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",host="

    .line 223
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lanetwork/channel/statist/StatisticData;->host:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",resultCode="

    .line 224
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lanetwork/channel/statist/StatisticData;->resultCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",connType="

    .line 225
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lanetwork/channel/statist/StatisticData;->connectionType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",oneWayTime_ANet="

    .line 226
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lanetwork/channel/statist/StatisticData;->oneWayTime_ANet:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ",ip_port="

    .line 227
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lanetwork/channel/statist/StatisticData;->ip_port:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",isSSL="

    .line 228
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lanetwork/channel/statist/StatisticData;->isSSL:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",cacheTime="

    .line 229
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lanetwork/channel/statist/StatisticData;->cacheTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ",postBodyTime="

    .line 230
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lanetwork/channel/statist/StatisticData;->postBodyTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ",firstDataTime="

    .line 231
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lanetwork/channel/statist/StatisticData;->firstDataTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ",recDataTime="

    .line 232
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lanetwork/channel/statist/StatisticData;->recDataTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ",serverRT="

    .line 233
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lanetwork/channel/statist/StatisticData;->serverRT:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ",rtt="

    .line 234
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lanetwork/channel/statist/StatisticData;->rtt:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ",sendSize="

    .line 235
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lanetwork/channel/statist/StatisticData;->sendSize:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ",totalSize="

    .line 236
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lanetwork/channel/statist/StatisticData;->totalSize:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ",dataSpeed="

    .line 237
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lanetwork/channel/statist/StatisticData;->dataSpeed:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ",retryTime="

    .line 238
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lanetwork/channel/statist/StatisticData;->retryTime:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 239
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 244
    iget-object v0, p0, Lanetwork/channel/statist/StatisticData;->netStatSum:Ljava/lang/String;

    invoke-static {v0}, Lanet/channel/h/g;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 245
    invoke-virtual {p0}, Lanetwork/channel/statist/StatisticData;->sumNetStat()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lanetwork/channel/statist/StatisticData;->netStatSum:Ljava/lang/String;

    .line 248
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "StatisticData ["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 249
    iget-object v1, p0, Lanetwork/channel/statist/StatisticData;->netStatSum:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    .line 250
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
