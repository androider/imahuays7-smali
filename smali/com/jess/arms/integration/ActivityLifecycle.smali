.class public Lcom/jess/arms/integration/ActivityLifecycle;
.super Ljava/lang/Object;
.source "ActivityLifecycle.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field mAppManager:Lcom/jess/arms/integration/AppManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mApplication:Landroid/app/Application;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mExtras:Lcom/jess/arms/integration/cache/Cache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/jess/arms/integration/cache/Cache<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mFragmentLifecycle:La/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La/a<",
            "Landroid/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mFragmentLifecycles:La/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La/a<",
            "Ljava/util/List<",
            "Landroid/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;",
            ">;>;"
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

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private fetchActivityDelegate(Landroid/app/Activity;)Lcom/jess/arms/a/a/a;
    .locals 1

    .line 187
    instance-of v0, p1, Lcom/jess/arms/a/a/h;

    if-eqz v0, :cond_0

    .line 188
    check-cast p1, Lcom/jess/arms/a/a/h;

    invoke-direct {p0, p1}, Lcom/jess/arms/integration/ActivityLifecycle;->getCacheFromActivity(Lcom/jess/arms/a/a/h;)Lcom/jess/arms/integration/cache/Cache;

    move-result-object p1

    const-string v0, "Keep=ACTIVITY_DELEGATE"

    .line 189
    invoke-interface {p1, v0}, Lcom/jess/arms/integration/cache/Cache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jess/arms/a/a/a;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method private getCacheFromActivity(Lcom/jess/arms/a/a/h;)Lcom/jess/arms/integration/cache/Cache;
    .locals 4
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jess/arms/a/a/h;",
            ")",
            "Lcom/jess/arms/integration/cache/Cache<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 196
    invoke-interface {p1}, Lcom/jess/arms/a/a/h;->j_()Lcom/jess/arms/integration/cache/Cache;

    move-result-object p1

    const-string v0, "%s cannot be null on Activity"

    const/4 v1, 0x1

    .line 197
    new-array v1, v1, [Ljava/lang/Object;

    const-class v2, Lcom/jess/arms/integration/cache/Cache;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p1, v0, v1}, Lcom/jess/arms/c/g;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method private registerFragmentCallbacks(Landroid/app/Activity;)V
    .locals 5

    .line 163
    instance-of v0, p1, Lcom/jess/arms/a/a/h;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/jess/arms/a/a/h;

    invoke-interface {v0}, Lcom/jess/arms/a/a/h;->h_()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 164
    :goto_0
    instance-of v2, p1, Landroid/support/v4/app/FragmentActivity;

    if-eqz v2, :cond_3

    if-eqz v0, :cond_3

    .line 168
    check-cast p1, Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    iget-object v2, p0, Lcom/jess/arms/integration/ActivityLifecycle;->mFragmentLifecycle:La/a;

    invoke-interface {v2}, La/a;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/app/FragmentManager;->registerFragmentLifecycleCallbacks(Landroid/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;Z)V

    .line 170
    iget-object v0, p0, Lcom/jess/arms/integration/ActivityLifecycle;->mExtras:Lcom/jess/arms/integration/cache/Cache;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Keep="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v3, Lcom/jess/arms/integration/ConfigModule;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/jess/arms/integration/cache/Cache;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 171
    iget-object v0, p0, Lcom/jess/arms/integration/ActivityLifecycle;->mExtras:Lcom/jess/arms/integration/cache/Cache;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Keep="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v3, Lcom/jess/arms/integration/ConfigModule;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/jess/arms/integration/cache/Cache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 172
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jess/arms/integration/ConfigModule;

    .line 173
    iget-object v3, p0, Lcom/jess/arms/integration/ActivityLifecycle;->mApplication:Landroid/app/Application;

    iget-object v4, p0, Lcom/jess/arms/integration/ActivityLifecycle;->mFragmentLifecycles:La/a;

    invoke-interface {v4}, La/a;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v2, v3, v4}, Lcom/jess/arms/integration/ConfigModule;->injectFragmentLifecycle(Landroid/content/Context;Ljava/util/List;)V

    goto :goto_1

    .line 175
    :cond_1
    iget-object v0, p0, Lcom/jess/arms/integration/ActivityLifecycle;->mExtras:Lcom/jess/arms/integration/cache/Cache;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Keep="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v3, Lcom/jess/arms/integration/ConfigModule;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/jess/arms/integration/cache/Cache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    :cond_2
    iget-object v0, p0, Lcom/jess/arms/integration/ActivityLifecycle;->mFragmentLifecycles:La/a;

    invoke-interface {v0}, La/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;

    .line 180
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3, v2, v1}, Landroid/support/v4/app/FragmentManager;->registerFragmentLifecycleCallbacks(Landroid/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;Z)V

    goto :goto_2

    :cond_3
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 3

    .line 75
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 76
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "is_not_add_activity_list"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    :cond_0
    if-nez v1, :cond_1

    .line 79
    iget-object v0, p0, Lcom/jess/arms/integration/ActivityLifecycle;->mAppManager:Lcom/jess/arms/integration/AppManager;

    invoke-virtual {v0, p1}, Lcom/jess/arms/integration/AppManager;->addActivity(Landroid/app/Activity;)V

    .line 82
    :cond_1
    instance-of v0, p1, Lcom/jess/arms/a/a/h;

    if-eqz v0, :cond_3

    .line 83
    invoke-direct {p0, p1}, Lcom/jess/arms/integration/ActivityLifecycle;->fetchActivityDelegate(Landroid/app/Activity;)Lcom/jess/arms/a/a/a;

    move-result-object v0

    if-nez v0, :cond_2

    .line 85
    move-object v0, p1

    check-cast v0, Lcom/jess/arms/a/a/h;

    invoke-direct {p0, v0}, Lcom/jess/arms/integration/ActivityLifecycle;->getCacheFromActivity(Lcom/jess/arms/a/a/h;)Lcom/jess/arms/integration/cache/Cache;

    move-result-object v0

    .line 86
    new-instance v1, Lcom/jess/arms/a/a/b;

    invoke-direct {v1, p1}, Lcom/jess/arms/a/a/b;-><init>(Landroid/app/Activity;)V

    const-string v2, "Keep=ACTIVITY_DELEGATE"

    .line 89
    invoke-interface {v0, v2, v1}, Lcom/jess/arms/integration/cache/Cache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v1

    .line 91
    :cond_2
    invoke-interface {v0, p2}, Lcom/jess/arms/a/a/a;->a(Landroid/os/Bundle;)V

    .line 94
    :cond_3
    invoke-direct {p0, p1}, Lcom/jess/arms/integration/ActivityLifecycle;->registerFragmentCallbacks(Landroid/app/Activity;)V

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/jess/arms/integration/ActivityLifecycle;->mAppManager:Lcom/jess/arms/integration/AppManager;

    invoke-virtual {v0, p1}, Lcom/jess/arms/integration/AppManager;->removeActivity(Landroid/app/Activity;)V

    .line 147
    invoke-direct {p0, p1}, Lcom/jess/arms/integration/ActivityLifecycle;->fetchActivityDelegate(Landroid/app/Activity;)Lcom/jess/arms/a/a/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 149
    invoke-interface {v0}, Lcom/jess/arms/a/a/a;->e()V

    .line 150
    check-cast p1, Lcom/jess/arms/a/a/h;

    invoke-direct {p0, p1}, Lcom/jess/arms/integration/ActivityLifecycle;->getCacheFromActivity(Lcom/jess/arms/a/a/h;)Lcom/jess/arms/integration/cache/Cache;

    move-result-object p1

    invoke-interface {p1}, Lcom/jess/arms/integration/cache/Cache;->clear()V

    :cond_0
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 0

    .line 117
    invoke-direct {p0, p1}, Lcom/jess/arms/integration/ActivityLifecycle;->fetchActivityDelegate(Landroid/app/Activity;)Lcom/jess/arms/a/a/a;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 119
    invoke-interface {p1}, Lcom/jess/arms/a/a/a;->c()V

    :cond_0
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/jess/arms/integration/ActivityLifecycle;->mAppManager:Lcom/jess/arms/integration/AppManager;

    invoke-virtual {v0, p1}, Lcom/jess/arms/integration/AppManager;->setCurrentActivity(Landroid/app/Activity;)V

    .line 109
    invoke-direct {p0, p1}, Lcom/jess/arms/integration/ActivityLifecycle;->fetchActivityDelegate(Landroid/app/Activity;)Lcom/jess/arms/a/a/a;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 111
    invoke-interface {p1}, Lcom/jess/arms/a/a/a;->b()V

    :cond_0
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .line 137
    invoke-direct {p0, p1}, Lcom/jess/arms/integration/ActivityLifecycle;->fetchActivityDelegate(Landroid/app/Activity;)Lcom/jess/arms/a/a/a;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 139
    invoke-interface {p1, p2}, Lcom/jess/arms/a/a/a;->b(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 0

    .line 99
    invoke-direct {p0, p1}, Lcom/jess/arms/integration/ActivityLifecycle;->fetchActivityDelegate(Landroid/app/Activity;)Lcom/jess/arms/a/a/a;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 101
    invoke-interface {p1}, Lcom/jess/arms/a/a/a;->a()V

    :cond_0
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 2

    .line 125
    iget-object v0, p0, Lcom/jess/arms/integration/ActivityLifecycle;->mAppManager:Lcom/jess/arms/integration/AppManager;

    invoke-virtual {v0}, Lcom/jess/arms/integration/AppManager;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 126
    iget-object v0, p0, Lcom/jess/arms/integration/ActivityLifecycle;->mAppManager:Lcom/jess/arms/integration/AppManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/jess/arms/integration/AppManager;->setCurrentActivity(Landroid/app/Activity;)V

    .line 129
    :cond_0
    invoke-direct {p0, p1}, Lcom/jess/arms/integration/ActivityLifecycle;->fetchActivityDelegate(Landroid/app/Activity;)Lcom/jess/arms/a/a/a;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 131
    invoke-interface {p1}, Lcom/jess/arms/a/a/a;->d()V

    :cond_1
    return-void
.end method
