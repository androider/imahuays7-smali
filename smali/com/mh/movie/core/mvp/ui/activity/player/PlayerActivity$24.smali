.class Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity$24;
.super Ljava/lang/Object;
.source "PlayerActivity.java"

# interfaces
.implements Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;)V
    .locals 0

    .line 803
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity$24;->a:Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 824
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity$24;->a:Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->e(Ljava/lang/String;)V

    return-void
.end method

.method public a(I)V
    .locals 4

    .line 807
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity$24;->a:Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->i(Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;)Lcom/jess/arms/mvp/b;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 809
    :cond_0
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity$24;->a:Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->j(Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;)I

    move-result v0

    if-lez v0, :cond_1

    .line 811
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity$24;->a:Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->j(Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;)I

    move-result v0

    int-to-double v0, v0

    div-int/lit16 p1, p1, 0x3e8

    int-to-double v2, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    cmpl-double p1, v0, v2

    if-nez p1, :cond_1

    .line 815
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity$24;->a:Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;

    iget-object p1, p1, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->mhVideoPlayer:Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView;

    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView;->setCurrentState(I)V

    .line 816
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity$24;->a:Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;

    iget-object p1, p1, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->mhVideoPlayer:Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView;->onAutoCompletion()V

    :cond_1
    return-void
.end method

.method public b()V
    .locals 2

    .line 829
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity$24;->a:Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;

    const-string v1, "2"

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->e(Ljava/lang/String;)V

    return-void
.end method

.method public b(I)V
    .locals 0

    return-void
.end method

.method public c()V
    .locals 5

    .line 846
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity$24;->a:Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/shuyu/gsyvideoplayer/utils/NetworkUtils;->isAvailable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 847
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity$24;->a:Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->k(Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u65e0\u7f51\u7edc\u8fde\u63a5"

    invoke-static {v0, v1}, Lcom/mh/movie/core/mvp/ui/utils/T;->showShort(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 851
    :goto_0
    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity$24;->a:Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;

    iget-object v2, v2, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->z:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 852
    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity$24;->a:Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;

    iget-object v2, v2, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->z:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;

    invoke-virtual {v2}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;->getId()I

    move-result v2

    iget-object v3, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity$24;->a:Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;

    iget v3, v3, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->y:I

    if-ne v2, v3, :cond_2

    .line 853
    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity$24;->a:Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;

    invoke-static {v2}, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->l(Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;)Lcom/jess/arms/mvp/b;

    move-result-object v2

    check-cast v2, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;

    invoke-virtual {v2}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->i()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 854
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity$24;->a:Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->m(Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;)Lcom/jess/arms/mvp/b;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;

    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity$24;->a:Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;

    iget-object v2, v2, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->z:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->a(Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;)V

    goto :goto_1

    .line 856
    :cond_1
    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity$24;->a:Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;

    invoke-static {v2}, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->n(Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;)Lcom/jess/arms/mvp/b;

    move-result-object v2

    check-cast v2, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;

    iget-object v4, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity$24;->a:Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;

    iget-object v4, v4, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->z:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;

    invoke-virtual {v2, v1, v3, v0}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->a(Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;IZ)V

    :goto_1
    return-void

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method
