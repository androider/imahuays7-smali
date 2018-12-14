.class public Lmaster/flame/danmaku/ui/widget/DanmakuView;
.super Landroid/view/View;
.source "DanmakuView.java"

# interfaces
.implements Lmaster/flame/danmaku/a/f;
.implements Lmaster/flame/danmaku/a/g;


# instance fields
.field protected volatile a:Lmaster/flame/danmaku/a/c;

.field protected b:I

.field protected c:Z

.field protected d:Z

.field private e:Lmaster/flame/danmaku/a/c$a;

.field private f:Landroid/os/HandlerThread;

.field private g:Z

.field private h:Z

.field private i:Lmaster/flame/danmaku/a/f$a;

.field private j:F

.field private k:F

.field private l:Lmaster/flame/danmaku/ui/widget/a;

.field private m:Z

.field private n:Z

.field private o:Ljava/lang/Object;

.field private p:Z

.field private q:J

.field private r:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private s:I

.field private t:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 85
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 58
    iput-boolean p1, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->h:Z

    .line 72
    iput-boolean p1, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->n:Z

    const/4 p1, 0x0

    .line 74
    iput p1, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->b:I

    .line 76
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->o:Ljava/lang/Object;

    .line 78
    iput-boolean p1, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->p:Z

    .line 80
    iput-boolean p1, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->c:Z

    .line 368
    iput p1, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->s:I

    .line 370
    new-instance p1, Lmaster/flame/danmaku/ui/widget/DanmakuView$1;

    invoke-direct {p1, p0}, Lmaster/flame/danmaku/ui/widget/DanmakuView$1;-><init>(Lmaster/flame/danmaku/ui/widget/DanmakuView;)V

    iput-object p1, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->t:Ljava/lang/Runnable;

    .line 86
    invoke-direct {p0}, Lmaster/flame/danmaku/ui/widget/DanmakuView;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 98
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 58
    iput-boolean p1, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->h:Z

    .line 72
    iput-boolean p1, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->n:Z

    const/4 p1, 0x0

    .line 74
    iput p1, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->b:I

    .line 76
    new-instance p2, Ljava/lang/Object;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->o:Ljava/lang/Object;

    .line 78
    iput-boolean p1, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->p:Z

    .line 80
    iput-boolean p1, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->c:Z

    .line 368
    iput p1, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->s:I

    .line 370
    new-instance p1, Lmaster/flame/danmaku/ui/widget/DanmakuView$1;

    invoke-direct {p1, p0}, Lmaster/flame/danmaku/ui/widget/DanmakuView$1;-><init>(Lmaster/flame/danmaku/ui/widget/DanmakuView;)V

    iput-object p1, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->t:Ljava/lang/Runnable;

    .line 99
    invoke-direct {p0}, Lmaster/flame/danmaku/ui/widget/DanmakuView;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 103
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    .line 58
    iput-boolean p1, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->h:Z

    .line 72
    iput-boolean p1, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->n:Z

    const/4 p1, 0x0

    .line 74
    iput p1, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->b:I

    .line 76
    new-instance p2, Ljava/lang/Object;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->o:Ljava/lang/Object;

    .line 78
    iput-boolean p1, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->p:Z

    .line 80
    iput-boolean p1, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->c:Z

    .line 368
    iput p1, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->s:I

    .line 370
    new-instance p1, Lmaster/flame/danmaku/ui/widget/DanmakuView$1;

    invoke-direct {p1, p0}, Lmaster/flame/danmaku/ui/widget/DanmakuView$1;-><init>(Lmaster/flame/danmaku/ui/widget/DanmakuView;)V

    iput-object p1, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->t:Ljava/lang/Runnable;

    .line 104
    invoke-direct {p0}, Lmaster/flame/danmaku/ui/widget/DanmakuView;->a()V

    return-void
.end method

.method static synthetic a(Lmaster/flame/danmaku/ui/widget/DanmakuView;)I
    .locals 2

    .line 46
    iget v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->s:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->s:I

    return v0
.end method

