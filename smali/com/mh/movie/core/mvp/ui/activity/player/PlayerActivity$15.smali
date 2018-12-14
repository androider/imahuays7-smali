.class Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity$15;
.super Ljava/lang/Object;
.source "PlayerActivity.java"

# interfaces
.implements Lcom/mh/movie/core/mvp/ui/widget/MovieCardView$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->I()V
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

    .line 1981
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity$15;->a:Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    return-void
.end method

.method public a(II)V
    .locals 3

    .line 1984
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity$15;->a:Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->c(Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;Z)Z

    .line 1985
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity$15;->a:Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;

    iget-object p1, p1, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->mhVideoPlayer:Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView;->getCurrentPlayer()Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->onVideoReset()V

    .line 1986
    sget p1, Lcom/mh/movie/core/mvp/model/db/WatchFromEvent;->FROM_SHOULD_LIKE:I

    sput p1, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->r:I

    .line 1987
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity$15;->a:Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;

    invoke-static {p1}, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->ai(Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;)Lcom/jess/arms/mvp/b;

    move-result-object p1

    check-cast p1, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;

    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {p1, v0, p2, v1, v2}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->a(IIILjava/lang/String;)V

    .line 1988
    new-instance p1, Lcom/mh/movie/core/mvp/model/db/ShouldLikeEvent;

    invoke-direct {p1}, Lcom/mh/movie/core/mvp/model/db/ShouldLikeEvent;-><init>()V

    const-string p2, "whatYourFav"

    .line 1989
    invoke-virtual {p1, p2}, Lcom/mh/movie/core/mvp/model/db/ShouldLikeEvent;->setType(Ljava/lang/String;)V

    const-string p2, "clickWhatYourFav"

    .line 1990
    invoke-virtual {p1, p2}, Lcom/mh/movie/core/mvp/model/db/ShouldLikeEvent;->setSecondaryType(Ljava/lang/String;)V

    .line 1991
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity$15;->a:Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->aj(Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;)Lcom/jess/arms/mvp/b;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->f()Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;->getType()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/mh/movie/core/mvp/model/db/ShouldLikeEvent;->setVideoType(Ljava/lang/String;)V

    .line 1992
    invoke-static {p1}, Lcom/mh/movie/core/mvp/ui/utils/b/a;->b(Lcom/mh/movie/core/mvp/model/db/BaseAnalysisEvent;)V

    return-void
.end method

.method public a(Lcom/mh/movie/core/mvp/model/entity/response/HomePageResponse;I)V
    .locals 0

    return-void
.end method
