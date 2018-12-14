.class public Lcom/mh/movie/core/mvp/ui/adapter/n;
.super Lcom/mh/movie/core/mvp/ui/adapter/r;
.source "MoreAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mh/movie/core/mvp/ui/adapter/n$a;,
        Lcom/mh/movie/core/mvp/ui/adapter/n$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mh/movie/core/mvp/ui/adapter/r<",
        "Lcom/mh/movie/core/mvp/model/entity/response/QueryListBean;",
        ">;"
    }
.end annotation


# instance fields
.field a:I

.field b:I

.field c:I

.field d:Lcom/mh/movie/core/mvp/ui/adapter/n$a;


# direct methods
.method public constructor <init>(III)V
    .locals 1

    .line 45
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/adapter/r;-><init>()V

    const/4 v0, 0x0

    .line 38
    iput v0, p0, Lcom/mh/movie/core/mvp/ui/adapter/n;->a:I

    .line 39
    iput v0, p0, Lcom/mh/movie/core/mvp/ui/adapter/n;->b:I

    .line 46
    iput p1, p0, Lcom/mh/movie/core/mvp/ui/adapter/n;->c:I

    .line 47
    iput p3, p0, Lcom/mh/movie/core/mvp/ui/adapter/n;->a:I

    .line 48
    iput p2, p0, Lcom/mh/movie/core/mvp/ui/adapter/n;->b:I

    return-void
.end method


