.class Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer$6;
.super Ljava/lang/Object;
.source "DanmakuVideoPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;)V
    .locals 0

    .line 495
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer$6;->a:Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 498
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer$6;->a:Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;

    iget-boolean v0, v0, Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;->j:Z

    if-eqz v0, :cond_0

    .line 499
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer$6;->a:Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;->getDanmakuView()Lmaster/flame/danmaku/a/f;

    move-result-object v0

    invoke-interface {v0}, Lmaster/flame/danmaku/a/f;->isShown()Z

    move-result v0

    if-nez v0, :cond_1

    .line 500
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer$6;->a:Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;->getDanmakuView()Lmaster/flame/danmaku/a/f;

    move-result-object v0

    invoke-interface {v0}, Lmaster/flame/danmaku/a/f;->i()V

    goto :goto_0

    .line 502
    :cond_0
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer$6;->a:Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;->getDanmakuView()Lmaster/flame/danmaku/a/f;

    move-result-object v0

    invoke-interface {v0}, Lmaster/flame/danmaku/a/f;->isShown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 503
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer$6;->a:Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;->getDanmakuView()Lmaster/flame/danmaku/a/f;

    move-result-object v0

    invoke-interface {v0}, Lmaster/flame/danmaku/a/f;->j()V

    :cond_1
    :goto_0
    return-void
.end method
