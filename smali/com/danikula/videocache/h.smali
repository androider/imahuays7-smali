.class final Lcom/danikula/videocache/h;
.super Ljava/lang/Object;
.source "HttpProxyCacheServerClients.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/danikula/videocache/h$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final b:Ljava/lang/String;

.field private volatile c:Lcom/danikula/videocache/e;

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/danikula/videocache/b;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lcom/danikula/videocache/b;

.field private final f:Lcom/danikula/videocache/c;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/danikula/videocache/c;)V
    .locals 2

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/danikula/videocache/h;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 28
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/danikula/videocache/h;->d:Ljava/util/List;

    .line 33
    invoke-static {p1}, Lcom/danikula/videocache/l;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/danikula/videocache/h;->b:Ljava/lang/String;

    .line 34
    invoke-static {p2}, Lcom/danikula/videocache/l;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/danikula/videocache/c;

    iput-object p2, p0, Lcom/danikula/videocache/h;->f:Lcom/danikula/videocache/c;

    .line 35
    new-instance p2, Lcom/danikula/videocache/h$a;

    iget-object v0, p0, Lcom/danikula/videocache/h;->d:Ljava/util/List;

    invoke-direct {p2, p1, v0}, Lcom/danikula/videocache/h$a;-><init>(Ljava/lang/String;Ljava/util/List;)V

    iput-object p2, p0, Lcom/danikula/videocache/h;->e:Lcom/danikula/videocache/b;

    return-void
.end method

.method private declared-synchronized c()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/danikula/videocache/ProxyCacheException;
        }
    .end annotation

    monitor-enter p0

    .line 49
    :try_start_0
    iget-object v0, p0, Lcom/danikula/videocache/h;->c:Lcom/danikula/videocache/e;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/danikula/videocache/h;->e()Lcom/danikula/videocache/e;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/danikula/videocache/h;->c:Lcom/danikula/videocache/e;

    :goto_0
    iput-object v0, p0, Lcom/danikula/videocache/h;->c:Lcom/danikula/videocache/e;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 48
    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized d()V
    .locals 1

    monitor-enter p0

    .line 53
    :try_start_0
    iget-object v0, p0, Lcom/danikula/videocache/h;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-gtz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/danikula/videocache/h;->c:Lcom/danikula/videocache/e;

    invoke-virtual {v0}, Lcom/danikula/videocache/e;->a()V

    const/4 v0, 0x0

    .line 55
    iput-object v0, p0, Lcom/danikula/videocache/h;->c:Lcom/danikula/videocache/e;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 52
    monitor-exit p0

    throw v0
.end method

.method private e()Lcom/danikula/videocache/e;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/danikula/videocache/ProxyCacheException;
        }
    .end annotation

    .line 82
    new-instance v0, Lcom/danikula/videocache/i;

    iget-object v1, p0, Lcom/danikula/videocache/h;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/danikula/videocache/h;->f:Lcom/danikula/videocache/c;

    iget-object v2, v2, Lcom/danikula/videocache/c;->d:Lcom/danikula/videocache/c/c;

    iget-object v3, p0, Lcom/danikula/videocache/h;->f:Lcom/danikula/videocache/c;

    iget-object v3, v3, Lcom/danikula/videocache/c;->e:Lcom/danikula/videocache/b/b;

    invoke-direct {v0, v1, v2, v3}, Lcom/danikula/videocache/i;-><init>(Ljava/lang/String;Lcom/danikula/videocache/c/c;Lcom/danikula/videocache/b/b;)V

    .line 83
    new-instance v1, Lcom/danikula/videocache/a/b;

    iget-object v2, p0, Lcom/danikula/videocache/h;->f:Lcom/danikula/videocache/c;

    iget-object v3, p0, Lcom/danikula/videocache/h;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/danikula/videocache/c;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    iget-object v3, p0, Lcom/danikula/videocache/h;->f:Lcom/danikula/videocache/c;

    iget-object v3, v3, Lcom/danikula/videocache/c;->c:Lcom/danikula/videocache/a/a;

    invoke-direct {v1, v2, v3}, Lcom/danikula/videocache/a/b;-><init>(Ljava/io/File;Lcom/danikula/videocache/a/a;)V

    .line 84
    new-instance v2, Lcom/danikula/videocache/e;

    invoke-direct {v2, v0, v1}, Lcom/danikula/videocache/e;-><init>(Lcom/danikula/videocache/i;Lcom/danikula/videocache/a/b;)V

    .line 85
    iget-object v0, p0, Lcom/danikula/videocache/h;->e:Lcom/danikula/videocache/b;

    invoke-virtual {v2, v0}, Lcom/danikula/videocache/e;->a(Lcom/danikula/videocache/b;)V

    return-object v2
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 68
    iget-object v0, p0, Lcom/danikula/videocache/h;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 69
    iget-object v0, p0, Lcom/danikula/videocache/h;->c:Lcom/danikula/videocache/e;

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/danikula/videocache/h;->c:Lcom/danikula/videocache/e;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/danikula/videocache/e;->a(Lcom/danikula/videocache/b;)V

    .line 71
    iget-object v0, p0, Lcom/danikula/videocache/h;->c:Lcom/danikula/videocache/e;

    invoke-virtual {v0}, Lcom/danikula/videocache/e;->a()V

    .line 72
    iput-object v1, p0, Lcom/danikula/videocache/h;->c:Lcom/danikula/videocache/e;

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/danikula/videocache/h;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void
.end method

.method public a(Lcom/danikula/videocache/b;)V
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/danikula/videocache/h;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Lcom/danikula/videocache/d;Ljava/net/Socket;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/danikula/videocache/ProxyCacheException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 39
    invoke-direct {p0}, Lcom/danikula/videocache/h;->c()V

    .line 41
    :try_start_0
    iget-object v0, p0, Lcom/danikula/videocache/h;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 42
    iget-object v0, p0, Lcom/danikula/videocache/h;->c:Lcom/danikula/videocache/e;

    invoke-virtual {v0, p1, p2}, Lcom/danikula/videocache/e;->a(Lcom/danikula/videocache/d;Ljava/net/Socket;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    invoke-direct {p0}, Lcom/danikula/videocache/h;->d()V

    return-void

    :catchall_0
    move-exception p1

    invoke-direct {p0}, Lcom/danikula/videocache/h;->d()V

    throw p1
.end method

.method public b()I
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/danikula/videocache/h;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public b(Lcom/danikula/videocache/b;)V
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/danikula/videocache/h;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method
