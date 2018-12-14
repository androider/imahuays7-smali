.class Lcom/mh/movie/core/mvp/ui/activity/TvplayDetailActivity$2;
.super Ljava/lang/Object;
.source "TvplayDetailActivity.java"

# interfaces
.implements Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/ui/activity/TvplayDetailActivity;->a(Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mh/movie/core/mvp/ui/activity/TvplayDetailActivity;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/ui/activity/TvplayDetailActivity;)V
    .locals 0

    .line 271
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/TvplayDetailActivity$2;->a:Lcom/mh/movie/core/mvp/ui/activity/TvplayDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 3

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    .line 275
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/TvplayDetailActivity$2;->a:Lcom/mh/movie/core/mvp/ui/activity/TvplayDetailActivity;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/activity/TvplayDetailActivity;->c(Lcom/mh/movie/core/mvp/ui/activity/TvplayDetailActivity;)Lcom/jess/arms/mvp/b;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/presenter/TvplayDetailPresenter;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/presenter/TvplayDetailPresenter;->a(I)Lcom/mh/movie/core/mvp/model/db/TableCommodity;

    move-result-object v0

    .line 276
    iget v1, v0, Lcom/mh/movie/core/mvp/model/db/TableCommodity;->hasFlag:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 277
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/TvplayDetailActivity$2;->a:Lcom/mh/movie/core/mvp/ui/activity/TvplayDetailActivity;

    invoke-virtual {p1, v0}, Lcom/mh/movie/core/mvp/ui/activity/TvplayDetailActivity;->a(Lcom/mh/movie/core/mvp/model/db/TableCommodity;)V

    goto :goto_0

    .line 279
    :cond_0
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/TvplayDetailActivity$2;->a:Lcom/mh/movie/core/mvp/ui/activity/TvplayDetailActivity;

    iget-object v0, v0, Lcom/mh/movie/core/mvp/ui/activity/TvplayDetailActivity;->j:Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;

    if-eqz v0, :cond_2

    .line 280
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/TvplayDetailActivity$2;->a:Lcom/mh/movie/core/mvp/ui/activity/TvplayDetailActivity;

    iget-object v0, v0, Lcom/mh/movie/core/mvp/ui/activity/TvplayDetailActivity;->j:Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;

    invoke-virtual {v0, p1, p2}, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->a(ILjava/lang/String;)V

    goto :goto_0

    .line 284
    :cond_1
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/TvplayDetailActivity$2;->a:Lcom/mh/movie/core/mvp/ui/activity/TvplayDetailActivity;

    iget-object v0, v0, Lcom/mh/movie/core/mvp/ui/activity/TvplayDetailActivity;->j:Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;

    if-eqz v0, :cond_2

    .line 285
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/TvplayDetailActivity$2;->a:Lcom/mh/movie/core/mvp/ui/activity/TvplayDetailActivity;

    iget-object v0, v0, Lcom/mh/movie/core/mvp/ui/activity/TvplayDetailActivity;->j:Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;

    invoke-virtual {v0, p1, p2}, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->a(ILjava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method
