.class public Lcom/mh/movie/core/mvp/ui/widget/player/TvPartView;
.super Landroid/widget/LinearLayout;
.source "TvPartView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mh/movie/core/mvp/ui/widget/player/TvPartView$a;
    }
.end annotation


# instance fields
.field a:Landroid/view/View;

.field b:Landroid/support/v7/widget/RecyclerView;

.field c:Landroid/support/v7/widget/RecyclerView;

.field d:Landroid/widget/TextView;

.field e:I

.field f:Lcom/mh/movie/core/mvp/ui/adapter/c;

.field g:Lcom/mh/movie/core/mvp/ui/adapter/player/PlayerTVPartAdapter;

.field h:Lcom/mh/movie/core/mvp/ui/widget/player/TvPartView$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 42
    invoke-direct {p0, p1, v0}, Lcom/mh/movie/core/mvp/ui/widget/player/TvPartView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 46
    invoke-direct {p0, p1, p2, v0}, Lcom/mh/movie/core/mvp/ui/widget/player/TvPartView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 50
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, -0x1

    .line 31
    iput p1, p0, Lcom/mh/movie/core/mvp/ui/widget/player/TvPartView;->e:I

    .line 51
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/widget/player/TvPartView;->a()V

    .line 52
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/widget/player/TvPartView;->b()V

    return-void
.end method

.method private a()V
    .locals 3

    const/4 v0, -0x1

    .line 56
    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/widget/player/TvPartView;->setBackgroundColor(I)V

    .line 57
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/player/TvPartView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/mh/movie/core/R$layout;->widget_widow_tv_part:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/player/TvPartView;->a:Landroid/view/View;

    .line 58
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/player/TvPartView;->a:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/widget/player/TvPartView;->addView(Landroid/view/View;)V

    .line 59
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/player/TvPartView;->a:Landroid/view/View;

    sget v1, Lcom/mh/movie/core/R$id;->tv_tv_part_count:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/player/TvPartView;->d:Landroid/widget/TextView;

    .line 60
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/player/TvPartView;->a:Landroid/view/View;

    sget v1, Lcom/mh/movie/core/R$id;->recycler_tv_page:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/player/TvPartView;->b:Landroid/support/v7/widget/RecyclerView;

    .line 61
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/player/TvPartView;->a:Landroid/view/View;

    sget v1, Lcom/mh/movie/core/R$id;->recycler_tv_part:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/player/TvPartView;->c:Landroid/support/v7/widget/RecyclerView;

    return-void
.end method

.method private b()V
    .locals 4

    .line 67
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/player/TvPartView;->b:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/player/TvPartView;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v3}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 68
    new-instance v0, Lcom/mh/movie/core/mvp/ui/widget/player/TvPartView$1;

    invoke-direct {v0, p0}, Lcom/mh/movie/core/mvp/ui/widget/player/TvPartView$1;-><init>(Lcom/mh/movie/core/mvp/ui/widget/player/TvPartView;)V

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/player/TvPartView;->f:Lcom/mh/movie/core/mvp/ui/adapter/c;

    .line 98
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/player/TvPartView;->b:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/player/TvPartView;->f:Lcom/mh/movie/core/mvp/ui/adapter/c;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 102
    new-instance v0, Lcom/mh/movie/core/mvp/ui/adapter/player/PlayerTVPartAdapter;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/mh/movie/core/mvp/ui/adapter/player/PlayerTVPartAdapter;-><init>(I)V

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/player/TvPartView;->g:Lcom/mh/movie/core/mvp/ui/adapter/player/PlayerTVPartAdapter;

    .line 103
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/player/TvPartView;->c:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/player/TvPartView;->g:Lcom/mh/movie/core/mvp/ui/adapter/player/PlayerTVPartAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 106
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/player/TvPartView;->g:Lcom/mh/movie/core/mvp/ui/adapter/player/PlayerTVPartAdapter;

    new-instance v1, Lcom/mh/movie/core/mvp/ui/widget/player/b;

    invoke-direct {v1, p0}, Lcom/mh/movie/core/mvp/ui/widget/player/b;-><init>(Lcom/mh/movie/core/mvp/ui/widget/player/TvPartView;)V

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/ui/adapter/player/PlayerTVPartAdapter;->setOnItemChoiceListener(Lcom/mh/movie/core/mvp/ui/adapter/player/PlayerTVPartAdapter$a;)V

    .line 113
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/player/TvPartView;->a:Landroid/view/View;

    sget v1, Lcom/mh/movie/core/R$id;->iv_part_close:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/mh/movie/core/mvp/ui/widget/player/c;

    invoke-direct {v1, p0}, Lcom/mh/movie/core/mvp/ui/widget/player/c;-><init>(Lcom/mh/movie/core/mvp/ui/widget/player/TvPartView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public a(II)V
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/player/TvPartView;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p2}, Landroid/support/v7/widget/RecyclerView;->scrollToPosition(I)V

    .line 153
    iget-object p2, p0, Lcom/mh/movie/core/mvp/ui/widget/player/TvPartView;->g:Lcom/mh/movie/core/mvp/ui/adapter/player/PlayerTVPartAdapter;

    invoke-virtual {p2, p1}, Lcom/mh/movie/core/mvp/ui/adapter/player/PlayerTVPartAdapter;->c(I)V

    return-void
.end method

.method final synthetic a(ILcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;)V
    .locals 3

    .line 107
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/player/TvPartView;->h:Lcom/mh/movie/core/mvp/ui/widget/player/TvPartView$a;

    if-eqz p1, :cond_0

    .line 108
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/player/TvPartView;->h:Lcom/mh/movie/core/mvp/ui/widget/player/TvPartView$a;

    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;->getId()I

    move-result v0

    iget v1, p0, Lcom/mh/movie/core/mvp/ui/widget/player/TvPartView;->e:I

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Lcom/mh/movie/core/mvp/ui/widget/player/TvPartView$a;->a(Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;IIZ)V

    :cond_0
    const/16 p1, 0x8

    .line 110
    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/ui/widget/player/TvPartView;->setVisibility(I)V

    return-void
