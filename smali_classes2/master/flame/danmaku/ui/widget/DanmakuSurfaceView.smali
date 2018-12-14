.class public Lmaster/flame/danmaku/ui/widget/DanmakuSurfaceView;
.super Landroid/view/SurfaceView;
.source "DanmakuSurfaceView.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;
.implements Lmaster/flame/danmaku/a/f;
.implements Lmaster/flame/danmaku/a/g;


# instance fields
.field protected a:I

.field private b:Lmaster/flame/danmaku/a/c$a;

.field private c:Landroid/view/SurfaceHolder;

.field private d:Landroid/os/HandlerThread;

.field private e:Lmaster/flame/danmaku/a/c;

.field private f:Z

.field private g:Z

.field private h:Lmaster/flame/danmaku/a/f$a;

.field private i:F

.field private j:F

.field private k:Lmaster/flame/danmaku/ui/widget/a;

.field private l:Z

.field private m:Z

.field private n:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 78
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 61
    iput-boolean p1, p0, Lmaster/flame/danmaku/ui/widget/DanmakuSurfaceView;->g:Z

    .line 73
    iput-boolean p1, p0, Lmaster/flame/danmaku/ui/widget/DanmakuSurfaceView;->m:Z

    const/4 p1, 0x0

    .line 75
    iput p1, p0, Lmaster/flame/danmaku/ui/widget/DanmakuSurfaceView;->a:I

    .line 79
    invoke-direct {p0}, Lmaster/flame/danmaku/ui/widget/DanmakuSurfaceView;->o()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 95
    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 61
    iput-boolean p1, p0, Lmaster/flame/danmaku/ui/widget/DanmakuSurfaceView;->g:Z

    .line 73
    iput-boolean p1, p0, Lmaster/flame/danmaku/ui/widget/DanmakuSurfaceView;->m:Z

    const/4 p1, 0x0

    .line 75
    iput p1, p0, Lmaster/flame/danmaku/ui/widget/DanmakuSurfaceView;->a:I

    .line 96
    invoke-direct {p0}, Lmaster/flame/danmaku/ui/widget/DanmakuSurfaceView;->o()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 100
    invoke-direct {p0, p1, p2, p3}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    .line 61
    iput-boolean p1, p0, Lmaster/flame/danmaku/ui/widget/DanmakuSurfaceView;->g:Z

    .line 73
    iput-boolean p1, p0, Lmaster/flame/danmaku/ui/widget/DanmakuSurfaceView;->m:Z

    const/4 p1, 0x0

    .line 75
    iput p1, p0, Lmaster/flame/danmaku/ui/widget/DanmakuSurfaceView;->a:I

    .line 101
    invoke-direct {p0}, Lmaster/flame/danmaku/ui/widget/DanmakuSurfaceView;->o()V

    return-void
.end method

