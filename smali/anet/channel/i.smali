.class Lanet/channel/i;
.super Ljava/lang/Object;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lanet/channel/i$a;,
        Lanet/channel/i$b;,
        Lanet/channel/i$c;
    }
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:Lanet/channel/g;

.field c:Lanet/channel/o;

.field volatile d:Z

.field volatile e:Lanet/channel/Session;

.field volatile f:Z

.field g:Lanet/channel/statist/SessionConnStat;

.field private h:Ljava/lang/String;

.field private i:Lanet/channel/h;

.field private volatile j:Ljava/util/concurrent/Future;

.field private k:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/String;Lanet/channel/g;)V
    .locals 2

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 57
    iput-boolean v0, p0, Lanet/channel/i;->d:Z

    .line 60
    iput-boolean v0, p0, Lanet/channel/i;->f:Z

    const/4 v0, 0x0

    .line 62
    iput-object v0, p0, Lanet/channel/i;->g:Lanet/channel/statist/SessionConnStat;

    .line 64
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lanet/channel/i;->k:Ljava/lang/Object;

    .line 67
    iput-object p1, p0, Lanet/channel/i;->a:Ljava/lang/String;

    .line 68
    iget-object p1, p0, Lanet/channel/i;->a:Ljava/lang/String;

    iget-object v0, p0, Lanet/channel/i;->a:Ljava/lang/String;

    const-string v1, "://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x3

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lanet/channel/i;->h:Ljava/lang/String;

    .line 69
    iput-object p2, p0, Lanet/channel/i;->b:Lanet/channel/g;

    .line 70
    iget-object p1, p2, Lanet/channel/g;->g:Lanet/channel/l;

    iget-object v0, p0, Lanet/channel/i;->h:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lanet/channel/l;->b(Ljava/lang/String;)Lanet/channel/h;

    move-result-object p1

    iput-object p1, p0, Lanet/channel/i;->i:Lanet/channel/h;

    .line 71
    iget-object p1, p2, Lanet/channel/g;->e:Lanet/channel/o;

    iput-object p1, p0, Lanet/channel/i;->c:Lanet/channel/o;

    return-void
.end method

.method private a(Lanet/channel/entity/ConnType$TypeLevel;Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lanet/channel/entity/ConnType$TypeLevel;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lanet/channel/strategy/c;",
            ">;"
        }
    .end annotation

    .line 315
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    const/4 v1, 0x0

    .line 317
    :try_start_0
    invoke-virtual {p0}, Lanet/channel/i;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lanet/channel/h/k;->a(Ljava/lang/String;)Lanet/channel/h/k;

    move-result-object v2

    if-nez v2, :cond_0

    .line 319
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p1

    .line 323
    :cond_0
    invoke-static {}, Lanet/channel/strategy/h;->a()Lanet/channel/strategy/e;

    move-result-object v3

    invoke-virtual {v2}, Lanet/channel/h/k;->b()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lanet/channel/strategy/e;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 325
    :try_start_1
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "https"

    .line 326
    invoke-virtual {v2}, Lanet/channel/h/k;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 327
    invoke-interface {v3}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v2

    .line 328
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/ListIterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 329
    invoke-interface {v2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lanet/channel/strategy/c;

    .line 330
    invoke-interface {v4}, Lanet/channel/strategy/c;->d()Lanet/channel/strategy/ConnProtocol;

    move-result-object v4

    invoke-static {v4}, Lanet/channel/entity/ConnType;->a(Lanet/channel/strategy/ConnProtocol;)Lanet/channel/entity/ConnType;

    move-result-object v4

    .line 331
    invoke-virtual {v4}, Lanet/channel/entity/ConnType;->c()Z

    move-result v5

    if-ne v5, v0, :cond_2

    if-eqz p1, :cond_1

    invoke-virtual {v4}, Lanet/channel/entity/ConnType;->d()Lanet/channel/entity/ConnType$TypeLevel;

    move-result-object v4

    if-eq v4, p1, :cond_1

    .line 333
    :cond_2
    invoke-interface {v2}, Ljava/util/ListIterator;->remove()V

    goto :goto_0

    :cond_3
    const/4 p1, 0x1

    .line 338
    invoke-static {p1}, Lanet/channel/h/a;->a(I)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "awcn.SessionRequest"

    const-string v2, "[getAvailStrategy]"

    const/4 v4, 0x2

    .line 339
    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "strategies"

    aput-object v5, v4, v1

    aput-object v3, v4, p1

    invoke-static {v0, v2, p2, v4}, Lanet/channel/h/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    move-object v3, v0

    :goto_1
    const-string v0, "awcn.SessionRequest"

    const-string v2, ""

    .line 343
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, p2, p1, v1}, Lanet/channel/h/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_4
    :goto_2
    return-object v3
