.class public Lanet/channel/g/a;
.super Lanet/channel/Session;
.source "Taobao"

# interfaces
.implements Lorg/android/spdy/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lanet/channel/g/a$a;
    }
.end annotation


# instance fields
.field protected A:Lanet/channel/e;

.field protected B:Ljava/lang/String;

.field protected C:Lanet/channel/f/a;

.field private D:I

.field private E:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field

.field protected s:Lorg/android/spdy/SpdyAgent;

.field protected t:Lorg/android/spdy/SpdySession;

.field protected volatile u:Z

.field protected v:J

.field protected w:J

.field protected x:I

.field protected y:Lanet/channel/c;

.field protected z:Lanet/channel/e/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lanet/channel/entity/b;Lanet/channel/b;Lanet/channel/h;I)V
    .locals 2

    .line 98
    invoke-virtual {p2}, Lanet/channel/entity/b;->c()Lanet/channel/entity/ConnType;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lanet/channel/Session;-><init>(Landroid/content/Context;Lanet/channel/entity/b;Lanet/channel/entity/ConnType;)V

    const/4 p1, 0x0

    .line 75
    iput-boolean p1, p0, Lanet/channel/g/a;->u:Z

    const-wide/16 v0, 0x0

    .line 78
    iput-wide v0, p0, Lanet/channel/g/a;->w:J

    .line 79
    iput p1, p0, Lanet/channel/g/a;->D:I

    const/4 p1, -0x1

    .line 81
    iput p1, p0, Lanet/channel/g/a;->x:I

    const/4 p1, 0x0

    .line 82
    iput-object p1, p0, Lanet/channel/g/a;->y:Lanet/channel/c;

    .line 83
    iput-object p1, p0, Lanet/channel/g/a;->z:Lanet/channel/e/b;

    .line 84
    iput-object p1, p0, Lanet/channel/g/a;->A:Lanet/channel/e;

    .line 85
    iput-object p1, p0, Lanet/channel/g/a;->B:Ljava/lang/String;

    .line 86
    iput-object p1, p0, Lanet/channel/g/a;->C:Lanet/channel/f/a;

    .line 88
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lanet/channel/g/a;->E:Ljava/util/concurrent/ConcurrentHashMap;

    .line 99
    invoke-virtual {p3}, Lanet/channel/b;->a()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lanet/channel/g/a;->B:Ljava/lang/String;

    .line 100
    invoke-virtual {p3}, Lanet/channel/b;->c()Lanet/channel/f/a;

    move-result-object p1

    iput-object p1, p0, Lanet/channel/g/a;->C:Lanet/channel/f/a;

    .line 101
    invoke-direct {p0}, Lanet/channel/g/a;->p()V

    if-ltz p5, :cond_0

    .line 103
    iput p5, p0, Lanet/channel/g/a;->x:I

    goto :goto_0

    .line 105
    :cond_0
    iget-object p1, p0, Lanet/channel/g/a;->i:Lanet/channel/entity/ConnType;

    iget-object p2, p0, Lanet/channel/g/a;->C:Lanet/channel/f/a;

    invoke-interface {p2}, Lanet/channel/f/a;->a()Z

    move-result p2

    invoke-virtual {p1, p2}, Lanet/channel/entity/ConnType;->a(Z)I

    move-result p1

    iput p1, p0, Lanet/channel/g/a;->x:I

    :goto_0
    if-eqz p4, :cond_1

    .line 109
    iget-object p1, p4, Lanet/channel/h;->f:Lanet/channel/c;

    iput-object p1, p0, Lanet/channel/g/a;->y:Lanet/channel/c;

    .line 110
    iget-object p1, p4, Lanet/channel/h;->d:Lanet/channel/e;

    iput-object p1, p0, Lanet/channel/g/a;->A:Lanet/channel/e;

    .line 111
    iget-boolean p1, p4, Lanet/channel/h;->b:Z

    if-eqz p1, :cond_1

    .line 112
    iget-object p1, p0, Lanet/channel/g/a;->n:Lanet/channel/statist/SessionStatistic;

    const-wide/16 p2, 0x1

    iput-wide p2, p1, Lanet/channel/statist/SessionStatistic;->isKL:J

    const/4 p1, 0x1

    .line 113
    iput-boolean p1, p0, Lanet/channel/g/a;->q:Z

    .line 114
    iget-object p1, p4, Lanet/channel/h;->e:Lanet/channel/e/b;

    iput-object p1, p0, Lanet/channel/g/a;->z:Lanet/channel/e/b;

    .line 115
    iget-object p1, p0, Lanet/channel/g/a;->z:Lanet/channel/e/b;

    if-nez p1, :cond_1

    .line 116
    invoke-static {}, Lanet/channel/e/a;->a()Lanet/channel/e/c;

    move-result-object p1

    invoke-interface {p1, p0}, Lanet/channel/e/c;->a(Lanet/channel/Session;)Lanet/channel/e/b;

    move-result-object p1

    iput-object p1, p0, Lanet/channel/g/a;->z:Lanet/channel/e/b;

    :cond_1
    return-void
.end method

.method private a(IIZLjava/lang/String;)V
    .locals 1

    .line 248
    iget-object v0, p0, Lanet/channel/g/a;->y:Lanet/channel/c;

    if-eqz v0, :cond_0

    .line 249
    iget-object v0, p0, Lanet/channel/g/a;->y:Lanet/channel/c;

    invoke-interface {v0, p1, p2, p3, p4}, Lanet/channel/c;->a(IIZLjava/lang/String;)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lanet/channel/g/a;Lanet/channel/Session$Status;Lanet/channel/entity/e;)V
    .locals 0

    .line 66
    invoke-virtual {p0, p1, p2}, Lanet/channel/g/a;->a(Lanet/channel/Session$Status;Lanet/channel/entity/e;)V

    return-void
