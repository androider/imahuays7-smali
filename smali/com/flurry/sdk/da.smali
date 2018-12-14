.class public Lcom/flurry/sdk/da;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/flurry/sdk/er;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "da"


# instance fields
.field private final b:Lcom/flurry/sdk/cr;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/cr<",
            "Ljava/lang/Object;",
            "TT;>;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "TT;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "TT;",
            "Ljava/util/concurrent/Future<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/TimeUnit;",
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;)V"
        }
    .end annotation

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Lcom/flurry/sdk/cr;

    invoke-direct {v0}, Lcom/flurry/sdk/cr;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/da;->b:Lcom/flurry/sdk/cr;

    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/da;->c:Ljava/util/HashMap;

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/da;->d:Ljava/util/HashMap;

    .line 47
    new-instance v0, Lcom/flurry/sdk/da$1;

    invoke-direct {v0, p0, p2, p3}, Lcom/flurry/sdk/da$1;-><init>(Lcom/flurry/sdk/da;Ljava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v0, p0, Lcom/flurry/sdk/da;->e:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 106
    iget-object p2, p0, Lcom/flurry/sdk/da;->e:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance p3, Lcom/flurry/sdk/da$2;

    invoke-direct {p3, p0}, Lcom/flurry/sdk/da$2;-><init>(Lcom/flurry/sdk/da;)V

    invoke-virtual {p2, p3}, Ljava/util/concurrent/ThreadPoolExecutor;->setRejectedExecutionHandler(Ljava/util/concurrent/RejectedExecutionHandler;)V

    .line 131
    new-instance p2, Lcom/flurry/sdk/ej;

    invoke-direct {p2, p1}, Lcom/flurry/sdk/ej;-><init>(Ljava/lang/String;)V

    .line 132
    iget-object p1, p0, Lcom/flurry/sdk/da;->e:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {p1, p2}, Ljava/util/concurrent/ThreadPoolExecutor;->setThreadFactory(Ljava/util/concurrent/ThreadFactory;)V

    return-void
.end method

.method static synthetic a(Ljava/lang/Runnable;)Lcom/flurry/sdk/er;
    .locals 4

    .line 2139
    instance-of v0, p0, Lcom/flurry/sdk/cz;

    if-eqz v0, :cond_0

    .line 2140
    check-cast p0, Lcom/flurry/sdk/cz;

    .line 2141
    invoke-virtual {p0}, Lcom/flurry/sdk/cz;->a()Ljava/lang/Runnable;

    move-result-object p0

    check-cast p0, Lcom/flurry/sdk/er;

    goto :goto_0

    .line 2142
    :cond_0
    instance-of v0, p0, Lcom/flurry/sdk/er;

    if-eqz v0, :cond_1

    .line 2143
    check-cast p0, Lcom/flurry/sdk/er;

    goto :goto_0

    :cond_1
    const/4 v0, 0x6

    .line 2145
    sget-object v1, Lcom/flurry/sdk/da;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unknown runnable class: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, v1, p0}, Lcom/flurry/sdk/dc;->a(ILjava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method static synthetic a(Lcom/flurry/sdk/da;)Ljava/util/HashMap;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/flurry/sdk/da;->d:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic a(Lcom/flurry/sdk/da;Lcom/flurry/sdk/er;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lcom/flurry/sdk/da;->a(Lcom/flurry/sdk/er;)V

    return-void
.end method

.method private declared-synchronized a(Lcom/flurry/sdk/er;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    monitor-enter p0

    .line 152
    :try_start_0
    iget-object v0, p0, Lcom/flurry/sdk/da;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/flurry/sdk/da;->b(Ljava/lang/Object;Lcom/flurry/sdk/er;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 153
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 151
    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized b(Lcom/flurry/sdk/er;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    monitor-enter p0

    if-nez p1, :cond_0

    .line 197
    monitor-exit p0

    return-void

    .line 201
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/flurry/sdk/da;->d:Ljava/util/HashMap;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 202
    :try_start_1
    iget-object v1, p0, Lcom/flurry/sdk/da;->d:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Future;

    .line 203
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 204
    :try_start_2
    invoke-direct {p0, p1}, Lcom/flurry/sdk/da;->a(Lcom/flurry/sdk/er;)V

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 207
    invoke-interface {v1, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 210
    :cond_1
    new-instance v0, Lcom/flurry/sdk/da$3;

    invoke-direct {v0, p0, p1}, Lcom/flurry/sdk/da$3;-><init>(Lcom/flurry/sdk/da;Lcom/flurry/sdk/er;)V

    .line 215
    invoke-virtual {v0}, Lcom/flurry/sdk/da$3;->run()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 216
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 203
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p1

    .line 195
    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized b(Ljava/lang/Object;Lcom/flurry/sdk/er;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "TT;)V"
        }
    .end annotation

    monitor-enter p0

    .line 156
    :try_start_0
    iget-object v0, p0, Lcom/flurry/sdk/da;->b:Lcom/flurry/sdk/cr;

    invoke-virtual {v0, p1, p2}, Lcom/flurry/sdk/cr;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 157
    iget-object p1, p0, Lcom/flurry/sdk/da;->c:Ljava/util/HashMap;

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 158
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 155
    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized c(Ljava/lang/Object;Lcom/flurry/sdk/er;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "TT;)V"
        }
    .end annotation

    monitor-enter p0

    .line 170
    :try_start_0
    iget-object v0, p0, Lcom/flurry/sdk/da;->b:Lcom/flurry/sdk/cr;

    invoke-virtual {v0, p1, p2}, Lcom/flurry/sdk/cr;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 171
    iget-object v0, p0, Lcom/flurry/sdk/da;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 172
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 169
    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public final declared-synchronized a(Ljava/lang/Object;)V
    .locals 2

    monitor-enter p0

    if-nez p1, :cond_0

    .line 185
    monitor-exit p0

    return-void

    .line 188
    :cond_0
    :try_start_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 189
    iget-object v1, p0, Lcom/flurry/sdk/da;->b:Lcom/flurry/sdk/cr;

    invoke-virtual {v1, p1}, Lcom/flurry/sdk/cr;->a(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 190
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/er;

    .line 191
    invoke-direct {p0, v0}, Lcom/flurry/sdk/da;->b(Lcom/flurry/sdk/er;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 193
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 183
    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized a(Ljava/lang/Object;Lcom/flurry/sdk/er;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "TT;)V"
        }
    .end annotation

    monitor-enter p0

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 165
    :cond_0
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/flurry/sdk/da;->c(Ljava/lang/Object;Lcom/flurry/sdk/er;)V

    .line 166
    iget-object p1, p0, Lcom/flurry/sdk/da;->e:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {p1, p2}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 167
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 160
    monitor-exit p0

    throw p1

    .line 162
    :cond_1
    :goto_0
    monitor-exit p0

    return-void
.end method

.method public final declared-synchronized c()V
    .locals 2

    monitor-enter p0

    .line 175
    :try_start_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 176
    iget-object v1, p0, Lcom/flurry/sdk/da;->b:Lcom/flurry/sdk/cr;

    .line 1153
    iget-object v1, v1, Lcom/flurry/sdk/cr;->a:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 176
    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 178
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 179
    invoke-virtual {p0, v1}, Lcom/flurry/sdk/da;->a(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 181
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 174
    monitor-exit p0

    throw v0
.end method
