.class Lcom/mh/movie/core/mvp/ui/activity/AllActivity$1;
.super Lcom/mh/movie/core/mvp/ui/adapter/c;
.source "AllActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/ui/activity/AllActivity;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mh/movie/core/mvp/ui/adapter/c<",
        "Lcom/mh/movie/core/mvp/model/entity/AllListBean;",
        "Lcom/mh/movie/core/mvp/ui/holder/a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:[I

.field final synthetic b:Lcom/mh/movie/core/mvp/ui/activity/AllActivity;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/ui/activity/AllActivity;[I)V
    .locals 0

    .line 168
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/AllActivity$1;->b:Lcom/mh/movie/core/mvp/ui/activity/AllActivity;

    iput-object p2, p0, Lcom/mh/movie/core/mvp/ui/activity/AllActivity$1;->a:[I

    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/adapter/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;)Lcom/mh/movie/core/mvp/ui/holder/a;
    .locals 8

    .line 172
    new-instance v7, Lcom/mh/movie/core/mvp/ui/holder/a;

    sget v2, Lcom/mh/movie/core/R$layout;->view_movie_card_content:I

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/AllActivity$1;->b:Lcom/mh/movie/core/mvp/ui/activity/AllActivity;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/activity/AllActivity;->a(Lcom/mh/movie/core/mvp/ui/activity/AllActivity;)I

    move-result v3

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/AllActivity$1;->a:[I

    const/4 v1, 0x0

    aget v4, v0, v1

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/AllActivity$1;->a:[I

    const/4 v1, 0x1

    aget v5, v0, v1

    new-instance v6, Lcom/mh/movie/core/mvp/ui/activity/i;

    invoke-direct {v6, p0}, Lcom/mh/movie/core/mvp/ui/activity/i;-><init>(Lcom/mh/movie/core/mvp/ui/activity/AllActivity$1;)V

    move-object v0, v7

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/mh/movie/core/mvp/ui/holder/a;-><init>(Landroid/view/ViewGroup;IIIILcom/mh/movie/core/mvp/ui/holder/d$a;)V

    return-object v7
.end method

.method final synthetic a(I)V
    .locals 4

    .line 173
    new-instance v0, Lcom/mh/movie/core/mvp/model/db/WatchAnalysisEvent;

    invoke-direct {v0}, Lcom/mh/movie/core/mvp/model/db/WatchAnalysisEvent;-><init>()V

    const-string v1, "filter"

    .line 174
    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/model/db/WatchAnalysisEvent;->setType(Ljava/lang/String;)V

    const-string v1, "exchangeFilter"

    .line 175
    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/model/db/WatchAnalysisEvent;->setSecondaryType(Ljava/lang/String;)V

    .line 176
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/activity/AllActivity$1;->e:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mh/movie/core/mvp/model/entity/AllListBean;

    invoke-virtual {v2}, Lcom/mh/movie/core/mvp/model/entity/AllListBean;->getType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/model/db/WatchAnalysisEvent;->setVideoType(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 177
    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/model/db/WatchAnalysisEvent;->setVideoId(I)V

    .line 178
    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/activity/AllActivity$1;->e:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mh/movie/core/mvp/model/entity/AllListBean;

    invoke-virtual {v2}, Lcom/mh/movie/core/mvp/model/entity/AllListBean;->getId()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/mh/movie/core/mvp/model/db/WatchAnalysisEvent;->setVideoInfoId(I)V

    .line 179
    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/utils/b/a;->b(Lcom/mh/movie/core/mvp/model/db/BaseAnalysisEvent;)V

    .line 180
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/AllActivity$1;->b:Lcom/mh/movie/core/mvp/ui/activity/AllActivity;

    iget-object v0, v0, Lcom/mh/movie/core/mvp/ui/activity/AllActivity;->r:Landroid/content/Context;

    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/activity/AllActivity$1;->e:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mh/movie/core/mvp/model/entity/AllListBean;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/AllListBean;->getId()I

    move-result p1

    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/activity/AllActivity$1;->b:Lcom/mh/movie/core/mvp/ui/activity/AllActivity;

    invoke-static {v2}, Lcom/mh/movie/core/mvp/ui/activity/AllActivity;->b(Lcom/mh/movie/core/mvp/ui/activity/AllActivity;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    sget v2, Lcom/mh/movie/core/mvp/model/db/WatchFromEvent;->FROM_MOVIE_SORT:I

    goto :goto_0

    :cond_0
    sget v2, Lcom/mh/movie/core/mvp/model/db/WatchFromEvent;->FROM_TV_SORT:I

    :goto_0
    invoke-static {v0, v1, p1, v2}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->a(Landroid/content/Context;III)V

    return-void
.end method

.method protected bridge synthetic a(Landroid/support/v7/widget/RecyclerView$ViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 168
    check-cast p1, Lcom/mh/movie/core/mvp/ui/holder/a;

    check-cast p2, Lcom/mh/movie/core/mvp/model/entity/AllListBean;

    invoke-virtual {p0, p1, p2}, Lcom/mh/movie/core/mvp/ui/activity/AllActivity$1;->a(Lcom/mh/movie/core/mvp/ui/holder/a;Lcom/mh/movie/core/mvp/model/entity/AllListBean;)V

    return-void
.end method

.method protected a(Lcom/mh/movie/core/mvp/ui/holder/a;Lcom/mh/movie/core/mvp/model/entity/AllListBean;)V
    .locals 1

    .line 186
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/AllActivity$1;->b:Lcom/mh/movie/core/mvp/ui/activity/AllActivity;

    invoke-static {v0, p1, p2}, Lcom/mh/movie/core/mvp/ui/activity/AllActivity;->a(Lcom/mh/movie/core/mvp/ui/activity/AllActivity;Lcom/mh/movie/core/mvp/ui/holder/a;Lcom/mh/movie/core/mvp/model/entity/AllListBean;)V

    return-void
.end method

.method public synthetic b(Landroid/view/ViewGroup;)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 168
    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/AllActivity$1;->a(Landroid/view/ViewGroup;)Lcom/mh/movie/core/mvp/ui/holder/a;

    move-result-object p1

    return-object p1
.end method