.end method

.method static synthetic a(Lanet/channel/g/a;Lanet/channel/entity/EventType;Lanet/channel/entity/e;)V
    .locals 0

    .line 66
    invoke-virtual {p0, p1, p2}, Lanet/channel/g/a;->a(Lanet/channel/entity/EventType;Lanet/channel/entity/e;)V

    return-void
.end method

.method static synthetic b(Lanet/channel/g/a;Lanet/channel/Session$Status;Lanet/channel/entity/e;)V
    .locals 0

    .line 66
    invoke-virtual {p0, p1, p2}, Lanet/channel/g/a;->a(Lanet/channel/Session$Status;Lanet/channel/entity/e;)V

    return-void
.end method

.method private p()V
    .locals 5

    const/4 v0, 0x0

    .line 446
    :try_start_0
    sput-boolean v0, Lorg/android/spdy/SpdyAgent;->a:Z

    .line 447
    iget-object v1, p0, Lanet/channel/g/a;->a:Landroid/content/Context;

    sget-object v2, Lorg/android/spdy/SpdyVersion;->SPDY3:Lorg/android/spdy/SpdyVersion;

    sget-object v3, Lorg/android/spdy/SpdySessionKind;->NONE_SESSION:Lorg/android/spdy/SpdySessionKind;

    invoke-static {v1, v2, v3}, Lorg/android/spdy/SpdyAgent;->a(Landroid/content/Context;Lorg/android/spdy/SpdyVersion;Lorg/android/spdy/SpdySessionKind;)Lorg/android/spdy/SpdyAgent;

    move-result-object v1

    iput-object v1, p0, Lanet/channel/g/a;->s:Lorg/android/spdy/SpdyAgent;

    .line 448
    iget-object v1, p0, Lanet/channel/g/a;->C:Lanet/channel/f/a;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lanet/channel/g/a;->C:Lanet/channel/f/a;

    invoke-interface {v1}, Lanet/channel/f/a;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 449
    iget-object v1, p0, Lanet/channel/g/a;->s:Lorg/android/spdy/SpdyAgent;

    new-instance v2, Lanet/channel/g/k;

    invoke-direct {v2, p0}, Lanet/channel/g/k;-><init>(Lanet/channel/g/a;)V

    invoke-virtual {v1, v2}, Lorg/android/spdy/SpdyAgent;->a(Lorg/android/spdy/a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "awcn.TnetSpdySession"

    const-string v3, "Init failed."

    const/4 v4, 0x0

    .line 466
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v2, v3, v4, v1, v0}, Lanet/channel/h/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public a(Lanet/channel/request/d;Lanet/channel/f;)Lanet/channel/request/b;
    .locals 22

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    .line 125
    sget-object v4, Lanet/channel/request/e;->a:Lanet/channel/request/e;

    if-eqz v2, :cond_0

    .line 127
    iget-object v5, v2, Lanet/channel/request/d;->a:Lanet/channel/statist/RequestStatistic;

    goto :goto_0

    :cond_0
    new-instance v5, Lanet/channel/statist/RequestStatistic;

    iget-object v6, v1, Lanet/channel/g/a;->d:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Lanet/channel/statist/RequestStatistic;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    :goto_0
    iget-object v6, v1, Lanet/channel/g/a;->i:Lanet/channel/entity/ConnType;

    invoke-virtual {v5, v6}, Lanet/channel/statist/RequestStatistic;->setConnType(Lanet/channel/entity/ConnType;)V

    .line 129
    iget-object v6, v1, Lanet/channel/g/a;->e:Ljava/lang/String;

    iget v7, v1, Lanet/channel/g/a;->f:I

    invoke-virtual {v5, v6, v7}, Lanet/channel/statist/RequestStatistic;->setIPAndPort(Ljava/lang/String;I)V

    .line 130
    iget-wide v6, v5, Lanet/channel/statist/RequestStatistic;->start:J

    const-wide/16 v8, 0x0

    cmp-long v10, v6, v8

    if-nez v10, :cond_1

    .line 131
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, v5, Lanet/channel/statist/RequestStatistic;->start:J

    :cond_1
    if-eqz v2, :cond_d

    if-nez v3, :cond_2

    goto/16 :goto_7

    :cond_2
    const/4 v6, 0x0

    .line 142
    :try_start_0
    iget-object v7, v1, Lanet/channel/g/a;->t:Lorg/android/spdy/SpdySession;

    if-eqz v7, :cond_a

    iget-object v7, v1, Lanet/channel/g/a;->k:Lanet/channel/Session$Status;

    sget-object v8, Lanet/channel/Session$Status;->CONNECTED:Lanet/channel/Session$Status;

    if-eq v7, v8, :cond_3

    iget-object v7, v1, Lanet/channel/g/a;->k:Lanet/channel/Session$Status;

    sget-object v8, Lanet/channel/Session$Status;->AUTH_SUCC:Lanet/channel/Session$Status;

    if-ne v7, v8, :cond_a

    .line 143
    :cond_3
    iget-object v7, v1, Lanet/channel/g/a;->i:Lanet/channel/entity/ConnType;

    invoke-virtual {v7}, Lanet/channel/entity/ConnType;->c()Z

    move-result v7

    invoke-virtual {v2, v7}, Lanet/channel/request/d;->a(Z)V

    .line 144
    invoke-virtual/range {p1 .. p1}, Lanet/channel/request/d;->d()Ljava/net/URL;

    move-result-object v9

    const/4 v7, 0x2

    .line 145
    invoke-static {v7}, Lanet/channel/h/a;->a(I)Z

    move-result v8

    const/4 v15, 0x1

    if-eqz v8, :cond_4

    const-string v8, "awcn.TnetSpdySession"

    const-string v10, ""

    .line 146
    invoke-virtual/range {p1 .. p1}, Lanet/channel/request/d;->o()Ljava/lang/String;

    move-result-object v11

    new-array v12, v7, [Ljava/lang/Object;

    const-string v13, "request URL"

    aput-object v13, v12, v6

    invoke-virtual {v9}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v12, v15

    invoke-static {v8, v10, v11, v12}, Lanet/channel/h/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v8, "awcn.TnetSpdySession"

    const-string v10, ""

    .line 147
    invoke-virtual/range {p1 .. p1}, Lanet/channel/request/d;->o()Ljava/lang/String;

    move-result-object v11

    new-array v12, v7, [Ljava/lang/Object;

    const-string v13, "request Method"

    aput-object v13, v12, v6

    invoke-virtual/range {p1 .. p1}, Lanet/channel/request/d;->g()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v12, v15

    invoke-static {v8, v10, v11, v12}, Lanet/channel/h/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v8, "awcn.TnetSpdySession"

    const-string v10, ""

    .line 148
    invoke-virtual/range {p1 .. p1}, Lanet/channel/request/d;->o()Ljava/lang/String;

    move-result-object v11

    new-array v12, v7, [Ljava/lang/Object;

    const-string v13, "request headers"

    aput-object v13, v12, v6

    invoke-virtual/range {p1 .. p1}, Lanet/channel/request/d;->h()Ljava/util/Map;

    move-result-object v13

    aput-object v13, v12, v15

    invoke-static {v8, v10, v11, v12}, Lanet/channel/h/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 152
    :cond_4
    iget-object v8, v1, Lanet/channel/g/a;->g:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_6

    iget v8, v1, Lanet/channel/g/a;->h:I

    if-gtz v8, :cond_5

    goto :goto_1

    .line 157
    :cond_5
    new-instance v19, Lorg/android/spdy/h;

    invoke-virtual {v9}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9}, Ljava/net/URL;->getPort()I

    move-result v11

    iget-object v12, v1, Lanet/channel/g/a;->g:Ljava/lang/String;

    iget v13, v1, Lanet/channel/g/a;->h:I

    invoke-virtual/range {p1 .. p1}, Lanet/channel/request/d;->g()Ljava/lang/String;

    move-result-object v14

    sget-object v16, Lorg/android/spdy/RequestPriority;->DEFAULT_PRIORITY:Lorg/android/spdy/RequestPriority;

    invoke-virtual/range {p1 .. p1}, Lanet/channel/request/d;->p()I

    move-result v17

    invoke-virtual/range {p1 .. p1}, Lanet/channel/request/d;->q()I

    move-result v18

    const/16 v20, 0x0

    move-object/from16 v8, v19

    const/4 v6, 0x1

    move-object/from16 v15, v16

    move/from16 v16, v17

    move/from16 v17, v18

    move/from16 v18, v20

    invoke-direct/range {v8 .. v18}, Lorg/android/spdy/h;-><init>(Ljava/net/URL;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Lorg/android/spdy/RequestPriority;III)V

    move-object/from16 v14, v19

    goto :goto_2

    :cond_6
    :goto_1
    const/4 v6, 0x1

    .line 153
    new-instance v14, Lorg/android/spdy/h;

    invoke-virtual/range {p1 .. p1}, Lanet/channel/request/d;->g()Ljava/lang/String;

    move-result-object v10

    sget-object v11, Lorg/android/spdy/RequestPriority;->DEFAULT_PRIORITY:Lorg/android/spdy/RequestPriority;

    invoke-virtual/range {p1 .. p1}, Lanet/channel/request/d;->p()I

    move-result v12

    invoke-virtual/range {p1 .. p1}, Lanet/channel/request/d;->q()I

    move-result v13

    move-object v8, v14

    invoke-direct/range {v8 .. v13}, Lorg/android/spdy/h;-><init>(Ljava/net/URL;Ljava/lang/String;Lorg/android/spdy/RequestPriority;II)V

    .line 164
    :goto_2
    invoke-virtual/range {p1 .. p1}, Lanet/channel/request/d;->h()Ljava/util/Map;

    move-result-object v8

    const-string v9, "Host"

    .line 165
    invoke-interface {v8, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_7

    .line 166
    invoke-virtual {v14, v8}, Lorg/android/spdy/h;->a(Ljava/util/Map;)V

    const-string v8, ":host"

    .line 167
    invoke-virtual/range {p1 .. p1}, Lanet/channel/request/d;->f()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v14, v8, v9}, Lorg/android/spdy/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 169
    :cond_7
    new-instance v8, Ljava/util/HashMap;

    invoke-virtual/range {p1 .. p1}, Lanet/channel/request/d;->h()Ljava/util/Map;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    const-string v9, ":host"

    const-string v10, "Host"

    .line 170
    invoke-interface {v8, v10}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v8, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    invoke-virtual {v14, v8}, Lorg/android/spdy/h;->a(Ljava/util/Map;)V

    .line 174
    :goto_3
    invoke-virtual/range {p1 .. p1}, Lanet/channel/request/d;->m()[B

    move-result-object v8

    .line 175
    new-instance v9, Lorg/android/spdy/g;

    invoke-direct {v9, v8}, Lorg/android/spdy/g;-><init>([B)V

    .line 177
    iget-object v8, v1, Lanet/channel/g/a;->t:Lorg/android/spdy/SpdySession;

    new-instance v10, Lanet/channel/g/a$a;

    invoke-direct {v10, v1, v2, v3}, Lanet/channel/g/a$a;-><init>(Lanet/channel/g/a;Lanet/channel/request/d;Lanet/channel/f;)V

    invoke-virtual {v8, v14, v9, v1, v10}, Lorg/android/spdy/SpdySession;->a(Lorg/android/spdy/h;Lorg/android/spdy/g;Ljava/lang/Object;Lorg/android/spdy/k;)I

    move-result v8

    .line 178
    invoke-static {v6}, Lanet/channel/h/a;->a(I)Z

    move-result v9

    if-eqz v9, :cond_8

    const-string v9, "awcn.TnetSpdySession"

    const-string v10, ""

    .line 179
    invoke-virtual/range {p1 .. p1}, Lanet/channel/request/d;->o()Ljava/lang/String;

    move-result-object v11

    new-array v7, v7, [Ljava/lang/Object;

    const-string v12, "streamId"

    const/4 v13, 0x0

    aput-object v12, v7, v13

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v7, v6

    invoke-static {v9, v10, v11, v7}, Lanet/channel/h/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 181
    :cond_8
    new-instance v6, Lanet/channel/request/e;

    iget-object v7, v1, Lanet/channel/g/a;->t:Lorg/android/spdy/SpdySession;

    invoke-virtual/range {p1 .. p1}, Lanet/channel/request/d;->o()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v6, v7, v8, v2}, Lanet/channel/request/e;-><init>(Lorg/android/spdy/SpdySession;ILjava/lang/String;)V
    :try_end_0
    .catch Lorg/android/spdy/SpdyErrorException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 182
    :try_start_1
    iget-object v2, v1, Lanet/channel/g/a;->n:Lanet/channel/statist/SessionStatistic;

    iget-wide v7, v2, Lanet/channel/statist/SessionStatistic;->requestCount:J

    const-wide/16 v9, 0x1

    add-long v11, v7, v9

    iput-wide v11, v2, Lanet/channel/statist/SessionStatistic;->requestCount:J

    .line 183
    iget-object v2, v1, Lanet/channel/g/a;->n:Lanet/channel/statist/SessionStatistic;

    iget-wide v7, v2, Lanet/channel/statist/SessionStatistic;->stdRCount:J

    const/4 v4, 0x0

    add-long v11, v7, v9

    iput-wide v11, v2, Lanet/channel/statist/SessionStatistic;->stdRCount:J

    .line 184
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iput-wide v7, v1, Lanet/channel/g/a;->v:J

    .line 186
    iget-object v2, v1, Lanet/channel/g/a;->z:Lanet/channel/e/b;

    if-eqz v2, :cond_9

    .line 187
    iget-object v2, v1, Lanet/channel/g/a;->z:Lanet/channel/e/b;

    invoke-interface {v2}, Lanet/channel/e/b;->c()V
    :try_end_1
    .catch Lorg/android/spdy/SpdyErrorException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_9
    move-object v4, v6

    goto :goto_6

    :catch_0
    move-exception v0

    move-object v2, v0

    move-object v4, v6

    goto :goto_4

    :catch_1
    move-exception v0

    move-object v2, v0

    move-object v4, v6

    goto :goto_5

    :cond_a
    const/16 v6, -0x12d

    :try_start_2
    const-string v7, "Session\u4e0d\u53ef\u7528"

    .line 190
    iget-object v2, v2, Lanet/channel/request/d;->a:Lanet/channel/statist/RequestStatistic;

    invoke-interface {v3, v6, v7, v2}, Lanet/channel/f;->a(ILjava/lang/String;Lanet/channel/statist/RequestStatistic;)V
    :try_end_2
    .catch Lorg/android/spdy/SpdyErrorException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_6

    :catch_2
    move-exception v0

    move-object v2, v0

    .line 203
    :goto_4
    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v6, -0x65

    invoke-static {v6, v2}, Lanet/channel/h/e;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v6, v2, v5}, Lanet/channel/f;->a(ILjava/lang/String;Lanet/channel/statist/RequestStatistic;)V

    goto :goto_6

    :catch_3
    move-exception v0

    move-object v2, v0

    .line 193
    :goto_5
    invoke-virtual {v2}, Lorg/android/spdy/SpdyErrorException;->SpdyErrorGetCode()I

    move-result v6

    const/16 v7, -0x450

    if-eq v6, v7, :cond_b

    invoke-virtual {v2}, Lorg/android/spdy/SpdyErrorException;->SpdyErrorGetCode()I

    move-result v6

    const/16 v8, -0x44f

    if-ne v6, v8, :cond_c

    :cond_b
    const-string v6, "awcn.TnetSpdySession"

    const-string v8, "Send request on closed session!!!"

    .line 195
    iget-object v9, v1, Lanet/channel/g/a;->m:Ljava/lang/String;

    const/4 v10, 0x0

    new-array v11, v10, [Ljava/lang/Object;

    invoke-static {v6, v8, v9, v11}, Lanet/channel/h/a;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 196
    new-instance v6, Lanet/channel/entity/d;

    sget-object v8, Lanet/channel/entity/EventType;->DISCONNECTED:Lanet/channel/entity/EventType;

    const-string v9, "Session is closed!"

    invoke-direct {v6, v8, v10, v7, v9}, Lanet/channel/entity/d;-><init>(Lanet/channel/entity/EventType;ZILjava/lang/String;)V

    .line 198
    sget-object v7, Lanet/channel/Session$Status;->DISCONNECTED:Lanet/channel/Session$Status;

    invoke-virtual {v1, v7, v6}, Lanet/channel/g/a;->a(Lanet/channel/Session$Status;Lanet/channel/entity/e;)V

    .line 200
    :cond_c
    invoke-virtual {v2}, Lorg/android/spdy/SpdyErrorException;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v6, -0x12c

    invoke-static {v6, v2}, Lanet/channel/h/e;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v6, v2, v5}, Lanet/channel/f;->a(ILjava/lang/String;Lanet/channel/statist/RequestStatistic;)V

    :goto_6
    return-object v4

    :cond_d
    :goto_7
    if-eqz v3, :cond_e

    const/16 v2, -0x66

    .line 136
    invoke-static {v2}, Lanet/channel/h/e;->a(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v2, v6, v5}, Lanet/channel/f;->a(ILjava/lang/String;Lanet/channel/statist/RequestStatistic;)V

    :cond_e
    return-object v4
.end method

.method public a(I[BI)V
    .locals 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 216
    :try_start_0
    iget-object v2, p0, Lanet/channel/g/a;->y:Lanet/channel/c;

    if-nez v2, :cond_0

    return-void

    :cond_0
    const-string v2, "awcn.TnetSpdySession"

    const-string v3, "sendCustomFrame"

    .line 220
    iget-object v4, p0, Lanet/channel/g/a;->m:Ljava/lang/String;

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "dataId"

    aput-object v6, v5, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v0

    const/4 v6, 0x2

    const-string v7, "type"

    aput-object v7, v5, v6

    const/4 v6, 0x3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v2, v3, v4, v5}, Lanet/channel/h/a;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 221
    iget-object v2, p0, Lanet/channel/g/a;->k:Lanet/channel/Session$Status;

    sget-object v3, Lanet/channel/Session$Status;->AUTH_SUCC:Lanet/channel/Session$Status;

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lanet/channel/g/a;->t:Lorg/android/spdy/SpdySession;

    if-eqz v2, :cond_3

    if-eqz p2, :cond_1

    .line 222
    array-length v2, p2

    const/16 v3, 0x4000

    if-le v2, v3, :cond_1

    const/16 p2, -0x12f

    const/4 p3, 0x0

    .line 223
    invoke-direct {p0, p1, p2, v1, p3}, Lanet/channel/g/a;->a(IIZLjava/lang/String;)V

    goto/16 :goto_1

    .line 225
    :cond_1
    iget-object v2, p0, Lanet/channel/g/a;->t:Lorg/android/spdy/SpdySession;

    const/4 v5, 0x0

    if-nez p2, :cond_2

    const/4 v6, 0x0

    goto :goto_0

    :cond_2
    array-length v3, p2

    move v6, v3

    :goto_0
    move v3, p1

    move v4, p3

    move-object v7, p2

    invoke-virtual/range {v2 .. v7}, Lorg/android/spdy/SpdySession;->a(IIII[B)I

    .line 227
    iget-object p2, p0, Lanet/channel/g/a;->n:Lanet/channel/statist/SessionStatistic;

    iget-wide v2, p2, Lanet/channel/statist/SessionStatistic;->requestCount:J

    const-wide/16 v4, 0x1

    add-long v6, v2, v4

    iput-wide v6, p2, Lanet/channel/statist/SessionStatistic;->requestCount:J

    .line 228
    iget-object p2, p0, Lanet/channel/g/a;->n:Lanet/channel/statist/SessionStatistic;

    iget-wide v2, p2, Lanet/channel/statist/SessionStatistic;->cfRCount:J

    const/4 p3, 0x0

    add-long v6, v2, v4

    iput-wide v6, p2, Lanet/channel/statist/SessionStatistic;->cfRCount:J

    .line 229
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    iput-wide p2, p0, Lanet/channel/g/a;->v:J

    .line 230
    iget-object p2, p0, Lanet/channel/g/a;->z:Lanet/channel/e/b;

    if-eqz p2, :cond_4

    .line 231
    iget-object p2, p0, Lanet/channel/g/a;->z:Lanet/channel/e/b;

    invoke-interface {p2}, Lanet/channel/e/b;->c()V

    goto :goto_1

    :cond_3
    const-string p2, "awcn.TnetSpdySession"

    const-string p3, "sendCustomFrame"

    .line 235
    iget-object v2, p0, Lanet/channel/g/a;->m:Ljava/lang/String;

    new-array v3, v0, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sendCustomFrame con invalid mStatus:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lanet/channel/g/a;->k:Lanet/channel/Session$Status;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {p2, p3, v2, v3}, Lanet/channel/h/a;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 p2, -0x12d

    const-string p3, "session invalid"

    .line 236
    invoke-direct {p0, p1, p2, v0, p3}, Lanet/channel/g/a;->a(IIZLjava/lang/String;)V
    :try_end_0
    .catch Lorg/android/spdy/SpdyErrorException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p2

    const-string p3, "awcn.TnetSpdySession"

    const-string v2, "sendCustomFrame error"

    .line 242
    iget-object v3, p0, Lanet/channel/g/a;->m:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p3, v2, v3, p2, v1}, Lanet/channel/h/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    const/16 p3, -0x65

    .line 243
    invoke-virtual {p2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p3, v0, p2}, Lanet/channel/g/a;->a(IIZLjava/lang/String;)V

    goto :goto_1

    :catch_1
    move-exception p2

    const-string p3, "awcn.TnetSpdySession"

    const-string v2, "sendCustomFrame error"

    .line 239
    iget-object v3, p0, Lanet/channel/g/a;->m:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p3, v2, v3, p2, v1}, Lanet/channel/h/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    const/16 p3, -0x12c

    .line 240
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SpdyErrorException: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lorg/android/spdy/SpdyErrorException;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p3, v0, p2}, Lanet/channel/g/a;->a(IIZLjava/lang/String;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public b()V
    .locals 14

    .line 258
    iget-object v0, p0, Lanet/channel/g/a;->k:Lanet/channel/Session$Status;

    sget-object v1, Lanet/channel/Session$Status;->CONNECTING:Lanet/channel/Session$Status;

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lanet/channel/g/a;->k:Lanet/channel/Session$Status;

    sget-object v1, Lanet/channel/Session$Status;->CONNECTED:Lanet/channel/Session$Status;

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lanet/channel/g/a;->k:Lanet/channel/Session$Status;

    sget-object v1, Lanet/channel/Session$Status;->AUTH_SUCC:Lanet/channel/Session$Status;

    if-ne v0, v1, :cond_0

    goto/16 :goto_1

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 262
    :try_start_0
    iget-object v2, p0, Lanet/channel/g/a;->s:Lorg/android/spdy/SpdyAgent;

    if-eqz v2, :cond_2

    .line 263
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    const-string v2, "awcn.TnetSpdySession"

    const-string v3, "[connect]"

    .line 264
    iget-object v4, p0, Lanet/channel/g/a;->m:Ljava/lang/String;

    const/16 v5, 0xc

    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "host"

    aput-object v6, v5, v1

    iget-object v6, p0, Lanet/channel/g/a;->c:Ljava/lang/String;

    const/4 v13, 0x1

    aput-object v6, v5, v13

    const/4 v6, 0x2

    const-string v7, "connect "

    aput-object v7, v5, v6

    const/4 v6, 0x3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lanet/channel/g/a;->e:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, p0, Lanet/channel/g/a;->f:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x4

    const-string v7, "sessionId"

    aput-object v7, v5, v6

    const/4 v6, 0x5

    aput-object v10, v5, v6

    const/4 v6, 0x6

    const-string v7, "SpdyProtocol,"

    aput-object v7, v5, v6

    const/4 v6, 0x7

    iget-object v7, p0, Lanet/channel/g/a;->i:Lanet/channel/entity/ConnType;

    aput-object v7, v5, v6

    const/16 v6, 0x8

    const-string v7, "proxyIp,"

    aput-object v7, v5, v6

    const/16 v6, 0x9

    iget-object v7, p0, Lanet/channel/g/a;->g:Ljava/lang/String;

    aput-object v7, v5, v6

    const/16 v6, 0xa

    const-string v7, "proxyPort,"

    aput-object v7, v5, v6

    const/16 v6, 0xb

    iget v7, p0, Lanet/channel/g/a;->h:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v2, v3, v4, v5}, Lanet/channel/h/a;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 267
    new-instance v2, Lorg/android/spdy/e;

    iget-object v5, p0, Lanet/channel/g/a;->e:Ljava/lang/String;

    iget v6, p0, Lanet/channel/g/a;->f:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lanet/channel/g/a;->c:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lanet/channel/g/a;->B:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lanet/channel/g/a;->g:Ljava/lang/String;

    iget v9, p0, Lanet/channel/g/a;->h:I

    iget-object v3, p0, Lanet/channel/g/a;->i:Lanet/channel/entity/ConnType;

    invoke-virtual {v3}, Lanet/channel/entity/ConnType;->a()I

    move-result v12

    move-object v4, v2

    move-object v11, p0

    invoke-direct/range {v4 .. v12}, Lorg/android/spdy/e;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/Object;Lorg/android/spdy/d;I)V

    .line 268
    iget v3, p0, Lanet/channel/g/a;->o:I

    int-to-float v3, v3

    invoke-static {}, Lanet/channel/h/h;->b()F

    move-result v4

    mul-float v3, v3, v4

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Lorg/android/spdy/e;->a(I)V

    .line 269
    iget v3, p0, Lanet/channel/g/a;->x:I

    invoke-virtual {v2, v3}, Lorg/android/spdy/e;->b(I)V

    .line 270
    iget-object v3, p0, Lanet/channel/g/a;->s:Lorg/android/spdy/SpdyAgent;

    invoke-virtual {v3, v2}, Lorg/android/spdy/SpdyAgent;->a(Lorg/android/spdy/e;)Lorg/android/spdy/SpdySession;

    move-result-object v2

    iput-object v2, p0, Lanet/channel/g/a;->t:Lorg/android/spdy/SpdySession;

    .line 272
    iget-object v2, p0, Lanet/channel/g/a;->t:Lorg/android/spdy/SpdySession;

    invoke-virtual {v2}, Lorg/android/spdy/SpdySession;->a()I

    move-result v2

    if-le v2, v13, :cond_1

    const-string v2, "awcn.TnetSpdySession"

    const-string v3, "get session ref count > 1!!!"

    .line 273
    iget-object v4, p0, Lanet/channel/g/a;->m:Ljava/lang/String;

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v4, v5}, Lanet/channel/h/a;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 274
    sget-object v2, Lanet/channel/Session$Status;->CONNECTED:Lanet/channel/Session$Status;

    new-instance v3, Lanet/channel/entity/c;

    sget-object v4, Lanet/channel/entity/EventType;->CONNECTED:Lanet/channel/entity/EventType;

    invoke-direct {v3, v4}, Lanet/channel/entity/c;-><init>(Lanet/channel/entity/EventType;)V

    invoke-virtual {p0, v2, v3}, Lanet/channel/g/a;->a(Lanet/channel/Session$Status;Lanet/channel/entity/e;)V

    .line 275
    invoke-virtual {p0}, Lanet/channel/g/a;->o()V

    return-void

    .line 279
    :cond_1
    sget-object v2, Lanet/channel/Session$Status;->CONNECTING:Lanet/channel/Session$Status;

    invoke-virtual {p0, v2, v0}, Lanet/channel/g/a;->a(Lanet/channel/Session$Status;Lanet/channel/entity/e;)V

    .line 280
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lanet/channel/g/a;->v:J

    .line 284
    iget-object v2, p0, Lanet/channel/g/a;->n:Lanet/channel/statist/SessionStatistic;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lanet/channel/g/a;->g:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    xor-int/2addr v4, v13

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lanet/channel/statist/SessionStatistic;->isProxy:Ljava/lang/String;

    .line 285
    iget-object v2, p0, Lanet/channel/g/a;->n:Lanet/channel/statist/SessionStatistic;

    const-string v3, "false"

    iput-object v3, v2, Lanet/channel/statist/SessionStatistic;->isTunnel:Ljava/lang/String;

    .line 286
    iget-object v2, p0, Lanet/channel/g/a;->n:Lanet/channel/statist/SessionStatistic;

    invoke-static {}, Lanet/channel/d;->h()Z

    move-result v3

    iput-boolean v3, v2, Lanet/channel/statist/SessionStatistic;->isBackground:Z

    const-wide/16 v2, 0x0

    .line 288
    iput-wide v2, p0, Lanet/channel/g/a;->w:J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 291
    sget-object v3, Lanet/channel/Session$Status;->CONNETFAIL:Lanet/channel/Session$Status;

    invoke-virtual {p0, v3, v0}, Lanet/channel/g/a;->a(Lanet/channel/Session$Status;Lanet/channel/entity/e;)V

    const-string v0, "awcn.TnetSpdySession"

    const-string v3, "connect exception "

    .line 292
    iget-object v4, p0, Lanet/channel/g/a;->m:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v3, v4, v2, v1}, Lanet/channel/h/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    :goto_1
    return-void
