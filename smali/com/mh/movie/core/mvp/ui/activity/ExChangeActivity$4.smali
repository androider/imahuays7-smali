.class Lcom/mh/movie/core/mvp/ui/activity/ExChangeActivity$4;
.super Lcom/mh/movie/core/mvp/ui/adapter/c;
.source "ExChangeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mh/movie/core/mvp/ui/activity/ExChangeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mh/movie/core/mvp/ui/adapter/c<",
        "Lcom/mh/movie/core/mvp/model/entity/response/ExchangeCenterResponse$CommodityInfoListBean;",
        "Lcom/mh/movie/core/mvp/ui/holder/f;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/mh/movie/core/mvp/ui/activity/ExChangeActivity;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/ui/activity/ExChangeActivity;Z)V
    .locals 0

    .line 170
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/ExChangeActivity$4;->a:Lcom/mh/movie/core/mvp/ui/activity/ExChangeActivity;

    invoke-direct {p0, p2}, Lcom/mh/movie/core/mvp/ui/adapter/c;-><init>(Z)V

    return-void
.end method

.method static final synthetic a(I)V
    .locals 0

    return-void
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;)Lcom/mh/movie/core/mvp/ui/holder/f;
    .locals 3

    .line 173
    new-instance v0, Lcom/mh/movie/core/mvp/ui/holder/f;

    sget v1, Lcom/mh/movie/core/R$layout;->item_exchange_changed:I

    sget-object v2, Lcom/mh/movie/core/mvp/ui/activity/v;->a:Lcom/mh/movie/core/mvp/ui/holder/d$a;

    invoke-direct {v0, p1, v1, v2}, Lcom/mh/movie/core/mvp/ui/holder/f;-><init>(Landroid/view/ViewGroup;ILcom/mh/movie/core/mvp/ui/holder/d$a;)V

    return-object v0
.end method

.method protected bridge synthetic a(Landroid/support/v7/widget/RecyclerView$ViewHolder;Ljava/lang/Object;I)V
    .locals 0

    .line 170
    check-cast p1, Lcom/mh/movie/core/mvp/ui/holder/f;

    check-cast p2, Lcom/mh/movie/core/mvp/model/entity/response/ExchangeCenterResponse$CommodityInfoListBean;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mh/movie/core/mvp/ui/activity/ExChangeActivity$4;->a(Lcom/mh/movie/core/mvp/ui/holder/f;Lcom/mh/movie/core/mvp/model/entity/response/ExchangeCenterResponse$CommodityInfoListBean;I)V

    return-void
.end method

.method protected a(Lcom/mh/movie/core/mvp/ui/holder/f;Lcom/mh/movie/core/mvp/model/entity/response/ExchangeCenterResponse$CommodityInfoListBean;I)V
    .locals 8

    .line 181
    iget-object v0, p1, Lcom/mh/movie/core/mvp/ui/holder/f;->b:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/response/ExchangeCenterResponse$CommodityInfoListBean;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 182
    iget-object v0, p1, Lcom/mh/movie/core/mvp/ui/holder/f;->a:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/ExChangeActivity$4;->a:Lcom/mh/movie/core/mvp/ui/activity/ExChangeActivity;

    iget-object v1, v1, Lcom/mh/movie/core/mvp/ui/activity/ExChangeActivity;->c:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/response/ExchangeCenterResponse$CommodityInfoListBean;->getAuthId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 202
    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/response/ExchangeCenterResponse$CommodityInfoListBean;->getValidType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 203
    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/response/ExchangeCenterResponse$CommodityInfoListBean;->getValidTime()J

    move-result-wide v2

    iget-object p2, p0, Lcom/mh/movie/core/mvp/ui/activity/ExChangeActivity$4;->a:Lcom/mh/movie/core/mvp/ui/activity/ExChangeActivity;

    iget-wide v4, p2, Lcom/mh/movie/core/mvp/ui/activity/ExChangeActivity;->f:J

    sub-long v6, v2, v4

    const-wide/32 v2, 0x15180

    div-long/2addr v6, v2

    .line 204
    iget-object p2, p1, Lcom/mh/movie/core/mvp/ui/holder/f;->c:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/16 v2, 0x1

    add-long v4, v6, v2

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "\u5929\u540e\u5230\u671f"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 206
    :cond_0
    iget-object p2, p1, Lcom/mh/movie/core/mvp/ui/holder/f;->c:Landroid/widget/TextView;

    const-string v0, "\u6c38\u4e45\u6709\u6548"

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 209
    :goto_0
    iget-object p1, p1, Lcom/mh/movie/core/mvp/ui/holder/f;->d:Landroid/view/View;

    iget-object p2, p0, Lcom/mh/movie/core/mvp/ui/activity/ExChangeActivity$4;->e:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    sub-int/2addr p2, v1

    if-ne p3, p2, :cond_1

    const/16 p2, 0x8

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    :goto_1
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public synthetic b(Landroid/view/ViewGroup;)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 170
    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/ExChangeActivity$4;->a(Landroid/view/ViewGroup;)Lcom/mh/movie/core/mvp/ui/holder/f;

    move-result-object p1

    return-object p1
.end method
