.class Lanet/channel/strategy/u;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Lanet/channel/strategy/a/c$a;
.implements Lanet/channel/strategy/e;


# instance fields
.field protected a:Lanet/channel/strategy/j;

.field private b:Z

.field private c:J

.field private d:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lanet/channel/strategy/f;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 2

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 32
    iput-boolean v0, p0, Lanet/channel/strategy/u;->b:Z

    const/4 v0, 0x0

    .line 33
    iput-object v0, p0, Lanet/channel/strategy/u;->a:Lanet/channel/strategy/j;

    const-wide/16 v0, 0x0

    .line 34
    iput-wide v0, p0, Lanet/channel/strategy/u;->c:J

    .line 35
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lanet/channel/strategy/u;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    return-void
.end method

.method static synthetic a(Lanet/channel/strategy/u;)Z
    .locals 0

    .line 30
    invoke-direct {p0}, Lanet/channel/strategy/u;->c()Z

    move-result p0

    return p0
.end method

.method private c()Z
    .locals 7

    .line 237
    iget-object v0, p0, Lanet/channel/strategy/u;->a:Lanet/channel/strategy/j;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "StrategyCenter not initialized"

    const/4 v2, 0x0

    const-string v3, "isInitialized"

    const/4 v4, 0x1

    .line 238
    new-array v5, v4, [Ljava/lang/Object;

    iget-boolean v6, p0, Lanet/channel/strategy/u;->b:Z

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {v0, v2, v3, v5}, Lanet/channel/h/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v4

    :cond_0
    return v1
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 87
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 91
    :cond_0
    invoke-direct {p0}, Lanet/channel/strategy/u;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p2

    .line 95
    :cond_1
    iget-object v0, p0, Lanet/channel/strategy/u;->a:Lanet/channel/strategy/j;

    iget-object v0, v0, Lanet/channel/strategy/j;->e:Lanet/channel/strategy/g;

    invoke-virtual {v0, p1}, Lanet/channel/strategy/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    .line 96
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    move-object p2, v0

    :goto_0
    if-nez p2, :cond_3

    .line 101
    sget-object p2, Lanet/channel/strategy/q$a;->a:Lanet/channel/strategy/q;

    invoke-virtual {p2, p1}, Lanet/channel/strategy/q;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_3

    const-string p2, "http"

    :cond_3
    const-string v0, "awcn.StrategyCenter"

    const-string v2, "getSchemeByHost"

    const/4 v3, 0x4

    .line 107
    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "host"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const/4 p1, 0x2

    const-string v4, "scheme"

    aput-object v4, v3, p1

    const/4 p1, 0x3

    aput-object p2, v3, p1

    invoke-static {v0, v2, v1, v3}, Lanet/channel/h/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p2
.end method

.method public a(Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lanet/channel/strategy/c;",
            ">;"
        }
    .end annotation

    .line 159
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-direct {p0}, Lanet/channel/strategy/u;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 163
    :cond_0
    iget-object v0, p0, Lanet/channel/strategy/u;->a:Lanet/channel/strategy/j;

    invoke-virtual {v0}, Lanet/channel/strategy/j;->d()Lanet/channel/strategy/l;

    move-result-object v0

    invoke-virtual {v0, p1}, Lanet/channel/strategy/l;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 164
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    move-object p1, v0

    .line 168
    :cond_1
    iget-object v0, p0, Lanet/channel/strategy/u;->a:Lanet/channel/strategy/j;

    invoke-virtual {v0}, Lanet/channel/strategy/j;->d()Lanet/channel/strategy/l;

    move-result-object v0

    invoke-virtual {v0, p1}, Lanet/channel/strategy/l;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 169
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 170
    iget-object v0, p0, Lanet/channel/strategy/u;->a:Lanet/channel/strategy/j;

    iget-object v0, v0, Lanet/channel/strategy/j;->f:Lanet/channel/strategy/o;

    invoke-virtual {v0, p1}, Lanet/channel/strategy/o;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    :cond_2
    const/4 v1, 0x1

    .line 173
    invoke-static {v1}, Lanet/channel/h/a;->a(I)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "getConnStrategyListByHost"

    const/4 v3, 0x0

    const-string v4, "host"

    const/4 v5, 0x3

    .line 174
    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const-string p1, "result"

    aput-object p1, v5, v1

    const/4 p1, 0x2

    aput-object v0, v5, p1

    invoke-static {v2, v3, v4, v5}, Lanet/channel/h/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    return-object v0

    .line 160
    :cond_4
    :goto_0
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p1
.end method

.method public declared-synchronized a()V
    .locals 1

    monitor-enter p0

    .line 57
    :try_start_0
    iget-object v0, p0, Lanet/channel/strategy/u;->a:Lanet/channel/strategy/j;

    if-nez v0, :cond_0

    .line 58
    iget-object v0, p0, Lanet/channel/strategy/u;->a:Lanet/channel/strategy/j;

    invoke-virtual {v0}, Lanet/channel/strategy/j;->b()V

    .line 59
    invoke-static {}, Lanet/channel/strategy/j;->a()Lanet/channel/strategy/j;

    move-result-object v0

    iput-object v0, p0, Lanet/channel/strategy/u;->a:Lanet/channel/strategy/j;

    .line 61
    :cond_0
    invoke-static {}, Lanet/channel/strategy/z;->a()V

    .line 62
    invoke-static {}, Lanet/channel/strategy/a/c;->a()Lanet/channel/strategy/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lanet/channel/strategy/a/c;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 56
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Landroid/content/Context;)V
    .locals 5

    monitor-enter p0

    .line 38
    :try_start_0
    iget-boolean v0, p0, Lanet/channel/strategy/u;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_1
    const-string v2, "awcn.StrategyCenter"

    const-string v3, "StrategyCenter initialize started."

    .line 42
    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {v2, v3, v1, v4}, Lanet/channel/h/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 43
    invoke-static {p1}, Lanet/channel/strategy/a/e;->a(Landroid/content/Context;)V

    .line 44
    invoke-static {p1}, Lanet/channel/strategy/z;->a(Landroid/content/Context;)V

    .line 45
    invoke-static {p1}, Lanet/channel/status/NetworkStatusHelper;->a(Landroid/content/Context;)V

    .line 46
    invoke-static {}, Lanet/channel/strategy/a/c;->a()Lanet/channel/strategy/a/c;

    move-result-object p1

    invoke-virtual {p1, p0}, Lanet/channel/strategy/a/c;->a(Lanet/channel/strategy/a/c$a;)V

    .line 48
    invoke-static {}, Lanet/channel/strategy/j;->a()Lanet/channel/strategy/j;

    move-result-object p1

    iput-object p1, p0, Lanet/channel/strategy/u;->a:Lanet/channel/strategy/j;

    const/4 p1, 0x1

    .line 49
    iput-boolean p1, p0, Lanet/channel/strategy/u;->b:Z

    const-string p1, "awcn.StrategyCenter"

    const-string v2, "StrategyCenter initialize finished."

    .line 50
    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {p1, v2, v1, v3}, Lanet/channel/h/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_2
    const-string v2, "awcn.StrategyCenter"

    const-string v3, "StrategyCenter initialize failed."

    .line 52
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v2, v3, v1, p1, v0}, Lanet/channel/h/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 54
    :goto_0
    monitor-exit p0

    return-void

    .line 39
    :cond_1
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 37
    monitor-exit p0

    throw p1
