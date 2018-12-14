.class public Lcom/mh/movie/core/mvp/ui/utils/NetSpeed;
.super Ljava/lang/Object;
.source "NetSpeed.java"


# instance fields
.field private lastTimeStamp:J

.field private lastTotalRxBytes:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 8
    iput-wide v0, p0, Lcom/mh/movie/core/mvp/ui/utils/NetSpeed;->lastTotalRxBytes:J

    .line 9
    iput-wide v0, p0, Lcom/mh/movie/core/mvp/ui/utils/NetSpeed;->lastTimeStamp:J

    return-void
.end method


# virtual methods
.method public getNetSpeed(I)Ljava/lang/String;
    .locals 10

    .line 12
    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/ui/utils/NetSpeed;->getTotalRxBytes(I)J

    move-result-wide v0

    .line 13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 14
    iget-wide v4, p0, Lcom/mh/movie/core/mvp/ui/utils/NetSpeed;->lastTotalRxBytes:J

    sub-long v6, v0, v4

    const-wide/16 v4, 0x3e8

    mul-long v6, v6, v4

    iget-wide v4, p0, Lcom/mh/movie/core/mvp/ui/utils/NetSpeed;->lastTimeStamp:J

    sub-long v8, v2, v4

    div-long/2addr v6, v8

    .line 15
    iput-wide v2, p0, Lcom/mh/movie/core/mvp/ui/utils/NetSpeed;->lastTimeStamp:J

    .line 16
    iput-wide v0, p0, Lcom/mh/movie/core/mvp/ui/utils/NetSpeed;->lastTotalRxBytes:J

    .line 18
    invoke-static {}, Lcom/mh/movie/core/b/f;->a()Lcom/mh/movie/core/b/f;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mh/movie/core/b/f;->b()I

    move-result p1

    if-lez p1, :cond_0

    invoke-static {}, Lcom/mh/movie/core/b/f;->a()Lcom/mh/movie/core/b/f;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mh/movie/core/b/f;->b()I

    move-result p1

    mul-int/lit16 p1, p1, 0x400

    int-to-long v0, p1

    cmp-long p1, v6, v0

    if-lez p1, :cond_0

    .line 19
    invoke-static {}, Lcom/mh/movie/core/b/f;->a()Lcom/mh/movie/core/b/f;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mh/movie/core/b/f;->b()I

    move-result p1

    mul-int/lit16 p1, p1, 0x400

    int-to-long v6, p1

    :cond_0
    const-wide/16 v0, 0x400

    cmp-long p1, v6, v0

    if-ltz p1, :cond_1

    const-wide/16 v2, 0x64

    mul-long v6, v6, v2

    .line 23
    div-long/2addr v6, v0

    long-to-float p1, v6

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr p1, v0

    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " m/s"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 26
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " kb/s"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getTotalRxBytes(I)J
    .locals 4

    .line 33
    invoke-static {p1}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/net/TrafficStats;->getTotalRxBytes()J

    move-result-wide v0

    const-wide/16 v2, 0x400

    div-long/2addr v0, v2

    :goto_0
    return-wide v0
.end method
