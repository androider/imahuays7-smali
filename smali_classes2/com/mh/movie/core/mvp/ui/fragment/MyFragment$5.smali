.class Lcom/mh/movie/core/mvp/ui/fragment/MyFragment$5;
.super Ljava/lang/Object;
.source "MyFragment.java"

# interfaces
.implements Lcom/mh/movie/core/mvp/ui/utils/PermissionUtils$RequestPermission;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/ui/fragment/MyFragment;->h()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mh/movie/core/mvp/ui/fragment/MyFragment;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/ui/fragment/MyFragment;)V
    .locals 0

    .line 692
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/fragment/MyFragment$5;->a:Lcom/mh/movie/core/mvp/ui/fragment/MyFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRequestPermissionFailure(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 702
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/fragment/MyFragment$5;->a:Lcom/mh/movie/core/mvp/ui/fragment/MyFragment;

    invoke-static {p1}, Lcom/mh/movie/core/mvp/ui/fragment/MyFragment;->c(Lcom/mh/movie/core/mvp/ui/fragment/MyFragment;)V

    return-void
.end method

.method public onRequestPermissionSuccess()V
    .locals 3

    .line 696
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/fragment/MyFragment$5;->a:Lcom/mh/movie/core/mvp/ui/fragment/MyFragment;

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/ui/fragment/MyFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/mh/movie/core/mvp/ui/activity/MyCacheActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 697
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/fragment/MyFragment$5;->a:Lcom/mh/movie/core/mvp/ui/fragment/MyFragment;

    invoke-virtual {v1, v0}, Lcom/mh/movie/core/mvp/ui/fragment/MyFragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