.end method

.method private a(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lanet/channel/strategy/c;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lanet/channel/entity/b;",
            ">;"
        }
    .end annotation

    .line 350
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 351
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p1

    .line 353
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 355
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_2

    .line 356
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lanet/channel/strategy/c;

    .line 357
    invoke-interface {v4}, Lanet/channel/strategy/c;->g()I

    move-result v5

    move v6, v3

    const/4 v3, 0x0

    :goto_1
    if-gt v3, v5, :cond_1

    add-int/lit8 v6, v6, 0x1

    .line 360
    new-instance v7, Lanet/channel/entity/b;

    invoke-virtual {p0}, Lanet/channel/i;->a()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9, v4}, Lanet/channel/entity/b;-><init>(Ljava/lang/String;Ljava/lang/String;Lanet/channel/strategy/c;)V

    .line 361
    iput v3, v7, Lanet/channel/entity/b;->b:I

    .line 362
    iput v5, v7, Lanet/channel/entity/b;->c:I

    .line 363
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    move v3, v6

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private a(Landroid/content/Context;Lanet/channel/entity/b;Lanet/channel/i$a;Ljava/lang/String;)V
    .locals 7

    .line 370
    invoke-virtual {p2}, Lanet/channel/entity/b;->c()Lanet/channel/entity/ConnType;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 371
    invoke-virtual {v0}, Lanet/channel/entity/ConnType;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 372
    new-instance v0, Lanet/channel/g/a;

    iget-object v1, p0, Lanet/channel/i;->b:Lanet/channel/g;

    iget-object v4, v1, Lanet/channel/g;->d:Lanet/channel/b;

    iget-object v5, p0, Lanet/channel/i;->i:Lanet/channel/h;

    iget-object v1, p0, Lanet/channel/i;->b:Lanet/channel/g;

    iget-object v1, v1, Lanet/channel/g;->g:Lanet/channel/l;

    iget-object v2, p0, Lanet/channel/i;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lanet/channel/l;->c(Ljava/lang/String;)I

    move-result v6

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lanet/channel/g/a;-><init>(Landroid/content/Context;Lanet/channel/entity/b;Lanet/channel/b;Lanet/channel/h;I)V

    iput-object v0, p0, Lanet/channel/i;->e:Lanet/channel/Session;

    goto :goto_0

    .line 377
    :cond_0
    new-instance v0, Lanet/channel/g/e;

    invoke-direct {v0, p1, p2}, Lanet/channel/g/e;-><init>(Landroid/content/Context;Lanet/channel/entity/b;)V

    iput-object v0, p0, Lanet/channel/i;->e:Lanet/channel/Session;

    :goto_0
    const-string p1, "awcn.SessionRequest"

    const-string v0, "create connection..."

    const/16 v1, 0xc

    .line 379
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "Host"

    aput-object v3, v1, v2

    invoke-virtual {p0}, Lanet/channel/i;->a()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v2, 0x2

    const-string v4, "Type"

    aput-object v4, v1, v2

    const/4 v2, 0x3

    invoke-virtual {p2}, Lanet/channel/entity/b;->c()Lanet/channel/entity/ConnType;

    move-result-object v4

    aput-object v4, v1, v2

    const/4 v2, 0x4

    const-string v4, "IP"

    aput-object v4, v1, v2

    const/4 v2, 0x5

    invoke-virtual {p2}, Lanet/channel/entity/b;->a()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    const/4 v2, 0x6

    const-string v4, "Port"

    aput-object v4, v1, v2

    const/4 v2, 0x7

    invoke-virtual {p2}, Lanet/channel/entity/b;->b()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    const/16 v2, 0x8

    const-string v4, "heartbeat"

    aput-object v4, v1, v2

    const/16 v2, 0x9

    invoke-virtual {p2}, Lanet/channel/entity/b;->g()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    const/16 v2, 0xa

    const-string v4, "session"

    aput-object v4, v1, v2

    const/16 v2, 0xb

    iget-object v4, p0, Lanet/channel/i;->e:Lanet/channel/Session;

    aput-object v4, v1, v2

    invoke-static {p1, v0, p4, v1}, Lanet/channel/h/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 380
    iget-object p1, p0, Lanet/channel/i;->e:Lanet/channel/Session;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, p1, p3, v0, v1}, Lanet/channel/i;->a(Lanet/channel/Session;Lanet/channel/i$a;J)V

    .line 381
    iget-object p1, p0, Lanet/channel/i;->e:Lanet/channel/Session;

    invoke-virtual {p1}, Lanet/channel/Session;->b()V

    .line 382
    iget-object p1, p0, Lanet/channel/i;->g:Lanet/channel/statist/SessionConnStat;

    iget p3, p1, Lanet/channel/statist/SessionConnStat;->retryTimes:I

    add-int/2addr p3, v3

    iput p3, p1, Lanet/channel/statist/SessionConnStat;->retryTimes:I

    .line 383
    iget-object p1, p0, Lanet/channel/i;->g:Lanet/channel/statist/SessionConnStat;

    iget p1, p1, Lanet/channel/statist/SessionConnStat;->retryTimes:I

    if-ne p1, v3, :cond_1

    iget-object p1, p2, Lanet/channel/entity/b;->a:Lanet/channel/strategy/c;

    if-eqz p1, :cond_1

    .line 384
    iget-object p1, p0, Lanet/channel/i;->g:Lanet/channel/statist/SessionConnStat;

    iget-object p2, p2, Lanet/channel/entity/b;->a:Lanet/channel/strategy/c;

    invoke-interface {p2}, Lanet/channel/strategy/c;->b()I

    move-result p2

    iput p2, p1, Lanet/channel/statist/SessionConnStat;->firstIpType:I

    :cond_1
    return-void
