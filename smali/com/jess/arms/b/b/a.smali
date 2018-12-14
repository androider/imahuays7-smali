.class public abstract Lcom/jess/arms/b/b/a;
.super Ljava/lang/Object;
.source "AppModule.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jess/arms/b/b/a$a;
    }
.end annotation


# direct methods
.method static a(Landroid/app/Application;Lcom/jess/arms/b/b/a$a;)Lcom/google/gson/e;
    .locals 1
    .param p1    # Lcom/jess/arms/b/b/a$a;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 60
    new-instance v0, Lcom/google/gson/f;

    invoke-direct {v0}, Lcom/google/gson/f;-><init>()V

    if-eqz p1, :cond_0

    .line 62
    invoke-interface {p1, p0, v0}, Lcom/jess/arms/b/b/a$a;->a(Landroid/content/Context;Lcom/google/gson/f;)V

    .line 63
    :cond_0
    invoke-virtual {v0}, Lcom/google/gson/f;->c()Lcom/google/gson/e;

    move-result-object p0

    return-object p0
.end method

.method static a(Landroid/app/Application;)Lcom/jess/arms/integration/AppManager;
    .locals 1
    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 77
    invoke-static {}, Lcom/jess/arms/integration/AppManager;->getAppManager()Lcom/jess/arms/integration/AppManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/jess/arms/integration/AppManager;->init(Landroid/app/Application;)Lcom/jess/arms/integration/AppManager;

    move-result-object p0

    return-object p0
.end method

.method static a(Lcom/jess/arms/integration/cache/Cache$Factory;)Lcom/jess/arms/integration/cache/Cache;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jess/arms/integration/cache/Cache$Factory;",
            ")",
            "Lcom/jess/arms/integration/cache/Cache<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 86
    sget-object v0, Lcom/jess/arms/integration/cache/CacheType;->EXTRAS:Lcom/jess/arms/integration/cache/CacheType;

    invoke-interface {p0, v0}, Lcom/jess/arms/integration/cache/Cache$Factory;->build(Lcom/jess/arms/integration/cache/CacheType;)Lcom/jess/arms/integration/cache/Cache;

    move-result-object p0

    return-object p0
.end method

.method static a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 103
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method
