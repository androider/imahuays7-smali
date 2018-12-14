.class public Lcom/mh/movie/core/mvp/ui/adapter/my/MyAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "MyAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mh/movie/core/mvp/ui/adapter/my/MyAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Lcom/mh/movie/core/mvp/ui/adapter/my/MyAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mh/movie/core/mvp/model/entity/response/HistoryAndCollectResponse;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/adapter/my/MyAdapter;->b:Ljava/util/List;

    return-void
.end method

.method static synthetic a(Lcom/mh/movie/core/mvp/ui/adapter/my/MyAdapter;)Landroid/content/Context;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/mh/movie/core/mvp/ui/adapter/my/MyAdapter;->a:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic b(Lcom/mh/movie/core/mvp/ui/adapter/my/MyAdapter;)Ljava/util/List;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/mh/movie/core/mvp/ui/adapter/my/MyAdapter;->b:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;I)Lcom/mh/movie/core/mvp/ui/adapter/my/MyAdapter$ViewHolder;
    .locals 2
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 50
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    iput-object p2, p0, Lcom/mh/movie/core/mvp/ui/adapter/my/MyAdapter;->a:Landroid/content/Context;

    .line 51
    iget-object p2, p0, Lcom/mh/movie/core/mvp/ui/adapter/my/MyAdapter;->a:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/mh/movie/core/R$layout;->my_adapter_item:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 52
    new-instance p2, Lcom/mh/movie/core/mvp/ui/adapter/my/MyAdapter$ViewHolder;

    invoke-direct {p2, p1}, Lcom/mh/movie/core/mvp/ui/adapter/my/MyAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public a(Lcom/mh/movie/core/mvp/ui/adapter/my/MyAdapter$ViewHolder;I)V
    .locals 3
    .param p1    # Lcom/mh/movie/core/mvp/ui/adapter/my/MyAdapter$ViewHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, ""

    .line 58
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/adapter/my/MyAdapter;->b:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mh/movie/core/mvp/model/entity/response/HistoryAndCollectResponse;

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/model/entity/response/HistoryAndCollectResponse;->getType()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    .line 59
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/adapter/my/MyAdapter;->b:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/model/entity/response/HistoryAndCollectResponse;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/response/HistoryAndCollectResponse;->getType()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 60
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/adapter/my/MyAdapter;->b:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/model/entity/response/HistoryAndCollectResponse;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/response/HistoryAndCollectResponse;->getPeriod()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u7b2c"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/adapter/my/MyAdapter;->b:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mh/movie/core/mvp/model/entity/response/HistoryAndCollectResponse;

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/model/entity/response/HistoryAndCollectResponse;->getPeriod()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\u671f"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 63
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u7b2c"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/adapter/my/MyAdapter;->b:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mh/movie/core/mvp/model/entity/response/HistoryAndCollectResponse;

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/model/entity/response/HistoryAndCollectResponse;->getSortNum()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\u671f"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 66
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u7b2c"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/adapter/my/MyAdapter;->b:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mh/movie/core/mvp/model/entity/response/HistoryAndCollectResponse;

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/model/entity/response/HistoryAndCollectResponse;->getSortNum()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\u96c6"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 69
    :cond_2
    :goto_0
    iget-object v1, p1, Lcom/mh/movie/core/mvp/ui/adapter/my/MyAdapter$ViewHolder;->tvSort:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    iget-object v0, p1, Lcom/mh/movie/core/mvp/ui/adapter/my/MyAdapter$ViewHolder;->tvTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/adapter/my/MyAdapter;->b:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mh/movie/core/mvp/model/entity/response/HistoryAndCollectResponse;

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/model/entity/response/HistoryAndCollectResponse;->getVideoTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/adapter/my/MyAdapter;->b:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/model/entity/response/HistoryAndCollectResponse;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/response/HistoryAndCollectResponse;->getPlayTime()I

    move-result v0

    mul-int/lit8 v0, v0, 0x64

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/adapter/my/MyAdapter;->b:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mh/movie/core/mvp/model/entity/response/HistoryAndCollectResponse;

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/model/entity/response/HistoryAndCollectResponse;->getVideoDuration()I

    move-result v1

    div-int/2addr v0, v1

    if-gtz v0, :cond_3

    const/4 v0, 0x1

    .line 76
    :cond_3
    iget-object v1, p1, Lcom/mh/movie/core/mvp/ui/adapter/my/MyAdapter$ViewHolder;->tvTime:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "%"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/adapter/my/MyAdapter;->b:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/model/entity/response/HistoryAndCollectResponse;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/response/HistoryAndCollectResponse;->getVideoPreviewUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string v1, ""

    .line 79
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 80
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/adapter/my/MyAdapter;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/mh/movie/core/mvp/ui/adapter/my/MyAdapter$ViewHolder;->ivPoster:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 83
    :cond_4
    iget-object p1, p1, Lcom/mh/movie/core/mvp/ui/adapter/my/MyAdapter$ViewHolder;->llMyItem:Landroid/widget/LinearLayout;

    new-instance v0, Lcom/mh/movie/core/mvp/ui/adapter/my/MyAdapter$1;

    invoke-direct {v0, p0, p2}, Lcom/mh/movie/core/mvp/ui/adapter/my/MyAdapter$1;-><init>(Lcom/mh/movie/core/mvp/ui/adapter/my/MyAdapter;I)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mh/movie/core/mvp/model/entity/response/HistoryAndCollectResponse;",
            ">;)V"
        }
    .end annotation

    .line 42
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/adapter/my/MyAdapter;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 43
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/adapter/my/MyAdapter;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 44
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/adapter/my/MyAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/adapter/my/MyAdapter;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .param p1    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 31
    check-cast p1, Lcom/mh/movie/core/mvp/ui/adapter/my/MyAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/mh/movie/core/mvp/ui/adapter/my/MyAdapter;->a(Lcom/mh/movie/core/mvp/ui/adapter/my/MyAdapter$ViewHolder;I)V

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

    .line 31
    invoke-virtual {p0, p1, p2}, Lcom/mh/movie/core/mvp/ui/adapter/my/MyAdapter;->a(Landroid/view/ViewGroup;I)Lcom/mh/movie/core/mvp/ui/adapter/my/MyAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method
