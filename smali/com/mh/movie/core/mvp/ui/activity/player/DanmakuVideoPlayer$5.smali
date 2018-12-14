.class Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer$5;
.super Ljava/lang/Object;
.source "DanmakuVideoPlayer.java"

# interfaces
.implements Lmaster/flame/danmaku/a/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;->h()V
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

    .line 436
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer$5;->a:Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public a(Lmaster/flame/danmaku/danmaku/model/d;)V
    .locals 0

    return-void
.end method

.method public a(Lmaster/flame/danmaku/danmaku/model/f;)V
    .locals 0

    return-void
.end method

.method public b()V
    .locals 6

    .line 452
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer$5;->a:Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;->getDanmakuView()Lmaster/flame/danmaku/a/f;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 453
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer$5;->a:Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;->getDanmakuView()Lmaster/flame/danmaku/a/f;

    move-result-object v0

    invoke-interface {v0}, Lmaster/flame/danmaku/a/f;->e()V

    .line 454
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer$5;->a:Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;->getDanmakuStartSeekPosition()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 455
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer$5;->a:Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer$5;->a:Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;

    iget-object v4, p0, Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer$5;->a:Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;

    invoke-virtual {v4}, Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;->getDanmakuStartSeekPosition()J

    move-result-wide v4

    invoke-static {v0, v1, v4, v5}, Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;->a(Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;J)V

    .line 456
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer$5;->a:Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;

    invoke-virtual {v0, v2, v3}, Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;->setDanmakuStartSeekPosition(J)V

    .line 458
    :cond_0
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer$5;->a:Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;->e()V

    :cond_1
    return-void
.end method
