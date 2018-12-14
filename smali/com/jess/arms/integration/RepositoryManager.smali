.class public Lcom/jess/arms/integration/RepositoryManager;
.super Ljava/lang/Object;
.source "RepositoryManager.java"

# interfaces
.implements Lcom/jess/arms/integration/IRepositoryManager;


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field mApplication:Landroid/app/Application;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mCacheServiceCache:Lcom/jess/arms/integration/cache/Cache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/jess/arms/integration/cache/Cache<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field mCachefactory:Lcom/jess/arms/integration/cache/Cache$Factory;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mRetrofit:La/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La/a<",
            "Lretrofit2/Retrofit;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mRetrofitServiceCache:Lcom/jess/arms/integration/cache/Cache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/jess/arms/integration/cache/Cache<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field mRxCache:La/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La/a<",
            "Lio/rx_cache2/internal/j;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clearAllCache()V
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/jess/arms/integration/RepositoryManager;->mRxCache:La/a;

    invoke-interface {v0}, La/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/rx_cache2/internal/j;

    invoke-virtual {v0}, Lio/rx_cache2/internal/j;->a()Lio/reactivex/Observable;

    move-result-object v0

    invoke-virtual {v0}, Lio/reactivex/Observable;->subscribe()Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/jess/arms/integration/RepositoryManager;->mApplication:Landroid/app/Application;

    return-object v0
.end method

.method public declared-synchronized obtainCacheService(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    monitor-enter p0

    .line 90
    :try_start_0
    iget-object v0, p0, Lcom/jess/arms/integration/RepositoryManager;->mCacheServiceCache:Lcom/jess/arms/integration/cache/Cache;

    if-nez v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/jess/arms/integration/RepositoryManager;->mCachefactory:Lcom/jess/arms/integration/cache/Cache$Factory;

    sget-object v1, Lcom/jess/arms/integration/cache/CacheType;->CACHE_SERVICE_CACHE:Lcom/jess/arms/integration/cache/CacheType;

    invoke-interface {v0, v1}, Lcom/jess/arms/integration/cache/Cache$Factory;->build(Lcom/jess/arms/integration/cache/CacheType;)Lcom/jess/arms/integration/cache/Cache;

    move-result-object v0

    iput-object v0, p0, Lcom/jess/arms/integration/RepositoryManager;->mCacheServiceCache:Lcom/jess/arms/integration/cache/Cache;

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/jess/arms/integration/RepositoryManager;->mCacheServiceCache:Lcom/jess/arms/integration/cache/Cache;

    const-string v1, "Cannot return null from a Cache.Factory#build(int) method"

    invoke-static {v0, v1}, Lcom/jess/arms/c/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    iget-object v0, p0, Lcom/jess/arms/integration/RepositoryManager;->mCacheServiceCache:Lcom/jess/arms/integration/cache/Cache;

    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/jess/arms/integration/cache/Cache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 95
    iget-object v0, p0, Lcom/jess/arms/integration/RepositoryManager;->mRxCache:La/a;

    invoke-interface {v0}, La/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/rx_cache2/internal/j;

    invoke-virtual {v0, p1}, Lio/rx_cache2/internal/j;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 96
    iget-object v1, p0, Lcom/jess/arms/integration/RepositoryManager;->mCacheServiceCache:Lcom/jess/arms/integration/cache/Cache;

    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1, v0}, Lcom/jess/arms/integration/cache/Cache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    :cond_1
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    .line 89
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized obtainRetrofitService(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    monitor-enter p0

    .line 70
    :try_start_0
    iget-object v0, p0, Lcom/jess/arms/integration/RepositoryManager;->mRetrofitServiceCache:Lcom/jess/arms/integration/cache/Cache;

    if-nez v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/jess/arms/integration/RepositoryManager;->mCachefactory:Lcom/jess/arms/integration/cache/Cache$Factory;

    sget-object v1, Lcom/jess/arms/integration/cache/CacheType;->RETROFIT_SERVICE_CACHE:Lcom/jess/arms/integration/cache/CacheType;

    invoke-interface {v0, v1}, Lcom/jess/arms/integration/cache/Cache$Factory;->build(Lcom/jess/arms/integration/cache/CacheType;)Lcom/jess/arms/integration/cache/Cache;

    move-result-object v0

    iput-object v0, p0, Lcom/jess/arms/integration/RepositoryManager;->mRetrofitServiceCache:Lcom/jess/arms/integration/cache/Cache;

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/jess/arms/integration/RepositoryManager;->mRetrofitServiceCache:Lcom/jess/arms/integration/cache/Cache;

    const-string v1, "Cannot return null from a Cache.Factory#build(int) method"

    invoke-static {v0, v1}, Lcom/jess/arms/c/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    iget-object v0, p0, Lcom/jess/arms/integration/RepositoryManager;->mRetrofitServiceCache:Lcom/jess/arms/integration/cache/Cache;

    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/jess/arms/integration/cache/Cache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 75
    iget-object v0, p0, Lcom/jess/arms/integration/RepositoryManager;->mRetrofit:La/a;

    invoke-interface {v0}, La/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lretrofit2/Retrofit;

    invoke-virtual {v0, p1}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 76
    iget-object v1, p0, Lcom/jess/arms/integration/RepositoryManager;->mRetrofitServiceCache:Lcom/jess/arms/integration/cache/Cache;

    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1, v0}, Lcom/jess/arms/integration/cache/Cache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    :cond_1
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    .line 69
    monitor-exit p0

    throw p1
.end method
