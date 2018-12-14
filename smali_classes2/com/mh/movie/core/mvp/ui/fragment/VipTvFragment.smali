.class public Lcom/mh/movie/core/mvp/ui/fragment/VipTvFragment;
.super Lcom/jess/arms/a/e;
.source "VipTvFragment.java"

# interfaces
.implements Lcom/mh/movie/core/mvp/a/bj$b;
.implements Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/jess/arms/a/e<",
        "Lcom/mh/movie/core/mvp/presenter/VipTvPresenter;",
        ">;",
        "Lcom/mh/movie/core/mvp/a/bj$b;",
        "Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper$a;"
    }
.end annotation


# instance fields
.field c:Lbutterknife/Unbinder;

.field d:I

.field e:Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;

.field f:I

.field recyclerVipTv:Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c02ce
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 60
    invoke-direct {p0}, Lcom/jess/arms/a/e;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/mh/movie/core/mvp/ui/fragment/VipTvFragment;)Lcom/jess/arms/mvp/b;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/mh/movie/core/mvp/ui/fragment/VipTvFragment;->b:Lcom/jess/arms/mvp/b;

    return-object p0
.end method

.method static synthetic a(Lcom/mh/movie/core/mvp/ui/fragment/VipTvFragment;Lcom/mh/movie/core/mvp/ui/holder/ac;Lcom/mh/movie/core/mvp/model/entity/response/VipListResponse;)V
    .locals 0

    .line 60
    invoke-direct {p0, p1, p2}, Lcom/mh/movie/core/mvp/ui/fragment/VipTvFragment;->a(Lcom/mh/movie/core/mvp/ui/holder/ac;Lcom/mh/movie/core/mvp/model/entity/response/VipListResponse;)V

    return-void
.end method

