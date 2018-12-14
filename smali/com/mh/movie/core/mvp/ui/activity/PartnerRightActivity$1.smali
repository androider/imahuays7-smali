.class Lcom/mh/movie/core/mvp/ui/activity/PartnerRightActivity$1;
.super Lcom/mh/movie/core/mvp/ui/adapter/c;
.source "PartnerRightActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/ui/activity/PartnerRightActivity;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mh/movie/core/mvp/ui/adapter/c<",
        "Lcom/mh/movie/core/mvp/model/entity/response/TaxRateResponse$RulesBean;",
        "Lcom/mh/movie/core/mvp/ui/holder/p;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/mh/movie/core/mvp/ui/activity/PartnerRightActivity;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/ui/activity/PartnerRightActivity;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/PartnerRightActivity$1;->a:Lcom/mh/movie/core/mvp/ui/activity/PartnerRightActivity;

    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/adapter/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;)Lcom/mh/movie/core/mvp/ui/holder/p;
    .locals 2

    .line 104
    new-instance v0, Lcom/mh/movie/core/mvp/ui/holder/p;

    sget v1, Lcom/mh/movie/core/R$layout;->item_partner_tips:I

    invoke-direct {v0, p1, v1}, Lcom/mh/movie/core/mvp/ui/holder/p;-><init>(Landroid/view/ViewGroup;I)V

    return-object v0
.end method

.method protected bridge synthetic a(Landroid/support/v7/widget/RecyclerView$ViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 101
    check-cast p1, Lcom/mh/movie/core/mvp/ui/holder/p;

    check-cast p2, Lcom/mh/movie/core/mvp/model/entity/response/TaxRateResponse$RulesBean;

    invoke-virtual {p0, p1, p2}, Lcom/mh/movie/core/mvp/ui/activity/PartnerRightActivity$1;->a(Lcom/mh/movie/core/mvp/ui/holder/p;Lcom/mh/movie/core/mvp/model/entity/response/TaxRateResponse$RulesBean;)V

    return-void
.end method

.method protected a(Lcom/mh/movie/core/mvp/ui/holder/p;Lcom/mh/movie/core/mvp/model/entity/response/TaxRateResponse$RulesBean;)V
    .locals 5

    .line 109
    iget-object v0, p1, Lcom/mh/movie/core/mvp/ui/holder/p;->a:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/response/TaxRateResponse$RulesBean;->getTaxMin()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "~"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/response/TaxRateResponse$RulesBean;->getTaxMax()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    iget-object p1, p1, Lcom/mh/movie/core/mvp/ui/holder/p;->b:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/response/TaxRateResponse$RulesBean;->getTaxRate()D

    move-result-wide v1

    const-wide/high16 v3, 0x4059000000000000L    # 100.0

    mul-double v1, v1, v3

    double-to-int p2, v1

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "%"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public synthetic b(Landroid/view/ViewGroup;)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 101
    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/PartnerRightActivity$1;->a(Landroid/view/ViewGroup;)Lcom/mh/movie/core/mvp/ui/holder/p;

    move-result-object p1

    return-object p1
.end method
