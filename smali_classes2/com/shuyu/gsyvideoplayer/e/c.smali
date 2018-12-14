.class public Lcom/shuyu/gsyvideoplayer/e/c;
.super Ljava/lang/Object;
.source "IjkPlayerManager.java"

# interfaces
.implements Lcom/shuyu/gsyvideoplayer/e/b;


# static fields
.field private static a:I = 0x6

.field private static b:Ltv/danmaku/ijk/media/player/IjkLibLoader;


# instance fields
.field private c:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/shuyu/gsyvideoplayer/d/c;",
            ">;"
        }
    .end annotation
.end field

.field private e:Landroid/view/Surface;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltv/danmaku/ijk/media/player/IjkMediaPlayer;",
            "Ljava/util/List<",
            "Lcom/shuyu/gsyvideoplayer/d/c;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_1

    .line 286
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 287
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shuyu/gsyvideoplayer/d/c;

    .line 288
    invoke-virtual {v0}, Lcom/shuyu/gsyvideoplayer/d/c;->a()I

    move-result v1

    if-nez v1, :cond_0

    .line 289
    invoke-virtual {v0}, Lcom/shuyu/gsyvideoplayer/d/c;->b()I

    move-result v1

    .line 290
    invoke-virtual {v0}, Lcom/shuyu/gsyvideoplayer/d/c;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/shuyu/gsyvideoplayer/d/c;->c()I

    move-result v0

    int-to-long v3, v0

    .line 289
    invoke-virtual {p1, v1, v2, v3, v4}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    goto :goto_0

    .line 292
    :cond_0
    invoke-virtual {v0}, Lcom/shuyu/gsyvideoplayer/d/c;->b()I

    move-result v1

    .line 293
    invoke-virtual {v0}, Lcom/shuyu/gsyvideoplayer/d/c;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/shuyu/gsyvideoplayer/d/c;->e()Ljava/lang/String;

    move-result-object v0

    .line 292
    invoke-virtual {p1, v1, v2, v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public a()Ltv/danmaku/ijk/media/player/IMediaPlayer;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/e/c;->c:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    return-object v0
.end method

.method public a(FZ)V
    .locals 2

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_2

    .line 125
    :try_start_0
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/e/c;->c:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/e/c;->c:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-virtual {v0, p1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setSpeed(F)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 129
    invoke-static {p1}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    if-eqz p2, :cond_2

    .line 132
    new-instance p1, Lcom/shuyu/gsyvideoplayer/d/c;

    const/4 p2, 0x4

    const-string v0, "soundtouch"

    const/4 v1, 0x1

    invoke-direct {p1, p2, v0, v1}, Lcom/shuyu/gsyvideoplayer/d/c;-><init>(ILjava/lang/String;I)V

    .line 134
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/e/c;->q()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 136
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 138
    :cond_1
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 139
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 141
    :goto_1
    invoke-virtual {p0, p2}, Lcom/shuyu/gsyvideoplayer/e/c;->a(Ljava/util/List;)V

    :cond_2
    return-void
.end method

.method public a(J)V
    .locals 1

    .line 242
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/e/c;->c:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    if-eqz v0, :cond_0

    .line 243
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/e/c;->c:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-virtual {v0, p1, p2}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->seekTo(J)V

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

    .line 56
    sget-object v0, Lcom/shuyu/gsyvideoplayer/e/c;->b:Ltv/danmaku/ijk/media/player/IjkLibLoader;

    if-nez v0, :cond_0

    new-instance v0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-direct {v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    sget-object v1, Lcom/shuyu/gsyvideoplayer/e/c;->b:Ltv/danmaku/ijk/media/player/IjkLibLoader;

    invoke-direct {v0, v1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;-><init>(Ltv/danmaku/ijk/media/player/IjkLibLoader;)V

    :goto_0
    iput-object v0, p0, Lcom/shuyu/gsyvideoplayer/e/c;->c:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    .line 57
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/e/c;->c:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setAudioStreamType(I)V

    .line 58
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/e/c;->c:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    new-instance v1, Lcom/shuyu/gsyvideoplayer/e/c$1;

    invoke-direct {v1, p0}, Lcom/shuyu/gsyvideoplayer/e/c$1;-><init>(Lcom/shuyu/gsyvideoplayer/e/c;)V

    invoke-virtual {v0, v1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOnNativeInvokeListener(Ltv/danmaku/ijk/media/player/IjkMediaPlayer$OnNativeInvokeListener;)V

    .line 65
    iget-object p2, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p2, Lcom/shuyu/gsyvideoplayer/d/a;

    .line 66
    invoke-virtual {p2}, Lcom/shuyu/gsyvideoplayer/d/a;->a()Ljava/lang/String;

    move-result-object v3

    .line 71
    :try_start_0
    invoke-static {}, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoType;->isMediaCodec()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "enable mediaCodec"

    .line 72
    invoke-static {v0}, Lcom/shuyu/gsyvideoplayer/utils/Debuger;->printfLog(Ljava/lang/String;)V

    .line 73
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/e/c;->c:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    const-string v1, "mediacodec"

    const-wide/16 v4, 0x1

    const/4 v2, 0x4

    invoke-virtual {v0, v2, v1, v4, v5}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    .line 74
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/e/c;->c:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    const-string v1, "mediacodec-auto-rotate"

    invoke-virtual {v0, v2, v1, v4, v5}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    .line 75
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/e/c;->c:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    const-string v1, "mediacodec-handle-resolution-change"

    invoke-virtual {v0, v2, v1, v4, v5}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    .line 79
    :cond_1
    invoke-virtual {p2}, Lcom/shuyu/gsyvideoplayer/d/a;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p4, :cond_2

    .line 80
    iget-object v2, p0, Lcom/shuyu/gsyvideoplayer/e/c;->c:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-virtual {p2}, Lcom/shuyu/gsyvideoplayer/d/a;->b()Ljava/util/Map;

    move-result-object v4

    invoke-virtual {p2}, Lcom/shuyu/gsyvideoplayer/d/a;->f()Ljava/io/File;

    move-result-object v5

    move-object v0, p4

    move-object v1, p1

    invoke-interface/range {v0 .. v5}, Lcom/shuyu/gsyvideoplayer/b/c;->a(Landroid/content/Context;Ltv/danmaku/ijk/media/player/IMediaPlayer;Ljava/lang/String;Ljava/util/Map;Ljava/io/File;)V

    goto :goto_1

    .line 82
    :cond_2
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-nez p4, :cond_4

    .line 83
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p4

    .line 84
    invoke-virtual {p4}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.resource"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 85
    invoke-static {p1, p4}, Lcom/shuyu/gsyvideoplayer/utils/RawDataSourceProvider;->create(Landroid/content/Context;Landroid/net/Uri;)Lcom/shuyu/gsyvideoplayer/utils/RawDataSourceProvider;

    move-result-object p1

    .line 86
    iget-object p4, p0, Lcom/shuyu/gsyvideoplayer/e/c;->c:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-virtual {p4, p1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setDataSource(Ltv/danmaku/ijk/media/player/misc/IMediaDataSource;)V

    goto :goto_1

    .line 88
    :cond_3
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/e/c;->c:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-virtual {p2}, Lcom/shuyu/gsyvideoplayer/d/a;->b()Ljava/util/Map;

    move-result-object p4

    invoke-virtual {p1, v3, p4}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setDataSource(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_1

    .line 91
    :cond_4
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/e/c;->c:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-virtual {p2}, Lcom/shuyu/gsyvideoplayer/d/a;->b()Ljava/util/Map;

    move-result-object p4

    invoke-virtual {p1, v3, p4}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setDataSource(Ljava/lang/String;Ljava/util/Map;)V

    .line 95
    :goto_1
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/e/c;->c:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-virtual {p2}, Lcom/shuyu/gsyvideoplayer/d/a;->c()Z

    move-result p4

    invoke-virtual {p1, p4}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setLooping(Z)V

    .line 96
    invoke-virtual {p2}, Lcom/shuyu/gsyvideoplayer/d/a;->d()F

    move-result p1

    const/high16 p4, 0x3f800000    # 1.0f

    cmpl-float p1, p1, p4

    if-eqz p1, :cond_5

    invoke-virtual {p2}, Lcom/shuyu/gsyvideoplayer/d/a;->d()F

    move-result p1

    const/4 p4, 0x0

    cmpl-float p1, p1, p4

    if-lez p1, :cond_5

    .line 97
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/e/c;->c:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-virtual {p2}, Lcom/shuyu/gsyvideoplayer/d/a;->d()F

    move-result p2

    invoke-virtual {p1, p2}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setSpeed(F)V

    .line 100
    :cond_5
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/e/c;->c:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    sget p1, Lcom/shuyu/gsyvideoplayer/e/c;->a:I

    invoke-static {p1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->native_setLogLevel(I)V

    .line 101
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/e/c;->c:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-direct {p0, p1, p3}, Lcom/shuyu/gsyvideoplayer/e/c;->a(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 104
    invoke-static {p1}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method

.method public a(Landroid/os/Message;)V
    .locals 1

    .line 110
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/e/c;->c:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    if-eqz v0, :cond_0

    .line 111
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/e/c;->c:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setSurface(Landroid/view/Surface;)V

    goto :goto_0

    .line 113
    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/view/Surface;

    .line 114
    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/e/c;->e:Landroid/view/Surface;

    .line 115
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/e/c;->c:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 116
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/e/c;->c:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-virtual {v0, p1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setSurface(Landroid/view/Surface;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/shuyu/gsyvideoplayer/d/c;",
            ">;)V"
        }
    .end annotation

    .line 304
    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/e/c;->d:Ljava/util/List;

    return-void
.end method

.method public a(Z)V
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/e/c;->c:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 151
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/e/c;->c:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setVolume(FF)V

    goto :goto_0

    .line 153
    :cond_0
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/e/c;->c:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0, v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setVolume(FF)V

    :cond_1
    :goto_0
    return-void
.end method

.method public b()V
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/e/c;->e:Landroid/view/Surface;

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/e/c;->e:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    const/4 v0, 0x0

    .line 163
    iput-object v0, p0, Lcom/shuyu/gsyvideoplayer/e/c;->e:Landroid/view/Surface;

    :cond_0
    return-void
.end method

.method public b(FZ)V
    .locals 4

    .line 189
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/e/c;->c:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    if-eqz v0, :cond_1

    .line 190
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/e/c;->c:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-virtual {v0, p1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setSpeed(F)V

    .line 191
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/e/c;->c:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    const/4 v0, 0x4

    const-string v1, "soundtouch"

    if-eqz p2, :cond_0

    const-wide/16 v2, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x0

    :goto_0
    invoke-virtual {p1, v0, v1, v2, v3}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    :cond_1
    return-void
.end method

.method public c()V
    .locals 1

    .line 169
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/e/c;->c:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/e/c;->c:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-virtual {v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->release()V

    :cond_0
    return-void
.end method

.method public d()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public e()J
    .locals 2

    .line 181
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/e/c;->c:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/e/c;->c:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-virtual {v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->getTcpSpeed()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public f()V
    .locals 1

    .line 197
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/e/c;->c:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/e/c;->c:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-virtual {v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->start()V

    :cond_0
    return-void
.end method

.method public g()V
    .locals 1

    .line 204
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/e/c;->c:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/e/c;->c:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-virtual {v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->stop()V

    :cond_0
    return-void
.end method

.method public h()V
    .locals 1

    .line 211
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/e/c;->c:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/e/c;->c:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-virtual {v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->pause()V

    :cond_0
    return-void
.end method

.method public i()I
    .locals 1

    .line 218
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/e/c;->c:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    if-eqz v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/e/c;->c:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-virtual {v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->getVideoWidth()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public j()I
    .locals 1

    .line 226
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/e/c;->c:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    if-eqz v0, :cond_0

    .line 227
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/e/c;->c:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-virtual {v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->getVideoHeight()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public k()Z
    .locals 1

    .line 234
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/e/c;->c:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/e/c;->c:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-virtual {v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->isPlaying()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public l()J
    .locals 2

    .line 249
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/e/c;->c:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    if-eqz v0, :cond_0

    .line 250
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/e/c;->c:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-virtual {v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->getCurrentPosition()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public m()J
    .locals 2

    .line 257
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/e/c;->c:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    if-eqz v0, :cond_0

    .line 258
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/e/c;->c:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-virtual {v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->getDuration()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public n()I
    .locals 1

    .line 265
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/e/c;->c:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    if-eqz v0, :cond_0

    .line 266
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/e/c;->c:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-virtual {v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->getVideoSarNum()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public o()I
    .locals 1

    .line 273
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/e/c;->c:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    if-eqz v0, :cond_0

    .line 274
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/e/c;->c:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-virtual {v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->getVideoSarDen()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public p()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public q()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/shuyu/gsyvideoplayer/d/c;",
            ">;"
        }
    .end annotation

    .line 300
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/e/c;->d:Ljava/util/List;

    return-object v0
.end method
