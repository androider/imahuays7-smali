.class public final Lcom/jess/arms/integration/ActivityLifecycle_MembersInjector;
.super Ljava/lang/Object;
.source "ActivityLifecycle_MembersInjector.java"

# interfaces
.implements La/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "La/b<",
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

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/jess/arms/integration/ActivityLifecycle_MembersInjector;->mAppManagerProvider:Ljavax/inject/Provider;

    .line 36
    iput-object p2, p0, Lcom/jess/arms/integration/ActivityLifecycle_MembersInjector;->mApplicationProvider:Ljavax/inject/Provider;

    .line 37
    iput-object p3, p0, Lcom/jess/arms/integration/ActivityLifecycle_MembersInjector;->mExtrasProvider:Ljavax/inject/Provider;

    .line 38
    iput-object p4, p0, Lcom/jess/arms/integration/ActivityLifecycle_MembersInjector;->mFragmentLifecycleProvider:Ljavax/inject/Provider;

    .line 39
    iput-object p5, p0, Lcom/jess/arms/integration/ActivityLifecycle_MembersInjector;->mFragmentLifecyclesProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)La/b;
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
            "La/b<",
            "Lcom/jess/arms/integration/ActivityLifecycle;",
            ">;"
        }
    .end annotation

    .line 48
    new-instance v6, Lcom/jess/arms/integration/ActivityLifecycle_MembersInjector;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/jess/arms/integration/ActivityLifecycle_MembersInjector;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v6
.end method

.method public static injectMAppManager(Lcom/jess/arms/integration/ActivityLifecycle;Lcom/jess/arms/integration/AppManager;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/jess/arms/integration/ActivityLifecycle;->mAppManager:Lcom/jess/arms/integration/AppManager;

    return-void
.end method

.method public static injectMApplication(Lcom/jess/arms/integration/ActivityLifecycle;Landroid/app/Application;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/jess/arms/integration/ActivityLifecycle;->mApplication:Landroid/app/Application;

    return-void
.end method

.method public static injectMExtras(Lcom/jess/arms/integration/ActivityLifecycle;Lcom/jess/arms/integration/cache/Cache;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jess/arms/integration/ActivityLifecycle;",
            "Lcom/jess/arms/integration/cache/Cache<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 74
    iput-object p1, p0, Lcom/jess/arms/integration/ActivityLifecycle;->mExtras:Lcom/jess/arms/integration/cache/Cache;

    return-void
.end method

.method public static injectMFragmentLifecycle(Lcom/jess/arms/integration/ActivityLifecycle;La/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jess/arms/integration/ActivityLifecycle;",
            "La/a<",
            "Landroid/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;",
            ">;)V"
        }
    .end annotation

    .line 80
    iput-object p1, p0, Lcom/jess/arms/integration/ActivityLifecycle;->mFragmentLifecycle:La/a;

    return-void
.end method

.method public static injectMFragmentLifecycles(Lcom/jess/arms/integration/ActivityLifecycle;La/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jess/arms/integration/ActivityLifecycle;",
            "La/a<",
            "Ljava/util/List<",
            "Landroid/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;",
            ">;>;)V"
        }
    .end annotation

    .line 86
    iput-object p1, p0, Lcom/jess/arms/integration/ActivityLifecycle;->mFragmentLifecycles:La/a;

    return-void
.end method


# virtual methods
.method public injectMembers(Lcom/jess/arms/integration/ActivityLifecycle;)V
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/jess/arms/integration/ActivityLifecycle_MembersInjector;->mAppManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jess/arms/integration/AppManager;

    invoke-static {p1, v0}, Lcom/jess/arms/integration/ActivityLifecycle_MembersInjector;->injectMAppManager(Lcom/jess/arms/integration/ActivityLifecycle;Lcom/jess/arms/integration/AppManager;)V

    .line 59
    iget-object v0, p0, Lcom/jess/arms/integration/ActivityLifecycle_MembersInjector;->mApplicationProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    invoke-static {p1, v0}, Lcom/jess/arms/integration/ActivityLifecycle_MembersInjector;->injectMApplication(Lcom/jess/arms/integration/ActivityLifecycle;Landroid/app/Application;)V

    .line 60
    iget-object v0, p0, Lcom/jess/arms/integration/ActivityLifecycle_MembersInjector;->mExtrasProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jess/arms/integration/cache/Cache;

    invoke-static {p1, v0}, Lcom/jess/arms/integration/ActivityLifecycle_MembersInjector;->injectMExtras(Lcom/jess/arms/integration/ActivityLifecycle;Lcom/jess/arms/integration/cache/Cache;)V

    .line 61
    iget-object v0, p0, Lcom/jess/arms/integration/ActivityLifecycle_MembersInjector;->mFragmentLifecycleProvider:Ljavax/inject/Provider;

    invoke-static {v0}, La/a/a;->b(Ljavax/inject/Provider;)La/a;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/jess/arms/integration/ActivityLifecycle_MembersInjector;->injectMFragmentLifecycle(Lcom/jess/arms/integration/ActivityLifecycle;La/a;)V

    .line 62
    iget-object v0, p0, Lcom/jess/arms/integration/ActivityLifecycle_MembersInjector;->mFragmentLifecyclesProvider:Ljavax/inject/Provider;

    invoke-static {v0}, La/a/a;->b(Ljavax/inject/Provider;)La/a;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/jess/arms/integration/ActivityLifecycle_MembersInjector;->injectMFragmentLifecycles(Lcom/jess/arms/integration/ActivityLifecycle;La/a;)V

    return-void
.end method

.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .line 13
    check-cast p1, Lcom/jess/arms/integration/ActivityLifecycle;

    invoke-virtual {p0, p1}, Lcom/jess/arms/integration/ActivityLifecycle_MembersInjector;->injectMembers(Lcom/jess/arms/integration/ActivityLifecycle;)V

    return-void
.end method
