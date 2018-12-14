.class public Lcom/mh/movie/core/mvp/ui/fragment/MovieFragment;
.super Lcom/mh/movie/core/mvp/ui/fragment/h;
.source "MovieFragment.java"

# interfaces
.implements Lcom/mh/movie/core/mvp/a/ac$b;
.implements Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mh/movie/core/mvp/ui/fragment/h<",
        "Lcom/mh/movie/core/mvp/presenter/MoviePresenter;",
        ">;",
        "Lcom/mh/movie/core/mvp/a/ac$b;",
        "Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper$a;"
    }
.end annotation


# instance fields
.field c:Landroid/widget/LinearLayout;

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

.field f:Lcn/bingoogolapple/bgabanner/BGABanner;

.field ivBannerTop:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c0134
    .end annotation
.end field

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
.method private g()V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ResourceAsColor"
        }
    .end annotation

    .line 106
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/fragment/MovieFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/mh/movie/core/R$layout;->main_header:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 107
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/fragment/MovieFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/mh/movie/core/mvp/ui/fragment/MovieFragment;->c:Landroid/widget/LinearLayout;

    .line 108
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/fragment/MovieFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/mh/movie/core/mvp/ui/utils/PixelsUtils;->getAndroidScreenProperty(Landroid/content/Context;)Lcom/mh/movie/core/mvp/model/entity/PixelsEntity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/model/entity/PixelsEntity;->getWidth()I

    move-result v1

    .line 109
    div-int/lit8 v1, v1, 0x2

    .line 111
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 112
    sget v1, Lcom/mh/movie/core/R$id;->b_main_movie:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 113
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/fragment/MovieFragment;->c:Landroid/widget/LinearLayout;

    sget v2, Lcom/mh/movie/core/R$color;->themeColor:I

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 114
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/fragment/MovieFragment;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 142
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/MovieFragment;->e:Lcom/mh/movie/core/mvp/ui/adapter/f;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/fragment/MovieFragment;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/ui/adapter/f;->a(Landroid/view/View;)V

    .line 143
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/MovieFragment;->recyclerView:Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/fragment/MovieFragment;->e:Lcom/mh/movie/core/mvp/ui/adapter/f;

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;->setAdapter(Lcom/mh/movie/core/mvp/ui/adapter/r;)V

    .line 144
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/MovieFragment;->recyclerView:Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;

    invoke-virtual {v0, p0}, Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;->setOnLoadNextPage(Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper$a;)V

    return-void
.end method

.method private h()V
    .locals 2

    .line 149
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/fragment/MovieFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/mh/movie/core/R$mipmap;->main_block_top:I

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 150
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/MovieFragment;->c:Landroid/widget/LinearLayout;

    sget v1, Lcom/mh/movie/core/R$id;->b_main_movie:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/bingoogolapple/bgabanner/BGABanner;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/MovieFragment;->f:Lcn/bingoogolapple/bgabanner/BGABanner;

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

    .line 90
    sget p3, Lcom/mh/movie/core/R$layout;->fragment_movie:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 95
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/fragment/MovieFragment;->g()V

    .line 96
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/fragment/MovieFragment;->h()V

    .line 97
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/fragment/MovieFragment;->b:Lcom/jess/arms/mvp/b;

    check-cast p1, Lcom/mh/movie/core/mvp/presenter/MoviePresenter;

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/MovieFragment;->e:Lcom/mh/movie/core/mvp/ui/adapter/f;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/adapter/f;->a()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/mh/movie/core/mvp/presenter/MoviePresenter;->a(IZ)V

    .line 98
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/fragment/MovieFragment;->b:Lcom/jess/arms/mvp/b;

    check-cast p1, Lcom/mh/movie/core/mvp/presenter/MoviePresenter;

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/MovieFragment;->e:Lcom/mh/movie/core/mvp/ui/adapter/f;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/adapter/f;->a()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/mh/movie/core/mvp/presenter/MoviePresenter;->a(I)V

    return-void
.end method

