.class public final Lio/rx_cache2/internal/cache/i;
.super Ljava/lang/Object;
.source "HasRecordExpired.java"


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lio/rx_cache2/internal/Record;)Z
    .locals 10

    .line 28
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 30
    invoke-virtual {p1}, Lio/rx_cache2/internal/Record;->getLifeTime()Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return v3

    .line 33
    :cond_0
    invoke-virtual {p1}, Lio/rx_cache2/internal/Record;->getTimeAtWhichWasPersisted()J

    move-result-wide v4

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    add-long v8, v4, v6

    cmp-long p1, v0, v8

    if-lez p1, :cond_1

    const/4 v3, 0x1

    :cond_1
    return v3
.end method
