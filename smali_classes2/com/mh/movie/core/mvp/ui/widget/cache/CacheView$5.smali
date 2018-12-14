.class Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView$5;
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
        "Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;",
        "Lcom/mh/movie/core/mvp/ui/holder/e;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;Z)V
    .locals 0

    .line 240
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView$5;->a:Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;

    invoke-direct {p0, p2}, Lcom/mh/movie/core/mvp/ui/adapter/c;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;)Lcom/mh/movie/core/mvp/ui/holder/e;
    .locals 3

    .line 244
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView$5;->a:Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->c(Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;)Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoDownloadBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoDownloadBean;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 250
    new-instance v0, Lcom/mh/movie/core/mvp/ui/holder/e;

    sget v1, Lcom/mh/movie/core/R$layout;->item_cache:I

    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView$5;->a:Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;

    iget-object v2, v2, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->d:Lcom/mh/movie/core/mvp/ui/holder/d$a;

    invoke-direct {v0, p1, v1, v2}, Lcom/mh/movie/core/mvp/ui/holder/e;-><init>(Landroid/view/ViewGroup;ILcom/mh/movie/core/mvp/ui/holder/d$a;)V

    return-object v0

    .line 248
    :cond_0
    new-instance v0, Lcom/mh/movie/core/mvp/ui/holder/e;

    sget v1, Lcom/mh/movie/core/R$layout;->item_cache_variety:I

    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView$5;->a:Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;

    iget-object v2, v2, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->d:Lcom/mh/movie/core/mvp/ui/holder/d$a;

    invoke-direct {v0, p1, v1, v2}, Lcom/mh/movie/core/mvp/ui/holder/e;-><init>(Landroid/view/ViewGroup;ILcom/mh/movie/core/mvp/ui/holder/d$a;)V

    return-object v0

    .line 246
    :cond_1
    new-instance v0, Lcom/mh/movie/core/mvp/ui/holder/e;

    sget v1, Lcom/mh/movie/core/R$layout;->item_cache_movie:I

    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView$5;->a:Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;

    iget-object v2, v2, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->d:Lcom/mh/movie/core/mvp/ui/holder/d$a;

    invoke-direct {v0, p1, v1, v2}, Lcom/mh/movie/core/mvp/ui/holder/e;-><init>(Landroid/view/ViewGroup;ILcom/mh/movie/core/mvp/ui/holder/d$a;)V

    return-object v0
.end method

.method protected bridge synthetic a(Landroid/support/v7/widget/RecyclerView$ViewHolder;Ljava/lang/Object;I)V
    .locals 0

    .line 240
    check-cast p1, Lcom/mh/movie/core/mvp/ui/holder/e;

    check-cast p2, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView$5;->a(Lcom/mh/movie/core/mvp/ui/holder/e;Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;I)V

    return-void
.end method