.end method

.method private a(Lanet/channel/Session;Lanet/channel/i$a;J)V
    .locals 2

    if-nez p2, :cond_0

    return-void

    .line 392
    :cond_0
    sget-object v0, Lanet/channel/entity/EventType;->ALL:Lanet/channel/entity/EventType;

    invoke-virtual {v0}, Lanet/channel/entity/EventType;->getType()I

    move-result v0

    new-instance v1, Lanet/channel/p;

    invoke-direct {v1, p0, p2, p3, p4}, Lanet/channel/p;-><init>(Lanet/channel/i;Lanet/channel/i$a;J)V

    invoke-virtual {p1, v0, v1}, Lanet/channel/Session;->a(ILanet/channel/entity/a;)V

    .line 427
    sget-object p2, Lanet/channel/entity/EventType;->AUTH_SUCC:Lanet/channel/entity/EventType;

    invoke-virtual {p2}, Lanet/channel/entity/EventType;->getType()I

    move-result p2

    sget-object p3, Lanet/channel/entity/EventType;->CONNECT_FAIL:Lanet/channel/entity/EventType;

    invoke-virtual {p3}, Lanet/channel/entity/EventType;->getType()I

    move-result p3

    or-int/2addr p2, p3

    sget-object p3, Lanet/channel/entity/EventType;->AUTH_FAIL:Lanet/channel/entity/EventType;

    invoke-virtual {p3}, Lanet/channel/entity/EventType;->getType()I

    move-result p3

    or-int/2addr p2, p3

    new-instance p3, Lanet/channel/q;

    invoke-direct {p3, p0, p1}, Lanet/channel/q;-><init>(Lanet/channel/i;Lanet/channel/Session;)V

    invoke-virtual {p1, p2, p3}, Lanet/channel/Session;->a(ILanet/channel/entity/a;)V

    return-void
.end method

