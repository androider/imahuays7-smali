.class Lcom/mh/movie/core/mvp/ui/widget/TvPartLandView$1;
.super Lcom/mh/movie/core/mvp/ui/adapter/c;
.source "TvPartLandView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mh/movie/core/mvp/ui/widget/TvPartLandView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mh/movie/core/mvp/ui/adapter/c<",
        "Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoPageListBean;",
        "Lcom/mh/movie/core/mvp/ui/holder/z;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/mh/movie/core/mvp/ui/widget/TvPartLandView;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/ui/widget/TvPartLandView;Z)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/TvPartLandView$1;->a:Lcom/mh/movie/core/mvp/ui/widget/TvPartLandView;

    invoke-direct {p0, p2}, Lcom/mh/movie/core/mvp/ui/adapter/c;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;)Lcom/mh/movie/core/mvp/ui/holder/z;
    .locals 3

    .line 75
    new-instance v0, Lcom/mh/movie/core/mvp/ui/holder/z;

    sget v1, Lcom/mh/movie/core/R$layout;->item_tv_pager_land:I

    new-instance v2, Lcom/mh/movie/core/mvp/ui/widget/y;

    invoke-direct {v2, p0}, Lcom/mh/movie/core/mvp/ui/widget/y;-><init>(Lcom/mh/movie/core/mvp/ui/widget/TvPartLandView$1;)V

    invoke-direct {v0, p1, v1, v2}, Lcom/mh/movie/core/mvp/ui/holder/z;-><init>(Landroid/view/ViewGroup;ILcom/mh/movie/core/mvp/ui/holder/d$a;)V

    return-object v0
.end method

.method final synthetic a(I)V
    .locals 4

    .line 76
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/TvPartLandView$1;->a:Lcom/mh/movie/core/mvp/ui/widget/TvPartLandView;

    invoke-static {v0, p1}, Lcom/mh/movie/core/mvp/ui/widget/TvPartLandView;->a(Lcom/mh/movie/core/mvp/ui/widget/TvPartLandView;I)I

    .line 77
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/TvPartLandView$1;->notifyDataSetChanged()V

    .line 78
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/TvPartLandView$1;->a:Lcom/mh/movie/core/mvp/ui/widget/TvPartLandView;

    iget-object v0, v0, Lcom/mh/movie/core/mvp/ui/widget/TvPartLandView;->b:Lcom/mh/movie/core/mvp/ui/widget/TvPartLandView$a;

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/TvPartLandView$1;->a:Lcom/mh/movie/core/mvp/ui/widget/TvPartLandView;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/TvPartLandView$1;->a:Lcom/mh/movie/core/mvp/ui/widget/TvPartLandView;

    invoke-static {v1}, Lcom/mh/movie/core/mvp/ui/widget/TvPartLandView;->b(Lcom/mh/movie/core/mvp/ui/widget/TvPartLandView;)I

    move-result v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/mh/movie/core/mvp/ui/widget/TvPartLandView;->a(ILjava/util/List;I)V

    .line 80
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/TvPartLandView$1;->a:Lcom/mh/movie/core/mvp/ui/widget/TvPartLandView;

    iget-object v0, v0, Lcom/mh/movie/core/mvp/ui/widget/TvPartLandView;->b:Lcom/mh/movie/core/mvp/ui/widget/TvPartLandView$a;

    invoke-interface {v0, p1}, Lcom/mh/movie/core/mvp/ui/widget/TvPartLandView$a;->a(I)V

    :cond_0
    return-void
.end method

.method protected bridge synthetic a(Landroid/support/v7/widget/RecyclerView$ViewHolder;Ljava/lang/Object;I)V
    .locals 0

    .line 71
    check-cast p1, Lcom/mh/movie/core/mvp/ui/holder/z;

    check-cast p2, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoPageListBean;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mh/movie/core/mvp/ui/widget/TvPartLandView$1;->a(Lcom/mh/movie/core/mvp/ui/holder/z;Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoPageListBean;I)V

    return-void
.end method

.method protected a(Lcom/mh/movie/core/mvp/ui/holder/z;Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoPageListBean;I)V
    .locals 1

    .line 87
    iget-object v0, p1, Lcom/mh/movie/core/mvp/ui/holder/z;->a:Landroid/widget/CheckBox;

    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoPageListBean;->getTabName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 88
    iget-object p2, p1, Lcom/mh/movie/core/mvp/ui/holder/z;->a:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/TvPartLandView$1;->a:Lcom/mh/movie/core/mvp/ui/widget/TvPartLandView;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/widget/TvPartLandView;->a(Lcom/mh/movie/core/mvp/ui/widget/TvPartLandView;)I

    move-result v0

    if-ne p3, v0, :cond_0

    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    invoke-virtual {p2, p3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 89
    iget-object p2, p1, Lcom/mh/movie/core/mvp/ui/holder/z;->a:Landroid/widget/CheckBox;

    invoke-virtual {p2}, Landroid/widget/CheckBox;->getPaint()Landroid/text/TextPaint;

    move-result-object p2

    .line 90
    iget-object p1, p1, Lcom/mh/movie/core/mvp/ui/holder/z;->a:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    invoke-virtual {p2, p1}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    return-void
.end method

.method public synthetic b(Landroid/view/ViewGroup;)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 71
    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/ui/widget/TvPartLandView$1;->a(Landroid/view/ViewGroup;)Lcom/mh/movie/core/mvp/ui/holder/z;

    move-result-object p1

    return-object p1
.end method
