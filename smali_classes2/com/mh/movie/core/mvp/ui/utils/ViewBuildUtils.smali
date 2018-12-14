.class public Lcom/mh/movie/core/mvp/ui/utils/ViewBuildUtils;
.super Ljava/lang/Object;
.source "ViewBuildUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildViews(ILcom/mh/movie/core/mvp/model/entity/response/QueryListBean;Landroid/content/Context;Lcom/mh/movie/core/mvp/ui/holder/m;)V
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ResourceType"
        }
    .end annotation

    .line 134
    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/QueryListBean;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/raizlabs/android/dbflow/a;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 139
    :cond_0
    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/QueryListBean;->getPicUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/raizlabs/android/dbflow/a;->b(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_6

    if-eq p0, v1, :cond_3

    if-ne p0, v2, :cond_1

    goto :goto_0

    .line 147
    :cond_1
    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/QueryListBean;->getCoverGifUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/raizlabs/android/dbflow/a;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 148
    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/QueryListBean;->getCoverUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 150
    :cond_2
    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/QueryListBean;->getCoverGifUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 141
    :cond_3
    :goto_0
    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/QueryListBean;->getCoverGifHUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/raizlabs/android/dbflow/a;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 142
    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/QueryListBean;->getCoverHUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/raizlabs/android/dbflow/a;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/QueryListBean;->getCoverUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/QueryListBean;->getCoverHUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 144
    :cond_5
    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/QueryListBean;->getCoverGifHUrl()Ljava/lang/String;

    move-result-object v0

    .line 153
    :goto_1
    iget-object v3, p3, Lcom/mh/movie/core/mvp/ui/holder/m;->a:Lpl/droidsonroids/gif/GifImageView;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Lpl/droidsonroids/gif/GifImageView;->setImageURI(Landroid/net/Uri;)V

    goto :goto_2

    .line 155
    :cond_6
    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/QueryListBean;->getPicUrl()Ljava/lang/String;

    move-result-object v0

    .line 159
    :goto_2
    iget-object v3, p3, Lcom/mh/movie/core/mvp/ui/holder/m;->a:Lpl/droidsonroids/gif/GifImageView;

    invoke-static {v3}, Lcom/bumptech/glide/Glide;->with(Landroid/view/View;)Lcom/bumptech/glide/RequestManager;

    move-result-object v3

    .line 160
    invoke-virtual {v3, v0}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    iget-object v3, p3, Lcom/mh/movie/core/mvp/ui/holder/m;->a:Lpl/droidsonroids/gif/GifImageView;

    .line 161
    invoke-virtual {v0, v3}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    if-ne p0, v1, :cond_7

    .line 172
    iget-object p0, p3, Lcom/mh/movie/core/mvp/ui/holder/m;->i:Landroid/widget/ImageView;

    sget v0, Lcom/mh/movie/core/R$mipmap;->pic_crosscover_mask:I

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3

    .line 174
    :cond_7
    iget-object p0, p3, Lcom/mh/movie/core/mvp/ui/holder/m;->i:Landroid/widget/ImageView;

    sget v0, Lcom/mh/movie/core/R$mipmap;->pic_uprightcover_mask:I

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 178
    :goto_3
    iget-object p0, p3, Lcom/mh/movie/core/mvp/ui/holder/m;->b:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/QueryListBean;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 181
    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/QueryListBean;->getType()I

    move-result p0

    const/4 v0, 0x4

    if-ne p0, v0, :cond_b

    .line 182
    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/QueryListBean;->getLastPeriod()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_9

    .line 183
    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/QueryListBean;->getEpisodeState()I

    move-result p0

    if-ne p0, v2, :cond_8

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u5171"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/QueryListBean;->getEpisodeUploadCount()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_4
    const-string v1, "\u671f"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_5

    :cond_8
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u66f4\u65b0\u81f3"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/QueryListBean;->getLastPeriod()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 184
    :goto_5
    iget-object v1, p3, Lcom/mh/movie/core/mvp/ui/holder/m;->e:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_a

    .line 186
    :cond_9
    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/QueryListBean;->getEpisodeState()I

    move-result p0

    if-ne p0, v2, :cond_a

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u5171"

    :goto_6
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/QueryListBean;->getEpisodeUploadCount()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\u671f"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_7

    :cond_a
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u66f4\u65b0\u81f3"

    goto :goto_6

    .line 187
    :goto_7
    iget-object v1, p3, Lcom/mh/movie/core/mvp/ui/holder/m;->e:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_a

    .line 189
    :cond_b
    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/QueryListBean;->getType()I

    move-result p0

    if-eq p0, v2, :cond_d

    .line 190
    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/QueryListBean;->getEpisodeState()I

    move-result p0

    if-ne p0, v2, :cond_c

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/QueryListBean;->getEpisodeUploadCount()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\u96c6\u5168"

    :goto_8
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_9

    :cond_c
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u66f4\u65b0\u81f3"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/QueryListBean;->getEpisodeUploadCount()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\u96c6"

    goto :goto_8

    .line 191
    :goto_9
    iget-object v1, p3, Lcom/mh/movie/core/mvp/ui/holder/m;->e:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 195
    :cond_d
    :goto_a
    iget-object p0, p3, Lcom/mh/movie/core/mvp/ui/holder/m;->e:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/QueryListBean;->getType()I

    move-result v1

    const/16 v3, 0x8

    const/4 v4, 0x0

    if-ne v1, v2, :cond_e

    const/16 v1, 0x8

    goto :goto_b

    :cond_e
    const/4 v1, 0x0

    :goto_b
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 198
    new-instance p0, Landroid/text/SpannableString;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/QueryListBean;->getDoubanScore()D

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v5, ""

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 199
    new-instance v1, Landroid/text/style/AbsoluteSizeSpan;

    const/16 v5, 0x12

    invoke-direct {v1, v5, v2}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    invoke-virtual {p0, v1, v4, v2, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 200
    iget-object v1, p3, Lcom/mh/movie/core/mvp/ui/holder/m;->h:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 201
    iget-object p0, p3, Lcom/mh/movie/core/mvp/ui/holder/m;->h:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/QueryListBean;->getType()I

    move-result v1

    if-ne v1, v2, :cond_f

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/QueryListBean;->getDoubanScore()D

    move-result-wide v1

    const-wide/16 v5, 0x0

    cmpl-double v7, v1, v5

    if-lez v7, :cond_f

    const/4 v3, 0x0

    :cond_f
    invoke-virtual {p0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 207
    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/QueryListBean;->getFocus()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/raizlabs/android/dbflow/a;->a(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_10

    .line 208
    iget-object p0, p3, Lcom/mh/movie/core/mvp/ui/holder/m;->c:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/QueryListBean;->getFocus()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_c

    .line 210
    :cond_10
    iget-object p0, p3, Lcom/mh/movie/core/mvp/ui/holder/m;->c:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/QueryListBean;->getPlayCount()I

    move-result v2

    int-to-float v2, v2

    invoke-static {v2}, Lcom/mh/movie/core/mvp/ui/utils/T;->formatShow(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\u64ad\u653e"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 212
    :goto_c
    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/QueryListBean;->getTagDTO()Lcom/mh/movie/core/mvp/model/entity/TagDTOBean;

    move-result-object p0

    if-eqz p0, :cond_11

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/QueryListBean;->getTagDTO()Lcom/mh/movie/core/mvp/model/entity/TagDTOBean;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/model/entity/TagDTOBean;->getName()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_11

    .line 213
    iget-object p0, p3, Lcom/mh/movie/core/mvp/ui/holder/m;->d:Landroid/widget/TextView;

    invoke-virtual {p0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 215
    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/QueryListBean;->getTagDTO()Lcom/mh/movie/core/mvp/model/entity/TagDTOBean;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/model/entity/TagDTOBean;->getBackgroundColor()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p0

    .line 216
    sget v0, Lcom/mh/movie/core/R$drawable;->tag_corner_bg:I

    invoke-static {p2, v0}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-static {p2}, Landroid/support/v4/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 217
    invoke-static {p2, p0}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTint(Landroid/graphics/drawable/Drawable;I)V

    .line 218
    iget-object p0, p3, Lcom/mh/movie/core/mvp/ui/holder/m;->d:Landroid/widget/TextView;

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 220
    iget-object p0, p3, Lcom/mh/movie/core/mvp/ui/holder/m;->d:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/QueryListBean;->getTagDTO()Lcom/mh/movie/core/mvp/model/entity/TagDTOBean;

    move-result-object p2

    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/TagDTOBean;->getFrontColor()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 221
    iget-object p0, p3, Lcom/mh/movie/core/mvp/ui/holder/m;->d:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/QueryListBean;->getTagDTO()Lcom/mh/movie/core/mvp/model/entity/TagDTOBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/TagDTOBean;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_d

    .line 223
    :cond_11
    iget-object p0, p3, Lcom/mh/movie/core/mvp/ui/holder/m;->d:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_d
    return-void
.end method

.method public static convertParams(ILandroid/content/Context;)[I
    .locals 4

    const-string v0, "screen_width"

    .line 73
    invoke-static {p1, v0}, Lcom/jess/arms/c/d;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const/high16 v1, 0x40400000    # 3.0f

    .line 74
    invoke-static {p1, v1}, Lcom/jess/arms/c/e;->a(Landroid/content/Context;F)F

    move-result p1

    float-to-int p1, p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x2

    packed-switch p0, :pswitch_data_0

    const/4 v0, -0x1

    const/4 p0, -0x2

    goto :goto_0

    :pswitch_0
    mul-int/lit8 p1, p1, 0x2

    sub-int/2addr v0, p1

    .line 114
    div-int/lit8 v0, v0, 0x3

    mul-int/lit16 p0, v0, 0xb8

    .line 115
    div-int/lit8 p0, p0, 0x7b

    goto :goto_0

    :pswitch_1
    mul-int/lit8 p1, p1, 0x3

    sub-int/2addr v0, p1

    int-to-float p0, v0

    const p1, 0x4059999a    # 3.4f

    div-float/2addr p0, p1

    float-to-int v0, p0

    mul-int/lit16 p0, v0, 0xb8

    .line 109
    div-int/lit8 p0, p0, 0x7b

    goto :goto_0

    :pswitch_2
    mul-int/lit8 p1, p1, 0x2

    sub-int/2addr v0, p1

    int-to-float p0, v0

    const p1, 0x4019999a    # 2.4f

    div-float/2addr p0, p1

    float-to-int v0, p0

    mul-int/lit8 p0, v0, 0x9

    .line 103
    div-int/lit8 p0, p0, 0x10

    goto :goto_0

    :pswitch_3
    mul-int/lit8 p1, p1, 0x2

    sub-int/2addr v0, p1

    .line 96
    div-int/lit8 v0, v0, 0x3

    mul-int/lit16 p0, v0, 0xb8

    .line 97
    div-int/lit8 p0, p0, 0x7b

    goto :goto_0

    :pswitch_4
    mul-int/lit8 p1, p1, 0x1

    sub-int/2addr v0, p1

    .line 90
    div-int/2addr v0, v3

    mul-int/lit8 p0, v0, 0x9

    .line 91
    div-int/lit8 p0, p0, 0x10

    goto :goto_0

    :pswitch_5
    mul-int/lit8 p1, p1, 0x0

    sub-int/2addr v0, p1

    .line 84
    div-int/2addr v0, v2

    .line 85
    div-int/lit8 p0, v0, 0x2

    .line 119
    :goto_0
    new-array p1, v3, [I

    aput v0, p1, v1

    aput p0, p1, v2

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static loadImage(Ljava/lang/String;Lcom/facebook/drawee/view/SimpleDraweeView;II)V
    .locals 6

    .line 228
    invoke-virtual {p1}, Lcom/facebook/drawee/view/SimpleDraweeView;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 229
    invoke-virtual {p1}, Lcom/facebook/drawee/view/SimpleDraweeView;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    const-string v0, ".gif"

    .line 235
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    const-string v0, "webp"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x0

    .line 240
    :goto_1
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-static {v3}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->a(Landroid/net/Uri;)Lcom/facebook/imagepipeline/request/ImageRequestBuilder;

    move-result-object v3

    new-instance v4, Lcom/facebook/imagepipeline/common/d;

    const/4 v5, -0x1

    if-ne p2, v5, :cond_3

    const/16 p2, 0x1e0

    :cond_3
    if-ne p3, v5, :cond_4

    const/16 p3, 0x168

    :cond_4
    invoke-direct {v4, p2, p3}, Lcom/facebook/imagepipeline/common/d;-><init>(II)V

    .line 241
    invoke-virtual {v3, v4}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->a(Lcom/facebook/imagepipeline/common/d;)Lcom/facebook/imagepipeline/request/ImageRequestBuilder;

    move-result-object p2

    .line 242
    invoke-virtual {p2, v1}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->a(Z)Lcom/facebook/imagepipeline/request/ImageRequestBuilder;

    move-result-object p2

    .line 243
    invoke-virtual {p2, v2}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->b(Z)Lcom/facebook/imagepipeline/request/ImageRequestBuilder;

    move-result-object p2

    sget-object p3, Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;->FULL_FETCH:Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

    .line 244
    invoke-virtual {p2, p3}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->a(Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;)Lcom/facebook/imagepipeline/request/ImageRequestBuilder;

    move-result-object p2

    .line 245
    invoke-static {}, Lcom/facebook/imagepipeline/common/b;->b()Lcom/facebook/imagepipeline/common/c;

    move-result-object p3

    invoke-virtual {p3, v0}, Lcom/facebook/imagepipeline/common/c;->b(Z)Lcom/facebook/imagepipeline/common/c;

    move-result-object p3

    invoke-virtual {p3, v2}, Lcom/facebook/imagepipeline/common/c;->a(Z)Lcom/facebook/imagepipeline/common/c;

    move-result-object p3

    .line 246
    invoke-virtual {p3}, Lcom/facebook/imagepipeline/common/c;->j()Lcom/facebook/imagepipeline/common/b;

    move-result-object p3

    .line 245
    invoke-virtual {p2, p3}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->a(Lcom/facebook/imagepipeline/common/b;)Lcom/facebook/imagepipeline/request/ImageRequestBuilder;

    move-result-object p2

    .line 246
    invoke-virtual {p2}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->o()Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object p2

    .line 247
    new-instance p3, Lcom/mh/movie/core/mvp/ui/utils/ViewBuildUtils$1;

    invoke-direct {p3}, Lcom/mh/movie/core/mvp/ui/utils/ViewBuildUtils$1;-><init>()V

    .line 260
    invoke-static {}, Lcom/facebook/drawee/backends/pipeline/c;->a()Lcom/facebook/drawee/backends/pipeline/e;

    move-result-object v0

    .line 261
    invoke-virtual {v0, p2}, Lcom/facebook/drawee/backends/pipeline/e;->b(Ljava/lang/Object;)Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    move-result-object p2

    check-cast p2, Lcom/facebook/drawee/backends/pipeline/e;

    .line 262
    invoke-virtual {p1}, Lcom/facebook/drawee/view/SimpleDraweeView;->getController()Lcom/facebook/drawee/c/a;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/facebook/drawee/backends/pipeline/e;->b(Lcom/facebook/drawee/c/a;)Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    move-result-object p2

    check-cast p2, Lcom/facebook/drawee/backends/pipeline/e;

    .line 263
    invoke-virtual {p2, p3}, Lcom/facebook/drawee/backends/pipeline/e;->a(Lcom/facebook/drawee/controller/c;)Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    move-result-object p2

    check-cast p2, Lcom/facebook/drawee/backends/pipeline/e;

    .line 264
    invoke-virtual {p2}, Lcom/facebook/drawee/backends/pipeline/e;->i()Lcom/facebook/drawee/controller/a;

    move-result-object p2

    .line 265
    invoke-virtual {p1, p2}, Lcom/facebook/drawee/view/SimpleDraweeView;->setController(Lcom/facebook/drawee/c/a;)V

    .line 266
    invoke-virtual {p1, p0}, Lcom/facebook/drawee/view/SimpleDraweeView;->setTag(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 268
    invoke-static {p0}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method

.method public static showUrlBlur(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;II)V
    .locals 1

    .line 275
    :try_start_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 276
    invoke-static {p1}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->a(Landroid/net/Uri;)Lcom/facebook/imagepipeline/request/ImageRequestBuilder;

    move-result-object p1

    new-instance v0, Lcom/facebook/imagepipeline/j/a;

    invoke-direct {v0, p2, p3}, Lcom/facebook/imagepipeline/j/a;-><init>(II)V

    .line 277
    invoke-virtual {p1, v0}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->a(Lcom/facebook/imagepipeline/request/b;)Lcom/facebook/imagepipeline/request/ImageRequestBuilder;

    move-result-object p1

    .line 278
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->o()Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object p1

    .line 279
    invoke-static {}, Lcom/facebook/drawee/backends/pipeline/c;->a()Lcom/facebook/drawee/backends/pipeline/e;

    move-result-object p2

    .line 280
    invoke-virtual {p0}, Lcom/facebook/drawee/view/SimpleDraweeView;->getController()Lcom/facebook/drawee/c/a;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/facebook/drawee/backends/pipeline/e;->b(Lcom/facebook/drawee/c/a;)Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    move-result-object p2

    check-cast p2, Lcom/facebook/drawee/backends/pipeline/e;

    .line 281
    invoke-virtual {p2, p1}, Lcom/facebook/drawee/backends/pipeline/e;->b(Ljava/lang/Object;)Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    move-result-object p1

    check-cast p1, Lcom/facebook/drawee/backends/pipeline/e;

    .line 282
    invoke-virtual {p1}, Lcom/facebook/drawee/backends/pipeline/e;->i()Lcom/facebook/drawee/controller/a;

    move-result-object p1

    .line 283
    invoke-virtual {p0, p1}, Lcom/facebook/drawee/view/SimpleDraweeView;->setController(Lcom/facebook/drawee/c/a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 285
    invoke-static {p0}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
