.class public Lcom/mh/movie/core/mvp/ui/widget/TvPartLandView;
.super Landroid/widget/LinearLayout;
.source "TvPartLandView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mh/movie/core/mvp/ui/widget/TvPartLandView$a;
    }
.end annotation


# instance fields
.field a:Landroid/view/View;

.field b:Lcom/mh/movie/core/mvp/ui/widget/TvPartLandView$a;

.field c:Lcom/mh/movie/core/mvp/ui/adapter/c;

.field d:Lcom/mh/movie/core/mvp/ui/adapter/c;

.field private e:Landroid/support/v7/widget/RecyclerView;

.field private f:Landroid/support/v7/widget/RecyclerView;

.field private g:I

.field private h:I

.field private i:I

.field private j:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 46
    invoke-direct {p0, p1, v0}, Lcom/mh/movie/core/mvp/ui/widget/TvPartLandView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 50
    invoke-direct {p0, p1, p2, v0}, Lcom/mh/movie/core/mvp/ui/widget/TvPartLandView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 54
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, -0x1

    .line 30
    iput p1, p0, Lcom/mh/movie/core/mvp/ui/widget/TvPartLandView;->g:I

    const/4 p1, 0x0

    .line 31
    iput p1, p0, Lcom/mh/movie/core/mvp/ui/widget/TvPartLandView;->h:I

    .line 33
    iput p1, p0, Lcom/mh/movie/core/mvp/ui/widget/TvPartLandView;->j:I

    .line 71
    new-instance p1, Lcom/mh/movie/core/mvp/ui/widget/TvPartLandView$1;

    const/4 p2, 0x1

    invoke-direct {p1, p0, p2}, Lcom/mh/movie/core/mvp/ui/widget/TvPartLandView$1;-><init>(Lcom/mh/movie/core/mvp/ui/widget/TvPartLandView;Z)V

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/TvPartLandView;->c:Lcom/mh/movie/core/mvp/ui/adapter/c;

    .line 100
    new-instance p1, Lcom/mh/movie/core/mvp/ui/widget/TvPartLandView$2;

    invoke-direct {p1, p0}, Lcom/mh/movie/core/mvp/ui/widget/TvPartLandView$2;-><init>(Lcom/mh/movie/core/mvp/ui/widget/TvPartLandView;)V

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/TvPartLandView;->d:Lcom/mh/movie/core/mvp/ui/adapter/c;

    .line 55
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/widget/TvPartLandView;->a()V

    .line 56
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/widget/TvPartLandView;->b()V

    return-void
.end method

.method static synthetic a(Lcom/mh/movie/core/mvp/ui/widget/TvPartLandView;)I
    .locals 0

    .line 26
    iget p0, p0, Lcom/mh/movie/core/mvp/ui/widget/TvPartLandView;->g:I

    return p0
.end method

.method static synthetic a(Lcom/mh/movie/core/mvp/ui/widget/TvPartLandView;I)I
    .locals 0

    .line 26
    iput p1, p0, Lcom/mh/movie/core/mvp/ui/widget/TvPartLandView;->g:I

    return p1
.end method

