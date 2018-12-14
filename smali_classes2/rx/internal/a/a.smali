.class public final Lrx/internal/a/a;
.super Ljava/lang/Object;
.source "BackpressureUtils.java"


# direct methods
.method public static a(JJ)J
    .locals 2

    add-long v0, p0, p2

    const-wide/16 p0, 0x0

    cmp-long p2, v0, p0

    if-gez p2, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    :cond_0
    return-wide v0
.end method

.method public static a(Ljava/util/concurrent/atomic/AtomicLong;J)J
    .locals 4

    .line 68
    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    .line 69
    invoke-static {v0, v1, p1, p2}, Lrx/internal/a/a;->a(JJ)J

    move-result-wide v2

    .line 70
    invoke-virtual {p0, v0, v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result v2

    if-eqz v2, :cond_0

    return-wide v0
.end method