.method private o()V
    .locals 3

    const/4 v0, 0x1

    .line 83
    invoke-virtual {p0, v0}, Lmaster/flame/danmaku/ui/widget/DanmakuSurfaceView;->setZOrderMediaOverlay(Z)V

    .line 84
    invoke-virtual {p0, v0}, Lmaster/flame/danmaku/ui/widget/DanmakuSurfaceView;->setWillNotCacheDrawing(Z)V

    const/4 v1, 0x0

    .line 85
    invoke-virtual {p0, v1}, Lmaster/flame/danmaku/ui/widget/DanmakuSurfaceView;->setDrawingCacheEnabled(Z)V

    .line 86
    invoke-virtual {p0, v0}, Lmaster/flame/danmaku/ui/widget/DanmakuSurfaceView;->setWillNotDraw(Z)V

    .line 87
    invoke-virtual {p0}, Lmaster/flame/danmaku/ui/widget/DanmakuSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    iput-object v1, p0, Lmaster/flame/danmaku/ui/widget/DanmakuSurfaceView;->c:Landroid/view/SurfaceHolder;

    .line 88
    iget-object v1, p0, Lmaster/flame/danmaku/ui/widget/DanmakuSurfaceView;->c:Landroid/view/SurfaceHolder;

    invoke-interface {v1, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 89
    iget-object v1, p0, Lmaster/flame/danmaku/ui/widget/DanmakuSurfaceView;->c:Landroid/view/SurfaceHolder;

    const/4 v2, -0x2

    invoke-interface {v1, v2}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 90
    invoke-static {v0, v0}, Lmaster/flame/danmaku/a/d;->a(ZZ)V

    .line 91
    invoke-static {p0}, Lmaster/flame/danmaku/ui/widget/a;->a(Lmaster/flame/danmaku/a/f;)Lmaster/flame/danmaku/ui/widget/a;

    move-result-object v0

    iput-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuSurfaceView;->k:Lmaster/flame/danmaku/ui/widget/a;

    return-void
.end method

.method private declared-synchronized p()V
    .locals 2

    monitor-enter p0

    .line 181
    :try_start_0
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuSurfaceView;->e:Lmaster/flame/danmaku/a/c;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuSurfaceView;->e:Lmaster/flame/danmaku/a/c;

    invoke-virtual {v0}, Lmaster/flame/danmaku/a/c;->a()V

    .line 183
    iput-object v1, p0, Lmaster/flame/danmaku/ui/widget/DanmakuSurfaceView;->e:Lmaster/flame/danmaku/a/c;

    .line 185
    :cond_0
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuSurfaceView;->d:Landroid/os/HandlerThread;

    .line 186
    iput-object v1, p0, Lmaster/flame/danmaku/ui/widget/DanmakuSurfaceView;->d:Landroid/os/HandlerThread;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 189
    :try_start_1
    invoke-virtual {v0}, Landroid/os/HandlerThread;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 191
    :try_start_2
    invoke-static {v1}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    .line 193
    :goto_0
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 195
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 180
    monitor-exit p0

    throw v0
.end method

.method private q()V
    .locals 3

    .line 225
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuSurfaceView;->e:Lmaster/flame/danmaku/a/c;

    if-nez v0, :cond_0

    .line 226
    new-instance v0, Lmaster/flame/danmaku/a/c;

    iget v1, p0, Lmaster/flame/danmaku/ui/widget/DanmakuSurfaceView;->a:I

    invoke-virtual {p0, v1}, Lmaster/flame/danmaku/ui/widget/DanmakuSurfaceView;->a(I)Landroid/os/Looper;

    move-result-object v1

    iget-boolean v2, p0, Lmaster/flame/danmaku/ui/widget/DanmakuSurfaceView;->m:Z

    invoke-direct {v0, v1, p0, v2}, Lmaster/flame/danmaku/a/c;-><init>(Landroid/os/Looper;Lmaster/flame/danmaku/a/g;Z)V

    iput-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuSurfaceView;->e:Lmaster/flame/danmaku/a/c;

    :cond_0
    return-void
.end method

.method private r()F
    .locals 8

    .line 259
    invoke-static {}, Lmaster/flame/danmaku/danmaku/c/c;->a()J

    move-result-wide v0

    .line 260
    iget-object v2, p0, Lmaster/flame/danmaku/ui/widget/DanmakuSurfaceView;->n:Ljava/util/LinkedList;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 261
    iget-object v2, p0, Lmaster/flame/danmaku/ui/widget/DanmakuSurfaceView;->n:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->peekFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return v3

    .line 265
    :cond_0
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long v6, v0, v4

    long-to-float v0, v6

    .line 266
    iget-object v1, p0, Lmaster/flame/danmaku/ui/widget/DanmakuSurfaceView;->n:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    const/16 v2, 0x32

    if-le v1, v2, :cond_1

    .line 268
    iget-object v1, p0, Lmaster/flame/danmaku/ui/widget/DanmakuSurfaceView;->n:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    :cond_1
    cmpl-float v1, v0, v3

    if-lez v1, :cond_2

    .line 270
    iget-object v1, p0, Lmaster/flame/danmaku/ui/widget/DanmakuSurfaceView;->n:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    int-to-float v1, v1

    div-float v3, v1, v0

    :cond_2
    return v3
.end method


# virtual methods
.method protected declared-synchronized a(I)Landroid/os/Looper;
    .locals 2

    monitor-enter p0

    .line 198
    :try_start_0
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuSurfaceView;->d:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuSurfaceView;->d:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    const/4 v0, 0x0

    .line 200
    iput-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuSurfaceView;->d:Landroid/os/HandlerThread;

    :cond_0
    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    goto :goto_0

    :pswitch_0
    const/16 p1, 0x13

    goto :goto_0

    :pswitch_1
    const/4 p1, -0x8

    goto :goto_0

    .line 206
    :pswitch_2
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    .line 218
    :goto_0
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DFM Handler Thread #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 219
    new-instance v1, Landroid/os/HandlerThread;

    invoke-direct {v1, v0, p1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v1, p0, Lmaster/flame/danmaku/ui/widget/DanmakuSurfaceView;->d:Landroid/os/HandlerThread;

    .line 220
    iget-object p1, p0, Lmaster/flame/danmaku/ui/widget/DanmakuSurfaceView;->d:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 221
    iget-object p1, p0, Lmaster/flame/danmaku/ui/widget/DanmakuSurfaceView;->d:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    .line 197
    monitor-exit p0

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public a()V
    .locals 0

    .line 177
    invoke-direct {p0}, Lmaster/flame/danmaku/ui/widget/DanmakuSurfaceView;->p()V

    return-void
.end method

.method public a(J)V
    .locals 2

    .line 347
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuSurfaceView;->e:Lmaster/flame/danmaku/a/c;

    if-nez v0, :cond_0

    .line 348
    invoke-direct {p0}, Lmaster/flame/danmaku/ui/widget/DanmakuSurfaceView;->q()V

    goto :goto_0

    .line 350
    :cond_0
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuSurfaceView;->e:Lmaster/flame/danmaku/a/c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmaster/flame/danmaku/a/c;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 352
    :goto_0
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuSurfaceView;->e:Lmaster/flame/danmaku/a/c;

    const/4 v1, 0x1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lmaster/flame/danmaku/a/c;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public a(Ljava/lang/Long;)V
    .locals 1

    .line 365
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuSurfaceView;->e:Lmaster/flame/danmaku/a/c;

    if-eqz v0, :cond_0

    .line 366
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuSurfaceView;->e:Lmaster/flame/danmaku/a/c;

    invoke-virtual {v0, p1}, Lmaster/flame/danmaku/a/c;->a(Ljava/lang/Long;)V

    :cond_0
    return-void
.end method

.method public a(Lmaster/flame/danmaku/danmaku/a/a;Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;)V
    .locals 1

    .line 231
    invoke-direct {p0}, Lmaster/flame/danmaku/ui/widget/DanmakuSurfaceView;->q()V

    .line 232
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuSurfaceView;->e:Lmaster/flame/danmaku/a/c;

    invoke-virtual {v0, p2}, Lmaster/flame/danmaku/a/c;->a(Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;)V

    .line 233
    iget-object p2, p0, Lmaster/flame/danmaku/ui/widget/DanmakuSurfaceView;->e:Lmaster/flame/danmaku/a/c;

    invoke-virtual {p2, p1}, Lmaster/flame/danmaku/a/c;->a(Lmaster/flame/danmaku/danmaku/a/a;)V

    .line 234
    iget-object p1, p0, Lmaster/flame/danmaku/ui/widget/DanmakuSurfaceView;->e:Lmaster/flame/danmaku/a/c;

    iget-object p2, p0, Lmaster/flame/danmaku/ui/widget/DanmakuSurfaceView;->b:Lmaster/flame/danmaku/a/c$a;

    invoke-virtual {p1, p2}, Lmaster/flame/danmaku/a/c;->a(Lmaster/flame/danmaku/a/c$a;)V

    .line 235
    iget-object p1, p0, Lmaster/flame/danmaku/ui/widget/DanmakuSurfaceView;->e:Lmaster/flame/danmaku/a/c;

    invoke-virtual {p1}, Lmaster/flame/danmaku/a/c;->e()V

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 371
    iput-boolean p1, p0, Lmaster/flame/danmaku/ui/widget/DanmakuSurfaceView;->g:Z

    return-void
.end method

.method public b()V
    .locals 0

    .line 336
    invoke-virtual {p0}, Lmaster/flame/danmaku/ui/widget/DanmakuSurfaceView;->a()V

    .line 337
    invoke-virtual {p0}, Lmaster/flame/danmaku/ui/widget/DanmakuSurfaceView;->e()V

    return-void
.end method

.method public b(Ljava/lang/Long;)V
    .locals 1

    const/4 v0, 0x1

    .line 406
    iput-boolean v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuSurfaceView;->m:Z

    .line 407
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuSurfaceView;->e:Lmaster/flame/danmaku/a/c;

    if-nez v0, :cond_0

    return-void

    .line 410
    :cond_0
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuSurfaceView;->e:Lmaster/flame/danmaku/a/c;

    invoke-virtual {v0, p1}, Lmaster/flame/danmaku/a/c;->b(Ljava/lang/Long;)V

    return-void
.end method

.method public b(Lmaster/flame/danmaku/danmaku/model/d;)V
    .locals 1

    .line 105
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuSurfaceView;->e:Lmaster/flame/danmaku/a/c;

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuSurfaceView;->e:Lmaster/flame/danmaku/a/c;

    invoke-virtual {v0, p1}, Lmaster/flame/danmaku/a/c;->a(Lmaster/flame/danmaku/danmaku/model/d;)V

    :cond_0
    return-void
.end method

.method public c()Z
    .locals 1

    .line 240
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuSurfaceView;->e:Lmaster/flame/danmaku/a/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuSurfaceView;->e:Lmaster/flame/danmaku/a/c;

    invoke-virtual {v0}, Lmaster/flame/danmaku/a/c;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public d()Z
    .locals 1

    .line 329
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuSurfaceView;->e:Lmaster/flame/danmaku/a/c;

    if-eqz v0, :cond_0

    .line 330
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuSurfaceView;->e:Lmaster/flame/danmaku/a/c;

    invoke-virtual {v0}, Lmaster/flame/danmaku/a/c;->b()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public e()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 342
    invoke-virtual {p0, v0, v1}, Lmaster/flame/danmaku/ui/widget/DanmakuSurfaceView;->a(J)V

    return-void
.end method

.method public f()V
    .locals 1

    .line 314
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuSurfaceView;->e:Lmaster/flame/danmaku/a/c;

    if-eqz v0, :cond_0

    .line 315
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuSurfaceView;->e:Lmaster/flame/danmaku/a/c;

    invoke-virtual {v0}, Lmaster/flame/danmaku/a/c;->f()V

    :cond_0
    return-void
.end method

.method public g()V
    .locals 1

    .line 320
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuSurfaceView;->e:Lmaster/flame/danmaku/a/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuSurfaceView;->e:Lmaster/flame/danmaku/a/c;

    invoke-virtual {v0}, Lmaster/flame/danmaku/a/c;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 321
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuSurfaceView;->e:Lmaster/flame/danmaku/a/c;

    invoke-virtual {v0}, Lmaster/flame/danmaku/a/c;->d()V

    goto :goto_0

    .line 322
    :cond_0
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuSurfaceView;->e:Lmaster/flame/danmaku/a/c;

    if-nez v0, :cond_1

    .line 323
    invoke-virtual {p0}, Lmaster/flame/danmaku/ui/widget/DanmakuSurfaceView;->b()V

    :cond_1
    :goto_0
    return-void
.end method

.method public getConfig()Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;
    .locals 1

    .line 245
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuSurfaceView;->e:Lmaster/flame/danmaku/a/c;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 248
    :cond_0
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuSurfaceView;->e:Lmaster/flame/danmaku/a/c;

    invoke-virtual {v0}, Lmaster/flame/danmaku/a/c;->i()Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentTime()J
    .locals 2

    .line 487
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuSurfaceView;->e:Lmaster/flame/danmaku/a/c;

    if-eqz v0, :cond_0

    .line 488
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuSurfaceView;->e:Lmaster/flame/danmaku/a/c;

    invoke-virtual {v0}, Lmaster/flame/danmaku/a/c;->h()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getCurrentVisibleDanmakus()Lmaster/flame/danmaku/danmaku/model/l;
    .locals 1

    .line 133
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuSurfaceView;->e:Lmaster/flame/danmaku/a/c;

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuSurfaceView;->e:Lmaster/flame/danmaku/a/c;

    invoke-virtual {v0}, Lmaster/flame/danmaku/a/c;->g()Lmaster/flame/danmaku/danmaku/model/l;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getOnDanmakuClickListener()Lmaster/flame/danmaku/a/f$a;
    .locals 1

    .line 445
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuSurfaceView;->h:Lmaster/flame/danmaku/a/f$a;

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 0

    return-object p0
.end method

.method public getViewHeight()I
    .locals 1

    .line 391
    invoke-super {p0}, Landroid/view/SurfaceView;->getHeight()I

    move-result v0

    return v0
.end method

.method public getViewWidth()I
    .locals 1

    .line 386
    invoke-super {p0}, Landroid/view/SurfaceView;->getWidth()I

    move-result v0

    return v0
.end method

.method public getXOff()F
    .locals 1

    .line 450
    iget v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuSurfaceView;->i:F

    return v0
.end method

.method public getYOff()F
    .locals 1

    .line 455
    iget v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuSurfaceView;->j:F

    return v0
.end method

.method public h()V
    .locals 1

    .line 171
    invoke-virtual {p0}, Lmaster/flame/danmaku/ui/widget/DanmakuSurfaceView;->a()V

    .line 172
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuSurfaceView;->n:Ljava/util/LinkedList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuSurfaceView;->n:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    :cond_0
    return-void
.end method

.method public i()V
    .locals 1

    const/4 v0, 0x0

    .line 401
    invoke-virtual {p0, v0}, Lmaster/flame/danmaku/ui/widget/DanmakuSurfaceView;->b(Ljava/lang/Long;)V

    return-void
.end method

.method public isHardwareAccelerated()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isShown()Z
    .locals 1

    .line 477
    iget-boolean v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuSurfaceView;->m:Z

    if-eqz v0, :cond_0

    invoke-super {p0}, Landroid/view/SurfaceView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public j()V
    .locals 2

    const/4 v0, 0x0

    .line 415
    iput-boolean v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuSurfaceView;->m:Z

    .line 416
    iget-object v1, p0, Lmaster/flame/danmaku/ui/widget/DanmakuSurfaceView;->e:Lmaster/flame/danmaku/a/c;

    if-nez v1, :cond_0

    return-void

    .line 419
    :cond_0
    iget-object v1, p0, Lmaster/flame/danmaku/ui/widget/DanmakuSurfaceView;->e:Lmaster/flame/danmaku/a/c;

    invoke-virtual {v1, v0}, Lmaster/flame/danmaku/a/c;->c(Z)J

    return-void
.end method

.method public k()Z
    .locals 1

    .line 381
    iget-boolean v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuSurfaceView;->f:Z

    return v0
.end method

.method public l()J
    .locals 12

    .line 274
    iget-boolean v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuSurfaceView;->f:Z

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 276
    :cond_0
    invoke-virtual {p0}, Lmaster/flame/danmaku/ui/widget/DanmakuSurfaceView;->isShown()Z

    move-result v0

    if-nez v0, :cond_1

    const-wide/16 v0, -0x1

    return-wide v0

    .line 278
    :cond_1
    invoke-static {}, Lmaster/flame/danmaku/danmaku/c/c;->a()J

    move-result-wide v0

    .line 280
    iget-object v2, p0, Lmaster/flame/danmaku/ui/widget/DanmakuSurfaceView;->c:Landroid/view/SurfaceHolder;

    invoke-interface {v2}, Landroid/view/SurfaceHolder;->lockCanvas()Landroid/graphics/Canvas;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 282
    iget-object v3, p0, Lmaster/flame/danmaku/ui/widget/DanmakuSurfaceView;->e:Lmaster/flame/danmaku/a/c;

    if-eqz v3, :cond_3

    .line 283
    iget-object v3, p0, Lmaster/flame/danmaku/ui/widget/DanmakuSurfaceView;->e:Lmaster/flame/danmaku/a/c;

    invoke-virtual {v3, v2}, Lmaster/flame/danmaku/a/c;->a(Landroid/graphics/Canvas;)Lmaster/flame/danmaku/danmaku/b/a$b;

    move-result-object v3

    .line 284
    iget-boolean v4, p0, Lmaster/flame/danmaku/ui/widget/DanmakuSurfaceView;->l:Z

    if-eqz v4, :cond_3

    .line 285
    iget-object v4, p0, Lmaster/flame/danmaku/ui/widget/DanmakuSurfaceView;->n:Ljava/util/LinkedList;

    if-nez v4, :cond_2

    .line 286
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    iput-object v4, p0, Lmaster/flame/danmaku/ui/widget/DanmakuSurfaceView;->n:Ljava/util/LinkedList;

    .line 287
    :cond_2
    invoke-static {}, Lmaster/flame/danmaku/danmaku/c/c;->a()J

    .line 288
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    const-string v5, "fps %.2f,time:%d s,cache:%d,miss:%d"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    .line 289
    invoke-direct {p0}, Lmaster/flame/danmaku/ui/widget/DanmakuSurfaceView;->r()F

    move-result v8

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-virtual {p0}, Lmaster/flame/danmaku/ui/widget/DanmakuSurfaceView;->getCurrentTime()J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    div-long/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    iget-wide v8, v3, Lmaster/flame/danmaku/danmaku/b/a$b;->r:J

    .line 290
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x3

    iget-wide v8, v3, Lmaster/flame/danmaku/danmaku/b/a$b;->s:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v6, v7

    .line 288
    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 291
    invoke-static {v2, v3}, Lmaster/flame/danmaku/a/d;->a(Landroid/graphics/Canvas;Ljava/lang/String;)V

    .line 294
    :cond_3
    iget-boolean v3, p0, Lmaster/flame/danmaku/ui/widget/DanmakuSurfaceView;->f:Z

    if-eqz v3, :cond_4

    .line 295
    iget-object v3, p0, Lmaster/flame/danmaku/ui/widget/DanmakuSurfaceView;->c:Landroid/view/SurfaceHolder;

    invoke-interface {v3, v2}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 297
    :cond_4
    invoke-static {}, Lmaster/flame/danmaku/danmaku/c/c;->a()J

    move-result-wide v2

    sub-long v4, v2, v0

    return-wide v4
.end method

.method public m()V
    .locals 2

    .line 465
    invoke-virtual {p0}, Lmaster/flame/danmaku/ui/widget/DanmakuSurfaceView;->k()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 468
    :cond_0
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuSurfaceView;->c:Landroid/view/SurfaceHolder;

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->lockCanvas()Landroid/graphics/Canvas;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 470
    invoke-static {v0}, Lmaster/flame/danmaku/a/d;->a(Landroid/graphics/Canvas;)V

    .line 471
    iget-object v1, p0, Lmaster/flame/danmaku/ui/widget/DanmakuSurfaceView;->c:Landroid/view/SurfaceHolder;

    invoke-interface {v1, v0}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    :cond_1
    return-void
.end method

.method public n()Z
    .locals 1

    .line 376
    iget-boolean v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuSurfaceView;->g:Z

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 357
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuSurfaceView;->k:Lmaster/flame/danmaku/ui/widget/a;

    invoke-virtual {v0, p1}, Lmaster/flame/danmaku/ui/widget/a;->a(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 359
    invoke-super {p0, p1}, Landroid/view/SurfaceView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_0
    return v0
.end method

.method public setCallback(Lmaster/flame/danmaku/a/c$a;)V
    .locals 1

    .line 141
    iput-object p1, p0, Lmaster/flame/danmaku/ui/widget/DanmakuSurfaceView;->b:Lmaster/flame/danmaku/a/c$a;

    .line 142
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuSurfaceView;->e:Lmaster/flame/danmaku/a/c;

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuSurfaceView;->e:Lmaster/flame/danmaku/a/c;

    invoke-virtual {v0, p1}, Lmaster/flame/danmaku/a/c;->a(Lmaster/flame/danmaku/a/c$a;)V

    :cond_0
    return-void
.end method

.method public setDrawingThreadType(I)V
    .locals 0

    .line 482
    iput p1, p0, Lmaster/flame/danmaku/ui/widget/DanmakuSurfaceView;->a:I

    return-void
.end method

.method public setOnDanmakuClickListener(Lmaster/flame/danmaku/a/f$a;)V
    .locals 0

    .line 433
    iput-object p1, p0, Lmaster/flame/danmaku/ui/widget/DanmakuSurfaceView;->h:Lmaster/flame/danmaku/a/f$a;

    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    .line 159
    iget-object p1, p0, Lmaster/flame/danmaku/ui/widget/DanmakuSurfaceView;->e:Lmaster/flame/danmaku/a/c;

    if-eqz p1, :cond_0

    .line 160
    iget-object p1, p0, Lmaster/flame/danmaku/ui/widget/DanmakuSurfaceView;->e:Lmaster/flame/danmaku/a/c;

    invoke-virtual {p1, p3, p4}, Lmaster/flame/danmaku/a/c;->a(II)V

    :cond_0
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1

    const/4 v0, 0x1

    .line 149
    iput-boolean v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuSurfaceView;->f:Z

    .line 150
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->lockCanvas()Landroid/graphics/Canvas;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 152
    invoke-static {v0}, Lmaster/flame/danmaku/a/d;->a(Landroid/graphics/Canvas;)V

    .line 153
    invoke-interface {p1, v0}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0

    const/4 p1, 0x0

    .line 166
    iput-boolean p1, p0, Lmaster/flame/danmaku/ui/widget/DanmakuSurfaceView;->f:Z

    return-void
.end method
