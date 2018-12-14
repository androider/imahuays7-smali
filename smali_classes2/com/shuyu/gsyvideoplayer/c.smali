.class public abstract Lcom/shuyu/gsyvideoplayer/c;
.super Ljava/lang/Object;
.source "GSYVideoBaseManager.java"

# interfaces
.implements Lcom/shuyu/gsyvideoplayer/b/c$a;
.implements Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;
.implements Ltv/danmaku/ijk/media/player/IMediaPlayer$OnBufferingUpdateListener;
.implements Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;
.implements Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;
.implements Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;
.implements Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;
.implements Ltv/danmaku/ijk/media/player/IMediaPlayer$OnSeekCompleteListener;
.implements Ltv/danmaku/ijk/media/player/IMediaPlayer$OnVideoSizeChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shuyu/gsyvideoplayer/c$a;
    }
.end annotation


# static fields
.field public static d:Ljava/lang/String; = "GSYVideoBaseManager"


# instance fields
.field private a:Ljava/lang/Runnable;

.field protected e:Landroid/content/Context;

.field protected f:Lcom/shuyu/gsyvideoplayer/c$a;

.field protected g:Landroid/os/Handler;

.field protected h:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/shuyu/gsyvideoplayer/c/a;",
            ">;"
        }
    .end annotation
.end field

.field protected i:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/shuyu/gsyvideoplayer/c/a;",
            ">;"
        }
    .end annotation
.end field

.field protected j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/shuyu/gsyvideoplayer/d/c;",
            ">;"
        }
    .end annotation
.end field

.field protected k:Ljava/lang/String;

.field protected l:Lcom/shuyu/gsyvideoplayer/e/b;

.field protected m:Lcom/shuyu/gsyvideoplayer/b/c;

.field protected n:I

.field protected o:I

.field protected p:I

.field protected q:I

.field protected r:I

.field protected s:I

.field protected t:I

.field protected u:Z

.field protected v:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 75
    iput-object v0, p0, Lcom/shuyu/gsyvideoplayer/c;->k:Ljava/lang/String;

    const/4 v0, 0x0

    .line 90
    iput v0, p0, Lcom/shuyu/gsyvideoplayer/c;->n:I

    .line 95
    iput v0, p0, Lcom/shuyu/gsyvideoplayer/c;->o:I

    const/16 v1, -0x16

    .line 105
    iput v1, p0, Lcom/shuyu/gsyvideoplayer/c;->q:I

    const/16 v1, 0x1f40

    .line 115
    iput v1, p0, Lcom/shuyu/gsyvideoplayer/c;->s:I

    .line 120
    iput v0, p0, Lcom/shuyu/gsyvideoplayer/c;->t:I

    .line 125
    iput-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/c;->u:Z

    .line 677
    new-instance v0, Lcom/shuyu/gsyvideoplayer/c$8;

    invoke-direct {v0, p0}, Lcom/shuyu/gsyvideoplayer/c$8;-><init>(Lcom/shuyu/gsyvideoplayer/c;)V

    iput-object v0, p0, Lcom/shuyu/gsyvideoplayer/c;->a:Ljava/lang/Runnable;

    return-void
.end method

