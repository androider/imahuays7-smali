.class public Lcom/mh/movie/core/mvp/ui/fragment/RecommendFragment;
.super Lcom/mh/movie/core/mvp/ui/fragment/h;
.source "RecommendFragment.java"

# interfaces
.implements Lcom/mh/movie/core/mvp/a/ar$b;
.implements Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mh/movie/core/mvp/ui/fragment/h<",
        "Lcom/mh/movie/core/mvp/presenter/RecommendPresenter;",
        ">;",
        "Lcom/mh/movie/core/mvp/a/ar$b;",
        "Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper$a;"
    }
.end annotation


# instance fields
.field c:Landroid/view/View;

.field d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mh/movie/core/mvp/model/entity/response/HotListResponse;",
            ">;"
        }
    .end annotation
.end field

.field e:Lcom/mh/movie/core/mvp/ui/adapter/f;

.field f:Lbutterknife/Unbinder;

.field g:Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;

.field ivBannerTop:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c0134
    .end annotation
.end field

.field j:I

.field recyclerView:Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c02ca
    .end annotation
.end field

.field viewMain:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c04c1
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 63
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/fragment/h;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/mh/movie/core/mvp/ui/fragment/RecommendFragment;)Lcom/jess/arms/mvp/b;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/mh/movie/core/mvp/ui/fragment/RecommendFragment;->b:Lcom/jess/arms/mvp/b;

    return-object p0
.end method

.method public static a(I)Lcom/mh/movie/core/mvp/ui/fragment/RecommendFragment;
    .locals 1

    .line 99
    new-instance v0, Lcom/mh/movie/core/mvp/ui/fragment/RecommendFragment;

    invoke-direct {v0}, Lcom/mh/movie/core/mvp/ui/fragment/RecommendFragment;-><init>()V

    .line 100
    iput p0, v0, Lcom/mh/movie/core/mvp/ui/fragment/RecommendFragment;->j:I

    return-object v0
.end method

.method private h()V
    .locals 0

    return-void
.end method

