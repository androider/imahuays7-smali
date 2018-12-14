.class Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer$7;
.super Ljava/lang/Object;
.source "DanmakuVideoPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;->a(Ljava/util/List;)V
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

    .line 531
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer$7;->a:Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 535
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer$7;->a:Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;->d(Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 536
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer$7;->a:Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;

    iget-object v0, v0, Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;->a:Lmaster/flame/danmaku/a/f;

    invoke-interface {v0}, Lmaster/flame/danmaku/a/f;->f()V

    :cond_0
    return-void
.end method
