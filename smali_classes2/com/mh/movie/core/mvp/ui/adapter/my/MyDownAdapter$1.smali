.class Lcom/mh/movie/core/mvp/ui/adapter/my/MyDownAdapter$1;
.super Ljava/lang/Object;
.source "MyDownAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/ui/adapter/my/MyDownAdapter;->onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mh/movie/core/mvp/model/entity/DownloadData;

.field final synthetic b:Lcom/mh/movie/core/mvp/ui/adapter/my/MyDownAdapter;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/ui/adapter/my/MyDownAdapter;Lcom/mh/movie/core/mvp/model/entity/DownloadData;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/adapter/my/MyDownAdapter$1;->b:Lcom/mh/movie/core/mvp/ui/adapter/my/MyDownAdapter;

    iput-object p2, p0, Lcom/mh/movie/core/mvp/ui/adapter/my/MyDownAdapter$1;->a:Lcom/mh/movie/core/mvp/model/entity/DownloadData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .line 101
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/adapter/my/MyDownAdapter$1;->b:Lcom/mh/movie/core/mvp/ui/adapter/my/MyDownAdapter;

    invoke-static {p1}, Lcom/mh/movie/core/mvp/ui/adapter/my/MyDownAdapter;->a(Lcom/mh/movie/core/mvp/ui/adapter/my/MyDownAdapter;)Landroid/content/Context;

    move-result-object v0

    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/adapter/my/MyDownAdapter$1;->a:Lcom/mh/movie/core/mvp/model/entity/DownloadData;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->getLocalUrl()Ljava/lang/String;

    move-result-object v1

    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/adapter/my/MyDownAdapter$1;->a:Lcom/mh/movie/core/mvp/model/entity/DownloadData;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->getVideoInfoId()J

    move-result-wide v2

    long-to-int v2, v2

    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/adapter/my/MyDownAdapter$1;->a:Lcom/mh/movie/core/mvp/model/entity/DownloadData;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->getVideoId()J

    move-result-wide v3

    long-to-int v3, v3

    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/adapter/my/MyDownAdapter$1;->a:Lcom/mh/movie/core/mvp/model/entity/DownloadData;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->getWatchSize()I

    move-result v4

    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/adapter/my/MyDownAdapter$1;->a:Lcom/mh/movie/core/mvp/model/entity/DownloadData;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->getVideoDuration()I

    move-result v5

    invoke-static/range {v0 .. v5}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->a(Landroid/content/Context;Ljava/lang/String;IIII)V

    return-void
.end method
