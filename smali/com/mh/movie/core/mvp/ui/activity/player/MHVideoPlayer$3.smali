.class Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer$3;
.super Ljava/lang/Object;
.source "MHVideoPlayer.java"

# interfaces
.implements Lcom/mh/movie/core/mvp/ui/activity/player/view/VideoJumpPlayView$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->a(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;)V
    .locals 0

    .line 625
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer$3;->a:Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public a(I)V
    .locals 1

    .line 629
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer$3;->a:Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;

    invoke-virtual {v0, p1}, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->onVideoSeekTo(I)V

    .line 630
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer$3;->a:Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;

    iget-object p1, p1, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->vjpvJumpWatchMovie:Lcom/mh/movie/core/mvp/ui/activity/player/view/VideoJumpPlayView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/mh/movie/core/mvp/ui/activity/player/view/VideoJumpPlayView;->setVisibility(I)V

    return-void
.end method
