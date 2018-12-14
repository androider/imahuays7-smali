.class Lanet/channel/g$a;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Lanet/channel/h/b$a;
.implements Lanet/channel/status/NetworkStatusHelper$a;
.implements Lanet/channel/strategy/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lanet/channel/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field a:Z

.field final synthetic b:Lanet/channel/g;


# direct methods
.method private constructor <init>(Lanet/channel/g;)V
    .locals 0

    .line 479
    iput-object p1, p0, Lanet/channel/g$a;->b:Lanet/channel/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 514
    iput-boolean p1, p0, Lanet/channel/g$a;->a:Z

    return-void
.end method

.method synthetic constructor <init>(Lanet/channel/g;Lanet/channel/m;)V
    .locals 0

    .line 479
    invoke-direct {p0, p1}, Lanet/channel/g$a;-><init>(Lanet/channel/g;)V

    return-void
.end method


# virtual methods
.method a()V
    .locals 1

    .line 482
    invoke-static {p0}, Lanet/channel/h/b;->a(Lanet/channel/h/b$a;)V

    .line 483
    invoke-static {p0}, Lanet/channel/status/NetworkStatusHelper;->a(Lanet/channel/status/NetworkStatusHelper$a;)V

    .line 484
    invoke-static {}, Lanet/channel/strategy/h;->a()Lanet/channel/strategy/e;

    move-result-object v0

    invoke-interface {v0, p0}, Lanet/channel/strategy/e;->a(Lanet/channel/strategy/f;)V

    return-void
.end method

.method public a(Lanet/channel/status/NetworkStatusHelper$NetworkStatus;)V
    .locals 6

    const-string v0, "awcn.SessionCenter"

    const-string v1, "onNetworkStatusChanged. reCreateSession"

    .line 495
    iget-object v2, p0, Lanet/channel/g$a;->b:Lanet/channel/g;

    iget-object v2, v2, Lanet/channel/g;->c:Ljava/lang/String;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "networkStatus"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v0, v1, v2, v3}, Lanet/channel/h/a;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 496
    iget-object p1, p0, Lanet/channel/g$a;->b:Lanet/channel/g;

    iget-object p1, p1, Lanet/channel/g;->e:Lanet/channel/o;

    invoke-virtual {p1}, Lanet/channel/o;->a()Ljava/util/List;

    move-result-object p1

    .line 497
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 498
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lanet/channel/i;

    const-string v1, "awcn.SessionCenter"

    const-string v2, "network change, try recreate session"

    .line 499
    iget-object v3, p0, Lanet/channel/g$a;->b:Lanet/channel/g;

    iget-object v3, v3, Lanet/channel/g;->c:Ljava/lang/String;

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v1, v2, v3, v4}, Lanet/channel/h/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v1, 0x0

    .line 500
    invoke-virtual {v0, v1}, Lanet/channel/i;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "awcn.SessionCenter"

    const-string v0, "recreate session failed: infos is empty"

    .line 503
    iget-object v1, p0, Lanet/channel/g$a;->b:Lanet/channel/g;

    iget-object v1, v1, Lanet/channel/g;->c:Ljava/lang/String;

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {p1, v0, v1, v2}, Lanet/channel/h/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 505
    :cond_1
    iget-object p1, p0, Lanet/channel/g$a;->b:Lanet/channel/g;

    iget-object p1, p1, Lanet/channel/g;->h:Lanet/channel/a;

    invoke-virtual {p1}, Lanet/channel/a;->a()V

    return-void
.end method

.method public a(Lanet/channel/strategy/y$c;)V
    .locals 1

    .line 510
    iget-object v0, p0, Lanet/channel/g$a;->b:Lanet/channel/g;

    invoke-static {v0, p1}, Lanet/channel/g;->a(Lanet/channel/g;Lanet/channel/strategy/y$c;)V

    .line 511
    iget-object p1, p0, Lanet/channel/g$a;->b:Lanet/channel/g;

    iget-object p1, p1, Lanet/channel/g;->h:Lanet/channel/a;

    invoke-virtual {p1}, Lanet/channel/a;->a()V

    return-void
.end method

.method b()V
    .locals 1

    .line 488
    invoke-static {}, Lanet/channel/strategy/h;->a()Lanet/channel/strategy/e;

    move-result-object v0

    invoke-interface {v0, p0}, Lanet/channel/strategy/e;->b(Lanet/channel/strategy/f;)V

    .line 489
    invoke-static {p0}, Lanet/channel/h/b;->b(Lanet/channel/h/b$a;)V

    .line 490
    invoke-static {p0}, Lanet/channel/status/NetworkStatusHelper;->b(Lanet/channel/status/NetworkStatusHelper$a;)V

    return-void
.end method

.method public c()V
    .locals 5

    const-string v0, "awcn.SessionCenter"

    const-string v1, "[forground]"

    .line 518
    iget-object v2, p0, Lanet/channel/g$a;->b:Lanet/channel/g;

    iget-object v2, v2, Lanet/channel/g;->c:Ljava/lang/String;

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v4}, Lanet/channel/h/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 519
    iget-object v0, p0, Lanet/channel/g$a;->b:Lanet/channel/g;

    iget-object v0, v0, Lanet/channel/g;->b:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    .line 524
    :cond_0
    iget-boolean v0, p0, Lanet/channel/g$a;->a:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x1

    .line 527
    iput-boolean v0, p0, Lanet/channel/g$a;->a:Z

    .line 528
    invoke-static {}, Lanet/channel/g;->a()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "awcn.SessionCenter"

    const-string v1, "forground not inited!"

    .line 529
    iget-object v2, p0, Lanet/channel/g$a;->b:Lanet/channel/g;

    iget-object v2, v2, Lanet/channel/g;->c:Ljava/lang/String;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3}, Lanet/channel/h/a;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 533
    :cond_2
    :try_start_0
    new-instance v0, Lanet/channel/n;

    invoke-direct {v0, p0}, Lanet/channel/n;-><init>(Lanet/channel/g$a;)V

    invoke-static {v0}, Lanet/channel/a/c;->a(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public d()V
    .locals 5

    const-string v0, "awcn.SessionCenter"

    const-string v1, "[background]"

    .line 556
    iget-object v2, p0, Lanet/channel/g$a;->b:Lanet/channel/g;

    iget-object v2, v2, Lanet/channel/g;->c:Ljava/lang/String;

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v4}, Lanet/channel/h/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 557
    invoke-static {}, Lanet/channel/g;->a()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "awcn.SessionCenter"

    const-string v1, "background not inited!"

    .line 558
    iget-object v2, p0, Lanet/channel/g$a;->b:Lanet/channel/g;

    iget-object v2, v2, Lanet/channel/g;->c:Ljava/lang/String;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3}, Lanet/channel/h/a;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 562
    :cond_0
    :try_start_0
    invoke-static {}, Lanet/channel/strategy/h;->a()Lanet/channel/strategy/e;

    move-result-object v0

    invoke-interface {v0}, Lanet/channel/strategy/e;->b()V

    const-string v0, "OPPO"

    .line 563
    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "awcn.SessionCenter"

    const-string v1, "close session for OPPO"

    .line 564
    iget-object v2, p0, Lanet/channel/g$a;->b:Lanet/channel/g;

    iget-object v2, v2, Lanet/channel/g;->c:Ljava/lang/String;

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v4}, Lanet/channel/h/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 565
    iget-object v0, p0, Lanet/channel/g$a;->b:Lanet/channel/g;

    iget-object v0, v0, Lanet/channel/g;->h:Lanet/channel/a;

    invoke-virtual {v0, v3}, Lanet/channel/a;->a(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void
.end method