.method static synthetic a(Lanet/channel/i;Landroid/content/Context;Lanet/channel/entity/b;Lanet/channel/i$a;Ljava/lang/String;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1, p2, p3, p4}, Lanet/channel/i;->a(Landroid/content/Context;Lanet/channel/entity/b;Lanet/channel/i$a;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected a()Ljava/lang/String;
    .locals 1

    .line 75
    iget-object v0, p0, Lanet/channel/i;->a:Ljava/lang/String;

    return-object v0
.end method

.method protected a(J)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    const-string v0, "awcn.SessionRequest"

    const-string v1, "[await]"

    const/4 v2, 0x2

    .line 484
    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "timeoutMs"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2}, Lanet/channel/h/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_0

    return-void

    .line 489
    :cond_0
    iget-object v0, p0, Lanet/channel/i;->k:Ljava/lang/Object;

    monitor-enter v0

    .line 490
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const/4 v3, 0x0

    add-long v3, v1, p1

    .line 491
    :goto_0
    iget-boolean p1, p0, Lanet/channel/i;->d:Z

    if-eqz p1, :cond_2

    .line 492
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    cmp-long v1, p1, v3

    if-ltz v1, :cond_1

    goto :goto_1

    .line 496
    :cond_1
    iget-object v1, p0, Lanet/channel/i;->k:Ljava/lang/Object;

    const/4 v2, 0x0

    sub-long v5, v3, p1

    invoke-virtual {v1, v5, v6}, Ljava/lang/Object;->wait(J)V

    goto :goto_0

    .line 500
    :cond_2
    :goto_1
    iget-boolean p1, p0, Lanet/channel/i;->d:Z

    if-eqz p1, :cond_3

    .line 501
    new-instance p1, Ljava/util/concurrent/TimeoutException;

    invoke-direct {p1}, Ljava/util/concurrent/TimeoutException;-><init>()V

    throw p1

    .line 503
    :cond_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method protected declared-synchronized a(Landroid/content/Context;Lanet/channel/entity/ConnType$TypeLevel;Ljava/lang/String;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lanet/channel/NoNetworkException;,
            Lanet/channel/NoAvailStrategyException;
        }
    .end annotation

    monitor-enter p0

    .line 119
    :try_start_0
    iget-object v0, p0, Lanet/channel/i;->c:Lanet/channel/o;

    invoke-virtual {v0, p0, p2}, Lanet/channel/o;->a(Lanet/channel/i;Lanet/channel/entity/ConnType$TypeLevel;)Lanet/channel/Session;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string p1, "awcn.SessionRequest"

    const-string p2, "Available Session exist!!!"

    .line 121
    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p1, p2, p3, v0}, Lanet/channel/h/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    monitor-exit p0

    return-void

    .line 124
    :cond_0
    :try_start_1
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p3, 0x0

    .line 125
    invoke-static {p3}, Lanet/channel/h/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    :cond_1
    const-string v0, "awcn.SessionRequest"

    const-string v2, "SessionRequest start"

    const/4 v3, 0x4

    .line 127
    new-array v4, v3, [Ljava/lang/Object;

    const-string v5, "host"

    aput-object v5, v4, v1

    iget-object v5, p0, Lanet/channel/i;->a:Ljava/lang/String;

    const/4 v6, 0x1

    aput-object v5, v4, v6

    const-string v5, "type"

    const/4 v7, 0x2

    aput-object v5, v4, v7

    const/4 v5, 0x3

    aput-object p2, v4, v5

    invoke-static {v0, v2, p3, v4}, Lanet/channel/h/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 128
    iget-boolean v0, p0, Lanet/channel/i;->d:Z

    if-eqz v0, :cond_2

    const-string p1, "awcn.SessionRequest"

    const-string p2, "session is connecting, return"

    .line 129
    new-array v0, v7, [Ljava/lang/Object;

    const-string v2, "host"

    aput-object v2, v0, v1

    invoke-virtual {p0}, Lanet/channel/i;->a()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    invoke-static {p1, p2, p3, v0}, Lanet/channel/h/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 130
    monitor-exit p0

    return-void

    .line 132
    :cond_2
    :try_start_2
    invoke-virtual {p0, v6}, Lanet/channel/i;->a(Z)V

    .line 133
    new-instance v0, Lanet/channel/i$c;

    invoke-direct {v0, p0, p3}, Lanet/channel/i$c;-><init>(Lanet/channel/i;Ljava/lang/String;)V

    const-wide/16 v8, 0x2d

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v0, v8, v9, v2}, Lanet/channel/a/c;->a(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, p0, Lanet/channel/i;->j:Ljava/util/concurrent/Future;

    .line 134
    new-instance v0, Lanet/channel/statist/SessionConnStat;

    invoke-direct {v0}, Lanet/channel/statist/SessionConnStat;-><init>()V

    iput-object v0, p0, Lanet/channel/i;->g:Lanet/channel/statist/SessionConnStat;

    .line 135
    iget-object v0, p0, Lanet/channel/i;->g:Lanet/channel/statist/SessionConnStat;

    iget-object v2, p0, Lanet/channel/i;->a:Ljava/lang/String;

    iput-object v2, v0, Lanet/channel/statist/SessionConnStat;->host:Ljava/lang/String;

    .line 136
    iget-object v0, p0, Lanet/channel/i;->g:Lanet/channel/statist/SessionConnStat;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, v0, Lanet/channel/statist/SessionConnStat;->startTime:J

    .line 138
    invoke-static {}, Lanet/channel/status/NetworkStatusHelper;->g()Z

    move-result v0

    if-nez v0, :cond_4

    .line 139
    invoke-static {v6}, Lanet/channel/h/a;->a(I)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "awcn.SessionRequest"

    const-string p2, "network is not available, can\'t create session"

    .line 140
    new-array v0, v7, [Ljava/lang/Object;

    const-string v2, "NetworkStatusHelper.isConnected()"

    aput-object v2, v0, v1

    invoke-static {}, Lanet/channel/status/NetworkStatusHelper;->g()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v0, v6

    invoke-static {p1, p2, p3, v0}, Lanet/channel/h/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 142
    :cond_3
    invoke-virtual {p0}, Lanet/channel/i;->c()V

    .line 143
    new-instance p1, Lanet/channel/NoNetworkException;

    invoke-direct {p1, p0}, Lanet/channel/NoNetworkException;-><init>(Lanet/channel/i;)V

    throw p1

    .line 145
    :cond_4
    invoke-direct {p0, p2, p3}, Lanet/channel/i;->a(Lanet/channel/entity/ConnType$TypeLevel;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 147
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    const-string p1, "awcn.SessionRequest"

    const-string v0, "no avalible strategy, can\'t create session"

    .line 148
    new-array v2, v3, [Ljava/lang/Object;

    const-string v3, "host"

    aput-object v3, v2, v1

    iget-object v1, p0, Lanet/channel/i;->a:Ljava/lang/String;

    aput-object v1, v2, v6

    const-string v1, "type"

    aput-object v1, v2, v7

    aput-object p2, v2, v5

    invoke-static {p1, v0, p3, v2}, Lanet/channel/h/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 149
    invoke-virtual {p0}, Lanet/channel/i;->c()V

    .line 150
    new-instance p1, Lanet/channel/NoAvailStrategyException;

    invoke-direct {p1, p0}, Lanet/channel/NoAvailStrategyException;-><init>(Lanet/channel/i;)V

    throw p1

    .line 153
    :cond_5
    invoke-direct {p0, v0, p3}, Lanet/channel/i;->a(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 156
    :try_start_3
    invoke-interface {p2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lanet/channel/entity/b;

    .line 157
    new-instance v0, Lanet/channel/i$b;

    invoke-direct {v0, p0, p1, p2, p3}, Lanet/channel/i$b;-><init>(Lanet/channel/i;Landroid/content/Context;Ljava/util/List;Lanet/channel/entity/b;)V

    invoke-virtual {p3}, Lanet/channel/entity/b;->h()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p3, v0, p2}, Lanet/channel/i;->a(Landroid/content/Context;Lanet/channel/entity/b;Lanet/channel/i$a;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 159
    :catch_0
    :try_start_4
    invoke-virtual {p0}, Lanet/channel/i;->c()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 161
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 118
    monitor-exit p0

    throw p1
.end method

.method a(Lanet/channel/Session;ILjava/lang/String;)V
    .locals 4

    .line 522
    invoke-static {}, Lanet/channel/d;->a()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 527
    :cond_0
    iget-object v1, p0, Lanet/channel/i;->i:Lanet/channel/h;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lanet/channel/i;->i:Lanet/channel/h;

    iget-boolean v1, v1, Lanet/channel/h;->c:Z

    if-nez v1, :cond_1

    goto :goto_1

    .line 532
    :cond_1
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.taobao.accs.intent.action.RECEIVE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 533
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "com.taobao.accs.data.MsgDistributeService"

    .line 534
    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "command"

    const/16 v3, 0x67

    .line 535
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "host"

    .line 536
    invoke-virtual {p1}, Lanet/channel/Session;->i()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "is_center_host"

    const/4 v3, 0x1

    .line 537
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 539
    invoke-virtual {p1}, Lanet/channel/Session;->e()Z

    move-result p1

    if-nez p1, :cond_2

    const-string v2, "errorCode"

    .line 541
    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p2, "errorDetail"

    .line 542
    invoke-virtual {v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_2
    const-string p2, "connect_avail"

    .line 544
    invoke-virtual {v1, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p1, "type_inapp"

    .line 545
    invoke-virtual {v1, p1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 546
    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "awcn.SessionRequest"

    const-string p3, "sendConnectInfoBroadCastToAccs"

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 548
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2, p3, v0, p1, v1}, Lanet/channel/h/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_3
    :goto_1
    return-void
.end method

.method protected a(Ljava/lang/String;)V
    .locals 5

    const-string v0, "awcn.SessionRequest"

    const-string v1, "reCreateSession"

    const/4 v2, 0x2

    .line 464
    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "host"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v3, p0, Lanet/channel/i;->a:Ljava/lang/String;

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-static {v0, v1, p1, v2}, Lanet/channel/h/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 465
    invoke-virtual {p0, v4}, Lanet/channel/i;->b(Z)V

    return-void
.end method

.method a(Z)V
    .locals 2

    .line 79
    iput-boolean p1, p0, Lanet/channel/i;->d:Z

    if-nez p1, :cond_1

    .line 81
    iget-object p1, p0, Lanet/channel/i;->j:Ljava/util/concurrent/Future;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 82
    iget-object p1, p0, Lanet/channel/i;->j:Ljava/util/concurrent/Future;

    const/4 v1, 0x1

    invoke-interface {p1, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 83
    iput-object v0, p0, Lanet/channel/i;->j:Ljava/util/concurrent/Future;

    .line 85
    :cond_0
    iput-object v0, p0, Lanet/channel/i;->e:Lanet/channel/Session;

    :cond_1
    return-void
.end method

.method protected b()Lanet/channel/entity/ConnType$TypeLevel;
    .locals 1

    .line 507
    iget-object v0, p0, Lanet/channel/i;->e:Lanet/channel/Session;

    if-eqz v0, :cond_0

    .line 509
    iget-object v0, v0, Lanet/channel/Session;->i:Lanet/channel/entity/ConnType;

    invoke-virtual {v0}, Lanet/channel/entity/ConnType;->d()Lanet/channel/entity/ConnType$TypeLevel;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected b(Z)V
    .locals 6

    const-string v0, "awcn.SessionRequest"

    const-string v1, "closeSessions"

    const/4 v2, 0x4

    .line 446
    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "host"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v3, p0, Lanet/channel/i;->a:Ljava/lang/String;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const-string v3, "autoCreate"

    const/4 v5, 0x2

    aput-object v3, v2, v5

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v5, 0x3

    aput-object v3, v2, v5

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2}, Lanet/channel/h/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez p1, :cond_0

    .line 448
    iget-object v0, p0, Lanet/channel/i;->e:Lanet/channel/Session;

    if-eqz v0, :cond_0

    .line 449
    iget-object v0, p0, Lanet/channel/i;->e:Lanet/channel/Session;

    iput-boolean v4, v0, Lanet/channel/Session;->r:Z

    .line 450
    iget-object v0, p0, Lanet/channel/i;->e:Lanet/channel/Session;

    invoke-virtual {v0, v4}, Lanet/channel/Session;->a(Z)V

    .line 452
    :cond_0
    iget-object v0, p0, Lanet/channel/i;->c:Lanet/channel/o;

    invoke-virtual {v0, p0}, Lanet/channel/o;->a(Lanet/channel/i;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 454
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lanet/channel/Session;

    if-eqz v1, :cond_1

    .line 457
    invoke-virtual {v1, p1}, Lanet/channel/Session;->a(Z)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method c()V
    .locals 2

    const/4 v0, 0x0

    .line 515
    invoke-virtual {p0, v0}, Lanet/channel/i;->a(Z)V

    .line 516
    iget-object v0, p0, Lanet/channel/i;->k:Ljava/lang/Object;

    monitor-enter v0

    .line 517
    :try_start_0
    iget-object v1, p0, Lanet/channel/i;->k:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 518
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
