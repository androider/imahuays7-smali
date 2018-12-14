.class Lcom/mh/movie/core/mvp/ui/adapter/my/MyAdapter$1;
.super Ljava/lang/Object;
.source "MyAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/ui/adapter/my/MyAdapter;->a(Lcom/mh/movie/core/mvp/ui/adapter/my/MyAdapter$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/mh/movie/core/mvp/ui/adapter/my/MyAdapter;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/ui/adapter/my/MyAdapter;I)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/adapter/my/MyAdapter$1;->b:Lcom/mh/movie/core/mvp/ui/adapter/my/MyAdapter;

    iput p2, p0, Lcom/mh/movie/core/mvp/ui/adapter/my/MyAdapter$1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 86
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/adapter/my/MyAdapter$1;->b:Lcom/mh/movie/core/mvp/ui/adapter/my/MyAdapter;

    invoke-static {p1}, Lcom/mh/movie/core/mvp/ui/adapter/my/MyAdapter;->a(Lcom/mh/movie/core/mvp/ui/adapter/my/MyAdapter;)Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/adapter/my/MyAdapter$1;->b:Lcom/mh/movie/core/mvp/ui/adapter/my/MyAdapter;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/adapter/my/MyAdapter;->b(Lcom/mh/movie/core/mvp/ui/adapter/my/MyAdapter;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/mh/movie/core/mvp/ui/adapter/my/MyAdapter$1;->a:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/model/entity/response/HistoryAndCollectResponse;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/response/HistoryAndCollectResponse;->getVideoInfoId()J

    move-result-wide v0

    long-to-int v0, v0

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/adapter/my/MyAdapter$1;->b:Lcom/mh/movie/core/mvp/ui/adapter/my/MyAdapter;

    invoke-static {v1}, Lcom/mh/movie/core/mvp/ui/adapter/my/MyAdapter;->b(Lcom/mh/movie/core/mvp/ui/adapter/my/MyAdapter;)Ljava/util/List;

    move-result-object v1

    iget v2, p0, Lcom/mh/movie/core/mvp/ui/adapter/my/MyAdapter$1;->a:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mh/movie/core/mvp/model/entity/response/HistoryAndCollectResponse;

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/model/entity/response/HistoryAndCollectResponse;->getVideoId()J

    move-result-wide v1

    long-to-int v1, v1

    sget v2, Lcom/mh/movie/core/mvp/model/db/WatchFromEvent;->FROM_HISTORY:I

    const/4 v3, 0x0

    invoke-static {p1, v3, v0, v1, v2}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->a(Landroid/content/Context;IIII)V

    return-void
.end method
