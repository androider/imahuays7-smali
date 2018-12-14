.class Lanet/channel/a;
.super Ljava/lang/Object;
.source "Taobao"


# instance fields
.field a:Lanet/channel/g;

.field b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lanet/channel/g;)V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 27
    iput-object v0, p0, Lanet/channel/a;->a:Lanet/channel/g;

    .line 28
    sget-object v0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    iput-object v0, p0, Lanet/channel/a;->b:Ljava/util/Set;

    .line 31
    iput-object p1, p0, Lanet/channel/a;->a:Lanet/channel/g;

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 6

    .line 101
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "awcn.AccsSessionManager"

    const-string v1, "closeSessions"

    .line 104
    iget-object v2, p0, Lanet/channel/a;->a:Lanet/channel/g;

    iget-object v2, v2, Lanet/channel/g;->c:Ljava/lang/String;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "host"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v0, v1, v2, v3}, Lanet/channel/h/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 105
    iget-object v0, p0, Lanet/channel/a;->a:Lanet/channel/g;

    invoke-virtual {v0, p1}, Lanet/channel/g;->c(Ljava/lang/String;)Lanet/channel/i;

    move-result-object p1

    .line 106
    invoke-virtual {p1, v5}, Lanet/channel/i;->b(Z)V

    return-void
.end method

.method private b()Z
    .locals 7

    .line 89
    invoke-static {}, Lanet/channel/d;->h()Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    const-string v0, "awcn.AccsSessionManager"

    const-string v4, "app is background not need check accs session, return"

    .line 90
    iget-object v5, p0, Lanet/channel/a;->a:Lanet/channel/g;

    iget-object v5, v5, Lanet/channel/g;->c:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v6, "bg"

    aput-object v6, v1, v3

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v1, v2

    invoke-static {v0, v4, v5, v1}, Lanet/channel/h/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v3

    .line 93
    :cond_0
    invoke-static {}, Lanet/channel/status/NetworkStatusHelper;->g()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "awcn.AccsSessionManager"

    const-string v4, "network is not available, not need check accs session, return"

    .line 94
    iget-object v5, p0, Lanet/channel/a;->a:Lanet/channel/g;

    iget-object v5, v5, Lanet/channel/g;->c:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v6, "network"

    aput-object v6, v1, v3

    invoke-static {}, Lanet/channel/status/NetworkStatusHelper;->g()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v1, v2

    invoke-static {v0, v4, v5, v1}, Lanet/channel/h/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v3

    :cond_1
    return v2
.end method


# virtual methods
.method public declared-synchronized a()V
    .locals 8

    monitor-enter p0

    .line 35
    :try_start_0
    iget-object v0, p0, Lanet/channel/a;->a:Lanet/channel/g;

    iget-object v0, v0, Lanet/channel/g;->g:Lanet/channel/l;

    invoke-virtual {v0}, Lanet/channel/l;->a()Ljava/util/Collection;

    move-result-object v0

    .line 37
    sget-object v1, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    .line 38
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 39
    new-instance v1, Ljava/util/TreeSet;

    invoke-direct {v1}, Ljava/util/TreeSet;-><init>()V

    .line 42
    :cond_0
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lanet/channel/h;

    .line 43
    iget-boolean v3, v2, Lanet/channel/h;->b:Z

    if-eqz v3, :cond_1

    .line 44
    invoke-static {}, Lanet/channel/strategy/h;->a()Lanet/channel/strategy/e;

    move-result-object v3

    iget-object v4, v2, Lanet/channel/h;->a:Ljava/lang/String;

    iget-boolean v5, v2, Lanet/channel/h;->c:Z

    if-eqz v5, :cond_2

    const-string v5, "https"

    goto :goto_1

    :cond_2
    const-string v5, "http"

    :goto_1
    invoke-interface {v3, v4, v5}, Lanet/channel/strategy/e;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "://"

    .line 46
    iget-object v2, v2, Lanet/channel/h;->a:Ljava/lang/String;

    invoke-static {v3, v4, v2}, Lanet/channel/h/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 50
    :cond_3
    iget-object v0, p0, Lanet/channel/a;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 51
    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 52
    invoke-direct {p0, v2}, Lanet/channel/a;->a(Ljava/lang/String;)V

    goto :goto_2

    .line 56
    :cond_5
    invoke-direct {p0}, Lanet/channel/a;->b()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_6

    .line 57
    monitor-exit p0

    return-void

    .line 60
    :cond_6
    :try_start_1
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 62
    :try_start_2
    iget-object v3, p0, Lanet/channel/a;->a:Lanet/channel/g;

    sget-object v4, Lanet/channel/entity/ConnType$TypeLevel;->SPDY:Lanet/channel/entity/ConnType$TypeLevel;

    const-wide/16 v5, 0x0

    invoke-virtual {v3, v2, v4, v5, v6}, Lanet/channel/g;->a(Ljava/lang/String;Lanet/channel/entity/ConnType$TypeLevel;J)Lanet/channel/Session;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :catch_0
    :try_start_3
    const-string v3, "start session failed"

    const/4 v4, 0x0

    const-string v5, "host"

    const/4 v6, 0x1

    .line 64
    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    invoke-static {v3, v4, v5, v6}, Lanet/channel/h/a;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    .line 68
    :cond_7
    iput-object v1, p0, Lanet/channel/a;->b:Ljava/util/Set;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 69
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 34
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Z)V
    .locals 7

    monitor-enter p0

    const/4 v0, 0x1

    .line 76
    :try_start_0
    invoke-static {v0}, Lanet/channel/h/a;->a(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "awcn.AccsSessionManager"

    const-string v2, "forceCloseSession"

    .line 77
    iget-object v3, p0, Lanet/channel/a;->a:Lanet/channel/g;

    iget-object v3, v3, Lanet/channel/g;->c:Ljava/lang/String;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "reCreate"

    aput-object v6, v4, v5

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-static {v1, v2, v3, v4}, Lanet/channel/h/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 79
    :cond_0
    iget-object v0, p0, Lanet/channel/a;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 80
    invoke-direct {p0, v1}, Lanet/channel/a;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    .line 84
    invoke-virtual {p0}, Lanet/channel/a;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 75
    monitor-exit p0

    throw p1
.end method
