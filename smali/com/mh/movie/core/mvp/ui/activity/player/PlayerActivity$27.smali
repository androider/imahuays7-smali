.class Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity$27;
.super Ljava/lang/Object;
.source "PlayerActivity.java"

# interfaces
.implements Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer$a;


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

    .line 974
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity$27;->a:Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 2

    .line 977
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity$27;->a:Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->H(Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;)Lcom/jess/arms/mvp/b;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity$27;->a:Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;

    iget-object v1, v1, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->mhVideoPlayer:Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView;

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView;->getCurrentPlayer()Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->getCurrentPositionWhenPlaying()I

    move-result v1

    div-int/lit16 v1, v1, 0x3e8

    invoke-virtual {v0, p1, v1}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->a(Ljava/lang/String;I)V

    return-void
.end method
