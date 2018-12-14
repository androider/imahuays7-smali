.class public Lcom/shuyu/gsyvideoplayer/e/a;
.super Ljava/lang/Object;
.source "Exo2PlayerManager.java"

# interfaces
.implements Lcom/shuyu/gsyvideoplayer/e/b;


# instance fields
.field private a:Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;

.field private b:Landroid/view/Surface;

.field private c:Lcom/google/android/exoplayer2/video/DummySurface;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ltv/danmaku/ijk/media/player/IMediaPlayer;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/e/a;->a:Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;

    return-object v0
.end method

.method public a(FZ)V
    .locals 1

    .line 82
    iget-object p2, p0, Lcom/shuyu/gsyvideoplayer/e/a;->a:Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;

    if-eqz p2, :cond_0

    .line 84
    :try_start_0
    iget-object p2, p0, Lcom/shuyu/gsyvideoplayer/e/a;->a:Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p2, p1, v0}, Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;->setSpeed(FF)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 86
    invoke-static {p1}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public a(J)V
    .locals 1

    .line 193
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/e/a;->a:Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/e/a;->a:Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;

    invoke-virtual {v0, p1, p2}, Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;->seekTo(J)V

    :cond_0
    return-void
.end method

.method public a(Landroid/content/Context;Landroid/os/Message;Ljava/util/List;Lcom/shuyu/gsyvideoplayer/b/c;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/Message;",
            "Ljava/util/List<",
            "Lcom/shuyu/gsyvideoplayer/d/c;",
            ">;",
            "Lcom/shuyu/gsyvideoplayer/b/c;",
            ")V"
        }
    .end annotation

    .line 39
    new-instance p3, Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;

    invoke-direct {p3, p1}, Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/shuyu/gsyvideoplayer/e/a;->a:Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;

    .line 40
    iget-object p3, p0, Lcom/shuyu/gsyvideoplayer/e/a;->a:Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;

    const/4 v0, 0x3

    invoke-virtual {p3, v0}, Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;->setAudioStreamType(I)V

    .line 41
    iget-object p3, p0, Lcom/shuyu/gsyvideoplayer/e/a;->c:Lcom/google/android/exoplayer2/video/DummySurface;

    const/4 v0, 0x0

    if-nez p3, :cond_0

    .line 42
    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/video/DummySurface;->a(Landroid/content/Context;Z)Lcom/google/android/exoplayer2/video/DummySurface;

    move-result-object p3

    iput-object p3, p0, Lcom/shuyu/gsyvideoplayer/e/a;->c:Lcom/google/android/exoplayer2/video/DummySurface;

    .line 45
    :cond_0
    iget-object p2, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p2, Lcom/shuyu/gsyvideoplayer/d/a;

    .line 47
    :try_start_0
    iget-object p3, p0, Lcom/shuyu/gsyvideoplayer/e/a;->a:Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;

    invoke-virtual {p2}, Lcom/shuyu/gsyvideoplayer/d/a;->c()Z

    move-result v1

    invoke-virtual {p3, v1}, Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;->setLooping(Z)V

    .line 48
    iget-object p3, p0, Lcom/shuyu/gsyvideoplayer/e/a;->a:Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;

    invoke-virtual {p2}, Lcom/shuyu/gsyvideoplayer/d/a;->b()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p2}, Lcom/shuyu/gsyvideoplayer/d/a;->b()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-virtual {p3, v0}, Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;->setPreview(Z)V

    .line 49
    invoke-virtual {p2}, Lcom/shuyu/gsyvideoplayer/d/a;->e()Z

    move-result p3

    if-eqz p3, :cond_2

    if-eqz p4, :cond_2

    .line 51
    iget-object v2, p0, Lcom/shuyu/gsyvideoplayer/e/a;->a:Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;

    invoke-virtual {p2}, Lcom/shuyu/gsyvideoplayer/d/a;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lcom/shuyu/gsyvideoplayer/d/a;->b()Ljava/util/Map;

    move-result-object v4

    invoke-virtual {p2}, Lcom/shuyu/gsyvideoplayer/d/a;->f()Ljava/io/File;

    move-result-object v5

    move-object v0, p4

    move-object v1, p1

    invoke-interface/range {v0 .. v5}, Lcom/shuyu/gsyvideoplayer/b/c;->a(Landroid/content/Context;Ltv/danmaku/ijk/media/player/IMediaPlayer;Ljava/lang/String;Ljava/util/Map;Ljava/io/File;)V

    goto :goto_0

    .line 54
    :cond_2
    iget-object p3, p0, Lcom/shuyu/gsyvideoplayer/e/a;->a:Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;

    invoke-virtual {p2}, Lcom/shuyu/gsyvideoplayer/d/a;->e()Z

    move-result p4

    invoke-virtual {p3, p4}, Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;->setCache(Z)V

    .line 55
    iget-object p3, p0, Lcom/shuyu/gsyvideoplayer/e/a;->a:Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;

    invoke-virtual {p2}, Lcom/shuyu/gsyvideoplayer/d/a;->f()Ljava/io/File;

    move-result-object p4

    invoke-virtual {p3, p4}, Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;->setCacheDir(Ljava/io/File;)V

    .line 56
    iget-object p3, p0, Lcom/shuyu/gsyvideoplayer/e/a;->a:Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;

    invoke-virtual {p2}, Lcom/shuyu/gsyvideoplayer/d/a;->a()Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p4

    invoke-virtual {p2}, Lcom/shuyu/gsyvideoplayer/d/a;->b()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p3, p1, p4, v0}, Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V

    .line 58
    :goto_0
    invoke-virtual {p2}, Lcom/shuyu/gsyvideoplayer/d/a;->d()F

    move-result p1

    const/high16 p3, 0x3f800000    # 1.0f

    cmpl-float p1, p1, p3

    if-eqz p1, :cond_3

    invoke-virtual {p2}, Lcom/shuyu/gsyvideoplayer/d/a;->d()F

    move-result p1

    const/4 p4, 0x0

    cmpl-float p1, p1, p4

    if-lez p1, :cond_3

    .line 59
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/e/a;->a:Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;

    invoke-virtual {p2}, Lcom/shuyu/gsyvideoplayer/d/a;->d()F

    move-result p2

    invoke-virtual {p1, p2, p3}, Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;->setSpeed(FF)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 62
    invoke-static {p1}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public a(Landroid/os/Message;)V
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/e/a;->a:Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;

    if-nez v0, :cond_0

    return-void

    .line 71
    :cond_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v0, :cond_1

    .line 72
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/e/a;->a:Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;

    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/e/a;->c:Lcom/google/android/exoplayer2/video/DummySurface;

    invoke-virtual {p1, v0}, Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;->setSurface(Landroid/view/Surface;)V

    goto :goto_0

    .line 74
    :cond_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/view/Surface;

    .line 75
    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/e/a;->b:Landroid/view/Surface;

    .line 76
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/e/a;->a:Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;

    invoke-virtual {v0, p1}, Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;->setSurface(Landroid/view/Surface;)V

    :goto_0
    return-void
