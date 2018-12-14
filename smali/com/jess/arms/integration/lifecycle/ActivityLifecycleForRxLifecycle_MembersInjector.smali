.class public final Lcom/jess/arms/integration/lifecycle/ActivityLifecycleForRxLifecycle_MembersInjector;
.super Ljava/lang/Object;
.source "ActivityLifecycleForRxLifecycle_MembersInjector.java"

# interfaces
.implements La/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "La/b<",
        "Lcom/jess/arms/integration/lifecycle/ActivityLifecycleForRxLifecycle;",
        ">;"
    }
.end annotation


# instance fields
.field private final mFragmentLifecycleProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/jess/arms/integration/lifecycle/FragmentLifecycleForRxLifecycle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/jess/arms/integration/lifecycle/FragmentLifecycleForRxLifecycle;",
            ">;)V"
        }
    .end annotation

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/jess/arms/integration/lifecycle/ActivityLifecycleForRxLifecycle_MembersInjector;->mFragmentLifecycleProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)La/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/jess/arms/integration/lifecycle/FragmentLifecycleForRxLifecycle;",
            ">;)",
            "La/b<",
            "Lcom/jess/arms/integration/lifecycle/ActivityLifecycleForRxLifecycle;",
            ">;"
        }
    .end annotation

    .line 24
    new-instance v0, Lcom/jess/arms/integration/lifecycle/ActivityLifecycleForRxLifecycle_MembersInjector;

    invoke-direct {v0, p0}, Lcom/jess/arms/integration/lifecycle/ActivityLifecycleForRxLifecycle_MembersInjector;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static injectMFragmentLifecycle(Lcom/jess/arms/integration/lifecycle/ActivityLifecycleForRxLifecycle;La/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jess/arms/integration/lifecycle/ActivityLifecycleForRxLifecycle;",
            "La/a<",
            "Lcom/jess/arms/integration/lifecycle/FragmentLifecycleForRxLifecycle;",
            ">;)V"
        }
    .end annotation

    .line 35
    iput-object p1, p0, Lcom/jess/arms/integration/lifecycle/ActivityLifecycleForRxLifecycle;->mFragmentLifecycle:La/a;

    return-void
.end method


# virtual methods
.method public injectMembers(Lcom/jess/arms/integration/lifecycle/ActivityLifecycleForRxLifecycle;)V
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/jess/arms/integration/lifecycle/ActivityLifecycleForRxLifecycle_MembersInjector;->mFragmentLifecycleProvider:Ljavax/inject/Provider;

    invoke-static {v0}, La/a/a;->b(Ljavax/inject/Provider;)La/a;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/jess/arms/integration/lifecycle/ActivityLifecycleForRxLifecycle_MembersInjector;->injectMFragmentLifecycle(Lcom/jess/arms/integration/lifecycle/ActivityLifecycleForRxLifecycle;La/a;)V

    return-void
.end method

.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .line 9
    check-cast p1, Lcom/jess/arms/integration/lifecycle/ActivityLifecycleForRxLifecycle;

    invoke-virtual {p0, p1}, Lcom/jess/arms/integration/lifecycle/ActivityLifecycleForRxLifecycle_MembersInjector;->injectMembers(Lcom/jess/arms/integration/lifecycle/ActivityLifecycleForRxLifecycle;)V

    return-void
.end method