.method private a()V
    .locals 5

    .line 628
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/shuyu/gsyvideoplayer/c;->j:Ljava/util/List;

    .line 641
    new-instance v0, Lcom/shuyu/gsyvideoplayer/d/c;

    const-string v1, "reconnect"

    const/4 v2, 0x5

    const/4 v3, 0x4

    invoke-direct {v0, v3, v1, v2}, Lcom/shuyu/gsyvideoplayer/d/c;-><init>(ILjava/lang/String;I)V

    .line 642
    iget-object v1, p0, Lcom/shuyu/gsyvideoplayer/c;->j:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 645
    new-instance v0, Lcom/shuyu/gsyvideoplayer/d/c;

    const-string v1, "soundtouch"

    const/4 v4, 0x1

    invoke-direct {v0, v3, v1, v4}, Lcom/shuyu/gsyvideoplayer/d/c;-><init>(ILjava/lang/String;I)V

    .line 646
    iget-object v1, p0, Lcom/shuyu/gsyvideoplayer/c;->j:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 648
    new-instance v0, Lcom/shuyu/gsyvideoplayer/d/c;

    const-string v1, "skip_loop_filter"

    const/16 v4, 0x30

    invoke-direct {v0, v3, v1, v4}, Lcom/shuyu/gsyvideoplayer/d/c;-><init>(ILjava/lang/String;I)V

    .line 649
    iget-object v1, p0, Lcom/shuyu/gsyvideoplayer/c;->j:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 651
    new-instance v0, Lcom/shuyu/gsyvideoplayer/d/c;

    const-string v1, "framedrop"

    invoke-direct {v0, v3, v1, v2}, Lcom/shuyu/gsyvideoplayer/d/c;-><init>(ILjava/lang/String;I)V

    .line 652
    iget-object v1, p0, Lcom/shuyu/gsyvideoplayer/c;->j:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic a(Lcom/shuyu/gsyvideoplayer/c;Landroid/os/Message;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/shuyu/gsyvideoplayer/c;->b(Landroid/os/Message;)V

    return-void
.end method

.method private b(Landroid/os/Message;)V
    .locals 4

    const/4 v0, 0x0

    .line 589
    :try_start_0
    iput v0, p0, Lcom/shuyu/gsyvideoplayer/c;->n:I

    .line 590
    iput v0, p0, Lcom/shuyu/gsyvideoplayer/c;->o:I

    .line 592
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/c;->l:Lcom/shuyu/gsyvideoplayer/e/b;

    if-eqz v0, :cond_0

    .line 593
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/c;->l:Lcom/shuyu/gsyvideoplayer/e/b;

    invoke-interface {v0}, Lcom/shuyu/gsyvideoplayer/e/b;->c()V

    .line 595
    :cond_0
    iget v0, p0, Lcom/shuyu/gsyvideoplayer/c;->t:I

    invoke-virtual {p0, v0}, Lcom/shuyu/gsyvideoplayer/c;->a(I)Lcom/shuyu/gsyvideoplayer/e/b;

    move-result-object v0

    iput-object v0, p0, Lcom/shuyu/gsyvideoplayer/c;->l:Lcom/shuyu/gsyvideoplayer/e/b;

    .line 596
    iget v0, p0, Lcom/shuyu/gsyvideoplayer/c;->t:I

    invoke-virtual {p0, v0}, Lcom/shuyu/gsyvideoplayer/c;->b(I)Lcom/shuyu/gsyvideoplayer/b/c;

    move-result-object v0

    iput-object v0, p0, Lcom/shuyu/gsyvideoplayer/c;->m:Lcom/shuyu/gsyvideoplayer/b/c;

    .line 597
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/c;->m:Lcom/shuyu/gsyvideoplayer/b/c;

    if-eqz v0, :cond_1

    .line 598
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/c;->m:Lcom/shuyu/gsyvideoplayer/b/c;

    invoke-interface {v0, p0}, Lcom/shuyu/gsyvideoplayer/b/c;->a(Lcom/shuyu/gsyvideoplayer/b/c$a;)V

    .line 601
    :cond_1
    invoke-direct {p0}, Lcom/shuyu/gsyvideoplayer/c;->a()V

    .line 603
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/c;->l:Lcom/shuyu/gsyvideoplayer/e/b;

    iget-object v1, p0, Lcom/shuyu/gsyvideoplayer/c;->e:Landroid/content/Context;

    iget-object v2, p0, Lcom/shuyu/gsyvideoplayer/c;->j:Ljava/util/List;

    iget-object v3, p0, Lcom/shuyu/gsyvideoplayer/c;->m:Lcom/shuyu/gsyvideoplayer/b/c;

    invoke-interface {v0, v1, p1, v2, v3}, Lcom/shuyu/gsyvideoplayer/e/b;->a(Landroid/content/Context;Landroid/os/Message;Ljava/util/List;Lcom/shuyu/gsyvideoplayer/b/c;)V

    .line 605
    iget-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/c;->u:Z

    invoke-virtual {p0, p1}, Lcom/shuyu/gsyvideoplayer/c;->a(Z)V

    .line 606
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/c;->l:Lcom/shuyu/gsyvideoplayer/e/b;

    invoke-interface {p1}, Lcom/shuyu/gsyvideoplayer/e/b;->a()Ltv/danmaku/ijk/media/player/IMediaPlayer;

    move-result-object p1

    .line 607
    invoke-interface {p1, p0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setOnCompletionListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;)V

    .line 608
    invoke-interface {p1, p0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setOnBufferingUpdateListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnBufferingUpdateListener;)V

    const/4 v0, 0x1

    .line 609
    invoke-interface {p1, v0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setScreenOnWhilePlaying(Z)V

    .line 610
    invoke-interface {p1, p0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setOnPreparedListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;)V

    .line 611
    invoke-interface {p1, p0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setOnSeekCompleteListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnSeekCompleteListener;)V

    .line 612
    invoke-interface {p1, p0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setOnErrorListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;)V

    .line 613
    invoke-interface {p1, p0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setOnInfoListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;)V

    .line 614
    invoke-interface {p1, p0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setOnVideoSizeChangedListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnVideoSizeChangedListener;)V

    .line 615
    invoke-interface {p1}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->prepareAsync()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 618
    invoke-static {p1}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method static synthetic b(Lcom/shuyu/gsyvideoplayer/c;Landroid/os/Message;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/shuyu/gsyvideoplayer/c;->c(Landroid/os/Message;)V

    return-void
.end method

.method private c(Landroid/os/Message;)V
    .locals 0

    .line 688
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz p1, :cond_0

    .line 689
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/c;->l:Lcom/shuyu/gsyvideoplayer/e/b;

    if-eqz p1, :cond_0

    .line 690
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/c;->l:Lcom/shuyu/gsyvideoplayer/e/b;

    invoke-interface {p1}, Lcom/shuyu/gsyvideoplayer/e/b;->b()V

    :cond_0
    return-void
.end method

.method private d(Landroid/os/Message;)V
    .locals 1

    .line 699
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/c;->l:Lcom/shuyu/gsyvideoplayer/e/b;

    if-eqz v0, :cond_0

    .line 700
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/c;->l:Lcom/shuyu/gsyvideoplayer/e/b;

    invoke-interface {v0, p1}, Lcom/shuyu/gsyvideoplayer/e/b;->a(Landroid/os/Message;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected a(I)Lcom/shuyu/gsyvideoplayer/e/b;
    .locals 0

    .line 161
    invoke-static {p1}, Lcom/shuyu/gsyvideoplayer/e/d;->a(I)Lcom/shuyu/gsyvideoplayer/e/b;

    move-result-object p1

    return-object p1
.end method

.method public a(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)V
    .locals 1
    .param p2    # Ljava/io/File;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 146
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/c;->m:Lcom/shuyu/gsyvideoplayer/b/c;

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/c;->m:Lcom/shuyu/gsyvideoplayer/b/c;

    invoke-interface {v0, p1, p2, p3}, Lcom/shuyu/gsyvideoplayer/b/c;->a(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)V

    goto :goto_0

    .line 149
    :cond_0
    iget v0, p0, Lcom/shuyu/gsyvideoplayer/c;->t:I

    invoke-virtual {p0, v0}, Lcom/shuyu/gsyvideoplayer/c;->b(I)Lcom/shuyu/gsyvideoplayer/b/c;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/shuyu/gsyvideoplayer/b/c;->a(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method protected a(Landroid/os/Message;)V
    .locals 1

    .line 550
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/c;->f:Lcom/shuyu/gsyvideoplayer/c$a;

    invoke-virtual {v0, p1}, Lcom/shuyu/gsyvideoplayer/c$a;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public a(Ljava/io/File;Ljava/lang/String;I)V
    .locals 0

    .line 349
    iput p3, p0, Lcom/shuyu/gsyvideoplayer/c;->r:I

    return-void
.end method

.method public a(Z)V
    .locals 1

    .line 751
    iput-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/c;->u:Z

    .line 752
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/c;->l:Lcom/shuyu/gsyvideoplayer/e/b;

    if-eqz v0, :cond_0

    .line 753
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/c;->l:Lcom/shuyu/gsyvideoplayer/e/b;

    invoke-interface {v0, p1}, Lcom/shuyu/gsyvideoplayer/e/b;->a(Z)V

    :cond_0
    return-void
.end method

.method protected b(I)Lcom/shuyu/gsyvideoplayer/b/c;
    .locals 0

    .line 165
    invoke-static {p1}, Lcom/shuyu/gsyvideoplayer/b/a;->a(I)Lcom/shuyu/gsyvideoplayer/b/c;

    move-result-object p1

    return-object p1
.end method

.method public b(Landroid/content/Context;)V
    .locals 0

    .line 720
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/c;->e:Landroid/content/Context;

    return-void
.end method

.method protected c()V
    .locals 2

    .line 154
    new-instance v0, Landroid/os/HandlerThread;

    sget-object v1, Lcom/shuyu/gsyvideoplayer/c;->d:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 155
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 156
    new-instance v1, Lcom/shuyu/gsyvideoplayer/c$a;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lcom/shuyu/gsyvideoplayer/c$a;-><init>(Lcom/shuyu/gsyvideoplayer/c;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/shuyu/gsyvideoplayer/c;->f:Lcom/shuyu/gsyvideoplayer/c$a;

    .line 157
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/shuyu/gsyvideoplayer/c;->g:Landroid/os/Handler;

    return-void
.end method

.method public cachePreview(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)Z
    .locals 1

    .line 414
    iget v0, p0, Lcom/shuyu/gsyvideoplayer/c;->t:I

    invoke-virtual {p0, v0}, Lcom/shuyu/gsyvideoplayer/c;->b(I)Lcom/shuyu/gsyvideoplayer/b/c;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/shuyu/gsyvideoplayer/b/c;->b(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public clearCache(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)V
    .locals 0

    .line 427
    invoke-virtual {p0, p1, p2, p3}, Lcom/shuyu/gsyvideoplayer/c;->a(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)V

    return-void
.end method

.method protected d()V
    .locals 4

    const-string v0, "startTimeOutBuffer"

    .line 661
    invoke-static {v0}, Lcom/shuyu/gsyvideoplayer/utils/Debuger;->printfError(Ljava/lang/String;)V

    .line 662
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/c;->g:Landroid/os/Handler;

    iget-object v1, p0, Lcom/shuyu/gsyvideoplayer/c;->a:Ljava/lang/Runnable;

    iget v2, p0, Lcom/shuyu/gsyvideoplayer/c;->s:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method protected e()V
    .locals 2

    const-string v0, "cancelTimeOutBuffer"

    .line 670
    invoke-static {v0}, Lcom/shuyu/gsyvideoplayer/utils/Debuger;->printfError(Ljava/lang/String;)V

    .line 672
    iget-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/c;->v:Z

    if-eqz v0, :cond_0

    .line 673
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/c;->g:Landroid/os/Handler;

    iget-object v1, p0, Lcom/shuyu/gsyvideoplayer/c;->a:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public getBufferedPercentage()I
    .locals 1

    .line 433
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/c;->l:Lcom/shuyu/gsyvideoplayer/e/b;

    if-eqz v0, :cond_0

    .line 434
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/c;->l:Lcom/shuyu/gsyvideoplayer/e/b;

    invoke-interface {v0}, Lcom/shuyu/gsyvideoplayer/e/b;->d()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getCurrentPosition()J
    .locals 2

    .line 505
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/c;->l:Lcom/shuyu/gsyvideoplayer/e/b;

    if-eqz v0, :cond_0

    .line 506
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/c;->l:Lcom/shuyu/gsyvideoplayer/e/b;

    invoke-interface {v0}, Lcom/shuyu/gsyvideoplayer/e/b;->l()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getCurrentVideoHeight()I
    .locals 1

    .line 369
    iget v0, p0, Lcom/shuyu/gsyvideoplayer/c;->o:I

    return v0
.end method

.method public getCurrentVideoWidth()I
    .locals 1

    .line 364
    iget v0, p0, Lcom/shuyu/gsyvideoplayer/c;->n:I

    return v0
.end method

.method public getDuration()J
    .locals 2

    .line 513
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/c;->l:Lcom/shuyu/gsyvideoplayer/e/b;

    if-eqz v0, :cond_0

    .line 514
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/c;->l:Lcom/shuyu/gsyvideoplayer/e/b;

    invoke-interface {v0}, Lcom/shuyu/gsyvideoplayer/e/b;->m()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getLastState()I
    .locals 1

    .line 354
    iget v0, p0, Lcom/shuyu/gsyvideoplayer/c;->p:I

    return v0
.end method

.method public getNetSpeed()J
    .locals 2

    .line 419
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/c;->l:Lcom/shuyu/gsyvideoplayer/e/b;

    if-eqz v0, :cond_0

    .line 420
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/c;->l:Lcom/shuyu/gsyvideoplayer/e/b;

    invoke-interface {v0}, Lcom/shuyu/gsyvideoplayer/e/b;->e()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getPlayPosition()I
    .locals 1

    .line 394
    iget v0, p0, Lcom/shuyu/gsyvideoplayer/c;->q:I

    return v0
.end method

.method public getPlayTag()Ljava/lang/String;
    .locals 1

    .line 384
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/c;->k:Ljava/lang/String;

    return-object v0
.end method

.method public getPlayer()Lcom/shuyu/gsyvideoplayer/e/b;
    .locals 1

    .line 448
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/c;->l:Lcom/shuyu/gsyvideoplayer/e/b;

    return-object v0
.end method

.method public getRotateInfoFlag()I
    .locals 1

    const/16 v0, 0x2711

    return v0
.end method

.method public getVideoHeight()I
    .locals 1

    .line 482
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/c;->l:Lcom/shuyu/gsyvideoplayer/e/b;

    if-eqz v0, :cond_0

    .line 483
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/c;->l:Lcom/shuyu/gsyvideoplayer/e/b;

    invoke-interface {v0}, Lcom/shuyu/gsyvideoplayer/e/b;->j()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getVideoSarDen()I
    .locals 1

    .line 529
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/c;->l:Lcom/shuyu/gsyvideoplayer/e/b;

    if-eqz v0, :cond_0

    .line 530
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/c;->l:Lcom/shuyu/gsyvideoplayer/e/b;

    invoke-interface {v0}, Lcom/shuyu/gsyvideoplayer/e/b;->o()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getVideoSarNum()I
    .locals 1

    .line 521
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/c;->l:Lcom/shuyu/gsyvideoplayer/e/b;

    if-eqz v0, :cond_0

    .line 522
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/c;->l:Lcom/shuyu/gsyvideoplayer/e/b;

    invoke-interface {v0}, Lcom/shuyu/gsyvideoplayer/e/b;->n()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getVideoWidth()I
    .locals 1

    .line 474
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/c;->l:Lcom/shuyu/gsyvideoplayer/e/b;

    if-eqz v0, :cond_0

    .line 475
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/c;->l:Lcom/shuyu/gsyvideoplayer/e/b;

    invoke-interface {v0}, Lcom/shuyu/gsyvideoplayer/e/b;->i()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isCacheFile()Z
    .locals 1

    .line 405
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/c;->m:Lcom/shuyu/gsyvideoplayer/b/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/c;->m:Lcom/shuyu/gsyvideoplayer/b/c;

    invoke-interface {v0}, Lcom/shuyu/gsyvideoplayer/b/c;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPlaying()Z
    .locals 1

    .line 490
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/c;->l:Lcom/shuyu/gsyvideoplayer/e/b;

    if-eqz v0, :cond_0

    .line 491
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/c;->l:Lcom/shuyu/gsyvideoplayer/e/b;

    invoke-interface {v0}, Lcom/shuyu/gsyvideoplayer/e/b;->k()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isSurfaceSupportLockCanvas()Z
    .locals 1

    .line 543
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/c;->l:Lcom/shuyu/gsyvideoplayer/e/b;

    if-eqz v0, :cond_0

    .line 544
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/c;->l:Lcom/shuyu/gsyvideoplayer/e/b;

    invoke-interface {v0}, Lcom/shuyu/gsyvideoplayer/e/b;->p()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public lastListener()Lcom/shuyu/gsyvideoplayer/c/a;
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/c;->i:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 179
    :cond_0
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/c;->i:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shuyu/gsyvideoplayer/c/a;

    return-object v0
.end method

.method public listener()Lcom/shuyu/gsyvideoplayer/c/a;
    .locals 1

    .line 170
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/c;->h:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/c;->h:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shuyu/gsyvideoplayer/c/a;

    return-object v0
.end method

.method public onBufferingUpdate(Ltv/danmaku/ijk/media/player/IMediaPlayer;I)V
    .locals 1

    .line 271
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/c;->g:Landroid/os/Handler;

    new-instance v0, Lcom/shuyu/gsyvideoplayer/c$3;

    invoke-direct {v0, p0, p2}, Lcom/shuyu/gsyvideoplayer/c$3;-><init>(Lcom/shuyu/gsyvideoplayer/c;I)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onCompletion(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V
    .locals 1

    .line 258
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/c;->g:Landroid/os/Handler;

    new-instance v0, Lcom/shuyu/gsyvideoplayer/c$2;

    invoke-direct {v0, p0}, Lcom/shuyu/gsyvideoplayer/c$2;-><init>(Lcom/shuyu/gsyvideoplayer/c;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onError(Ltv/danmaku/ijk/media/player/IMediaPlayer;II)Z
    .locals 1

    .line 300
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/c;->g:Landroid/os/Handler;

    new-instance v0, Lcom/shuyu/gsyvideoplayer/c$5;

    invoke-direct {v0, p0, p2, p3}, Lcom/shuyu/gsyvideoplayer/c$5;-><init>(Lcom/shuyu/gsyvideoplayer/c;II)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 p1, 0x1

    return p1
.end method

.method public onInfo(Ltv/danmaku/ijk/media/player/IMediaPlayer;II)Z
    .locals 1

    .line 314
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/c;->g:Landroid/os/Handler;

    new-instance v0, Lcom/shuyu/gsyvideoplayer/c$6;

    invoke-direct {v0, p0, p2, p3}, Lcom/shuyu/gsyvideoplayer/c$6;-><init>(Lcom/shuyu/gsyvideoplayer/c;II)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 p1, 0x0

    return p1
.end method

.method public onPrepared(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V
    .locals 1

    .line 245
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/c;->g:Landroid/os/Handler;

    new-instance v0, Lcom/shuyu/gsyvideoplayer/c$1;

    invoke-direct {v0, p0}, Lcom/shuyu/gsyvideoplayer/c$1;-><init>(Lcom/shuyu/gsyvideoplayer/c;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onSeekComplete(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V
    .locals 1

    .line 287
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/c;->g:Landroid/os/Handler;

    new-instance v0, Lcom/shuyu/gsyvideoplayer/c$4;

    invoke-direct {v0, p0}, Lcom/shuyu/gsyvideoplayer/c$4;-><init>(Lcom/shuyu/gsyvideoplayer/c;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onVideoSizeChanged(Ltv/danmaku/ijk/media/player/IMediaPlayer;IIII)V
    .locals 0

    .line 334
    invoke-interface {p1}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->getVideoWidth()I

    move-result p2

    iput p2, p0, Lcom/shuyu/gsyvideoplayer/c;->n:I

    .line 335
    invoke-interface {p1}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->getVideoHeight()I

    move-result p1

    iput p1, p0, Lcom/shuyu/gsyvideoplayer/c;->o:I

    .line 336
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/c;->g:Landroid/os/Handler;

    new-instance p2, Lcom/shuyu/gsyvideoplayer/c$7;

    invoke-direct {p2, p0}, Lcom/shuyu/gsyvideoplayer/c$7;-><init>(Lcom/shuyu/gsyvideoplayer/c;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public pause()V
    .locals 1

    .line 467
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/c;->l:Lcom/shuyu/gsyvideoplayer/e/b;

    if-eqz v0, :cond_0

    .line 468
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/c;->l:Lcom/shuyu/gsyvideoplayer/e/b;

    invoke-interface {v0}, Lcom/shuyu/gsyvideoplayer/e/b;->h()V

    :cond_0
    return-void
.end method

.method public prepare(Ljava/lang/String;Ljava/util/Map;ZFZLjava/io/File;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;ZFZ",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    .line 207
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 208
    :cond_0
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x0

    .line 209
    iput v1, v0, Landroid/os/Message;->what:I

    .line 210
    new-instance v1, Lcom/shuyu/gsyvideoplayer/d/a;

    move-object v2, v1

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    move-object v8, p6

    invoke-direct/range {v2 .. v8}, Lcom/shuyu/gsyvideoplayer/d/a;-><init>(Ljava/lang/String;Ljava/util/Map;ZFZLjava/io/File;)V

    .line 211
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 212
    invoke-virtual {p0, v0}, Lcom/shuyu/gsyvideoplayer/c;->a(Landroid/os/Message;)V

    .line 213
    iget-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/c;->v:Z

    if-eqz p1, :cond_1

    .line 214
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/c;->d()V

    :cond_1
    return-void
.end method

.method public releaseMediaPlayer()V
    .locals 2

    .line 220
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x2

    .line 221
    iput v1, v0, Landroid/os/Message;->what:I

    .line 222
    invoke-virtual {p0, v0}, Lcom/shuyu/gsyvideoplayer/c;->a(Landroid/os/Message;)V

    const-string v0, ""

    .line 223
    iput-object v0, p0, Lcom/shuyu/gsyvideoplayer/c;->k:Ljava/lang/String;

    const/16 v0, -0x16

    .line 224
    iput v0, p0, Lcom/shuyu/gsyvideoplayer/c;->q:I

    return-void
.end method

.method public releaseSurface(Landroid/view/Surface;)V
    .locals 2

    .line 237
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x3

    .line 238
    iput v1, v0, Landroid/os/Message;->what:I

    .line 239
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 240
    invoke-virtual {p0, v0}, Lcom/shuyu/gsyvideoplayer/c;->a(Landroid/os/Message;)V

    return-void
.end method

.method public seekTo(J)V
    .locals 1

    .line 498
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/c;->l:Lcom/shuyu/gsyvideoplayer/e/b;

    if-eqz v0, :cond_0

    .line 499
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/c;->l:Lcom/shuyu/gsyvideoplayer/e/b;

    invoke-interface {v0, p1, p2}, Lcom/shuyu/gsyvideoplayer/e/b;->a(J)V

    :cond_0
    return-void
.end method

.method public setCurrentVideoHeight(I)V
    .locals 0

    .line 374
    iput p1, p0, Lcom/shuyu/gsyvideoplayer/c;->o:I

    return-void
.end method

.method public setCurrentVideoWidth(I)V
    .locals 0

    .line 379
    iput p1, p0, Lcom/shuyu/gsyvideoplayer/c;->n:I

    return-void
.end method

.method public setDisplay(Landroid/view/Surface;)V
    .locals 2

    .line 229
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x1

    .line 230
    iput v1, v0, Landroid/os/Message;->what:I

    .line 231
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 232
    invoke-direct {p0, v0}, Lcom/shuyu/gsyvideoplayer/c;->d(Landroid/os/Message;)V

    return-void
.end method

.method public setLastListener(Lcom/shuyu/gsyvideoplayer/c/a;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 193
    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/c;->i:Ljava/lang/ref/WeakReference;

    goto :goto_0

    .line 195
    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/shuyu/gsyvideoplayer/c;->i:Ljava/lang/ref/WeakReference;

    :goto_0
    return-void
.end method

.method public setLastState(I)V
    .locals 0

    .line 359
    iput p1, p0, Lcom/shuyu/gsyvideoplayer/c;->p:I

    return-void
.end method

.method public setListener(Lcom/shuyu/gsyvideoplayer/c/a;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 185
    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/c;->h:Ljava/lang/ref/WeakReference;

    goto :goto_0

    .line 187
    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/shuyu/gsyvideoplayer/c;->h:Ljava/lang/ref/WeakReference;

    :goto_0
    return-void
.end method

.method public setPlayPosition(I)V
    .locals 0

    .line 399
    iput p1, p0, Lcom/shuyu/gsyvideoplayer/c;->q:I

    return-void
.end method

.method public setPlayTag(Ljava/lang/String;)V
    .locals 0

    .line 389
    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/c;->k:Ljava/lang/String;

    return-void
.end method

.method public setSpeed(FZ)V
    .locals 1

    .line 200
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/c;->l:Lcom/shuyu/gsyvideoplayer/e/b;

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/c;->l:Lcom/shuyu/gsyvideoplayer/e/b;

    invoke-interface {v0, p1, p2}, Lcom/shuyu/gsyvideoplayer/e/b;->a(FZ)V

    :cond_0
    return-void
.end method

.method public setSpeedPlaying(FZ)V
    .locals 1

    .line 441
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/c;->l:Lcom/shuyu/gsyvideoplayer/e/b;

    if-eqz v0, :cond_0

    .line 442
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/c;->l:Lcom/shuyu/gsyvideoplayer/e/b;

    invoke-interface {v0, p1, p2}, Lcom/shuyu/gsyvideoplayer/e/b;->b(FZ)V

    :cond_0
    return-void
.end method

.method public start()V
    .locals 1

    .line 453
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/c;->l:Lcom/shuyu/gsyvideoplayer/e/b;

    if-eqz v0, :cond_0

    .line 454
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/c;->l:Lcom/shuyu/gsyvideoplayer/e/b;

    invoke-interface {v0}, Lcom/shuyu/gsyvideoplayer/e/b;->f()V

    :cond_0
    return-void
.end method

.method public stop()V
    .locals 1

    .line 460
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/c;->l:Lcom/shuyu/gsyvideoplayer/e/b;

    if-eqz v0, :cond_0

    .line 461
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/c;->l:Lcom/shuyu/gsyvideoplayer/e/b;

    invoke-interface {v0}, Lcom/shuyu/gsyvideoplayer/e/b;->g()V

    :cond_0
    return-void
.end method
