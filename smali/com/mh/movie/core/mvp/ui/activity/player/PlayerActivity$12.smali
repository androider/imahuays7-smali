.class Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity$12;
.super Lcom/shuyu/gsyvideoplayer/c/b;
.source "PlayerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->H()V
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

    .line 1808
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity$12;->a:Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;

    invoke-direct {p0}, Lcom/shuyu/gsyvideoplayer/c/b;-><init>()V

    return-void
.end method


# virtual methods
.method final synthetic a()V
    .locals 1

    .line 1894
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity$12;->a:Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->f()V

    return-void
.end method

.method public varargs a(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 5

    .line 1811
    invoke-super {p0, p1, p2}, Lcom/shuyu/gsyvideoplayer/c/b;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1813
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity$12;->a:Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;

    iget-object p1, p1, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->mhVideoPlayer:Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity$12;->a:Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;

    invoke-static {p1}, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->Q(Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1814
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity$12;->a:Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;

    iget-object p1, p1, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->mhVideoPlayer:Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView;->onVideoPause()V

    .line 1816
    :cond_0
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity$12;->a:Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;

    invoke-static {p1}, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->R(Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1817
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity$12;->a:Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;

    iget-object p1, p1, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->mhVideoPlayer:Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView;

    iget-object p2, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity$12;->a:Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;

    invoke-static {p2}, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->R(Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView;->e(Ljava/lang/String;)V

    .line 1818
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity$12;->a:Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->a(Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 1820
    :cond_1
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity$12;->a:Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;

    invoke-static {p1}, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->S(Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;)Lcom/jess/arms/mvp/b;

    move-result-object p1

    check-cast p1, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->i()I

    move-result p1

    const/4 p2, -0x1

    const/4 v0, 0x1

    if-ne p1, p2, :cond_2

    .line 1821
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity$12;->a:Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;

    iget-object p1, p1, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->mhVideoPlayer:Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView;

    invoke-virtual {p1, v0}, Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView;->d(Z)V

    goto :goto_0

    .line 1823
    :cond_2
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity$12;->a:Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;

    invoke-static {p1}, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->T(Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;)Lcom/jess/arms/mvp/b;

    move-result-object p1

    check-cast p1, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->a(Z)I

    move-result p1

    .line 1824
    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity$12;->a:Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;

    invoke-static {v2}, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->U(Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-le v2, p1, :cond_5

    .line 1825
    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity$12;->a:Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;

    invoke-static {v2}, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->U(Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;)I

    move-result v2

    if-gez v2, :cond_4

    if-lez p1, :cond_3

    .line 1827
    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity$12;->a:Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;

    iget-object v2, v2, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->mhVideoPlayer:Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView;

    invoke-virtual {v2}, Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView;->getCurrentPlayer()Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    move-result-object v2

    mul-int/lit16 p1, p1, 0x3e8

    int-to-long v3, p1

    invoke-virtual {v2, v3, v4}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->seekTo(J)V

    .line 1829
    :cond_3
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity$12;->a:Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;

    iget-object p1, p1, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->mhVideoPlayer:Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView;

    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity$12;->a:Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;

    invoke-static {v2}, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->U(Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;)I

    move-result v2

    mul-int/lit8 v2, v2, -0x1

    invoke-virtual {p1, v2}, Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView;->a(I)V

    .line 1830
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity$12;->a:Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;

    invoke-static {p1, v1}, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->a(Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;I)I

    goto :goto_0

    .line 1831
    :cond_4
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity$12;->a:Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;

    invoke-static {p1}, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->U(Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;)I

    move-result p1

    if-lez p1, :cond_6

    .line 1832
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity$12;->a:Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;

    iget-object p1, p1, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->mhVideoPlayer:Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView;->getCurrentPlayer()Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    move-result-object p1

    iget-object p2, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity$12;->a:Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;

    invoke-static {p2}, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->U(Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;)I

    move-result p2

    mul-int/lit16 p2, p2, 0x3e8

    int-to-long v1, p2

    invoke-virtual {p1, v1, v2}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->seekTo(J)V

    goto :goto_0

    :cond_5
    if-lez p1, :cond_6

    .line 1835
    iget-object p2, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity$12;->a:Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;

    iget-object p2, p2, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->mhVideoPlayer:Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView;

    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView;->getCurrentPlayer()Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    move-result-object p2

    mul-int/lit16 p1, p1, 0x3e8

    int-to-long v1, p1

    invoke-virtual {p2, v1, v2}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->seekTo(J)V

    .line 1838
    :cond_6
    :goto_0
    sget-boolean p1, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->o:Z

    if-eqz p1, :cond_7

    return-void

    .line 1842
    :cond_7
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity$12;->a:Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->A()V

    .line 1843
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity$12;->a:Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;

    invoke-static {p1}, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->V(Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;)Lcom/jess/arms/mvp/b;

    move-result-object p1

    check-cast p1, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->m()V

    .line 1844
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity$12;->a:Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;

    invoke-static {p1}, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->W(Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;)Lcom/jess/arms/mvp/b;

    move-result-object p1

    check-cast p1, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->t()V

    .line 1848
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity$12;->a:Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;

    invoke-static {p1}, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->X(Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;)Z

    move-result p1

    if-nez p1, :cond_8

    .line 1849
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity$12;->a:Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->l()V

    .line 1851
    :cond_8
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity$12;->a:Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;

    invoke-static {p1, v0}, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->a(Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;Z)Z

    .line 1852
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity$12;->a:Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;

    iget-object p2, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity$12;->a:Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;

    invoke-static {p2}, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->Y(Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;)Lcom/jess/arms/mvp/b;

    move-result-object p2

    check-cast p2, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;

    invoke-virtual {p2, v0}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->a(Z)I

    move-result p2

    invoke-static {p1, p2}, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->b(Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;I)I

    .line 1853
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity$12;->a:Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;

    iget-object p1, p1, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->mhVideoPlayer:Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView;

    iget-object p2, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity$12;->a:Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;

    invoke-static {p2}, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->j(Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView;->setVideoEndTime(I)V

    .line 1854
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity$12;->a:Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;

    iget-object p1, p1, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->mhVideoPlayer:Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView;

    iget-object p2, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity$12;->a:Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;

    invoke-static {p2}, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->Z(Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;)Lcom/jess/arms/mvp/b;

    move-result-object p2

    check-cast p2, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;

    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->f()Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;

    move-result-object p2

    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;->getType()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView;->setVideoType(I)V

    return-void
.end method

.method public varargs a([Ljava/lang/Object;)V
    .locals 0

    .line 1922
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity$12;->a:Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->u()V

    return-void
.end method

.method public varargs b(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 1859
    invoke-super {p0, p1, p2}, Lcom/shuyu/gsyvideoplayer/c/b;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1860
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "***** onEnterFullscreen **** "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    aget-object v0, p2, v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/shuyu/gsyvideoplayer/utils/Debuger;->printfError(Ljava/lang/String;)V

    .line 1861
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "***** onEnterFullscreen **** "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    aget-object p2, p2, v0

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/shuyu/gsyvideoplayer/utils/Debuger;->printfError(Ljava/lang/String;)V

    return-void
.end method

.method public varargs c(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .line 1866
    invoke-super {p0, p1, p2}, Lcom/shuyu/gsyvideoplayer/c/b;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1869
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity$12;->a:Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;

    iget-object p1, p1, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->mhVideoPlayer:Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView;->getCurrentState()I

    move-result p1

    const/4 p2, 0x7

    if-ne p1, p2, :cond_0

    return-void

    .line 1872
    :cond_0
    sget-boolean p1, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->o:Z

    if-nez p1, :cond_1

    .line 1873
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity$12;->a:Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;

    invoke-static {p1}, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->aa(Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;)Lcom/jess/arms/mvp/b;

    move-result-object p1

    check-cast p1, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->b(Z)V

    goto :goto_0

    .line 1876
    :cond_1
    invoke-static {}, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->a()Lcom/mh/movie/core/mvp/ui/widget/cache/g;

    move-result-object p1

    iget-object p2, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity$12;->a:Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;

    iget-object p2, p2, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->mhVideoPlayer:Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView;

    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView;->getDuration()I

    move-result p2

    div-int/lit16 p2, p2, 0x3e8

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity$12;->a:Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->D(Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;)I

    move-result v0

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity$12;->a:Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;

    invoke-static {v1}, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->E(Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;)I

    move-result v1

    invoke-virtual {p1, p2, v0, v1}, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->a(III)V

    .line 1877
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity$12;->a:Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;

    invoke-static {p1}, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->F(Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;)V

    :goto_0
    return-void
.end method

.method public varargs d(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    .line 1883
    invoke-super {p0, p1, p2}, Lcom/shuyu/gsyvideoplayer/c/b;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public varargs e(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .line 1888
    invoke-super {p0, p1, p2}, Lcom/shuyu/gsyvideoplayer/c/b;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1889
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "***** onQuitFullscreen **** "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    aget-object v0, p2, v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/shuyu/gsyvideoplayer/utils/Debuger;->printfError(Ljava/lang/String;)V

    .line 1890
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "***** onQuitFullscreen **** "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    aget-object p2, p2, v0

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/shuyu/gsyvideoplayer/utils/Debuger;->printfError(Ljava/lang/String;)V

    .line 1892
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity$12;->a:Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;

    invoke-static {p1}, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->c(Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;)Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1893
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity$12;->a:Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;

    invoke-static {p1}, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->c(Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;)Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;

    move-result-object p1

    invoke-virtual {p1}, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->backToProtVideo()I

    .line 1894
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance p2, Lcom/mh/movie/core/mvp/ui/activity/player/w;

    invoke-direct {p2, p0}, Lcom/mh/movie/core/mvp/ui/activity/player/w;-><init>(Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity$12;)V

    const-wide/16 v0, 0x64

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public varargs f(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 1900
    invoke-super {p0, p1, p2}, Lcom/shuyu/gsyvideoplayer/c/b;->f(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1901
    sget-boolean p1, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->o:Z

    if-nez p1, :cond_1

    .line 1902
    new-instance p1, Lcom/mh/movie/core/mvp/model/db/WatchCauseEvent;

    invoke-direct {p1}, Lcom/mh/movie/core/mvp/model/db/WatchCauseEvent;-><init>()V

    const-string p2, "watch"

    .line 1903
    invoke-virtual {p1, p2}, Lcom/mh/movie/core/mvp/model/db/WatchAnalysisEvent;->setType(Ljava/lang/String;)V

    const-string p2, "failWatch"

    .line 1904
    invoke-virtual {p1, p2}, Lcom/mh/movie/core/mvp/model/db/WatchAnalysisEvent;->setSecondaryType(Ljava/lang/String;)V

    .line 1906
    iget-object p2, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity$12;->a:Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;

    invoke-static {p2}, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->ab(Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;)Lcom/jess/arms/mvp/b;

    move-result-object p2

    check-cast p2, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;

    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->h()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/mh/movie/core/mvp/model/db/WatchAnalysisEvent;->setVideoId(I)V

    .line 1907
    iget-object p2, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity$12;->a:Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;

    invoke-static {p2}, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->ac(Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;)Lcom/jess/arms/mvp/b;

    move-result-object p2

    check-cast p2, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity$12;->a:Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;

    invoke-virtual {p2, v0}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->d(Landroid/app/Activity;)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/mh/movie/core/mvp/model/db/WatchAnalysisEvent;->setVideoInfoId(I)V

    .line 1908
    iget-object p2, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity$12;->a:Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;

    invoke-static {p2}, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->ad(Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;)Lcom/jess/arms/mvp/b;

    move-result-object p2

    check-cast p2, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;

    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->f()Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;

    move-result-object p2

    if-nez p2, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity$12;->a:Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->ae(Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;)I

    move-result v0

    :goto_0
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity$12;->a:Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->af(Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;)Lcom/jess/arms/mvp/b;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->f()Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;->getType()I

    move-result v0

    goto :goto_0

    :goto_1
    invoke-virtual {p1, p2}, Lcom/mh/movie/core/mvp/model/db/WatchAnalysisEvent;->setVideoType(Ljava/lang/String;)V

    .line 1910
    invoke-static {p1}, Lcom/mh/movie/core/mvp/ui/utils/b/a;->b(Lcom/mh/movie/core/mvp/model/db/BaseAnalysisEvent;)V

    :cond_1
    return-void
.end method

.method public varargs g(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    .line 1916
    invoke-super {p0, p1, p2}, Lcom/shuyu/gsyvideoplayer/c/b;->g(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1917
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity$12;->a:Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->u()V

    return-void
.end method