.method protected a(Lcom/mh/movie/core/mvp/ui/holder/e;Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;I)V
    .locals 5

    .line 257
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView$5;->a:Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->c(Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;)Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoDownloadBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoDownloadBean;->getType()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x4

    if-eq v0, v1, :cond_1

    if-eq v0, v2, :cond_0

    .line 265
    iget-object v0, p1, Lcom/mh/movie/core/mvp/ui/holder/e;->a:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;->getSortNum()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 262
    :cond_0
    iget-object v0, p1, Lcom/mh/movie/core/mvp/ui/holder/e;->a:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;->getPeriod()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\u671f"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 259
    :cond_1
    iget-object v0, p1, Lcom/mh/movie/core/mvp/ui/holder/e;->a:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 270
    :goto_0
    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;->getId()I

    move-result v0

    iget-object v3, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView$5;->a:Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;

    invoke-static {v3}, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->d(Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;)I

    move-result v3

    if-ne v0, v3, :cond_2

    .line 271
    iget-object v0, p1, Lcom/mh/movie/core/mvp/ui/holder/e;->a:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView$5;->a:Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;

    invoke-virtual {v3}, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/mh/movie/core/R$color;->themeColor:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 273
    :cond_2
    iget-object v0, p1, Lcom/mh/movie/core/mvp/ui/holder/e;->a:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView$5;->a:Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;

    invoke-virtual {v3}, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/mh/movie/core/R$color;->content_h3:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 277
    :goto_1
    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;->getVideoState()I

    move-result v0

    const/4 v3, 0x0

    if-ne v0, v1, :cond_3

    .line 278
    iget-object v0, p1, Lcom/mh/movie/core/mvp/ui/holder/e;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 279
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView$5;->a:Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView$5;->a:Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v4, Lcom/mh/movie/core/R$mipmap;->cache_statr_download:I

    invoke-static {v1, v4}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->load(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/mh/movie/core/mvp/ui/holder/e;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 280
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView$5;->a:Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->e(Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;)Ljava/util/Map;

    move-result-object v0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {v0, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 282
    :cond_3
    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;->getVideoState()I

    move-result p3

    const/4 v0, 0x2

    if-ne p3, v0, :cond_4

    .line 283
    iget-object p3, p1, Lcom/mh/movie/core/mvp/ui/holder/e;->b:Landroid/widget/ImageView;

    invoke-virtual {p3, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 284
    iget-object p3, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView$5;->a:Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;

    invoke-virtual {p3}, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object p3

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView$5;->a:Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/mh/movie/core/R$mipmap;->cache_finish_download:I

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/bumptech/glide/RequestManager;->load(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p3

    iget-object v0, p1, Lcom/mh/movie/core/mvp/ui/holder/e;->b:Landroid/widget/ImageView;

    invoke-virtual {p3, v0}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    goto :goto_2

    .line 287
    :cond_4
    iget-object p3, p1, Lcom/mh/movie/core/mvp/ui/holder/e;->b:Landroid/widget/ImageView;

    invoke-virtual {p3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 290
    :goto_2
    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;->getTagDTO()Lcom/mh/movie/core/mvp/model/entity/TagDTOBean;

    move-result-object p3

    if-eqz p3, :cond_5

    .line 291
    iget-object p3, p1, Lcom/mh/movie/core/mvp/ui/holder/e;->c:Landroid/widget/TextView;

    const-string v0, "\u70ed\u95e8"

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 292
    iget-object p3, p1, Lcom/mh/movie/core/mvp/ui/holder/e;->c:Landroid/widget/TextView;

    invoke-virtual {p3, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 293
    iget-object p3, p1, Lcom/mh/movie/core/mvp/ui/holder/e;->c:Landroid/widget/TextView;

    iget-object v0, p1, Lcom/mh/movie/core/mvp/ui/holder/e;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/mh/movie/core/R$drawable;->clarity_label_bg_1:I

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    .line 294
    :cond_5
    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;->getFormatExtra()Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean$FormatExtraBean;

    move-result-object p3

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView$5;->a:Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->f(Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;)I

    move-result v0

    invoke-virtual {p3, v0}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean$FormatExtraBean;->getFormatExtra(I)Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean$FormatExtraBean$ExtraBean;

    move-result-object p3

    if-nez p3, :cond_7

    .line 295
    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;->getFormatExtra()Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean$FormatExtraBean;

    move-result-object p3

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView$5;->a:Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->f(Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;)I

    move-result v0

    invoke-static {p3, v0}, Lcom/mh/movie/core/mvp/ui/utils/CommonTools;->autoGetFormatText(Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean$FormatExtraBean;I)Ljava/lang/String;

    move-result-object p3

    const-string v0, ""

    .line 296
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 297
    iget-object p1, p1, Lcom/mh/movie/core/mvp/ui/holder/e;->c:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    return-void

    .line 300
    :cond_6
    iget-object v0, p1, Lcom/mh/movie/core/mvp/ui/holder/e;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 301
    iget-object p3, p1, Lcom/mh/movie/core/mvp/ui/holder/e;->c:Landroid/widget/TextView;

    invoke-virtual {p3, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 302
    iget-object p3, p1, Lcom/mh/movie/core/mvp/ui/holder/e;->c:Landroid/widget/TextView;

    iget-object v0, p1, Lcom/mh/movie/core/mvp/ui/holder/e;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/mh/movie/core/R$drawable;->clarity_label_bg_2:I

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    .line 304
    :cond_7
    iget-object p3, p1, Lcom/mh/movie/core/mvp/ui/holder/e;->c:Landroid/widget/TextView;

    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 308
    :goto_3
    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;->getVideoState()I

    move-result p2

    const/4 p3, 0x3

    if-ne p2, p3, :cond_8

    .line 309
    iget-object p1, p1, Lcom/mh/movie/core/mvp/ui/holder/e;->a:Landroid/widget/TextView;

    sget p2, Lcom/mh/movie/core/R$drawable;->item_player_tv_part_blue:I

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_4

    .line 311
    :cond_8
    iget-object p1, p1, Lcom/mh/movie/core/mvp/ui/holder/e;->a:Landroid/widget/TextView;

    sget p2, Lcom/mh/movie/core/R$drawable;->item_player_tv_part_normal:I

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    :goto_4
    return-void
.end method

.method public synthetic b(Landroid/view/ViewGroup;)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 240
    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView$5;->a(Landroid/view/ViewGroup;)Lcom/mh/movie/core/mvp/ui/holder/e;

    move-result-object p1

    return-object p1
.end method
