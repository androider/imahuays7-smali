.class public Lme/jessyan/lifecyclemodel/LifecycleModelStore;
.super Ljava/lang/Object;
.source "LifecycleModelStore.java"


# instance fields
.field private final mCache:Lme/jessyan/lifecyclemodel/cache/Cache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lme/jessyan/lifecyclemodel/cache/Cache<",
            "Ljava/lang/String;",
            "Lme/jessyan/lifecyclemodel/LifecycleModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Lme/jessyan/lifecyclemodel/cache/LruCache;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Lme/jessyan/lifecyclemodel/cache/LruCache;-><init>(I)V

    iput-object v0, p0, Lme/jessyan/lifecyclemodel/LifecycleModelStore;->mCache:Lme/jessyan/lifecyclemodel/cache/Cache;

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 3

    .line 84
    iget-object v0, p0, Lme/jessyan/lifecyclemodel/LifecycleModelStore;->mCache:Lme/jessyan/lifecyclemodel/cache/Cache;

    invoke-interface {v0}, Lme/jessyan/lifecyclemodel/cache/Cache;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 85
    iget-object v2, p0, Lme/jessyan/lifecyclemodel/LifecycleModelStore;->mCache:Lme/jessyan/lifecyclemodel/cache/Cache;

    invoke-interface {v2, v1}, Lme/jessyan/lifecyclemodel/cache/Cache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lme/jessyan/lifecyclemodel/LifecycleModel;

    invoke-interface {v1}, Lme/jessyan/lifecyclemodel/LifecycleModel;->onCleared()V

    goto :goto_0

    .line 87
    :cond_0
    iget-object v0, p0, Lme/jessyan/lifecyclemodel/LifecycleModelStore;->mCache:Lme/jessyan/lifecyclemodel/cache/Cache;

    invoke-interface {v0}, Lme/jessyan/lifecyclemodel/cache/Cache;->clear()V

    return-void
.end method

.method public final get(Ljava/lang/String;)Lme/jessyan/lifecyclemodel/LifecycleModel;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lme/jessyan/lifecyclemodel/LifecycleModel;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 66
    iget-object v0, p0, Lme/jessyan/lifecyclemodel/LifecycleModelStore;->mCache:Lme/jessyan/lifecyclemodel/cache/Cache;

    invoke-interface {v0, p1}, Lme/jessyan/lifecyclemodel/cache/Cache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lme/jessyan/lifecyclemodel/LifecycleModel;

    return-object p1
.end method

.method public final put(Ljava/lang/String;Lme/jessyan/lifecyclemodel/LifecycleModel;)V
    .locals 1

    .line 51
    iget-object v0, p0, Lme/jessyan/lifecyclemodel/LifecycleModelStore;->mCache:Lme/jessyan/lifecyclemodel/cache/Cache;

    invoke-interface {v0, p1}, Lme/jessyan/lifecyclemodel/cache/Cache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lme/jessyan/lifecyclemodel/LifecycleModel;

    if-eqz v0, :cond_0

    .line 53
    invoke-interface {v0}, Lme/jessyan/lifecyclemodel/LifecycleModel;->onCleared()V

    .line 55
    :cond_0
    iget-object v0, p0, Lme/jessyan/lifecyclemodel/LifecycleModelStore;->mCache:Lme/jessyan/lifecyclemodel/cache/Cache;

    invoke-interface {v0, p1, p2}, Lme/jessyan/lifecyclemodel/cache/Cache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final remove(Ljava/lang/String;)Lme/jessyan/lifecyclemodel/LifecycleModel;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lme/jessyan/lifecyclemodel/LifecycleModel;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 77
    iget-object v0, p0, Lme/jessyan/lifecyclemodel/LifecycleModelStore;->mCache:Lme/jessyan/lifecyclemodel/cache/Cache;

    invoke-interface {v0, p1}, Lme/jessyan/lifecyclemodel/cache/Cache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lme/jessyan/lifecyclemodel/LifecycleModel;

    return-object p1
.end method