.end method

.method public a(Z)V
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/e/a;->a:Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 95
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/e/a;->a:Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;->setVolume(FF)V

    goto :goto_0

    .line 97
    :cond_0
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/e/a;->a:Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0, v0}, Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;->setVolume(FF)V

    :cond_1
    :goto_0
    return-void
.end method

.method public b()V
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/e/a;->b:Landroid/view/Surface;

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/e/a;->b:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    const/4 v0, 0x0

    .line 107
    iput-object v0, p0, Lcom/shuyu/gsyvideoplayer/e/a;->b:Landroid/view/Surface;

    :cond_0
    return-void
.end method

.method public b(FZ)V
    .locals 0

    return-void
.end method

.method public c()V
    .locals 2

    .line 113
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/e/a;->a:Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/e/a;->a:Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;

    invoke-virtual {v0, v1}, Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;->setSurface(Landroid/view/Surface;)V

    .line 115
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/e/a;->a:Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;

    invoke-virtual {v0}, Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;->release()V

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/e/a;->c:Lcom/google/android/exoplayer2/video/DummySurface;

    if-eqz v0, :cond_1

    .line 118
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/e/a;->c:Lcom/google/android/exoplayer2/video/DummySurface;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/video/DummySurface;->release()V

    .line 119
    iput-object v1, p0, Lcom/shuyu/gsyvideoplayer/e/a;->c:Lcom/google/android/exoplayer2/video/DummySurface;

    :cond_1
    return-void
.end method

.method public d()I
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/e/a;->a:Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/e/a;->a:Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;

    invoke-virtual {v0}, Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;->getBufferedPercentage()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public e()J
    .locals 2

    .line 133
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/e/a;->a:Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public f()V
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/e/a;->a:Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/e/a;->a:Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;

    invoke-virtual {v0}, Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;->start()V

    :cond_0
    return-void
.end method

.method public g()V
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/e/a;->a:Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/e/a;->a:Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;

    invoke-virtual {v0}, Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;->stop()V

    :cond_0
    return-void
.end method

.method public h()V
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/e/a;->a:Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/e/a;->a:Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;

    invoke-virtual {v0}, Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;->pause()V

    :cond_0
    return-void
.end method

.method public i()I
    .locals 1

    .line 169
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/e/a;->a:Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/e/a;->a:Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;

    invoke-virtual {v0}, Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;->getVideoWidth()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public j()I
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/e/a;->a:Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/e/a;->a:Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;

    invoke-virtual {v0}, Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;->getVideoHeight()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public k()Z
    .locals 1

    .line 185
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/e/a;->a:Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/e/a;->a:Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;

    invoke-virtual {v0}, Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;->isPlaying()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public l()J
    .locals 2

    .line 200
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/e/a;->a:Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/e/a;->a:Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;

    invoke-virtual {v0}, Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;->getCurrentPosition()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public m()J
    .locals 2

    .line 208
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/e/a;->a:Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/e/a;->a:Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;

    invoke-virtual {v0}, Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;->getDuration()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public n()I
    .locals 1

    .line 216
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/e/a;->a:Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;

    if-eqz v0, :cond_0

    .line 217
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/e/a;->a:Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;

    invoke-virtual {v0}, Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;->getVideoSarNum()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public o()I
    .locals 1

    .line 224
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/e/a;->a:Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/e/a;->a:Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;

    invoke-virtual {v0}, Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;->getVideoSarDen()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public p()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
