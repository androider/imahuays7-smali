.class public Lcom/mh/movie/core/mvp/ui/adapter/u;
.super Lcom/mh/movie/core/mvp/ui/adapter/r;
.source "SearchResultAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mh/movie/core/mvp/ui/adapter/u$a;,
        Lcom/mh/movie/core/mvp/ui/adapter/u$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mh/movie/core/mvp/ui/adapter/r<",
        "Lcom/mh/movie/core/mvp/model/entity/response/SearchResponse;",
        ">;"
    }
.end annotation


# instance fields
.field a:Lcom/mh/movie/core/mvp/ui/adapter/u$a;

.field private b:Lcom/jess/arms/http/imageloader/c;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/adapter/r;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;I)Lcom/mh/movie/core/mvp/ui/adapter/u$b;
    .locals 3
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 48
    new-instance p2, Lcom/mh/movie/core/mvp/ui/adapter/u$b;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/mh/movie/core/R$layout;->item_search_result:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/mh/movie/core/mvp/ui/adapter/u$b;-><init>(Lcom/mh/movie/core/mvp/ui/adapter/u;Landroid/view/View;)V

    return-object p2
.end method

.method public a(Lcom/mh/movie/core/mvp/ui/adapter/u$a;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/adapter/u;->a:Lcom/mh/movie/core/mvp/ui/adapter/u$a;

    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/adapter/u;->e:Ljava/util/List;

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

    .line 53
    check-cast p1, Lcom/mh/movie/core/mvp/ui/adapter/u$b;

    .line 54
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/adapter/u;->e:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/mh/movie/core/mvp/model/entity/response/SearchResponse;

    .line 55
    iget-object v0, p1, Lcom/mh/movie/core/mvp/ui/adapter/u$b;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 56
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/adapter/u;->b:Lcom/jess/arms/http/imageloader/c;

    if-nez v1, :cond_0

    .line 57
    invoke-static {v0}, Lcom/jess/arms/c/a;->d(Landroid/content/Context;)Lcom/jess/arms/b/a/a;

    move-result-object v1

    invoke-interface {v1}, Lcom/jess/arms/b/a/a;->e()Lcom/jess/arms/http/imageloader/c;

    move-result-object v1

    iput-object v1, p0, Lcom/mh/movie/core/mvp/ui/adapter/u;->b:Lcom/jess/arms/http/imageloader/c;

    .line 59
    :cond_0
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/adapter/u;->b:Lcom/jess/arms/http/imageloader/c;

    .line 61
    invoke-static {}, Lcom/jess/arms/http/imageloader/glide/h;->r()Lcom/jess/arms/http/imageloader/glide/h$a;

    move-result-object v2

    .line 62
    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/response/SearchResponse;->getCoverHUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/raizlabs/android/dbflow/a;->b(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/response/SearchResponse;->getCoverUrl()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/response/SearchResponse;->getCoverHUrl()Ljava/lang/String;

    move-result-object v3

    :goto_0
    invoke-virtual {v2, v3}, Lcom/jess/arms/http/imageloader/glide/h$a;->a(Ljava/lang/String;)Lcom/jess/arms/http/imageloader/glide/h$a;

    move-result-object v2

    .line 63
    invoke-static {p1}, Lcom/mh/movie/core/mvp/ui/adapter/u$b;->a(Lcom/mh/movie/core/mvp/ui/adapter/u$b;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/jess/arms/http/imageloader/glide/h$a;->a(Landroid/widget/ImageView;)Lcom/jess/arms/http/imageloader/glide/h$a;

    move-result-object v2

    .line 64
    invoke-virtual {v2}, Lcom/jess/arms/http/imageloader/glide/h$a;->a()Lcom/jess/arms/http/imageloader/glide/h;

    move-result-object v2

    .line 59
    invoke-virtual {v1, v0, v2}, Lcom/jess/arms/http/imageloader/c;->a(Landroid/content/Context;Lcom/jess/arms/http/imageloader/b;)V

    .line 65
    invoke-static {p1}, Lcom/mh/movie/core/mvp/ui/adapter/u$b;->b(Lcom/mh/movie/core/mvp/ui/adapter/u$b;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/response/SearchResponse;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mh/movie/core/mvp/ui/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v1, "%02d:%02d:%02d"

    const/4 v2, 0x3

    .line 67
    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/response/SearchResponse;->getPlayTimeLength()I

    move-result v4

    div-int/lit16 v4, v4, 0xe10

    int-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/response/SearchResponse;->getPlayTimeLength()I

    move-result v4

    div-int/lit8 v4, v4, 0x3c

    int-to-double v6, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v4, v6

    rem-int/lit8 v4, v4, 0x3c

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v6, 0x1

    aput-object v4, v3, v6

    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/response/SearchResponse;->getPlayTimeLength()I

    move-result v4

    rem-int/lit8 v4, v4, 0x3c

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v7, 0x2

    aput-object v4, v3, v7

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 68
    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/response/SearchResponse;->getType()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_5

    .line 69
    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/response/SearchResponse;->getLastPeriod()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 70
    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/response/SearchResponse;->getEpisodeState()I

    move-result v1

    if-ne v1, v6, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u5171"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/response/SearchResponse;->getEpisodeUploadCount()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_1
    const-string v3, "\u671f"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/response/SearchResponse;->getLastPeriod()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 72
    :cond_3
    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/response/SearchResponse;->getEpisodeState()I

    move-result v1

    if-ne v1, v6, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u5171"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/response/SearchResponse;->getEpisodeUploadCount()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "\u671f"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_2

    .line 74
    :cond_5
    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/response/SearchResponse;->getType()I

    move-result v3

    if-ne v3, v7, :cond_7

    .line 75
    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/response/SearchResponse;->getEpisodeState()I

    move-result v1

    if-ne v1, v6, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/response/SearchResponse;->getEpisodeUploadCount()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "\u96c6\u5168"

    :goto_3
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u66f4\u65b0\u81f3"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/response/SearchResponse;->getEpisodeUploadCount()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "\u96c6"

    goto :goto_3

    .line 79
    :cond_7
    :goto_4
    invoke-static {p1}, Lcom/mh/movie/core/mvp/ui/adapter/u$b;->c(Lcom/mh/movie/core/mvp/ui/adapter/u$b;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    invoke-static {p1}, Lcom/mh/movie/core/mvp/ui/adapter/u$b;->d(Lcom/mh/movie/core/mvp/ui/adapter/u$b;)Landroid/widget/TextView;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u64ad\u653e\uff1a"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/response/SearchResponse;->getPlayCount()I

    move-result v7

    int-to-float v7, v7

    invoke-static {v7}, Lcom/mh/movie/core/mvp/ui/utils/T;->formatShow(F)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/response/SearchResponse;->getTagDTO()Lcom/mh/movie/core/mvp/model/entity/TagDTOBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/model/entity/TagDTOBean;->getName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 83
    invoke-static {p1}, Lcom/mh/movie/core/mvp/ui/adapter/u$b;->e(Lcom/mh/movie/core/mvp/ui/adapter/u$b;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 85
    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/response/SearchResponse;->getTagDTO()Lcom/mh/movie/core/mvp/model/entity/TagDTOBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/model/entity/TagDTOBean;->getBackgroundColor()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    .line 86
    sget v3, Lcom/mh/movie/core/R$drawable;->tag_corner_bg:I

    invoke-static {v0, v3}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 87
    invoke-static {v0, v1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTint(Landroid/graphics/drawable/Drawable;I)V

    .line 88
    invoke-static {p1}, Lcom/mh/movie/core/mvp/ui/adapter/u$b;->e(Lcom/mh/movie/core/mvp/ui/adapter/u$b;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 90
    invoke-static {p1}, Lcom/mh/movie/core/mvp/ui/adapter/u$b;->e(Lcom/mh/movie/core/mvp/ui/adapter/u$b;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/response/SearchResponse;->getTagDTO()Lcom/mh/movie/core/mvp/model/entity/TagDTOBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/model/entity/TagDTOBean;->getFrontColor()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 91
    invoke-static {p1}, Lcom/mh/movie/core/mvp/ui/adapter/u$b;->e(Lcom/mh/movie/core/mvp/ui/adapter/u$b;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/response/SearchResponse;->getTagDTO()Lcom/mh/movie/core/mvp/model/entity/TagDTOBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/model/entity/TagDTOBean;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 93
    :cond_8
    invoke-static {p1}, Lcom/mh/movie/core/mvp/ui/adapter/u$b;->e(Lcom/mh/movie/core/mvp/ui/adapter/u$b;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 95
    :goto_5
    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/response/SearchResponse;->getDoubanScore()D

    move-result-wide v0

    const-wide/16 v7, 0x0

    cmpl-double v3, v0, v7

    if-nez v3, :cond_9

    .line 97
    invoke-static {p1}, Lcom/mh/movie/core/mvp/ui/adapter/u$b;->f(Lcom/mh/movie/core/mvp/ui/adapter/u$b;)Landroid/widget/TextView;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 98
    invoke-static {p1}, Lcom/mh/movie/core/mvp/ui/adapter/u$b;->f(Lcom/mh/movie/core/mvp/ui/adapter/u$b;)Landroid/widget/TextView;

    move-result-object p2

    iget-object v0, p1, Lcom/mh/movie/core/mvp/ui/adapter/u$b;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/mh/movie/core/R$color;->text_66:I

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 99
    invoke-static {p1}, Lcom/mh/movie/core/mvp/ui/adapter/u$b;->f(Lcom/mh/movie/core/mvp/ui/adapter/u$b;)Landroid/widget/TextView;

    move-result-object p1

    const-string p2, "\u6682\u65e0\u8bc4\u5206"

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6

    .line 102
    :cond_9
    new-instance v0, Landroid/text/SpannableString;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u8c46\u74e3:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/response/SearchResponse;->getDoubanScore()D

    move-result-wide v7

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p2, ""

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 104
    new-instance p2, Landroid/text/style/ForegroundColorSpan;

    iget-object v1, p1, Lcom/mh/movie/core/mvp/ui/adapter/u$b;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v3, Lcom/mh/movie/core/R$color;->douban_text:I

    invoke-static {v1, v3}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-direct {p2, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v1, 0x12

    invoke-virtual {v0, p2, v5, v2, v1}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 105
    new-instance p2, Landroid/text/style/AbsoluteSizeSpan;

    const/16 v3, 0x10

    invoke-direct {p2, v3, v6}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    invoke-virtual {v0, p2, v2, v4, v1}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 106
    invoke-static {p1}, Lcom/mh/movie/core/mvp/ui/adapter/u$b;->f(Lcom/mh/movie/core/mvp/ui/adapter/u$b;)Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    invoke-static {p1}, Lcom/mh/movie/core/mvp/ui/adapter/u$b;->f(Lcom/mh/movie/core/mvp/ui/adapter/u$b;)Landroid/widget/TextView;

    move-result-object p2

    iget-object v0, p1, Lcom/mh/movie/core/mvp/ui/adapter/u$b;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/mh/movie/core/R$drawable;->play_green_shape:I

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 108
    invoke-static {p1}, Lcom/mh/movie/core/mvp/ui/adapter/u$b;->f(Lcom/mh/movie/core/mvp/ui/adapter/u$b;)Landroid/widget/TextView;

    move-result-object p2

    iget-object p1, p1, Lcom/mh/movie/core/mvp/ui/adapter/u$b;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/mh/movie/core/R$color;->white:I

    invoke-static {p1, v0}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_6
    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/mh/movie/core/mvp/ui/adapter/u;->a(Landroid/view/ViewGroup;I)Lcom/mh/movie/core/mvp/ui/adapter/u$b;

    move-result-object p1

    return-object p1
.end method