.end method

.method public a(Lanet/channel/strategy/a/b;)V
    .locals 4

    .line 246
    iget v0, p1, Lanet/channel/strategy/a/b;->a:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lanet/channel/strategy/u;->a:Lanet/channel/strategy/j;

    if-eqz v0, :cond_1

    const-string v0, "awcn.StrategyCenter"

    const-string v1, "receive DNS event"

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 247
    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3}, Lanet/channel/h/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 248
    iget-object p1, p1, Lanet/channel/strategy/a/b;->b:Ljava/lang/Object;

    check-cast p1, Lorg/json/JSONObject;

    invoke-static {p1}, Lanet/channel/strategy/y;->a(Lorg/json/JSONObject;)Lanet/channel/strategy/y$c;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 252
    :cond_0
    iget-object v0, p0, Lanet/channel/strategy/u;->a:Lanet/channel/strategy/j;

    invoke-virtual {v0, p1}, Lanet/channel/strategy/j;->a(Lanet/channel/strategy/y$c;)V

    .line 253
    invoke-virtual {p0}, Lanet/channel/strategy/u;->b()V

    .line 254
    iget-object v0, p0, Lanet/channel/strategy/u;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lanet/channel/strategy/f;

    .line 255
    invoke-interface {v1, p1}, Lanet/channel/strategy/f;->a(Lanet/channel/strategy/y$c;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public a(Lanet/channel/strategy/f;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 191
    iget-object v0, p0, Lanet/channel/strategy/u;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Lanet/channel/strategy/c;Lanet/channel/strategy/a;)V
    .locals 2

    .line 223
    invoke-direct {p0}, Lanet/channel/strategy/u;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_2

    .line 226
    instance-of v0, p2, Lanet/channel/strategy/d;

    if-eqz v0, :cond_2

    .line 227
    move-object v0, p2

    check-cast v0, Lanet/channel/strategy/d;

    .line 228
    iget v0, v0, Lanet/channel/strategy/d;->h:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 229
    iget-object v0, p0, Lanet/channel/strategy/u;->a:Lanet/channel/strategy/j;

    iget-object v0, v0, Lanet/channel/strategy/j;->f:Lanet/channel/strategy/o;

    invoke-virtual {v0, p1, p2, p3}, Lanet/channel/strategy/o;->a(Ljava/lang/String;Lanet/channel/strategy/c;Lanet/channel/strategy/a;)V

    goto :goto_0

    .line 231
    :cond_1
    iget-object v0, p0, Lanet/channel/strategy/u;->a:Lanet/channel/strategy/j;

    invoke-virtual {v0}, Lanet/channel/strategy/j;->d()Lanet/channel/strategy/l;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lanet/channel/strategy/l;->a(Ljava/lang/String;Lanet/channel/strategy/c;Lanet/channel/strategy/a;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 113
    invoke-direct {p0}, Lanet/channel/strategy/u;->c()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 117
    :cond_0
    iget-object v0, p0, Lanet/channel/strategy/u;->a:Lanet/channel/strategy/j;

    invoke-virtual {v0}, Lanet/channel/strategy/j;->d()Lanet/channel/strategy/l;

    move-result-object v0

    invoke-virtual {v0, p1}, Lanet/channel/strategy/l;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public declared-synchronized b()V
    .locals 7

    monitor-enter p0

    :try_start_0
    const-string v0, "awcn.StrategyCenter"

    const-string v1, "saveData"

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 264
    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3}, Lanet/channel/h/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 265
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 266
    iget-wide v2, p0, Lanet/channel/strategy/u;->c:J

    const/4 v4, 0x0

    sub-long v4, v0, v2

    const-wide/32 v2, 0xea60

    cmp-long v6, v4, v2

    if-lez v6, :cond_0

    .line 267
    iput-wide v0, p0, Lanet/channel/strategy/u;->c:J

    .line 269
    new-instance v0, Lanet/channel/strategy/v;

    invoke-direct {v0, p0}, Lanet/channel/strategy/v;-><init>(Lanet/channel/strategy/u;)V

    const-wide/16 v1, 0x1f4

    invoke-static {v0, v1, v2}, Lanet/channel/strategy/utils/a;->a(Ljava/lang/Runnable;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 278
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 263
    monitor-exit p0

    throw v0
.end method

.method public b(Lanet/channel/strategy/f;)V
    .locals 1

    .line 197
    iget-object v0, p0, Lanet/channel/strategy/u;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 6

    .line 180
    invoke-direct {p0}, Lanet/channel/strategy/u;->c()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "awcn.StrategyCenter"

    const-string v1, "force refresh strategy"

    const/4 v2, 0x0

    const/4 v3, 0x2

    .line 184
    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "host"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v0, v1, v2, v3}, Lanet/channel/h/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 185
    iget-object v0, p0, Lanet/channel/strategy/u;->a:Lanet/channel/strategy/j;

    invoke-virtual {v0}, Lanet/channel/strategy/j;->d()Lanet/channel/strategy/l;

    move-result-object v0

    invoke-virtual {v0, p1, v4}, Lanet/channel/strategy/l;->a(Ljava/lang/String;Z)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method
