.class public Lanet/channel/strategy/a/c;
.super Ljava/lang/Object;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lanet/channel/strategy/a/c$b;,
        Lanet/channel/strategy/a/c$a;
    }
.end annotation


# instance fields
.field private a:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lanet/channel/strategy/a/c$a;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lanet/channel/strategy/a/f;

.field private volatile c:Z

.field private d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lanet/channel/strategy/a/c;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 32
    new-instance v0, Lanet/channel/strategy/a/f;

    invoke-direct {v0}, Lanet/channel/strategy/a/f;-><init>()V

    iput-object v0, p0, Lanet/channel/strategy/a/c;->b:Lanet/channel/strategy/a/f;

    const/4 v0, 0x1

    .line 33
    iput-boolean v0, p0, Lanet/channel/strategy/a/c;->c:Z

    .line 34
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lanet/channel/strategy/a/c;->d:Ljava/util/Set;

    .line 35
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Lanet/channel/strategy/a/c;->e:Ljava/util/Set;

    .line 36
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lanet/channel/strategy/a/c;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 47
    invoke-direct {p0}, Lanet/channel/strategy/a/c;->d()V

    return-void
.end method

.method synthetic constructor <init>(Lanet/channel/strategy/a/c$1;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Lanet/channel/strategy/a/c;-><init>()V

    return-void
.end method

.method public static a()Lanet/channel/strategy/a/c;
    .locals 1

    .line 43
    sget-object v0, Lanet/channel/strategy/a/c$b;->a:Lanet/channel/strategy/a/c;

    return-object v0
.end method

.method private d()V
    .locals 3

    .line 109
    iget-object v0, p0, Lanet/channel/strategy/a/c;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lanet/channel/d;->a()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lanet/channel/strategy/a/c;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lanet/channel/strategy/a/c;->e:Ljava/util/Set;

    invoke-static {}, Lanet/channel/strategy/a/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 112
    invoke-static {}, Lanet/channel/d;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lanet/channel/strategy/a/c;->e:Ljava/util/Set;

    sget-object v1, Lanet/channel/strategy/a/a;->a:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method a(Lanet/channel/strategy/a/b;)V
    .locals 2

    .line 76
    iget-object v0, p0, Lanet/channel/strategy/a/c;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :catch_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lanet/channel/strategy/a/c$a;

    .line 78
    :try_start_0
    invoke-interface {v1, p1}, Lanet/channel/strategy/a/c$a;->a(Lanet/channel/strategy/a/b;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(Lanet/channel/strategy/a/c$a;)V
    .locals 1

    .line 68
    iget-object v0, p0, Lanet/channel/strategy/a/c;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Ljava/util/Set;Ljava/lang/String;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 51
    iget-boolean v0, p0, Lanet/channel/strategy/a/c;->c:Z

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    .line 55
    invoke-static {v0}, Lanet/channel/h/a;->a(I)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "awcn.HttpDispatcher"

    const-string v2, "sendAmdcRequest"

    const/4 v3, 0x0

    .line 56
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "hosts"

    aput-object v5, v0, v4

    const/4 v4, 0x1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v4

    invoke-static {v1, v2, v3, v0}, Lanet/channel/h/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 59
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "hosts"

    .line 60
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "preIp"

    .line 61
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "cv"

    .line 62
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    iget-object p1, p0, Lanet/channel/strategy/a/c;->b:Lanet/channel/strategy/a/f;

    invoke-virtual {p1, v0}, Lanet/channel/strategy/a/f;->a(Ljava/util/Map;)V

    return-void

    :cond_2
    :goto_0
    return-void
.end method

.method public a(Ljava/lang/String;)Z
    .locals 2

    .line 120
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 123
    :cond_0
    iget-object v0, p0, Lanet/channel/strategy/a/c;->d:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 125
    iget-object v1, p0, Lanet/channel/strategy/a/c;->d:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_1
    xor-int/lit8 p1, v0, 0x1

    return p1
.end method

.method public declared-synchronized b()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 104
    :try_start_0
    invoke-direct {p0}, Lanet/channel/strategy/a/c;->d()V

    .line 105
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lanet/channel/strategy/a/c;->e:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 103
    monitor-exit p0

    throw v0
.end method

.method public c()V
    .locals 2

    .line 131
    iget-object v0, p0, Lanet/channel/strategy/a/c;->d:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 132
    iget-object v0, p0, Lanet/channel/strategy/a/c;->e:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 133
    iget-object v0, p0, Lanet/channel/strategy/a/c;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method
