.class public Lcom/taobao/accs/ut/monitor/TrafficsMonitor;
.super Ljava/lang/Object;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/accs/ut/monitor/TrafficsMonitor$a;,
        Lcom/taobao/accs/ut/monitor/TrafficsMonitor$StatTrafficMonitor;
    }
.end annotation


# instance fields
.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/taobao/accs/ut/monitor/TrafficsMonitor$a;",
            ">;>;"
        }
    .end annotation
.end field

.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private c:I

.field private d:Landroid/content/Context;

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/taobao/accs/ut/monitor/TrafficsMonitor;->a:Ljava/util/Map;

    .line 33
    new-instance v0, Lcom/taobao/accs/ut/monitor/a;

    invoke-direct {v0, p0}, Lcom/taobao/accs/ut/monitor/a;-><init>(Lcom/taobao/accs/ut/monitor/TrafficsMonitor;)V

    iput-object v0, p0, Lcom/taobao/accs/ut/monitor/TrafficsMonitor;->b:Ljava/util/Map;

    const/4 v0, 0x0

    .line 49
    iput v0, p0, Lcom/taobao/accs/ut/monitor/TrafficsMonitor;->c:I

    const-string v0, ""

    .line 52
    iput-object v0, p0, Lcom/taobao/accs/ut/monitor/TrafficsMonitor;->e:Ljava/lang/String;

    .line 55
    iput-object p1, p0, Lcom/taobao/accs/ut/monitor/TrafficsMonitor;->d:Landroid/content/Context;

    return-void
.end method

