.class public Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;
.super Landroid/view/TextureView;
.source "DanmakuTextureView.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;
.implements Lmaster/flame/danmaku/a/f;
.implements Lmaster/flame/danmaku/a/g;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# instance fields
.field protected a:I

.field private b:Lmaster/flame/danmaku/a/c$a;

.field private c:Landroid/os/HandlerThread;

.field private d:Lmaster/flame/danmaku/a/c;

.field private e:Z

.field private f:Z

.field private g:Lmaster/flame/danmaku/a/f$a;

.field private h:F

.field private i:F

.field private j:Lmaster/flame/danmaku/ui/widget/a;

.field private k:Z

.field private l:Z

.field private m:Ljava/util/LinkedList;
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

    .line 83
    invoke-direct {p0, p1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 66
    iput-boolean p1, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->f:Z

    .line 78
    iput-boolean p1, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->l:Z

    const/4 p1, 0x0

    .line 80
    iput p1, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->a:I

    .line 84
    invoke-direct {p0}, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->o()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 100
    invoke-direct {p0, p1, p2}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 66
    iput-boolean p1, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->f:Z

    .line 78
    iput-boolean p1, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->l:Z

    const/4 p1, 0x0

    .line 80
    iput p1, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->a:I

    .line 101
    invoke-direct {p0}, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->o()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 105
    invoke-direct {p0, p1, p2, p3}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    .line 66
    iput-boolean p1, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->f:Z

    .line 78
    iput-boolean p1, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->l:Z

    const/4 p1, 0x0

    .line 80
    iput p1, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->a:I

    .line 106
    invoke-direct {p0}, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->o()V

    return-void
.end method

.method private o()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 89
    invoke-virtual {p0, v0, v1}, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->setLayerType(ILandroid/graphics/Paint;)V

    const/4 v0, 0x0

    .line 90
    invoke-virtual {p0, v0}, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->setOpaque(Z)V

    const/4 v1, 0x1

    .line 91
    invoke-virtual {p0, v1}, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->setWillNotCacheDrawing(Z)V

    .line 92
    invoke-virtual {p0, v0}, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->setDrawingCacheEnabled(Z)V

    .line 93
    invoke-virtual {p0, v1}, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->setWillNotDraw(Z)V

    .line 94
    invoke-virtual {p0, p0}, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 95
    invoke-static {v1, v1}, Lmaster/flame/danmaku/a/d;->a(ZZ)V

    .line 96
    invoke-static {p0}, Lmaster/flame/danmaku/ui/widget/a;->a(Lmaster/flame/danmaku/a/f;)Lmaster/flame/danmaku/ui/widget/a;

    move-result-object v0

    iput-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->j:Lmaster/flame/danmaku/ui/widget/a;

    return-void
.end method

.method private declared-synchronized p()V
    .locals 2

    monitor-enter p0

    .line 187
    :try_start_0
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->d:Lmaster/flame/danmaku/a/c;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->d:Lmaster/flame/danmaku/a/c;

    invoke-virtual {v0}, Lmaster/flame/danmaku/a/c;->a()V

    .line 189
    iput-object v1, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->d:Lmaster/flame/danmaku/a/c;

    .line 191
    :cond_0
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->c:Landroid/os/HandlerThread;

    .line 192
    iput-object v1, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->c:Landroid/os/HandlerThread;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 195
    :try_start_1
    invoke-virtual {v0}, Landroid/os/HandlerThread;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 197
    :try_start_2
    invoke-static {v1}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    .line 199
    :goto_0
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 201
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 186
    monitor-exit p0

    throw v0
.end method

.method private q()V
    .locals 3

    .line 231
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->d:Lmaster/flame/danmaku/a/c;

    if-nez v0, :cond_0

    .line 232
    new-instance v0, Lmaster/flame/danmaku/a/c;

    iget v1, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->a:I

    invoke-virtual {p0, v1}, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->a(I)Landroid/os/Looper;

    move-result-object v1

    iget-boolean v2, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->l:Z

    invoke-direct {v0, v1, p0, v2}, Lmaster/flame/danmaku/a/c;-><init>(Landroid/os/Looper;Lmaster/flame/danmaku/a/g;Z)V

    iput-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->d:Lmaster/flame/danmaku/a/c;

    :cond_0
    return-void
.end method

.method private r()F
    .locals 8

    .line 265
    invoke-static {}, Lmaster/flame/danmaku/danmaku/c/c;->a()J

    move-result-wide v0

    .line 266
    iget-object v2, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->m:Ljava/util/LinkedList;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 267
    iget-object v2, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->m:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->peekFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return v3

    .line 271
    :cond_0
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long v6, v0, v4

    long-to-float v0, v6

    .line 272
    iget-object v1, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->m:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    const/16 v2, 0x32

    if-le v1, v2, :cond_1

    .line 274
    iget-object v1, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->m:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    :cond_1
    cmpl-float v1, v0, v3

    if-lez v1, :cond_2

    .line 276
    iget-object v1, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->m:Ljava/util/LinkedList;

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

    .line 204
    :try_start_0
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->c:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->c:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    const/4 v0, 0x0

    .line 206
    iput-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->c:Landroid/os/HandlerThread;

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

    .line 212
    :pswitch_2
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    .line 224
    :goto_0
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DFM Handler Thread #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 225
    new-instance v1, Landroid/os/HandlerThread;

    invoke-direct {v1, v0, p1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v1, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->c:Landroid/os/HandlerThread;

    .line 226
    iget-object p1, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->c:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 227
    iget-object p1, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->c:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    .line 203
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

    .line 183
    invoke-direct {p0}, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->p()V

    return-void
.end method

.method public a(J)V
    .locals 2

    .line 354
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->d:Lmaster/flame/danmaku/a/c;

    if-nez v0, :cond_0

    .line 355
    invoke-direct {p0}, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->q()V

    goto :goto_0

    .line 357
    :cond_0
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->d:Lmaster/flame/danmaku/a/c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmaster/flame/danmaku/a/c;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 359
    :goto_0
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->d:Lmaster/flame/danmaku/a/c;

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

    .line 372
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->d:Lmaster/flame/danmaku/a/c;

    if-eqz v0, :cond_0

    .line 373
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->d:Lmaster/flame/danmaku/a/c;

    invoke-virtual {v0, p1}, Lmaster/flame/danmaku/a/c;->a(Ljava/lang/Long;)V

    :cond_0
    return-void
.end method

.method public a(Lmaster/flame/danmaku/danmaku/a/a;Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;)V
    .locals 1

    .line 237
    invoke-direct {p0}, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->q()V

    .line 238
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->d:Lmaster/flame/danmaku/a/c;

    invoke-virtual {v0, p2}, Lmaster/flame/danmaku/a/c;->a(Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;)V

    .line 239
    iget-object p2, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->d:Lmaster/flame/danmaku/a/c;

    invoke-virtual {p2, p1}, Lmaster/flame/danmaku/a/c;->a(Lmaster/flame/danmaku/danmaku/a/a;)V

    .line 240
    iget-object p1, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->d:Lmaster/flame/danmaku/a/c;

    iget-object p2, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->b:Lmaster/flame/danmaku/a/c$a;

    invoke-virtual {p1, p2}, Lmaster/flame/danmaku/a/c;->a(Lmaster/flame/danmaku/a/c$a;)V

    .line 241
    iget-object p1, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->d:Lmaster/flame/danmaku/a/c;

    invoke-virtual {p1}, Lmaster/flame/danmaku/a/c;->e()V

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 378
    iput-boolean p1, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->f:Z

    return-void
.end method

.method public b()V
    .locals 0

    .line 343
    invoke-virtual {p0}, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->a()V

    .line 344
    invoke-virtual {p0}, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->e()V

    return-void
.end method

.method public b(Ljava/lang/Long;)V
    .locals 1

    const/4 v0, 0x1

    .line 413
    iput-boolean v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->l:Z

    .line 414
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->d:Lmaster/flame/danmaku/a/c;

    if-nez v0, :cond_0

    return-void

    .line 417
    :cond_0
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->d:Lmaster/flame/danmaku/a/c;

    invoke-virtual {v0, p1}, Lmaster/flame/danmaku/a/c;->b(Ljava/lang/Long;)V

    return-void
.end method

.method public b(Lmaster/flame/danmaku/danmaku/model/d;)V
    .locals 1

    .line 110
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->d:Lmaster/flame/danmaku/a/c;

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->d:Lmaster/flame/danmaku/a/c;

    invoke-virtual {v0, p1}, Lmaster/flame/danmaku/a/c;->a(Lmaster/flame/danmaku/danmaku/model/d;)V

    :cond_0
    return-void
.end method

.method public c()Z
    .locals 1

    .line 246
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->d:Lmaster/flame/danmaku/a/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->d:Lmaster/flame/danmaku/a/c;

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

    .line 336
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->d:Lmaster/flame/danmaku/a/c;

    if-eqz v0, :cond_0

    .line 337
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->d:Lmaster/flame/danmaku/a/c;

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

    .line 349
    invoke-virtual {p0, v0, v1}, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->a(J)V

    return-void
.end method

.method public f()V
    .locals 1

    .line 321
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->d:Lmaster/flame/danmaku/a/c;

    if-eqz v0, :cond_0

    .line 322
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->d:Lmaster/flame/danmaku/a/c;

    invoke-virtual {v0}, Lmaster/flame/danmaku/a/c;->f()V

    :cond_0
    return-void
.end method

.method public g()V
    .locals 1

    .line 327
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->d:Lmaster/flame/danmaku/a/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->d:Lmaster/flame/danmaku/a/c;

    invoke-virtual {v0}, Lmaster/flame/danmaku/a/c;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 328
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->d:Lmaster/flame/danmaku/a/c;

    invoke-virtual {v0}, Lmaster/flame/danmaku/a/c;->d()V

    goto :goto_0

    .line 329
    :cond_0
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->d:Lmaster/flame/danmaku/a/c;

    if-nez v0, :cond_1

    .line 330
    invoke-virtual {p0}, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->b()V

    :cond_1
    :goto_0
    return-void
.end method

.method public getConfig()Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;
    .locals 1

    .line 251
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->d:Lmaster/flame/danmaku/a/c;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 254
    :cond_0
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->d:Lmaster/flame/danmaku/a/c;

    invoke-virtual {v0}, Lmaster/flame/danmaku/a/c;->i()Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentTime()J
    .locals 2

    .line 495
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->d:Lmaster/flame/danmaku/a/c;

    if-eqz v0, :cond_0

    .line 496
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->d:Lmaster/flame/danmaku/a/c;

    invoke-virtual {v0}, Lmaster/flame/danmaku/a/c;->h()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getCurrentVisibleDanmakus()Lmaster/flame/danmaku/danmaku/model/l;
    .locals 1

    .line 138
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->d:Lmaster/flame/danmaku/a/c;

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->d:Lmaster/flame/danmaku/a/c;

    invoke-virtual {v0}, Lmaster/flame/danmaku/a/c;->g()Lmaster/flame/danmaku/danmaku/model/l;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getOnDanmakuClickListener()Lmaster/flame/danmaku/a/f$a;
    .locals 1

    .line 452
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->g:Lmaster/flame/danmaku/a/f$a;

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 0

    return-object p0
.end method

.method public getViewHeight()I
    .locals 1

    .line 398
    invoke-super {p0}, Landroid/view/TextureView;->getHeight()I

    move-result v0

    return v0
.end method

.method public getViewWidth()I
    .locals 1

    .line 393
    invoke-super {p0}, Landroid/view/TextureView;->getWidth()I

    move-result v0

    return v0
.end method

.method public getXOff()F
    .locals 1

    .line 457
    iget v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->h:F

    return v0
.end method

.method public getYOff()F
    .locals 1

    .line 462
    iget v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->i:F

    return v0
.end method

.method public h()V
    .locals 1

    .line 177
    invoke-virtual {p0}, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->a()V

    .line 178
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->m:Ljava/util/LinkedList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->m:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    :cond_0
    return-void
.end method

.method public i()V
    .locals 1

    const/4 v0, 0x0

    .line 408
    invoke-virtual {p0, v0}, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->b(Ljava/lang/Long;)V

    return-void
.end method

.method public isHardwareAccelerated()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isShown()Z
    .locals 1

    .line 485
    iget-boolean v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->l:Z

    if-eqz v0, :cond_0

    invoke-super {p0}, Landroid/view/TextureView;->isShown()Z

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

    .line 422
    iput-boolean v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->l:Z

    .line 423
    iget-object v1, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->d:Lmaster/flame/danmaku/a/c;

    if-nez v1, :cond_0

    return-void

    .line 426
    :cond_0
    iget-object v1, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->d:Lmaster/flame/danmaku/a/c;

    invoke-virtual {v1, v0}, Lmaster/flame/danmaku/a/c;->c(Z)J

    return-void
.end method

.method public k()Z
    .locals 1

    .line 388
    iget-boolean v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->e:Z

    return v0
.end method

.method public declared-synchronized l()J
    .locals 12

    monitor-enter p0

    .line 281
    :try_start_0
    iget-boolean v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->e:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    .line 282
    monitor-exit p0

    return-wide v0

    .line 283
    :cond_0
    :try_start_1
    invoke-static {}, Lmaster/flame/danmaku/danmaku/c/c;->a()J

    move-result-wide v0

    .line 284
    invoke-virtual {p0}, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->isShown()Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v2, :cond_1

    const-wide/16 v0, -0x1

    .line 285
    monitor-exit p0

    return-wide v0

    .line 287
    :cond_1
    :try_start_2
    invoke-virtual {p0}, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->lockCanvas()Landroid/graphics/Canvas;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 289
    iget-object v3, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->d:Lmaster/flame/danmaku/a/c;

    if-eqz v3, :cond_3

    .line 290
    iget-object v3, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->d:Lmaster/flame/danmaku/a/c;

    invoke-virtual {v3, v2}, Lmaster/flame/danmaku/a/c;->a(Landroid/graphics/Canvas;)Lmaster/flame/danmaku/danmaku/b/a$b;

    move-result-object v3

    .line 291
    iget-boolean v4, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->k:Z

    if-eqz v4, :cond_3

    .line 292
    iget-object v4, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->m:Ljava/util/LinkedList;

    if-nez v4, :cond_2

    .line 293
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    iput-object v4, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->m:Ljava/util/LinkedList;

    .line 294
    :cond_2
    invoke-static {}, Lmaster/flame/danmaku/danmaku/c/c;->a()J

    .line 295
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    const-string v5, "fps %.2f,time:%d s,cache:%d,miss:%d"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    .line 296
    invoke-direct {p0}, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->r()F

    move-result v8

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-virtual {p0}, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->getCurrentTime()J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    div-long/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    iget-wide v8, v3, Lmaster/flame/danmaku/danmaku/b/a$b;->r:J

    .line 297
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x3

    iget-wide v8, v3, Lmaster/flame/danmaku/danmaku/b/a$b;->s:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v6, v7

    .line 295
    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 298
    invoke-static {v2, v3}, Lmaster/flame/danmaku/a/d;->a(Landroid/graphics/Canvas;Ljava/lang/String;)V

    .line 301
    :cond_3
    iget-boolean v3, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->e:Z

    if-eqz v3, :cond_4

    .line 302
    invoke-virtual {p0, v2}, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 304
    :cond_4
    invoke-static {}, Lmaster/flame/danmaku/danmaku/c/c;->a()J

    move-result-wide v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v4, 0x0

    sub-long v4, v2, v0

    .line 305
    monitor-exit p0

    return-wide v4

    :catchall_0
    move-exception v0

    .line 280
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized m()V
    .locals 1

    monitor-enter p0

    .line 472
    :try_start_0
    invoke-virtual {p0}, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->k()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 473
    monitor-exit p0

    return-void

    .line 475
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->lockCanvas()Landroid/graphics/Canvas;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 477
    invoke-static {v0}, Lmaster/flame/danmaku/a/d;->a(Landroid/graphics/Canvas;)V

    .line 478
    invoke-virtual {p0, v0}, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 481
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 471
    monitor-exit p0

    throw v0
.end method

.method public n()Z
    .locals 1

    .line 383
    iget-boolean v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->f:Z

    return v0
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    const/4 p1, 0x1

    .line 154
    iput-boolean p1, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->e:Z

    return-void
.end method

.method public declared-synchronized onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 0

    monitor-enter p0

    const/4 p1, 0x0

    .line 159
    :try_start_0
    iput-boolean p1, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->e:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    .line 160
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    .line 158
    monitor-exit p0

    throw p1
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    .line 165
    iget-object p1, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->d:Lmaster/flame/danmaku/a/c;

    if-eqz p1, :cond_0

    .line 166
    iget-object p1, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->d:Lmaster/flame/danmaku/a/c;

    invoke-virtual {p1, p2, p3}, Lmaster/flame/danmaku/a/c;->a(II)V

    :cond_0
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 364
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->j:Lmaster/flame/danmaku/ui/widget/a;

    invoke-virtual {v0, p1}, Lmaster/flame/danmaku/ui/widget/a;->a(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 366
    invoke-super {p0, p1}, Landroid/view/TextureView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_0
    return v0
.end method

.method public setCallback(Lmaster/flame/danmaku/a/c$a;)V
    .locals 1

    .line 146
    iput-object p1, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->b:Lmaster/flame/danmaku/a/c$a;

    .line 147
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->d:Lmaster/flame/danmaku/a/c;

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->d:Lmaster/flame/danmaku/a/c;

    invoke-virtual {v0, p1}, Lmaster/flame/danmaku/a/c;->a(Lmaster/flame/danmaku/a/c$a;)V

    :cond_0
    return-void
.end method

.method public setDrawingThreadType(I)V
    .locals 0

    .line 490
    iput p1, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->a:I

    return-void
.end method

.method public setOnDanmakuClickListener(Lmaster/flame/danmaku/a/f$a;)V
    .locals 0

    .line 440
    iput-object p1, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->g:Lmaster/flame/danmaku/a/f$a;

    return-void
.end method
