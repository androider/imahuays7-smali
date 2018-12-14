.class public Lcom/mh/movie/core/mvp/ui/adapter/CompletedAdapter;
.super Lcom/mh/movie/core/mvp/ui/adapter/d;
.source "CompletedAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mh/movie/core/mvp/ui/adapter/CompletedAdapter$PlayTvHolder;,
        Lcom/mh/movie/core/mvp/ui/adapter/CompletedAdapter$TvHolder;,
        Lcom/mh/movie/core/mvp/ui/adapter/CompletedAdapter$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mh/movie/core/mvp/ui/adapter/d<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private c:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/adapter/d;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/mh/movie/core/mvp/ui/adapter/CompletedAdapter;)Landroid/content/Context;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/mh/movie/core/mvp/ui/adapter/CompletedAdapter;->c:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public a(JJI)V
    .locals 4

    const/4 v0, 0x0

    .line 127
    :goto_0
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/adapter/CompletedAdapter;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 128
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/adapter/CompletedAdapter;->e:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/mh/movie/core/mvp/model/entity/DownloadData;

    if-eqz v1, :cond_0

    .line 129
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/adapter/CompletedAdapter;->e:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mh/movie/core/mvp/model/entity/DownloadData;

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->getVideoInfoId()J

    move-result-wide v1

    cmp-long v3, v1, p1

    if-nez v3, :cond_0

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/adapter/CompletedAdapter;->e:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mh/movie/core/mvp/model/entity/DownloadData;

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->getVideoId()J

    move-result-wide v1

    cmp-long v3, v1, p3

    if-nez v3, :cond_0

    .line 130
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/adapter/CompletedAdapter;->e:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mh/movie/core/mvp/model/entity/DownloadData;

    invoke-virtual {p1, p5}, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->setWatchSize(I)V

    .line 131
    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/adapter/CompletedAdapter;->notifyItemChanged(I)V

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/adapter/CompletedAdapter;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/mh/movie/core/mvp/model/entity/DownloadTVData;

    if-eqz v0, :cond_0

    .line 42
    sget-object p1, Lcom/mh/movie/core/mvp/ui/adapter/CompletedAdapter$a;->a:Lcom/mh/movie/core/mvp/ui/adapter/CompletedAdapter$a;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/ui/adapter/CompletedAdapter$a;->ordinal()I

    move-result p1

    return p1

    .line 43
    :cond_0
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/adapter/CompletedAdapter;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Lcom/mh/movie/core/mvp/model/entity/DownloadData;

    if-eqz p1, :cond_1

    .line 44
    sget-object p1, Lcom/mh/movie/core/mvp/ui/adapter/CompletedAdapter$a;->b:Lcom/mh/movie/core/mvp/ui/adapter/CompletedAdapter$a;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/ui/adapter/CompletedAdapter$a;->ordinal()I

    move-result p1

    return p1

    .line 46
    :cond_1
    sget-object p1, Lcom/mh/movie/core/mvp/ui/adapter/CompletedAdapter$a;->b:Lcom/mh/movie/core/mvp/ui/adapter/CompletedAdapter$a;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/ui/adapter/CompletedAdapter$a;->ordinal()I

    move-result p1

    return p1
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 5
    .param p1    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 69
    invoke-super {p0, p1, p2}, Lcom/mh/movie/core/mvp/ui/adapter/d;->onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V

    .line 71
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/adapter/CompletedAdapter;->e:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/mh/movie/core/mvp/model/entity/DownloadData;

    if-eqz v0, :cond_2

    .line 72
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/adapter/CompletedAdapter;->e:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/model/entity/DownloadData;

    .line 73
    move-object v1, p1

    check-cast v1, Lcom/mh/movie/core/mvp/ui/adapter/CompletedAdapter$TvHolder;

    .line 75
    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->getVideoPreviewUrl()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v3, ""

    .line 76
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 77
    iget-object v3, p0, Lcom/mh/movie/core/mvp/ui/adapter/CompletedAdapter;->c:Landroid/content/Context;

    invoke-static {v3}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v2

    iget-object v3, v1, Lcom/mh/movie/core/mvp/ui/adapter/CompletedAdapter$TvHolder;->ivPoster:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 80
    :cond_0
    iget-object v2, v1, Lcom/mh/movie/core/mvp/ui/adapter/CompletedAdapter$TvHolder;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->getVideoTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v2, "\u672a\u89c2\u770b"

    .line 82
    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->getWatchSize()I

    move-result v3

    if-lez v3, :cond_1

    .line 83
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u5df2\u89c2\u770b "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->getWatchSizePercent()F

    move-result v3

    const/high16 v4, 0x42c80000    # 100.0f

    mul-float v3, v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 85
    :cond_1
    iget-object v3, v1, Lcom/mh/movie/core/mvp/ui/adapter/CompletedAdapter$TvHolder;->tvProportion:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    iget-object v1, v1, Lcom/mh/movie/core/mvp/ui/adapter/CompletedAdapter$TvHolder;->tvLength:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->getTotalSize()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/mh/movie/core/mvp/ui/utils/CommonTools;->Byte2KByte(J)F

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, "M"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 89
    :cond_2
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/adapter/CompletedAdapter;->e:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/mh/movie/core/mvp/model/entity/DownloadTVData;

    if-eqz v0, :cond_4

    .line 91
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/adapter/CompletedAdapter;->e:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/model/entity/DownloadTVData;

    .line 93
    move-object v1, p1

    check-cast v1, Lcom/mh/movie/core/mvp/ui/adapter/CompletedAdapter$PlayTvHolder;

    .line 95
    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/DownloadTVData;->getVideoPreviewUrl()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    const-string v3, ""

    .line 96
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 97
    iget-object v3, p0, Lcom/mh/movie/core/mvp/ui/adapter/CompletedAdapter;->c:Landroid/content/Context;

    invoke-static {v3}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v2

    iget-object v3, v1, Lcom/mh/movie/core/mvp/ui/adapter/CompletedAdapter$PlayTvHolder;->ivPoster:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 100
    :cond_3
    iget-object v2, v1, Lcom/mh/movie/core/mvp/ui/adapter/CompletedAdapter$PlayTvHolder;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/DownloadTVData;->getVideoTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    iget-object v1, v1, Lcom/mh/movie/core/mvp/ui/adapter/CompletedAdapter$PlayTvHolder;->tvNum:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/DownloadTVData;->getTvList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    :cond_4
    :goto_0
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/mh/movie/core/mvp/ui/adapter/CompletedAdapter$1;

    invoke-direct {v1, p0, p2, p1}, Lcom/mh/movie/core/mvp/ui/adapter/CompletedAdapter$1;-><init>(Lcom/mh/movie/core/mvp/ui/adapter/CompletedAdapter;ILandroid/support/v7/widget/RecyclerView$ViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

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

    .line 54
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/adapter/CompletedAdapter;->c:Landroid/content/Context;

    .line 56
    sget-object v0, Lcom/mh/movie/core/mvp/ui/adapter/CompletedAdapter$a;->a:Lcom/mh/movie/core/mvp/ui/adapter/CompletedAdapter$a;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/adapter/CompletedAdapter$a;->ordinal()I

    move-result v0

    const/4 v1, 0x0

    if-ne p2, v0, :cond_0

    .line 57
    iget-object p2, p0, Lcom/mh/movie/core/mvp/ui/adapter/CompletedAdapter;->c:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/mh/movie/core/R$layout;->completed_playtv_item:I

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 58
    new-instance p2, Lcom/mh/movie/core/mvp/ui/adapter/CompletedAdapter$PlayTvHolder;

    invoke-direct {p2, p1}, Lcom/mh/movie/core/mvp/ui/adapter/CompletedAdapter$PlayTvHolder;-><init>(Landroid/view/View;)V

    return-object p2

    .line 60
    :cond_0
    sget-object v0, Lcom/mh/movie/core/mvp/ui/adapter/CompletedAdapter$a;->b:Lcom/mh/movie/core/mvp/ui/adapter/CompletedAdapter$a;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/adapter/CompletedAdapter$a;->ordinal()I

    move-result v0

    if-ne p2, v0, :cond_1

    .line 61
    iget-object p2, p0, Lcom/mh/movie/core/mvp/ui/adapter/CompletedAdapter;->c:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/mh/movie/core/R$layout;->completed_item:I

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 62
    new-instance p2, Lcom/mh/movie/core/mvp/ui/adapter/CompletedAdapter$TvHolder;

    invoke-direct {p2, p1}, Lcom/mh/movie/core/mvp/ui/adapter/CompletedAdapter$TvHolder;-><init>(Landroid/view/View;)V

    return-object p2

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method
