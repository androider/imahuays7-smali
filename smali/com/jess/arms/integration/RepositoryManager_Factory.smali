.class public final Lcom/jess/arms/integration/RepositoryManager_Factory;
.super Ljava/lang/Object;
.source "RepositoryManager_Factory.java"

# interfaces
.implements La/a/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "La/a/b<",
        "Lcom/jess/arms/integration/RepositoryManager;",
        ">;"
    }
.end annotation


# instance fields
.field private final mApplicationProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/app/Application;",
            ">;"
        }
    .end annotation
.end field

.field private final mCachefactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/jess/arms/integration/cache/Cache$Factory;",
            ">;"
        }
    .end annotation
.end field

.field private final mRetrofitProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lretrofit2/Retrofit;",
            ">;"
        }
    .end annotation
.end field

.field private final mRxCacheProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lio/rx_cache2/internal/j;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lretrofit2/Retrofit;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lio/rx_cache2/internal/j;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/app/Application;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/jess/arms/integration/cache/Cache$Factory;",
            ">;)V"
        }
    .end annotation

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/jess/arms/integration/RepositoryManager_Factory;->mRetrofitProvider:Ljavax/inject/Provider;

    .line 31
    iput-object p2, p0, Lcom/jess/arms/integration/RepositoryManager_Factory;->mRxCacheProvider:Ljavax/inject/Provider;

    .line 32
    iput-object p3, p0, Lcom/jess/arms/integration/RepositoryManager_Factory;->mApplicationProvider:Ljavax/inject/Provider;

    .line 33
    iput-object p4, p0, Lcom/jess/arms/integration/RepositoryManager_Factory;->mCachefactoryProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/jess/arms/integration/RepositoryManager_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lretrofit2/Retrofit;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lio/rx_cache2/internal/j;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/app/Application;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/jess/arms/integration/cache/Cache$Factory;",
            ">;)",
            "Lcom/jess/arms/integration/RepositoryManager_Factory;"
        }
    .end annotation

    .line 52
    new-instance v0, Lcom/jess/arms/integration/RepositoryManager_Factory;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/jess/arms/integration/RepositoryManager_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newRepositoryManager()Lcom/jess/arms/integration/RepositoryManager;
    .locals 1

    .line 57
    new-instance v0, Lcom/jess/arms/integration/RepositoryManager;

    invoke-direct {v0}, Lcom/jess/arms/integration/RepositoryManager;-><init>()V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/jess/arms/integration/RepositoryManager;
    .locals 2

    .line 38
    new-instance v0, Lcom/jess/arms/integration/RepositoryManager;

    invoke-direct {v0}, Lcom/jess/arms/integration/RepositoryManager;-><init>()V

    .line 39
    iget-object v1, p0, Lcom/jess/arms/integration/RepositoryManager_Factory;->mRetrofitProvider:Ljavax/inject/Provider;

    .line 40
    invoke-static {v1}, La/a/a;->b(Ljavax/inject/Provider;)La/a;

    move-result-object v1

    .line 39
    invoke-static {v0, v1}, Lcom/jess/arms/integration/RepositoryManager_MembersInjector;->injectMRetrofit(Lcom/jess/arms/integration/RepositoryManager;La/a;)V

    .line 41
    iget-object v1, p0, Lcom/jess/arms/integration/RepositoryManager_Factory;->mRxCacheProvider:Ljavax/inject/Provider;

    invoke-static {v1}, La/a/a;->b(Ljavax/inject/Provider;)La/a;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jess/arms/integration/RepositoryManager_MembersInjector;->injectMRxCache(Lcom/jess/arms/integration/RepositoryManager;La/a;)V

    .line 42
    iget-object v1, p0, Lcom/jess/arms/integration/RepositoryManager_Factory;->mApplicationProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Application;

    invoke-static {v0, v1}, Lcom/jess/arms/integration/RepositoryManager_MembersInjector;->injectMApplication(Lcom/jess/arms/integration/RepositoryManager;Landroid/app/Application;)V

    .line 43
    iget-object v1, p0, Lcom/jess/arms/integration/RepositoryManager_Factory;->mCachefactoryProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jess/arms/integration/cache/Cache$Factory;

    invoke-static {v0, v1}, Lcom/jess/arms/integration/RepositoryManager_MembersInjector;->injectMCachefactory(Lcom/jess/arms/integration/RepositoryManager;Lcom/jess/arms/integration/cache/Cache$Factory;)V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 12
    invoke-virtual {p0}, Lcom/jess/arms/integration/RepositoryManager_Factory;->get()Lcom/jess/arms/integration/RepositoryManager;

    move-result-object v0

    return-object v0
.end method