.method private a()V
    .locals 2

    .line 90
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    iput-wide v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->q:J

    const/4 v0, 0x0

    .line 91
    invoke-virtual {p0, v0}, Lmaster/flame/danmaku/ui/widget/DanmakuView;->setBackgroundColor(I)V

    .line 92
    invoke-virtual {p0, v0}, Lmaster/flame/danmaku/ui/widget/DanmakuView;->setDrawingCacheBackgroundColor(I)V

    const/4 v1, 0x1

    .line 93
    invoke-static {v1, v0}, Lmaster/flame/danmaku/a/d;->a(ZZ)V

    .line 94
    invoke-static {p0}, Lmaster/flame/danmaku/ui/widget/a;->a(Lmaster/flame/danmaku/a/f;)Lmaster/flame/danmaku/ui/widget/a;

    move-result-object v0

    iput-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->l:Lmaster/flame/danmaku/ui/widget/a;

    return-void
.end method

.method static synthetic b(Lmaster/flame/danmaku/ui/widget/DanmakuView;)I
    .locals 0

    .line 46
    iget p0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->s:I

    return p0
.end method

.method private declared-synchronized b()V
    .locals 2

    monitor-enter p0

    .line 162
    :try_start_0
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->a:Lmaster/flame/danmaku/a/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 163
    monitor-exit p0

    return-void

    .line 165
    :cond_0
    :try_start_1
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->a:Lmaster/flame/danmaku/a/c;

    const/4 v1, 0x0

    .line 166
    iput-object v1, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->a:Lmaster/flame/danmaku/a/c;

    .line 167
    invoke-direct {p0}, Lmaster/flame/danmaku/ui/widget/DanmakuView;->v()V

    if-eqz v0, :cond_1

    .line 169
    invoke-virtual {v0}, Lmaster/flame/danmaku/a/c;->a()V

    .line 171
    :cond_1
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->f:Landroid/os/HandlerThread;

    .line 172
    iput-object v1, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->f:Landroid/os/HandlerThread;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_2

    .line 175
    :try_start_2
    invoke-virtual {v0}, Landroid/os/HandlerThread;->join()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 177
    :try_start_3
    invoke-static {v1}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    .line 179
    :goto_0
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 181
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 161
    monitor-exit p0

    throw v0
.end method

.method static synthetic c(Lmaster/flame/danmaku/ui/widget/DanmakuView;)Z
    .locals 0

    .line 46
    invoke-super {p0}, Landroid/view/View;->isShown()Z

    move-result p0

    return p0
.end method

.method private r()V
    .locals 3

    .line 211
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->a:Lmaster/flame/danmaku/a/c;

    if-nez v0, :cond_0

    .line 212
    new-instance v0, Lmaster/flame/danmaku/a/c;

    iget v1, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->b:I

    invoke-virtual {p0, v1}, Lmaster/flame/danmaku/ui/widget/DanmakuView;->a(I)Landroid/os/Looper;

    move-result-object v1

    iget-boolean v2, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->n:Z

    invoke-direct {v0, v1, p0, v2}, Lmaster/flame/danmaku/a/c;-><init>(Landroid/os/Looper;Lmaster/flame/danmaku/a/g;Z)V

    iput-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->a:Lmaster/flame/danmaku/a/c;

    :cond_0
    return-void
.end method

.method private s()F
    .locals 8

    .line 247
    invoke-static {}, Lmaster/flame/danmaku/danmaku/c/c;->a()J

    move-result-wide v0

    .line 248
    iget-object v2, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->r:Ljava/util/LinkedList;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 249
    iget-object v2, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->r:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->peekFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return v3

    .line 253
    :cond_0
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long v6, v0, v4

    long-to-float v0, v6

    .line 254
    iget-object v1, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->r:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    const/16 v2, 0x32

    if-le v1, v2, :cond_1

    .line 256
    iget-object v1, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->r:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    :cond_1
    cmpl-float v1, v0, v3

    if-lez v1, :cond_2

    .line 258
    iget-object v1, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->r:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    int-to-float v1, v1

    div-float v3, v1, v0

    :cond_2
    return v3
.end method

