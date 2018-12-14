.class public Lcom/shuyu/gsyvideoplayer/a;
.super Ljava/lang/Object;
.source "GSYPreViewManager.java"

# interfaces
.implements Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;
.implements Ltv/danmaku/ijk/media/player/IMediaPlayer$OnSeekCompleteListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shuyu/gsyvideoplayer/a$a;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static a:Ljava/lang/String; = "GSYPreViewManager"

.field private static b:Lcom/shuyu/gsyvideoplayer/a;


# instance fields
.field private c:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

.field private d:Landroid/os/HandlerThread;

.field private e:Lcom/shuyu/gsyvideoplayer/a$a;

.field private f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 39
    iput-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/a;->f:Z

    .line 49
    new-instance v0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-direct {v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/shuyu/gsyvideoplayer/a;->c:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    .line 51
    new-instance v0, Landroid/os/HandlerThread;

    sget-object v1, Lcom/shuyu/gsyvideoplayer/a;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/shuyu/gsyvideoplayer/a;->d:Landroid/os/HandlerThread;

    .line 52
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/a;->d:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 53
    new-instance v0, Lcom/shuyu/gsyvideoplayer/a$a;

    iget-object v1, p0, Lcom/shuyu/gsyvideoplayer/a;->d:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/shuyu/gsyvideoplayer/a$a;-><init>(Lcom/shuyu/gsyvideoplayer/a;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/shuyu/gsyvideoplayer/a;->e:Lcom/shuyu/gsyvideoplayer/a$a;

    return-void
.end method

.method public static declared-synchronized a()Lcom/shuyu/gsyvideoplayer/a;
    .locals 2

    const-class v0, Lcom/shuyu/gsyvideoplayer/a;

    monitor-enter v0

    .line 42
    :try_start_0
    sget-object v1, Lcom/shuyu/gsyvideoplayer/a;->b:Lcom/shuyu/gsyvideoplayer/a;

    if-nez v1, :cond_0

    .line 43
    new-instance v1, Lcom/shuyu/gsyvideoplayer/a;

    invoke-direct {v1}, Lcom/shuyu/gsyvideoplayer/a;-><init>()V

    sput-object v1, Lcom/shuyu/gsyvideoplayer/a;->b:Lcom/shuyu/gsyvideoplayer/a;

    .line 45
    :cond_0
    sget-object v1, Lcom/shuyu/gsyvideoplayer/a;->b:Lcom/shuyu/gsyvideoplayer/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 41
    monitor-exit v0

    throw v1
.end method

.method static synthetic a(Lcom/shuyu/gsyvideoplayer/a;)Ltv/danmaku/ijk/media/player/IjkMediaPlayer;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/shuyu/gsyvideoplayer/a;->c:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    return-object p0
.end method

.method private a(Landroid/os/Message;)V
    .locals 1

    .line 83
    :try_start_0
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/a;->c:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-virtual {v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->release()V

    .line 85
    invoke-direct {p0, p1}, Lcom/shuyu/gsyvideoplayer/a;->b(Landroid/os/Message;)V

    .line 87
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/a;->c:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-virtual {p1, p0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOnPreparedListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;)V

    .line 88
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/a;->c:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-virtual {p1, p0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOnSeekCompleteListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnSeekCompleteListener;)V

    .line 89
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/a;->c:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setVolume(FF)V

    .line 90
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/a;->c:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-virtual {p1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->prepareAsync()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 94
    invoke-static {p1}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method static synthetic a(Lcom/shuyu/gsyvideoplayer/a;Landroid/os/Message;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lcom/shuyu/gsyvideoplayer/a;->a(Landroid/os/Message;)V

    return-void
.end method

.method private b(Landroid/os/Message;)V
    .locals 2

    .line 99
    new-instance v0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-direct {v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/shuyu/gsyvideoplayer/a;->c:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    .line 100
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/a;->c:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setAudioStreamType(I)V

    .line 102
    :try_start_0
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/a;->c:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/shuyu/gsyvideoplayer/d/a;

    invoke-virtual {v1}, Lcom/shuyu/gsyvideoplayer/d/a;->a()Ljava/lang/String;

    move-result-object v1

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/shuyu/gsyvideoplayer/d/a;

    invoke-virtual {p1}, Lcom/shuyu/gsyvideoplayer/d/a;->b()Ljava/util/Map;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setDataSource(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 104
    invoke-static {p1}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method static synthetic b(Lcom/shuyu/gsyvideoplayer/a;Landroid/os/Message;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lcom/shuyu/gsyvideoplayer/a;->c(Landroid/os/Message;)V

    return-void
.end method

.method private c(Landroid/os/Message;)V
    .locals 1

    .line 109
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/a;->c:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    if-eqz v0, :cond_0

    .line 110
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/a;->c:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setSurface(Landroid/view/Surface;)V

    goto :goto_0

    .line 112
    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/view/Surface;

    .line 113
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/a;->c:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 114
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/a;->c:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-virtual {v0, p1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setSurface(Landroid/view/Surface;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public a(Landroid/view/Surface;)V
    .locals 2

    .line 147
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x1

    .line 148
    iput v1, v0, Landroid/os/Message;->what:I

    .line 149
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 150
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/a;->e:Lcom/shuyu/gsyvideoplayer/a$a;

    invoke-virtual {p1, v0}, Lcom/shuyu/gsyvideoplayer/a$a;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/util/Map;ZF)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;ZF)V"
        }
    .end annotation

    .line 132
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 133
    :cond_0
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x0

    .line 134
    iput v1, v0, Landroid/os/Message;->what:I

    .line 135
    new-instance v1, Lcom/shuyu/gsyvideoplayer/d/a;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, v1

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v2 .. v8}, Lcom/shuyu/gsyvideoplayer/d/a;-><init>(Ljava/lang/String;Ljava/util/Map;ZFZLjava/io/File;)V

    .line 136
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 137
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/a;->e:Lcom/shuyu/gsyvideoplayer/a$a;

    invoke-virtual {p1, v0}, Lcom/shuyu/gsyvideoplayer/a$a;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 162
    iput-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/a;->f:Z

    return-void
.end method

.method public b()Ltv/danmaku/ijk/media/player/IjkMediaPlayer;
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/a;->c:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    return-object v0
.end method

.method public c()Z
    .locals 1

    .line 158
    iget-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/a;->f:Z

    return v0
.end method

.method public onPrepared(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V
    .locals 0

    .line 122
    invoke-interface {p1}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->pause()V

    const/4 p1, 0x1

    .line 123
    iput-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/a;->f:Z

    return-void
.end method

.method public onSeekComplete(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V
    .locals 0

    const/4 p1, 0x1

    .line 128
    iput-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/a;->f:Z

    return-void
.end method