.method private k()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ResourceAsColor"
        }
    .end annotation

    .line 189
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/fragment/RecommendFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/mh/movie/core/R$layout;->main_recommend_header:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/RecommendFragment;->c:Landroid/view/View;

    .line 190
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/fragment/RecommendFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/jess/arms/c/e;->b(Landroid/content/Context;)F

    move-result v0

    float-to-int v0, v0

    .line 191
    div-int/lit8 v0, v0, 0xf

    mul-int/lit8 v0, v0, 0x8

    .line 193
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 194
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/RecommendFragment;->c:Landroid/view/View;

    sget v2, Lcom/mh/movie/core/R$id;->ll_container:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 195
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/RecommendFragment;->c:Landroid/view/View;

    sget v1, Lcom/mh/movie/core/R$id;->b_main_movie:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/RecommendFragment;->g:Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;

    .line 196
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/RecommendFragment;->c:Landroid/view/View;

    sget v1, Lcom/mh/movie/core/R$color;->themeColor:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 197
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/RecommendFragment;->recyclerView:Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;

    invoke-virtual {v0, p0}, Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;->setOnLoadNextPage(Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper$a;)V

    .line 198
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/RecommendFragment;->recyclerView:Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;

    iget-object v0, v0, Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;->a:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lcom/mh/movie/core/mvp/ui/fragment/RecommendFragment$3;

    invoke-direct {v1, p0}, Lcom/mh/movie/core/mvp/ui/fragment/RecommendFragment$3;-><init>(Lcom/mh/movie/core/mvp/ui/fragment/RecommendFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->addOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    return-void
.end method

.method private l()V
    .locals 2

    .line 228
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/RecommendFragment;->g:Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;

    new-instance v1, Lcom/mh/movie/core/mvp/ui/fragment/RecommendFragment$4;

    invoke-direct {v1, p0}, Lcom/mh/movie/core/mvp/ui/fragment/RecommendFragment$4;-><init>(Lcom/mh/movie/core/mvp/ui/fragment/RecommendFragment;)V

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->setAdapter(Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner$a;)V

    .line 263
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/RecommendFragment;->g:Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;

    new-instance v1, Lcom/mh/movie/core/mvp/ui/fragment/RecommendFragment$5;

    invoke-direct {v1, p0}, Lcom/mh/movie/core/mvp/ui/fragment/RecommendFragment$5;-><init>(Lcom/mh/movie/core/mvp/ui/fragment/RecommendFragment;)V

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->setDelegate(Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner$c;)V

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

    .line 117
    sget p3, Lcom/mh/movie/core/R$layout;->fragment_recommend:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public a(ILcom/mh/movie/core/mvp/model/entity/response/HomePageResponse;)V
    .locals 1

    .line 372
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/RecommendFragment;->e:Lcom/mh/movie/core/mvp/ui/adapter/f;

    invoke-virtual {v0, p1, p2}, Lcom/mh/movie/core/mvp/ui/adapter/f;->a(ILcom/mh/movie/core/mvp/model/entity/response/HomePageResponse;)V

    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 128
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/fragment/RecommendFragment;->k()V

    .line 129
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/fragment/RecommendFragment;->l()V

    .line 130
    new-instance p1, Lcom/mh/movie/core/mvp/ui/fragment/RecommendFragment$1;

    iget v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/RecommendFragment;->j:I

    invoke-direct {p1, p0, v0}, Lcom/mh/movie/core/mvp/ui/fragment/RecommendFragment$1;-><init>(Lcom/mh/movie/core/mvp/ui/fragment/RecommendFragment;I)V

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/fragment/RecommendFragment;->e:Lcom/mh/movie/core/mvp/ui/adapter/f;

    .line 156
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/fragment/RecommendFragment;->e:Lcom/mh/movie/core/mvp/ui/adapter/f;

    new-instance v0, Lcom/mh/movie/core/mvp/ui/fragment/RecommendFragment$2;

    invoke-direct {v0, p0}, Lcom/mh/movie/core/mvp/ui/fragment/RecommendFragment$2;-><init>(Lcom/mh/movie/core/mvp/ui/fragment/RecommendFragment;)V

    invoke-virtual {p1, v0}, Lcom/mh/movie/core/mvp/ui/adapter/f;->setOnItemClickListener(Lcom/mh/movie/core/mvp/ui/adapter/f$a;)V

    .line 167
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/fragment/RecommendFragment;->recyclerView:Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;

    const-string v0, ""

    invoke-virtual {p1, v0}, Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;->setTipsType(Ljava/lang/String;)V

    .line 168
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/fragment/RecommendFragment;->recyclerView:Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;->a()V

    .line 169
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/fragment/RecommendFragment;->recyclerView:Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/RecommendFragment;->e:Lcom/mh/movie/core/mvp/ui/adapter/f;

    invoke-virtual {p1, v0}, Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;->setAdapter(Lcom/mh/movie/core/mvp/ui/adapter/r;)V

    .line 170
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/fragment/RecommendFragment;->c()V

    .line 171
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/fragment/RecommendFragment;->h()V

    return-void
.end method

.method public a(Lcom/jess/arms/b/a/a;)V
    .locals 1
    .param p1    # Lcom/jess/arms/b/a/a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 108
    invoke-static {}, Lcom/mh/movie/core/a/a/bc;->a()Lcom/mh/movie/core/a/a/bc$a;

    move-result-object v0

    .line 109
    invoke-virtual {v0, p1}, Lcom/mh/movie/core/a/a/bc$a;->a(Lcom/jess/arms/b/a/a;)Lcom/mh/movie/core/a/a/bc$a;

    move-result-object p1

    new-instance v0, Lcom/mh/movie/core/a/b/dn;

    invoke-direct {v0, p0}, Lcom/mh/movie/core/a/b/dn;-><init>(Lcom/mh/movie/core/mvp/a/ar$b;)V

    .line 110
    invoke-virtual {p1, v0}, Lcom/mh/movie/core/a/a/bc$a;->a(Lcom/mh/movie/core/a/b/dn;)Lcom/mh/movie/core/a/a/bc$a;

    move-result-object p1

    .line 111
    invoke-virtual {p1}, Lcom/mh/movie/core/a/a/bc$a;->a()Lcom/mh/movie/core/a/a/da;

    move-result-object p1

    .line 112
    invoke-interface {p1, p0}, Lcom/mh/movie/core/a/a/da;->a(Lcom/mh/movie/core/mvp/ui/fragment/RecommendFragment;)V

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mh/movie/core/mvp/model/entity/response/BannerEntity;",
            ">;)V"
        }
    .end annotation

    .line 321
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/RecommendFragment;->b:Lcom/jess/arms/mvp/b;

    check-cast v0, Lcom/mh/movie/core/mvp/presenter/RecommendPresenter;

    iget v1, p0, Lcom/mh/movie/core/mvp/ui/fragment/RecommendFragment;->j:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/mh/movie/core/mvp/presenter/RecommendPresenter;->a(IZ)V

    .line 322
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 323
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 324
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/RecommendFragment;->g:Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->setAllowUserScrollable(Z)V

    .line 325
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/RecommendFragment;->g:Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;

    invoke-virtual {v0, v2}, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->setAutoPlayAble(Z)V

    goto :goto_0

    .line 327
    :cond_0
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/RecommendFragment;->g:Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;

    invoke-virtual {v0, v2}, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->setAllowUserScrollable(Z)V

    .line 328
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/RecommendFragment;->g:Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;

    invoke-virtual {v0, v2}, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->setAutoPlayAble(Z)V

    .line 330
    :goto_0
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/RecommendFragment;->e:Lcom/mh/movie/core/mvp/ui/adapter/f;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/adapter/f;->b()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    .line 331
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/RecommendFragment;->e:Lcom/mh/movie/core/mvp/ui/adapter/f;

    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/fragment/RecommendFragment;->c:Landroid/view/View;

    invoke-virtual {v0, v2}, Lcom/mh/movie/core/mvp/ui/adapter/f;->a(Landroid/view/View;)V

    .line 333
    :cond_1
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/RecommendFragment;->g:Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;

    sget v2, Lcom/mh/movie/core/R$layout;->item_new_banner:I

    invoke-virtual {v0, v2, p1, v1}, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->a(ILjava/util/List;Ljava/util/List;)V

    goto :goto_1

    .line 335
    :cond_2
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/fragment/RecommendFragment;->e:Lcom/mh/movie/core/mvp/ui/adapter/f;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/ui/adapter/f;->b()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 336
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/fragment/RecommendFragment;->e:Lcom/mh/movie/core/mvp/ui/adapter/f;

    invoke-virtual {p1, v1}, Lcom/mh/movie/core/mvp/ui/adapter/f;->a(Landroid/view/View;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public a(Ljava/util/List;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mh/movie/core/mvp/model/entity/response/HomePageResponse;",
            ">;Z)V"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 311
    iget-object p2, p0, Lcom/mh/movie/core/mvp/ui/fragment/RecommendFragment;->recyclerView:Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;

    invoke-virtual {p2, p1}, Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;->setContent(Ljava/util/List;)V

    .line 312
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/fragment/RecommendFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/mh/movie/core/mvp/ui/fragment/MainFragment;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/ui/fragment/MainFragment;->c()V

    goto :goto_0

    .line 314
    :cond_0
    iget-object p2, p0, Lcom/mh/movie/core/mvp/ui/fragment/RecommendFragment;->recyclerView:Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;

    const/4 v0, 0x1

    invoke-virtual {p2, p1, v0}, Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;->a(Ljava/util/List;Z)V

    :goto_0
    return-void
.end method

.method public a(ZLjava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 353
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/fragment/RecommendFragment;->recyclerView:Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;->d()V

    .line 354
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/fragment/RecommendFragment;->recyclerView:Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;

    const/4 v0, -0x1

    invoke-virtual {p1, v0, p2}, Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;->a(ILjava/lang/String;)V

    goto :goto_0

    .line 356
    :cond_0
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/fragment/RecommendFragment;->recyclerView:Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;->e()V

    :goto_0
    return-void
.end method

.method public a(ZLjava/lang/Throwable;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 363
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/fragment/RecommendFragment;->recyclerView:Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;->d()V

    .line 364
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/fragment/RecommendFragment;->recyclerView:Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;

    invoke-virtual {p1, p2}, Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 366
    :cond_0
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/fragment/RecommendFragment;->recyclerView:Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;->e()V

    :goto_0
    return-void
.end method

.method public b()V
    .locals 0

    invoke-static {p0}, Lcom/jess/arms/mvp/d;->b(Lcom/jess/arms/mvp/c;)V

    return-void
.end method

.method public c()V
    .locals 2

    .line 180
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/RecommendFragment;->b:Lcom/jess/arms/mvp/b;

    check-cast v0, Lcom/mh/movie/core/mvp/presenter/RecommendPresenter;

    iget v1, p0, Lcom/mh/movie/core/mvp/ui/fragment/RecommendFragment;->j:I

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/presenter/RecommendPresenter;->a(I)V

    return-void
.end method

.method public c_(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 282
    invoke-static {p1}, Lcom/jess/arms/c/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    invoke-static {p1}, Lcom/jess/arms/c/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method public d()V
    .locals 1

    .line 344
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/RecommendFragment;->d:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 345
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/fragment/RecommendFragment;->g()V

    :cond_0
    return-void
.end method

.method public e()V
    .locals 3

    .line 410
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/RecommendFragment;->b:Lcom/jess/arms/mvp/b;

    check-cast v0, Lcom/mh/movie/core/mvp/presenter/RecommendPresenter;

    iget v1, p0, Lcom/mh/movie/core/mvp/ui/fragment/RecommendFragment;->j:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/mh/movie/core/mvp/presenter/RecommendPresenter;->a(IZ)V

    return-void
.end method

.method public e_()V
    .locals 0

    invoke-static {p0}, Lcom/jess/arms/mvp/d;->a(Lcom/jess/arms/mvp/c;)V

    return-void
.end method

.method public f()V
    .locals 2

    .line 415
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/fragment/RecommendFragment;->d()V

    .line 416
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/RecommendFragment;->b:Lcom/jess/arms/mvp/b;

    check-cast v0, Lcom/mh/movie/core/mvp/presenter/RecommendPresenter;

    iget v1, p0, Lcom/mh/movie/core/mvp/ui/fragment/RecommendFragment;->j:I

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/presenter/RecommendPresenter;->a(I)V

    return-void
.end method

.method public g()V
    .locals 0

    return-void
.end method

.method public handleNetWork(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lorg/simple/eventbus/Subscriber;
        tag = "CONNECTED_MOBILE"
    .end annotation

    .line 387
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/fragment/RecommendFragment;->f()V

    return-void
.end method

.method public handleWifiNetWork(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lorg/simple/eventbus/Subscriber;
        tag = "CONNECT_WIFI"
    .end annotation

    .line 392
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/fragment/RecommendFragment;->f()V

    return-void
.end method

.method protected j()V
    .locals 0

    .line 122
    invoke-super {p0}, Lcom/mh/movie/core/mvp/ui/fragment/h;->j()V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 422
    invoke-super {p0, p1, p2, p3}, Lcom/mh/movie/core/mvp/ui/fragment/h;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    .line 423
    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    move-result-object p2

    iput-object p2, p0, Lcom/mh/movie/core/mvp/ui/fragment/RecommendFragment;->f:Lbutterknife/Unbinder;

    return-object p1
.end method

.method public onDestroy()V
    .locals 0

    .line 404
    invoke-super {p0}, Lcom/mh/movie/core/mvp/ui/fragment/h;->onDestroy()V

    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .line 397
    invoke-super {p0}, Lcom/mh/movie/core/mvp/ui/fragment/h;->onDestroyView()V

    .line 398
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/RecommendFragment;->f:Lbutterknife/Unbinder;

    invoke-interface {v0}, Lbutterknife/Unbinder;->unbind()V

    return-void
.end method
