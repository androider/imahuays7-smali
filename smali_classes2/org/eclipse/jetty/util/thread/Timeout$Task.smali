.class public Lorg/eclipse/jetty/util/thread/Timeout$Task;
.super Ljava/lang/Object;
.source "Timeout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jetty/util/thread/Timeout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Task"
.end annotation


# instance fields
.field _delay:J

.field _expired:Z

.field _next:Lorg/eclipse/jetty/util/thread/Timeout$Task;

.field _prev:Lorg/eclipse/jetty/util/thread/Timeout$Task;

.field _timeout:Lorg/eclipse/jetty/util/thread/Timeout;

.field _timestamp:J


# direct methods
.method protected constructor <init>()V
    .locals 2

    .line 264
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 259
    iput-wide v0, p0, Lorg/eclipse/jetty/util/thread/Timeout$Task;->_timestamp:J

    const/4 v0, 0x0

    .line 260
    iput-boolean v0, p0, Lorg/eclipse/jetty/util/thread/Timeout$Task;->_expired:Z

    .line 265
    iput-object p0, p0, Lorg/eclipse/jetty/util/thread/Timeout$Task;->_prev:Lorg/eclipse/jetty/util/thread/Timeout$Task;

    iput-object p0, p0, Lorg/eclipse/jetty/util/thread/Timeout$Task;->_next:Lorg/eclipse/jetty/util/thread/Timeout$Task;

    return-void
.end method

.method static synthetic access$000(Lorg/eclipse/jetty/util/thread/Timeout$Task;)V
    .locals 0

    .line 253
    invoke-direct {p0}, Lorg/eclipse/jetty/util/thread/Timeout$Task;->unlink()V

    return-void
.end method

.method static synthetic access$100(Lorg/eclipse/jetty/util/thread/Timeout$Task;Lorg/eclipse/jetty/util/thread/Timeout$Task;)V
    .locals 0

    .line 253
    invoke-direct {p0, p1}, Lorg/eclipse/jetty/util/thread/Timeout$Task;->link(Lorg/eclipse/jetty/util/thread/Timeout$Task;)V

    return-void
.end method

.method private link(Lorg/eclipse/jetty/util/thread/Timeout$Task;)V
    .locals 2

    .line 299
    iget-object v0, p0, Lorg/eclipse/jetty/util/thread/Timeout$Task;->_next:Lorg/eclipse/jetty/util/thread/Timeout$Task;

    .line 300
    iget-object v1, p0, Lorg/eclipse/jetty/util/thread/Timeout$Task;->_next:Lorg/eclipse/jetty/util/thread/Timeout$Task;

    iput-object p1, v1, Lorg/eclipse/jetty/util/thread/Timeout$Task;->_prev:Lorg/eclipse/jetty/util/thread/Timeout$Task;

    .line 301
    iput-object p1, p0, Lorg/eclipse/jetty/util/thread/Timeout$Task;->_next:Lorg/eclipse/jetty/util/thread/Timeout$Task;

    .line 302
    iget-object p1, p0, Lorg/eclipse/jetty/util/thread/Timeout$Task;->_next:Lorg/eclipse/jetty/util/thread/Timeout$Task;

    iput-object v0, p1, Lorg/eclipse/jetty/util/thread/Timeout$Task;->_next:Lorg/eclipse/jetty/util/thread/Timeout$Task;

    .line 303
    iget-object p1, p0, Lorg/eclipse/jetty/util/thread/Timeout$Task;->_next:Lorg/eclipse/jetty/util/thread/Timeout$Task;

    iput-object p0, p1, Lorg/eclipse/jetty/util/thread/Timeout$Task;->_prev:Lorg/eclipse/jetty/util/thread/Timeout$Task;

    return-void
.end method

