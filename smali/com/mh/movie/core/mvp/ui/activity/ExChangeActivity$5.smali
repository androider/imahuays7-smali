.class Lcom/mh/movie/core/mvp/ui/activity/ExChangeActivity$5;
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
        "Lcom/mh/movie/core/mvp/ui/holder/aa;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/mh/movie/core/mvp/ui/activity/ExChangeActivity;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/ui/activity/ExChangeActivity;Z)V
    .locals 0

    .line 214
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/ExChangeActivity$5;->a:Lcom/mh/movie/core/mvp/ui/activity/ExChangeActivity;

    invoke-direct {p0, p2}, Lcom/mh/movie/core/mvp/ui/adapter/c;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;)Lcom/mh/movie/core/mvp/ui/holder/aa;
    .locals 2

    .line 218
    new-instance v0, Lcom/mh/movie/core/mvp/ui/holder/aa;

    sget v1, Lcom/mh/movie/core/R$layout;->item_exchange_unchanged:I

    invoke-direct {v0, p1, v1}, Lcom/mh/movie/core/mvp/ui/holder/aa;-><init>(Landroid/view/ViewGroup;I)V

    return-object v0
.end method

.method protected bridge synthetic a(Landroid/support/v7/widget/RecyclerView$ViewHolder;Ljava/lang/Object;I)V
    .locals 0

    .line 214
    check-cast p1, Lcom/mh/movie/core/mvp/ui/holder/aa;

    check-cast p2, Lcom/mh/movie/core/mvp/model/entity/response/ExchangeCenterResponse$CommodityInfoListBean;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mh/movie/core/mvp/ui/activity/ExChangeActivity$5;->a(Lcom/mh/movie/core/mvp/ui/holder/aa;Lcom/mh/movie/core/mvp/model/entity/response/ExchangeCenterResponse$CommodityInfoListBean;I)V

    return-void
.end method

