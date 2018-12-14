.class Lcom/mh/movie/core/mvp/ui/activity/PartnerListActivity$1;
.super Lcom/mh/movie/core/mvp/ui/adapter/c;
.source "PartnerListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/ui/activity/PartnerListActivity;->h()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mh/movie/core/mvp/ui/adapter/c<",
        "Lcom/mh/movie/core/mvp/model/entity/response/UserIncomeResponse;",
        "Lcom/mh/movie/core/mvp/ui/holder/o;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/mh/movie/core/mvp/ui/activity/PartnerListActivity;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/ui/activity/PartnerListActivity;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/PartnerListActivity$1;->a:Lcom/mh/movie/core/mvp/ui/activity/PartnerListActivity;

    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/adapter/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;)Lcom/mh/movie/core/mvp/ui/holder/o;
    .locals 2

    .line 78
    new-instance v0, Lcom/mh/movie/core/mvp/ui/holder/o;

    sget v1, Lcom/mh/movie/core/R$layout;->item_partner_list:I

    invoke-direct {v0, p1, v1}, Lcom/mh/movie/core/mvp/ui/holder/o;-><init>(Landroid/view/ViewGroup;I)V

    return-object v0
.end method

.method protected bridge synthetic a(Landroid/support/v7/widget/RecyclerView$ViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 75
    check-cast p1, Lcom/mh/movie/core/mvp/ui/holder/o;

    check-cast p2, Lcom/mh/movie/core/mvp/model/entity/response/UserIncomeResponse;

    invoke-virtual {p0, p1, p2}, Lcom/mh/movie/core/mvp/ui/activity/PartnerListActivity$1;->a(Lcom/mh/movie/core/mvp/ui/holder/o;Lcom/mh/movie/core/mvp/model/entity/response/UserIncomeResponse;)V

    return-void
.end method

.method protected a(Lcom/mh/movie/core/mvp/ui/holder/o;Lcom/mh/movie/core/mvp/model/entity/response/UserIncomeResponse;)V
    .locals 6

    .line 83
    iget-object v0, p1, Lcom/mh/movie/core/mvp/ui/holder/o;->a:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/response/UserIncomeResponse;->getDate()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    iget-object v0, p1, Lcom/mh/movie/core/mvp/ui/holder/o;->b:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/response/UserIncomeResponse;->getNewPerson()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " \u4eba"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    iget-object v0, p1, Lcom/mh/movie/core/mvp/ui/holder/o;->c:Landroid/widget/TextView;

    const-string v1, "%1$.2f \u5143"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/response/UserIncomeResponse;->getMoney()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    iget-object p1, p1, Lcom/mh/movie/core/mvp/ui/holder/o;->d:Landroid/widget/TextView;

    const-string v0, "%1$.2f \u5143"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/response/UserIncomeResponse;->getTotalMoney()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    aput-object p2, v1, v5

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public synthetic b(Landroid/view/ViewGroup;)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 75
    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/PartnerListActivity$1;->a(Landroid/view/ViewGroup;)Lcom/mh/movie/core/mvp/ui/holder/o;

    move-result-object p1

    return-object p1
.end method
