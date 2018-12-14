.class Lcom/mh/movie/core/mvp/ui/fragment/VipTvFragment$2;
.super Ljava/lang/Object;
.source "VipTvFragment.java"

# interfaces
.implements Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/ui/fragment/VipTvFragment;->a(ILjava/lang/Integer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mh/movie/core/mvp/ui/fragment/VipTvFragment;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/ui/fragment/VipTvFragment;)V
    .locals 0

    .line 243
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/fragment/VipTvFragment$2;->a:Lcom/mh/movie/core/mvp/ui/fragment/VipTvFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 246
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/VipTvFragment$2;->a:Lcom/mh/movie/core/mvp/ui/fragment/VipTvFragment;

    iget-object v0, v0, Lcom/mh/movie/core/mvp/ui/fragment/VipTvFragment;->e:Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->dismiss()V

    .line 247
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/VipTvFragment$2;->a:Lcom/mh/movie/core/mvp/ui/fragment/VipTvFragment;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/fragment/VipTvFragment;->b(Lcom/mh/movie/core/mvp/ui/fragment/VipTvFragment;)Lcom/jess/arms/mvp/b;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/presenter/VipTvPresenter;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/fragment/VipTvFragment$2;->a:Lcom/mh/movie/core/mvp/ui/fragment/VipTvFragment;

    iget v1, v1, Lcom/mh/movie/core/mvp/ui/fragment/VipTvFragment;->f:I

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/presenter/VipTvPresenter;->d(I)V

    return-void
.end method

.method public b()V
    .locals 1

    .line 252
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/VipTvFragment$2;->a:Lcom/mh/movie/core/mvp/ui/fragment/VipTvFragment;

    iget-object v0, v0, Lcom/mh/movie/core/mvp/ui/fragment/VipTvFragment;->e:Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->dismiss()V

    return-void
.end method
