.class Lcom/mh/movie/core/mvp/ui/activity/ExChangeActivity$5$1;
.super Ljava/lang/Object;
.source "ExChangeActivity.java"

# interfaces
.implements Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/ui/activity/ExChangeActivity$5;->a(Lcom/mh/movie/core/mvp/model/entity/response/ExchangeCenterResponse$CommodityInfoListBean;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mh/movie/core/mvp/model/entity/response/ExchangeCenterResponse$CommodityInfoListBean;

.field final synthetic b:Lcom/mh/movie/core/mvp/ui/activity/ExChangeActivity$5;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/ui/activity/ExChangeActivity$5;Lcom/mh/movie/core/mvp/model/entity/response/ExchangeCenterResponse$CommodityInfoListBean;)V
    .locals 0

    .line 259
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/ExChangeActivity$5$1;->b:Lcom/mh/movie/core/mvp/ui/activity/ExChangeActivity$5;

    iput-object p2, p0, Lcom/mh/movie/core/mvp/ui/activity/ExChangeActivity$5$1;->a:Lcom/mh/movie/core/mvp/model/entity/response/ExchangeCenterResponse$CommodityInfoListBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 262
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/ExChangeActivity$5$1;->b:Lcom/mh/movie/core/mvp/ui/activity/ExChangeActivity$5;

    iget-object v0, v0, Lcom/mh/movie/core/mvp/ui/activity/ExChangeActivity$5;->a:Lcom/mh/movie/core/mvp/ui/activity/ExChangeActivity;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/activity/ExChangeActivity;->a(Lcom/mh/movie/core/mvp/ui/activity/ExChangeActivity;)Lcom/jess/arms/mvp/b;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/presenter/ExChangePresenter;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/ExChangeActivity$5$1;->a:Lcom/mh/movie/core/mvp/model/entity/response/ExchangeCenterResponse$CommodityInfoListBean;

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/model/entity/response/ExchangeCenterResponse$CommodityInfoListBean;->getAuthId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/presenter/ExChangePresenter;->a(I)V

    return-void
.end method

.method public b()V
    .locals 1

    .line 267
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/ExChangeActivity$5$1;->b:Lcom/mh/movie/core/mvp/ui/activity/ExChangeActivity$5;

    iget-object v0, v0, Lcom/mh/movie/core/mvp/ui/activity/ExChangeActivity$5;->a:Lcom/mh/movie/core/mvp/ui/activity/ExChangeActivity;

    iget-object v0, v0, Lcom/mh/movie/core/mvp/ui/activity/ExChangeActivity;->d:Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->dismiss()V

    return-void
.end method
