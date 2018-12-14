.class Lme/jessyan/lifecyclemodel/HolderFragment$HolderFragmentManager$1;
.super Lme/jessyan/lifecyclemodel/EmptyActivityLifecycleCallbacks;
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

    .line 102
    iput-object p1, p0, Lme/jessyan/lifecyclemodel/HolderFragment$HolderFragmentManager$1;->this$0:Lme/jessyan/lifecyclemodel/HolderFragment$HolderFragmentManager;

    invoke-direct {p0}, Lme/jessyan/lifecyclemodel/EmptyActivityLifecycleCallbacks;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 3

    .line 105
    iget-object v0, p0, Lme/jessyan/lifecyclemodel/HolderFragment$HolderFragmentManager$1;->this$0:Lme/jessyan/lifecyclemodel/HolderFragment$HolderFragmentManager;

    invoke-static {v0}, Lme/jessyan/lifecyclemodel/HolderFragment$HolderFragmentManager;->access$000(Lme/jessyan/lifecyclemodel/HolderFragment$HolderFragmentManager;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lme/jessyan/lifecyclemodel/HolderFragment;

    if-eqz v0, :cond_0

    const-string v0, "LifecycleModelStores"

    .line 107
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to save a LifecycleModel for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
