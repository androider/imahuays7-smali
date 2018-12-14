.class Lcom/mh/movie/core/mvp/ui/fragment/RecommendFragment$1;
.super Lcom/mh/movie/core/mvp/ui/adapter/f;
.source "RecommendFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/ui/fragment/RecommendFragment;->a(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mh/movie/core/mvp/ui/adapter/f<",
        "Lcom/mh/movie/core/mvp/model/entity/response/HomePageResponse;",
        ">;"
    }
.end annotation


# instance fields
.field a:Lcom/bumptech/glide/request/RequestOptions;

.field final synthetic b:Lcom/mh/movie/core/mvp/ui/fragment/RecommendFragment;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/ui/fragment/RecommendFragment;I)V
    .locals 0

    .line 130
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/fragment/RecommendFragment$1;->b:Lcom/mh/movie/core/mvp/ui/fragment/RecommendFragment;

    invoke-direct {p0, p2}, Lcom/mh/movie/core/mvp/ui/adapter/f;-><init>(I)V

    .line 131
    invoke-static {}, Lcom/bumptech/glide/request/RequestOptions;->circleCropTransform()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    sget p2, Lcom/mh/movie/core/R$mipmap;->header_circlepng:I

    invoke-virtual {p1, p2}, Lcom/bumptech/glide/request/RequestOptions;->placeholder(I)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    sget p2, Lcom/mh/movie/core/R$mipmap;->header_circlepng:I

    invoke-virtual {p1, p2}, Lcom/bumptech/glide/request/RequestOptions;->error(I)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/fragment/RecommendFragment$1;->a:Lcom/bumptech/glide/request/RequestOptions;

    return-void
.end method


# virtual methods
.method public a(Lcom/mh/movie/core/mvp/ui/adapter/f$b;Lcom/mh/movie/core/mvp/model/entity/response/HomePageResponse;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mh/movie/core/mvp/ui/adapter/f<",
            "Lcom/mh/movie/core/mvp/model/entity/response/HomePageResponse;",
            ">.b;",
            "Lcom/mh/movie/core/mvp/model/entity/response/HomePageResponse;",
            ")V"
        }
    .end annotation

    .line 143
    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/response/HomePageResponse;->getQueryList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 144
    iget-object v0, p1, Lcom/mh/movie/core/mvp/ui/adapter/f$b;->b:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/view/View;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/response/HomePageResponse;->getQueryList()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mh/movie/core/mvp/model/entity/response/QueryListBean;

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/model/entity/response/QueryListBean;->getPicUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/fragment/RecommendFragment$1;->a:Lcom/bumptech/glide/request/RequestOptions;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/RequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/mh/movie/core/mvp/ui/adapter/f$b;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 145
    iget-object v0, p1, Lcom/mh/movie/core/mvp/ui/adapter/f$b;->e:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/view/View;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/response/HomePageResponse;->getQueryList()Ljava/util/List;

    move-result-object v1

    const/4 v3, 0x1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mh/movie/core/mvp/model/entity/response/QueryListBean;

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/model/entity/response/QueryListBean;->getPicUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/fragment/RecommendFragment$1;->a:Lcom/bumptech/glide/request/RequestOptions;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/RequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/mh/movie/core/mvp/ui/adapter/f$b;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 146
    iget-object v0, p1, Lcom/mh/movie/core/mvp/ui/adapter/f$b;->h:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/view/View;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/response/HomePageResponse;->getQueryList()Ljava/util/List;

    move-result-object v1

    const/4 v4, 0x2

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mh/movie/core/mvp/model/entity/response/QueryListBean;

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/model/entity/response/QueryListBean;->getPicUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/fragment/RecommendFragment$1;->a:Lcom/bumptech/glide/request/RequestOptions;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/RequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/mh/movie/core/mvp/ui/adapter/f$b;->h:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 147
    iget-object v0, p1, Lcom/mh/movie/core/mvp/ui/adapter/f$b;->k:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/view/View;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/response/HomePageResponse;->getQueryList()Ljava/util/List;

    move-result-object v1

    const/4 v5, 0x3

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mh/movie/core/mvp/model/entity/response/QueryListBean;

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/model/entity/response/QueryListBean;->getPicUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/fragment/RecommendFragment$1;->a:Lcom/bumptech/glide/request/RequestOptions;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/RequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/mh/movie/core/mvp/ui/adapter/f$b;->k:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 149
    iget-object v0, p1, Lcom/mh/movie/core/mvp/ui/adapter/f$b;->c:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/response/HomePageResponse;->getQueryList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mh/movie/core/mvp/model/entity/response/QueryListBean;

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/model/entity/response/QueryListBean;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    iget-object v0, p1, Lcom/mh/movie/core/mvp/ui/adapter/f$b;->f:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/response/HomePageResponse;->getQueryList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mh/movie/core/mvp/model/entity/response/QueryListBean;

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/model/entity/response/QueryListBean;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 151
    iget-object v0, p1, Lcom/mh/movie/core/mvp/ui/adapter/f$b;->i:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/response/HomePageResponse;->getQueryList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mh/movie/core/mvp/model/entity/response/QueryListBean;

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/model/entity/response/QueryListBean;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 152
    iget-object p1, p1, Lcom/mh/movie/core/mvp/ui/adapter/f$b;->l:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/response/HomePageResponse;->getQueryList()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/mh/movie/core/mvp/model/entity/response/QueryListBean;

    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/response/QueryListBean;->getTitle()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic a(Lcom/mh/movie/core/mvp/ui/adapter/f$b;Ljava/lang/Object;)V
    .locals 0

    .line 130
    check-cast p2, Lcom/mh/movie/core/mvp/model/entity/response/HomePageResponse;

    invoke-virtual {p0, p1, p2}, Lcom/mh/movie/core/mvp/ui/fragment/RecommendFragment$1;->a(Lcom/mh/movie/core/mvp/ui/adapter/f$b;Lcom/mh/movie/core/mvp/model/entity/response/HomePageResponse;)V

    return-void
