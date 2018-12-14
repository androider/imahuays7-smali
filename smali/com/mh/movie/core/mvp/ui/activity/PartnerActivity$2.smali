.class Lcom/mh/movie/core/mvp/ui/activity/PartnerActivity$2;
.super Lcom/mh/movie/core/mvp/ui/adapter/c;
.source "PartnerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/ui/activity/PartnerActivity;->h()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mh/movie/core/mvp/ui/adapter/c<",
        "Lcom/mh/movie/core/mvp/model/entity/response/ProHomeResponse$ThreeDaysBean;",
        "Lcom/mh/movie/core/mvp/ui/holder/q;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/mh/movie/core/mvp/ui/activity/PartnerActivity;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/ui/activity/PartnerActivity;)V
    .locals 0

    .line 132
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/PartnerActivity$2;->a:Lcom/mh/movie/core/mvp/ui/activity/PartnerActivity;

    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/adapter/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;)Lcom/mh/movie/core/mvp/ui/holder/q;
    .locals 2

    .line 136
    new-instance v0, Lcom/mh/movie/core/mvp/ui/holder/q;

    sget v1, Lcom/mh/movie/core/R$layout;->item_partner:I

    invoke-direct {v0, p1, v1}, Lcom/mh/movie/core/mvp/ui/holder/q;-><init>(Landroid/view/ViewGroup;I)V

    return-object v0
.end method

.method protected bridge synthetic a(Landroid/support/v7/widget/RecyclerView$ViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 132
    check-cast p1, Lcom/mh/movie/core/mvp/ui/holder/q;

    check-cast p2, Lcom/mh/movie/core/mvp/model/entity/response/ProHomeResponse$ThreeDaysBean;

    invoke-virtual {p0, p1, p2}, Lcom/mh/movie/core/mvp/ui/activity/PartnerActivity$2;->a(Lcom/mh/movie/core/mvp/ui/holder/q;Lcom/mh/movie/core/mvp/model/entity/response/ProHomeResponse$ThreeDaysBean;)V

    return-void
.end method

.method protected a(Lcom/mh/movie/core/mvp/ui/holder/q;Lcom/mh/movie/core/mvp/model/entity/response/ProHomeResponse$ThreeDaysBean;)V
    .locals 6

    .line 141
    iget-object v0, p1, Lcom/mh/movie/core/mvp/ui/holder/q;->a:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/response/ProHomeResponse$ThreeDaysBean;->getDate()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    iget-object v0, p1, Lcom/mh/movie/core/mvp/ui/holder/q;->b:Landroid/widget/TextView;

    const-string v1, "\u63a8\u5e7f\u4eba\u6570\uff1a%s \u4eba"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/response/ProHomeResponse$ThreeDaysBean;->getNewPerson()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 143
    iget-object p1, p1, Lcom/mh/movie/core/mvp/ui/holder/q;->c:Landroid/widget/TextView;

    const-string v0, "\u5206\u7ea2\uff1a%1$.2f \u5143"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/response/ProHomeResponse$ThreeDaysBean;->getMoney()D

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

    .line 132
    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/PartnerActivity$2;->a(Landroid/view/ViewGroup;)Lcom/mh/movie/core/mvp/ui/holder/q;

    move-result-object p1

    return-object p1
.end method
