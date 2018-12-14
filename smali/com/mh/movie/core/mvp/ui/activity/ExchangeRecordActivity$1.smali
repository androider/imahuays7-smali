.class Lcom/mh/movie/core/mvp/ui/activity/ExchangeRecordActivity$1;
.super Lcom/mh/movie/core/mvp/ui/adapter/c;
.source "ExchangeRecordActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/ui/activity/ExchangeRecordActivity;->h()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mh/movie/core/mvp/ui/adapter/c<",
        "Lcom/mh/movie/core/mvp/model/entity/response/RecordResponse;",
        "Lcom/mh/movie/core/mvp/ui/holder/i;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/mh/movie/core/mvp/ui/activity/ExchangeRecordActivity;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/ui/activity/ExchangeRecordActivity;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/ExchangeRecordActivity$1;->a:Lcom/mh/movie/core/mvp/ui/activity/ExchangeRecordActivity;

    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/adapter/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;)Lcom/mh/movie/core/mvp/ui/holder/i;
    .locals 2

    .line 83
    new-instance v0, Lcom/mh/movie/core/mvp/ui/holder/i;

    sget v1, Lcom/mh/movie/core/R$layout;->item_exchange_record:I

    invoke-direct {v0, p1, v1}, Lcom/mh/movie/core/mvp/ui/holder/i;-><init>(Landroid/view/ViewGroup;I)V

    return-object v0
.end method

.method protected bridge synthetic a(Landroid/support/v7/widget/RecyclerView$ViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 80
    check-cast p1, Lcom/mh/movie/core/mvp/ui/holder/i;

    check-cast p2, Lcom/mh/movie/core/mvp/model/entity/response/RecordResponse;

    invoke-virtual {p0, p1, p2}, Lcom/mh/movie/core/mvp/ui/activity/ExchangeRecordActivity$1;->a(Lcom/mh/movie/core/mvp/ui/holder/i;Lcom/mh/movie/core/mvp/model/entity/response/RecordResponse;)V

    return-void
.end method

.method protected a(Lcom/mh/movie/core/mvp/ui/holder/i;Lcom/mh/movie/core/mvp/model/entity/response/RecordResponse;)V
    .locals 4

    .line 88
    iget-object v0, p1, Lcom/mh/movie/core/mvp/ui/holder/i;->a:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u8ba2\u5355\u7f16\u53f7\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/response/RecordResponse;->getOrderId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    iget-object v0, p1, Lcom/mh/movie/core/mvp/ui/holder/i;->b:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/response/RecordResponse;->getCreateTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/mh/movie/core/mvp/ui/utils/DateUtils;->longFormatDate(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    iget-object v0, p1, Lcom/mh/movie/core/mvp/ui/holder/i;->c:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/response/RecordResponse;->getAmount()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    iget-object v0, p1, Lcom/mh/movie/core/mvp/ui/holder/i;->d:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/response/RecordResponse;->getBalance()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/response/RecordResponse;->getStatus()I

    move-result p2

    const/4 v0, 0x3

    if-eq p2, v0, :cond_1

    const/16 v0, 0x8

    if-eq p2, v0, :cond_0

    .line 102
    iget-object p2, p1, Lcom/mh/movie/core/mvp/ui/holder/i;->e:Landroid/widget/TextView;

    const-string v0, "\u5904\u7406\u4e2d"

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    iget-object p1, p1, Lcom/mh/movie/core/mvp/ui/holder/i;->e:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/mh/movie/core/mvp/ui/activity/ExchangeRecordActivity$1;->a:Lcom/mh/movie/core/mvp/ui/activity/ExchangeRecordActivity;

    iget-object p2, p2, Lcom/mh/movie/core/mvp/ui/activity/ExchangeRecordActivity;->r:Landroid/content/Context;

    sget v0, Lcom/mh/movie/core/R$color;->state_deal:I

    invoke-static {p2, v0}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 98
    :cond_0
    iget-object p2, p1, Lcom/mh/movie/core/mvp/ui/holder/i;->e:Landroid/widget/TextView;

    const-string v0, "\u63d0\u73b0\u5931\u8d25"

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    iget-object p1, p1, Lcom/mh/movie/core/mvp/ui/holder/i;->e:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/mh/movie/core/mvp/ui/activity/ExchangeRecordActivity$1;->a:Lcom/mh/movie/core/mvp/ui/activity/ExchangeRecordActivity;

    iget-object p2, p2, Lcom/mh/movie/core/mvp/ui/activity/ExchangeRecordActivity;->r:Landroid/content/Context;

    sget v0, Lcom/mh/movie/core/R$color;->state_back:I

    invoke-static {p2, v0}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 94
    :cond_1
    iget-object p2, p1, Lcom/mh/movie/core/mvp/ui/holder/i;->e:Landroid/widget/TextView;

    const-string v0, "\u5b8c\u6210"

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    iget-object p1, p1, Lcom/mh/movie/core/mvp/ui/holder/i;->e:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/mh/movie/core/mvp/ui/activity/ExchangeRecordActivity$1;->a:Lcom/mh/movie/core/mvp/ui/activity/ExchangeRecordActivity;

    iget-object p2, p2, Lcom/mh/movie/core/mvp/ui/activity/ExchangeRecordActivity;->r:Landroid/content/Context;

    sget v0, Lcom/mh/movie/core/R$color;->state_success:I

    invoke-static {p2, v0}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_0
    return-void
.end method

.method public synthetic b(Landroid/view/ViewGroup;)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 80
    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/ExchangeRecordActivity$1;->a(Landroid/view/ViewGroup;)Lcom/mh/movie/core/mvp/ui/holder/i;

    move-result-object p1

    return-object p1
.end method