.method private t()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const/4 v0, 0x1

    .line 273
    iput-boolean v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->c:Z

    .line 274
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 275
    invoke-virtual {p0}, Lmaster/flame/danmaku/ui/widget/DanmakuView;->postInvalidateOnAnimation()V

    goto :goto_0

    .line 277
    :cond_0
    invoke-virtual {p0}, Lmaster/flame/danmaku/ui/widget/DanmakuView;->postInvalidate()V

    :goto_0
    return-void
.end method

.method private u()V
    .locals 1

    const/4 v0, 0x1

    .line 303
    iput-boolean v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->d:Z

    .line 304
    invoke-virtual {p0}, Lmaster/flame/danmaku/ui/widget/DanmakuView;->p()V

    return-void
.end method

.method private v()V
    .locals 2

    .line 308
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->o:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 309
    :try_start_0
    iput-boolean v1, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->p:Z

    .line 310
    iget-object v1, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->o:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 311
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method protected declared-synchronized a(I)Landroid/os/Looper;
    .locals 2

    monitor-enter p0

    .line 184
    :try_start_0
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->f:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->f:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    const/4 v0, 0x0

    .line 186
    iput-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->f:Landroid/os/HandlerThread;

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

    .line 192
    :pswitch_2
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    .line 204
    :goto_0
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DFM Handler Thread #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 205
    new-instance v1, Landroid/os/HandlerThread;

    invoke-direct {v1, v0, p1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v1, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->f:Landroid/os/HandlerThread;

    .line 206
    iget-object p1, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->f:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 207
    iget-object p1, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->f:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    .line 183
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

.method public a(J)V
    .locals 2

    .line 416
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->a:Lmaster/flame/danmaku/a/c;

    if-nez v0, :cond_0

    .line 418
    invoke-direct {p0}, Lmaster/flame/danmaku/ui/widget/DanmakuView;->r()V

    .line 419
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->a:Lmaster/flame/danmaku/a/c;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 421
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :goto_0
    if-eqz v0, :cond_1

    const/4 v1, 0x1

    .line 424
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_1
    return-void
.end method

.method public a(Ljava/lang/Long;)V
    .locals 1

    .line 438
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->a:Lmaster/flame/danmaku/a/c;

    if-eqz v0, :cond_0

    .line 439
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->a:Lmaster/flame/danmaku/a/c;

    invoke-virtual {v0, p1}, Lmaster/flame/danmaku/a/c;->a(Ljava/lang/Long;)V

    :cond_0
    return-void
.end method

.method public a(Lmaster/flame/danmaku/danmaku/a/a;Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;)V
    .locals 1

    .line 217
    invoke-direct {p0}, Lmaster/flame/danmaku/ui/widget/DanmakuView;->r()V

    .line 218
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->a:Lmaster/flame/danmaku/a/c;

    invoke-virtual {v0, p2}, Lmaster/flame/danmaku/a/c;->a(Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;)V

    .line 219
    iget-object p2, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->a:Lmaster/flame/danmaku/a/c;

    invoke-virtual {p2, p1}, Lmaster/flame/danmaku/a/c;->a(Lmaster/flame/danmaku/danmaku/a/a;)V

    .line 220
    iget-object p1, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->a:Lmaster/flame/danmaku/a/c;

    iget-object p2, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->e:Lmaster/flame/danmaku/a/c$a;

    invoke-virtual {p1, p2}, Lmaster/flame/danmaku/a/c;->a(Lmaster/flame/danmaku/a/c$a;)V

    .line 221
    iget-object p1, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->a:Lmaster/flame/danmaku/a/c;

    invoke-virtual {p1}, Lmaster/flame/danmaku/a/c;->e()V

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 445
    iput-boolean p1, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->h:Z

    return-void
.end method

.method public b(Ljava/lang/Long;)V
    .locals 1

    const/4 v0, 0x1

    .line 480
    iput-boolean v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->n:Z

    const/4 v0, 0x0

    .line 481
    iput-boolean v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->d:Z

    .line 482
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->a:Lmaster/flame/danmaku/a/c;

    if-nez v0, :cond_0

    return-void

    .line 485
    :cond_0
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->a:Lmaster/flame/danmaku/a/c;

    invoke-virtual {v0, p1}, Lmaster/flame/danmaku/a/c;->b(Ljava/lang/Long;)V

    return-void
.end method

.method public b(Lmaster/flame/danmaku/danmaku/model/d;)V
    .locals 1

    .line 108
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->a:Lmaster/flame/danmaku/a/c;

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->a:Lmaster/flame/danmaku/a/c;

    invoke-virtual {v0, p1}, Lmaster/flame/danmaku/a/c;->a(Lmaster/flame/danmaku/danmaku/model/d;)V

    :cond_0
    return-void
.end method

.method public c()Z
    .locals 1

    .line 226
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->a:Lmaster/flame/danmaku/a/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->a:Lmaster/flame/danmaku/a/c;

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

    .line 398
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->a:Lmaster/flame/danmaku/a/c;

    if-eqz v0, :cond_0

    .line 399
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->a:Lmaster/flame/danmaku/a/c;

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

    .line 411
    invoke-virtual {p0, v0, v1}, Lmaster/flame/danmaku/ui/widget/DanmakuView;->a(J)V

    return-void
.end method

.method public f()V
    .locals 2

    .line 362
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->a:Lmaster/flame/danmaku/a/c;

    if-eqz v0, :cond_0

    .line 363
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->a:Lmaster/flame/danmaku/a/c;

    iget-object v1, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->t:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lmaster/flame/danmaku/a/c;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 364
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->a:Lmaster/flame/danmaku/a/c;

    invoke-virtual {v0}, Lmaster/flame/danmaku/a/c;->f()V

    :cond_0
    return-void
.end method

.method public g()V
    .locals 2

    .line 388
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->a:Lmaster/flame/danmaku/a/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->a:Lmaster/flame/danmaku/a/c;

    invoke-virtual {v0}, Lmaster/flame/danmaku/a/c;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 389
    iput v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->s:I

    .line 390
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->a:Lmaster/flame/danmaku/a/c;

    iget-object v1, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->t:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lmaster/flame/danmaku/a/c;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 391
    :cond_0
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->a:Lmaster/flame/danmaku/a/c;

    if-nez v0, :cond_1

    .line 392
    invoke-virtual {p0}, Lmaster/flame/danmaku/ui/widget/DanmakuView;->q()V

    :cond_1
    :goto_0
    return-void
.end method

.method public getConfig()Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;
    .locals 1

    .line 231
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->a:Lmaster/flame/danmaku/a/c;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 234
    :cond_0
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->a:Lmaster/flame/danmaku/a/c;

    invoke-virtual {v0}, Lmaster/flame/danmaku/a/c;->i()Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentTime()J
    .locals 2

    .line 531
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->a:Lmaster/flame/danmaku/a/c;

    if-eqz v0, :cond_0

    .line 532
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->a:Lmaster/flame/danmaku/a/c;

    invoke-virtual {v0}, Lmaster/flame/danmaku/a/c;->h()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getCurrentVisibleDanmakus()Lmaster/flame/danmaku/danmaku/model/l;
    .locals 1

    .line 136
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->a:Lmaster/flame/danmaku/a/c;

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->a:Lmaster/flame/danmaku/a/c;

    invoke-virtual {v0}, Lmaster/flame/danmaku/a/c;->g()Lmaster/flame/danmaku/danmaku/model/l;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getOnDanmakuClickListener()Lmaster/flame/danmaku/a/f$a;
    .locals 1

    .line 569
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->i:Lmaster/flame/danmaku/a/f$a;

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 0

    return-object p0
.end method

.method public getViewHeight()I
    .locals 1

    .line 465
    invoke-super {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    return v0
.end method

.method public getViewWidth()I
    .locals 1

    .line 460
    invoke-super {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    return v0
.end method

.method public getXOff()F
    .locals 1

    .line 574
    iget v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->j:F

    return v0
.end method

.method public getYOff()F
    .locals 1

    .line 579
    iget v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->k:F

    return v0
.end method

.method public h()V
    .locals 1

    .line 152
    invoke-virtual {p0}, Lmaster/flame/danmaku/ui/widget/DanmakuView;->o()V

    .line 153
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->r:Ljava/util/LinkedList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->r:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    :cond_0
    return-void
.end method

.method public i()V
    .locals 1

    const/4 v0, 0x0

    .line 475
    invoke-virtual {p0, v0}, Lmaster/flame/danmaku/ui/widget/DanmakuView;->b(Ljava/lang/Long;)V

    return-void
.end method

.method public isHardwareAccelerated()Z
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 541
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 542
    invoke-super {p0}, Landroid/view/View;->isHardwareAccelerated()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isShown()Z
    .locals 1

    .line 521
    iget-boolean v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->n:Z

    if-eqz v0, :cond_0

    invoke-super {p0}, Landroid/view/View;->isShown()Z

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

    .line 490
    iput-boolean v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->n:Z

    .line 491
    iget-object v1, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->a:Lmaster/flame/danmaku/a/c;

    if-nez v1, :cond_0

    return-void

    .line 494
    :cond_0
    iget-object v1, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->a:Lmaster/flame/danmaku/a/c;

    invoke-virtual {v1, v0}, Lmaster/flame/danmaku/a/c;->c(Z)J

    return-void
.end method

.method public k()Z
    .locals 1

    .line 455
    iget-boolean v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->g:Z

    return v0
.end method

.method public l()J
    .locals 6

    .line 262
    iget-boolean v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->g:Z

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 264
    :cond_0
    invoke-virtual {p0}, Lmaster/flame/danmaku/ui/widget/DanmakuView;->isShown()Z

    move-result v0

    if-nez v0, :cond_1

    const-wide/16 v0, -0x1

    return-wide v0

    .line 266
    :cond_1
    invoke-static {}, Lmaster/flame/danmaku/danmaku/c/c;->a()J

    move-result-wide v0

    .line 267
    invoke-virtual {p0}, Lmaster/flame/danmaku/ui/widget/DanmakuView;->p()V

    .line 268
    invoke-static {}, Lmaster/flame/danmaku/danmaku/c/c;->a()J

    move-result-wide v2

    sub-long v4, v2, v0

    return-wide v4
.end method

.method public m()V
    .locals 5

    .line 508
    invoke-virtual {p0}, Lmaster/flame/danmaku/ui/widget/DanmakuView;->k()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 511
    :cond_0
    iget-boolean v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->n:Z

    if-eqz v0, :cond_2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    iget-wide v2, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->q:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    goto :goto_0

    .line 515
    :cond_1
    invoke-direct {p0}, Lmaster/flame/danmaku/ui/widget/DanmakuView;->u()V

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    .line 512
    iput-boolean v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->d:Z

    .line 513
    invoke-direct {p0}, Lmaster/flame/danmaku/ui/widget/DanmakuView;->t()V

    :goto_1
    return-void
.end method

.method public n()Z
    .locals 1

    .line 450
    iget-boolean v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->h:Z

    return v0
.end method

.method public o()V
    .locals 0

    .line 158
    invoke-direct {p0}, Lmaster/flame/danmaku/ui/widget/DanmakuView;->b()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10

    .line 316
    iget-boolean v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->n:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->c:Z

    if-nez v0, :cond_0

    .line 317
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    return-void

    .line 320
    :cond_0
    iget-boolean v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->d:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 321
    invoke-static {p1}, Lmaster/flame/danmaku/a/d;->a(Landroid/graphics/Canvas;)V

    .line 322
    iput-boolean v1, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->d:Z

    goto :goto_0

    .line 324
    :cond_1
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->a:Lmaster/flame/danmaku/a/c;

    if-eqz v0, :cond_3

    .line 325
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->a:Lmaster/flame/danmaku/a/c;

    invoke-virtual {v0, p1}, Lmaster/flame/danmaku/a/c;->a(Landroid/graphics/Canvas;)Lmaster/flame/danmaku/danmaku/b/a$b;

    move-result-object v0

    .line 326
    iget-boolean v2, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->m:Z

    if-eqz v2, :cond_3

    .line 327
    iget-object v2, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->r:Ljava/util/LinkedList;

    if-nez v2, :cond_2

    .line 328
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    iput-object v2, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->r:Ljava/util/LinkedList;

    .line 329
    :cond_2
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    const-string v3, "fps %.2f,time:%d s,cache:%d,miss:%d"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    .line 330
    invoke-direct {p0}, Lmaster/flame/danmaku/ui/widget/DanmakuView;->s()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v4, v1

    const/4 v5, 0x1

    invoke-virtual {p0}, Lmaster/flame/danmaku/ui/widget/DanmakuView;->getCurrentTime()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    iget-wide v6, v0, Lmaster/flame/danmaku/danmaku/b/a$b;->r:J

    .line 331
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    iget-wide v6, v0, Lmaster/flame/danmaku/danmaku/b/a$b;->s:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v4, v5

    .line 329
    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 332
    invoke-static {p1, v0}, Lmaster/flame/danmaku/a/d;->a(Landroid/graphics/Canvas;Ljava/lang/String;)V

    .line 336
    :cond_3
    :goto_0
    iput-boolean v1, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->c:Z

    .line 337
    invoke-direct {p0}, Lmaster/flame/danmaku/ui/widget/DanmakuView;->v()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 342
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 343
    iget-object p1, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->a:Lmaster/flame/danmaku/a/c;

    if-eqz p1, :cond_0

    .line 344
    iget-object p1, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->a:Lmaster/flame/danmaku/a/c;

    sub-int/2addr p4, p2

    sub-int/2addr p5, p3

    invoke-virtual {p1, p4, p5}, Lmaster/flame/danmaku/a/c;->a(II)V

    :cond_0
    const/4 p1, 0x1

    .line 346
    iput-boolean p1, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->g:Z

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 430
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->l:Lmaster/flame/danmaku/ui/widget/a;

    invoke-virtual {v0, p1}, Lmaster/flame/danmaku/ui/widget/a;->a(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 432
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_0
    return v0
.end method

.method protected p()V
    .locals 4

    .line 282
    iget-boolean v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->n:Z

    if-nez v0, :cond_0

    return-void

    .line 285
    :cond_0
    invoke-direct {p0}, Lmaster/flame/danmaku/ui/widget/DanmakuView;->t()V

    .line 286
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->o:Ljava/lang/Object;

    monitor-enter v0

    .line 287
    :goto_0
    :try_start_0
    iget-boolean v1, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->p:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->a:Lmaster/flame/danmaku/a/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_2

    .line 289
    :try_start_1
    iget-object v1, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->o:Ljava/lang/Object;

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 291
    :catch_0
    :try_start_2
    iget-boolean v1, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->n:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->a:Lmaster/flame/danmaku/a/c;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->a:Lmaster/flame/danmaku/a/c;

    invoke-virtual {v1}, Lmaster/flame/danmaku/a/c;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    .line 294
    :cond_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    :cond_2
    :goto_1
    const/4 v1, 0x0

    .line 298
    iput-boolean v1, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->p:Z

    .line 299
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public q()V
    .locals 0

    .line 405
    invoke-virtual {p0}, Lmaster/flame/danmaku/ui/widget/DanmakuView;->o()V

    .line 406
    invoke-virtual {p0}, Lmaster/flame/danmaku/ui/widget/DanmakuView;->e()V

    return-void
.end method

.method public setCallback(Lmaster/flame/danmaku/a/c$a;)V
    .locals 1

    .line 144
    iput-object p1, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->e:Lmaster/flame/danmaku/a/c$a;

    .line 145
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->a:Lmaster/flame/danmaku/a/c;

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->a:Lmaster/flame/danmaku/a/c;

    invoke-virtual {v0, p1}, Lmaster/flame/danmaku/a/c;->a(Lmaster/flame/danmaku/a/c$a;)V

    :cond_0
    return-void
.end method

.method public setDrawingThreadType(I)V
    .locals 0

    .line 526
    iput p1, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->b:I

    return-void
.end method

.method public setOnDanmakuClickListener(Lmaster/flame/danmaku/a/f$a;)V
    .locals 0

    .line 557
    iput-object p1, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->i:Lmaster/flame/danmaku/a/f$a;

    return-void
.end method
