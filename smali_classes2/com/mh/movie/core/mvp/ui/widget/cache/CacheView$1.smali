.class Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView$1;
.super Lcom/mh/movie/core/mvp/ui/adapter/c;
.source "CacheView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->i()V
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
.field final synthetic a:Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;)V
    .locals 0

    .line 195
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView$1;->a:Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;

    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/adapter/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;)Lcom/mh/movie/core/mvp/ui/holder/player/b;
    .locals 3

    .line 198
    new-instance v0, Lcom/mh/movie/core/mvp/ui/holder/player/b;

    sget v1, Lcom/mh/movie/core/R$layout;->item_cache_pager:I

    new-instance v2, Lcom/mh/movie/core/mvp/ui/widget/cache/f;

    invoke-direct {v2, p0}, Lcom/mh/movie/core/mvp/ui/widget/cache/f;-><init>(Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView$1;)V

    invoke-direct {v0, p1, v1, v2}, Lcom/mh/movie/core/mvp/ui/holder/player/b;-><init>(Landroid/view/ViewGroup;ILcom/mh/movie/core/mvp/ui/holder/d$a;)V

    return-object v0
.end method

.method final synthetic a(I)V
    .locals 2

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return-void

    .line 201
    :cond_0
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView$1;->a:Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;

    add-int/lit8 v1, p1, 0x1

    invoke-static {v0, v1}, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->a(Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;I)I

    .line 202
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView$1;->a:Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->b(Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;)Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView$b;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 203
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView$1;->a:Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->b(Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;)Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView$b;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView$b;->a(I)V

    .line 205
    :cond_1
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView$1;->notifyDataSetChanged()V

    return-void
.end method

.method protected bridge synthetic a(Landroid/support/v7/widget/RecyclerView$ViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 195
    check-cast p1, Lcom/mh/movie/core/mvp/ui/holder/player/b;

    check-cast p2, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoPageListBean;

    invoke-virtual {p0, p1, p2}, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView$1;->a(Lcom/mh/movie/core/mvp/ui/holder/player/b;Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoPageListBean;)V

    return-void
.end method

.method protected a(Lcom/mh/movie/core/mvp/ui/holder/player/b;Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoPageListBean;)V
    .locals 2

    .line 212
    iget-object v0, p1, Lcom/mh/movie/core/mvp/ui/holder/player/b;->a:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoPageListBean;->getTabName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 214
    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoPageListBean;->getCurrentPage()I

    move-result p2

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView$1;->a:Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->a(Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;)I

    move-result v0

    if-ne p2, v0, :cond_0

    .line 215
    iget-object p2, p1, Lcom/mh/movie/core/mvp/ui/holder/player/b;->a:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView$1;->a:Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/mh/movie/core/R$drawable;->item_player_tv_part_selected:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 216
    iget-object p1, p1, Lcom/mh/movie/core/mvp/ui/holder/player/b;->a:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView$1;->a:Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;

    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/mh/movie/core/R$color;->white:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 218
    :cond_0
    iget-object p2, p1, Lcom/mh/movie/core/mvp/ui/holder/player/b;->a:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView$1;->a:Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/mh/movie/core/R$drawable;->item_player_tv_part_normal:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 219
    iget-object p1, p1, Lcom/mh/movie/core/mvp/ui/holder/player/b;->a:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView$1;->a:Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;

    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

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

    .line 195
    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView$1;->a(Landroid/view/ViewGroup;)Lcom/mh/movie/core/mvp/ui/holder/player/b;

    move-result-object p1

    return-object p1
.end method