.method public a(Lcom/jess/arms/b/a/a;)V
    .locals 1
    .param p1    # Lcom/jess/arms/b/a/a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 81
    invoke-static {}, Lcom/mh/movie/core/a/a/ap;->a()Lcom/mh/movie/core/a/a/ap$a;

    move-result-object v0

    .line 82
    invoke-virtual {v0, p1}, Lcom/mh/movie/core/a/a/ap$a;->a(Lcom/jess/arms/b/a/a;)Lcom/mh/movie/core/a/a/ap$a;

    move-result-object p1

    new-instance v0, Lcom/mh/movie/core/a/b/ca;

    invoke-direct {v0, p0}, Lcom/mh/movie/core/a/b/ca;-><init>(Lcom/mh/movie/core/mvp/a/ac$b;)V

    .line 83
    invoke-virtual {p1, v0}, Lcom/mh/movie/core/a/a/ap$a;->a(Lcom/mh/movie/core/a/b/ca;)Lcom/mh/movie/core/a/a/ap$a;

    move-result-object p1

    .line 84
    invoke-virtual {p1}, Lcom/mh/movie/core/a/a/ap$a;->a()Lcom/mh/movie/core/a/a/cn;

    move-result-object p1

    .line 85
    invoke-interface {p1, p0}, Lcom/mh/movie/core/a/a/cn;->a(Lcom/mh/movie/core/mvp/ui/fragment/MovieFragment;)V

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mh/movie/core/mvp/model/entity/response/HotListResponse;",
            ">;)V"
        }
    .end annotation

    .line 315
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/fragment/MovieFragment;->d:Ljava/util/List;

    .line 316
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/fragment/MovieFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/ui/MHApplication;

    .line 317
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/fragment/MovieFragment;->e:Lcom/mh/movie/core/mvp/ui/adapter/f;

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/ui/adapter/f;->a()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/mh/movie/core/mvp/ui/MHApplication;->a(ILjava/util/List;)V

    .line 318
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/fragment/MovieFragment;->d()V

    return-void
.end method

.method public a(Ljava/util/List;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mh/movie/core/mvp/model/entity/response/VideoInfoListBean;",
            ">;Z)V"
        }
    .end annotation

    .line 262
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    :goto_0
    if-ltz p2, :cond_1

    .line 263
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/model/entity/response/VideoInfoListBean;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/response/VideoInfoListBean;->getQueryList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 264
    invoke-interface {p1, p2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_0
    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public a(ZLjava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 327
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/fragment/MovieFragment;->recyclerView:Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;->d()V

    .line 328
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/fragment/MovieFragment;->recyclerView:Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;

    const/4 v0, -0x1

    invoke-virtual {p1, v0, p2}, Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;->a(ILjava/lang/String;)V

    goto :goto_0

    .line 330
    :cond_0
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/fragment/MovieFragment;->recyclerView:Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;->e()V

    :goto_0
    return-void
.end method

.method public a(ZLjava/lang/Throwable;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 337
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/fragment/MovieFragment;->recyclerView:Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;->d()V

    .line 338
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/fragment/MovieFragment;->recyclerView:Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;

    invoke-virtual {p1, p2}, Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 340
    :cond_0
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/fragment/MovieFragment;->recyclerView:Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;->e()V

    :goto_0
    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public c()V
    .locals 0

    .line 286
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/fragment/MovieFragment;->d()V

    return-void
.end method

.method public c_(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 215
    invoke-static {p1}, Lcom/jess/arms/c/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    invoke-static {p1}, Lcom/jess/arms/c/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method public d()V
    .locals 3

    .line 345
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/MovieFragment;->d:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/MovieFragment;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 346
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 347
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/fragment/MovieFragment;->d:Ljava/util/List;

    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/fragment/MovieFragment;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/model/entity/response/HotListResponse;

    :cond_0
    return-void
.end method

.method public e()V
    .locals 3

    .line 240
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/MovieFragment;->b:Lcom/jess/arms/mvp/b;

    check-cast v0, Lcom/mh/movie/core/mvp/presenter/MoviePresenter;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/fragment/MovieFragment;->e:Lcom/mh/movie/core/mvp/ui/adapter/f;

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/ui/adapter/f;->a()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/mh/movie/core/mvp/presenter/MoviePresenter;->a(IZ)V

    return-void
.end method

.method public e_()V
    .locals 0

    return-void
.end method

.method public f()V
    .locals 3

    .line 245
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/fragment/MovieFragment;->c()V

    .line 246
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/MovieFragment;->b:Lcom/jess/arms/mvp/b;

    check-cast v0, Lcom/mh/movie/core/mvp/presenter/MoviePresenter;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/fragment/MovieFragment;->e:Lcom/mh/movie/core/mvp/ui/adapter/f;

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/ui/adapter/f;->a()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/mh/movie/core/mvp/presenter/MoviePresenter;->a(IZ)V

    return-void
.end method

.method public handleNetWork(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lorg/simple/eventbus/Subscriber;
        tag = "CONNECTED_MOBILE"
    .end annotation

    .line 252
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/fragment/MovieFragment;->f()V

    return-void
.end method

.method public handleWifiNetWork(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lorg/simple/eventbus/Subscriber;
        tag = "CONNECT_WIFI"
    .end annotation

    .line 256
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/fragment/MovieFragment;->f()V

    return-void
.end method