.end method

.method final synthetic a(Landroid/view/View;)V
    .locals 0

    const/16 p1, 0x8

    .line 114
    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/ui/widget/player/TvPartView;->setVisibility(I)V

    return-void
.end method

.method public a(Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;Ljava/lang/String;)V
    .locals 5

    .line 125
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/player/TvPartView;->d:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 127
    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;->getVideoPageList()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p2, :cond_2

    const/4 p2, 0x0

    .line 128
    :goto_0
    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;->getVideoPageList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge p2, v2, :cond_1

    .line 129
    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;->getVideoPageList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoPageListBean;

    invoke-virtual {v2}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoPageListBean;->getIsShow()I

    move-result v2

    if-ne v2, v1, :cond_0

    .line 130
    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;->getVideoPageList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoPageListBean;

    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoPageListBean;->getCurrentPage()I

    move-result p2

    sub-int/2addr p2, v1

    iput p2, p0, Lcom/mh/movie/core/mvp/ui/widget/player/TvPartView;->e:I

    goto :goto_1

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 134
    :cond_1
    :goto_1
    iget-object p2, p0, Lcom/mh/movie/core/mvp/ui/widget/player/TvPartView;->b:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p2, v0}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 135
    iget-object p2, p0, Lcom/mh/movie/core/mvp/ui/widget/player/TvPartView;->f:Lcom/mh/movie/core/mvp/ui/adapter/c;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;->getVideoPageList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/mh/movie/core/mvp/ui/adapter/c;->a(Ljava/util/List;)V

    .line 136
    iget-object p2, p0, Lcom/mh/movie/core/mvp/ui/widget/player/TvPartView;->f:Lcom/mh/movie/core/mvp/ui/adapter/c;

    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/ui/adapter/c;->notifyDataSetChanged()V

    .line 137
    iget-object p2, p0, Lcom/mh/movie/core/mvp/ui/widget/player/TvPartView;->b:Landroid/support/v7/widget/RecyclerView;

    iget v2, p0, Lcom/mh/movie/core/mvp/ui/widget/player/TvPartView;->e:I

    invoke-virtual {p2, v2}, Landroid/support/v7/widget/RecyclerView;->scrollToPosition(I)V

    goto :goto_2

    .line 139
    :cond_2
    iget-object p2, p0, Lcom/mh/movie/core/mvp/ui/widget/player/TvPartView;->b:Landroid/support/v7/widget/RecyclerView;

    const/16 v2, 0x8

    invoke-virtual {p2, v2}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 141
    :goto_2
    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;->getType()I

    move-result p2

    const/4 v2, 0x4

    if-ne p2, v2, :cond_3

    .line 142
    iget-object p2, p0, Lcom/mh/movie/core/mvp/ui/widget/player/TvPartView;->c:Landroid/support/v7/widget/RecyclerView;

    new-instance v2, Lcom/mh/movie/core/mvp/ui/adapter/my/a;

    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/player/TvPartView;->getContext()Landroid/content/Context;

    move-result-object v3

    const/high16 v4, 0x41100000    # 9.0f

    invoke-static {v3, v4}, Lcom/jess/arms/c/e;->a(Landroid/content/Context;F)F

    move-result v3

    float-to-int v3, v3

    invoke-direct {v2, v3, v0, v1}, Lcom/mh/movie/core/mvp/ui/adapter/my/a;-><init>(IZZ)V

    invoke-virtual {p2, v2}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 143
    iget-object p2, p0, Lcom/mh/movie/core/mvp/ui/widget/player/TvPartView;->c:Landroid/support/v7/widget/RecyclerView;

    new-instance v0, Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/player/TvPartView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p2, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    goto :goto_3

    .line 145
    :cond_3
    iget-object p2, p0, Lcom/mh/movie/core/mvp/ui/widget/player/TvPartView;->c:Landroid/support/v7/widget/RecyclerView;

    new-instance v0, Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/player/TvPartView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p2, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 147
    :goto_3
    iget-object p2, p0, Lcom/mh/movie/core/mvp/ui/widget/player/TvPartView;->g:Lcom/mh/movie/core/mvp/ui/adapter/player/PlayerTVPartAdapter;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;->getType()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/mh/movie/core/mvp/ui/adapter/player/PlayerTVPartAdapter;->a(I)V

    .line 148
    iget-object p2, p0, Lcom/mh/movie/core/mvp/ui/widget/player/TvPartView;->g:Lcom/mh/movie/core/mvp/ui/adapter/player/PlayerTVPartAdapter;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;->getVideoList()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/mh/movie/core/mvp/ui/adapter/player/PlayerTVPartAdapter;->a(Ljava/util/List;)V

    return-void
.end method

.method public setDataLists(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;",
            ">;)V"
        }
    .end annotation

    .line 121
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/player/TvPartView;->g:Lcom/mh/movie/core/mvp/ui/adapter/player/PlayerTVPartAdapter;

    invoke-virtual {v0, p1}, Lcom/mh/movie/core/mvp/ui/adapter/player/PlayerTVPartAdapter;->a(Ljava/util/List;)V

    return-void
.end method

.method public setOnViewClickListener(Lcom/mh/movie/core/mvp/ui/widget/player/TvPartView$a;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/player/TvPartView;->h:Lcom/mh/movie/core/mvp/ui/widget/player/TvPartView$a;

    return-void
.end method
