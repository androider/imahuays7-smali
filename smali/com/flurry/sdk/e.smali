.class public Lcom/flurry/sdk/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/sdk/e$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String; = "e"

.field private static volatile i:Lcom/flurry/sdk/e;

.field private static final m:Ljava/lang/Object;

.field private static o:Lcom/flurry/sdk/o;


# instance fields
.field public b:Lcom/flurry/sdk/n;

.field public c:Lcom/flurry/sdk/f;

.field public final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/flurry/sdk/a;",
            "Landroid/util/Pair<",
            "Lcom/flurry/sdk/k;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/os/Handler;",
            ">;>;>;"
        }
    .end annotation
.end field

.field public final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/flurry/sdk/k;",
            "Landroid/util/Pair<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field

.field public volatile f:Z

.field public volatile g:Z

.field public h:Lcom/flurry/sdk/e$a;

.field private j:Lcom/flurry/sdk/b;

.field private k:Lcom/flurry/sdk/i;

.field private l:Lcom/flurry/sdk/t;

.field private volatile n:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 80
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/flurry/sdk/e;->m:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 114
    invoke-direct {p0, v0}, Lcom/flurry/sdk/e;-><init>(B)V

    return-void
.end method

.method private constructor <init>(B)V
    .locals 6

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/flurry/sdk/e;->d:Ljava/util/Map;

    .line 78
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/flurry/sdk/e;->e:Ljava/util/Map;

    const/4 p1, 0x0

    .line 81
    iput-boolean p1, p0, Lcom/flurry/sdk/e;->n:Z

    .line 82
    iput-boolean p1, p0, Lcom/flurry/sdk/e;->f:Z

    .line 83
    iput-boolean p1, p0, Lcom/flurry/sdk/e;->g:Z

    .line 84
    sget-object v0, Lcom/flurry/sdk/e$a;->d:Lcom/flurry/sdk/e$a;

    iput-object v0, p0, Lcom/flurry/sdk/e;->h:Lcom/flurry/sdk/e$a;

    const/4 v0, 0x0

    .line 122
    sput-object v0, Lcom/flurry/sdk/e;->o:Lcom/flurry/sdk/o;

    .line 124
    invoke-static {}, Lcom/flurry/sdk/k;->a()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/flurry/sdk/k;

    .line 125
    iget-object v2, p0, Lcom/flurry/sdk/e;->e:Ljava/util/Map;

    new-instance v3, Landroid/util/Pair;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1132
    :cond_0
    new-instance p1, Lcom/flurry/sdk/i;

    invoke-direct {p1}, Lcom/flurry/sdk/i;-><init>()V

    iput-object p1, p0, Lcom/flurry/sdk/e;->k:Lcom/flurry/sdk/i;

    .line 1133
    new-instance p1, Lcom/flurry/sdk/n;

    invoke-direct {p1}, Lcom/flurry/sdk/n;-><init>()V

    iput-object p1, p0, Lcom/flurry/sdk/e;->b:Lcom/flurry/sdk/n;

    .line 1134
    new-instance p1, Lcom/flurry/sdk/f;

    invoke-direct {p1}, Lcom/flurry/sdk/f;-><init>()V

    iput-object p1, p0, Lcom/flurry/sdk/e;->c:Lcom/flurry/sdk/f;

    .line 1135
    new-instance p1, Lcom/flurry/sdk/t;

    invoke-direct {p1}, Lcom/flurry/sdk/t;-><init>()V

    iput-object p1, p0, Lcom/flurry/sdk/e;->l:Lcom/flurry/sdk/t;

    .line 1137
    new-instance p1, Lcom/flurry/sdk/e$1;

    invoke-direct {p1, p0}, Lcom/flurry/sdk/e$1;-><init>(Lcom/flurry/sdk/e;)V

    invoke-static {p1}, Lcom/flurry/sdk/s;->a(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method static synthetic a(Lcom/flurry/sdk/e;Lcom/flurry/sdk/e$a;)Lcom/flurry/sdk/e$a;
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/flurry/sdk/e;->h:Lcom/flurry/sdk/e$a;

    return-object p1
.end method

.method public static declared-synchronized a()Lcom/flurry/sdk/e;
    .locals 2

    const-class v0, Lcom/flurry/sdk/e;

    monitor-enter v0

    .line 96
    :try_start_0
    invoke-static {}, Lcom/flurry/sdk/e;->f()Lcom/flurry/sdk/e;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static synthetic a(Lcom/flurry/sdk/e;)Lcom/flurry/sdk/f;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/flurry/sdk/e;->c:Lcom/flurry/sdk/f;

    return-object p0
.end method

.method static synthetic b(Lcom/flurry/sdk/e;)Lcom/flurry/sdk/n;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/flurry/sdk/e;->b:Lcom/flurry/sdk/n;

    return-object p0
.end method

.method public static b()Lcom/flurry/sdk/o;
    .locals 1

    .line 187
    sget-object v0, Lcom/flurry/sdk/e;->o:Lcom/flurry/sdk/o;

    return-object v0
.end method

.method static synthetic b(Lcom/flurry/sdk/e;Lcom/flurry/sdk/e$a;)V
    .locals 5

    .line 1354
    iget-object v0, p0, Lcom/flurry/sdk/e;->d:Ljava/util/Map;

    monitor-enter v0

    .line 1356
    :try_start_0
    iget-object v1, p0, Lcom/flurry/sdk/e;->d:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1357
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/flurry/sdk/a;

    .line 1358
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Handler;

    .line 1359
    new-instance v4, Lcom/flurry/sdk/e$3;

    invoke-direct {v4, p0, p1, v3}, Lcom/flurry/sdk/e$3;-><init>(Lcom/flurry/sdk/e;Lcom/flurry/sdk/e$a;Lcom/flurry/sdk/a;)V

    if-nez v2, :cond_0

    .line 1377
    invoke-static {}, Lcom/flurry/sdk/cl;->a()Lcom/flurry/sdk/cl;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/flurry/sdk/cl;->a(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 1379
    :cond_0
    invoke-virtual {v2, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 1382
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method static synthetic c(Lcom/flurry/sdk/e;)V
    .locals 2

    .line 1218
    sget-object v0, Lcom/flurry/sdk/e;->m:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 1219
    :try_start_0
    iput-boolean v1, p0, Lcom/flurry/sdk/e;->n:Z

    .line 1220
    sget-object p0, Lcom/flurry/sdk/e;->m:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 1221
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method static synthetic d(Lcom/flurry/sdk/e;)Ljava/util/Map;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/flurry/sdk/e;->e:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic e()Ljava/lang/String;
    .locals 1

    .line 28
    sget-object v0, Lcom/flurry/sdk/e;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/flurry/sdk/e;)Z
    .locals 1

    const/4 v0, 0x0

    .line 28
    iput-boolean v0, p0, Lcom/flurry/sdk/e;->f:Z

    return v0
.end method

.method private static declared-synchronized f()Lcom/flurry/sdk/e;
    .locals 3

    const-class v0, Lcom/flurry/sdk/e;

    monitor-enter v0

    .line 106
    :try_start_0
    sget-object v1, Lcom/flurry/sdk/e;->i:Lcom/flurry/sdk/e;

    if-nez v1, :cond_0

    .line 107
    new-instance v1, Lcom/flurry/sdk/e;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/flurry/sdk/e;-><init>(B)V

    sput-object v1, Lcom/flurry/sdk/e;->i:Lcom/flurry/sdk/e;

    .line 109
    :cond_0
    sget-object v1, Lcom/flurry/sdk/e;->i:Lcom/flurry/sdk/e;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 105
    monitor-exit v0

    throw v1
.end method

.method static synthetic f(Lcom/flurry/sdk/e;)Z
    .locals 1

    const/4 v0, 0x1

    .line 28
    iput-boolean v0, p0, Lcom/flurry/sdk/e;->g:Z

    return v0
.end method

.method static synthetic g(Lcom/flurry/sdk/e;)Lcom/flurry/sdk/e$a;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/flurry/sdk/e;->h:Lcom/flurry/sdk/e$a;

    return-object p0
.end method

.method private g()V
    .locals 4

    .line 206
    sget-object v0, Lcom/flurry/sdk/e;->m:Ljava/lang/Object;

    monitor-enter v0

    .line 207
    :goto_0
    :try_start_0
    iget-boolean v1, p0, Lcom/flurry/sdk/e;->n:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 209
    :try_start_1
    sget-object v1, Lcom/flurry/sdk/e;->m:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 211
    :try_start_2
    sget-object v2, Lcom/flurry/sdk/e;->a:Ljava/lang/String;

    const-string v3, "Interrupted Exception!"

    invoke-static {v2, v3, v1}, Lcom/flurry/sdk/dc;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 214
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method static synthetic h(Lcom/flurry/sdk/e;)Z
    .locals 0

    .line 28
    iget-boolean p0, p0, Lcom/flurry/sdk/e;->f:Z

    return p0
.end method


# virtual methods
.method public final a(Lcom/flurry/sdk/k;Z)V
    .locals 5

    .line 389
    iget-object v0, p0, Lcom/flurry/sdk/e;->d:Ljava/util/Map;

    monitor-enter v0

    .line 391
    :try_start_0
    iget-object v1, p0, Lcom/flurry/sdk/e;->d:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    if-eqz p1, :cond_1

    .line 392
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-ne p1, v3, :cond_0

    .line 396
    :cond_1
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/flurry/sdk/a;

    .line 397
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Handler;

    .line 398
    new-instance v4, Lcom/flurry/sdk/e$4;

    invoke-direct {v4, p0, v3, p2}, Lcom/flurry/sdk/e$4;-><init>(Lcom/flurry/sdk/e;Lcom/flurry/sdk/a;Z)V

    if-nez v2, :cond_2

    .line 406
    invoke-static {}, Lcom/flurry/sdk/cl;->a()Lcom/flurry/sdk/cl;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/flurry/sdk/cl;->a(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 408
    :cond_2
    invoke-virtual {v2, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 411
    :cond_3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final c()Lcom/flurry/sdk/b;
    .locals 3

    .line 196
    iget-object v0, p0, Lcom/flurry/sdk/e;->j:Lcom/flurry/sdk/b;

    if-nez v0, :cond_0

    .line 197
    invoke-direct {p0}, Lcom/flurry/sdk/e;->g()V

    .line 199
    new-instance v0, Lcom/flurry/sdk/b;

    iget-object v1, p0, Lcom/flurry/sdk/e;->k:Lcom/flurry/sdk/i;

    iget-object v2, p0, Lcom/flurry/sdk/e;->b:Lcom/flurry/sdk/n;

    invoke-direct {v0, v1, v2}, Lcom/flurry/sdk/b;-><init>(Lcom/flurry/sdk/i;Lcom/flurry/sdk/n;)V

    iput-object v0, p0, Lcom/flurry/sdk/e;->j:Lcom/flurry/sdk/b;

    .line 202
    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/e;->j:Lcom/flurry/sdk/b;

    return-object v0
.end method

.method public final d()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/flurry/sdk/m;",
            ">;"
        }
    .end annotation

    .line 446
    iget-object v0, p0, Lcom/flurry/sdk/e;->b:Lcom/flurry/sdk/n;

    if-eqz v0, :cond_0

    .line 447
    iget-object v0, p0, Lcom/flurry/sdk/e;->b:Lcom/flurry/sdk/n;

    invoke-virtual {v0}, Lcom/flurry/sdk/n;->a()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 502
    invoke-direct {p0}, Lcom/flurry/sdk/e;->g()V

    .line 504
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 505
    invoke-virtual {p0}, Lcom/flurry/sdk/e;->d()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 507
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 508
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/flurry/sdk/m;

    .line 509
    invoke-virtual {v2}, Lcom/flurry/sdk/m;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const-string v1, ","

    .line 511
    invoke-static {v1, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    const-string v0, "No variants were found!"

    :goto_1
    return-object v0
.end method