.method private a(Lcom/mh/movie/core/mvp/ui/holder/ac;Lcom/mh/movie/core/mvp/model/entity/response/VipListResponse;)V
    .locals 7

    .line 121
    iget-object v0, p1, Lcom/mh/movie/core/mvp/ui/holder/ac;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 123
    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/response/VipListResponse;->getCoverUrl()Ljava/lang/String;

    move-result-object v0

    .line 124
    sget-object v1, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->RESOURCE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-static {v1}, Lcom/bumptech/glide/request/RequestOptions;->diskCacheStrategyOf(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v1

    .line 125
    iget-object v2, p1, Lcom/mh/movie/core/mvp/ui/holder/ac;->b:Lpl/droidsonroids/gif/GifImageView;

    invoke-static {v2}, Lcom/bumptech/glide/Glide;->with(Landroid/view/View;)Lcom/bumptech/glide/RequestManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/RequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/mh/movie/core/mvp/ui/holder/ac;->b:Lpl/droidsonroids/gif/GifImageView;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 126
    iget-object v0, p1, Lcom/mh/movie/core/mvp/ui/holder/ac;->c:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/response/VipListResponse;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v0, "%02d:%02d:%02d"

    const/4 v1, 0x3

    .line 128
    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/response/VipListResponse;->getPlayTimeLength()I

    move-result v2

    div-int/lit16 v2, v2, 0xe10

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/response/VipListResponse;->getPlayTimeLength()I

    move-result v2

    div-int/lit8 v2, v2, 0x3c

    int-to-double v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v2, v4

    rem-int/lit8 v2, v2, 0x3c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/response/VipListResponse;->getPlayTimeLength()I

    move-result v2

    rem-int/lit8 v2, v2, 0x3c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v5, 0x2

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 129
    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/response/VipListResponse;->getType()I

    move-result v1

    if-ne v1, v5, :cond_1

    .line 130
    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/response/VipListResponse;->getEpisodeState()I

    move-result v0

    if-ne v0, v4, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/response/VipListResponse;->getEpisodeUploadCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\u96c6\u5168"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u66f4\u65b0\u81f3"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/response/VipListResponse;->getEpisodeUploadCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\u96c6"

    goto :goto_0

    .line 132
    :cond_1
    :goto_1
    iget-object v1, p1, Lcom/mh/movie/core/mvp/ui/holder/ac;->f:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    iget-object v0, p1, Lcom/mh/movie/core/mvp/ui/holder/ac;->f:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/response/VipListResponse;->getType()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v4, :cond_2

    const/16 v1, 0x8

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 135
    new-instance v0, Landroid/text/SpannableString;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/response/VipListResponse;->getDoubanScore()D

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v5, ""

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 136
    new-instance v1, Landroid/text/style/AbsoluteSizeSpan;

    const/16 v5, 0x12

    invoke-direct {v1, v5, v4}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 137
    iget-object v1, p1, Lcom/mh/movie/core/mvp/ui/holder/ac;->h:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    iget-object v0, p1, Lcom/mh/movie/core/mvp/ui/holder/ac;->h:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/response/VipListResponse;->getType()I

    move-result v1

    if-ne v1, v4, :cond_3

    const/4 v2, 0x0

    :cond_3
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 141
    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/response/VipListResponse;->getFocus()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 142
    iget-object v0, p1, Lcom/mh/movie/core/mvp/ui/holder/ac;->d:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/response/VipListResponse;->getPlayCount()I

    move-result v2

    int-to-float v2, v2

    invoke-static {v2}, Lcom/mh/movie/core/mvp/ui/utils/T;->formatShow(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\u64ad\u653e"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 144
    :cond_4
    iget-object v0, p1, Lcom/mh/movie/core/mvp/ui/holder/ac;->d:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/response/VipListResponse;->getFocus()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    :goto_3
    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/response/VipListResponse;->getTagDTO()Lcom/mh/movie/core/mvp/model/entity/TagDTOBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/TagDTOBean;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 149
    iget-object v0, p1, Lcom/mh/movie/core/mvp/ui/holder/ac;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 151
    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/response/VipListResponse;->getTagDTO()Lcom/mh/movie/core/mvp/model/entity/TagDTOBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/TagDTOBean;->getBackgroundColor()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    .line 152
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/fragment/VipTvFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/mh/movie/core/R$drawable;->tag_corner_bg:I

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 153
    invoke-static {v1, v0}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTint(Landroid/graphics/drawable/Drawable;I)V

    .line 154
    iget-object v0, p1, Lcom/mh/movie/core/mvp/ui/holder/ac;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 156
    iget-object v0, p1, Lcom/mh/movie/core/mvp/ui/holder/ac;->e:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/response/VipListResponse;->getTagDTO()Lcom/mh/movie/core/mvp/model/entity/TagDTOBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/model/entity/TagDTOBean;->getFrontColor()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 157
    iget-object p1, p1, Lcom/mh/movie/core/mvp/ui/holder/ac;->e:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/response/VipListResponse;->getTagDTO()Lcom/mh/movie/core/mvp/model/entity/TagDTOBean;

    move-result-object p2

    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/TagDTOBean;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 159
    :cond_5
    iget-object p1, p1, Lcom/mh/movie/core/mvp/ui/holder/ac;->e:Landroid/widget/TextView;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_4
    return-void
.end method

.method static synthetic b(Lcom/mh/movie/core/mvp/ui/fragment/VipTvFragment;)Lcom/jess/arms/mvp/b;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/mh/movie/core/mvp/ui/fragment/VipTvFragment;->b:Lcom/jess/arms/mvp/b;

    return-object p0
.end method

.method public static b(I)Lcom/mh/movie/core/mvp/ui/fragment/VipTvFragment;
    .locals 1

    .line 71
    new-instance v0, Lcom/mh/movie/core/mvp/ui/fragment/VipTvFragment;

    invoke-direct {v0}, Lcom/mh/movie/core/mvp/ui/fragment/VipTvFragment;-><init>()V

    .line 72
    iput p0, v0, Lcom/mh/movie/core/mvp/ui/fragment/VipTvFragment;->d:I

    return-object v0
.end method

.method private c()V
    .locals 5

    .line 99
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/fragment/VipTvFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v1, v0}, Lcom/mh/movie/core/mvp/ui/utils/ViewBuildUtils;->convertParams(ILandroid/content/Context;)[I

    move-result-object v0

    .line 100
    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/fragment/VipTvFragment;->recyclerVipTv:Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;

    new-instance v3, Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/fragment/VipTvFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v2, v3}, Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 101
    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/fragment/VipTvFragment;->recyclerVipTv:Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;

    iget-object v2, v2, Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;->a:Landroid/support/v7/widget/RecyclerView;

    new-instance v3, Lcom/mh/movie/core/mvp/ui/widget/s;

    const/16 v4, 0xa

    invoke-direct {v3, v1, v4}, Lcom/mh/movie/core/mvp/ui/widget/s;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 102
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/fragment/VipTvFragment;->recyclerVipTv:Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;

    new-instance v2, Lcom/mh/movie/core/mvp/ui/fragment/VipTvFragment$1;

    invoke-direct {v2, p0, v0}, Lcom/mh/movie/core/mvp/ui/fragment/VipTvFragment$1;-><init>(Lcom/mh/movie/core/mvp/ui/fragment/VipTvFragment;[I)V

    invoke-virtual {v1, v2}, Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;->setAdapter(Lcom/mh/movie/core/mvp/ui/adapter/r;)V

    .line 115
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/VipTvFragment;->recyclerVipTv:Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;

    invoke-virtual {v0, p0}, Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;->setOnLoadNextPage(Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper$a;)V

    .line 116
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/VipTvFragment;->recyclerVipTv:Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;->setTipsType(Ljava/lang/String;)V

    return-void
.end method

.method private c(I)V
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/VipTvFragment;->b:Lcom/jess/arms/mvp/b;

    check-cast v0, Lcom/mh/movie/core/mvp/presenter/VipTvPresenter;

    invoke-virtual {v0, p1}, Lcom/mh/movie/core/mvp/presenter/VipTvPresenter;->a(I)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 88
    sget p3, Lcom/mh/movie/core/R$layout;->fragment_vip_tv:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public a(I)V
    .locals 3

    .line 266
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/fragment/VipTvFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/mh/movie/core/mvp/model/db/WatchFromEvent;->FROM_VIP:I

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, v1}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->a(Landroid/content/Context;III)V

    return-void
.end method

.method public a(ILjava/lang/Integer;)V
    .locals 2

    .line 235
    iput p1, p0, Lcom/mh/movie/core/mvp/ui/fragment/VipTvFragment;->f:I

    .line 236
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const/4 v0, 0x0

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 259
    :pswitch_0
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/fragment/VipTvFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/mh/movie/core/mvp/ui/activity/VipActivity;

    invoke-virtual {p1, v0}, Lcom/mh/movie/core/mvp/ui/activity/VipActivity;->a(Z)V

    goto :goto_0

    .line 241
    :pswitch_1
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/fragment/VipTvFragment;->e:Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;

    if-nez p1, :cond_0

    .line 242
    new-instance p1, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;

    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/fragment/VipTvFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    const/4 v0, 0x6

    invoke-direct {p1, p2, v0}, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/fragment/VipTvFragment;->e:Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;

    .line 243
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/fragment/VipTvFragment;->e:Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;

    new-instance p2, Lcom/mh/movie/core/mvp/ui/fragment/VipTvFragment$2;

    invoke-direct {p2, p0}, Lcom/mh/movie/core/mvp/ui/fragment/VipTvFragment$2;-><init>(Lcom/mh/movie/core/mvp/ui/fragment/VipTvFragment;)V

    invoke-virtual {p1, p2}, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->a(Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog$a;)V

    .line 256
    :cond_0
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/fragment/VipTvFragment;->e:Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->show()V

    goto :goto_0

    .line 238
    :pswitch_2
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/fragment/VipTvFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    sget v1, Lcom/mh/movie/core/mvp/model/db/WatchFromEvent;->FROM_VIP:I

    invoke-static {p2, v0, p1, v1}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->a(Landroid/content/Context;III)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 94
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/fragment/VipTvFragment;->c()V

    .line 95
    iget p1, p0, Lcom/mh/movie/core/mvp/ui/fragment/VipTvFragment;->d:I

    invoke-direct {p0, p1}, Lcom/mh/movie/core/mvp/ui/fragment/VipTvFragment;->c(I)V

    return-void
.end method

.method public a(Lcom/jess/arms/b/a/a;)V
    .locals 1
    .param p1    # Lcom/jess/arms/b/a/a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 79
    invoke-static {}, Lcom/mh/movie/core/a/a/bt;->a()Lcom/mh/movie/core/a/a/bt$a;

    move-result-object v0

    .line 80
    invoke-virtual {v0, p1}, Lcom/mh/movie/core/a/a/bt$a;->a(Lcom/jess/arms/b/a/a;)Lcom/mh/movie/core/a/a/bt$a;

    move-result-object p1

    new-instance v0, Lcom/mh/movie/core/a/b/fq;

    invoke-direct {v0, p0}, Lcom/mh/movie/core/a/b/fq;-><init>(Lcom/mh/movie/core/mvp/a/bj$b;)V

    .line 81
    invoke-virtual {p1, v0}, Lcom/mh/movie/core/a/a/bt$a;->a(Lcom/mh/movie/core/a/b/fq;)Lcom/mh/movie/core/a/a/bt$a;

    move-result-object p1

    .line 82
    invoke-virtual {p1}, Lcom/mh/movie/core/a/a/bt$a;->a()Lcom/mh/movie/core/a/a/dr;

    move-result-object p1

    .line 83
    invoke-interface {p1, p0}, Lcom/mh/movie/core/a/a/dr;->a(Lcom/mh/movie/core/mvp/ui/fragment/VipTvFragment;)V

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mh/movie/core/mvp/model/entity/response/VipListResponse;",
            ">;)V"
        }
    .end annotation

    .line 225
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/VipTvFragment;->recyclerVipTv:Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;

    invoke-virtual {v0, p1}, Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;->a(Ljava/util/List;)V

    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public b(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mh/movie/core/mvp/model/entity/response/VipListResponse;",
            ">;)V"
        }
    .end annotation

    .line 230
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/VipTvFragment;->recyclerVipTv:Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;

    invoke-virtual {v0, p1}, Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;->setContent(Ljava/util/List;)V

    return-void
