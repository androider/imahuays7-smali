.class public interface abstract Lcom/jess/arms/b/a/a;
.super Ljava/lang/Object;
.source "AppComponent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jess/arms/b/a/a$a;
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# virtual methods
.method public abstract a()Landroid/app/Application;
.end method

.method public abstract a(Lcom/jess/arms/a/a/c;)V
.end method

.method public abstract b()Lcom/jess/arms/integration/AppManager;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract c()Lcom/jess/arms/integration/IRepositoryManager;
.end method

.method public abstract d()Lme/jessyan/rxerrorhandler/core/RxErrorHandler;
.end method

.method public abstract e()Lcom/jess/arms/http/imageloader/c;
.end method

.method public abstract f()Lokhttp3/OkHttpClient;
.end method

.method public abstract g()Lcom/google/gson/e;
.end method

.method public abstract h()Ljava/io/File;
.end method

.method public abstract i()Lcom/jess/arms/integration/cache/Cache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/jess/arms/integration/cache/Cache<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method

.method public abstract j()Lcom/jess/arms/integration/cache/Cache$Factory;
.end method