# virtual methods
.method public a(Lcom/mh/movie/core/mvp/ui/adapter/n$a;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/adapter/n;->d:Lcom/mh/movie/core/mvp/ui/adapter/n$a;

    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/adapter/n;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 9
    .param p1    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 63
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/adapter/n;->e:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/mh/movie/core/mvp/model/entity/response/QueryListBean;

    .line 64
    move-object v0, p1

    check-cast v0, Lcom/mh/movie/core/mvp/ui/adapter/n$b;

    .line 65
    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/response/QueryListBean;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/raizlabs/android/dbflow/a;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 69
    :cond_0
    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/response/QueryListBean;->getPicUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/raizlabs/android/dbflow/a;->b(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_5

    .line 70
    iget v1, p0, Lcom/mh/movie/core/mvp/ui/adapter/n;->c:I

    if-eq v1, v2, :cond_2

    iget v1, p0, Lcom/mh/movie/core/mvp/ui/adapter/n;->c:I

    if-ne v1, v3, :cond_1

    goto :goto_0

    .line 73
    :cond_1
    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/response/QueryListBean;->getCoverUrl()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 71
    :cond_2
    :goto_0
    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/response/QueryListBean;->getCoverHUrl()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/response/QueryListBean;->getCoverHUrl()Ljava/lang/String;

    move-result-object v1

    const-string v4, ""

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/response/QueryListBean;->getCoverHUrl()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_4
    :goto_1
    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/response/QueryListBean;->getCoverUrl()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 76
    :cond_5
    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/response/QueryListBean;->getPicUrl()Ljava/lang/String;

    move-result-object v1

    .line 78
    :goto_2
    iget v4, p0, Lcom/mh/movie/core/mvp/ui/adapter/n;->c:I

    if-ne v4, v2, :cond_6

    .line 79
    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/adapter/n$b;->a(Lcom/mh/movie/core/mvp/ui/adapter/n$b;)Landroid/widget/ImageView;

    move-result-object v2

    sget v4, Lcom/mh/movie/core/R$mipmap;->pic_crosscover_mask:I

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3

    .line 81
    :cond_6
    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/adapter/n$b;->a(Lcom/mh/movie/core/mvp/ui/adapter/n$b;)Landroid/widget/ImageView;

    move-result-object v2

    sget v4, Lcom/mh/movie/core/R$mipmap;->pic_uprightcover_mask:I

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 86
    :goto_3
    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/adapter/n$b;->b(Lcom/mh/movie/core/mvp/ui/adapter/n$b;)Lpl/droidsonroids/gif/GifImageView;

    move-result-object v2

    invoke-static {v2}, Lcom/bumptech/glide/Glide;->with(Landroid/view/View;)Lcom/bumptech/glide/RequestManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v1

    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/adapter/n$b;->b(Lcom/mh/movie/core/mvp/ui/adapter/n$b;)Lpl/droidsonroids/gif/GifImageView;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 87
    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/adapter/n$b;->c(Lcom/mh/movie/core/mvp/ui/adapter/n$b;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/response/QueryListBean;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/response/QueryListBean;->getType()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_a

    .line 91
    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/response/QueryListBean;->getLastPeriod()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 92
    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/response/QueryListBean;->getEpisodeState()I

    move-result v1

    if-ne v1, v3, :cond_7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u5171"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/response/QueryListBean;->getEpisodeUploadCount()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_4
    const-string v4, "\u671f"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_5

    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/response/QueryListBean;->getLastPeriod()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 93
    :goto_5
    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/adapter/n$b;->d(Lcom/mh/movie/core/mvp/ui/adapter/n$b;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_a

    .line 95
    :cond_8
    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/response/QueryListBean;->getEpisodeState()I

    move-result v1

    if-ne v1, v3, :cond_9

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u5171"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_6
    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/response/QueryListBean;->getEpisodeUploadCount()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "\u671f"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_7

    :cond_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_6

    .line 96
    :goto_7
    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/adapter/n$b;->d(Lcom/mh/movie/core/mvp/ui/adapter/n$b;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_a

    .line 98
    :cond_a
    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/response/QueryListBean;->getType()I

    move-result v1

    if-eq v1, v3, :cond_c

    .line 99
    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/response/QueryListBean;->getEpisodeState()I

    move-result v1

    if-ne v1, v3, :cond_b

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/response/QueryListBean;->getEpisodeUploadCount()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "\u96c6\u5168"

    :goto_8
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_9

    :cond_b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u66f4\u65b0\u81f3"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/response/QueryListBean;->getEpisodeUploadCount()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "\u96c6"

    goto :goto_8

    .line 100
    :goto_9
    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/adapter/n$b;->d(Lcom/mh/movie/core/mvp/ui/adapter/n$b;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    :cond_c
    :goto_a
    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/adapter/n$b;->d(Lcom/mh/movie/core/mvp/ui/adapter/n$b;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/response/QueryListBean;->getType()I

    move-result v4

    const/16 v5, 0x8

    const/4 v6, 0x0

    if-ne v4, v3, :cond_d

    const/16 v4, 0x8

    goto :goto_b

    :cond_d
    const/4 v4, 0x0

    :goto_b
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 106
    new-instance v1, Landroid/text/SpannableString;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/response/QueryListBean;->getDoubanScore()D

    move-result-wide v7

    invoke-virtual {v4, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v7, ""

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 107
    new-instance v4, Landroid/text/style/AbsoluteSizeSpan;

    const/16 v7, 0x12

    invoke-direct {v4, v7, v3}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    invoke-virtual {v1, v4, v6, v3, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 108
    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/adapter/n$b;->e(Lcom/mh/movie/core/mvp/ui/adapter/n$b;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/adapter/n$b;->e(Lcom/mh/movie/core/mvp/ui/adapter/n$b;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/response/QueryListBean;->getType()I

    move-result v4

    if-ne v4, v3, :cond_e

    const/4 v5, 0x0

    :cond_e
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 110
    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/response/QueryListBean;->getFocus()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/raizlabs/android/dbflow/a;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 111
    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/adapter/n$b;->f(Lcom/mh/movie/core/mvp/ui/adapter/n$b;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/response/QueryListBean;->getFocus()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_c

    .line 113
    :cond_f
    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/adapter/n$b;->f(Lcom/mh/movie/core/mvp/ui/adapter/n$b;)Landroid/widget/TextView;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/response/QueryListBean;->getPlayCount()I

    move-result v4

    int-to-float v4, v4

    invoke-static {v4}, Lcom/mh/movie/core/mvp/ui/utils/T;->formatShow(F)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\u64ad\u653e"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    :goto_c
    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/response/QueryListBean;->getTagDTO()Lcom/mh/movie/core/mvp/model/entity/TagDTOBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/model/entity/TagDTOBean;->getName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_10

    .line 116
    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/adapter/n$b;->g(Lcom/mh/movie/core/mvp/ui/adapter/n$b;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 118
    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/response/QueryListBean;->getTagDTO()Lcom/mh/movie/core/mvp/model/entity/TagDTOBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/model/entity/TagDTOBean;->getBackgroundColor()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    .line 119
    iget-object p1, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v2, Lcom/mh/movie/core/R$drawable;->tag_corner_bg:I

    invoke-static {p1, v2}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 120
    invoke-static {p1, v1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTint(Landroid/graphics/drawable/Drawable;I)V

    .line 121
    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/adapter/n$b;->g(Lcom/mh/movie/core/mvp/ui/adapter/n$b;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 123
    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/adapter/n$b;->g(Lcom/mh/movie/core/mvp/ui/adapter/n$b;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/response/QueryListBean;->getTagDTO()Lcom/mh/movie/core/mvp/model/entity/TagDTOBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/model/entity/TagDTOBean;->getFrontColor()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 124
    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/adapter/n$b;->g(Lcom/mh/movie/core/mvp/ui/adapter/n$b;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/response/QueryListBean;->getTagDTO()Lcom/mh/movie/core/mvp/model/entity/TagDTOBean;

    move-result-object p2

    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/TagDTOBean;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_d

    .line 126
    :cond_10
    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/adapter/n$b;->g(Lcom/mh/movie/core/mvp/ui/adapter/n$b;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_d
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 3
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 58
    new-instance p2, Lcom/mh/movie/core/mvp/ui/adapter/n$b;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/mh/movie/core/R$layout;->view_movie_card_content:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/mh/movie/core/mvp/ui/adapter/n$b;-><init>(Lcom/mh/movie/core/mvp/ui/adapter/n;Landroid/view/View;)V

    return-object p2
.end method