.end method

.method public b(Z)V
    .locals 9

    const/4 v0, 0x1

    .line 351
    invoke-static {v0}, Lanet/channel/h/a;->a(I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const-string v1, "awcn.TnetSpdySession"

    const-string v3, "ping"

    .line 352
    iget-object v4, p0, Lanet/channel/g/a;->m:Ljava/lang/String;

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "host"

    aput-object v6, v5, v2

    iget-object v6, p0, Lanet/channel/g/a;->c:Ljava/lang/String;

    aput-object v6, v5, v0

    const/4 v6, 0x2

    const-string v7, "thread"

    aput-object v7, v5, v6

    const/4 v6, 0x3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v1, v3, v4, v5}, Lanet/channel/h/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    if-eqz p1, :cond_7

    .line 357
    :try_start_0
    iget-object v1, p0, Lanet/channel/g/a;->t:Lorg/android/spdy/SpdySession;

    if-eqz v1, :cond_3

    .line 358
    iget-object v1, p0, Lanet/channel/g/a;->k:Lanet/channel/Session$Status;

    sget-object v3, Lanet/channel/Session$Status;->CONNECTED:Lanet/channel/Session$Status;

    if-eq v1, v3, :cond_1

    iget-object v1, p0, Lanet/channel/g/a;->k:Lanet/channel/Session$Status;

    sget-object v3, Lanet/channel/Session$Status;->AUTH_SUCC:Lanet/channel/Session$Status;

    if-ne v1, v3, :cond_7

    .line 359
    :cond_1
    sget-object v1, Lanet/channel/entity/EventType;->PING_SEND:Lanet/channel/entity/EventType;

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3}, Lanet/channel/g/a;->a(Lanet/channel/entity/EventType;Lanet/channel/entity/e;)V

    .line 360
    iput-boolean v0, p0, Lanet/channel/g/a;->u:Z

    .line 361
    iget-object v1, p0, Lanet/channel/g/a;->n:Lanet/channel/statist/SessionStatistic;

    iget-wide v3, v1, Lanet/channel/statist/SessionStatistic;->ppkgCount:J

    const-wide/16 v5, 0x1

    add-long v7, v3, v5

    iput-wide v7, v1, Lanet/channel/statist/SessionStatistic;->ppkgCount:J

    .line 362
    iget-object v1, p0, Lanet/channel/g/a;->t:Lorg/android/spdy/SpdySession;

    invoke-virtual {v1}, Lorg/android/spdy/SpdySession;->c()I

    .line 363
    invoke-static {v0}, Lanet/channel/h/a;->a(I)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "awcn.TnetSpdySession"

    .line 364
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lanet/channel/g/a;->c:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " submit ping ms:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lanet/channel/g/a;->v:J

    const/4 v7, 0x0

    sub-long v7, v3, v5

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " force:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lanet/channel/g/a;->m:Ljava/lang/String;

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, p1, v1, v3}, Lanet/channel/h/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 367
    :cond_2
    invoke-virtual {p0}, Lanet/channel/g/a;->m()V

    .line 368
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lanet/channel/g/a;->v:J

    .line 370
    iget-object p1, p0, Lanet/channel/g/a;->z:Lanet/channel/e/b;

    if-eqz p1, :cond_7

    .line 371
    iget-object p1, p0, Lanet/channel/g/a;->z:Lanet/channel/e/b;

    invoke-interface {p1}, Lanet/channel/e/b;->c()V

    goto :goto_0

    .line 376
    :cond_3
    iget-object p1, p0, Lanet/channel/g/a;->n:Lanet/channel/statist/SessionStatistic;

    if-eqz p1, :cond_4

    .line 377
    iget-object p1, p0, Lanet/channel/g/a;->n:Lanet/channel/statist/SessionStatistic;

    const-string v0, "session null"

    iput-object v0, p1, Lanet/channel/statist/SessionStatistic;->closeReason:Ljava/lang/String;

    :cond_4
    const-string p1, "awcn.TnetSpdySession"

    .line 379
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lanet/channel/g/a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " session null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lanet/channel/g/a;->m:Ljava/lang/String;

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {p1, v0, v1, v3}, Lanet/channel/h/a;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 380
    invoke-virtual {p0}, Lanet/channel/g/a;->c()V
    :try_end_0
    .catch Lorg/android/spdy/SpdyErrorException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "awcn.TnetSpdySession"

    const-string v1, "ping"

    .line 393
    iget-object v3, p0, Lanet/channel/g/a;->m:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3, p1, v2}, Lanet/channel/h/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 384
    invoke-virtual {p1}, Lorg/android/spdy/SpdyErrorException;->SpdyErrorGetCode()I

    move-result v0

    const/16 v1, -0x450

    if-eq v0, v1, :cond_5

    invoke-virtual {p1}, Lorg/android/spdy/SpdyErrorException;->SpdyErrorGetCode()I

    move-result v0

    const/16 v3, -0x44f

    if-ne v0, v3, :cond_6

    :cond_5
    const-string v0, "awcn.TnetSpdySession"

    const-string v3, "Send request on closed session!!!"

    .line 386
    iget-object v4, p0, Lanet/channel/g/a;->m:Ljava/lang/String;

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v0, v3, v4, v5}, Lanet/channel/h/a;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 387
    new-instance v0, Lanet/channel/entity/d;

    sget-object v3, Lanet/channel/entity/EventType;->DISCONNECTED:Lanet/channel/entity/EventType;

    const-string v4, "Session is closed!"

    invoke-direct {v0, v3, v2, v1, v4}, Lanet/channel/entity/d;-><init>(Lanet/channel/entity/EventType;ZILjava/lang/String;)V

    .line 389
    sget-object v1, Lanet/channel/Session$Status;->DISCONNECTED:Lanet/channel/Session$Status;

    invoke-virtual {p0, v1, v0}, Lanet/channel/g/a;->a(Lanet/channel/Session$Status;Lanet/channel/entity/e;)V

    :cond_6
    const-string v0, "awcn.TnetSpdySession"

    const-string v1, "ping"

    .line 391
    iget-object v3, p0, Lanet/channel/g/a;->m:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3, p1, v2}, Lanet/channel/h/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_7
    :goto_0
    return-void
