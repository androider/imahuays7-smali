.class public Lorg/seamless/util/Threads;
.super Ljava/lang/Object;
.source "Threads.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAllThreads()[Ljava/lang/Thread;
    .locals 4

    .line 34
    invoke-static {}, Lorg/seamless/util/Threads;->getRootThreadGroup()Ljava/lang/ThreadGroup;

    move-result-object v0

    .line 35
    invoke-static {}, Ljava/lang/management/ManagementFactory;->getThreadMXBean()Ljava/lang/management/ThreadMXBean;

    move-result-object v1

    .line 36
    invoke-interface {v1}, Ljava/lang/management/ThreadMXBean;->getThreadCount()I

    move-result v1

    :cond_0
    mul-int/lit8 v1, v1, 0x2

    .line 41
    new-array v2, v1, [Ljava/lang/Thread;

    const/4 v3, 0x1

    .line 42
    invoke-virtual {v0, v2, v3}, Ljava/lang/ThreadGroup;->enumerate([Ljava/lang/Thread;Z)I

    move-result v3

    if-eq v3, v1, :cond_0

    .line 44
    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Thread;

    return-object v0
.end method

.method public static getRootThreadGroup()Ljava/lang/ThreadGroup;
    .locals 2

    .line 26
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getThreadGroup()Ljava/lang/ThreadGroup;

    move-result-object v0

    .line 28
    :goto_0
    invoke-virtual {v0}, Ljava/lang/ThreadGroup;->getParent()Ljava/lang/ThreadGroup;

    move-result-object v1

    if-eqz v1, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static getThread(J)Ljava/lang/Thread;
    .locals 7

    .line 48
    invoke-static {}, Lorg/seamless/util/Threads;->getAllThreads()[Ljava/lang/Thread;

    move-result-object v0

    .line 49
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 50
    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    cmp-long v6, v4, p0

    if-nez v6, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method
