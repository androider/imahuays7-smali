.class public abstract Lcom/jess/arms/a/h;
.super Landroid/app/Service;
.source "BaseService.java"


# instance fields
.field protected final a:Ljava/lang/String;

.field protected b:Lio/reactivex/disposables/CompositeDisposable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 38
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jess/arms/a/h;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected b()V
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/jess/arms/a/h;->b:Lio/reactivex/disposables/CompositeDisposable;

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/jess/arms/a/h;->b:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/disposables/CompositeDisposable;->clear()V

    :cond_0
    return-void
.end method

.method public abstract c()V
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()V
    .locals 1

    .line 49
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 50
    invoke-virtual {p0}, Lcom/jess/arms/a/h;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    invoke-static {}, Lcom/jess/arms/integration/EventBusManager;->getInstance()Lcom/jess/arms/integration/EventBusManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/jess/arms/integration/EventBusManager;->register(Ljava/lang/Object;)V

    .line 52
    :cond_0
    invoke-virtual {p0}, Lcom/jess/arms/a/h;->c()V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 57
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 58
    invoke-virtual {p0}, Lcom/jess/arms/a/h;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    invoke-static {}, Lcom/jess/arms/integration/EventBusManager;->getInstance()Lcom/jess/arms/integration/EventBusManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/jess/arms/integration/EventBusManager;->unregister(Ljava/lang/Object;)V

    .line 60
    :cond_0
    invoke-virtual {p0}, Lcom/jess/arms/a/h;->b()V

    const/4 v0, 0x0

    .line 61
    iput-object v0, p0, Lcom/jess/arms/a/h;->b:Lio/reactivex/disposables/CompositeDisposable;

    return-void
.end method
