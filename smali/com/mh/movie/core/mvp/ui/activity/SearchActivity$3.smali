.class Lcom/mh/movie/core/mvp/ui/activity/SearchActivity$3;
.super Ljava/lang/Object;
.source "SearchActivity.java"

# interfaces
.implements Lcom/mh/movie/core/mvp/ui/adapter/u$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/ui/activity/SearchActivity;->k()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mh/movie/core/mvp/ui/activity/SearchActivity;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/ui/activity/SearchActivity;)V
    .locals 0

    .line 277
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/SearchActivity$3;->a:Lcom/mh/movie/core/mvp/ui/activity/SearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(II)V
    .locals 2

    .line 280
    new-instance v0, Lcom/mh/movie/core/mvp/model/db/WatchAnalysisEvent;

    invoke-direct {v0}, Lcom/mh/movie/core/mvp/model/db/WatchAnalysisEvent;-><init>()V

    const-string v1, "search"

    .line 281
    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/model/db/WatchAnalysisEvent;->setType(Ljava/lang/String;)V

    const-string v1, "exchangeSearch"

    .line 282
    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/model/db/WatchAnalysisEvent;->setSecondaryType(Ljava/lang/String;)V

    .line 283
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ""

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/mh/movie/core/mvp/model/db/WatchAnalysisEvent;->setVideoType(Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 284
    invoke-virtual {v0, p2}, Lcom/mh/movie/core/mvp/model/db/WatchAnalysisEvent;->setVideoId(I)V

    .line 285
    invoke-virtual {v0, p1}, Lcom/mh/movie/core/mvp/model/db/WatchAnalysisEvent;->setVideoInfoId(I)V

    .line 286
    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/utils/b/a;->b(Lcom/mh/movie/core/mvp/model/db/BaseAnalysisEvent;)V

    .line 287
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/SearchActivity$3;->a:Lcom/mh/movie/core/mvp/ui/activity/SearchActivity;

    iget-object v0, v0, Lcom/mh/movie/core/mvp/ui/activity/SearchActivity;->r:Landroid/content/Context;

    sget v1, Lcom/mh/movie/core/mvp/model/db/WatchFromEvent;->FROM_SEARCH:I

    invoke-static {v0, p2, p1, v1}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->a(Landroid/content/Context;III)V

    return-void
.end method
