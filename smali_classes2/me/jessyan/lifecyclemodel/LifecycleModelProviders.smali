.class public Lme/jessyan/lifecyclemodel/LifecycleModelProviders;
.super Ljava/lang/Object;
.source "LifecycleModelProviders.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkActivity(Landroid/support/v4/app/Fragment;)Landroid/app/Activity;
    .locals 1

    .line 99
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p0

    if-nez p0, :cond_0

    .line 101
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Can\'t create LifecycleModelStore for detached fragment"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    return-object p0
.end method

.method private static checkApplication(Landroid/app/Activity;)Landroid/app/Application;
    .locals 1

    .line 90
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p0

    if-nez p0, :cond_0

    .line 92
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Your activity/fragment is not yet attached to Application. You can\'t request LifecycleModel before onCreate call."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    return-object p0
.end method

.method public static of(Landroid/support/v4/app/Fragment;)Lme/jessyan/lifecyclemodel/LifecycleModelStore;
    .locals 1
    .param p0    # Landroid/support/v4/app/Fragment;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    .line 116
    invoke-static {p0}, Lme/jessyan/lifecyclemodel/LifecycleModelProviders;->checkActivity(Landroid/support/v4/app/Fragment;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lme/jessyan/lifecyclemodel/LifecycleModelProviders;->checkApplication(Landroid/app/Activity;)Landroid/app/Application;

    .line 117
    invoke-static {p0}, Lme/jessyan/lifecyclemodel/LifecycleModelStores;->of(Landroid/support/v4/app/Fragment;)Lme/jessyan/lifecyclemodel/LifecycleModelStore;

    move-result-object p0

    return-object p0
.end method

.method public static of(Landroid/support/v4/app/FragmentActivity;)Lme/jessyan/lifecyclemodel/LifecycleModelStore;
    .locals 0
    .param p0    # Landroid/support/v4/app/FragmentActivity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    .line 130
    invoke-static {p0}, Lme/jessyan/lifecyclemodel/LifecycleModelProviders;->checkApplication(Landroid/app/Activity;)Landroid/app/Application;

    .line 131
    invoke-static {p0}, Lme/jessyan/lifecyclemodel/LifecycleModelStores;->of(Landroid/support/v4/app/FragmentActivity;)Lme/jessyan/lifecyclemodel/LifecycleModelStore;

    move-result-object p0

    return-object p0
.end method
