.class public Lcom/mh/movie/core/mvp/ui/adapter/EpisodeAdapter;
.super Lcom/mh/movie/core/mvp/ui/adapter/d;
.source "EpisodeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mh/movie/core/mvp/ui/adapter/EpisodeAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mh/movie/core/mvp/ui/adapter/d<",
        "Lcom/mh/movie/core/mvp/model/entity/DownloadTV;",
        ">;"
    }
.end annotation


# instance fields
.field private c:Landroid/content/Context;

.field private d:J

.field private f:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/adapter/d;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/mh/movie/core/mvp/ui/adapter/EpisodeAdapter;)Landroid/content/Context;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/mh/movie/core/mvp/ui/adapter/EpisodeAdapter;->c:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic b(Lcom/mh/movie/core/mvp/ui/adapter/EpisodeAdapter;)J
    .locals 2

    .line 22
    iget-wide v0, p0, Lcom/mh/movie/core/mvp/ui/adapter/EpisodeAdapter;->d:J

    return-wide v0
.end method


# virtual methods
.method public a(I)V
    .locals 0

    .line 33
    iput p1, p0, Lcom/mh/movie/core/mvp/ui/adapter/EpisodeAdapter;->f:I

    return-void
.end method

.method public a(J)V
    .locals 0

    .line 29
    iput-wide p1, p0, Lcom/mh/movie/core/mvp/ui/adapter/EpisodeAdapter;->d:J

    return-void
.end method

.method public a(JJI)V
    .locals 4

    const/4 v0, 0x0

    .line 82
    :goto_0
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/adapter/EpisodeAdapter;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 83
    iget-wide v1, p0, Lcom/mh/movie/core/mvp/ui/adapter/EpisodeAdapter;->d:J

    cmp-long v3, v1, p1

    if-nez v3, :cond_0

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/adapter/EpisodeAdapter;->e:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mh/movie/core/mvp/model/entity/DownloadTV;

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/model/entity/DownloadTV;->getVideoId()J

    move-result-wide v1

    cmp-long v3, v1, p3

    if-nez v3, :cond_0

    .line 84
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/adapter/EpisodeAdapter;->e:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mh/movie/core/mvp/model/entity/DownloadTV;

    invoke-virtual {p1, p5}, Lcom/mh/movie/core/mvp/model/entity/DownloadTV;->setWatchSize(I)V

    .line 85
    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/adapter/EpisodeAdapter;->notifyItemChanged(I)V

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 3
    .param p1    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 46
    invoke-super {p0, p1, p2}, Lcom/mh/movie/core/mvp/ui/adapter/d;->onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V

    .line 48
    check-cast p1, Lcom/mh/movie/core/mvp/ui/adapter/EpisodeAdapter$ViewHolder;

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u7b2c"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/adapter/EpisodeAdapter;->e:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mh/movie/core/mvp/model/entity/DownloadTV;

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/model/entity/DownloadTV;->getSortNum()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\u96c6"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 51
    iget v1, p0, Lcom/mh/movie/core/mvp/ui/adapter/EpisodeAdapter;->f:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    .line 52
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/adapter/EpisodeAdapter;->e:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/model/entity/DownloadTV;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/DownloadTV;->getPeriod()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u7b2c"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/adapter/EpisodeAdapter;->e:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mh/movie/core/mvp/model/entity/DownloadTV;

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/model/entity/DownloadTV;->getPeriod()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\u671f"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 55
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u7b2c"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/adapter/EpisodeAdapter;->e:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mh/movie/core/mvp/model/entity/DownloadTV;

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/model/entity/DownloadTV;->getSortNum()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\u671f"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 58
    :cond_1
    :goto_0
    iget-object v1, p1, Lcom/mh/movie/core/mvp/ui/adapter/EpisodeAdapter$ViewHolder;->tvNum:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v0, "\u672a\u89c2\u770b"

    .line 61
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/adapter/EpisodeAdapter;->e:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mh/movie/core/mvp/model/entity/DownloadTV;

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/model/entity/DownloadTV;->getWatchSize()I

    move-result v1

    if-lez v1, :cond_3

    .line 62
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/adapter/EpisodeAdapter;->e:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/model/entity/DownloadTV;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/DownloadTV;->getWatchSizePercent()F

    move-result v0

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float v0, v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    const/16 v1, 0x64

    if-lt v0, v1, :cond_2

    const/16 v0, 0x64

    .line 64
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5df2\u89c2\u770b\u81f3"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "%"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 66
    :cond_3
    iget-object v1, p1, Lcom/mh/movie/core/mvp/ui/adapter/EpisodeAdapter$ViewHolder;->tvState:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    iget-object p1, p1, Lcom/mh/movie/core/mvp/ui/adapter/EpisodeAdapter$ViewHolder;->llTvItem:Landroid/widget/LinearLayout;

    new-instance v0, Lcom/mh/movie/core/mvp/ui/adapter/EpisodeAdapter$1;

    invoke-direct {v0, p0, p2}, Lcom/mh/movie/core/mvp/ui/adapter/EpisodeAdapter$1;-><init>(Lcom/mh/movie/core/mvp/ui/adapter/EpisodeAdapter;I)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

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

    .line 39
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    iput-object p2, p0, Lcom/mh/movie/core/mvp/ui/adapter/EpisodeAdapter;->c:Landroid/content/Context;

    .line 40
    iget-object p2, p0, Lcom/mh/movie/core/mvp/ui/adapter/EpisodeAdapter;->c:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/mh/movie/core/R$layout;->episode_item:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 41
    new-instance p2, Lcom/mh/movie/core/mvp/ui/adapter/EpisodeAdapter$ViewHolder;

    invoke-direct {p2, p1}, Lcom/mh/movie/core/mvp/ui/adapter/EpisodeAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method
