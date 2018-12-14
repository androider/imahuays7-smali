.class Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity$26;
.super Ljava/lang/Object;
.source "PlayerActivity.java"

# interfaces
.implements Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo$b;


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

    .line 872
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity$26;->a:Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 881
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity$26;->a:Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->p(Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;)Lcom/jess/arms/mvp/b;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->i()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-void

    .line 884
    :cond_0
    sget-boolean v0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->o:Z

    if-nez v0, :cond_1

    .line 885
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity$26;->a:Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;

    iget-object v0, v0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->mhVideoPlayer:Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity$26;->a:Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;

    invoke-static {v1}, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->q(Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;)Lcom/jess/arms/mvp/b;

    move-result-object v1

    check-cast v1, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->k()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView;->d(Ljava/util/List;)V

    :cond_1
    return-void
.end method

.method public a(I)V
    .locals 2

    .line 876
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity$26;->a:Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->o(Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;)Lcom/jess/arms/mvp/b;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;

    sget v1, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->h:I

    invoke-virtual {v0, p1, v1}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->b(II)V

    return-void
.end method

.method public a(ILjava/lang/Integer;)V
    .locals 2

    if-eqz p2, :cond_1

    .line 897
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity$26;->a:Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;

    invoke-static {p1}, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->u(Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;)Landroid/content/Context;

    move-result-object p1

    sget-object v0, Lcom/mh/movie/core/mvp/ui/b;->i:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/jess/arms/c/d;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 898
    const-class p1, Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity;

    invoke-static {p1}, Lcom/jess/arms/c/a;->a(Ljava/lang/Class;)V

    goto :goto_0

    .line 900
    :cond_0
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity$26;->a:Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity$26;->a:Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->v(Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;)Lcom/jess/arms/mvp/b;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->c(I)Lcom/mh/movie/core/mvp/model/db/TableCommodity;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->a(Lcom/mh/movie/core/mvp/model/db/TableCommodity;Ljava/lang/Integer;)V

    goto :goto_0

    .line 903
    :cond_1
    iget-object p2, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity$26;->a:Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;

    iget-object p2, p2, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->A:Lcom/mh/movie/core/mvp/ui/adapter/player/PlayerTVPartAdapter;

    invoke-virtual {p2, p1}, Lcom/mh/movie/core/mvp/ui/adapter/player/PlayerTVPartAdapter;->b(I)V

    .line 904
    iget-object p2, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity$26;->a:Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;

    invoke-static {p2}, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->w(Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;)Lcom/jess/arms/mvp/b;

    move-result-object p2

    check-cast p2, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;

    invoke-virtual {p2, p1}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->a(I)V

    :goto_0
    return-void
.end method

.method public a(Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;I)V
    .locals 2

    .line 910
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity$26;->a:Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->x(Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;)Lcom/jess/arms/mvp/b;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->a(Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;IZ)V

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 920
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity$26;->a:Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;

    invoke-static {p1}, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->A(Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;)Lcom/jess/arms/mvp/b;

    move-result-object p1

    check-cast p1, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->p()V

    return-void
.end method

.method public b()V
    .locals 5

    .line 891
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity$26;->a:Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;

    iget-object v0, v0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->mhVideoPlayer:Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity$26;->a:Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;

    invoke-static {v1}, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->r(Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;)Lcom/jess/arms/mvp/b;

    move-result-object v1

    check-cast v1, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->f()Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;->getVideoPageList()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity$26;->a:Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;

    invoke-static {v2}, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->s(Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;)Lcom/jess/arms/mvp/b;

    move-result-object v2

    check-cast v2, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;

    invoke-virtual {v2}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->f()Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;->getVideoList()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity$26;->a:Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;

    invoke-static {v3}, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->t(Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;)Lcom/jess/arms/mvp/b;

    move-result-object v3

    check-cast v3, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;

    invoke-virtual {v3}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->f()Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;->getType()I

    move-result v3

    iget-object v4, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity$26;->a:Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;

    iget v4, v4, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->y:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView;->a(Ljava/util/List;Ljava/util/List;II)V

    return-void
.end method

.method public c()V
    .locals 3

    .line 915
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity$26;->a:Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;

    iget-object v0, v0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->mhVideoPlayer:Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity$26;->a:Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;

    invoke-static {v1}, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->y(Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;)Lcom/jess/arms/mvp/b;

    move-result-object v1

    check-cast v1, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->f()Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity$26;->a:Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;

    invoke-static {v1}, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->z(Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;)Lcom/jess/arms/mvp/b;

    move-result-object v1

    check-cast v1, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->f()Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;->getFavorited()I

    move-result v1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView;->b(Z)V

    return-void
.end method

.method public d()V
    .locals 2

    .line 946
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity$26;->a:Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->B(Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;)Lcom/jess/arms/mvp/b;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->f()Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;->getVipFlag()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 947
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity$26;->a:Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->C(Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "VIP\u7247\u6e90\u65e0\u6cd5\u5206\u4eab"

    invoke-static {v0, v1}, Lcom/jess/arms/c/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 952
    :cond_0
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity$26;->a:Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->b(Z)V

    return-void
.end method

.method public e()V
    .locals 4

    .line 959
    sget-boolean v0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->o:Z

    if-eqz v0, :cond_0

    .line 960
    invoke-static {}, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->a()Lcom/mh/movie/core/mvp/ui/widget/cache/g;

    move-result-object v0

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity$26;->a:Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;

    iget-object v1, v1, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->mhVideoPlayer:Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView;

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView;->getCurrentPlayer()Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->getCurrentPositionWhenPlaying()I

    move-result v1

    div-int/lit16 v1, v1, 0x3e8

    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity$26;->a:Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;

    invoke-static {v2}, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->D(Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;)I

    move-result v2

    iget-object v3, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity$26;->a:Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;

    invoke-static {v3}, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->E(Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->a(III)V

    .line 961
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity$26;->a:Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->F(Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;)V

    goto :goto_0

    .line 963
    :cond_0
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity$26;->a:Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->G(Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;)Lcom/jess/arms/mvp/b;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->b(Z)V

    :goto_0
    return-void
.end method

.method public f()Z
    .locals 1

    .line 969
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity$26;->a:Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->o()Z

    move-result v0

    return v0
.end method
