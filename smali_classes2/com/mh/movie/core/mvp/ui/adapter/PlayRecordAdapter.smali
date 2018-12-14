.class public Lcom/mh/movie/core/mvp/ui/adapter/PlayRecordAdapter;
.super Lcom/mh/movie/core/mvp/ui/adapter/d;
.source "PlayRecordAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mh/movie/core/mvp/ui/adapter/PlayRecordAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mh/movie/core/mvp/ui/adapter/d<",
        "Lcom/mh/movie/core/mvp/model/entity/response/HistoryAndCollectResponse;",
        ">;"
    }
.end annotation


# instance fields
.field private c:Landroid/content/Context;

.field private d:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/adapter/d;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    .line 34
    iput p1, p0, Lcom/mh/movie/core/mvp/ui/adapter/PlayRecordAdapter;->d:I

    return-void
.end method

.method public a(Lcom/mh/movie/core/mvp/model/entity/response/HistoryAndCollectResponse;I)V
    .locals 4

    .line 71
    iget-boolean v0, p0, Lcom/mh/movie/core/mvp/ui/adapter/PlayRecordAdapter;->b:Z

    if-eqz v0, :cond_0

    .line 72
    invoke-virtual {p0, p1, p2}, Lcom/mh/movie/core/mvp/ui/adapter/PlayRecordAdapter;->a(Ljava/lang/Object;I)V

    goto :goto_0

    .line 74
    :cond_0
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/adapter/PlayRecordAdapter;->d()I

    move-result p2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p2, v0, :cond_1

    .line 75
    iget-object p2, p0, Lcom/mh/movie/core/mvp/ui/adapter/PlayRecordAdapter;->c:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/HistoryAndCollectResponse;->getVideoInfoId()J

    move-result-wide v2

    long-to-int v0, v2

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/HistoryAndCollectResponse;->getVideoId()J

    move-result-wide v2

    long-to-int p1, v2

    sget v2, Lcom/mh/movie/core/mvp/model/db/WatchFromEvent;->FROM_HISTORY:I

    invoke-static {p2, v1, v0, p1, v2}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->a(Landroid/content/Context;IIII)V

    goto :goto_0

    .line 76
    :cond_1
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/adapter/PlayRecordAdapter;->d()I

    move-result p2

    const/4 v0, 0x2

    if-ne p2, v0, :cond_2

    .line 77
    iget-object p2, p0, Lcom/mh/movie/core/mvp/ui/adapter/PlayRecordAdapter;->c:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/HistoryAndCollectResponse;->getVideoInfoId()J

    move-result-wide v2

    long-to-int p1, v2

    sget v0, Lcom/mh/movie/core/mvp/model/db/WatchFromEvent;->FROM_COLLECT:I

    invoke-static {p2, v1, p1, v0}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->a(Landroid/content/Context;III)V

    :cond_2
    :goto_0
    return-void
.end method

.method public d()I
    .locals 1

    .line 30
    iget v0, p0, Lcom/mh/movie/core/mvp/ui/adapter/PlayRecordAdapter;->d:I

    return v0
.end method

.method public getItemCount()I
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/adapter/PlayRecordAdapter;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 3
    .param p1    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 47
    invoke-super {p0, p1, p2}, Lcom/mh/movie/core/mvp/ui/adapter/d;->onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V

    .line 48
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/adapter/PlayRecordAdapter;->e:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/model/entity/response/HistoryAndCollectResponse;

    .line 50
    check-cast p1, Lcom/mh/movie/core/mvp/ui/adapter/PlayRecordAdapter$ViewHolder;

    .line 51
    iget-object v1, p1, Lcom/mh/movie/core/mvp/ui/adapter/PlayRecordAdapter$ViewHolder;->tvTime:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/adapter/PlayRecordAdapter;->d()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/mh/movie/core/mvp/model/entity/response/HistoryAndCollectResponse;->getDurationStr(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    iget-object v1, p1, Lcom/mh/movie/core/mvp/ui/adapter/PlayRecordAdapter$ViewHolder;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/adapter/PlayRecordAdapter;->d()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/mh/movie/core/mvp/model/entity/response/HistoryAndCollectResponse;->getTitleWithType(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    iget-object v1, p1, Lcom/mh/movie/core/mvp/ui/adapter/PlayRecordAdapter$ViewHolder;->tvSortNum:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/adapter/PlayRecordAdapter;->d()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/mh/movie/core/mvp/model/entity/response/HistoryAndCollectResponse;->getSortNumString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    iget-object v1, p1, Lcom/mh/movie/core/mvp/ui/adapter/PlayRecordAdapter$ViewHolder;->tvWatchSize:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/adapter/PlayRecordAdapter;->d()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/mh/movie/core/mvp/model/entity/response/HistoryAndCollectResponse;->getWatchSize(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/response/HistoryAndCollectResponse;->getVideoPreviewUrl()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, ""

    .line 58
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 59
    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/adapter/PlayRecordAdapter;->c:Landroid/content/Context;

    invoke-static {v2}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/mh/movie/core/mvp/ui/adapter/PlayRecordAdapter$ViewHolder;->ivPoster:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 62
    :cond_0
    iget-object p1, p1, Lcom/mh/movie/core/mvp/ui/adapter/PlayRecordAdapter$ViewHolder;->rlRecordItem:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/mh/movie/core/mvp/ui/adapter/PlayRecordAdapter$1;

    invoke-direct {v1, p0, v0, p2}, Lcom/mh/movie/core/mvp/ui/adapter/PlayRecordAdapter$1;-><init>(Lcom/mh/movie/core/mvp/ui/adapter/PlayRecordAdapter;Lcom/mh/movie/core/mvp/model/entity/response/HistoryAndCollectResponse;I)V

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

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

    .line 40
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    iput-object p2, p0, Lcom/mh/movie/core/mvp/ui/adapter/PlayRecordAdapter;->c:Landroid/content/Context;

    .line 41
    iget-object p2, p0, Lcom/mh/movie/core/mvp/ui/adapter/PlayRecordAdapter;->c:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/mh/movie/core/R$layout;->history_record_item:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 42
    new-instance p2, Lcom/mh/movie/core/mvp/ui/adapter/PlayRecordAdapter$ViewHolder;

    invoke-direct {p2, p1}, Lcom/mh/movie/core/mvp/ui/adapter/PlayRecordAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method
