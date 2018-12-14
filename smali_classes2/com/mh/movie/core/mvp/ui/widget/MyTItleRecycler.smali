.class public Lcom/mh/movie/core/mvp/ui/widget/MyTItleRecycler;
.super Landroid/widget/LinearLayout;
.source "MyTItleRecycler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mh/movie/core/mvp/ui/widget/MyTItleRecycler$a;
    }
.end annotation


# instance fields
.field private a:Landroid/view/View;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/support/v7/widget/RecyclerView;

.field private d:Landroid/widget/LinearLayout;

.field private e:Landroid/widget/LinearLayout;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/LinearLayout;

.field private h:Ljava/lang/String;

.field private i:Z

.field private j:Lcom/mh/movie/core/mvp/ui/adapter/my/MyAdapter;

.field private k:Lcom/mh/movie/core/mvp/ui/widget/MyTItleRecycler$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 63
    invoke-direct {p0, p1, v0}, Lcom/mh/movie/core/mvp/ui/widget/MyTItleRecycler;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 67
    invoke-direct {p0, p1, p2, v0}, Lcom/mh/movie/core/mvp/ui/widget/MyTItleRecycler;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 71
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 72
    invoke-direct {p0, p1, p2}, Lcom/mh/movie/core/mvp/ui/widget/MyTItleRecycler;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private a()V
    .locals 4

    .line 126
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/MyTItleRecycler;->c:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lcom/mh/movie/core/mvp/ui/widget/MyTItleRecycler$1;

    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/MyTItleRecycler;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v3, v3}, Lcom/mh/movie/core/mvp/ui/widget/MyTItleRecycler$1;-><init>(Lcom/mh/movie/core/mvp/ui/widget/MyTItleRecycler;Landroid/content/Context;IZ)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 132
    new-instance v0, Lcom/mh/movie/core/mvp/ui/adapter/my/MyAdapter;

    invoke-direct {v0}, Lcom/mh/movie/core/mvp/ui/adapter/my/MyAdapter;-><init>()V

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/MyTItleRecycler;->j:Lcom/mh/movie/core/mvp/ui/adapter/my/MyAdapter;

    .line 133
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/MyTItleRecycler;->c:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/MyTItleRecycler;->j:Lcom/mh/movie/core/mvp/ui/adapter/my/MyAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 135
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/MyTItleRecycler;->c:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lcom/mh/movie/core/mvp/ui/adapter/my/a;

    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/MyTItleRecycler;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x5

    int-to-float v3, v3

    invoke-static {v2, v3}, Lcom/jess/arms/c/e;->a(Landroid/content/Context;F)F

    move-result v2

    float-to-int v2, v2

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/mh/movie/core/mvp/ui/adapter/my/a;-><init>(IZ)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 137
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/widget/MyTItleRecycler;->setData(Ljava/util/List;)V

    return-void
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 77
    sget-object v0, Lcom/mh/movie/core/R$styleable;->MyTItleRecycler:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 78
    sget v0, Lcom/mh/movie/core/R$styleable;->MyTItleRecycler_mr_left_title:I

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/MyTItleRecycler;->h:Ljava/lang/String;

    .line 79
    sget v0, Lcom/mh/movie/core/R$styleable;->MyTItleRecycler_mr_enable_cache:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mh/movie/core/mvp/ui/widget/MyTItleRecycler;->i:Z

    .line 81
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 84
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p2, Lcom/mh/movie/core/R$layout;->my_title_recycler:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/MyTItleRecycler;->a:Landroid/view/View;

    .line 85
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/MyTItleRecycler;->a:Landroid/view/View;

    sget p2, Lcom/mh/movie/core/R$id;->ll_top_bar:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/MyTItleRecycler;->g:Landroid/widget/LinearLayout;

    .line 86
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/MyTItleRecycler;->a:Landroid/view/View;

    sget p2, Lcom/mh/movie/core/R$id;->tv_title:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/MyTItleRecycler;->b:Landroid/widget/TextView;

    .line 87
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/MyTItleRecycler;->a:Landroid/view/View;

    sget p2, Lcom/mh/movie/core/R$id;->rv_list:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/RecyclerView;

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/MyTItleRecycler;->c:Landroid/support/v7/widget/RecyclerView;

    .line 88
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/MyTItleRecycler;->a:Landroid/view/View;

    sget p2, Lcom/mh/movie/core/R$id;->ll_list:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/MyTItleRecycler;->d:Landroid/widget/LinearLayout;

    .line 89
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/MyTItleRecycler;->a:Landroid/view/View;

    sget p2, Lcom/mh/movie/core/R$id;->fl_poster:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/MyTItleRecycler;->e:Landroid/widget/LinearLayout;

    .line 90
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/MyTItleRecycler;->a:Landroid/view/View;

    sget p2, Lcom/mh/movie/core/R$id;->tv_count:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/MyTItleRecycler;->f:Landroid/widget/TextView;

    .line 93
    iget-boolean p1, p0, Lcom/mh/movie/core/mvp/ui/widget/MyTItleRecycler;->i:Z

    if-nez p1, :cond_0

    .line 94
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/MyTItleRecycler;->e:Landroid/widget/LinearLayout;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 97
    :cond_0
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/MyTItleRecycler;->b:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/mh/movie/core/mvp/ui/widget/MyTItleRecycler;->h:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 p2, -0x1

    const/4 v0, -0x2

    invoke-direct {p1, p2, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 99
    iget-object p2, p0, Lcom/mh/movie/core/mvp/ui/widget/MyTItleRecycler;->a:Landroid/view/View;

    invoke-virtual {p0, p2, p1}, Lcom/mh/movie/core/mvp/ui/widget/MyTItleRecycler;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 101
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/widget/MyTItleRecycler;->a()V

    return-void
.end method


# virtual methods
.method public getLlTopBar()Landroid/widget/LinearLayout;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/MyTItleRecycler;->g:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public getTvTitle()Landroid/widget/TextView;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/MyTItleRecycler;->b:Landroid/widget/TextView;

    return-object v0
.end method

.method public setData(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mh/movie/core/mvp/model/entity/response/HistoryAndCollectResponse;",
            ">;)V"
        }
    .end annotation

    .line 141
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/MyTItleRecycler;->d:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/MyTItleRecycler;->d:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 147
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/MyTItleRecycler;->j:Lcom/mh/movie/core/mvp/ui/adapter/my/MyAdapter;

    invoke-virtual {v0, p1}, Lcom/mh/movie/core/mvp/ui/adapter/my/MyAdapter;->a(Ljava/util/List;)V

    return-void
.end method

.method public setOnTitleClickListener(Lcom/mh/movie/core/mvp/ui/widget/MyTItleRecycler$a;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/MyTItleRecycler;->k:Lcom/mh/movie/core/mvp/ui/widget/MyTItleRecycler$a;

    return-void
.end method
