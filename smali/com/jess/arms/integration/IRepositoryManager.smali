.class public interface abstract Lcom/jess/arms/integration/IRepositoryManager;
.super Ljava/lang/Object;
.source "IRepositoryManager.java"


# virtual methods
.method public abstract clearAllCache()V
.end method

.method public abstract getContext()Landroid/content/Context;
.end method

.method public abstract obtainCacheService(Ljava/lang/Class;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation
.end method

.method public abstract obtainRetrofitService(Ljava/lang/Class;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation
.end method
