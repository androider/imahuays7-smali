.class Lanet/channel/i$b;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Lanet/channel/i$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lanet/channel/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field a:Z

.field final synthetic b:Lanet/channel/i;

.field private c:Landroid/content/Context;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lanet/channel/entity/b;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lanet/channel/entity/b;


# direct methods
.method constructor <init>(Lanet/channel/i;Landroid/content/Context;Ljava/util/List;Lanet/channel/entity/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lanet/channel/entity/b;",
            ">;",
            "Lanet/channel/entity/b;",
            ")V"
        }
    .end annotation

    .line 169
    iput-object p1, p0, Lanet/channel/i$b;->b:Lanet/channel/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 175
    iput-boolean p1, p0, Lanet/channel/i$b;->a:Z

    .line 170
    iput-object p2, p0, Lanet/channel/i$b;->c:Landroid/content/Context;

    .line 171
    iput-object p3, p0, Lanet/channel/i$b;->d:Ljava/util/List;

    .line 172
    iput-object p4, p0, Lanet/channel/i$b;->e:Lanet/channel/entity/b;

    return-void
.end method

.method static synthetic a(Lanet/channel/i$b;)Landroid/content/Context;
    .locals 0

    .line 163
    iget-object p0, p0, Lanet/channel/i$b;->c:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public a(Lanet/channel/Session;J)V
    .locals 6

    const-string p2, "awcn.SessionRequest"

    const-string p3, "Connect Success"

    .line 242
    iget-object v0, p0, Lanet/channel/i$b;->e:Lanet/channel/entity/b;

    invoke-virtual {v0}, Lanet/channel/entity/b;->h()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "session"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const-string v4, "host"

    const/4 v5, 0x2

    aput-object v4, v1, v5

    iget-object v4, p0, Lanet/channel/i$b;->b:Lanet/channel/i;

    invoke-virtual {v4}, Lanet/channel/i;->a()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    aput-object v4, v1, v5

    invoke-static {p2, p3, v0, v1}, Lanet/channel/h/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 244
    :try_start_0
    iget-object p2, p0, Lanet/channel/i$b;->b:Lanet/channel/i;

    iget-boolean p2, p2, Lanet/channel/i;->f:Z

    if-eqz p2, :cond_0

    .line 245
    iget-object p2, p0, Lanet/channel/i$b;->b:Lanet/channel/i;

    iput-boolean v3, p2, Lanet/channel/i;->f:Z

    .line 246
    invoke-virtual {p1, v3}, Lanet/channel/Session;->a(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 272
    iget-object p1, p0, Lanet/channel/i$b;->b:Lanet/channel/i;

    invoke-virtual {p1}, Lanet/channel/i;->c()V

    return-void

    .line 250
    :cond_0
    :try_start_1
    iget-object p2, p0, Lanet/channel/i$b;->b:Lanet/channel/i;

    iget-object p2, p2, Lanet/channel/i;->c:Lanet/channel/o;

    iget-object p3, p0, Lanet/channel/i$b;->b:Lanet/channel/i;

    invoke-virtual {p2, p3, p1}, Lanet/channel/o;->a(Lanet/channel/i;Lanet/channel/Session;)V

    .line 253
    new-instance p1, Lanet/channel/statist/a;

    invoke-direct {p1}, Lanet/channel/statist/a;-><init>()V

    const-string p2, "networkPrefer"

    .line 254
    iput-object p2, p1, Lanet/channel/statist/a;->e:Ljava/lang/String;

    const-string p2, "policy"

    .line 255
    iput-object p2, p1, Lanet/channel/statist/a;->f:Ljava/lang/String;

    .line 256
    iget-object p2, p0, Lanet/channel/i$b;->b:Lanet/channel/i;

    iget-object p2, p2, Lanet/channel/i;->a:Ljava/lang/String;

    iput-object p2, p1, Lanet/channel/statist/a;->b:Ljava/lang/String;

    .line 257
    iput-boolean v2, p1, Lanet/channel/statist/a;->a:Z

    .line 258
    invoke-static {}, Lanet/channel/b/a;->a()Lanet/channel/b/b;

    move-result-object p2

    invoke-interface {p2, p1}, Lanet/channel/b/b;->a(Lanet/channel/statist/a;)V

    .line 261
    iget-object p1, p0, Lanet/channel/i$b;->b:Lanet/channel/i;

    iget-object p1, p1, Lanet/channel/i;->g:Lanet/channel/statist/SessionConnStat;

    iput v2, p1, Lanet/channel/statist/SessionConnStat;->ret:I

    .line 262
    iget-object p1, p0, Lanet/channel/i$b;->e:Lanet/channel/entity/b;

    iget-object p1, p1, Lanet/channel/entity/b;->a:Lanet/channel/strategy/c;

    if-eqz p1, :cond_1

    .line 263
    iget-object p1, p0, Lanet/channel/i$b;->b:Lanet/channel/i;

    iget-object p1, p1, Lanet/channel/i;->g:Lanet/channel/statist/SessionConnStat;

    iget-object p2, p0, Lanet/channel/i$b;->e:Lanet/channel/entity/b;

    iget-object p2, p2, Lanet/channel/entity/b;->a:Lanet/channel/strategy/c;

    invoke-interface {p2}, Lanet/channel/strategy/c;->b()I

    move-result p2

    iput p2, p1, Lanet/channel/statist/SessionConnStat;->succIpType:I

    .line 265
    :cond_1
    iget-object p1, p0, Lanet/channel/i$b;->b:Lanet/channel/i;

    iget-object p1, p1, Lanet/channel/i;->g:Lanet/channel/statist/SessionConnStat;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    iget-object v0, p0, Lanet/channel/i$b;->b:Lanet/channel/i;

    iget-object v0, v0, Lanet/channel/i;->g:Lanet/channel/statist/SessionConnStat;

    iget-wide v0, v0, Lanet/channel/statist/SessionConnStat;->startTime:J

    const/4 v2, 0x0

    sub-long v4, p2, v0

    iput-wide v4, p1, Lanet/channel/statist/SessionConnStat;->costTime:J

    .line 266
    invoke-static {}, Lanet/channel/b/a;->a()Lanet/channel/b/b;

    move-result-object p1

    iget-object p2, p0, Lanet/channel/i$b;->b:Lanet/channel/i;

    iget-object p2, p2, Lanet/channel/i;->g:Lanet/channel/statist/SessionConnStat;

    invoke-interface {p1, p2}, Lanet/channel/b/b;->a(Lanet/channel/statist/StatObject;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_2
    const-string p2, "awcn.SessionRequest"

    const-string p3, "[onSuccess]:"

    .line 270
    iget-object v0, p0, Lanet/channel/i$b;->e:Lanet/channel/entity/b;

    invoke-virtual {v0}, Lanet/channel/entity/b;->h()Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {p2, p3, v0, p1, v1}, Lanet/channel/h/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 272
    :goto_0
    iget-object p1, p0, Lanet/channel/i$b;->b:Lanet/channel/i;

    invoke-virtual {p1}, Lanet/channel/i;->c()V

    return-void

    :goto_1
    iget-object p2, p0, Lanet/channel/i$b;->b:Lanet/channel/i;

    invoke-virtual {p2}, Lanet/channel/i;->c()V

    throw p1
.end method

.method public a(Lanet/channel/Session;JLanet/channel/entity/EventType;)V
    .locals 7

    .line 278
    invoke-static {}, Lanet/channel/d;->h()Z

    move-result p2

    const-string p3, "awcn.SessionRequest"

    const-string p4, "Connect Disconnect"

    .line 279
    iget-object v0, p0, Lanet/channel/i$b;->e:Lanet/channel/entity/b;

    invoke-virtual {v0}, Lanet/channel/entity/b;->h()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "session"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const-string v4, "host"

    const/4 v5, 0x2

    aput-object v4, v1, v5

    iget-object v4, p0, Lanet/channel/i$b;->b:Lanet/channel/i;

    invoke-virtual {v4}, Lanet/channel/i;->a()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x3

    aput-object v4, v1, v6

    const-string v4, "appIsBg"

    const/4 v6, 0x4

    aput-object v4, v1, v6

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v6, 0x5

    aput-object v4, v1, v6

    const-string v4, "isHandleFinish"

    const/4 v6, 0x6

    aput-object v4, v1, v6

    iget-boolean v4, p0, Lanet/channel/i$b;->a:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v6, 0x7

    aput-object v4, v1, v6

    invoke-static {p3, p4, v0, v1}, Lanet/channel/h/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 280
    iget-object p3, p0, Lanet/channel/i$b;->b:Lanet/channel/i;

    iget-object p3, p3, Lanet/channel/i;->c:Lanet/channel/o;

    iget-object p4, p0, Lanet/channel/i$b;->b:Lanet/channel/i;

    invoke-virtual {p3, p4, p1}, Lanet/channel/o;->b(Lanet/channel/i;Lanet/channel/Session;)V

    .line 282
    iget-boolean p3, p0, Lanet/channel/i$b;->a:Z

    if-eqz p3, :cond_0

    return-void

    .line 285
    :cond_0
    iput-boolean v2, p0, Lanet/channel/i$b;->a:Z

    .line 287
    iget-boolean p3, p1, Lanet/channel/Session;->q:Z

    if-nez p3, :cond_1

    return-void

    :cond_1
    if-eqz p2, :cond_2

    const-string p2, "awcn.SessionRequest"

    const-string p3, "[onDisConnect]app background, don\'t Recreate"

    .line 291
    iget-object p4, p0, Lanet/channel/i$b;->e:Lanet/channel/entity/b;

    invoke-virtual {p4}, Lanet/channel/entity/b;->h()Ljava/lang/String;

    move-result-object p4

    new-array v0, v5, [Ljava/lang/Object;

    const-string v1, "session"

    aput-object v1, v0, v3

    aput-object p1, v0, v2

    invoke-static {p2, p3, p4, v0}, Lanet/channel/h/a;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 294
    :cond_2
    invoke-static {}, Lanet/channel/status/NetworkStatusHelper;->g()Z

    move-result p2

    if-nez p2, :cond_3

    const-string p2, "awcn.SessionRequest"

    const-string p3, "[onDisConnect]no network, don\'t Recreate"

    .line 295
    iget-object p4, p0, Lanet/channel/i$b;->e:Lanet/channel/entity/b;

    invoke-virtual {p4}, Lanet/channel/entity/b;->h()Ljava/lang/String;

    move-result-object p4

    new-array v0, v5, [Ljava/lang/Object;

    const-string v1, "session"

    aput-object v1, v0, v3

    aput-object p1, v0, v2

    invoke-static {p2, p3, p4, v0}, Lanet/channel/h/a;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_3
    :try_start_0
    const-string p2, "awcn.SessionRequest"

    const-string p3, "session disconnected, try to recreate session"

    .line 299
    iget-object p4, p0, Lanet/channel/i$b;->e:Lanet/channel/entity/b;

    invoke-virtual {p4}, Lanet/channel/entity/b;->h()Ljava/lang/String;

    move-result-object p4

    new-array v0, v3, [Ljava/lang/Object;

    invoke-static {p2, p3, p4, v0}, Lanet/channel/h/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 300
    new-instance p2, Lanet/channel/r;

    invoke-direct {p2, p0, p1}, Lanet/channel/r;-><init>(Lanet/channel/i$b;Lanet/channel/Session;)V

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide p3

    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    mul-double p3, p3, v0

    const-wide v0, 0x408f400000000000L    # 1000.0

    mul-double p3, p3, v0

    double-to-long p3, p3

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p2, p3, p4, p1}, Lanet/channel/a/c;->a(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/Future;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public a(Lanet/channel/Session;JLanet/channel/entity/EventType;I)V
    .locals 7

    const/4 p2, 0x1

    .line 179
    invoke-static {p2}, Lanet/channel/h/a;->a(I)Z

    move-result p3

    const/4 v0, 0x2

    const/4 v1, 0x0

    if-eqz p3, :cond_0

    const-string p3, "awcn.SessionRequest"

    const-string v2, "Connect failed"

    .line 180
    iget-object v3, p0, Lanet/channel/i$b;->e:Lanet/channel/entity/b;

    invoke-virtual {v3}, Lanet/channel/entity/b;->h()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "session"

    aput-object v5, v4, v1

    aput-object p1, v4, p2

    const-string v5, "host"

    aput-object v5, v4, v0

    const/4 v5, 0x3

    iget-object v6, p0, Lanet/channel/i$b;->b:Lanet/channel/i;

    invoke-virtual {v6}, Lanet/channel/i;->a()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const-string v6, "isHandleFinish"

    aput-object v6, v4, v5

    const/4 v5, 0x5

    iget-boolean v6, p0, Lanet/channel/i$b;->a:Z

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {p3, v2, v3, v4}, Lanet/channel/h/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 183
    :cond_0
    iget-object p3, p0, Lanet/channel/i$b;->b:Lanet/channel/i;

    iget-boolean p3, p3, Lanet/channel/i;->f:Z

    if-eqz p3, :cond_1

    .line 184
    iget-object p1, p0, Lanet/channel/i$b;->b:Lanet/channel/i;

    iput-boolean v1, p1, Lanet/channel/i;->f:Z

    return-void

    .line 188
    :cond_1
    iget-boolean p3, p0, Lanet/channel/i$b;->a:Z

    if-eqz p3, :cond_2

    return-void

    .line 191
    :cond_2
    iput-boolean p2, p0, Lanet/channel/i$b;->a:Z

    .line 193
    iget-object p3, p0, Lanet/channel/i$b;->b:Lanet/channel/i;

    iget-object p3, p3, Lanet/channel/i;->c:Lanet/channel/o;

    iget-object v2, p0, Lanet/channel/i$b;->b:Lanet/channel/i;

    invoke-virtual {p3, v2, p1}, Lanet/channel/o;->b(Lanet/channel/i;Lanet/channel/Session;)V

    .line 195
    iget-boolean p3, p1, Lanet/channel/Session;->r:Z

    if-eqz p3, :cond_8

    invoke-static {}, Lanet/channel/status/NetworkStatusHelper;->g()Z

    move-result p3

    if-eqz p3, :cond_8

    iget-object p3, p0, Lanet/channel/i$b;->d:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_3

    goto/16 :goto_1

    .line 218
    :cond_3
    invoke-static {p2}, Lanet/channel/h/a;->a(I)Z

    move-result p3

    if-eqz p3, :cond_4

    const-string p3, "awcn.SessionRequest"

    const-string p4, "use next connInfo to create session"

    .line 219
    iget-object v2, p0, Lanet/channel/i$b;->e:Lanet/channel/entity/b;

    invoke-virtual {v2}, Lanet/channel/entity/b;->h()Ljava/lang/String;

    move-result-object v2

    new-array v0, v0, [Ljava/lang/Object;

    const-string v3, "host"

    aput-object v3, v0, v1

    iget-object v3, p0, Lanet/channel/i$b;->b:Lanet/channel/i;

    invoke-virtual {v3}, Lanet/channel/i;->a()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, p2

    invoke-static {p3, p4, v2, v0}, Lanet/channel/h/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 224
    :cond_4
    iget-object p2, p0, Lanet/channel/i$b;->e:Lanet/channel/entity/b;

    iget p2, p2, Lanet/channel/entity/b;->b:I

    iget-object p3, p0, Lanet/channel/i$b;->e:Lanet/channel/entity/b;

    iget p3, p3, Lanet/channel/entity/b;->c:I

    if-ne p2, p3, :cond_7

    const/16 p2, -0x7d3

    if-eq p5, p2, :cond_5

    const/16 p2, -0x96a

    if-ne p5, p2, :cond_7

    .line 228
    :cond_5
    iget-object p2, p0, Lanet/channel/i$b;->d:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object p2

    .line 229
    :cond_6
    :goto_0
    invoke-interface {p2}, Ljava/util/ListIterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_7

    .line 230
    invoke-interface {p2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lanet/channel/entity/b;

    .line 231
    invoke-virtual {p1}, Lanet/channel/Session;->f()Ljava/lang/String;

    move-result-object p4

    iget-object p3, p3, Lanet/channel/entity/b;->a:Lanet/channel/strategy/c;

    invoke-interface {p3}, Lanet/channel/strategy/c;->a()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_6

    .line 232
    invoke-interface {p2}, Ljava/util/ListIterator;->remove()V

    goto :goto_0

    .line 236
    :cond_7
    iget-object p1, p0, Lanet/channel/i$b;->d:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lanet/channel/entity/b;

    .line 237
    iget-object p2, p0, Lanet/channel/i$b;->b:Lanet/channel/i;

    iget-object p3, p0, Lanet/channel/i$b;->c:Landroid/content/Context;

    new-instance p4, Lanet/channel/i$b;

    iget-object p5, p0, Lanet/channel/i$b;->b:Lanet/channel/i;

    iget-object v0, p0, Lanet/channel/i$b;->c:Landroid/content/Context;

    iget-object v1, p0, Lanet/channel/i$b;->d:Ljava/util/List;

    invoke-direct {p4, p5, v0, v1, p1}, Lanet/channel/i$b;-><init>(Lanet/channel/i;Landroid/content/Context;Ljava/util/List;Lanet/channel/entity/b;)V

    invoke-virtual {p1}, Lanet/channel/entity/b;->h()Ljava/lang/String;

    move-result-object p5

    invoke-static {p2, p3, p1, p4, p5}, Lanet/channel/i;->a(Lanet/channel/i;Landroid/content/Context;Lanet/channel/entity/b;Lanet/channel/i$a;Ljava/lang/String;)V

    return-void

    .line 196
    :cond_8
    :goto_1
    iget-object p1, p0, Lanet/channel/i$b;->b:Lanet/channel/i;

    invoke-virtual {p1}, Lanet/channel/i;->c()V

    .line 198
    sget-object p1, Lanet/channel/entity/EventType;->CONNECT_FAIL:Lanet/channel/entity/EventType;

    invoke-virtual {p1, p4}, Lanet/channel/entity/EventType;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    const/16 p1, -0xa35

    if-eq p5, p1, :cond_9

    const/16 p1, -0xa29

    if-eq p5, p1, :cond_9

    .line 201
    new-instance p1, Lanet/channel/statist/a;

    invoke-direct {p1}, Lanet/channel/statist/a;-><init>()V

    const-string p2, "networkPrefer"

    .line 202
    iput-object p2, p1, Lanet/channel/statist/a;->e:Ljava/lang/String;

    const-string p2, "policy"

    .line 203
    iput-object p2, p1, Lanet/channel/statist/a;->f:Ljava/lang/String;

    .line 204
    iget-object p2, p0, Lanet/channel/i$b;->b:Lanet/channel/i;

    iget-object p2, p2, Lanet/channel/i;->a:Ljava/lang/String;

    iput-object p2, p1, Lanet/channel/statist/a;->b:Ljava/lang/String;

    .line 205
    invoke-static {p5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lanet/channel/statist/a;->c:Ljava/lang/String;

    .line 206
    iput-boolean v1, p1, Lanet/channel/statist/a;->a:Z

    .line 207
    invoke-static {}, Lanet/channel/b/a;->a()Lanet/channel/b/b;

    move-result-object p2

    invoke-interface {p2, p1}, Lanet/channel/b/b;->a(Lanet/channel/statist/a;)V

    .line 211
    iget-object p1, p0, Lanet/channel/i$b;->b:Lanet/channel/i;

    iget-object p1, p1, Lanet/channel/i;->g:Lanet/channel/statist/SessionConnStat;

    invoke-static {p5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lanet/channel/statist/SessionConnStat;->errorCode:Ljava/lang/String;

    .line 212
    iget-object p1, p0, Lanet/channel/i$b;->b:Lanet/channel/i;

    iget-object p1, p1, Lanet/channel/i;->g:Lanet/channel/statist/SessionConnStat;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    iget-object p4, p0, Lanet/channel/i$b;->b:Lanet/channel/i;

    iget-object p4, p4, Lanet/channel/i;->g:Lanet/channel/statist/SessionConnStat;

    iget-wide p4, p4, Lanet/channel/statist/SessionConnStat;->startTime:J

    sub-long v0, p2, p4

    iput-wide v0, p1, Lanet/channel/statist/SessionConnStat;->costTime:J

    .line 213
    invoke-static {}, Lanet/channel/b/a;->a()Lanet/channel/b/b;

    move-result-object p1

    iget-object p2, p0, Lanet/channel/i$b;->b:Lanet/channel/i;

    iget-object p2, p2, Lanet/channel/i;->g:Lanet/channel/statist/SessionConnStat;

    invoke-interface {p1, p2}, Lanet/channel/b/b;->a(Lanet/channel/statist/StatObject;)V

    :cond_9
    return-void
.end method
