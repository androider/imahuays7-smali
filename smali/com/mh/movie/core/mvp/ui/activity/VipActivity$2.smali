.class Lcom/mh/movie/core/mvp/ui/activity/VipActivity$2;
.super Ljava/lang/Object;
.source "VipActivity.java"

# interfaces
.implements Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/ui/activity/VipActivity;->a(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/mh/movie/core/mvp/ui/activity/VipActivity;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/ui/activity/VipActivity;I)V
    .locals 0

    .line 280
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/VipActivity$2;->b:Lcom/mh/movie/core/mvp/ui/activity/VipActivity;

    iput p2, p0, Lcom/mh/movie/core/mvp/ui/activity/VipActivity$2;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 283
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/VipActivity$2;->b:Lcom/mh/movie/core/mvp/ui/activity/VipActivity;

    iget-object v0, v0, Lcom/mh/movie/core/mvp/ui/activity/VipActivity;->d:Lcom/mh/movie/core/mvp/model/entity/response/ExchangeCenterResponse;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/response/ExchangeCenterResponse;->getMoney()I

    move-result v0

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/VipActivity$2;->b:Lcom/mh/movie/core/mvp/ui/activity/VipActivity;

    iget-object v1, v1, Lcom/mh/movie/core/mvp/ui/activity/VipActivity;->e:Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->b()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 284
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/VipActivity$2;->b:Lcom/mh/movie/core/mvp/ui/activity/VipActivity;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/activity/VipActivity;->a(Lcom/mh/movie/core/mvp/ui/activity/VipActivity;)Lcom/jess/arms/mvp/b;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/presenter/VipPresenter;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/VipActivity$2;->b:Lcom/mh/movie/core/mvp/ui/activity/VipActivity;

    iget-object v1, v1, Lcom/mh/movie/core/mvp/ui/activity/VipActivity;->e:Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->a()I

    move-result v1

    iget v2, p0, Lcom/mh/movie/core/mvp/ui/activity/VipActivity$2;->a:I

    invoke-virtual {v0, v1, v2}, Lcom/mh/movie/core/mvp/presenter/VipPresenter;->a(II)V

    goto :goto_0

    .line 286
    :cond_0
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/VipActivity$2;->b:Lcom/mh/movie/core/mvp/ui/activity/VipActivity;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/VipActivity$2;->b:Lcom/mh/movie/core/mvp/ui/activity/VipActivity;

    iget-object v1, v1, Lcom/mh/movie/core/mvp/ui/activity/VipActivity;->e:Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/ui/activity/VipActivity;->b(I)V

    .line 289
    :goto_0
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/VipActivity$2;->b:Lcom/mh/movie/core/mvp/ui/activity/VipActivity;

    iget-object v0, v0, Lcom/mh/movie/core/mvp/ui/activity/VipActivity;->e:Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->dismiss()V

    return-void
.end method

.method public b()V
    .locals 1

    .line 294
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/VipActivity$2;->b:Lcom/mh/movie/core/mvp/ui/activity/VipActivity;

    iget-object v0, v0, Lcom/mh/movie/core/mvp/ui/activity/VipActivity;->e:Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->dismiss()V

    return-void
.end method
