.class Lcom/mh/movie/core/mvp/ui/activity/TvplayDetailActivity$1;
.super Ljava/lang/Object;
.source "TvplayDetailActivity.java"

# interfaces
.implements Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/ui/activity/TvplayDetailActivity;->a(Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;

.field final synthetic b:Lcom/mh/movie/core/mvp/ui/activity/TvplayDetailActivity;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/ui/activity/TvplayDetailActivity;Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;)V
    .locals 0

    .line 248
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/TvplayDetailActivity$1;->b:Lcom/mh/movie/core/mvp/ui/activity/TvplayDetailActivity;

    iput-object p2, p0, Lcom/mh/movie/core/mvp/ui/activity/TvplayDetailActivity$1;->a:Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 8

    .line 251
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/TvplayDetailActivity$1;->b:Lcom/mh/movie/core/mvp/ui/activity/TvplayDetailActivity;

    iget-object v0, v0, Lcom/mh/movie/core/mvp/ui/activity/TvplayDetailActivity;->m:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/TvplayDetailActivity$1;->b:Lcom/mh/movie/core/mvp/ui/activity/TvplayDetailActivity;

    iget-object v0, v0, Lcom/mh/movie/core/mvp/ui/activity/TvplayDetailActivity;->j:Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/TvplayDetailActivity$1;->b:Lcom/mh/movie/core/mvp/ui/activity/TvplayDetailActivity;

    iget-object v1, v1, Lcom/mh/movie/core/mvp/ui/activity/TvplayDetailActivity;->m:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-virtual {v0, p1}, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->setCacheList(Ljava/util/List;)V

    goto :goto_0

    .line 254
    :cond_0
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/TvplayDetailActivity$1;->a:Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;->getVideoPageList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoPageListBean;

    .line 255
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/TvplayDetailActivity$1;->b:Lcom/mh/movie/core/mvp/ui/activity/TvplayDetailActivity;

    invoke-static {v1}, Lcom/mh/movie/core/mvp/ui/activity/TvplayDetailActivity;->a(Lcom/mh/movie/core/mvp/ui/activity/TvplayDetailActivity;)Lcom/jess/arms/mvp/b;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/mh/movie/core/mvp/presenter/TvplayDetailPresenter;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoPageListBean;->getCurrentPage()I

    move-result v3

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoPageListBean;->getPageSize()I

    move-result v4

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/TvplayDetailActivity$1;->a:Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;->getId()I

    move-result v0

    int-to-long v5, v0

    move v7, p1

    invoke-virtual/range {v2 .. v7}, Lcom/mh/movie/core/mvp/presenter/TvplayDetailPresenter;->a(IIJI)V

    :goto_0
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mh/movie/core/mvp/model/entity/request/DownUrlRequest;",
            ">;)V"
        }
    .end annotation

    .line 266
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/TvplayDetailActivity$1;->b:Lcom/mh/movie/core/mvp/ui/activity/TvplayDetailActivity;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/activity/TvplayDetailActivity;->b(Lcom/mh/movie/core/mvp/ui/activity/TvplayDetailActivity;)Lcom/jess/arms/mvp/b;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/presenter/TvplayDetailPresenter;

    invoke-virtual {v0, p1}, Lcom/mh/movie/core/mvp/presenter/TvplayDetailPresenter;->a(Ljava/util/List;)V

    return-void
.end method