.method final synthetic a(Lcom/mh/movie/core/mvp/model/entity/response/ExchangeCenterResponse$CommodityInfoListBean;Landroid/view/View;)V
    .locals 2

    .line 257
    iget-object p2, p0, Lcom/mh/movie/core/mvp/ui/activity/ExChangeActivity$5;->a:Lcom/mh/movie/core/mvp/ui/activity/ExChangeActivity;

    iget-object p2, p2, Lcom/mh/movie/core/mvp/ui/activity/ExChangeActivity;->d:Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u5f00\u901a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/ExchangeCenterResponse$CommodityInfoListBean;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->a(Ljava/lang/String;)V

    .line 258
    iget-object p2, p0, Lcom/mh/movie/core/mvp/ui/activity/ExChangeActivity$5;->a:Lcom/mh/movie/core/mvp/ui/activity/ExChangeActivity;

    iget-object p2, p2, Lcom/mh/movie/core/mvp/ui/activity/ExChangeActivity;->d:Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u5f00\u901a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/ExchangeCenterResponse$CommodityInfoListBean;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\u9700\u8981"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/ExchangeCenterResponse$CommodityInfoListBean;->getMoney()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\u9ebb\u82b1\u5e01,\u786e\u5b9a\u5f00\u901a\uff1f"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->b(Ljava/lang/String;)V

    .line 259
    iget-object p2, p0, Lcom/mh/movie/core/mvp/ui/activity/ExChangeActivity$5;->a:Lcom/mh/movie/core/mvp/ui/activity/ExChangeActivity;

    iget-object p2, p2, Lcom/mh/movie/core/mvp/ui/activity/ExChangeActivity;->d:Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;

    new-instance v0, Lcom/mh/movie/core/mvp/ui/activity/ExChangeActivity$5$1;

    invoke-direct {v0, p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/ExChangeActivity$5$1;-><init>(Lcom/mh/movie/core/mvp/ui/activity/ExChangeActivity$5;Lcom/mh/movie/core/mvp/model/entity/response/ExchangeCenterResponse$CommodityInfoListBean;)V

    invoke-virtual {p2, v0}, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->a(Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog$a;)V

    .line 270
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/ExChangeActivity$5;->a:Lcom/mh/movie/core/mvp/ui/activity/ExChangeActivity;

    iget-object p1, p1, Lcom/mh/movie/core/mvp/ui/activity/ExChangeActivity;->d:Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->show()V

    return-void
.end method

.method protected a(Lcom/mh/movie/core/mvp/ui/holder/aa;Lcom/mh/movie/core/mvp/model/entity/response/ExchangeCenterResponse$CommodityInfoListBean;I)V
    .locals 5

    .line 223
    iget-object v0, p1, Lcom/mh/movie/core/mvp/ui/holder/aa;->b:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/response/ExchangeCenterResponse$CommodityInfoListBean;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 224
    iget-object v0, p1, Lcom/mh/movie/core/mvp/ui/holder/aa;->c:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/response/ExchangeCenterResponse$CommodityInfoListBean;->getMoney()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\u9ebb\u82b1\u5e01"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v0, ""

    .line 226
    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/response/ExchangeCenterResponse$CommodityInfoListBean;->getValidUnit()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v0, "\u5e74"

    goto :goto_0

    :pswitch_1
    const-string v0, "\u4e2a\u6708"

    goto :goto_0

    :pswitch_2
    const-string v0, "\u5929"

    goto :goto_0

    :pswitch_3
    const-string v0, "\u4e2a\u5c0f\u65f6"

    goto :goto_0

    :pswitch_4
    const-string v0, "\u6b21"

    .line 243
    :goto_0
    iget-object v1, p1, Lcom/mh/movie/core/mvp/ui/holder/aa;->d:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/response/ExchangeCenterResponse$CommodityInfoListBean;->getValidType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u6709\u6548\u671f\uff1a"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/response/ExchangeCenterResponse$CommodityInfoListBean;->getValidNum()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_0
    const-string v0, "\u6709\u6548\u671f\uff1a\u6c38\u4e45"

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 244
    iget-object v0, p1, Lcom/mh/movie/core/mvp/ui/holder/aa;->a:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/ExChangeActivity$5;->a:Lcom/mh/movie/core/mvp/ui/activity/ExChangeActivity;

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

    .line 245
    iget-object v0, p1, Lcom/mh/movie/core/mvp/ui/holder/aa;->f:Landroid/view/View;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/ExChangeActivity$5;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v3

    if-ne p3, v1, :cond_1

    const/16 p3, 0x8

    goto :goto_2

    :cond_1
    const/4 p3, 0x0

    :goto_2
    invoke-virtual {v0, p3}, Landroid/view/View;->setVisibility(I)V

    .line 247
    iget-object p3, p0, Lcom/mh/movie/core/mvp/ui/activity/ExChangeActivity$5;->a:Lcom/mh/movie/core/mvp/ui/activity/ExChangeActivity;

    iget p3, p3, Lcom/mh/movie/core/mvp/ui/activity/ExChangeActivity;->e:I

    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/response/ExchangeCenterResponse$CommodityInfoListBean;->getMoney()I

    move-result v0

    if-ge p3, v0, :cond_2

    .line 248
    iget-object p2, p1, Lcom/mh/movie/core/mvp/ui/holder/aa;->e:Landroid/widget/TextView;

    const-string p3, "\u4f59\u989d\u4e0d\u8db3"

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 249
    iget-object p2, p1, Lcom/mh/movie/core/mvp/ui/holder/aa;->e:Landroid/widget/TextView;

    iget-object p3, p0, Lcom/mh/movie/core/mvp/ui/activity/ExChangeActivity$5;->a:Lcom/mh/movie/core/mvp/ui/activity/ExChangeActivity;

    iget-object p3, p3, Lcom/mh/movie/core/mvp/ui/activity/ExChangeActivity;->r:Landroid/content/Context;

    sget v0, Lcom/mh/movie/core/R$color;->grey_99:I

    invoke-static {p3, v0}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 250
    iget-object p2, p1, Lcom/mh/movie/core/mvp/ui/holder/aa;->e:Landroid/widget/TextView;

    sget p3, Lcom/mh/movie/core/R$drawable;->corner_btn_grey_bg:I

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 251
    iget-object p1, p1, Lcom/mh/movie/core/mvp/ui/holder/aa;->e:Landroid/widget/TextView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_3

    .line 253
    :cond_2
    iget-object p3, p1, Lcom/mh/movie/core/mvp/ui/holder/aa;->e:Landroid/widget/TextView;

    const-string v0, "\u7acb\u5373\u5151\u6362"

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 254
    iget-object p3, p1, Lcom/mh/movie/core/mvp/ui/holder/aa;->e:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/ExChangeActivity$5;->a:Lcom/mh/movie/core/mvp/ui/activity/ExChangeActivity;

    iget-object v0, v0, Lcom/mh/movie/core/mvp/ui/activity/ExChangeActivity;->r:Landroid/content/Context;

    sget v1, Lcom/mh/movie/core/R$color;->themeColor:I

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 255
    iget-object p3, p1, Lcom/mh/movie/core/mvp/ui/holder/aa;->e:Landroid/widget/TextView;

    sget v0, Lcom/mh/movie/core/R$drawable;->corner_btn_red_bg:I

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 256
    iget-object p1, p1, Lcom/mh/movie/core/mvp/ui/holder/aa;->e:Landroid/widget/TextView;

    new-instance p3, Lcom/mh/movie/core/mvp/ui/activity/w;

    invoke-direct {p3, p0, p2}, Lcom/mh/movie/core/mvp/ui/activity/w;-><init>(Lcom/mh/movie/core/mvp/ui/activity/ExChangeActivity$5;Lcom/mh/movie/core/mvp/model/entity/response/ExchangeCenterResponse$CommodityInfoListBean;)V

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public synthetic b(Landroid/view/ViewGroup;)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 214
    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/ExChangeActivity$5;->a(Landroid/view/ViewGroup;)Lcom/mh/movie/core/mvp/ui/holder/aa;

    move-result-object p1

    return-object p1
.end method
