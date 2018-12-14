.class public Lcom/jess/arms/integration/FragmentLifecycle;
.super Landroid/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;
.source "FragmentLifecycle.java"


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 51
    invoke-direct {p0}, Landroid/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;-><init>()V

    return-void
.end method

.method private fetchFragmentDelegate(Landroid/support/v4/app/Fragment;)Lcom/jess/arms/a/a/f;
    .locals 1

    .line 170
    instance-of v0, p1, Lcom/jess/arms/a/a/i;

    if-eqz v0, :cond_0

    .line 171
    check-cast p1, Lcom/jess/arms/a/a/i;

    invoke-direct {p0, p1}, Lcom/jess/arms/integration/FragmentLifecycle;->getCacheFromFragment(Lcom/jess/arms/a/a/i;)Lcom/jess/arms/integration/cache/Cache;

    move-result-object p1

    const-string v0, "Keep=FRAGMENT_DELEGATE"

    .line 172
    invoke-interface {p1, v0}, Lcom/jess/arms/integration/cache/Cache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jess/arms/a/a/f;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private getCacheFromFragment(Lcom/jess/arms/a/a/i;)Lcom/jess/arms/integration/cache/Cache;
    .locals 4
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jess/arms/a/a/i;",
            ")",
            "Lcom/jess/arms/integration/cache/Cache<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 179
    invoke-interface {p1}, Lcom/jess/arms/a/a/i;->a()Lcom/jess/arms/integration/cache/Cache;

    move-result-object p1

    const-string v0, "%s cannot be null on Fragment"

    const/4 v1, 0x1

    .line 180
    new-array v1, v1, [Ljava/lang/Object;

    const-class v2, Lcom/jess/arms/integration/cache/Cache;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p1, v0, v1}, Lcom/jess/arms/c/g;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method


