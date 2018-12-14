.class Lcom/mh/movie/core/mvp/ui/widget/TvPartLandView$2;
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
        "Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;",
        "Lcom/mh/movie/core/mvp/ui/holder/z;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/mh/movie/core/mvp/ui/widget/TvPartLandView;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/ui/widget/TvPartLandView;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/TvPartLandView$2;->a:Lcom/mh/movie/core/mvp/ui/widget/TvPartLandView;

    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/adapter/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;)Lcom/mh/movie/core/mvp/ui/holder/z;
    .locals 3

    .line 104
    new-instance v0, Lcom/mh/movie/core/mvp/ui/holder/z;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/TvPartLandView$2;->a:Lcom/mh/movie/core/mvp/ui/widget/TvPartLandView;

    invoke-static {v1}, Lcom/mh/movie/core/mvp/ui/widget/TvPartLandView;->b(Lcom/mh/movie/core/mvp/ui/widget/TvPartLandView;)I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    sget v1, Lcom/mh/movie/core/R$layout;->item_variety_part_land:I

    goto :goto_0

    :cond_0
    sget v1, Lcom/mh/movie/core/R$layout;->item_tv_part_land:I

    :goto_0
    new-instance v2, Lcom/mh/movie/core/mvp/ui/widget/z;

    invoke-direct {v2, p0}, Lcom/mh/movie/core/mvp/ui/widget/z;-><init>(Lcom/mh/movie/core/mvp/ui/widget/TvPartLandView$2;)V

    invoke-direct {v0, p1, v1, v2}, Lcom/mh/movie/core/mvp/ui/holder/z;-><init>(Landroid/view/ViewGroup;ILcom/mh/movie/core/mvp/ui/holder/d$a;)V

    return-object v0
.end method

.method final synthetic a(I)V
    .locals 2

    .line 105
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/TvPartLandView$2;->a:Lcom/mh/movie/core/mvp/ui/widget/TvPartLandView;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/TvPartLandView$2;->e:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;->getId()I

    move-result v1

    invoke-static {v0, v1}, Lcom/mh/movie/core/mvp/ui/widget/TvPartLandView;->b(Lcom/mh/movie/core/mvp/ui/widget/TvPartLandView;I)I

    .line 106
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/TvPartLandView$2;->a:Lcom/mh/movie/core/mvp/ui/widget/TvPartLandView;

    iget-object v0, v0, Lcom/mh/movie/core/mvp/ui/widget/TvPartLandView;->b:Lcom/mh/movie/core/mvp/ui/widget/TvPartLandView$a;

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/TvPartLandView$2;->a:Lcom/mh/movie/core/mvp/ui/widget/TvPartLandView;

    iget-object v0, v0, Lcom/mh/movie/core/mvp/ui/widget/TvPartLandView;->b:Lcom/mh/movie/core/mvp/ui/widget/TvPartLandView$a;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/TvPartLandView$2;->e:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/TvPartLandView$2;->a:Lcom/mh/movie/core/mvp/ui/widget/TvPartLandView;

    invoke-static {v1}, Lcom/mh/movie/core/mvp/ui/widget/TvPartLandView;->a(Lcom/mh/movie/core/mvp/ui/widget/TvPartLandView;)I

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/mh/movie/core/mvp/ui/widget/TvPartLandView$a;->a(Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;I)V

    .line 108
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/TvPartLandView$2;->a:Lcom/mh/movie/core/mvp/ui/widget/TvPartLandView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/mh/movie/core/mvp/ui/widget/TvPartLandView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method protected bridge synthetic a(Landroid/support/v7/widget/RecyclerView$ViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 100
    check-cast p1, Lcom/mh/movie/core/mvp/ui/holder/z;

    check-cast p2, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;

    invoke-virtual {p0, p1, p2}, Lcom/mh/movie/core/mvp/ui/widget/TvPartLandView$2;->a(Lcom/mh/movie/core/mvp/ui/holder/z;Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;)V

    return-void
.end method

.method protected a(Lcom/mh/movie/core/mvp/ui/holder/z;Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;)V
    .locals 5

    .line 115
    iget-object v0, p1, Lcom/mh/movie/core/mvp/ui/holder/z;->a:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/TvPartLandView$2;->a:Lcom/mh/movie/core/mvp/ui/widget/TvPartLandView;

    invoke-static {v1}, Lcom/mh/movie/core/mvp/ui/widget/TvPartLandView;->b(Lcom/mh/movie/core/mvp/ui/widget/TvPartLandView;)I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;->getPeriod()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\u671f"

    :goto_0
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;->getSortNum()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ""

    goto :goto_0

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 116
    iget-object v0, p1, Lcom/mh/movie/core/mvp/ui/holder/z;->a:Landroid/widget/CheckBox;

    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;->getId()I

    move-result v1

    iget-object v3, p0, Lcom/mh/movie/core/mvp/ui/widget/TvPartLandView$2;->a:Lcom/mh/movie/core/mvp/ui/widget/TvPartLandView;

    invoke-static {v3}, Lcom/mh/movie/core/mvp/ui/widget/TvPartLandView;->c(Lcom/mh/movie/core/mvp/ui/widget/TvPartLandView;)I

    move-result v3

    const/4 v4, 0x0

    if-ne v1, v3, :cond_1

    const/4 v1, 0x1

    goto :goto_2

    :cond_1
    const/4 v1, 0x0

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 118
    iget-object v0, p1, Lcom/mh/movie/core/mvp/ui/holder/z;->a:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    .line 119
    iget-object v1, p1, Lcom/mh/movie/core/mvp/ui/holder/z;->a:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 121
    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;->getTagDTO()Lcom/mh/movie/core/mvp/model/entity/TagDTOBean;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 122
    iget-object p2, p1, Lcom/mh/movie/core/mvp/ui/holder/z;->b:Landroid/widget/TextView;

    const-string v0, "\u70ed\u95e8"

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    iget-object p2, p1, Lcom/mh/movie/core/mvp/ui/holder/z;->b:Landroid/widget/TextView;

    invoke-virtual {p2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 124
    iget-object p2, p1, Lcom/mh/movie/core/mvp/ui/holder/z;->b:Landroid/widget/TextView;

    iget-object p1, p1, Lcom/mh/movie/core/mvp/ui/holder/z;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/mh/movie/core/R$drawable;->clarity_label_bg_1:I

    invoke-static {p1, v0}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    .line 137
    :cond_2
    iget-object p1, p1, Lcom/mh/movie/core/mvp/ui/holder/z;->b:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_3
    return-void
.end method

.method public synthetic b(Landroid/view/ViewGroup;)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 100
    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/ui/widget/TvPartLandView$2;->a(Landroid/view/ViewGroup;)Lcom/mh/movie/core/mvp/ui/holder/z;

    move-result-object p1

    return-object p1
.end method
