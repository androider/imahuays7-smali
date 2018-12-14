.class Lcom/mh/movie/core/mvp/ui/activity/SelectBankActivity$1;
.super Lcom/mh/movie/core/mvp/ui/adapter/c;
.source "SelectBankActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/ui/activity/SelectBankActivity;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mh/movie/core/mvp/ui/adapter/c<",
        "Lcom/mh/movie/core/mvp/model/entity/response/BankResponse$BankListBean;",
        "Lcom/mh/movie/core/mvp/ui/holder/c;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/mh/movie/core/mvp/ui/activity/SelectBankActivity;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/ui/activity/SelectBankActivity;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/SelectBankActivity$1;->a:Lcom/mh/movie/core/mvp/ui/activity/SelectBankActivity;

    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/adapter/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;)Lcom/mh/movie/core/mvp/ui/holder/c;
    .locals 3

    .line 95
    new-instance v0, Lcom/mh/movie/core/mvp/ui/holder/c;

    sget v1, Lcom/mh/movie/core/R$layout;->item_bank:I

    new-instance v2, Lcom/mh/movie/core/mvp/ui/activity/au;

    invoke-direct {v2, p0}, Lcom/mh/movie/core/mvp/ui/activity/au;-><init>(Lcom/mh/movie/core/mvp/ui/activity/SelectBankActivity$1;)V

    invoke-direct {v0, p1, v1, v2}, Lcom/mh/movie/core/mvp/ui/holder/c;-><init>(Landroid/view/ViewGroup;ILcom/mh/movie/core/mvp/ui/holder/d$a;)V

    return-object v0
.end method

.method final synthetic a(I)V
    .locals 3

    .line 96
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "select_bank"

    .line 97
    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/activity/SelectBankActivity$1;->e:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/Serializable;

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 98
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/SelectBankActivity$1;->a:Lcom/mh/movie/core/mvp/ui/activity/SelectBankActivity;

    const/4 v1, -0x1

    invoke-virtual {p1, v1, v0}, Lcom/mh/movie/core/mvp/ui/activity/SelectBankActivity;->setResult(ILandroid/content/Intent;)V

    .line 99
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/SelectBankActivity$1;->a:Lcom/mh/movie/core/mvp/ui/activity/SelectBankActivity;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/ui/activity/SelectBankActivity;->finish()V

    return-void
.end method

.method protected bridge synthetic a(Landroid/support/v7/widget/RecyclerView$ViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 92
    check-cast p1, Lcom/mh/movie/core/mvp/ui/holder/c;

    check-cast p2, Lcom/mh/movie/core/mvp/model/entity/response/BankResponse$BankListBean;

    invoke-virtual {p0, p1, p2}, Lcom/mh/movie/core/mvp/ui/activity/SelectBankActivity$1;->a(Lcom/mh/movie/core/mvp/ui/holder/c;Lcom/mh/movie/core/mvp/model/entity/response/BankResponse$BankListBean;)V

    return-void
.end method

.method protected a(Lcom/mh/movie/core/mvp/ui/holder/c;Lcom/mh/movie/core/mvp/model/entity/response/BankResponse$BankListBean;)V
    .locals 0

    .line 105
    iget-object p1, p1, Lcom/mh/movie/core/mvp/ui/holder/c;->a:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/response/BankResponse$BankListBean;->getBankName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public synthetic b(Landroid/view/ViewGroup;)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 92
    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/SelectBankActivity$1;->a(Landroid/view/ViewGroup;)Lcom/mh/movie/core/mvp/ui/holder/c;

    move-result-object p1

    return-object p1
.end method