# virtual methods
.method public onFragmentActivityCreated(Landroid/support/v4/app/FragmentManager;Landroid/support/v4/app/Fragment;Landroid/os/Bundle;)V
    .locals 1

    .line 90
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Landroid/support/v4/app/Fragment;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " - onFragmentActivityCreated"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lb/a/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 91
    invoke-direct {p0, p2}, Lcom/jess/arms/integration/FragmentLifecycle;->fetchFragmentDelegate(Landroid/support/v4/app/Fragment;)Lcom/jess/arms/a/a/f;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 93
    invoke-interface {p1, p3}, Lcom/jess/arms/a/a/f;->b(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public onFragmentAttached(Landroid/support/v4/app/FragmentManager;Landroid/support/v4/app/Fragment;Landroid/content/Context;)V
    .locals 2

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Landroid/support/v4/app/Fragment;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " - onFragmentAttached"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lb/a/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 57
    instance-of v0, p2, Lcom/jess/arms/a/a/i;

    if-eqz v0, :cond_2

    .line 58
    invoke-direct {p0, p2}, Lcom/jess/arms/integration/FragmentLifecycle;->fetchFragmentDelegate(Landroid/support/v4/app/Fragment;)Lcom/jess/arms/a/a/f;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 59
    invoke-interface {v0}, Lcom/jess/arms/a/a/f;->h()Z

    move-result v1

    if-nez v1, :cond_1

    .line 60
    :cond_0
    move-object v0, p2

    check-cast v0, Lcom/jess/arms/a/a/i;

    invoke-direct {p0, v0}, Lcom/jess/arms/integration/FragmentLifecycle;->getCacheFromFragment(Lcom/jess/arms/a/a/i;)Lcom/jess/arms/integration/cache/Cache;

    move-result-object v0

    .line 61
    new-instance v1, Lcom/jess/arms/a/a/g;

    invoke-direct {v1, p1, p2}, Lcom/jess/arms/a/a/g;-><init>(Landroid/support/v4/app/FragmentManager;Landroid/support/v4/app/Fragment;)V

    const-string p1, "Keep=FRAGMENT_DELEGATE"

    .line 64
    invoke-interface {v0, p1, v1}, Lcom/jess/arms/integration/cache/Cache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v1

    .line 66
    :cond_1
    invoke-interface {v0, p3}, Lcom/jess/arms/a/a/f;->a(Landroid/content/Context;)V

    :cond_2
    return-void
.end method

.method public onFragmentCreated(Landroid/support/v4/app/FragmentManager;Landroid/support/v4/app/Fragment;Landroid/os/Bundle;)V
    .locals 1

    .line 72
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Landroid/support/v4/app/Fragment;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " - onFragmentCreated"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lb/a/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 73
    invoke-direct {p0, p2}, Lcom/jess/arms/integration/FragmentLifecycle;->fetchFragmentDelegate(Landroid/support/v4/app/Fragment;)Lcom/jess/arms/a/a/f;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 75
    invoke-interface {p1, p3}, Lcom/jess/arms/a/a/f;->a(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public onFragmentDestroyed(Landroid/support/v4/app/FragmentManager;Landroid/support/v4/app/Fragment;)V
    .locals 1

    .line 153
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Landroid/support/v4/app/Fragment;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " - onFragmentDestroyed"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lb/a/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 154
    invoke-direct {p0, p2}, Lcom/jess/arms/integration/FragmentLifecycle;->fetchFragmentDelegate(Landroid/support/v4/app/Fragment;)Lcom/jess/arms/a/a/f;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 156
    invoke-interface {p1}, Lcom/jess/arms/a/a/f;->f()V

    :cond_0
    return-void
.end method

.method public onFragmentDetached(Landroid/support/v4/app/FragmentManager;Landroid/support/v4/app/Fragment;)V
    .locals 1

    .line 162
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Landroid/support/v4/app/Fragment;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " - onFragmentDetached"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lb/a/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 163
    invoke-direct {p0, p2}, Lcom/jess/arms/integration/FragmentLifecycle;->fetchFragmentDelegate(Landroid/support/v4/app/Fragment;)Lcom/jess/arms/a/a/f;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 165
    invoke-interface {p1}, Lcom/jess/arms/a/a/f;->g()V

    :cond_0
    return-void
.end method

.method public onFragmentPaused(Landroid/support/v4/app/FragmentManager;Landroid/support/v4/app/Fragment;)V
    .locals 1

    .line 117
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Landroid/support/v4/app/Fragment;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " - onFragmentPaused"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lb/a/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 118
    invoke-direct {p0, p2}, Lcom/jess/arms/integration/FragmentLifecycle;->fetchFragmentDelegate(Landroid/support/v4/app/Fragment;)Lcom/jess/arms/a/a/f;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 120
    invoke-interface {p1}, Lcom/jess/arms/a/a/f;->c()V

    :cond_0
    return-void
.end method

.method public onFragmentResumed(Landroid/support/v4/app/FragmentManager;Landroid/support/v4/app/Fragment;)V
    .locals 1

    .line 108
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Landroid/support/v4/app/Fragment;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " - onFragmentResumed"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lb/a/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 109
    invoke-direct {p0, p2}, Lcom/jess/arms/integration/FragmentLifecycle;->fetchFragmentDelegate(Landroid/support/v4/app/Fragment;)Lcom/jess/arms/a/a/f;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 111
    invoke-interface {p1}, Lcom/jess/arms/a/a/f;->b()V

    :cond_0
    return-void
.end method

.method public onFragmentSaveInstanceState(Landroid/support/v4/app/FragmentManager;Landroid/support/v4/app/Fragment;Landroid/os/Bundle;)V
    .locals 1

    .line 135
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Landroid/support/v4/app/Fragment;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " - onFragmentSaveInstanceState"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lb/a/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 136
    invoke-direct {p0, p2}, Lcom/jess/arms/integration/FragmentLifecycle;->fetchFragmentDelegate(Landroid/support/v4/app/Fragment;)Lcom/jess/arms/a/a/f;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 138
    invoke-interface {p1, p3}, Lcom/jess/arms/a/a/f;->c(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public onFragmentStarted(Landroid/support/v4/app/FragmentManager;Landroid/support/v4/app/Fragment;)V
    .locals 1

    .line 99
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Landroid/support/v4/app/Fragment;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " - onFragmentStarted"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lb/a/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 100
    invoke-direct {p0, p2}, Lcom/jess/arms/integration/FragmentLifecycle;->fetchFragmentDelegate(Landroid/support/v4/app/Fragment;)Lcom/jess/arms/a/a/f;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 102
    invoke-interface {p1}, Lcom/jess/arms/a/a/f;->a()V

    :cond_0
    return-void
.end method

.method public onFragmentStopped(Landroid/support/v4/app/FragmentManager;Landroid/support/v4/app/Fragment;)V
    .locals 1

    .line 126
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Landroid/support/v4/app/Fragment;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " - onFragmentStopped"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lb/a/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 127
    invoke-direct {p0, p2}, Lcom/jess/arms/integration/FragmentLifecycle;->fetchFragmentDelegate(Landroid/support/v4/app/Fragment;)Lcom/jess/arms/a/a/f;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 129
    invoke-interface {p1}, Lcom/jess/arms/a/a/f;->d()V

    :cond_0
    return-void
.end method

.method public onFragmentViewCreated(Landroid/support/v4/app/FragmentManager;Landroid/support/v4/app/Fragment;Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .line 81
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Landroid/support/v4/app/Fragment;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " - onFragmentViewCreated"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lb/a/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 82
    invoke-direct {p0, p2}, Lcom/jess/arms/integration/FragmentLifecycle;->fetchFragmentDelegate(Landroid/support/v4/app/Fragment;)Lcom/jess/arms/a/a/f;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 84
    invoke-interface {p1, p3, p4}, Lcom/jess/arms/a/a/f;->a(Landroid/view/View;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public onFragmentViewDestroyed(Landroid/support/v4/app/FragmentManager;Landroid/support/v4/app/Fragment;)V
    .locals 1

    .line 144
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Landroid/support/v4/app/Fragment;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " - onFragmentViewDestroyed"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lb/a/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 145
    invoke-direct {p0, p2}, Lcom/jess/arms/integration/FragmentLifecycle;->fetchFragmentDelegate(Landroid/support/v4/app/Fragment;)Lcom/jess/arms/a/a/f;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 147
    invoke-interface {p1}, Lcom/jess/arms/a/a/f;->e()V

    :cond_0
    return-void
.end method
