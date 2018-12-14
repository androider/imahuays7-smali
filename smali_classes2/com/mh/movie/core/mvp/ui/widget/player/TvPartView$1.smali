.class Lcom/mh/movie/core/mvp/ui/widget/player/TvPartView$1;
.super Lcom/mh/movie/core/mvp/ui/adapter/c;
.source "TvPartView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/ui/widget/player/TvPartView;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mh/movie/core/mvp/ui/adapter/c<",
        "Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoPageListBean;",
        "Lcom/mh/movie/core/mvp/ui/holder/player/b;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/mh/movie/core/mvp/ui/widget/player/TvPartView;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/ui/widget/player/TvPartView;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/player/TvPartView$1;->a:Lcom/mh/movie/core/mvp/ui/widget/player/TvPartView;

    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/adapter/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;)Lcom/mh/movie/core/mvp/ui/holder/player/b;
    .locals 3

    .line 71
    new-instance v0, Lcom/mh/movie/core/mvp/ui/holder/player/b;

    sget v1, Lcom/mh/movie/core/R$layout;->item_cache_pager:I

    new-instance v2, Lcom/mh/movie/core/mvp/ui/widget/player/d;

    invoke-direct {v2, p0}, Lcom/mh/movie/core/mvp/ui/widget/player/d;-><init>(Lcom/mh/movie/core/mvp/ui/widget/player/TvPartView$1;)V

    invoke-direct {v0, p1, v1, v2}, Lcom/mh/movie/core/mvp/ui/holder/player/b;-><init>(Landroid/view/ViewGroup;ILcom/mh/movie/core/mvp/ui/holder/d$a;)V

    return-object v0
.end method

.method final synthetic a(I)V
    .locals 2

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return-void

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/player/TvPartView$1;->a:Lcom/mh/movie/core/mvp/ui/widget/player/TvPartView;

    iput p1, v0, Lcom/mh/movie/core/mvp/ui/widget/player/TvPartView;->e:I

    .line 76
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/player/TvPartView$1;->a:Lcom/mh/movie/core/mvp/ui/widget/player/TvPartView;

    iget-object v0, v0, Lcom/mh/movie/core/mvp/ui/widget/player/TvPartView;->g:Lcom/mh/movie/core/mvp/ui/adapter/player/PlayerTVPartAdapter;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/ui/adapter/player/PlayerTVPartAdapter;->a(Ljava/util/List;)V

    .line 77
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/player/TvPartView$1;->notifyDataSetChanged()V

    .line 78
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/player/TvPartView$1;->a:Lcom/mh/movie/core/mvp/ui/widget/player/TvPartView;

    iget-object v0, v0, Lcom/mh/movie/core/mvp/ui/widget/player/TvPartView;->h:Lcom/mh/movie/core/mvp/ui/widget/player/TvPartView$a;

    if-eqz v0, :cond_1

    .line 79
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/player/TvPartView$1;->a:Lcom/mh/movie/core/mvp/ui/widget/player/TvPartView;

    iget-object v0, v0, Lcom/mh/movie/core/mvp/ui/widget/player/TvPartView;->h:Lcom/mh/movie/core/mvp/ui/widget/player/TvPartView$a;

    invoke-interface {v0, p1}, Lcom/mh/movie/core/mvp/ui/widget/player/TvPartView$a;->a(I)V

    :cond_1
    return-void
.end method

.method protected bridge synthetic a(Landroid/support/v7/widget/RecyclerView$ViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 68
    check-cast p1, Lcom/mh/movie/core/mvp/ui/holder/player/b;

    check-cast p2, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoPageListBean;

    invoke-virtual {p0, p1, p2}, Lcom/mh/movie/core/mvp/ui/widget/player/TvPartView$1;->a(Lcom/mh/movie/core/mvp/ui/holder/player/b;Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoPageListBean;)V

    return-void
.end method

.method protected a(Lcom/mh/movie/core/mvp/ui/holder/player/b;Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoPageListBean;)V
    .locals 2

    .line 87
    iget-object v0, p1, Lcom/mh/movie/core/mvp/ui/holder/player/b;->a:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoPageListBean;->getTabName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoPageListBean;->getCurrentPage()I

    move-result p2

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/player/TvPartView$1;->a:Lcom/mh/movie/core/mvp/ui/widget/player/TvPartView;

    iget v0, v0, Lcom/mh/movie/core/mvp/ui/widget/player/TvPartView;->e:I

    add-int/lit8 v0, v0, 0x1

    if-ne p2, v0, :cond_0

    .line 90
    iget-object p2, p1, Lcom/mh/movie/core/mvp/ui/holder/player/b;->a:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/player/TvPartView$1;->a:Lcom/mh/movie/core/mvp/ui/widget/player/TvPartView;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/widget/player/TvPartView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/mh/movie/core/R$drawable;->item_player_tv_part_selected:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 91
    iget-object p1, p1, Lcom/mh/movie/core/mvp/ui/holder/player/b;->a:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/mh/movie/core/mvp/ui/widget/player/TvPartView$1;->a:Lcom/mh/movie/core/mvp/ui/widget/player/TvPartView;

    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/ui/widget/player/TvPartView;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/mh/movie/core/R$color;->white:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 93
    :cond_0
    iget-object p2, p1, Lcom/mh/movie/core/mvp/ui/holder/player/b;->a:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/player/TvPartView$1;->a:Lcom/mh/movie/core/mvp/ui/widget/player/TvPartView;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/widget/player/TvPartView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/mh/movie/core/R$drawable;->item_player_tv_part_normal:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 94
    iget-object p1, p1, Lcom/mh/movie/core/mvp/ui/holder/player/b;->a:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/mh/movie/core/mvp/ui/widget/player/TvPartView$1;->a:Lcom/mh/movie/core/mvp/ui/widget/player/TvPartView;

    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/ui/widget/player/TvPartView;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/mh/movie/core/R$color;->text_66:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_0
    return-void
.end method

.method public synthetic b(Landroid/view/ViewGroup;)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 68
    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/ui/widget/player/TvPartView$1;->a(Landroid/view/ViewGroup;)Lcom/mh/movie/core/mvp/ui/holder/player/b;

    move-result-object p1

    return-object p1
.end method
