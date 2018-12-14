.class Lcom/mh/movie/core/mvp/ui/adapter/EpisodeAdapter$1;
.super Ljava/lang/Object;
.source "EpisodeAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/ui/adapter/EpisodeAdapter;->onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/mh/movie/core/mvp/ui/adapter/EpisodeAdapter;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/ui/adapter/EpisodeAdapter;I)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/adapter/EpisodeAdapter$1;->b:Lcom/mh/movie/core/mvp/ui/adapter/EpisodeAdapter;

    iput p2, p0, Lcom/mh/movie/core/mvp/ui/adapter/EpisodeAdapter$1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    .line 71
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/adapter/EpisodeAdapter$1;->b:Lcom/mh/movie/core/mvp/ui/adapter/EpisodeAdapter;

    iget-boolean p1, p1, Lcom/mh/movie/core/mvp/ui/adapter/EpisodeAdapter;->b:Z

    if-eqz p1, :cond_0

    .line 72
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/adapter/EpisodeAdapter$1;->b:Lcom/mh/movie/core/mvp/ui/adapter/EpisodeAdapter;

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/adapter/EpisodeAdapter$1;->b:Lcom/mh/movie/core/mvp/ui/adapter/EpisodeAdapter;

    iget-object v0, v0, Lcom/mh/movie/core/mvp/ui/adapter/EpisodeAdapter;->e:Ljava/util/List;

    iget v1, p0, Lcom/mh/movie/core/mvp/ui/adapter/EpisodeAdapter$1;->a:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/mh/movie/core/mvp/ui/adapter/EpisodeAdapter$1;->a:I

    invoke-virtual {p1, v0, v1}, Lcom/mh/movie/core/mvp/ui/adapter/EpisodeAdapter;->a(Ljava/lang/Object;I)V

    goto :goto_0

    .line 74
    :cond_0
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/adapter/EpisodeAdapter$1;->b:Lcom/mh/movie/core/mvp/ui/adapter/EpisodeAdapter;

    iget-object p1, p1, Lcom/mh/movie/core/mvp/ui/adapter/EpisodeAdapter;->e:Ljava/util/List;

    iget v0, p0, Lcom/mh/movie/core/mvp/ui/adapter/EpisodeAdapter$1;->a:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mh/movie/core/mvp/model/entity/DownloadTV;

    .line 75
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/adapter/EpisodeAdapter$1;->b:Lcom/mh/movie/core/mvp/ui/adapter/EpisodeAdapter;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/adapter/EpisodeAdapter;->a(Lcom/mh/movie/core/mvp/ui/adapter/EpisodeAdapter;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/DownloadTV;->getLocalUrl()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/adapter/EpisodeAdapter$1;->b:Lcom/mh/movie/core/mvp/ui/adapter/EpisodeAdapter;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/adapter/EpisodeAdapter;->b(Lcom/mh/movie/core/mvp/ui/adapter/EpisodeAdapter;)J

    move-result-wide v3

    long-to-int v3, v3

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/DownloadTV;->getVideoId()J

    move-result-wide v4

    long-to-int v4, v4

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/DownloadTV;->getWatchSize()I

    move-result v5

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/DownloadTV;->getVideoDuration()I

    move-result v6

    invoke-static/range {v1 .. v6}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->a(Landroid/content/Context;Ljava/lang/String;IIII)V

    :goto_0
    return-void
.end method
