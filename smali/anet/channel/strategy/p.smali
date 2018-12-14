.class Lanet/channel/strategy/p;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/Object;

.field final synthetic c:Lanet/channel/strategy/o;


# direct methods
.method constructor <init>(Lanet/channel/strategy/o;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lanet/channel/strategy/p;->c:Lanet/channel/strategy/o;

    iput-object p2, p0, Lanet/channel/strategy/p;->a:Ljava/lang/String;

    iput-object p3, p0, Lanet/channel/strategy/p;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    .line 95
    :try_start_0
    iget-object v4, p0, Lanet/channel/strategy/p;->a:Ljava/lang/String;

    invoke-static {v4}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v4

    .line 96
    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    .line 97
    invoke-static {v4}, Lanet/channel/strategy/utils/d;->a(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 98
    invoke-static {}, Lanet/channel/strategy/m;->a()Lanet/channel/strategy/m;

    move-result-object v5

    iget-object v6, p0, Lanet/channel/strategy/p;->a:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lanet/channel/strategy/m;->a(Ljava/lang/String;)Lanet/channel/strategy/ConnProtocol;

    move-result-object v7

    .line 99
    new-instance v12, Ljava/util/LinkedList;

    invoke-direct {v12}, Ljava/util/LinkedList;-><init>()V

    if-eqz v7, :cond_3

    .line 101
    iget-object v5, v7, Lanet/channel/strategy/ConnProtocol;->protocol:Ljava/lang/String;

    const-string v6, "https"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, v7, Lanet/channel/strategy/ConnProtocol;->publicKey:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v5, 0x1

    :goto_1
    if-nez v5, :cond_2

    const/16 v5, 0x50

    const/16 v6, 0x50

    goto :goto_2

    :cond_2
    const/16 v5, 0x1bb

    const/16 v6, 0x1bb

    :goto_2
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    const v11, 0xafc8

    move-object v5, v4

    .line 102
    invoke-static/range {v5 .. v11}, Lanet/channel/strategy/d;->a(Ljava/lang/String;ILanet/channel/strategy/ConnProtocol;IIII)Lanet/channel/strategy/d;

    move-result-object v5

    .line 103
    iput v2, v5, Lanet/channel/strategy/d;->h:I

    .line 104
    invoke-interface {v12, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    iget-object v5, p0, Lanet/channel/strategy/p;->c:Lanet/channel/strategy/o;

    iget-object v5, v5, Lanet/channel/strategy/o;->a:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v6, p0, Lanet/channel/strategy/p;->a:Ljava/lang/String;

    invoke-virtual {v5, v6, v12}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_3
    const/16 v6, 0x50

    .line 107
    sget-object v7, Lanet/channel/strategy/ConnProtocol;->HTTP:Lanet/channel/strategy/ConnProtocol;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v5, v4

    invoke-static/range {v5 .. v11}, Lanet/channel/strategy/d;->a(Ljava/lang/String;ILanet/channel/strategy/ConnProtocol;IIII)Lanet/channel/strategy/d;

    move-result-object v13

    .line 108
    iput v2, v13, Lanet/channel/strategy/d;->h:I

    const/16 v6, 0x1bb

    .line 110
    sget-object v7, Lanet/channel/strategy/ConnProtocol;->HTTPS:Lanet/channel/strategy/ConnProtocol;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v5, v4

    invoke-static/range {v5 .. v11}, Lanet/channel/strategy/d;->a(Ljava/lang/String;ILanet/channel/strategy/ConnProtocol;IIII)Lanet/channel/strategy/d;

    move-result-object v5

    .line 111
    iput v2, v5, Lanet/channel/strategy/d;->h:I

    .line 113
    invoke-interface {v12, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    invoke-interface {v12, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    iget-object v5, p0, Lanet/channel/strategy/p;->c:Lanet/channel/strategy/o;

    iget-object v5, v5, Lanet/channel/strategy/o;->a:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v6, p0, Lanet/channel/strategy/p;->a:Ljava/lang/String;

    invoke-virtual {v5, v6, v12}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    :goto_3
    invoke-static {v3}, Lanet/channel/h/a;->a(I)Z

    move-result v5

    if-eqz v5, :cond_5

    const-string v5, "awcn.LocalDnsStrategyTable"

    const-string v6, "resolve ip by local dns"

    const/4 v7, 0x4

    .line 119
    new-array v7, v7, [Ljava/lang/Object;

    const-string v8, "host"

    aput-object v8, v7, v1

    iget-object v8, p0, Lanet/channel/strategy/p;->a:Ljava/lang/String;

    aput-object v8, v7, v3

    const-string v8, "ip"

    aput-object v8, v7, v2

    const/4 v8, 0x3

    aput-object v4, v7, v8

    invoke-static {v5, v6, v0, v7}, Lanet/channel/h/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4

    .line 122
    :cond_4
    iget-object v4, p0, Lanet/channel/strategy/p;->c:Lanet/channel/strategy/o;

    iget-object v4, v4, Lanet/channel/strategy/o;->a:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v5, p0, Lanet/channel/strategy/p;->a:Ljava/lang/String;

    sget-object v6, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 129
    :cond_5
    :goto_4
    iget-object v0, p0, Lanet/channel/strategy/p;->c:Lanet/channel/strategy/o;

    iget-object v0, v0, Lanet/channel/strategy/o;->b:Ljava/util/HashMap;

    monitor-enter v0

    .line 130
    :try_start_1
    iget-object v1, p0, Lanet/channel/strategy/p;->c:Lanet/channel/strategy/o;

    iget-object v1, v1, Lanet/channel/strategy/o;->b:Ljava/util/HashMap;

    iget-object v2, p0, Lanet/channel/strategy/p;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 132
    iget-object v0, p0, Lanet/channel/strategy/p;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 133
    :try_start_2
    iget-object v1, p0, Lanet/channel/strategy/p;->b:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 134
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_5

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    :catchall_1
    move-exception v1

    .line 131
    monitor-exit v0

    throw v1

    :catchall_2
    move-exception v0

    goto :goto_6

    .line 125
    :catch_0
    :try_start_3
    invoke-static {v3}, Lanet/channel/h/a;->a(I)Z

    move-result v4

    if-eqz v4, :cond_6

    const-string v4, "awcn.LocalDnsStrategyTable"

    const-string v5, "resolve ip by local dns failed"

    .line 126
    new-array v2, v2, [Ljava/lang/Object;

    const-string v6, "host"

    aput-object v6, v2, v1

    iget-object v1, p0, Lanet/channel/strategy/p;->a:Ljava/lang/String;

    aput-object v1, v2, v3

    invoke-static {v4, v5, v0, v2}, Lanet/channel/h/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 129
    :cond_6
    iget-object v0, p0, Lanet/channel/strategy/p;->c:Lanet/channel/strategy/o;

    iget-object v0, v0, Lanet/channel/strategy/o;->b:Ljava/util/HashMap;

    monitor-enter v0

    .line 130
    :try_start_4
    iget-object v1, p0, Lanet/channel/strategy/p;->c:Lanet/channel/strategy/o;

    iget-object v1, v1, Lanet/channel/strategy/o;->b:Ljava/util/HashMap;

    iget-object v2, p0, Lanet/channel/strategy/p;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 132
    iget-object v0, p0, Lanet/channel/strategy/p;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 133
    :try_start_5
    iget-object v1, p0, Lanet/channel/strategy/p;->b:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 134
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :goto_5
    return-void

    :catchall_3
    move-exception v1

    monitor-exit v0

    throw v1

    :catchall_4
    move-exception v1

    .line 131
    monitor-exit v0

    throw v1

    .line 129
    :goto_6
    iget-object v1, p0, Lanet/channel/strategy/p;->c:Lanet/channel/strategy/o;

    iget-object v1, v1, Lanet/channel/strategy/o;->b:Ljava/util/HashMap;

    monitor-enter v1

    .line 130
    :try_start_6
    iget-object v2, p0, Lanet/channel/strategy/p;->c:Lanet/channel/strategy/o;

    iget-object v2, v2, Lanet/channel/strategy/o;->b:Ljava/util/HashMap;

    iget-object v3, p0, Lanet/channel/strategy/p;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    .line 132
    iget-object v1, p0, Lanet/channel/strategy/p;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 133
    :try_start_7
    iget-object v2, p0, Lanet/channel/strategy/p;->b:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 134
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    throw v0

    :catchall_5
    move-exception v0

    monitor-exit v1

    throw v0

    :catchall_6
    move-exception v0

    .line 131
    monitor-exit v1

    throw v0
.end method
