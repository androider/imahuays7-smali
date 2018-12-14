.class public Lanet/channel/e/d;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Lanet/channel/e/b;
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lanet/channel/Session;

.field private volatile b:J

.field private volatile c:Z

.field private d:I

.field private e:J


# direct methods
.method public constructor <init>(Lanet/channel/Session;)V
    .locals 3

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 17
    iput-wide v0, p0, Lanet/channel/e/d;->b:J

    const/4 v2, 0x0

    .line 18
    iput-boolean v2, p0, Lanet/channel/e/d;->c:Z

    .line 19
    iput v2, p0, Lanet/channel/e/d;->d:I

    .line 20
    iput-wide v0, p0, Lanet/channel/e/d;->e:J

    .line 23
    iput-object p1, p0, Lanet/channel/e/d;->a:Lanet/channel/Session;

    .line 24
    invoke-virtual {p1}, Lanet/channel/Session;->k()Lanet/channel/strategy/c;

    move-result-object p1

    invoke-interface {p1}, Lanet/channel/strategy/c;->h()I

    move-result p1

    int-to-long v0, p1

    iput-wide v0, p0, Lanet/channel/e/d;->e:J

    return-void
.end method

.method private a(J)V
    .locals 4

    .line 92
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/4 v2, 0x0

    add-long v2, v0, p1

    iput-wide v2, p0, Lanet/channel/e/d;->b:J

    const-wide/16 v0, 0x32

    add-long v2, p1, v0

    .line 93
    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, v2, v3, p1}, Lanet/channel/a/c;->a(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/Future;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "awcn.DefaultHeartbeatImpl"

    const-string v0, "Submit heartbeat task to thread pool failed."

    .line 95
    iget-object v1, p0, Lanet/channel/e/d;->a:Lanet/channel/Session;

    iget-object v1, v1, Lanet/channel/Session;->m:Ljava/lang/String;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p2, v0, v1, p1, v2}, Lanet/channel/h/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 6

    const-string v0, "awcn.DefaultHeartbeatImpl"

    const-string v1, "heartbeat start"

    .line 29
    iget-object v2, p0, Lanet/channel/e/d;->a:Lanet/channel/Session;

    iget-object v2, v2, Lanet/channel/Session;->m:Ljava/lang/String;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "session"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    iget-object v4, p0, Lanet/channel/e/d;->a:Lanet/channel/Session;

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-static {v0, v1, v2, v3}, Lanet/channel/h/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 30
    iget-wide v0, p0, Lanet/channel/e/d;->e:J

    invoke-direct {p0, v0, v1}, Lanet/channel/e/d;->a(J)V

    return-void
.end method

.method public b()V
    .locals 6

    const-string v0, "awcn.DefaultHeartbeatImpl"

    const-string v1, "heartbeat stop"

    .line 35
    iget-object v2, p0, Lanet/channel/e/d;->a:Lanet/channel/Session;

    iget-object v2, v2, Lanet/channel/Session;->m:Ljava/lang/String;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "session"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    iget-object v4, p0, Lanet/channel/e/d;->a:Lanet/channel/Session;

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-static {v0, v1, v2, v3}, Lanet/channel/h/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 36
    iput-boolean v5, p0, Lanet/channel/e/d;->c:Z

    return-void
.end method

.method public c()V
    .locals 11

    .line 53
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lanet/channel/e/d;->e:J

    add-long v4, v0, v2

    .line 54
    iget-wide v0, p0, Lanet/channel/e/d;->b:J

    const-wide/16 v2, 0x3e8

    add-long v6, v0, v2

    cmp-long v0, v6, v4

    if-gez v0, :cond_1

    const/4 v0, 0x1

    .line 55
    invoke-static {v0}, Lanet/channel/h/a;->a(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "awcn.DefaultHeartbeatImpl"

    const-string v2, "reSchedule"

    .line 56
    iget-object v3, p0, Lanet/channel/e/d;->a:Lanet/channel/Session;

    iget-object v3, v3, Lanet/channel/Session;->m:Ljava/lang/String;

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "session"

    aput-object v8, v6, v7

    iget-object v7, p0, Lanet/channel/e/d;->a:Lanet/channel/Session;

    aput-object v7, v6, v0

    const/4 v0, 0x2

    const-string v7, "delay"

    aput-object v7, v6, v0

    const/4 v0, 0x3

    iget-wide v7, p0, Lanet/channel/e/d;->b:J

    sub-long v9, v4, v7

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v0

    invoke-static {v1, v2, v3, v6}, Lanet/channel/h/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 58
    :cond_0
    iput-wide v4, p0, Lanet/channel/e/d;->b:J

    :cond_1
    return-void
.end method

.method public d()V
    .locals 2

    .line 46
    iget-object v0, p0, Lanet/channel/e/d;->a:Lanet/channel/Session;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lanet/channel/Session;->b(Z)V

    return-void
.end method

.method public run()V
    .locals 8

    .line 64
    iget-boolean v0, p0, Lanet/channel/e/d;->c:Z

    if-eqz v0, :cond_0

    return-void

    .line 68
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 69
    iget-wide v2, p0, Lanet/channel/e/d;->b:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_1

    .line 70
    iget-wide v2, p0, Lanet/channel/e/d;->b:J

    sub-long v4, v2, v0

    invoke-direct {p0, v4, v5}, Lanet/channel/e/d;->a(J)V

    return-void

    .line 74
    :cond_1
    invoke-static {}, Lanet/channel/d;->h()Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_4

    .line 76
    invoke-static {v3}, Lanet/channel/h/a;->a(I)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "awcn.DefaultHeartbeatImpl"

    const-string v5, "heartbeat"

    .line 77
    iget-object v6, p0, Lanet/channel/e/d;->a:Lanet/channel/Session;

    iget-object v6, v6, Lanet/channel/Session;->m:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v7, "session"

    aput-object v7, v1, v2

    iget-object v7, p0, Lanet/channel/e/d;->a:Lanet/channel/Session;

    aput-object v7, v1, v3

    invoke-static {v4, v5, v6, v1}, Lanet/channel/h/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 79
    :cond_2
    invoke-virtual {p0}, Lanet/channel/e/d;->d()V

    if-eqz v0, :cond_3

    .line 86
    iget v0, p0, Lanet/channel/e/d;->d:I

    add-int/lit8 v2, v0, 0x1

    :cond_3
    iput v2, p0, Lanet/channel/e/d;->d:I

    .line 87
    iget-wide v0, p0, Lanet/channel/e/d;->e:J

    invoke-direct {p0, v0, v1}, Lanet/channel/e/d;->a(J)V

    return-void

    :cond_4
    const-string v0, "awcn.DefaultHeartbeatImpl"

    const-string v4, "close session in background"

    .line 81
    iget-object v5, p0, Lanet/channel/e/d;->a:Lanet/channel/Session;

    iget-object v5, v5, Lanet/channel/Session;->m:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v6, "session"

    aput-object v6, v1, v2

    iget-object v6, p0, Lanet/channel/e/d;->a:Lanet/channel/Session;

    aput-object v6, v1, v3

    invoke-static {v0, v4, v5, v1}, Lanet/channel/h/a;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 82
    iget-object v0, p0, Lanet/channel/e/d;->a:Lanet/channel/Session;

    invoke-virtual {v0, v2}, Lanet/channel/Session;->a(Z)V

    return-void
.end method