.method private unlink()V
    .locals 2

    .line 290
    iget-object v0, p0, Lorg/eclipse/jetty/util/thread/Timeout$Task;->_next:Lorg/eclipse/jetty/util/thread/Timeout$Task;

    iget-object v1, p0, Lorg/eclipse/jetty/util/thread/Timeout$Task;->_prev:Lorg/eclipse/jetty/util/thread/Timeout$Task;

    iput-object v1, v0, Lorg/eclipse/jetty/util/thread/Timeout$Task;->_prev:Lorg/eclipse/jetty/util/thread/Timeout$Task;

    .line 291
    iget-object v0, p0, Lorg/eclipse/jetty/util/thread/Timeout$Task;->_prev:Lorg/eclipse/jetty/util/thread/Timeout$Task;

    iget-object v1, p0, Lorg/eclipse/jetty/util/thread/Timeout$Task;->_next:Lorg/eclipse/jetty/util/thread/Timeout$Task;

    iput-object v1, v0, Lorg/eclipse/jetty/util/thread/Timeout$Task;->_next:Lorg/eclipse/jetty/util/thread/Timeout$Task;

    .line 292
    iput-object p0, p0, Lorg/eclipse/jetty/util/thread/Timeout$Task;->_prev:Lorg/eclipse/jetty/util/thread/Timeout$Task;

    iput-object p0, p0, Lorg/eclipse/jetty/util/thread/Timeout$Task;->_next:Lorg/eclipse/jetty/util/thread/Timeout$Task;

    const/4 v0, 0x0

    .line 293
    iput-boolean v0, p0, Lorg/eclipse/jetty/util/thread/Timeout$Task;->_expired:Z

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 3

    .line 344
    iget-object v0, p0, Lorg/eclipse/jetty/util/thread/Timeout$Task;->_timeout:Lorg/eclipse/jetty/util/thread/Timeout;

    if-eqz v0, :cond_0

    .line 347
    invoke-static {v0}, Lorg/eclipse/jetty/util/thread/Timeout;->access$300(Lorg/eclipse/jetty/util/thread/Timeout;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 349
    :try_start_0
    invoke-direct {p0}, Lorg/eclipse/jetty/util/thread/Timeout$Task;->unlink()V

    const-wide/16 v1, 0x0

    .line 350
    iput-wide v1, p0, Lorg/eclipse/jetty/util/thread/Timeout$Task;->_timestamp:J

    .line 351
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    :goto_0
    return-void
.end method

.method protected expire()V
    .locals 0

    return-void
.end method

.method public expired()V
    .locals 0

    return-void
.end method

.method public getAge()J
    .locals 7

    .line 277
    iget-object v0, p0, Lorg/eclipse/jetty/util/thread/Timeout$Task;->_timeout:Lorg/eclipse/jetty/util/thread/Timeout;

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    .line 280
    invoke-static {v0}, Lorg/eclipse/jetty/util/thread/Timeout;->access$200(Lorg/eclipse/jetty/util/thread/Timeout;)J

    move-result-wide v3

    cmp-long v0, v3, v1

    if-eqz v0, :cond_0

    .line 281
    iget-wide v5, p0, Lorg/eclipse/jetty/util/thread/Timeout$Task;->_timestamp:J

    cmp-long v0, v5, v1

    if-eqz v0, :cond_0

    .line 282
    iget-wide v0, p0, Lorg/eclipse/jetty/util/thread/Timeout$Task;->_timestamp:J

    sub-long v5, v3, v0

    return-wide v5

    :cond_0
    return-wide v1
.end method

.method public getTimestamp()J
    .locals 2

    .line 271
    iget-wide v0, p0, Lorg/eclipse/jetty/util/thread/Timeout$Task;->_timestamp:J

    return-wide v0
.end method

.method public isExpired()Z
    .locals 1

    .line 356
    iget-boolean v0, p0, Lorg/eclipse/jetty/util/thread/Timeout$Task;->_expired:Z

    return v0
.end method

.method public isScheduled()Z
    .locals 1

    .line 359
    iget-object v0, p0, Lorg/eclipse/jetty/util/thread/Timeout$Task;->_next:Lorg/eclipse/jetty/util/thread/Timeout$Task;

    if-eq v0, p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public reschedule()V
    .locals 3

    .line 333
    iget-object v0, p0, Lorg/eclipse/jetty/util/thread/Timeout$Task;->_timeout:Lorg/eclipse/jetty/util/thread/Timeout;

    if-eqz v0, :cond_0

    .line 335
    iget-wide v1, p0, Lorg/eclipse/jetty/util/thread/Timeout$Task;->_delay:J

    invoke-virtual {v0, p0, v1, v2}, Lorg/eclipse/jetty/util/thread/Timeout;->schedule(Lorg/eclipse/jetty/util/thread/Timeout$Task;J)V

    :cond_0
    return-void
.end method

.method public schedule(Lorg/eclipse/jetty/util/thread/Timeout;)V
    .locals 0

    .line 313
    invoke-virtual {p1, p0}, Lorg/eclipse/jetty/util/thread/Timeout;->schedule(Lorg/eclipse/jetty/util/thread/Timeout$Task;)V

    return-void
.end method

.method public schedule(Lorg/eclipse/jetty/util/thread/Timeout;J)V
    .locals 0

    .line 323
    invoke-virtual {p1, p0, p2, p3}, Lorg/eclipse/jetty/util/thread/Timeout;->schedule(Lorg/eclipse/jetty/util/thread/Timeout$Task;J)V

    return-void
.end method