.method private a()V
    .locals 3

    .line 60
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/TvPartLandView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/mh/movie/core/R$layout;->dialog_tv_part_land:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/mh/movie/core/mvp/ui/widget/TvPartLandView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/TvPartLandView;->a:Landroid/view/View;

    .line 61
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/TvPartLandView;->a:Landroid/view/View;

    new-instance v1, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 62
    new-instance v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/widget/TvPartLandView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v0, 0x11

    .line 63
    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/widget/TvPartLandView;->setGravity(I)V

    .line 64
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/TvPartLandView;->a:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/widget/TvPartLandView;->addView(Landroid/view/View;)V

    .line 65
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/TvPartLandView;->a:Landroid/view/View;

    sget v1, Lcom/mh/movie/core/R$id;->recycler_view_pager:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/TvPartLandView;->e:Landroid/support/v7/widget/RecyclerView;

    .line 66
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/TvPartLandView;->a:Landroid/view/View;

    sget v1, Lcom/mh/movie/core/R$id;->recycler_view_tv_part:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/TvPartLandView;->f:Landroid/support/v7/widget/RecyclerView;

    .line 68
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/TvPartLandView;->a:Landroid/view/View;

    sget v1, Lcom/mh/movie/core/R$id;->iv_clarity_close:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/mh/movie/core/mvp/ui/widget/x;

    invoke-direct {v1, p0}, Lcom/mh/movie/core/mvp/ui/widget/x;-><init>(Lcom/mh/movie/core/mvp/ui/widget/TvPartLandView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic b(Lcom/mh/movie/core/mvp/ui/widget/TvPartLandView;)I
    .locals 0

    .line 26
    iget p0, p0, Lcom/mh/movie/core/mvp/ui/widget/TvPartLandView;->i:I

    return p0
.end method

.method static synthetic b(Lcom/mh/movie/core/mvp/ui/widget/TvPartLandView;I)I
    .locals 0

    .line 26
    iput p1, p0, Lcom/mh/movie/core/mvp/ui/widget/TvPartLandView;->h:I

    return p1
.end method

.method private b()V
    .locals 3

    .line 143
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/TvPartLandView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 144
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/TvPartLandView;->e:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 145
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/TvPartLandView;->e:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/TvPartLandView;->c:Lcom/mh/movie/core/mvp/ui/adapter/c;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 148
    new-instance v0, Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/TvPartLandView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 149
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/TvPartLandView;->f:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 150
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/TvPartLandView;->f:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/TvPartLandView;->d:Lcom/mh/movie/core/mvp/ui/adapter/c;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method static synthetic c(Lcom/mh/movie/core/mvp/ui/widget/TvPartLandView;)I
    .locals 0

    .line 26
    iget p0, p0, Lcom/mh/movie/core/mvp/ui/widget/TvPartLandView;->h:I

    return p0
.end method


# virtual methods
.method public a(ILjava/util/List;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;",
            ">;I)V"
        }
    .end annotation

    .line 167
    iput p1, p0, Lcom/mh/movie/core/mvp/ui/widget/TvPartLandView;->i:I

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 169
    new-instance p1, Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/TvPartLandView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x3

    invoke-direct {p1, v0, v1}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 170
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/TvPartLandView;->f:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    :cond_0
    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 173
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 174
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;->getId()I

    move-result v1

    if-ne v1, p3, :cond_1

    .line 175
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;->getId()I

    move-result p1

    iput p1, p0, Lcom/mh/movie/core/mvp/ui/widget/TvPartLandView;->h:I

    move p1, v0

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 180
    :cond_2
    :goto_1
    iget-object p3, p0, Lcom/mh/movie/core/mvp/ui/widget/TvPartLandView;->d:Lcom/mh/movie/core/mvp/ui/adapter/c;

    invoke-virtual {p3, p2}, Lcom/mh/movie/core/mvp/ui/adapter/c;->a(Ljava/util/List;)V

    .line 181
    iget-object p2, p0, Lcom/mh/movie/core/mvp/ui/widget/TvPartLandView;->f:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p2, p1}, Landroid/support/v7/widget/RecyclerView;->scrollToPosition(I)V

    return-void
.end method

.method final synthetic a(Landroid/view/View;)V
    .locals 0

    const/16 p1, 0x8

    .line 68
    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/ui/widget/TvPartLandView;->setVisibility(I)V

    return-void
.end method

.method public setChoiceCallback(Lcom/mh/movie/core/mvp/ui/widget/TvPartLandView$a;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/TvPartLandView;->b:Lcom/mh/movie/core/mvp/ui/widget/TvPartLandView$a;

    return-void
.end method

.method public setPagerData(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoPageListBean;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 154
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 155
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoPageListBean;

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoPageListBean;->getIsShow()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 156
    iput v0, p0, Lcom/mh/movie/core/mvp/ui/widget/TvPartLandView;->g:I

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 160
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/TvPartLandView;->c:Lcom/mh/movie/core/mvp/ui/adapter/c;

    invoke-virtual {v0, p1}, Lcom/mh/movie/core/mvp/ui/adapter/c;->a(Ljava/util/List;)V

    .line 161
    iget p1, p0, Lcom/mh/movie/core/mvp/ui/widget/TvPartLandView;->g:I

    if-ltz p1, :cond_2

    .line 162
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/TvPartLandView;->e:Landroid/support/v7/widget/RecyclerView;

    iget v0, p0, Lcom/mh/movie/core/mvp/ui/widget/TvPartLandView;->g:I

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->scrollToPosition(I)V

    :cond_2
    return-void
.end method

.method public setResolution(I)V
    .locals 0

    .line 42
    iput p1, p0, Lcom/mh/movie/core/mvp/ui/widget/TvPartLandView;->j:I

    return-void
.end method
