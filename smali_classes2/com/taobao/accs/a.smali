.class public Lcom/taobao/accs/a;
.super Ljava/lang/Object;
.source "Taobao"


# static fields
.field public static b:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/taobao/accs/a;",
            ">;"
        }
    .end annotation
.end field

.field private static c:Ljava/lang/String; = "ACCSClient"

.field private static e:Landroid/content/Context;


# instance fields
.field protected a:Lcom/taobao/accs/c;

.field private d:Ljava/lang/String;

.field private f:Lcom/taobao/accs/b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 38
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    sput-object v0, Lcom/taobao/accs/a;->b:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/taobao/accs/b;)V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    sget-object p1, Lcom/taobao/accs/a;->c:Ljava/lang/String;

    iput-object p1, p0, Lcom/taobao/accs/a;->d:Ljava/lang/String;

    .line 30
    iput-object p2, p0, Lcom/taobao/accs/a;->f:Lcom/taobao/accs/b;

    .line 31
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/taobao/accs/a;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/taobao/accs/b;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/taobao/accs/a;->d:Ljava/lang/String;

    .line 32
    sget-object p1, Lcom/taobao/accs/a;->e:Landroid/content/Context;

    invoke-virtual {p2}, Lcom/taobao/accs/b;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/taobao/accs/b;->k()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, v0, p2}, Lcom/taobao/accs/ACCSManager;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/accs/c;

    move-result-object p1

    iput-object p1, p0, Lcom/taobao/accs/a;->a:Lcom/taobao/accs/c;

    return-void
.end method

