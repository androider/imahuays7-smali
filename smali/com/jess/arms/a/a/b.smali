.class public Lcom/jess/arms/a/a/b;
.super Ljava/lang/Object;
.source "ActivityDelegateImpl.java"

# interfaces
.implements Lcom/jess/arms/a/a/a;


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Lcom/jess/arms/a/a/h;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .param p1    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/jess/arms/a/a/b;->a:Landroid/app/Activity;

    .line 41
    check-cast p1, Lcom/jess/arms/a/a/h;

    iput-object p1, p0, Lcom/jess/arms/a/a/b;->b:Lcom/jess/arms/a/a/h;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 48
    iget-object p1, p0, Lcom/jess/arms/a/a/b;->b:Lcom/jess/arms/a/a/h;

    invoke-interface {p1}, Lcom/jess/arms/a/a/h;->f_()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 50
    invoke-static {}, Lcom/jess/arms/integration/EventBusManager;->getInstance()Lcom/jess/arms/integration/EventBusManager;

    move-result-object p1

    iget-object v0, p0, Lcom/jess/arms/a/a/b;->a:Landroid/app/Activity;

    invoke-virtual {p1, v0}, Lcom/jess/arms/integration/EventBusManager;->register(Ljava/lang/Object;)V

    .line 54
    :cond_0
    iget-object p1, p0, Lcom/jess/arms/a/a/b;->b:Lcom/jess/arms/a/a/h;

    iget-object v0, p0, Lcom/jess/arms/a/a/b;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/jess/arms/c/a;->d(Landroid/content/Context;)Lcom/jess/arms/b/a/a;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/jess/arms/a/a/h;->a(Lcom/jess/arms/b/a/a;)V

    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public c()V
    .locals 0

    return-void
.end method

.method public d()V
    .locals 0

    return-void
.end method

.method public e()V
    .locals 2

    .line 85
    iget-object v0, p0, Lcom/jess/arms/a/a/b;->b:Lcom/jess/arms/a/a/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jess/arms/a/a/b;->b:Lcom/jess/arms/a/a/h;

    invoke-interface {v0}, Lcom/jess/arms/a/a/h;->f_()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    invoke-static {}, Lcom/jess/arms/integration/EventBusManager;->getInstance()Lcom/jess/arms/integration/EventBusManager;

    move-result-object v0

    iget-object v1, p0, Lcom/jess/arms/a/a/b;->a:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/jess/arms/integration/EventBusManager;->unregister(Ljava/lang/Object;)V

    :cond_0
    const/4 v0, 0x0

    .line 87
    iput-object v0, p0, Lcom/jess/arms/a/a/b;->b:Lcom/jess/arms/a/a/h;

    .line 88
    iput-object v0, p0, Lcom/jess/arms/a/a/b;->a:Landroid/app/Activity;

    return-void
.end method
