.class public interface abstract Lcom/jess/arms/integration/ConfigModule;
.super Ljava/lang/Object;
.source "ConfigModule.java"


# virtual methods
.method public abstract applyOptions(Landroid/content/Context;Lcom/jess/arms/b/b/n$a;)V
.end method

.method public abstract injectActivityLifecycle(Landroid/content/Context;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Landroid/app/Application$ActivityLifecycleCallbacks;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract injectAppLifecycle(Landroid/content/Context;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/jess/arms/a/a/e;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract injectFragmentLifecycle(Landroid/content/Context;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Landroid/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;",
            ">;)V"
        }
    .end annotation
.end method