.method public static declared-synchronized a(Ljava/lang/String;)Lcom/taobao/accs/a;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/accs/AccsException;
        }
    .end annotation

    const-class v0, Lcom/taobao/accs/a;

    monitor-enter v0

    .line 91
    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const-string p0, "default"

    .line 93
    sget-object v1, Lcom/taobao/accs/a;->c:Ljava/lang/String;

    const-string v3, "configTag null, use default!"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v1, v3, v4}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 96
    :cond_0
    invoke-static {p0}, Lcom/taobao/accs/b;->a(Ljava/lang/String;)Lcom/taobao/accs/b;

    move-result-object v1

    if-nez v1, :cond_1

    .line 99
    sget-object p0, Lcom/taobao/accs/a;->c:Ljava/lang/String;

    const-string v1, "configTag not exist, please init first!!"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 100
    new-instance p0, Lcom/taobao/accs/AccsException;

    const-string v1, "tag not exist"

    invoke-direct {p0, v1}, Lcom/taobao/accs/AccsException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 102
    :cond_1
    sget-object v3, Lcom/taobao/accs/a;->c:Ljava/lang/String;

    const-string v4, "getAccsClient"

    const/4 v5, 0x2

    new-array v6, v5, [Ljava/lang/Object;

    const-string v7, "configTag"

    aput-object v7, v6, v2

    const/4 v7, 0x1

    aput-object p0, v6, v7

    invoke-static {v3, v4, v6}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 104
    sget-object v3, Lcom/taobao/accs/a;->b:Ljava/util/Map;

    invoke-interface {v3, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/taobao/accs/a;

    if-nez v3, :cond_2

    .line 106
    sget-object v3, Lcom/taobao/accs/a;->c:Ljava/lang/String;

    const-string v4, "getAccsClient create client"

    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "config"

    aput-object v6, v5, v2

    invoke-virtual {v1}, Lcom/taobao/accs/b;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v7

    invoke-static {v3, v4, v5}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 107
    new-instance v2, Lcom/taobao/accs/a;

    sget-object v3, Lcom/taobao/accs/a;->e:Landroid/content/Context;

    invoke-direct {v2, v3, v1}, Lcom/taobao/accs/a;-><init>(Landroid/content/Context;Lcom/taobao/accs/b;)V

    .line 108
    sget-object v3, Lcom/taobao/accs/a;->b:Ljava/util/Map;

    invoke-interface {v3, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    invoke-direct {v2, v1}, Lcom/taobao/accs/a;->a(Lcom/taobao/accs/b;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    monitor-exit v0

    return-object v2

    .line 113
    :cond_2
    :try_start_1
    iget-object p0, v3, Lcom/taobao/accs/a;->f:Lcom/taobao/accs/b;

    invoke-virtual {v1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 114
    sget-object p0, Lcom/taobao/accs/a;->c:Ljava/lang/String;

    const-string v1, "getAccsClient exists"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 115
    monitor-exit v0

    return-object v3

    .line 118
    :cond_3
    :try_start_2
    sget-object p0, Lcom/taobao/accs/a;->c:Ljava/lang/String;

    const-string v4, "getAccsClient update config"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const-string v8, "old config"

    aput-object v8, v6, v2

    iget-object v2, v3, Lcom/taobao/accs/a;->f:Lcom/taobao/accs/b;

    invoke-virtual {v2}, Lcom/taobao/accs/b;->k()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v6, v7

    const-string v2, "new config"

    aput-object v2, v6, v5

    const/4 v2, 0x3

    invoke-virtual {v1}, Lcom/taobao/accs/b;->k()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v6, v2

    invoke-static {p0, v4, v6}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 120
    invoke-direct {v3, v1}, Lcom/taobao/accs/a;->a(Lcom/taobao/accs/b;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 121
    monitor-exit v0

    return-object v3

    :catchall_0
    move-exception p0

    .line 90
    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized a(Landroid/content/Context;Lcom/taobao/accs/b;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/accs/AccsException;
        }
    .end annotation

    const-class v0, Lcom/taobao/accs/a;

    monitor-enter v0

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 70
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sput-object p0, Lcom/taobao/accs/a;->e:Landroid/content/Context;

    .line 71
    sget-object p0, Lcom/taobao/accs/a;->c:Ljava/lang/String;

    const-string v1, "init"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "config"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p1}, Lcom/taobao/accs/b;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {p0, v1, v2}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 72
    invoke-virtual {p1}, Lcom/taobao/accs/b;->k()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    .line 68
    :cond_1
    :goto_0
    :try_start_1
    new-instance p0, Lcom/taobao/accs/AccsException;

    const-string p1, "params error"

    invoke-direct {p0, p1}, Lcom/taobao/accs/AccsException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p0

    .line 66
    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized a(Landroid/content/Context;I)V
    .locals 8

    const-class v0, Lcom/taobao/accs/a;

    monitor-enter v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-ltz p1, :cond_0

    if-le p1, v2, :cond_1

    .line 140
    :cond_0
    :try_start_0
    sget-object v4, Lcom/taobao/accs/a;->c:Ljava/lang/String;

    const-string v5, "env error"

    new-array v6, v2, [Ljava/lang/Object;

    const-string v7, "env"

    aput-object v7, v6, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v1

    invoke-static {v4, v5, v6}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 143
    :cond_1
    sget v4, Lcom/taobao/accs/b;->b:I

    .line 144
    sput p1, Lcom/taobao/accs/b;->b:I

    if-eq v4, p1, :cond_4

    .line 146
    invoke-static {p0}, Lcom/taobao/accs/utl/l;->d(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 147
    sget-object v4, Lcom/taobao/accs/a;->c:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setEnvironment:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v3, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 148
    invoke-static {p0}, Lcom/taobao/accs/utl/l;->b(Landroid/content/Context;)V

    .line 149
    invoke-static {p0}, Lcom/taobao/accs/utl/l;->e(Landroid/content/Context;)V

    .line 150
    invoke-static {p0}, Lcom/taobao/accs/utl/l;->c(Landroid/content/Context;)V

    if-ne p1, v2, :cond_2

    .line 152
    sget-object v1, Lanet/channel/entity/ENV;->TEST:Lanet/channel/entity/ENV;

    invoke-static {v1}, Lanet/channel/g;->a(Lanet/channel/entity/ENV;)V

    goto :goto_0

    :cond_2
    if-ne p1, v1, :cond_3

    .line 154
    sget-object v1, Lanet/channel/entity/ENV;->PREPARE:Lanet/channel/entity/ENV;

    invoke-static {v1}, Lanet/channel/g;->a(Lanet/channel/entity/ENV;)V

    .line 158
    :cond_3
    :goto_0
    sget-object v1, Lcom/taobao/accs/a;->b:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 160
    :try_start_1
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/taobao/accs/a;->a(Ljava/lang/String;)Lcom/taobao/accs/a;
    :try_end_1
    .catch Lcom/taobao/accs/AccsException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 162
    :try_start_2
    sget-object v4, Lcom/taobao/accs/a;->c:Ljava/lang/String;

    const-string v5, "setEnvironment update client"

    new-array v6, v3, [Ljava/lang/Object;

    invoke-static {v4, v5, v2, v6}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 170
    :cond_4
    :goto_2
    :try_start_3
    invoke-static {p0, p1}, Lcom/taobao/accs/utl/l;->a(Landroid/content/Context;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3

    :catchall_0
    move-exception v1

    goto :goto_4

    :catch_1
    move-exception v1

    .line 168
    :try_start_4
    sget-object v2, Lcom/taobao/accs/a;->c:Ljava/lang/String;

    const-string v4, "setEnvironment"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v4, v1, v3}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    .line 174
    :goto_3
    monitor-exit v0

    return-void

    .line 170
    :goto_4
    :try_start_5
    invoke-static {p0, p1}, Lcom/taobao/accs/utl/l;->a(Landroid/content/Context;I)V

    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception p0

    .line 136
    monitor-exit v0

    throw p0
.end method

.method private a(Lcom/taobao/accs/b;)V
    .locals 3

    .line 126
    iput-object p1, p0, Lcom/taobao/accs/a;->f:Lcom/taobao/accs/b;

    .line 127
    sget-object v0, Lcom/taobao/accs/a;->e:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/taobao/accs/b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/taobao/accs/b;->k()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/ACCSManager;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/accs/c;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/accs/a;->a:Lcom/taobao/accs/c;

    .line 128
    iget-object v0, p0, Lcom/taobao/accs/a;->a:Lcom/taobao/accs/c;

    invoke-interface {v0, p1}, Lcom/taobao/accs/c;->a(Lcom/taobao/accs/b;)V

    return-void
.end method
