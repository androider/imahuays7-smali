.class public final Lcom/jess/arms/integration/lifecycle/ActivityLifecycleForRxLifecycle_Factory;
.super Ljava/lang/Object;
.source "ActivityLifecycleForRxLifecycle_Factory.java"

# interfaces
.implements La/a/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "La/a/b<",
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

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/jess/arms/integration/lifecycle/ActivityLifecycleForRxLifecycle_Factory;->mFragmentLifecycleProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Lcom/jess/arms/integration/lifecycle/ActivityLifecycleForRxLifecycle_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/jess/arms/integration/lifecycle/FragmentLifecycleForRxLifecycle;",
            ">;)",
            "Lcom/jess/arms/integration/lifecycle/ActivityLifecycleForRxLifecycle_Factory;"
        }
    .end annotation

    .line 31
    new-instance v0, Lcom/jess/arms/integration/lifecycle/ActivityLifecycleForRxLifecycle_Factory;

    invoke-direct {v0, p0}, Lcom/jess/arms/integration/lifecycle/ActivityLifecycleForRxLifecycle_Factory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newActivityLifecycleForRxLifecycle()Lcom/jess/arms/integration/lifecycle/ActivityLifecycleForRxLifecycle;
    .locals 1

    .line 35
    new-instance v0, Lcom/jess/arms/integration/lifecycle/ActivityLifecycleForRxLifecycle;

    invoke-direct {v0}, Lcom/jess/arms/integration/lifecycle/ActivityLifecycleForRxLifecycle;-><init>()V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/jess/arms/integration/lifecycle/ActivityLifecycleForRxLifecycle;
    .locals 2

    .line 23
    new-instance v0, Lcom/jess/arms/integration/lifecycle/ActivityLifecycleForRxLifecycle;

    invoke-direct {v0}, Lcom/jess/arms/integration/lifecycle/ActivityLifecycleForRxLifecycle;-><init>()V

    .line 24
    iget-object v1, p0, Lcom/jess/arms/integration/lifecycle/ActivityLifecycleForRxLifecycle_Factory;->mFragmentLifecycleProvider:Ljavax/inject/Provider;

    .line 25
    invoke-static {v1}, La/a/a;->b(Ljavax/inject/Provider;)La/a;

    move-result-object v1

    .line 24
    invoke-static {v0, v1}, Lcom/jess/arms/integration/lifecycle/ActivityLifecycleForRxLifecycle_MembersInjector;->injectMFragmentLifecycle(Lcom/jess/arms/integration/lifecycle/ActivityLifecycleForRxLifecycle;La/a;)V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 8
    invoke-virtual {p0}, Lcom/jess/arms/integration/lifecycle/ActivityLifecycleForRxLifecycle_Factory;->get()Lcom/jess/arms/integration/lifecycle/ActivityLifecycleForRxLifecycle;

    move-result-object v0

    return-object v0
.end method
