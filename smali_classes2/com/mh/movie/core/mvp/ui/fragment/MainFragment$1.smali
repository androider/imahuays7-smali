.class Lcom/mh/movie/core/mvp/ui/fragment/MainFragment$1;
.super Ljava/lang/Object;
.source "MainFragment.java"

# interfaces
.implements Lcom/mh/movie/core/mvp/ui/utils/PermissionUtils$RequestPermission;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/ui/fragment/MainFragment;->a(Ljava/lang/Void;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mh/movie/core/mvp/ui/fragment/MainFragment;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/ui/fragment/MainFragment;)V
    .locals 0

    .line 136
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/fragment/MainFragment$1;->a:Lcom/mh/movie/core/mvp/ui/fragment/MainFragment;

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

    .line 144
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/fragment/MainFragment$1;->a:Lcom/mh/movie/core/mvp/ui/fragment/MainFragment;

    invoke-static {p1}, Lcom/mh/movie/core/mvp/ui/fragment/MainFragment;->g(Lcom/mh/movie/core/mvp/ui/fragment/MainFragment;)V

    return-void
.end method

.method public onRequestPermissionSuccess()V
    .locals 4

    .line 139
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/MainFragment$1;->a:Lcom/mh/movie/core/mvp/ui/fragment/MainFragment;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/fragment/MainFragment$1;->a:Lcom/mh/movie/core/mvp/ui/fragment/MainFragment;

    invoke-virtual {v2}, Lcom/mh/movie/core/mvp/ui/fragment/MainFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/mh/movie/core/mvp/ui/activity/MyCacheActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/ui/fragment/MainFragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
