.class Lme/jessyan/lifecyclemodel/HolderFragment$HolderFragmentManager$2;
.super Landroid/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;
.source "HolderFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/jessyan/lifecyclemodel/HolderFragment$HolderFragmentManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lme/jessyan/lifecyclemodel/HolderFragment$HolderFragmentManager;


# direct methods
.method constructor <init>(Lme/jessyan/lifecyclemodel/HolderFragment$HolderFragmentManager;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lme/jessyan/lifecyclemodel/HolderFragment$HolderFragmentManager$2;->this$0:Lme/jessyan/lifecyclemodel/HolderFragment$HolderFragmentManager;

    invoke-direct {p0}, Landroid/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;-><init>()V

    return-void
.end method


# virtual methods
.method public onFragmentDestroyed(Landroid/support/v4/app/FragmentManager;Landroid/support/v4/app/Fragment;)V
    .locals 2

    .line 118
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;->onFragmentDestroyed(Landroid/support/v4/app/FragmentManager;Landroid/support/v4/app/Fragment;)V

    .line 119
    iget-object p1, p0, Lme/jessyan/lifecyclemodel/HolderFragment$HolderFragmentManager$2;->this$0:Lme/jessyan/lifecyclemodel/HolderFragment$HolderFragmentManager;

    invoke-static {p1}, Lme/jessyan/lifecyclemodel/HolderFragment$HolderFragmentManager;->access$100(Lme/jessyan/lifecyclemodel/HolderFragment$HolderFragmentManager;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lme/jessyan/lifecyclemodel/HolderFragment;

    if-eqz p1, :cond_0

    const-string p1, "LifecycleModelStores"

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to save a LifecycleModel for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
