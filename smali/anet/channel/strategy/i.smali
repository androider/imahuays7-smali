.class Lanet/channel/strategy/i;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field a:Ljava/lang/String;

.field b:Lanet/channel/strategy/k;

.field volatile c:J

.field volatile d:Ljava/lang/String;

.field volatile e:Ljava/lang/String;

.field f:Z

.field private transient g:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 21
    iput-object v0, p0, Lanet/channel/strategy/i;->b:Lanet/channel/strategy/k;

    const-wide/16 v1, 0x0

    .line 22
    iput-wide v1, p0, Lanet/channel/strategy/i;->c:J

    .line 23
    iput-object v0, p0, Lanet/channel/strategy/i;->d:Ljava/lang/String;

    .line 24
    iput-object v0, p0, Lanet/channel/strategy/i;->e:Ljava/lang/String;

    const/4 v0, 0x0

    .line 25
    iput-boolean v0, p0, Lanet/channel/strategy/i;->f:Z

    .line 27
    iput-wide v1, p0, Lanet/channel/strategy/i;->g:J

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 3

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 21
    iput-object v0, p0, Lanet/channel/strategy/i;->b:Lanet/channel/strategy/k;

    const-wide/16 v1, 0x0

    .line 22
    iput-wide v1, p0, Lanet/channel/strategy/i;->c:J

    .line 23
    iput-object v0, p0, Lanet/channel/strategy/i;->d:Ljava/lang/String;

    .line 24
    iput-object v0, p0, Lanet/channel/strategy/i;->e:Ljava/lang/String;

    const/4 v0, 0x0

    .line 25
    iput-boolean v0, p0, Lanet/channel/strategy/i;->f:Z

    .line 27
    iput-wide v1, p0, Lanet/channel/strategy/i;->g:J

    .line 33
    iput-object p1, p0, Lanet/channel/strategy/i;->a:Ljava/lang/String;

    .line 34
    invoke-static {p1}, Lanet/channel/strategy/a/a;->a(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lanet/channel/strategy/i;->f:Z

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 38
    iget-object v0, p0, Lanet/channel/strategy/i;->b:Lanet/channel/strategy/k;

    if-eqz v0, :cond_0

    .line 39
    iget-object v0, p0, Lanet/channel/strategy/i;->b:Lanet/channel/strategy/k;

    invoke-virtual {v0}, Lanet/channel/strategy/k;->a()V

    :cond_0
    return-void
.end method

.method public declared-synchronized a(Lanet/channel/strategy/c;Lanet/channel/strategy/a;)V
    .locals 5

    monitor-enter p0

    .line 51
    :try_start_0
    iget-object v0, p0, Lanet/channel/strategy/i;->b:Lanet/channel/strategy/k;

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lanet/channel/strategy/i;->b:Lanet/channel/strategy/k;

    invoke-virtual {v0, p1, p2}, Lanet/channel/strategy/k;->a(Lanet/channel/strategy/c;Lanet/channel/strategy/a;)V

    .line 53
    iget-boolean p1, p2, Lanet/channel/strategy/a;->a:Z

    if-nez p1, :cond_0

    .line 55
    iget-object p1, p0, Lanet/channel/strategy/i;->b:Lanet/channel/strategy/k;

    invoke-virtual {p1}, Lanet/channel/strategy/k;->c()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 56
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    .line 57
    iget-wide v0, p0, Lanet/channel/strategy/i;->g:J

    const/4 v2, 0x0

    sub-long v2, p1, v0

    const-wide/32 v0, 0xea60

    cmp-long v4, v2, v0

    if-lez v4, :cond_0

    .line 58
    invoke-static {}, Lanet/channel/strategy/h;->a()Lanet/channel/strategy/e;

    move-result-object v0

    iget-object v1, p0, Lanet/channel/strategy/i;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Lanet/channel/strategy/e;->c(Ljava/lang/String;)V

    .line 59
    iput-wide p1, p0, Lanet/channel/strategy/i;->g:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 50
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Lanet/channel/strategy/y$b;)V
    .locals 6

    monitor-enter p0

    .line 79
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget v2, p1, Lanet/channel/strategy/y$b;->b:I

    int-to-long v2, v2

    const-wide/16 v4, 0x3e8

    mul-long v2, v2, v4

    add-long v4, v0, v2

    iput-wide v4, p0, Lanet/channel/strategy/i;->c:J

    .line 81
    iget-object v0, p1, Lanet/channel/strategy/y$b;->a:Ljava/lang/String;

    iget-object v1, p0, Lanet/channel/strategy/i;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "StrategyCollection"

    const-string v2, "update error!"

    const/4 v3, 0x4

    .line 82
    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "host"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lanet/channel/strategy/i;->a:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "dnsInfo.host"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    iget-object p1, p1, Lanet/channel/strategy/y$b;->a:Ljava/lang/String;

    aput-object p1, v3, v4

    invoke-static {v0, v2, v1, v3}, Lanet/channel/h/a;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    monitor-exit p0

    return-void

    .line 86
    :cond_0
    :try_start_1
    iget-boolean v0, p1, Lanet/channel/strategy/y$b;->j:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    .line 87
    monitor-exit p0

    return-void

    .line 90
    :cond_1
    :try_start_2
    iget-object v0, p1, Lanet/channel/strategy/y$b;->d:Ljava/lang/String;

    iput-object v0, p0, Lanet/channel/strategy/i;->e:Ljava/lang/String;

    .line 91
    iget-object v0, p1, Lanet/channel/strategy/y$b;->i:Ljava/lang/String;

    iput-object v0, p0, Lanet/channel/strategy/i;->d:Ljava/lang/String;

    .line 94
    iget-object v0, p1, Lanet/channel/strategy/y$b;->e:[Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p1, Lanet/channel/strategy/y$b;->e:[Ljava/lang/String;

    array-length v0, v0

    if-eqz v0, :cond_4

    iget-object v0, p1, Lanet/channel/strategy/y$b;->g:[Lanet/channel/strategy/y$a;

    if-eqz v0, :cond_4

    iget-object v0, p1, Lanet/channel/strategy/y$b;->g:[Lanet/channel/strategy/y$a;

    array-length v0, v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 100
    :cond_2
    iget-object v0, p0, Lanet/channel/strategy/i;->b:Lanet/channel/strategy/k;

    if-nez v0, :cond_3

    .line 101
    new-instance v0, Lanet/channel/strategy/k;

    invoke-direct {v0}, Lanet/channel/strategy/k;-><init>()V

    iput-object v0, p0, Lanet/channel/strategy/i;->b:Lanet/channel/strategy/k;

    .line 104
    :cond_3
    iget-object v0, p0, Lanet/channel/strategy/i;->b:Lanet/channel/strategy/k;

    invoke-virtual {v0, p1}, Lanet/channel/strategy/k;->a(Lanet/channel/strategy/y$b;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 105
    monitor-exit p0

    return-void

    .line 96
    :cond_4
    :goto_0
    :try_start_3
    iput-object v1, p0, Lanet/channel/strategy/i;->b:Lanet/channel/strategy/k;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 97
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 78
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lanet/channel/strategy/c;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 44
    :try_start_0
    iget-object v0, p0, Lanet/channel/strategy/i;->b:Lanet/channel/strategy/k;

    if-nez v0, :cond_0

    .line 45
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 47
    :cond_0
    :try_start_1
    iget-object v0, p0, Lanet/channel/strategy/i;->b:Lanet/channel/strategy/k;

    invoke-virtual {v0}, Lanet/channel/strategy/k;->b()Ljava/util/List;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 43
    monitor-exit p0

    throw v0
.end method

.method public c()Ljava/lang/String;
    .locals 2

    .line 67
    iget-object v0, p0, Lanet/channel/strategy/i;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lanet/channel/strategy/i;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lanet/channel/strategy/i;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 70
    :cond_0
    iget-object v0, p0, Lanet/channel/strategy/i;->a:Ljava/lang/String;

    return-object v0
.end method

.method public d()Z
    .locals 5

    .line 75
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lanet/channel/strategy/i;->c:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "\nStrategyList = "

    .line 110
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lanet/channel/strategy/i;->c:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 111
    iget-object v1, p0, Lanet/channel/strategy/i;->b:Lanet/channel/strategy/k;

    if-eqz v1, :cond_0

    .line 112
    iget-object v1, p0, Lanet/channel/strategy/i;->b:Lanet/channel/strategy/k;

    invoke-virtual {v1}, Lanet/channel/strategy/k;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 113
    :cond_0
    iget-object v1, p0, Lanet/channel/strategy/i;->e:Ljava/lang/String;

    if-eqz v1, :cond_1

    const/16 v1, 0x5b

    .line 114
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lanet/channel/strategy/i;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "=>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lanet/channel/strategy/i;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const-string v1, "[]"

    .line 116
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
