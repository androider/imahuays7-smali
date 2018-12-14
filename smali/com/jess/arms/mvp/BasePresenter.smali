.class public Lcom/jess/arms/mvp/BasePresenter;
.super Ljava/lang/Object;
.source "BasePresenter.java"

# interfaces
.implements Landroid/arch/lifecycle/c;
.implements Lcom/jess/arms/mvp/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<M::",
        "Lcom/jess/arms/mvp/a;",
        "V::",
        "Lcom/jess/arms/mvp/c;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/arch/lifecycle/c;",
        "Lcom/jess/arms/mvp/b;"
    }
.end annotation


# instance fields
.field protected final a:Ljava/lang/String;

.field protected b:Lio/reactivex/disposables/CompositeDisposable;

.field protected c:Lcom/jess/arms/mvp/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TM;"
        }
    .end annotation
.end field

.field protected d:Lcom/jess/arms/mvp/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jess/arms/mvp/BasePresenter;->a:Ljava/lang/String;

    .line 80
    invoke-virtual {p0}, Lcom/jess/arms/mvp/BasePresenter;->a()V

    return-void
.end method

.method public constructor <init>(Lcom/jess/arms/mvp/a;Lcom/jess/arms/mvp/c;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TM;TV;)V"
        }
    .end annotation

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jess/arms/mvp/BasePresenter;->a:Ljava/lang/String;

    const-string v0, "%s cannot be null"

    const/4 v1, 0x1

    .line 61
    new-array v2, v1, [Ljava/lang/Object;

    const-class v3, Lcom/jess/arms/mvp/a;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {p1, v0, v2}, Lcom/jess/arms/c/g;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "%s cannot be null"

    .line 62
    new-array v1, v1, [Ljava/lang/Object;

    const-class v2, Lcom/jess/arms/mvp/c;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {p2, v0, v1}, Lcom/jess/arms/c/g;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    iput-object p1, p0, Lcom/jess/arms/mvp/BasePresenter;->c:Lcom/jess/arms/mvp/a;

    .line 64
    iput-object p2, p0, Lcom/jess/arms/mvp/BasePresenter;->d:Lcom/jess/arms/mvp/c;

    .line 65
    invoke-virtual {p0}, Lcom/jess/arms/mvp/BasePresenter;->a()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 87
    iget-object v0, p0, Lcom/jess/arms/mvp/BasePresenter;->d:Lcom/jess/arms/mvp/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jess/arms/mvp/BasePresenter;->d:Lcom/jess/arms/mvp/c;

    instance-of v0, v0, Landroid/arch/lifecycle/d;

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/jess/arms/mvp/BasePresenter;->d:Lcom/jess/arms/mvp/c;

    check-cast v0, Landroid/arch/lifecycle/d;

    invoke-interface {v0}, Landroid/arch/lifecycle/d;->getLifecycle()Landroid/arch/lifecycle/Lifecycle;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/arch/lifecycle/Lifecycle;->a(Landroid/arch/lifecycle/c;)V

    .line 89
    iget-object v0, p0, Lcom/jess/arms/mvp/BasePresenter;->c:Lcom/jess/arms/mvp/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jess/arms/mvp/BasePresenter;->c:Lcom/jess/arms/mvp/a;

    instance-of v0, v0, Landroid/arch/lifecycle/c;

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/jess/arms/mvp/BasePresenter;->d:Lcom/jess/arms/mvp/c;

    check-cast v0, Landroid/arch/lifecycle/d;

    invoke-interface {v0}, Landroid/arch/lifecycle/d;->getLifecycle()Landroid/arch/lifecycle/Lifecycle;

    move-result-object v0

    iget-object v1, p0, Lcom/jess/arms/mvp/BasePresenter;->c:Lcom/jess/arms/mvp/a;

    check-cast v1, Landroid/arch/lifecycle/c;

    invoke-virtual {v0, v1}, Landroid/arch/lifecycle/Lifecycle;->a(Landroid/arch/lifecycle/c;)V

    .line 93
    :cond_0
    invoke-virtual {p0}, Lcom/jess/arms/mvp/BasePresenter;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 94
    invoke-static {}, Lcom/jess/arms/integration/EventBusManager;->getInstance()Lcom/jess/arms/integration/EventBusManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/jess/arms/integration/EventBusManager;->register(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public b()V
    .locals 1

    .line 102
    invoke-virtual {p0}, Lcom/jess/arms/mvp/BasePresenter;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    invoke-static {}, Lcom/jess/arms/integration/EventBusManager;->getInstance()Lcom/jess/arms/integration/EventBusManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/jess/arms/integration/EventBusManager;->unregister(Ljava/lang/Object;)V

    .line 104
    :cond_0
    invoke-virtual {p0}, Lcom/jess/arms/mvp/BasePresenter;->d()V

    .line 105
    iget-object v0, p0, Lcom/jess/arms/mvp/BasePresenter;->c:Lcom/jess/arms/mvp/a;

    if-eqz v0, :cond_1

    .line 106
    iget-object v0, p0, Lcom/jess/arms/mvp/BasePresenter;->c:Lcom/jess/arms/mvp/a;

    invoke-interface {v0}, Lcom/jess/arms/mvp/a;->a()V

    :cond_1
    const/4 v0, 0x0

    .line 107
    iput-object v0, p0, Lcom/jess/arms/mvp/BasePresenter;->c:Lcom/jess/arms/mvp/a;

    .line 108
    iput-object v0, p0, Lcom/jess/arms/mvp/BasePresenter;->d:Lcom/jess/arms/mvp/c;

    .line 109
    iput-object v0, p0, Lcom/jess/arms/mvp/BasePresenter;->b:Lio/reactivex/disposables/CompositeDisposable;

    return-void
.end method

.method public c()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public d()V
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/jess/arms/mvp/BasePresenter;->b:Lio/reactivex/disposables/CompositeDisposable;

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/jess/arms/mvp/BasePresenter;->b:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/disposables/CompositeDisposable;->clear()V

    :cond_0
    return-void
.end method

.method onDestroy(Landroid/arch/lifecycle/d;)V
    .locals 0
    .annotation runtime Landroid/arch/lifecycle/k;
        a = .enum Landroid/arch/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroid/arch/lifecycle/Lifecycle$Event;
    .end annotation

    .line 127
    invoke-interface {p1}, Landroid/arch/lifecycle/d;->getLifecycle()Landroid/arch/lifecycle/Lifecycle;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/arch/lifecycle/Lifecycle;->b(Landroid/arch/lifecycle/c;)V

    return-void
.end method
