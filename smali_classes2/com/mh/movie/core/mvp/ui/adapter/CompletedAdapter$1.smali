.class Lcom/mh/movie/core/mvp/ui/adapter/CompletedAdapter$1;
.super Ljava/lang/Object;
.source "CompletedAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/ui/adapter/CompletedAdapter;->onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Landroid/support/v7/widget/RecyclerView$ViewHolder;

.field final synthetic c:Lcom/mh/movie/core/mvp/ui/adapter/CompletedAdapter;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/ui/adapter/CompletedAdapter;ILandroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/adapter/CompletedAdapter$1;->c:Lcom/mh/movie/core/mvp/ui/adapter/CompletedAdapter;

    iput p2, p0, Lcom/mh/movie/core/mvp/ui/adapter/CompletedAdapter$1;->a:I

    iput-object p3, p0, Lcom/mh/movie/core/mvp/ui/adapter/CompletedAdapter$1;->b:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    .line 108
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/adapter/CompletedAdapter$1;->c:Lcom/mh/movie/core/mvp/ui/adapter/CompletedAdapter;

    iget-boolean p1, p1, Lcom/mh/movie/core/mvp/ui/adapter/CompletedAdapter;->b:Z

    if-eqz p1, :cond_0

    .line 109
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/adapter/CompletedAdapter$1;->c:Lcom/mh/movie/core/mvp/ui/adapter/CompletedAdapter;

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/adapter/CompletedAdapter$1;->c:Lcom/mh/movie/core/mvp/ui/adapter/CompletedAdapter;

    iget-object v0, v0, Lcom/mh/movie/core/mvp/ui/adapter/CompletedAdapter;->e:Ljava/util/List;

    iget v1, p0, Lcom/mh/movie/core/mvp/ui/adapter/CompletedAdapter$1;->a:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/mh/movie/core/mvp/ui/adapter/CompletedAdapter$1;->a:I

    invoke-virtual {p1, v0, v1}, Lcom/mh/movie/core/mvp/ui/adapter/CompletedAdapter;->a(Ljava/lang/Object;I)V

    goto :goto_0

    .line 111
    :cond_0
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/adapter/CompletedAdapter$1;->b:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    instance-of p1, p1, Lcom/mh/movie/core/mvp/ui/adapter/CompletedAdapter$PlayTvHolder;

    if-eqz p1, :cond_1

    .line 113
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/adapter/CompletedAdapter$1;->c:Lcom/mh/movie/core/mvp/ui/adapter/CompletedAdapter;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/adapter/CompletedAdapter;->a(Lcom/mh/movie/core/mvp/ui/adapter/CompletedAdapter;)Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/mh/movie/core/mvp/ui/activity/TvplayDetailActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "tv"

    .line 114
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/adapter/CompletedAdapter$1;->c:Lcom/mh/movie/core/mvp/ui/adapter/CompletedAdapter;

    iget-object v1, v1, Lcom/mh/movie/core/mvp/ui/adapter/CompletedAdapter;->e:Ljava/util/List;

    iget v2, p0, Lcom/mh/movie/core/mvp/ui/adapter/CompletedAdapter$1;->a:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mh/movie/core/mvp/model/entity/DownloadTVData;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 115
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/adapter/CompletedAdapter$1;->c:Lcom/mh/movie/core/mvp/ui/adapter/CompletedAdapter;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/adapter/CompletedAdapter;->a(Lcom/mh/movie/core/mvp/ui/adapter/CompletedAdapter;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 117
    :cond_1
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/adapter/CompletedAdapter$1;->b:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    instance-of p1, p1, Lcom/mh/movie/core/mvp/ui/adapter/CompletedAdapter$TvHolder;

    if-eqz p1, :cond_2

    .line 118
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/adapter/CompletedAdapter$1;->c:Lcom/mh/movie/core/mvp/ui/adapter/CompletedAdapter;

    iget-object p1, p1, Lcom/mh/movie/core/mvp/ui/adapter/CompletedAdapter;->e:Ljava/util/List;

    iget v0, p0, Lcom/mh/movie/core/mvp/ui/adapter/CompletedAdapter$1;->a:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mh/movie/core/mvp/model/entity/DownloadData;

    .line 119
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/adapter/CompletedAdapter$1;->c:Lcom/mh/movie/core/mvp/ui/adapter/CompletedAdapter;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/adapter/CompletedAdapter;->a(Lcom/mh/movie/core/mvp/ui/adapter/CompletedAdapter;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->getLocalUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->getVideoInfoId()J

    move-result-wide v3

    long-to-int v3, v3

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->getVideoId()J

    move-result-wide v4

    long-to-int v4, v4

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->getWatchSize()I

    move-result v5

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->getVideoDuration()I

    move-result v6

    invoke-static/range {v1 .. v6}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->a(Landroid/content/Context;Ljava/lang/String;IIII)V

    :cond_2
    :goto_0
    return-void
.end method