.method private b()V
    .locals 15

    .line 102
    iget-object v0, p0, Lcom/taobao/accs/ut/monitor/TrafficsMonitor;->a:Ljava/util/Map;

    monitor-enter v0

    .line 103
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/taobao/accs/utl/b;->a(J)Ljava/lang/String;

    move-result-object v1

    .line 106
    iget-object v2, p0, Lcom/taobao/accs/ut/monitor/TrafficsMonitor;->e:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/taobao/accs/ut/monitor/TrafficsMonitor;->e:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 107
    iget-object v2, p0, Lcom/taobao/accs/ut/monitor/TrafficsMonitor;->e:Ljava/lang/String;

    const/4 v4, 0x1

    const/4 v12, 0x1

    goto :goto_0

    :cond_0
    move-object v2, v1

    const/4 v12, 0x0

    .line 111
    :goto_0
    iget-object v4, p0, Lcom/taobao/accs/ut/monitor/TrafficsMonitor;->a:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 112
    iget-object v5, p0, Lcom/taobao/accs/ut/monitor/TrafficsMonitor;->a:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 113
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_2
    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/taobao/accs/ut/monitor/TrafficsMonitor$a;

    if-eqz v4, :cond_2

    .line 115
    iget-object v5, p0, Lcom/taobao/accs/ut/monitor/TrafficsMonitor;->d:Landroid/content/Context;

    invoke-static {v5}, Lcom/taobao/accs/d/a;->a(Landroid/content/Context;)Lcom/taobao/accs/d/a;

    move-result-object v5

    iget-object v6, v4, Lcom/taobao/accs/ut/monitor/TrafficsMonitor$a;->e:Ljava/lang/String;

    iget-object v7, v4, Lcom/taobao/accs/ut/monitor/TrafficsMonitor$a;->c:Ljava/lang/String;

    iget-object v8, p0, Lcom/taobao/accs/ut/monitor/TrafficsMonitor;->b:Ljava/util/Map;

    iget-object v9, v4, Lcom/taobao/accs/ut/monitor/TrafficsMonitor$a;->c:Ljava/lang/String;

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    iget-boolean v9, v4, Lcom/taobao/accs/ut/monitor/TrafficsMonitor$a;->d:Z

    iget-wide v10, v4, Lcom/taobao/accs/ut/monitor/TrafficsMonitor$a;->f:J

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    move v8, v9

    move-wide v9, v10

    move-object v11, v2

    invoke-virtual/range {v4 .. v11}, Lcom/taobao/accs/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJLjava/lang/String;)V

    goto :goto_1

    .line 121
    :cond_3
    sget-object v4, Lcom/taobao/accs/utl/ALog$Level;->D:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v4}, Lcom/taobao/accs/utl/ALog;->a(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, "TrafficsMonitor"

    .line 122
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "savetoDay:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " saveTraffics"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/taobao/accs/ut/monitor/TrafficsMonitor;->a:Ljava/util/Map;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {v4, v2, v5}, Lcom/taobao/accs/utl/ALog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    if-eqz v12, :cond_5

    .line 127
    iget-object v2, p0, Lcom/taobao/accs/ut/monitor/TrafficsMonitor;->a:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 128
    invoke-direct {p0}, Lcom/taobao/accs/ut/monitor/TrafficsMonitor;->c()V

    goto :goto_2

    .line 130
    :cond_5
    sget-object v2, Lcom/taobao/accs/utl/ALog$Level;->D:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v2}, Lcom/taobao/accs/utl/ALog;->a(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, "TrafficsMonitor"

    .line 131
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "no need commit lastsaveDay:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/taobao/accs/ut/monitor/TrafficsMonitor;->e:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " currday:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {v2, v4, v5}, Lcom/taobao/accs/utl/ALog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 135
    :cond_6
    :goto_2
    iput-object v1, p0, Lcom/taobao/accs/ut/monitor/TrafficsMonitor;->e:Ljava/lang/String;

    .line 136
    iput v3, p0, Lcom/taobao/accs/ut/monitor/TrafficsMonitor;->c:I

    .line 139
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private c()V
    .locals 6

    .line 163
    iget-object v0, p0, Lcom/taobao/accs/ut/monitor/TrafficsMonitor;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/taobao/accs/d/a;->a(Landroid/content/Context;)Lcom/taobao/accs/d/a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/taobao/accs/d/a;->a(Z)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 170
    :cond_0
    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/taobao/accs/ut/monitor/TrafficsMonitor$a;

    if-eqz v2, :cond_1

    .line 173
    new-instance v3, Lcom/taobao/accs/ut/monitor/TrafficsMonitor$StatTrafficMonitor;

    invoke-direct {v3}, Lcom/taobao/accs/ut/monitor/TrafficsMonitor$StatTrafficMonitor;-><init>()V

    .line 174
    iget-object v4, v2, Lcom/taobao/accs/ut/monitor/TrafficsMonitor$a;->b:Ljava/lang/String;

    iput-object v4, v3, Lcom/taobao/accs/ut/monitor/TrafficsMonitor$StatTrafficMonitor;->bizId:Ljava/lang/String;

    .line 175
    iget-object v4, v2, Lcom/taobao/accs/ut/monitor/TrafficsMonitor$a;->a:Ljava/lang/String;

    iput-object v4, v3, Lcom/taobao/accs/ut/monitor/TrafficsMonitor$StatTrafficMonitor;->date:Ljava/lang/String;

    .line 176
    iget-object v4, v2, Lcom/taobao/accs/ut/monitor/TrafficsMonitor$a;->e:Ljava/lang/String;

    iput-object v4, v3, Lcom/taobao/accs/ut/monitor/TrafficsMonitor$StatTrafficMonitor;->host:Ljava/lang/String;

    .line 177
    iget-boolean v4, v2, Lcom/taobao/accs/ut/monitor/TrafficsMonitor$a;->d:Z

    iput-boolean v4, v3, Lcom/taobao/accs/ut/monitor/TrafficsMonitor$StatTrafficMonitor;->isBackground:Z

    .line 178
    iget-wide v4, v2, Lcom/taobao/accs/ut/monitor/TrafficsMonitor$a;->f:J

    iput-wide v4, v3, Lcom/taobao/accs/ut/monitor/TrafficsMonitor$StatTrafficMonitor;->size:J

    .line 180
    invoke-static {}, Lanet/channel/b/a;->a()Lanet/channel/b/b;

    move-result-object v2

    invoke-interface {v2, v3}, Lanet/channel/b/b;->a(Lanet/channel/statist/StatObject;)V

    goto :goto_0

    .line 183
    :cond_2
    iget-object v0, p0, Lcom/taobao/accs/ut/monitor/TrafficsMonitor;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/taobao/accs/d/a;->a(Landroid/content/Context;)Lcom/taobao/accs/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/accs/d/a;->a()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v2, ""

    .line 185
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v1}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 186
    invoke-static {v0}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 145
    :try_start_0
    iget-object v0, p0, Lcom/taobao/accs/ut/monitor/TrafficsMonitor;->a:Ljava/util/Map;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    :try_start_1
    iget-object v1, p0, Lcom/taobao/accs/ut/monitor/TrafficsMonitor;->a:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 147
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 148
    :try_start_2
    iget-object v0, p0, Lcom/taobao/accs/ut/monitor/TrafficsMonitor;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/taobao/accs/d/a;->a(Landroid/content/Context;)Lcom/taobao/accs/d/a;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/taobao/accs/d/a;->a(Z)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 153
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/accs/ut/monitor/TrafficsMonitor$a;

    .line 154
    invoke-virtual {p0, v1}, Lcom/taobao/accs/ut/monitor/TrafficsMonitor;->a(Lcom/taobao/accs/ut/monitor/TrafficsMonitor$a;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 147
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    const-string v1, "TrafficsMonitor"

    .line 157
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/taobao/accs/utl/ALog;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public a(Lcom/taobao/accs/ut/monitor/TrafficsMonitor$a;)V
    .locals 13

    if-eqz p1, :cond_7

    .line 60
    iget-object v0, p1, Lcom/taobao/accs/ut/monitor/TrafficsMonitor$a;->e:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-wide v0, p1, Lcom/taobao/accs/ut/monitor/TrafficsMonitor$a;->f:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_7

    .line 61
    iget-object v0, p1, Lcom/taobao/accs/ut/monitor/TrafficsMonitor$a;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "accsSelf"

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lcom/taobao/accs/ut/monitor/TrafficsMonitor$a;->c:Ljava/lang/String;

    :goto_0
    iput-object v0, p1, Lcom/taobao/accs/ut/monitor/TrafficsMonitor$a;->c:Ljava/lang/String;

    .line 62
    iget-object v0, p0, Lcom/taobao/accs/ut/monitor/TrafficsMonitor;->a:Ljava/util/Map;

    monitor-enter v0

    .line 63
    :try_start_0
    iget-object v1, p0, Lcom/taobao/accs/ut/monitor/TrafficsMonitor;->b:Ljava/util/Map;

    iget-object v2, p1, Lcom/taobao/accs/ut/monitor/TrafficsMonitor$a;->c:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 64
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 65
    monitor-exit v0

    return-void

    .line 67
    :cond_1
    iput-object v1, p1, Lcom/taobao/accs/ut/monitor/TrafficsMonitor$a;->b:Ljava/lang/String;

    .line 68
    sget-object v2, Lcom/taobao/accs/utl/ALog$Level;->D:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v2}, Lcom/taobao/accs/utl/ALog;->a(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    const-string v2, "TrafficsMonitor"

    .line 69
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addTrafficInfo count:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/taobao/accs/ut/monitor/TrafficsMonitor;->c:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/taobao/accs/ut/monitor/TrafficsMonitor$a;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {v2, v4, v5}, Lcom/taobao/accs/utl/ALog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 71
    :cond_2
    iget-object v2, p0, Lcom/taobao/accs/ut/monitor/TrafficsMonitor;->a:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    const/4 v4, 0x1

    if-eqz v2, :cond_5

    .line 74
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/taobao/accs/ut/monitor/TrafficsMonitor$a;

    .line 75
    iget-boolean v7, v6, Lcom/taobao/accs/ut/monitor/TrafficsMonitor$a;->d:Z

    iget-boolean v8, p1, Lcom/taobao/accs/ut/monitor/TrafficsMonitor$a;->d:Z

    if-ne v7, v8, :cond_3

    iget-object v7, v6, Lcom/taobao/accs/ut/monitor/TrafficsMonitor$a;->e:Ljava/lang/String;

    if-eqz v7, :cond_3

    iget-object v7, v6, Lcom/taobao/accs/ut/monitor/TrafficsMonitor$a;->e:Ljava/lang/String;

    iget-object v8, p1, Lcom/taobao/accs/ut/monitor/TrafficsMonitor$a;->e:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 78
    iget-wide v7, v6, Lcom/taobao/accs/ut/monitor/TrafficsMonitor$a;->f:J

    iget-wide v9, p1, Lcom/taobao/accs/ut/monitor/TrafficsMonitor$a;->f:J

    const/4 v5, 0x0

    add-long v11, v7, v9

    iput-wide v11, v6, Lcom/taobao/accs/ut/monitor/TrafficsMonitor$a;->f:J

    goto :goto_1

    :cond_4
    const/4 v3, 0x1

    :goto_1
    if-eqz v3, :cond_6

    .line 84
    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 87
    :cond_5
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 88
    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    :cond_6
    :goto_2
    iget-object p1, p0, Lcom/taobao/accs/ut/monitor/TrafficsMonitor;->a:Ljava/util/Map;

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    iget p1, p0, Lcom/taobao/accs/ut/monitor/TrafficsMonitor;->c:I

    add-int/2addr p1, v4

    iput p1, p0, Lcom/taobao/accs/ut/monitor/TrafficsMonitor;->c:I

    .line 92
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    iget p1, p0, Lcom/taobao/accs/ut/monitor/TrafficsMonitor;->c:I

    const/16 v0, 0xa

    if-lt p1, v0, :cond_7

    .line 94
    invoke-direct {p0}, Lcom/taobao/accs/ut/monitor/TrafficsMonitor;->b()V

    goto :goto_3

    :catchall_0
    move-exception p1

    .line 92
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_7
    :goto_3
    return-void
.end method
