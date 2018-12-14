.class public Lme/jessyan/lifecyclemodel/HolderFragment;
.super Landroid/support/v4/app/Fragment;
.source "HolderFragment.java"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lme/jessyan/lifecyclemodel/HolderFragment$HolderFragmentManager;
    }
.end annotation


# static fields
.field public static final HOLDER_TAG:Ljava/lang/String; = "me.jessyan.lifecyclemodel.state.StateProviderHolderFragment"
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation
.end field

.field private static final LOG_TAG:Ljava/lang/String; = "LifecycleModelStores"

.field private static final sHolderFragmentManager:Lme/jessyan/lifecyclemodel/HolderFragment$HolderFragmentManager;


# instance fields
.field private final mLifecycleModelStore:Lme/jessyan/lifecyclemodel/LifecycleModelStore;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 44
    new-instance v0, Lme/jessyan/lifecyclemodel/HolderFragment$HolderFragmentManager;

    invoke-direct {v0}, Lme/jessyan/lifecyclemodel/HolderFragment$HolderFragmentManager;-><init>()V

    sput-object v0, Lme/jessyan/lifecyclemodel/HolderFragment;->sHolderFragmentManager:Lme/jessyan/lifecyclemodel/HolderFragment$HolderFragmentManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 55
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 53
    new-instance v0, Lme/jessyan/lifecyclemodel/LifecycleModelStore;

    invoke-direct {v0}, Lme/jessyan/lifecyclemodel/LifecycleModelStore;-><init>()V

    iput-object v0, p0, Lme/jessyan/lifecyclemodel/HolderFragment;->mLifecycleModelStore:Lme/jessyan/lifecyclemodel/LifecycleModelStore;

    const/4 v0, 0x1

    .line 56
    invoke-virtual {p0, v0}, Lme/jessyan/lifecyclemodel/HolderFragment;->setRetainInstance(Z)V

    return-void
.end method

.method public static holderFragmentFor(Landroid/support/v4/app/Fragment;)Lme/jessyan/lifecyclemodel/HolderFragment;
    .locals 1
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 93
    sget-object v0, Lme/jessyan/lifecyclemodel/HolderFragment;->sHolderFragmentManager:Lme/jessyan/lifecyclemodel/HolderFragment$HolderFragmentManager;

    invoke-virtual {v0, p0}, Lme/jessyan/lifecyclemodel/HolderFragment$HolderFragmentManager;->holderFragmentFor(Landroid/support/v4/app/Fragment;)Lme/jessyan/lifecyclemodel/HolderFragment;

    move-result-object p0

    return-object p0
.end method

.method public static holderFragmentFor(Landroid/support/v4/app/FragmentActivity;)Lme/jessyan/lifecyclemodel/HolderFragment;
    .locals 1
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 85
    sget-object v0, Lme/jessyan/lifecyclemodel/HolderFragment;->sHolderFragmentManager:Lme/jessyan/lifecyclemodel/HolderFragment$HolderFragmentManager;

    invoke-virtual {v0, p0}, Lme/jessyan/lifecyclemodel/HolderFragment$HolderFragmentManager;->holderFragmentFor(Landroid/support/v4/app/FragmentActivity;)Lme/jessyan/lifecyclemodel/HolderFragment;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getLifecycleModelStore()Lme/jessyan/lifecyclemodel/LifecycleModelStore;
    .locals 1

    .line 77
    iget-object v0, p0, Lme/jessyan/lifecyclemodel/HolderFragment;->mLifecycleModelStore:Lme/jessyan/lifecyclemodel/LifecycleModelStore;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 61
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 62
    sget-object p1, Lme/jessyan/lifecyclemodel/HolderFragment;->sHolderFragmentManager:Lme/jessyan/lifecyclemodel/HolderFragment$HolderFragmentManager;

    invoke-virtual {p1, p0}, Lme/jessyan/lifecyclemodel/HolderFragment$HolderFragmentManager;->holderFragmentCreated(Landroid/support/v4/app/Fragment;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 72
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    .line 73
    iget-object v0, p0, Lme/jessyan/lifecyclemodel/HolderFragment;->mLifecycleModelStore:Lme/jessyan/lifecyclemodel/LifecycleModelStore;

    invoke-virtual {v0}, Lme/jessyan/lifecyclemodel/LifecycleModelStore;->clear()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    .line 67
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method
