.class Lcom/mh/movie/core/mvp/ui/activity/PartnerActivity$4;
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
        "Lcom/mh/movie/core/mvp/model/entity/response/ProHomeResponse$SystemListBean;",
        "Lcom/mh/movie/core/mvp/ui/holder/r;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Lcom/mh/movie/core/mvp/ui/activity/PartnerActivity;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/ui/activity/PartnerActivity;II)V
    .locals 0

    .line 164
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/PartnerActivity$4;->c:Lcom/mh/movie/core/mvp/ui/activity/PartnerActivity;

    iput p2, p0, Lcom/mh/movie/core/mvp/ui/activity/PartnerActivity$4;->a:I

    iput p3, p0, Lcom/mh/movie/core/mvp/ui/activity/PartnerActivity$4;->b:I

    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/adapter/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;)Lcom/mh/movie/core/mvp/ui/holder/r;
    .locals 7

    .line 167
    new-instance v6, Lcom/mh/movie/core/mvp/ui/holder/r;

    sget v2, Lcom/mh/movie/core/R$layout;->share_item_layout:I

    iget v3, p0, Lcom/mh/movie/core/mvp/ui/activity/PartnerActivity$4;->a:I

    iget v4, p0, Lcom/mh/movie/core/mvp/ui/activity/PartnerActivity$4;->b:I

    new-instance v5, Lcom/mh/movie/core/mvp/ui/activity/ah;

    invoke-direct {v5, p0}, Lcom/mh/movie/core/mvp/ui/activity/ah;-><init>(Lcom/mh/movie/core/mvp/ui/activity/PartnerActivity$4;)V

    move-object v0, v6

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/mh/movie/core/mvp/ui/holder/r;-><init>(Landroid/view/ViewGroup;IIILcom/mh/movie/core/mvp/ui/holder/d$a;)V

    return-object v6
.end method

.method final synthetic a(I)V
    .locals 2

    .line 168
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/PartnerActivity$4;->c:Lcom/mh/movie/core/mvp/ui/activity/PartnerActivity;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/PartnerActivity$4;->e:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mh/movie/core/mvp/model/entity/response/ProHomeResponse$SystemListBean;

    iput-object p1, v0, Lcom/mh/movie/core/mvp/ui/activity/PartnerActivity;->f:Lcom/mh/movie/core/mvp/model/entity/response/ProHomeResponse$SystemListBean;

    .line 169
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/PartnerActivity$4;->c:Lcom/mh/movie/core/mvp/ui/activity/PartnerActivity;

    iget-object p1, p1, Lcom/mh/movie/core/mvp/ui/activity/PartnerActivity;->f:Lcom/mh/movie/core/mvp/model/entity/response/ProHomeResponse$SystemListBean;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/ProHomeResponse$SystemListBean;->isProMark()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 170
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/PartnerActivity$4;->c:Lcom/mh/movie/core/mvp/ui/activity/PartnerActivity;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/ui/activity/PartnerActivity;->f()V

    goto :goto_0

    .line 173
    :cond_0
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/PartnerActivity$4;->c:Lcom/mh/movie/core/mvp/ui/activity/PartnerActivity;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/ui/activity/PartnerActivity;->e()V

    :goto_0
    return-void
.end method

.method protected bridge synthetic a(Landroid/support/v7/widget/RecyclerView$ViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 164
    check-cast p1, Lcom/mh/movie/core/mvp/ui/holder/r;

    check-cast p2, Lcom/mh/movie/core/mvp/model/entity/response/ProHomeResponse$SystemListBean;

    invoke-virtual {p0, p1, p2}, Lcom/mh/movie/core/mvp/ui/activity/PartnerActivity$4;->a(Lcom/mh/movie/core/mvp/ui/holder/r;Lcom/mh/movie/core/mvp/model/entity/response/ProHomeResponse$SystemListBean;)V

    return-void
.end method

.method protected a(Lcom/mh/movie/core/mvp/ui/holder/r;Lcom/mh/movie/core/mvp/model/entity/response/ProHomeResponse$SystemListBean;)V
    .locals 2

    .line 180
    iget-object v0, p1, Lcom/mh/movie/core/mvp/ui/holder/r;->e:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/response/ProHomeResponse$SystemListBean;->getSystemName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 181
    iget-object p1, p1, Lcom/mh/movie/core/mvp/ui/holder/r;->f:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/response/ProHomeResponse$SystemListBean;->getProDescription()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/raizlabs/android/dbflow/a;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p2, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/response/ProHomeResponse$SystemListBean;->getProDescription()Ljava/lang/String;

    move-result-object p2

    :goto_0
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public synthetic b(Landroid/view/ViewGroup;)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 164
    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/PartnerActivity$4;->a(Landroid/view/ViewGroup;)Lcom/mh/movie/core/mvp/ui/holder/r;

    move-result-object p1

    return-object p1
.end method
