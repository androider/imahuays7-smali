.class Lanet/channel/strategy/l;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lanet/channel/strategy/l$a;
    }
.end annotation


# instance fields
.field protected a:Ljava/lang/String;

.field protected volatile b:Ljava/lang/String;

.field private volatile transient c:I

.field private d:Lanet/channel/strategy/l$a;

.field private transient e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lanet/channel/strategy/i;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object p1, p0, Lanet/channel/strategy/l;->a:Ljava/lang/String;

    .line 81
    invoke-virtual {p0}, Lanet/channel/strategy/l;->a()V

    return-void
.end method

.method private a(Lanet/channel/strategy/a;Ljava/lang/String;)V
    .locals 1

    .line 389
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 392
    :cond_0
    iget-object v0, p0, Lanet/channel/strategy/l;->f:Ljava/util/Set;

    monitor-enter v0

    .line 393
    :try_start_0
    iget-boolean p1, p1, Lanet/channel/strategy/a;->a:Z

    if-eqz p1, :cond_1

    .line 394
    iget-object p1, p0, Lanet/channel/strategy/l;->f:Ljava/util/Set;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 396
    :cond_1
    iget-object p1, p0, Lanet/channel/strategy/l;->f:Ljava/util/Set;

    invoke-interface {p1, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 398
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method private b(Ljava/util/Map;)Ljava/util/Set;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lanet/channel/strategy/i;",
            ">;)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 255
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 256
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 258
    iget-object v3, p0, Lanet/channel/strategy/l;->d:Lanet/channel/strategy/l$a;

    if-ne p1, v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 260
    :goto_0
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lanet/channel/strategy/i;

    if-nez v3, :cond_2

    .line 261
    iget-wide v5, v4, Lanet/channel/strategy/i;->c:J

    cmp-long v7, v1, v5

    if-ltz v7, :cond_1

    .line 262
    :cond_2
    invoke-virtual {v4}, Lanet/channel/strategy/i;->c()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-wide/16 v5, 0x7530

    add-long v7, v1, v5

    .line 264
    iput-wide v7, v4, Lanet/channel/strategy/i;->c:J

    goto :goto_1

    :cond_3
    return-object v0
.end method

.method private b()V
    .locals 4

    .line 85
    invoke-static {}, Lanet/channel/strategy/a/c;->a()Lanet/channel/strategy/a/c;

    move-result-object v0

    iget-object v1, p0, Lanet/channel/strategy/l;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lanet/channel/strategy/a/c;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 89
    :cond_0
    invoke-static {}, Lanet/channel/strategy/a/c;->a()Lanet/channel/strategy/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lanet/channel/strategy/a/c;->b()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 90
    iget-object v2, p0, Lanet/channel/strategy/l;->d:Lanet/channel/strategy/l$a;

    new-instance v3, Lanet/channel/strategy/i;

    invoke-direct {v3, v1}, Lanet/channel/strategy/i;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1, v3}, Lanet/channel/strategy/l$a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method

.method private c()V
    .locals 7

    const/4 v0, 0x0

    .line 340
    :try_start_0
    invoke-static {}, Lanet/channel/strategy/a/c;->a()Lanet/channel/strategy/a/c;

    move-result-object v1

    iget-object v2, p0, Lanet/channel/strategy/l;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lanet/channel/strategy/a/c;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 342
    iget-object v1, p0, Lanet/channel/strategy/l;->d:Lanet/channel/strategy/l$a;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 343
    :try_start_1
    iget-object v2, p0, Lanet/channel/strategy/l;->e:Ljava/util/Map;

    monitor-enter v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 344
    :try_start_2
    invoke-static {}, Lanet/channel/strategy/a/c;->a()Lanet/channel/strategy/a/c;

    move-result-object v3

    invoke-virtual {v3}, Lanet/channel/strategy/a/c;->b()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 345
    iget-object v6, p0, Lanet/channel/strategy/l;->d:Lanet/channel/strategy/l$a;

    invoke-virtual {v6, v5}, Lanet/channel/strategy/l$a;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 346
    iget-object v6, p0, Lanet/channel/strategy/l;->e:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 347
    iget-object v4, p0, Lanet/channel/strategy/l;->e:Ljava/util/Map;

    new-instance v6, Lanet/channel/strategy/i;

    invoke-direct {v6, v5}, Lanet/channel/strategy/i;-><init>(Ljava/lang/String;)V

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v4, 0x1

    goto :goto_0

    .line 352
    :cond_1
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 353
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v4, :cond_2

    .line 355
    :try_start_4
    iget-object v1, p0, Lanet/channel/strategy/l;->e:Ljava/util/Map;

    invoke-virtual {p0, v1}, Lanet/channel/strategy/l;->a(Ljava/util/Map;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    :catchall_0
    move-exception v3

    .line 352
    :try_start_5
    monitor-exit v2

    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v2

    .line 353
    :try_start_6
    monitor-exit v1

    throw v2
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    :catch_0
    move-exception v1

    const-string v2, "awcn.StrategyTable"

    const-string v3, "checkInitHost failed"

    const/4 v4, 0x0

    .line 359
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v2, v3, v4, v1, v0}, Lanet/channel/h/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_2
    :goto_1
    return-void
