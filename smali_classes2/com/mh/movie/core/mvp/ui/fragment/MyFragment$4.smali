.class Lcom/mh/movie/core/mvp/ui/fragment/MyFragment$4;
.super Ljava/lang/Object;
.source "MyFragment.java"

# interfaces
.implements Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/ui/fragment/MyFragment;->o()V
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

    .line 671
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/fragment/MyFragment$4;->a:Lcom/mh/movie/core/mvp/ui/fragment/MyFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 674
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/MyFragment$4;->a:Lcom/mh/movie/core/mvp/ui/fragment/MyFragment;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/fragment/MyFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/jess/arms/c/e;->g(Landroid/content/Context;)V

    .line 675
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/MyFragment$4;->a:Lcom/mh/movie/core/mvp/ui/fragment/MyFragment;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/fragment/MyFragment;->b(Lcom/mh/movie/core/mvp/ui/fragment/MyFragment;)Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->dismiss()V

    return-void
.end method

.method public b()V
    .locals 1

    .line 680
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/MyFragment$4;->a:Lcom/mh/movie/core/mvp/ui/fragment/MyFragment;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/fragment/MyFragment;->b(Lcom/mh/movie/core/mvp/ui/fragment/MyFragment;)Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->dismiss()V

    return-void
.end method
