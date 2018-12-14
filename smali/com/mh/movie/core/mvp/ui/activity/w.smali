.class final synthetic Lcom/mh/movie/core/mvp/ui/activity/w;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final a:Lcom/mh/movie/core/mvp/ui/activity/ExChangeActivity$5;

.field private final b:Lcom/mh/movie/core/mvp/model/entity/response/ExchangeCenterResponse$CommodityInfoListBean;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/ui/activity/ExChangeActivity$5;Lcom/mh/movie/core/mvp/model/entity/response/ExchangeCenterResponse$CommodityInfoListBean;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/w;->a:Lcom/mh/movie/core/mvp/ui/activity/ExChangeActivity$5;

    iput-object p2, p0, Lcom/mh/movie/core/mvp/ui/activity/w;->b:Lcom/mh/movie/core/mvp/model/entity/response/ExchangeCenterResponse$CommodityInfoListBean;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/w;->a:Lcom/mh/movie/core/mvp/ui/activity/ExChangeActivity$5;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/w;->b:Lcom/mh/movie/core/mvp/model/entity/response/ExchangeCenterResponse$CommodityInfoListBean;

    invoke-virtual {v0, v1, p1}, Lcom/mh/movie/core/mvp/ui/activity/ExChangeActivity$5;->a(Lcom/mh/movie/core/mvp/model/entity/response/ExchangeCenterResponse$CommodityInfoListBean;Landroid/view/View;)V

    return-void
.end method
