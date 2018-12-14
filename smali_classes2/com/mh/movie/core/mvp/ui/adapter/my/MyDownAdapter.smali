.class public Lcom/mh/movie/core/mvp/ui/adapter/my/MyDownAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "MyDownAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mh/movie/core/mvp/ui/adapter/my/MyDownAdapter$TVHolder;,
        Lcom/mh/movie/core/mvp/ui/adapter/my/MyDownAdapter$MoveHolder;,
        Lcom/mh/movie/core/mvp/ui/adapter/my/MyDownAdapter$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/adapter/my/MyDownAdapter;->b:Ljava/util/List;

    return-void
.end method

.method static synthetic a(Lcom/mh/movie/core/mvp/ui/adapter/my/MyDownAdapter;)Landroid/content/Context;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/mh/movie/core/mvp/ui/adapter/my/MyDownAdapter;->a:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 58
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/adapter/my/MyDownAdapter;->b:Ljava/util/List;

    return-object v0
.end method

.method public a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 52
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/adapter/my/MyDownAdapter;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 53
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/adapter/my/MyDownAdapter;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 54
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/adapter/my/MyDownAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/adapter/my/MyDownAdapter;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/adapter/my/MyDownAdapter;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/mh/movie/core/mvp/model/entity/response/HistoryAndCollectResponse;

    if-eqz v0, :cond_0

    .line 43
    sget-object p1, Lcom/mh/movie/core/mvp/ui/adapter/my/MyDownAdapter$a;->a:Lcom/mh/movie/core/mvp/ui/adapter/my/MyDownAdapter$a;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/ui/adapter/my/MyDownAdapter$a;->ordinal()I

    move-result p1

    return p1

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/adapter/my/MyDownAdapter;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Lcom/mh/movie/core/mvp/model/entity/DownloadTVData;

    if-eqz p1, :cond_1

    .line 45
    sget-object p1, Lcom/mh/movie/core/mvp/ui/adapter/my/MyDownAdapter$a;->b:Lcom/mh/movie/core/mvp/ui/adapter/my/MyDownAdapter$a;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/ui/adapter/my/MyDownAdapter$a;->ordinal()I

    move-result p1

    return p1

    .line 47
    :cond_1
    sget-object p1, Lcom/mh/movie/core/mvp/ui/adapter/my/MyDownAdapter$a;->a:Lcom/mh/movie/core/mvp/ui/adapter/my/MyDownAdapter$a;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/ui/adapter/my/MyDownAdapter$a;->ordinal()I

    move-result p1

    return p1
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 3
    .param p1    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 80
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/adapter/my/MyDownAdapter;->b:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/mh/movie/core/mvp/model/entity/DownloadData;

    if-eqz v0, :cond_2

    .line 81
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/adapter/my/MyDownAdapter;->b:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/mh/movie/core/mvp/model/entity/DownloadData;

    .line 82
    check-cast p1, Lcom/mh/movie/core/mvp/ui/adapter/my/MyDownAdapter$MoveHolder;

    .line 84
    iget-object v0, p1, Lcom/mh/movie/core/mvp/ui/adapter/my/MyDownAdapter$MoveHolder;->tvSort:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    iget-object v0, p1, Lcom/mh/movie/core/mvp/ui/adapter/my/MyDownAdapter$MoveHolder;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->getVideoTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->getVideoPreviewUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, ""

    .line 88
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 89
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/adapter/my/MyDownAdapter;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/mh/movie/core/mvp/ui/adapter/my/MyDownAdapter$MoveHolder;->ivPoster:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    :cond_0
    const-string v0, "\u672a\u89c2\u770b"

    .line 93
    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->getWatchSize()I

    move-result v1

    if-lez v1, :cond_1

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u5df2\u89c2\u770b "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->getWatchSizePercent()F

    move-result v1

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float v1, v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 96
    :cond_1
    iget-object v1, p1, Lcom/mh/movie/core/mvp/ui/adapter/my/MyDownAdapter$MoveHolder;->tvTime:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    iget-object p1, p1, Lcom/mh/movie/core/mvp/ui/adapter/my/MyDownAdapter$MoveHolder;->llMyItem:Landroid/widget/LinearLayout;

    new-instance v0, Lcom/mh/movie/core/mvp/ui/adapter/my/MyDownAdapter$1;

    invoke-direct {v0, p0, p2}, Lcom/mh/movie/core/mvp/ui/adapter/my/MyDownAdapter$1;-><init>(Lcom/mh/movie/core/mvp/ui/adapter/my/MyDownAdapter;Lcom/mh/movie/core/mvp/model/entity/DownloadData;)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 104
    :cond_2
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/adapter/my/MyDownAdapter;->b:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/mh/movie/core/mvp/model/entity/DownloadTVData;

    if-eqz v0, :cond_4

    .line 105
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/adapter/my/MyDownAdapter;->b:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/mh/movie/core/mvp/model/entity/DownloadTVData;

    .line 106
    check-cast p1, Lcom/mh/movie/core/mvp/ui/adapter/my/MyDownAdapter$TVHolder;

    .line 108
    iget-object v0, p1, Lcom/mh/movie/core/mvp/ui/adapter/my/MyDownAdapter$TVHolder;->tvSort:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    iget-object v0, p1, Lcom/mh/movie/core/mvp/ui/adapter/my/MyDownAdapter$TVHolder;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/DownloadTVData;->getVideoTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/DownloadTVData;->getVideoPreviewUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v1, ""

    .line 112
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 113
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/adapter/my/MyDownAdapter;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/mh/movie/core/mvp/ui/adapter/my/MyDownAdapter$TVHolder;->ivPoster:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 116
    :cond_3
    iget-object v0, p1, Lcom/mh/movie/core/mvp/ui/adapter/my/MyDownAdapter$TVHolder;->tvNum:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/DownloadTVData;->getTvList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    iget-object p1, p1, Lcom/mh/movie/core/mvp/ui/adapter/my/MyDownAdapter$TVHolder;->llMyItemTv:Landroid/widget/LinearLayout;

    new-instance v0, Lcom/mh/movie/core/mvp/ui/adapter/my/MyDownAdapter$2;

    invoke-direct {v0, p0, p2}, Lcom/mh/movie/core/mvp/ui/adapter/my/MyDownAdapter$2;-><init>(Lcom/mh/movie/core/mvp/ui/adapter/my/MyDownAdapter;Lcom/mh/movie/core/mvp/model/entity/DownloadTVData;)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 2
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 64
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/adapter/my/MyDownAdapter;->a:Landroid/content/Context;

    .line 66
    sget-object v0, Lcom/mh/movie/core/mvp/ui/adapter/my/MyDownAdapter$a;->a:Lcom/mh/movie/core/mvp/ui/adapter/my/MyDownAdapter$a;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/adapter/my/MyDownAdapter$a;->ordinal()I

    move-result v0

    const/4 v1, 0x0

    if-ne p2, v0, :cond_0

    .line 67
    iget-object p2, p0, Lcom/mh/movie/core/mvp/ui/adapter/my/MyDownAdapter;->a:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/mh/movie/core/R$layout;->my_adapter_item:I

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 68
    new-instance p2, Lcom/mh/movie/core/mvp/ui/adapter/my/MyDownAdapter$MoveHolder;

    invoke-direct {p2, p1}, Lcom/mh/movie/core/mvp/ui/adapter/my/MyDownAdapter$MoveHolder;-><init>(Landroid/view/View;)V

    return-object p2

    .line 70
    :cond_0
    sget-object v0, Lcom/mh/movie/core/mvp/ui/adapter/my/MyDownAdapter$a;->b:Lcom/mh/movie/core/mvp/ui/adapter/my/MyDownAdapter$a;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/adapter/my/MyDownAdapter$a;->ordinal()I

    move-result v0

    if-ne p2, v0, :cond_1

    .line 71
    iget-object p2, p0, Lcom/mh/movie/core/mvp/ui/adapter/my/MyDownAdapter;->a:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/mh/movie/core/R$layout;->my_adapter_item_tv:I

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 72
    new-instance p2, Lcom/mh/movie/core/mvp/ui/adapter/my/MyDownAdapter$TVHolder;

    invoke-direct {p2, p1}, Lcom/mh/movie/core/mvp/ui/adapter/my/MyDownAdapter$TVHolder;-><init>(Landroid/view/View;)V

    return-object p2

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method
