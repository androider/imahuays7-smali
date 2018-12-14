.class Lcom/mh/movie/core/mvp/ui/fragment/VipFragment$2;
.super Ljava/lang/Object;
.source "VipFragment.java"

# interfaces
.implements Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/ui/fragment/VipFragment;->a(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/mh/movie/core/mvp/ui/fragment/VipFragment;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/ui/fragment/VipFragment;I)V
    .locals 0

    .line 276
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/fragment/VipFragment$2;->b:Lcom/mh/movie/core/mvp/ui/fragment/VipFragment;

    iput p2, p0, Lcom/mh/movie/core/mvp/ui/fragment/VipFragment$2;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 279
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/VipFragment$2;->b:Lcom/mh/movie/core/mvp/ui/fragment/VipFragment;

    iget-object v0, v0, Lcom/mh/movie/core/mvp/ui/fragment/VipFragment;->d:Lcom/mh/movie/core/mvp/model/entity/response/ExchangeCenterResponse;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/response/ExchangeCenterResponse;->getMoney()I

    move-result v0

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/fragment/VipFragment$2;->b:Lcom/mh/movie/core/mvp/ui/fragment/VipFragment;

    iget-object v1, v1, Lcom/mh/movie/core/mvp/ui/fragment/VipFragment;->e:Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->b()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 280
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/VipFragment$2;->b:Lcom/mh/movie/core/mvp/ui/fragment/VipFragment;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/fragment/VipFragment;->a(Lcom/mh/movie/core/mvp/ui/fragment/VipFragment;)Lcom/jess/arms/mvp/b;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/presenter/VipPresenter;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/fragment/VipFragment$2;->b:Lcom/mh/movie/core/mvp/ui/fragment/VipFragment;

    iget-object v1, v1, Lcom/mh/movie/core/mvp/ui/fragment/VipFragment;->e:Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->a()I

    move-result v1

    iget v2, p0, Lcom/mh/movie/core/mvp/ui/fragment/VipFragment$2;->a:I

    invoke-virtual {v0, v1, v2}, Lcom/mh/movie/core/mvp/presenter/VipPresenter;->a(II)V

    goto :goto_0

    .line 282
    :cond_0
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/VipFragment$2;->b:Lcom/mh/movie/core/mvp/ui/fragment/VipFragment;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/fragment/VipFragment$2;->b:Lcom/mh/movie/core/mvp/ui/fragment/VipFragment;

    iget-object v1, v1, Lcom/mh/movie/core/mvp/ui/fragment/VipFragment;->e:Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/ui/fragment/VipFragment;->b(I)V

    .line 285
    :goto_0
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/VipFragment$2;->b:Lcom/mh/movie/core/mvp/ui/fragment/VipFragment;

    iget-object v0, v0, Lcom/mh/movie/core/mvp/ui/fragment/VipFragment;->e:Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->dismiss()V

    return-void
.end method

.method public b()V
    .locals 1

    .line 290
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/VipFragment$2;->b:Lcom/mh/movie/core/mvp/ui/fragment/VipFragment;

    iget-object v0, v0, Lcom/mh/movie/core/mvp/ui/fragment/VipFragment;->e:Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->dismiss()V

    return-void
.end method
