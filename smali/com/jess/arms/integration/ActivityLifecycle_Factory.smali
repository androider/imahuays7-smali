.class public final Lcom/jess/arms/integration/ActivityLifecycle_Factory;
.super Ljava/lang/Object;
.source "ActivityLifecycle_Factory.java"

# interfaces
.implements La/a/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "La/a/b<",
        "Lcom/jess/arms/integration/ActivityLifecycle;",
        ">;"
    }
.end annotation


# instance fields
.field private final mAppManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/jess/arms/integration/AppManager;",
            ">;"
        }
    .end annotation
.end field

.field private final mApplicationProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/app/Application;",
            ">;"
        }
    .end annotation
.end field

.field private final mExtrasProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/jess/arms/integration/cache/Cache<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mFragmentLifecycleProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;",
            ">;"
        }
    .end annotation
.end field

.field private final mFragmentLifecyclesProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/List<",
            "Landroid/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/jess/arms/integration/AppManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/app/Application;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/jess/arms/integration/cache/Cache<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;",
            "Ljavax/inject/Provider<",
            "Landroid/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/util/List<",
            "Landroid/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;",
            ">;>;)V"
        }
    .end annotation

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/jess/arms/integration/ActivityLifecycle_Factory;->mAppManagerProvider:Ljavax/inject/Provider;

    .line 35
    iput-object p2, p0, Lcom/jess/arms/integration/ActivityLifecycle_Factory;->mApplicationProvider:Ljavax/inject/Provider;

    .line 36
    iput-object p3, p0, Lcom/jess/arms/integration/ActivityLifecycle_Factory;->mExtrasProvider:Ljavax/inject/Provider;

    .line 37
    iput-object p4, p0, Lcom/jess/arms/integration/ActivityLifecycle_Factory;->mFragmentLifecycleProvider:Ljavax/inject/Provider;

    .line 38
    iput-object p5, p0, Lcom/jess/arms/integration/ActivityLifecycle_Factory;->mFragmentLifecyclesProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/jess/arms/integration/ActivityLifecycle_Factory;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/jess/arms/integration/AppManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/app/Application;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/jess/arms/integration/cache/Cache<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;",
            "Ljavax/inject/Provider<",
            "Landroid/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/util/List<",
            "Landroid/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;",
            ">;>;)",
            "Lcom/jess/arms/integration/ActivityLifecycle_Factory;"
        }
    .end annotation

    .line 60
    new-instance v6, Lcom/jess/arms/integration/ActivityLifecycle_Factory;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/jess/arms/integration/ActivityLifecycle_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v6
.end method

.method public static newActivityLifecycle()Lcom/jess/arms/integration/ActivityLifecycle;
    .locals 1

    .line 69
    new-instance v0, Lcom/jess/arms/integration/ActivityLifecycle;

    invoke-direct {v0}, Lcom/jess/arms/integration/ActivityLifecycle;-><init>()V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/jess/arms/integration/ActivityLifecycle;
    .locals 2

    .line 43
    new-instance v0, Lcom/jess/arms/integration/ActivityLifecycle;

    invoke-direct {v0}, Lcom/jess/arms/integration/ActivityLifecycle;-><init>()V

    .line 44
    iget-object v1, p0, Lcom/jess/arms/integration/ActivityLifecycle_Factory;->mAppManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jess/arms/integration/AppManager;

    invoke-static {v0, v1}, Lcom/jess/arms/integration/ActivityLifecycle_MembersInjector;->injectMAppManager(Lcom/jess/arms/integration/ActivityLifecycle;Lcom/jess/arms/integration/AppManager;)V

    .line 45
    iget-object v1, p0, Lcom/jess/arms/integration/ActivityLifecycle_Factory;->mApplicationProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Application;

    invoke-static {v0, v1}, Lcom/jess/arms/integration/ActivityLifecycle_MembersInjector;->injectMApplication(Lcom/jess/arms/integration/ActivityLifecycle;Landroid/app/Application;)V

    .line 46
    iget-object v1, p0, Lcom/jess/arms/integration/ActivityLifecycle_Factory;->mExtrasProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jess/arms/integration/cache/Cache;

    invoke-static {v0, v1}, Lcom/jess/arms/integration/ActivityLifecycle_MembersInjector;->injectMExtras(Lcom/jess/arms/integration/ActivityLifecycle;Lcom/jess/arms/integration/cache/Cache;)V

    .line 47
    iget-object v1, p0, Lcom/jess/arms/integration/ActivityLifecycle_Factory;->mFragmentLifecycleProvider:Ljavax/inject/Provider;

    .line 48
    invoke-static {v1}, La/a/a;->b(Ljavax/inject/Provider;)La/a;

    move-result-object v1

    .line 47
    invoke-static {v0, v1}, Lcom/jess/arms/integration/ActivityLifecycle_MembersInjector;->injectMFragmentLifecycle(Lcom/jess/arms/integration/ActivityLifecycle;La/a;)V

    .line 49
    iget-object v1, p0, Lcom/jess/arms/integration/ActivityLifecycle_Factory;->mFragmentLifecyclesProvider:Ljavax/inject/Provider;

    .line 50
    invoke-static {v1}, La/a/a;->b(Ljavax/inject/Provider;)La/a;

    move-result-object v1

    .line 49
    invoke-static {v0, v1}, Lcom/jess/arms/integration/ActivityLifecycle_MembersInjector;->injectMFragmentLifecycles(Lcom/jess/arms/integration/ActivityLifecycle;La/a;)V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 12
    invoke-virtual {p0}, Lcom/jess/arms/integration/ActivityLifecycle_Factory;->get()Lcom/jess/arms/integration/ActivityLifecycle;

    move-result-object v0

    return-object v0
.end method
