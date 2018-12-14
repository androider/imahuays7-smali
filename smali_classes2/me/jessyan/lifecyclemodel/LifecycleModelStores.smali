.class public Lme/jessyan/lifecyclemodel/LifecycleModelStores;
.super Ljava/lang/Object;
.source "LifecycleModelStores.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static of(Landroid/support/v4/app/Fragment;)Lme/jessyan/lifecyclemodel/LifecycleModelStore;
    .locals 0
    .param p0    # Landroid/support/v4/app/Fragment;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    .line 56
    invoke-static {p0}, Lme/jessyan/lifecyclemodel/HolderFragment;->holderFragmentFor(Landroid/support/v4/app/Fragment;)Lme/jessyan/lifecyclemodel/HolderFragment;

    move-result-object p0

    invoke-virtual {p0}, Lme/jessyan/lifecyclemodel/HolderFragment;->getLifecycleModelStore()Lme/jessyan/lifecyclemodel/LifecycleModelStore;

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

    .line 45
    invoke-static {p0}, Lme/jessyan/lifecyclemodel/HolderFragment;->holderFragmentFor(Landroid/support/v4/app/FragmentActivity;)Lme/jessyan/lifecyclemodel/HolderFragment;

    move-result-object p0

    invoke-virtual {p0}, Lme/jessyan/lifecyclemodel/HolderFragment;->getLifecycleModelStore()Lme/jessyan/lifecyclemodel/LifecycleModelStore;

    move-result-object p0

    return-object p0
.end method
