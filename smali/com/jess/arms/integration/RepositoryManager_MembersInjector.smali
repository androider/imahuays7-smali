.class public final Lcom/jess/arms/integration/RepositoryManager_MembersInjector;
.super Ljava/lang/Object;
.source "RepositoryManager_MembersInjector.java"

# interfaces
.implements La/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "La/b<",
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

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/jess/arms/integration/RepositoryManager_MembersInjector;->mRetrofitProvider:Ljavax/inject/Provider;

    .line 32
    iput-object p2, p0, Lcom/jess/arms/integration/RepositoryManager_MembersInjector;->mRxCacheProvider:Ljavax/inject/Provider;

    .line 33
    iput-object p3, p0, Lcom/jess/arms/integration/RepositoryManager_MembersInjector;->mApplicationProvider:Ljavax/inject/Provider;

    .line 34
    iput-object p4, p0, Lcom/jess/arms/integration/RepositoryManager_MembersInjector;->mCachefactoryProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)La/b;
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
            "La/b<",
            "Lcom/jess/arms/integration/RepositoryManager;",
            ">;"
        }
    .end annotation

    .line 42
    new-instance v0, Lcom/jess/arms/integration/RepositoryManager_MembersInjector;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/jess/arms/integration/RepositoryManager_MembersInjector;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static injectMApplication(Lcom/jess/arms/integration/RepositoryManager;Landroid/app/Application;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/jess/arms/integration/RepositoryManager;->mApplication:Landroid/app/Application;

    return-void
.end method

.method public static injectMCachefactory(Lcom/jess/arms/integration/RepositoryManager;Lcom/jess/arms/integration/cache/Cache$Factory;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/jess/arms/integration/RepositoryManager;->mCachefactory:Lcom/jess/arms/integration/cache/Cache$Factory;

    return-void
.end method

.method public static injectMRetrofit(Lcom/jess/arms/integration/RepositoryManager;La/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jess/arms/integration/RepositoryManager;",
            "La/a<",
            "Lretrofit2/Retrofit;",
            ">;)V"
        }
    .end annotation

    .line 55
    iput-object p1, p0, Lcom/jess/arms/integration/RepositoryManager;->mRetrofit:La/a;

    return-void
.end method

.method public static injectMRxCache(Lcom/jess/arms/integration/RepositoryManager;La/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jess/arms/integration/RepositoryManager;",
            "La/a<",
            "Lio/rx_cache2/internal/j;",
            ">;)V"
        }
    .end annotation

    .line 59
    iput-object p1, p0, Lcom/jess/arms/integration/RepositoryManager;->mRxCache:La/a;

    return-void
.end method


# virtual methods
.method public injectMembers(Lcom/jess/arms/integration/RepositoryManager;)V
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/jess/arms/integration/RepositoryManager_MembersInjector;->mRetrofitProvider:Ljavax/inject/Provider;

    invoke-static {v0}, La/a/a;->b(Ljavax/inject/Provider;)La/a;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/jess/arms/integration/RepositoryManager_MembersInjector;->injectMRetrofit(Lcom/jess/arms/integration/RepositoryManager;La/a;)V

    .line 49
    iget-object v0, p0, Lcom/jess/arms/integration/RepositoryManager_MembersInjector;->mRxCacheProvider:Ljavax/inject/Provider;

    invoke-static {v0}, La/a/a;->b(Ljavax/inject/Provider;)La/a;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/jess/arms/integration/RepositoryManager_MembersInjector;->injectMRxCache(Lcom/jess/arms/integration/RepositoryManager;La/a;)V

    .line 50
    iget-object v0, p0, Lcom/jess/arms/integration/RepositoryManager_MembersInjector;->mApplicationProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    invoke-static {p1, v0}, Lcom/jess/arms/integration/RepositoryManager_MembersInjector;->injectMApplication(Lcom/jess/arms/integration/RepositoryManager;Landroid/app/Application;)V

    .line 51
    iget-object v0, p0, Lcom/jess/arms/integration/RepositoryManager_MembersInjector;->mCachefactoryProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jess/arms/integration/cache/Cache$Factory;

    invoke-static {p1, v0}, Lcom/jess/arms/integration/RepositoryManager_MembersInjector;->injectMCachefactory(Lcom/jess/arms/integration/RepositoryManager;Lcom/jess/arms/integration/cache/Cache$Factory;)V

    return-void
.end method

.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .line 13
    check-cast p1, Lcom/jess/arms/integration/RepositoryManager;

    invoke-virtual {p0, p1}, Lcom/jess/arms/integration/RepositoryManager_MembersInjector;->injectMembers(Lcom/jess/arms/integration/RepositoryManager;)V

    return-void
.end method