.end method

.method private d()Ljava/lang/String;
    .locals 4

    .line 402
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 403
    iget-object v1, p0, Lanet/channel/strategy/l;->f:Ljava/util/Set;

    monitor-enter v1

    .line 404
    :try_start_0
    iget-object v2, p0, Lanet/channel/strategy/l;->f:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 405
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ";"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 407
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 408
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 409
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 411
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catchall_0
    move-exception v0

    .line 407
    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/util/List;
    .locals 4
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

    .line 119
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {p1}, Lanet/channel/strategy/utils/d;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 123
    :cond_0
    invoke-direct {p0}, Lanet/channel/strategy/l;->c()V

    .line 126
    iget-object v0, p0, Lanet/channel/strategy/l;->d:Lanet/channel/strategy/l$a;

    monitor-enter v0

    .line 127
    :try_start_0
    iget-object v1, p0, Lanet/channel/strategy/l;->d:Lanet/channel/strategy/l$a;

    invoke-virtual {v1, p1}, Lanet/channel/strategy/l$a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lanet/channel/strategy/i;

    .line 128
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_1

    .line 130
    invoke-virtual {v1}, Lanet/channel/strategy/i;->d()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 131
    iget-object p1, p0, Lanet/channel/strategy/l;->d:Lanet/channel/strategy/l$a;

    invoke-virtual {p0, p1}, Lanet/channel/strategy/l;->a(Ljava/util/Map;)V

    goto :goto_1

    .line 135
    :cond_1
    iget-object v0, p0, Lanet/channel/strategy/l;->e:Ljava/util/Map;

    monitor-enter v0

    .line 136
    :try_start_1
    iget-object v1, p0, Lanet/channel/strategy/l;->e:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lanet/channel/strategy/i;

    const/4 v2, 0x0

    if-nez v1, :cond_2

    .line 138
    new-instance v1, Lanet/channel/strategy/i;

    invoke-direct {v1, p1}, Lanet/channel/strategy/i;-><init>(Ljava/lang/String;)V

    .line 139
    iget-object v3, p0, Lanet/channel/strategy/l;->e:Ljava/util/Map;

    invoke-interface {v3, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    .line 142
    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_3

    .line 144
    invoke-virtual {p0, p1, v2}, Lanet/channel/strategy/l;->a(Ljava/lang/String;Z)V

    .line 147
    :cond_3
    :goto_1
    invoke-virtual {v1}, Lanet/channel/strategy/i;->b()Ljava/util/List;

    move-result-object p1

    return-object p1

    :catchall_0
    move-exception p1

    .line 142
    monitor-exit v0

    throw p1

    :catchall_1
    move-exception p1

    .line 128
    monitor-exit v0

    throw p1

    .line 120
    :cond_4
    :goto_2
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p1
.end method

.method protected a()V
    .locals 3

    .line 95
    iget-object v0, p0, Lanet/channel/strategy/l;->d:Lanet/channel/strategy/l$a;

    const/16 v1, 0x28

    if-nez v0, :cond_0

    .line 96
    new-instance v0, Lanet/channel/strategy/l$a;

    invoke-direct {v0, v1}, Lanet/channel/strategy/l$a;-><init>(I)V

    iput-object v0, p0, Lanet/channel/strategy/l;->d:Lanet/channel/strategy/l$a;

    .line 97
    invoke-direct {p0}, Lanet/channel/strategy/l;->b()V

    .line 99
    :cond_0
    iget-object v0, p0, Lanet/channel/strategy/l;->d:Lanet/channel/strategy/l$a;

    invoke-virtual {v0}, Lanet/channel/strategy/l$a;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lanet/channel/strategy/i;

    .line 100
    invoke-virtual {v2}, Lanet/channel/strategy/i;->a()V

    goto :goto_0

    .line 103
    :cond_1
    iget-object v0, p0, Lanet/channel/strategy/l;->e:Ljava/util/Map;

    if-nez v0, :cond_2

    .line 104
    new-instance v0, Lanet/channel/strategy/utils/SerialLruCache;

    invoke-direct {v0, v1}, Lanet/channel/strategy/utils/SerialLruCache;-><init>(I)V

    iput-object v0, p0, Lanet/channel/strategy/l;->e:Ljava/util/Map;

    .line 107
    :cond_2
    iget-object v0, p0, Lanet/channel/strategy/l;->f:Ljava/util/Set;

    if-nez v0, :cond_3

    .line 108
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Lanet/channel/strategy/l;->f:Ljava/util/Set;

    .line 111
    :cond_3
    invoke-static {}, Lanet/channel/d;->b()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    goto :goto_1

    :cond_4
    const/4 v0, -0x1

    :goto_1
    iput v0, p0, Lanet/channel/strategy/l;->c:I

    return-void
.end method

.method public a(Lanet/channel/strategy/y$c;)V
    .locals 12

    const-string v0, "awcn.StrategyTable"

    const-string v1, "update strategyTable with httpDns response"

    const/4 v2, 0x0

    .line 176
    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0, v1, v4, v3}, Lanet/channel/h/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 178
    :try_start_0
    iget-object v1, p1, Lanet/channel/strategy/y$c;->a:Ljava/lang/String;

    iput-object v1, p0, Lanet/channel/strategy/l;->b:Ljava/lang/String;

    .line 179
    iget v1, p1, Lanet/channel/strategy/y$c;->f:I

    iput v1, p0, Lanet/channel/strategy/l;->c:I

    .line 180
    iget-object p1, p1, Lanet/channel/strategy/y$c;->c:[Lanet/channel/strategy/y$b;

    if-nez p1, :cond_0

    return-void

    .line 185
    :cond_0
    iget-object v1, p0, Lanet/channel/strategy/l;->d:Lanet/channel/strategy/l$a;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 186
    :try_start_1
    iget-object v3, p0, Lanet/channel/strategy/l;->e:Ljava/util/Map;

    monitor-enter v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v5, 0x0

    .line 187
    :goto_0
    :try_start_2
    array-length v6, p1

    if-ge v5, v6, :cond_8

    .line 188
    aget-object v6, p1, v5

    if-eqz v6, :cond_7

    .line 189
    iget-object v7, v6, Lanet/channel/strategy/y$b;->a:Ljava/lang/String;

    if-nez v7, :cond_1

    goto/16 :goto_3

    .line 193
    :cond_1
    iget-boolean v7, v6, Lanet/channel/strategy/y$b;->h:Z

    if-eqz v7, :cond_2

    .line 194
    iget-object v7, p0, Lanet/channel/strategy/l;->d:Lanet/channel/strategy/l$a;

    iget-object v8, v6, Lanet/channel/strategy/y$b;->a:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lanet/channel/strategy/l$a;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_7

    .line 195
    iget-object v7, p0, Lanet/channel/strategy/l;->e:Ljava/util/Map;

    iget-object v6, v6, Lanet/channel/strategy/y$b;->a:Ljava/lang/String;

    invoke-interface {v7, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 200
    :cond_2
    iget-object v7, p0, Lanet/channel/strategy/l;->d:Lanet/channel/strategy/l$a;

    iget-object v8, v6, Lanet/channel/strategy/y$b;->a:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lanet/channel/strategy/l$a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lanet/channel/strategy/i;

    if-eqz v7, :cond_3

    .line 202
    iget v8, v6, Lanet/channel/strategy/y$b;->k:I

    if-eq v8, v0, :cond_6

    .line 203
    iget-object v8, p0, Lanet/channel/strategy/l;->e:Ljava/util/Map;

    iget-object v9, v6, Lanet/channel/strategy/y$b;->a:Ljava/lang/String;

    iget-object v10, p0, Lanet/channel/strategy/l;->d:Lanet/channel/strategy/l$a;

    iget-object v11, v6, Lanet/channel/strategy/y$b;->a:Ljava/lang/String;

    invoke-virtual {v10, v11}, Lanet/channel/strategy/l$a;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v8, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 206
    :cond_3
    iget-object v7, p0, Lanet/channel/strategy/l;->e:Ljava/util/Map;

    iget-object v8, v6, Lanet/channel/strategy/y$b;->a:Ljava/lang/String;

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lanet/channel/strategy/i;

    if-eqz v7, :cond_4

    .line 208
    iget v8, v6, Lanet/channel/strategy/y$b;->k:I

    if-ne v8, v0, :cond_6

    .line 209
    iget-object v8, p0, Lanet/channel/strategy/l;->d:Lanet/channel/strategy/l$a;

    iget-object v9, v6, Lanet/channel/strategy/y$b;->a:Ljava/lang/String;

    iget-object v10, p0, Lanet/channel/strategy/l;->e:Ljava/util/Map;

    iget-object v11, v6, Lanet/channel/strategy/y$b;->a:Ljava/lang/String;

    invoke-interface {v10, v11}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lanet/channel/strategy/l$a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 212
    :cond_4
    new-instance v7, Lanet/channel/strategy/i;

    iget-object v8, v6, Lanet/channel/strategy/y$b;->a:Ljava/lang/String;

    invoke-direct {v7, v8}, Lanet/channel/strategy/i;-><init>(Ljava/lang/String;)V

    .line 213
    iget v8, v6, Lanet/channel/strategy/y$b;->k:I

    if-ne v8, v0, :cond_5

    iget-object v8, p0, Lanet/channel/strategy/l;->d:Lanet/channel/strategy/l$a;

    goto :goto_1

    :cond_5
    iget-object v8, p0, Lanet/channel/strategy/l;->e:Ljava/util/Map;

    :goto_1
    iget-object v9, v6, Lanet/channel/strategy/y$b;->a:Ljava/lang/String;

    invoke-interface {v8, v9, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    :cond_6
    :goto_2
    invoke-virtual {v7, v6}, Lanet/channel/strategy/i;->a(Lanet/channel/strategy/y$b;)V

    :cond_7
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 219
    :cond_8
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 220
    :try_start_3
    monitor-exit v1

    goto :goto_4

    :catchall_0
    move-exception p1

    .line 219
    monitor-exit v3

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    .line 220
    :try_start_4
    monitor-exit v1

    throw p1
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p1

    const-string v1, "awcn.StrategyTable"

    const-string v3, "fail to update strategyTable"

    .line 222
    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v1, v3, v4, p1, v5}, Lanet/channel/h/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 224
    :goto_4
    invoke-static {v0}, Lanet/channel/h/a;->a(I)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 226
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "uniqueId : "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lanet/channel/strategy/l;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n-------------------------hot domains:------------------------------------"

    .line 227
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "awcn.StrategyTable"

    .line 228
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v4, v3}, Lanet/channel/h/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 229
    iget-object v0, p0, Lanet/channel/strategy/l;->d:Lanet/channel/strategy/l$a;

    monitor-enter v0

    .line 230
    :try_start_5
    iget-object v1, p0, Lanet/channel/strategy/l;->d:Lanet/channel/strategy/l$a;

    invoke-virtual {v1}, Lanet/channel/strategy/l$a;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 231
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 232
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " = "

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lanet/channel/strategy/i;

    invoke-virtual {v3}, Lanet/channel/strategy/i;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "awcn.StrategyTable"

    .line 233
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v2, [Ljava/lang/Object;

    invoke-static {v3, v5, v4, v6}, Lanet/channel/h/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_5

    .line 235
    :cond_9
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 237
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    const-string v0, "\n-------------------------cold domains:------------------------------------"

    .line 238
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "awcn.StrategyTable"

    .line 239
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v4, v3}, Lanet/channel/h/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 240
    iget-object v0, p0, Lanet/channel/strategy/l;->e:Ljava/util/Map;

    monitor-enter v0

    .line 241
    :try_start_6
    iget-object v1, p0, Lanet/channel/strategy/l;->e:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 242
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 243
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " = "

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lanet/channel/strategy/i;

    invoke-virtual {v3}, Lanet/channel/strategy/i;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "awcn.StrategyTable"

    .line 244
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v2, [Ljava/lang/Object;

    invoke-static {v3, v5, v4, v6}, Lanet/channel/h/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_6

    .line 246
    :cond_a
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_7

    :catchall_2
    move-exception p1

    monitor-exit v0

    throw p1

    :catchall_3
    move-exception p1

    .line 235
    monitor-exit v0

    throw p1

    :cond_b
    :goto_7
    return-void
.end method

.method a(Ljava/lang/String;Lanet/channel/strategy/c;Lanet/channel/strategy/a;)V
    .locals 7

    const/4 v0, 0x1

    .line 367
    invoke-static {v0}, Lanet/channel/h/a;->a(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "awcn.StrategyTable"

    const-string v2, "[notifyConnEvent]"

    const/4 v3, 0x0

    const/4 v4, 0x6

    .line 368
    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "Host"

    aput-object v6, v4, v5

    aput-object p1, v4, v0

    const/4 v0, 0x2

    const-string v5, "IConnStrategy"

    aput-object v5, v4, v0

    const/4 v0, 0x3

    aput-object p2, v4, v0

    const/4 v0, 0x4

    const-string v5, "ConnEvent"

    aput-object v5, v4, v0

    const/4 v0, 0x5

    aput-object p3, v4, v0

    invoke-static {v1, v2, v3, v4}, Lanet/channel/h/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 372
    :cond_0
    invoke-interface {p2}, Lanet/channel/strategy/c;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p3, v0}, Lanet/channel/strategy/l;->a(Lanet/channel/strategy/a;Ljava/lang/String;)V

    .line 375
    iget-object v0, p0, Lanet/channel/strategy/l;->d:Lanet/channel/strategy/l$a;

    monitor-enter v0

    .line 376
    :try_start_0
    iget-object v1, p0, Lanet/channel/strategy/l;->e:Ljava/util/Map;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 377
    :try_start_1
    iget-object v2, p0, Lanet/channel/strategy/l;->d:Lanet/channel/strategy/l$a;

    invoke-virtual {v2, p1}, Lanet/channel/strategy/l$a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lanet/channel/strategy/i;

    if-nez v2, :cond_1

    .line 379
    iget-object v2, p0, Lanet/channel/strategy/l;->e:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lanet/channel/strategy/i;

    .line 381
    :cond_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 382
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v2, :cond_2

    .line 384
    invoke-virtual {v2, p2, p3}, Lanet/channel/strategy/i;->a(Lanet/channel/strategy/c;Lanet/channel/strategy/a;)V

    :cond_2
    return-void

    :catchall_0
    move-exception p1

    .line 381
    :try_start_3
    monitor-exit v1

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    .line 382
    monitor-exit v0

    throw p1
.end method

.method protected a(Ljava/lang/String;Z)V
    .locals 4

    .line 275
    invoke-static {}, Lanet/channel/d;->h()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    invoke-static {}, Lanet/channel/status/NetworkStatusHelper;->g()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 279
    :cond_0
    invoke-static {}, Lanet/channel/strategy/a/e;->a()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    return-void

    .line 284
    :cond_1
    sget-object v1, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    .line 286
    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    .line 287
    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 290
    :cond_2
    iget-object v0, p0, Lanet/channel/strategy/l;->d:Lanet/channel/strategy/l$a;

    monitor-enter v0

    .line 291
    :try_start_0
    iget-object v2, p0, Lanet/channel/strategy/l;->d:Lanet/channel/strategy/l$a;

    invoke-virtual {v2, p1}, Lanet/channel/strategy/l$a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lanet/channel/strategy/i;

    if-eqz v2, :cond_4

    if-nez p2, :cond_3

    .line 293
    invoke-virtual {v2}, Lanet/channel/strategy/i;->d()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 294
    :cond_3
    iget-object v1, p0, Lanet/channel/strategy/l;->d:Lanet/channel/strategy/l$a;

    invoke-direct {p0, v1}, Lanet/channel/strategy/l;->b(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v1

    .line 295
    invoke-virtual {v2}, Lanet/channel/strategy/i;->c()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 298
    :cond_4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v2, :cond_8

    .line 300
    iget-object v0, p0, Lanet/channel/strategy/l;->e:Ljava/util/Map;

    monitor-enter v0

    .line 301
    :try_start_1
    iget-object v2, p0, Lanet/channel/strategy/l;->e:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lanet/channel/strategy/i;

    if-nez v2, :cond_5

    .line 303
    new-instance v2, Lanet/channel/strategy/i;

    invoke-direct {v2, p1}, Lanet/channel/strategy/i;-><init>(Ljava/lang/String;)V

    .line 304
    iget-object v3, p0, Lanet/channel/strategy/l;->e:Ljava/util/Map;

    invoke-interface {v3, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    if-nez p2, :cond_7

    .line 307
    invoke-virtual {v2}, Lanet/channel/strategy/i;->d()Z

    move-result p1

    if-eqz p1, :cond_6

    goto :goto_0

    :cond_6
    move-object p2, v1

    goto :goto_1

    .line 308
    :cond_7
    :goto_0
    iget-object p1, p0, Lanet/channel/strategy/l;->e:Ljava/util/Map;

    invoke-direct {p0, p1}, Lanet/channel/strategy/l;->b(Ljava/util/Map;)Ljava/util/Set;

    move-result-object p1

    .line 309
    invoke-virtual {v2}, Lanet/channel/strategy/i;->c()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-object p2, p1

    .line 311
    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1

    :cond_8
    move-object p2, v1

    .line 315
    :goto_2
    invoke-static {}, Lanet/channel/strategy/a/c;->a()Lanet/channel/strategy/a/c;

    move-result-object p1

    invoke-direct {p0}, Lanet/channel/strategy/l;->d()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lanet/channel/strategy/l;->c:I

    invoke-virtual {p1, p2, v0, v1}, Lanet/channel/strategy/a/c;->a(Ljava/util/Set;Ljava/lang/String;I)V

    return-void

    :catchall_1
    move-exception p1

    .line 298
    monitor-exit v0

    throw p1

    :cond_9
    :goto_3
    return-void
.end method

.method protected a(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lanet/channel/strategy/i;",
            ">;)V"
        }
    .end annotation

    .line 322
    invoke-static {}, Lanet/channel/d;->h()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lanet/channel/strategy/a/e;->a()I

    move-result v0

    if-gtz v0, :cond_2

    invoke-static {}, Lanet/channel/status/NetworkStatusHelper;->g()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 329
    :cond_0
    monitor-enter p1

    .line 330
    :try_start_0
    invoke-direct {p0, p1}, Lanet/channel/strategy/l;->b(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    .line 331
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 333
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    .line 334
    invoke-static {}, Lanet/channel/strategy/a/c;->a()Lanet/channel/strategy/a/c;

    move-result-object p1

    invoke-direct {p0}, Lanet/channel/strategy/l;->d()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lanet/channel/strategy/l;->c:I

    invoke-virtual {p1, v0, v1, v2}, Lanet/channel/strategy/a/c;->a(Ljava/util/Set;Ljava/lang/String;I)V

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    .line 331
    monitor-exit p1

    throw v0

    :cond_2
    :goto_0
    return-void
.end method

.method public b(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 151
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 155
    :cond_0
    iget-object v0, p0, Lanet/channel/strategy/l;->d:Lanet/channel/strategy/l$a;

    monitor-enter v0

    .line 156
    :try_start_0
    iget-object v2, p0, Lanet/channel/strategy/l;->d:Lanet/channel/strategy/l$a;

    invoke-virtual {v2, p1}, Lanet/channel/strategy/l$a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lanet/channel/strategy/i;

    .line 157
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v2, :cond_1

    .line 159
    invoke-virtual {v2}, Lanet/channel/strategy/i;->d()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 160
    iget-object p1, p0, Lanet/channel/strategy/l;->d:Lanet/channel/strategy/l$a;

    invoke-virtual {p0, p1}, Lanet/channel/strategy/l;->a(Ljava/util/Map;)V

    goto :goto_0

    .line 163
    :cond_1
    iget-object v0, p0, Lanet/channel/strategy/l;->e:Ljava/util/Map;

    monitor-enter v0

    .line 164
    :try_start_1
    iget-object v2, p0, Lanet/channel/strategy/l;->e:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lanet/channel/strategy/i;

    .line 165
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    :goto_0
    if-eqz v2, :cond_3

    .line 168
    iget-object v1, v2, Lanet/channel/strategy/i;->e:Ljava/lang/String;

    :cond_3
    return-object v1

    :catchall_0
    move-exception p1

    .line 165
    monitor-exit v0

    throw p1

    :catchall_1
    move-exception p1

    .line 157
    monitor-exit v0

    throw p1
.end method
