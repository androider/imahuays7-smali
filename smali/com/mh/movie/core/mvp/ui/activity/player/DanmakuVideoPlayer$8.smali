.class Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer$8;
.super Lmaster/flame/danmaku/danmaku/a/a;
.source "DanmakuVideoPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;->a(Ljava/io/InputStream;)Lmaster/flame/danmaku/danmaku/a/a;
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

    .line 562
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer$8;->a:Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;

    invoke-direct {p0}, Lmaster/flame/danmaku/danmaku/a/a;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()Lmaster/flame/danmaku/danmaku/model/android/e;
    .locals 1

    .line 566
    new-instance v0, Lmaster/flame/danmaku/danmaku/model/android/e;

    invoke-direct {v0}, Lmaster/flame/danmaku/danmaku/model/android/e;-><init>()V

    return-object v0
.end method

.method protected synthetic parse()Lmaster/flame/danmaku/danmaku/model/l;
    .locals 1

    .line 562
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer$8;->a()Lmaster/flame/danmaku/danmaku/model/android/e;

    move-result-object v0

    return-object v0
.end method