.end method

.method public c()V
    .locals 6

    const-string v0, "awcn.TnetSpdySession"

    const-string v1, "force close!"

    .line 301
    iget-object v2, p0, Lanet/channel/g/a;->m:Ljava/lang/String;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "session"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v4, 0x1

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lanet/channel/h/a;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 302
    sget-object v0, Lanet/channel/Session$Status;->DISCONNECTING:Lanet/channel/Session$Status;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lanet/channel/g/a;->a(Lanet/channel/Session$Status;Lanet/channel/entity/e;)V

    .line 304
    iget-object v0, p0, Lanet/channel/g/a;->z:Lanet/channel/e/b;

    if-eqz v0, :cond_0

    .line 305
    iget-object v0, p0, Lanet/channel/g/a;->z:Lanet/channel/e/b;

    invoke-interface {v0}, Lanet/channel/e/b;->b()V

    .line 306
    iput-object v1, p0, Lanet/channel/g/a;->z:Lanet/channel/e/b;

    .line 310
    :cond_0
    :try_start_0
    iget-object v0, p0, Lanet/channel/g/a;->t:Lorg/android/spdy/SpdySession;

    if-eqz v0, :cond_1

    .line 311
    iget-object v0, p0, Lanet/channel/g/a;->t:Lorg/android/spdy/SpdySession;

    invoke-virtual {v0}, Lorg/android/spdy/SpdySession;->e()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void
