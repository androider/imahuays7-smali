.class Lcom/mh/movie/core/mvp/ui/activity/WalletActivity$1;
.super Lcom/mh/movie/core/mvp/ui/adapter/c;
.source "WalletActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/ui/activity/WalletActivity;->g()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mh/movie/core/mvp/ui/adapter/c<",
        "Lcom/mh/movie/core/mvp/model/entity/response/WalletResponse$AccountLogListBean;",
        "Lcom/mh/movie/core/mvp/ui/holder/s;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/mh/movie/core/mvp/ui/activity/WalletActivity;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/ui/activity/WalletActivity;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/WalletActivity$1;->a:Lcom/mh/movie/core/mvp/ui/activity/WalletActivity;

    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/adapter/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;)Lcom/mh/movie/core/mvp/ui/holder/s;
    .locals 2

    .line 93
    new-instance v0, Lcom/mh/movie/core/mvp/ui/holder/s;

    sget v1, Lcom/mh/movie/core/R$layout;->item_money_record:I

    invoke-direct {v0, p1, v1}, Lcom/mh/movie/core/mvp/ui/holder/s;-><init>(Landroid/view/ViewGroup;I)V

    return-object v0
.end method

.method protected bridge synthetic a(Landroid/support/v7/widget/RecyclerView$ViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 89
    check-cast p1, Lcom/mh/movie/core/mvp/ui/holder/s;

    check-cast p2, Lcom/mh/movie/core/mvp/model/entity/response/WalletResponse$AccountLogListBean;

    invoke-virtual {p0, p1, p2}, Lcom/mh/movie/core/mvp/ui/activity/WalletActivity$1;->a(Lcom/mh/movie/core/mvp/ui/holder/s;Lcom/mh/movie/core/mvp/model/entity/response/WalletResponse$AccountLogListBean;)V

    return-void
.end method

.method protected a(Lcom/mh/movie/core/mvp/ui/holder/s;Lcom/mh/movie/core/mvp/model/entity/response/WalletResponse$AccountLogListBean;)V
    .locals 3

    .line 98
    iget-object v0, p1, Lcom/mh/movie/core/mvp/ui/holder/s;->a:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/response/WalletResponse$AccountLogListBean;->getBusinessTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    iget-object v0, p1, Lcom/mh/movie/core/mvp/ui/holder/s;->b:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/response/WalletResponse$AccountLogListBean;->getGmtCreateStr()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    iget-object p1, p1, Lcom/mh/movie/core/mvp/ui/holder/s;->c:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/response/WalletResponse$AccountLogListBean;->getType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const-string v1, "+"

    goto :goto_0

    :cond_0
    const-string v1, "-"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/response/WalletResponse$AccountLogListBean;->getMoney()I

    move-result p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public synthetic b(Landroid/view/ViewGroup;)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 89
    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/WalletActivity$1;->a(Landroid/view/ViewGroup;)Lcom/mh/movie/core/mvp/ui/holder/s;

    move-result-object p1

    return-object p1
.end method