.end method

.method public c_(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 184
    invoke-static {p1}, Lcom/jess/arms/c/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    invoke-static {p1}, Lcom/jess/arms/c/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method public e()V
    .locals 2

    .line 215
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/VipTvFragment;->b:Lcom/jess/arms/mvp/b;

    check-cast v0, Lcom/mh/movie/core/mvp/presenter/VipTvPresenter;

    iget v1, p0, Lcom/mh/movie/core/mvp/ui/fragment/VipTvFragment;->d:I

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/presenter/VipTvPresenter;->b(I)V

    return-void
.end method

.method public e_()V
    .locals 0

    return-void
.end method

.method public f()V
    .locals 2

    .line 220
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/VipTvFragment;->b:Lcom/jess/arms/mvp/b;

    check-cast v0, Lcom/mh/movie/core/mvp/presenter/VipTvPresenter;

    iget v1, p0, Lcom/mh/movie/core/mvp/ui/fragment/VipTvFragment;->d:I

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/presenter/VipTvPresenter;->a(I)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 202
    invoke-super {p0, p1, p2, p3}, Lcom/jess/arms/a/e;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    .line 203
    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    move-result-object p2

    iput-object p2, p0, Lcom/mh/movie/core/mvp/ui/fragment/VipTvFragment;->c:Lbutterknife/Unbinder;

    return-object p1
.end method

.method public onDestroyView()V
    .locals 1

    .line 209
    invoke-super {p0}, Lcom/jess/arms/a/e;->onDestroyView()V

    .line 210
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/VipTvFragment;->c:Lbutterknife/Unbinder;

    invoke-interface {v0}, Lbutterknife/Unbinder;->unbind()V

    return-void
.end method
