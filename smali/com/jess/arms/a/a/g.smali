.class public Lcom/jess/arms/a/a/g;
.super Ljava/lang/Object;
.source "FragmentDelegateImpl.java"

# interfaces
.implements Lcom/jess/arms/a/a/f;


# instance fields
.field private a:Landroid/support/v4/app/FragmentManager;

.field private b:Landroid/support/v4/app/Fragment;

.field private c:Lcom/jess/arms/a/a/i;

.field private d:Lbutterknife/Unbinder;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/FragmentManager;Landroid/support/v4/app/Fragment;)V
    .locals 0
    .param p1    # Landroid/support/v4/app/FragmentManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/support/v4/app/Fragment;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/jess/arms/a/a/g;->a:Landroid/support/v4/app/FragmentManager;

    .line 49
    iput-object p2, p0, Lcom/jess/arms/a/a/g;->b:Landroid/support/v4/app/Fragment;

    .line 50
    check-cast p2, Lcom/jess/arms/a/a/i;

    iput-object p2, p0, Lcom/jess/arms/a/a/g;->c:Lcom/jess/arms/a/a/i;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public a(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 60
    iget-object p1, p0, Lcom/jess/arms/a/a/g;->c:Lcom/jess/arms/a/a/i;

    invoke-interface {p1}, Lcom/jess/arms/a/a/i;->k_()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 61
    invoke-static {}, Lcom/jess/arms/integration/EventBusManager;->getInstance()Lcom/jess/arms/integration/EventBusManager;

    move-result-object p1

    iget-object v0, p0, Lcom/jess/arms/a/a/g;->b:Landroid/support/v4/app/Fragment;

    invoke-virtual {p1, v0}, Lcom/jess/arms/integration/EventBusManager;->register(Ljava/lang/Object;)V

    .line 62
    :cond_0
    iget-object p1, p0, Lcom/jess/arms/a/a/g;->c:Lcom/jess/arms/a/a/i;

    iget-object v0, p0, Lcom/jess/arms/a/a/g;->b:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/jess/arms/c/a;->d(Landroid/content/Context;)Lcom/jess/arms/b/a/a;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/jess/arms/a/a/i;->a(Lcom/jess/arms/b/a/a;)V

    return-void
.end method

.method public a(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    .line 69
    iget-object p2, p0, Lcom/jess/arms/a/a/g;->b:Landroid/support/v4/app/Fragment;

    invoke-static {p2, p1}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    move-result-object p1

    iput-object p1, p0, Lcom/jess/arms/a/a/g;->d:Lbutterknife/Unbinder;

    :cond_0
    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 74
    iget-object v0, p0, Lcom/jess/arms/a/a/g;->c:Lcom/jess/arms/a/a/i;

    invoke-interface {v0, p1}, Lcom/jess/arms/a/a/i;->a(Landroid/os/Bundle;)V

    return-void
.end method

.method public c()V
    .locals 0

    return-void
.end method

.method public c(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public d()V
    .locals 0

    return-void
.end method

.method public e()V
    .locals 3

    .line 104
    iget-object v0, p0, Lcom/jess/arms/a/a/g;->d:Lbutterknife/Unbinder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jess/arms/a/a/g;->d:Lbutterknife/Unbinder;

    sget-object v1, Lbutterknife/Unbinder;->EMPTY:Lbutterknife/Unbinder;

    if-eq v0, v1, :cond_0

    .line 106
    :try_start_0
    iget-object v0, p0, Lcom/jess/arms/a/a/g;->d:Lbutterknife/Unbinder;

    invoke-interface {v0}, Lbutterknife/Unbinder;->unbind()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 108
    invoke-static {v0}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    .line 110
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDestroyView: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lb/a/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public f()V
    .locals 2

    .line 117
    iget-object v0, p0, Lcom/jess/arms/a/a/g;->c:Lcom/jess/arms/a/a/i;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jess/arms/a/a/g;->c:Lcom/jess/arms/a/a/i;

    invoke-interface {v0}, Lcom/jess/arms/a/a/i;->k_()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    invoke-static {}, Lcom/jess/arms/integration/EventBusManager;->getInstance()Lcom/jess/arms/integration/EventBusManager;

    move-result-object v0

    iget-object v1, p0, Lcom/jess/arms/a/a/g;->b:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0, v1}, Lcom/jess/arms/integration/EventBusManager;->unregister(Ljava/lang/Object;)V

    :cond_0
    const/4 v0, 0x0

    .line 119
    iput-object v0, p0, Lcom/jess/arms/a/a/g;->d:Lbutterknife/Unbinder;

    .line 120
    iput-object v0, p0, Lcom/jess/arms/a/a/g;->a:Landroid/support/v4/app/FragmentManager;

    .line 121
    iput-object v0, p0, Lcom/jess/arms/a/a/g;->b:Landroid/support/v4/app/Fragment;

    .line 122
    iput-object v0, p0, Lcom/jess/arms/a/a/g;->c:Lcom/jess/arms/a/a/i;

    return-void
.end method

.method public g()V
    .locals 0

    return-void
.end method

.method public h()Z
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/jess/arms/a/a/g;->b:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jess/arms/a/a/g;->b:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
