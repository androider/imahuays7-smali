.class public Lcom/mh/movie/core/mvp/ui/widget/MyTitleRecyclerDown;
.super Landroid/widget/LinearLayout;
.source "MyTitleRecyclerDown.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mh/movie/core/mvp/ui/widget/MyTitleRecyclerDown$a;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/view/View;

.field private c:Landroid/widget/ImageView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/support/v7/widget/RecyclerView;

.field private f:Landroid/widget/LinearLayout;

.field private g:Landroid/widget/LinearLayout;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/widget/LinearLayout;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Z

.field private p:Lcom/mh/movie/core/mvp/ui/adapter/my/MyDownAdapter;

.field private q:Lcom/mh/movie/core/mvp/ui/widget/MyTitleRecyclerDown$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 70
    invoke-direct {p0, p1, v0}, Lcom/mh/movie/core/mvp/ui/widget/MyTitleRecyclerDown;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 74
    invoke-direct {p0, p1, p2, v0}, Lcom/mh/movie/core/mvp/ui/widget/MyTitleRecyclerDown;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 78
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 79
    invoke-direct {p0, p1, p2}, Lcom/mh/movie/core/mvp/ui/widget/MyTitleRecyclerDown;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic a(Lcom/mh/movie/core/mvp/ui/widget/MyTitleRecyclerDown;)Landroid/content/Context;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/mh/movie/core/mvp/ui/widget/MyTitleRecyclerDown;->a:Landroid/content/Context;

    return-object p0
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 84
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/MyTitleRecyclerDown;->a:Landroid/content/Context;

    .line 86
    sget-object v0, Lcom/mh/movie/core/R$styleable;->MyTItleRecycler:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 87
    sget v0, Lcom/mh/movie/core/R$styleable;->MyTItleRecycler_mr_left_title:I

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/MyTitleRecyclerDown;->m:Ljava/lang/String;

    .line 88
    sget v0, Lcom/mh/movie/core/R$styleable;->MyTItleRecycler_mr_enable_cache:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mh/movie/core/mvp/ui/widget/MyTitleRecyclerDown;->o:Z

    .line 89
    sget v0, Lcom/mh/movie/core/R$styleable;->MyTItleRecycler_mr_right_title:I

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/MyTitleRecyclerDown;->n:Ljava/lang/String;

    .line 90
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 93
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p2, Lcom/mh/movie/core/R$layout;->my_title_recycler:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/MyTitleRecyclerDown;->b:Landroid/view/View;

    .line 94
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/MyTitleRecyclerDown;->b:Landroid/view/View;

    sget p2, Lcom/mh/movie/core/R$id;->tv_title:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/MyTitleRecyclerDown;->d:Landroid/widget/TextView;

    .line 95
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/MyTitleRecyclerDown;->b:Landroid/view/View;

    sget p2, Lcom/mh/movie/core/R$id;->ll_top_bar:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/MyTitleRecyclerDown;->l:Landroid/widget/LinearLayout;

    .line 96
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/MyTitleRecyclerDown;->b:Landroid/view/View;

    sget p2, Lcom/mh/movie/core/R$id;->rv_list:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/RecyclerView;

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/MyTitleRecyclerDown;->e:Landroid/support/v7/widget/RecyclerView;

    .line 97
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/MyTitleRecyclerDown;->b:Landroid/view/View;

    sget p2, Lcom/mh/movie/core/R$id;->ll_list:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/MyTitleRecyclerDown;->f:Landroid/widget/LinearLayout;

    .line 98
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/MyTitleRecyclerDown;->b:Landroid/view/View;

    sget p2, Lcom/mh/movie/core/R$id;->fl_poster:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/MyTitleRecyclerDown;->g:Landroid/widget/LinearLayout;

    .line 99
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/MyTitleRecyclerDown;->b:Landroid/view/View;

    sget p2, Lcom/mh/movie/core/R$id;->tv_count:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/MyTitleRecyclerDown;->h:Landroid/widget/TextView;

    .line 100
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/MyTitleRecyclerDown;->b:Landroid/view/View;

    sget p2, Lcom/mh/movie/core/R$id;->iv_poster:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/MyTitleRecyclerDown;->c:Landroid/widget/ImageView;

    .line 101
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/MyTitleRecyclerDown;->b:Landroid/view/View;

    sget p2, Lcom/mh/movie/core/R$id;->tv_right_title:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/MyTitleRecyclerDown;->k:Landroid/widget/TextView;

    .line 103
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/MyTitleRecyclerDown;->b:Landroid/view/View;

    sget p2, Lcom/mh/movie/core/R$id;->tv_downloading_title:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/MyTitleRecyclerDown;->i:Landroid/widget/TextView;

    .line 104
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/MyTitleRecyclerDown;->b:Landroid/view/View;

    sget p2, Lcom/mh/movie/core/R$id;->tv_state:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/MyTitleRecyclerDown;->j:Landroid/widget/TextView;

    .line 106
    iget-boolean p1, p0, Lcom/mh/movie/core/mvp/ui/widget/MyTitleRecyclerDown;->o:Z

    if-nez p1, :cond_0

    .line 107
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/MyTitleRecyclerDown;->g:Landroid/widget/LinearLayout;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 110
    :cond_0
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/MyTitleRecyclerDown;->d:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/mh/movie/core/mvp/ui/widget/MyTitleRecyclerDown;->m:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/MyTitleRecyclerDown;->k:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/mh/movie/core/mvp/ui/widget/MyTitleRecyclerDown;->n:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 p2, -0x1

    const/4 v0, -0x2

    invoke-direct {p1, p2, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 113
    iget-object p2, p0, Lcom/mh/movie/core/mvp/ui/widget/MyTitleRecyclerDown;->b:Landroid/view/View;

    invoke-virtual {p0, p2, p1}, Lcom/mh/movie/core/mvp/ui/widget/MyTitleRecyclerDown;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 114
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/widget/MyTitleRecyclerDown;->d()V

    .line 116
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/MyTitleRecyclerDown;->a()V

    .line 126
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/MyTitleRecyclerDown;->g:Landroid/widget/LinearLayout;

    new-instance p2, Lcom/mh/movie/core/mvp/ui/widget/MyTitleRecyclerDown$1;

    invoke-direct {p2, p0}, Lcom/mh/movie/core/mvp/ui/widget/MyTitleRecyclerDown$1;-><init>(Lcom/mh/movie/core/mvp/ui/widget/MyTitleRecyclerDown;)V

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private d()V
    .locals 4

    .line 173
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/MyTitleRecyclerDown;->e:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lcom/mh/movie/core/mvp/ui/widget/MyTitleRecyclerDown$2;

    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/MyTitleRecyclerDown;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v3, v3}, Lcom/mh/movie/core/mvp/ui/widget/MyTitleRecyclerDown$2;-><init>(Lcom/mh/movie/core/mvp/ui/widget/MyTitleRecyclerDown;Landroid/content/Context;IZ)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 179
    new-instance v0, Lcom/mh/movie/core/mvp/ui/adapter/my/MyDownAdapter;

    invoke-direct {v0}, Lcom/mh/movie/core/mvp/ui/adapter/my/MyDownAdapter;-><init>()V

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/MyTitleRecyclerDown;->p:Lcom/mh/movie/core/mvp/ui/adapter/my/MyDownAdapter;

    .line 180
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/MyTitleRecyclerDown;->e:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/MyTitleRecyclerDown;->p:Lcom/mh/movie/core/mvp/ui/adapter/my/MyDownAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 183
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/MyTitleRecyclerDown;->e:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lcom/mh/movie/core/mvp/ui/adapter/my/a;

    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/MyTitleRecyclerDown;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x5

    int-to-float v3, v3

    invoke-static {v2, v3}, Lcom/jess/arms/c/e;->a(Landroid/content/Context;F)F

    move-result v2

    float-to-int v2, v2

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/mh/movie/core/mvp/ui/adapter/my/a;-><init>(IZ)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 185
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/widget/MyTitleRecyclerDown;->setData(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .line 143
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/MyTitleRecyclerDown;->c()V

    .line 144
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/MyTitleRecyclerDown;->b()V

    return-void
.end method

.method public a(JJI)V
    .locals 5

    .line 225
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/MyTitleRecyclerDown;->p:Lcom/mh/movie/core/mvp/ui/adapter/my/MyDownAdapter;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/adapter/my/MyDownAdapter;->a()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    .line 226
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 227
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/mh/movie/core/mvp/model/entity/DownloadData;

    if-eqz v2, :cond_0

    .line 228
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mh/movie/core/mvp/model/entity/DownloadData;

    invoke-virtual {v2}, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->getVideoInfoId()J

    move-result-wide v2

    cmp-long v4, v2, p1

    if-nez v4, :cond_0

    .line 229
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mh/movie/core/mvp/model/entity/DownloadData;

    invoke-virtual {v2}, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->getVideoId()J

    move-result-wide v2

    cmp-long v4, v2, p3

    if-nez v4, :cond_0

    .line 230
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mh/movie/core/mvp/model/entity/DownloadData;

    invoke-virtual {v2, p5}, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->setWatchSize(I)V

    .line 231
    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/widget/MyTitleRecyclerDown;->p:Lcom/mh/movie/core/mvp/ui/adapter/my/MyDownAdapter;

    invoke-virtual {v2, v1}, Lcom/mh/movie/core/mvp/ui/adapter/my/MyDownAdapter;->notifyItemChanged(I)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public b()V
    .locals 4

    .line 148
    invoke-static {}, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->a()Lcom/mh/movie/core/mvp/ui/widget/cache/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->y()Lcom/mh/movie/core/mvp/model/entity/DownloadData;

    move-result-object v0

    .line 149
    invoke-static {}, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->a()Lcom/mh/movie/core/mvp/ui/widget/cache/g;

    move-result-object v1

    iget-object v1, v1, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->e:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-nez v0, :cond_0

    return-void

    .line 153
    :cond_0
    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/widget/MyTitleRecyclerDown;->i:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->getVideoTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->getVideoPreviewUrl()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v3, ""

    .line 155
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 156
    iget-object v3, p0, Lcom/mh/movie/core/mvp/ui/widget/MyTitleRecyclerDown;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mh/movie/core/mvp/ui/widget/MyTitleRecyclerDown;->c:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 158
    :cond_1
    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/widget/MyTitleRecyclerDown;->h:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 159
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/MyTitleRecyclerDown;->j:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->getDowloadState()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    const-string v0, "\u6b63\u5728\u7f13\u5b58"

    goto :goto_0

    :cond_2
    const-string v0, "\u6682\u505c\u7f13\u5b58"

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public c()V
    .locals 4

    .line 190
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/MyTitleRecyclerDown;->a:Landroid/content/Context;

    sget-object v1, Lcom/mh/movie/core/mvp/ui/b;->i:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/jess/arms/c/d;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    const/16 v1, 0x8

    if-nez v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/MyTitleRecyclerDown;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void

    .line 197
    :cond_0
    invoke-static {}, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->a()Lcom/mh/movie/core/mvp/ui/widget/cache/g;

    move-result-object v0

    iget-object v0, v0, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    .line 198
    invoke-static {}, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->a()Lcom/mh/movie/core/mvp/ui/widget/cache/g;

    move-result-object v2

    iget-object v2, v2, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->f:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    if-gtz v0, :cond_1

    if-gtz v2, :cond_1

    .line 201
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/MyTitleRecyclerDown;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 203
    :cond_1
    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/widget/MyTitleRecyclerDown;->f:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    if-gtz v0, :cond_2

    .line 205
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/MyTitleRecyclerDown;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 207
    :cond_2
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/MyTitleRecyclerDown;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public getLlTopBar()Landroid/widget/LinearLayout;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/MyTitleRecyclerDown;->l:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public getTvTitle()Landroid/widget/TextView;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/MyTitleRecyclerDown;->d:Landroid/widget/TextView;

    return-object v0
.end method

.method public setData(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 213
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/MyTitleRecyclerDown;->c()V

    .line 215
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0xa

    if-le v0, v1, :cond_0

    .line 216
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/MyTitleRecyclerDown;->p:Lcom/mh/movie/core/mvp/ui/adapter/my/MyDownAdapter;

    const/4 v2, 0x0

    invoke-interface {p1, v2, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/mh/movie/core/mvp/ui/adapter/my/MyDownAdapter;->a(Ljava/util/List;)V

    goto :goto_0

    .line 218
    :cond_0
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/MyTitleRecyclerDown;->p:Lcom/mh/movie/core/mvp/ui/adapter/my/MyDownAdapter;

    invoke-virtual {v0, p1}, Lcom/mh/movie/core/mvp/ui/adapter/my/MyDownAdapter;->a(Ljava/util/List;)V

    .line 221
    :goto_0
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/MyTitleRecyclerDown;->b()V

    return-void
.end method

.method public setOnTitleClickListener(Lcom/mh/movie/core/mvp/ui/widget/MyTitleRecyclerDown$a;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/MyTitleRecyclerDown;->q:Lcom/mh/movie/core/mvp/ui/widget/MyTitleRecyclerDown$a;

    return-void
.end method

.method public setRightTitle(Ljava/lang/String;)V
    .locals 1

    .line 136
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/MyTitleRecyclerDown;->n:Ljava/lang/String;

    .line 137
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/MyTitleRecyclerDown;->k:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/MyTitleRecyclerDown;->k:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