.end method

.method public a(Lcom/mh/movie/core/mvp/ui/adapter/f$c;Lcom/mh/movie/core/mvp/model/entity/response/HomePageResponse;)V
    .locals 3

    .line 135
    iget-object v0, p1, Lcom/mh/movie/core/mvp/ui/adapter/f$c;->a:Lcom/mh/movie/core/mvp/ui/widget/MovieCardView;

    iget-object v1, p1, Lcom/mh/movie/core/mvp/ui/adapter/f$c;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/ui/fragment/RecommendFragment$1;->a(Landroid/support/v7/widget/RecyclerView$ViewHolder;)I

    move-result v2

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_0

    sget v2, Lcom/mh/movie/core/R$drawable;->blue_point:I

    goto :goto_0

    :cond_0
    sget v2, Lcom/mh/movie/core/R$drawable;->pink_point:I

    :goto_0
    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/ui/widget/MovieCardView;->setTitleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 136
    iget-object v0, p1, Lcom/mh/movie/core/mvp/ui/adapter/f$c;->a:Lcom/mh/movie/core/mvp/ui/widget/MovieCardView;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/fragment/RecommendFragment$1;->b:Lcom/mh/movie/core/mvp/ui/fragment/RecommendFragment;

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/ui/fragment/RecommendFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x41600000    # 14.0f

    invoke-static {v1, v2}, Lcom/jess/arms/c/e;->a(Landroid/content/Context;F)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/ui/widget/MovieCardView;->setLeftTitlePadding(I)V

    .line 137
    iget-object v0, p1, Lcom/mh/movie/core/mvp/ui/adapter/f$c;->a:Lcom/mh/movie/core/mvp/ui/widget/MovieCardView;

    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/response/HomePageResponse;->getBootadsList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/ui/widget/MovieCardView;->setShowBanner(Ljava/util/List;)V

    .line 138
    iget-object p1, p1, Lcom/mh/movie/core/mvp/ui/adapter/f$c;->a:Lcom/mh/movie/core/mvp/ui/widget/MovieCardView;

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/RecommendFragment$1;->b:Lcom/mh/movie/core/mvp/ui/fragment/RecommendFragment;

    iget v0, v0, Lcom/mh/movie/core/mvp/ui/fragment/RecommendFragment;->j:I

    invoke-virtual {p1, p2, v0}, Lcom/mh/movie/core/mvp/ui/widget/MovieCardView;->a(Lcom/mh/movie/core/mvp/model/entity/response/HomePageResponse;I)V

    return-void
.end method

.method public bridge synthetic a(Lcom/mh/movie/core/mvp/ui/adapter/f$c;Ljava/lang/Object;)V
    .locals 0

    .line 130
    check-cast p2, Lcom/mh/movie/core/mvp/model/entity/response/HomePageResponse;

    invoke-virtual {p0, p1, p2}, Lcom/mh/movie/core/mvp/ui/fragment/RecommendFragment$1;->a(Lcom/mh/movie/core/mvp/ui/adapter/f$c;Lcom/mh/movie/core/mvp/model/entity/response/HomePageResponse;)V

    return-void
.end method