.end method

.method protected d()Ljava/lang/Runnable;
    .locals 1

    .line 325
    new-instance v0, Lanet/channel/g/i;

    invoke-direct {v0, p0}, Lanet/channel/g/i;-><init>(Lanet/channel/g/a;)V

    return-object v0
.end method

.method public e()Z
    .locals 2

    .line 438
    iget-object v0, p0, Lanet/channel/g/a;->k:Lanet/channel/Session$Status;

    sget-object v1, Lanet/channel/Session$Status;->AUTH_SUCC:Lanet/channel/Session$Status;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected l()V
    .locals 1

    const/4 v0, 0x0

    .line 320
    iput-boolean v0, p0, Lanet/channel/g/a;->u:Z

    return-void
.end method

.method protected o()V
    .locals 2

    .line 402
    iget-object v0, p0, Lanet/channel/g/a;->A:Lanet/channel/e;

    if-eqz v0, :cond_0

    .line 403
    iget-object v0, p0, Lanet/channel/g/a;->A:Lanet/channel/e;

    new-instance v1, Lanet/channel/g/j;

    invoke-direct {v1, p0}, Lanet/channel/g/j;-><init>(Lanet/channel/g/a;)V

    invoke-interface {v0, p0, v1}, Lanet/channel/e;->a(Lanet/channel/Session;Lanet/channel/e$a;)V

    goto :goto_0

    .line 429
    :cond_0
    sget-object v0, Lanet/channel/Session$Status;->AUTH_SUCC:Lanet/channel/Session$Status;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lanet/channel/g/a;->a(Lanet/channel/Session$Status;Lanet/channel/entity/e;)V

    .line 430
    iget-object v0, p0, Lanet/channel/g/a;->n:Lanet/channel/statist/SessionStatistic;

    const/4 v1, 0x1

    iput v1, v0, Lanet/channel/statist/SessionStatistic;->ret:I

    .line 431
    iget-object v0, p0, Lanet/channel/g/a;->z:Lanet/channel/e/b;

    if-eqz v0, :cond_1

    .line 432
    iget-object v0, p0, Lanet/channel/g/a;->z:Lanet/channel/e/b;

    invoke-interface {v0}, Lanet/channel/e/b;->a()V

    :cond_1
    :goto_0
    return-void
.end method
