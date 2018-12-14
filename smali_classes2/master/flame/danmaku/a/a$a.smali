.class public Lmaster/flame/danmaku/a/a$a;
.super Ljava/lang/Object;
.source "CacheManagingDrawTask.java"

# interfaces
.implements Lmaster/flame/danmaku/danmaku/model/k;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmaster/flame/danmaku/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmaster/flame/danmaku/a/a$a$a;
    }
.end annotation


# instance fields
.field public a:Landroid/os/HandlerThread;

.field b:Lmaster/flame/danmaku/danmaku/model/android/e;

.field c:Lmaster/flame/danmaku/danmaku/model/android/h;

.field d:Lmaster/flame/danmaku/danmaku/model/a/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmaster/flame/danmaku/danmaku/model/a/b<",
            "Lmaster/flame/danmaku/danmaku/model/android/f;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic e:Lmaster/flame/danmaku/a/a;

.field private f:I

.field private g:I

.field private h:I

.field private i:Lmaster/flame/danmaku/a/a$a$a;

.field private j:Z


# direct methods
.method public constructor <init>(Lmaster/flame/danmaku/a/a;II)V
    .locals 1

    .line 216
    iput-object p1, p0, Lmaster/flame/danmaku/a/a$a;->e:Lmaster/flame/danmaku/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 200
    new-instance p1, Lmaster/flame/danmaku/danmaku/model/android/e;

    invoke-direct {p1}, Lmaster/flame/danmaku/danmaku/model/android/e;-><init>()V

    iput-object p1, p0, Lmaster/flame/danmaku/a/a$a;->b:Lmaster/flame/danmaku/danmaku/model/android/e;

    .line 202
    new-instance p1, Lmaster/flame/danmaku/danmaku/model/android/h;

    invoke-direct {p1}, Lmaster/flame/danmaku/danmaku/model/android/h;-><init>()V

    iput-object p1, p0, Lmaster/flame/danmaku/a/a$a;->c:Lmaster/flame/danmaku/danmaku/model/android/h;

    .line 204
    iget-object p1, p0, Lmaster/flame/danmaku/a/a$a;->c:Lmaster/flame/danmaku/danmaku/model/android/h;

    const/16 v0, 0x320

    invoke-static {p1, v0}, Lmaster/flame/danmaku/danmaku/model/a/e;->a(Lmaster/flame/danmaku/danmaku/model/a/d;I)Lmaster/flame/danmaku/danmaku/model/a/b;

    move-result-object p1

    iput-object p1, p0, Lmaster/flame/danmaku/a/a$a;->d:Lmaster/flame/danmaku/danmaku/model/a/b;

    const/4 p1, 0x3

    .line 210
    iput p1, p0, Lmaster/flame/danmaku/a/a$a;->h:I

    const/4 p1, 0x0

    .line 217
    iput-boolean p1, p0, Lmaster/flame/danmaku/a/a$a;->j:Z

    .line 218
    iput p1, p0, Lmaster/flame/danmaku/a/a$a;->g:I

    .line 219
    iput p2, p0, Lmaster/flame/danmaku/a/a$a;->f:I

    .line 220
    iput p3, p0, Lmaster/flame/danmaku/a/a$a;->h:I

    return-void
.end method

.method static synthetic a(Lmaster/flame/danmaku/a/a$a;Lmaster/flame/danmaku/danmaku/model/d;)J
    .locals 0

    .line 190
    invoke-direct {p0, p1}, Lmaster/flame/danmaku/a/a$a;->c(Lmaster/flame/danmaku/danmaku/model/d;)J

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic a(Lmaster/flame/danmaku/a/a$a;Lmaster/flame/danmaku/danmaku/model/d;ZI)Lmaster/flame/danmaku/danmaku/model/d;
    .locals 0

    .line 190
    invoke-direct {p0, p1, p2, p3}, Lmaster/flame/danmaku/a/a$a;->a(Lmaster/flame/danmaku/danmaku/model/d;ZI)Lmaster/flame/danmaku/danmaku/model/d;

    move-result-object p0

    return-object p0
.end method

.method private a(Lmaster/flame/danmaku/danmaku/model/d;ZI)Lmaster/flame/danmaku/danmaku/model/d;
    .locals 8

    if-nez p2, :cond_0

    .line 430
    iget-object v0, p0, Lmaster/flame/danmaku/a/a$a;->e:Lmaster/flame/danmaku/a/a;

    iget-object v0, v0, Lmaster/flame/danmaku/a/a;->b:Lmaster/flame/danmaku/danmaku/model/b;

    invoke-virtual {v0}, Lmaster/flame/danmaku/danmaku/model/b;->j()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 432
    :goto_0
    iget-object v1, p0, Lmaster/flame/danmaku/a/a$a;->e:Lmaster/flame/danmaku/a/a;

    iget-object v1, v1, Lmaster/flame/danmaku/a/a;->a:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    iget-object v1, v1, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->u:Lmaster/flame/danmaku/danmaku/model/android/c;

    iget v1, v1, Lmaster/flame/danmaku/danmaku/model/android/c;->h:I

    add-int v7, v0, v1

    .line 433
    new-instance v0, Lmaster/flame/danmaku/a/a$a$4;

    move-object v2, v0

    move-object v3, p0

    move v4, p3

    move-object v5, p1

    move v6, p2

    invoke-direct/range {v2 .. v7}, Lmaster/flame/danmaku/a/a$a$4;-><init>(Lmaster/flame/danmaku/a/a$a;ILmaster/flame/danmaku/danmaku/model/d;ZI)V

    .line 480
    iget-object p1, p0, Lmaster/flame/danmaku/a/a$a;->b:Lmaster/flame/danmaku/danmaku/model/android/e;

    invoke-virtual {p1, v0}, Lmaster/flame/danmaku/danmaku/model/android/e;->b(Lmaster/flame/danmaku/danmaku/model/l$b;)V

    .line 481
    invoke-virtual {v0}, Lmaster/flame/danmaku/danmaku/model/l$b;->b()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmaster/flame/danmaku/danmaku/model/d;

    return-object p1
.end method

.method private a(IZ)V
    .locals 2

    .line 987
    iget-object v0, p0, Lmaster/flame/danmaku/a/a$a;->b:Lmaster/flame/danmaku/danmaku/model/android/e;

    new-instance v1, Lmaster/flame/danmaku/a/a$a$5;

    invoke-direct {v1, p0, p1, p2}, Lmaster/flame/danmaku/a/a$a$5;-><init>(Lmaster/flame/danmaku/a/a$a;IZ)V

    invoke-virtual {v0, v1}, Lmaster/flame/danmaku/danmaku/model/android/e;->b(Lmaster/flame/danmaku/danmaku/model/l$b;)V

    return-void
.end method

.method static synthetic a(Lmaster/flame/danmaku/a/a$a;IZ)V
    .locals 0

    .line 190
    invoke-direct {p0, p1, p2}, Lmaster/flame/danmaku/a/a$a;->a(IZ)V

    return-void
.end method

.method static synthetic a(Lmaster/flame/danmaku/a/a$a;)Z
    .locals 0

    .line 190
    iget-boolean p0, p0, Lmaster/flame/danmaku/a/a$a;->j:Z

    return p0
.end method

.method static synthetic a(Lmaster/flame/danmaku/a/a$a;Lmaster/flame/danmaku/danmaku/model/d;IZ)Z
    .locals 0

    .line 190
    invoke-direct {p0, p1, p2, p3}, Lmaster/flame/danmaku/a/a$a;->a(Lmaster/flame/danmaku/danmaku/model/d;IZ)Z

    move-result p0

    return p0
.end method

.method private a(Lmaster/flame/danmaku/danmaku/model/d;IZ)Z
    .locals 0

    if-lez p2, :cond_0

    .line 385
    invoke-direct {p0, p2, p3}, Lmaster/flame/danmaku/a/a$a;->a(IZ)V

    .line 388
    :cond_0
    iget-object p3, p0, Lmaster/flame/danmaku/a/a$a;->b:Lmaster/flame/danmaku/danmaku/model/android/e;

    invoke-virtual {p3, p1}, Lmaster/flame/danmaku/danmaku/model/android/e;->a(Lmaster/flame/danmaku/danmaku/model/d;)Z

    .line 389
    iget p1, p0, Lmaster/flame/danmaku/a/a$a;->g:I

    add-int/2addr p1, p2

    iput p1, p0, Lmaster/flame/danmaku/a/a$a;->g:I

    const/4 p1, 0x1

    return p1
.end method

.method static synthetic b(Lmaster/flame/danmaku/a/a$a;)V
    .locals 0

    .line 190
    invoke-direct {p0}, Lmaster/flame/danmaku/a/a$a;->j()V

    return-void
.end method

.method private c(Lmaster/flame/danmaku/danmaku/model/d;)J
    .locals 5

    .line 353
    iget-object v0, p1, Lmaster/flame/danmaku/danmaku/model/d;->w:Lmaster/flame/danmaku/danmaku/model/n;

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    return-wide v1

    .line 357
    :cond_0
    invoke-interface {v0}, Lmaster/flame/danmaku/danmaku/model/n;->f()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    .line 358
    invoke-interface {v0}, Lmaster/flame/danmaku/danmaku/model/n;->g()V

    .line 359
    iput-object v4, p1, Lmaster/flame/danmaku/danmaku/model/d;->w:Lmaster/flame/danmaku/danmaku/model/n;

    return-wide v1

    .line 362
    :cond_1
    invoke-virtual {p0, p1}, Lmaster/flame/danmaku/a/a$a;->b(Lmaster/flame/danmaku/danmaku/model/d;)I

    move-result v1

    int-to-long v1, v1

    .line 363
    invoke-interface {v0}, Lmaster/flame/danmaku/danmaku/model/n;->b()V

    .line 364
    iput-object v4, p1, Lmaster/flame/danmaku/danmaku/model/d;->w:Lmaster/flame/danmaku/danmaku/model/n;

    return-wide v1
.end method

.method static synthetic c(Lmaster/flame/danmaku/a/a$a;)V
    .locals 0

    .line 190
    invoke-direct {p0}, Lmaster/flame/danmaku/a/a$a;->l()V

    return-void
.end method

.method static synthetic d(Lmaster/flame/danmaku/a/a$a;)V
    .locals 0

    .line 190
    invoke-direct {p0}, Lmaster/flame/danmaku/a/a$a;->i()V

    return-void
.end method

.method static synthetic e(Lmaster/flame/danmaku/a/a$a;)V
    .locals 0

    .line 190
    invoke-direct {p0}, Lmaster/flame/danmaku/a/a$a;->k()V

    return-void
.end method

.method static synthetic f(Lmaster/flame/danmaku/a/a$a;)I
    .locals 0

    .line 190
    iget p0, p0, Lmaster/flame/danmaku/a/a$a;->h:I

    return p0
.end method

.method static synthetic g(Lmaster/flame/danmaku/a/a$a;)I
    .locals 0

    .line 190
    iget p0, p0, Lmaster/flame/danmaku/a/a$a;->g:I

    return p0
.end method

.method static synthetic h(Lmaster/flame/danmaku/a/a$a;)I
    .locals 0

    .line 190
    iget p0, p0, Lmaster/flame/danmaku/a/a$a;->f:I

    return p0
.end method

.method private i()V
    .locals 2

    .line 311
    iget-object v0, p0, Lmaster/flame/danmaku/a/a$a;->b:Lmaster/flame/danmaku/danmaku/model/android/e;

    if-eqz v0, :cond_0

    .line 312
    iget-object v0, p0, Lmaster/flame/danmaku/a/a$a;->b:Lmaster/flame/danmaku/danmaku/model/android/e;

    new-instance v1, Lmaster/flame/danmaku/a/a$a$1;

    invoke-direct {v1, p0}, Lmaster/flame/danmaku/a/a$a$1;-><init>(Lmaster/flame/danmaku/a/a$a;)V

    invoke-virtual {v0, v1}, Lmaster/flame/danmaku/danmaku/model/android/e;->b(Lmaster/flame/danmaku/danmaku/model/l$b;)V

    .line 319
    iget-object v0, p0, Lmaster/flame/danmaku/a/a$a;->b:Lmaster/flame/danmaku/danmaku/model/android/e;

    invoke-virtual {v0}, Lmaster/flame/danmaku/danmaku/model/android/e;->b()V

    :cond_0
    const/4 v0, 0x0

    .line 321
    iput v0, p0, Lmaster/flame/danmaku/a/a$a;->g:I

    return-void
.end method

.method private j()V
    .locals 2

    .line 325
    iget-object v0, p0, Lmaster/flame/danmaku/a/a$a;->b:Lmaster/flame/danmaku/danmaku/model/android/e;

    if-eqz v0, :cond_0

    .line 326
    iget-object v0, p0, Lmaster/flame/danmaku/a/a$a;->b:Lmaster/flame/danmaku/danmaku/model/android/e;

    new-instance v1, Lmaster/flame/danmaku/a/a$a$2;

    invoke-direct {v1, p0}, Lmaster/flame/danmaku/a/a$a$2;-><init>(Lmaster/flame/danmaku/a/a$a;)V

    invoke-virtual {v0, v1}, Lmaster/flame/danmaku/danmaku/model/android/e;->b(Lmaster/flame/danmaku/danmaku/model/l$b;)V

    :cond_0
    return-void
.end method

.method private k()V
    .locals 1

    .line 377
    :goto_0
    iget-object v0, p0, Lmaster/flame/danmaku/a/a$a;->d:Lmaster/flame/danmaku/danmaku/model/a/b;

    invoke-interface {v0}, Lmaster/flame/danmaku/danmaku/model/a/b;->a()Lmaster/flame/danmaku/danmaku/model/a/c;

    move-result-object v0

    check-cast v0, Lmaster/flame/danmaku/danmaku/model/android/f;

    if-eqz v0, :cond_0

    .line 378
    invoke-virtual {v0}, Lmaster/flame/danmaku/danmaku/model/android/f;->b()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private l()V
    .locals 2

    .line 395
    iget-object v0, p0, Lmaster/flame/danmaku/a/a$a;->b:Lmaster/flame/danmaku/danmaku/model/android/e;

    new-instance v1, Lmaster/flame/danmaku/a/a$a$3;

    invoke-direct {v1, p0}, Lmaster/flame/danmaku/a/a$a$3;-><init>(Lmaster/flame/danmaku/a/a$a;)V

    invoke-virtual {v0, v1}, Lmaster/flame/danmaku/danmaku/model/android/e;->b(Lmaster/flame/danmaku/danmaku/model/l$b;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    const/4 v0, 0x0

    .line 254
    iput-boolean v0, p0, Lmaster/flame/danmaku/a/a$a;->j:Z

    .line 255
    iget-object v0, p0, Lmaster/flame/danmaku/a/a$a;->a:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    .line 256
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "DFM Cache-Building Thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lmaster/flame/danmaku/a/a$a;->a:Landroid/os/HandlerThread;

    .line 257
    iget-object v0, p0, Lmaster/flame/danmaku/a/a$a;->a:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 259
    :cond_0
    iget-object v0, p0, Lmaster/flame/danmaku/a/a$a;->i:Lmaster/flame/danmaku/a/a$a$a;

    if-nez v0, :cond_1

    .line 260
    new-instance v0, Lmaster/flame/danmaku/a/a$a$a;

    iget-object v1, p0, Lmaster/flame/danmaku/a/a$a;->a:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lmaster/flame/danmaku/a/a$a$a;-><init>(Lmaster/flame/danmaku/a/a$a;Landroid/os/Looper;)V

    iput-object v0, p0, Lmaster/flame/danmaku/a/a$a;->i:Lmaster/flame/danmaku/a/a$a$a;

    .line 261
    :cond_1
    iget-object v0, p0, Lmaster/flame/danmaku/a/a$a;->i:Lmaster/flame/danmaku/a/a$a$a;

    invoke-virtual {v0}, Lmaster/flame/danmaku/a/a$a$a;->b()V

    return-void
.end method

.method public a(I)V
    .locals 2

    .line 294
    iget-object v0, p0, Lmaster/flame/danmaku/a/a$a;->i:Lmaster/flame/danmaku/a/a$a$a;

    if-eqz v0, :cond_1

    .line 295
    iget-object v0, p0, Lmaster/flame/danmaku/a/a$a;->i:Lmaster/flame/danmaku/a/a$a$a;

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lmaster/flame/danmaku/a/a$a$a;->a(Z)V

    :cond_1
    return-void
.end method

.method public a(J)V
    .locals 2

    .line 224
    iget-object v0, p0, Lmaster/flame/danmaku/a/a$a;->i:Lmaster/flame/danmaku/a/a$a$a;

    if-nez v0, :cond_0

    return-void

    .line 226
    :cond_0
    iget-object v0, p0, Lmaster/flame/danmaku/a/a$a;->i:Lmaster/flame/danmaku/a/a$a$a;

    invoke-virtual {v0}, Lmaster/flame/danmaku/a/a$a$a;->a()V

    .line 227
    iget-object v0, p0, Lmaster/flame/danmaku/a/a$a;->i:Lmaster/flame/danmaku/a/a$a$a;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lmaster/flame/danmaku/a/a$a$a;->removeMessages(I)V

    .line 228
    iget-object v0, p0, Lmaster/flame/danmaku/a/a$a;->i:Lmaster/flame/danmaku/a/a$a$a;

    const/4 v1, 0x5

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lmaster/flame/danmaku/a/a$a$a;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public a(Ljava/lang/Runnable;)V
    .locals 1

    .line 1052
    iget-object v0, p0, Lmaster/flame/danmaku/a/a$a;->i:Lmaster/flame/danmaku/a/a$a$a;

    if-nez v0, :cond_0

    return-void

    .line 1055
    :cond_0
    iget-object v0, p0, Lmaster/flame/danmaku/a/a$a;->i:Lmaster/flame/danmaku/a/a$a$a;

    invoke-virtual {v0, p1}, Lmaster/flame/danmaku/a/a$a$a;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public a(Lmaster/flame/danmaku/danmaku/model/d;)V
    .locals 2

    .line 233
    iget-object v0, p0, Lmaster/flame/danmaku/a/a$a;->i:Lmaster/flame/danmaku/a/a$a$a;

    if-eqz v0, :cond_2

    .line 234
    iget-boolean v0, p1, Lmaster/flame/danmaku/danmaku/model/d;->x:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p1, Lmaster/flame/danmaku/danmaku/model/d;->y:Z

    if-eqz v0, :cond_1

    .line 235
    invoke-virtual {p1}, Lmaster/flame/danmaku/danmaku/model/d;->f()Z

    move-result v0

    if-nez v0, :cond_0

    .line 236
    iget-object v0, p0, Lmaster/flame/danmaku/a/a$a;->i:Lmaster/flame/danmaku/a/a$a$a;

    invoke-virtual {v0, p1}, Lmaster/flame/danmaku/a/a$a$a;->a(Lmaster/flame/danmaku/danmaku/model/d;)Z

    :cond_0
    return-void

    .line 240
    :cond_1
    iget-object v0, p0, Lmaster/flame/danmaku/a/a$a;->i:Lmaster/flame/danmaku/a/a$a$a;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Lmaster/flame/danmaku/a/a$a$a;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_2
    return-void
.end method

.method protected a(ZLmaster/flame/danmaku/danmaku/model/d;Lmaster/flame/danmaku/danmaku/model/d;)V
    .locals 4

    .line 340
    invoke-virtual {p2}, Lmaster/flame/danmaku/danmaku/model/d;->d()Lmaster/flame/danmaku/danmaku/model/n;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 342
    invoke-direct {p0, p2}, Lmaster/flame/danmaku/a/a$a;->c(Lmaster/flame/danmaku/danmaku/model/d;)J

    move-result-wide v0

    .line 343
    invoke-virtual {p2}, Lmaster/flame/danmaku/danmaku/model/d;->f()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 344
    iget-object p3, p0, Lmaster/flame/danmaku/a/a$a;->e:Lmaster/flame/danmaku/a/a;

    iget-object p3, p3, Lmaster/flame/danmaku/a/a;->a:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    invoke-virtual {p3}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->b()Lmaster/flame/danmaku/danmaku/model/b;

    move-result-object p3

    invoke-virtual {p3}, Lmaster/flame/danmaku/danmaku/model/b;->d()Lmaster/flame/danmaku/danmaku/model/android/b;

    move-result-object p3

    invoke-virtual {p3, p2}, Lmaster/flame/danmaku/danmaku/model/android/b;->b(Lmaster/flame/danmaku/danmaku/model/d;)V

    :cond_0
    const-wide/16 p2, 0x0

    cmp-long v2, v0, p2

    if-gtz v2, :cond_1

    return-void

    .line 347
    :cond_1
    iget p2, p0, Lmaster/flame/danmaku/a/a$a;->g:I

    int-to-long p2, p2

    sub-long v2, p2, v0

    long-to-int p2, v2

    iput p2, p0, Lmaster/flame/danmaku/a/a$a;->g:I

    .line 348
    iget-object p2, p0, Lmaster/flame/danmaku/a/a$a;->d:Lmaster/flame/danmaku/danmaku/model/a/b;

    check-cast p1, Lmaster/flame/danmaku/danmaku/model/android/f;

    invoke-interface {p2, p1}, Lmaster/flame/danmaku/danmaku/model/a/b;->a(Lmaster/flame/danmaku/danmaku/model/a/c;)V

    :cond_2
    return-void
.end method

.method protected b(Lmaster/flame/danmaku/danmaku/model/d;)I
    .locals 1

    .line 369
    iget-object v0, p1, Lmaster/flame/danmaku/danmaku/model/d;->w:Lmaster/flame/danmaku/danmaku/model/n;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lmaster/flame/danmaku/danmaku/model/d;->w:Lmaster/flame/danmaku/danmaku/model/n;

    invoke-interface {v0}, Lmaster/flame/danmaku/danmaku/model/n;->f()Z

    move-result v0

    if-nez v0, :cond_0

    .line 370
    iget-object p1, p1, Lmaster/flame/danmaku/danmaku/model/d;->w:Lmaster/flame/danmaku/danmaku/model/n;

    invoke-interface {p1}, Lmaster/flame/danmaku/danmaku/model/n;->c()I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public b()V
    .locals 2

    const/4 v0, 0x1

    .line 265
    iput-boolean v0, p0, Lmaster/flame/danmaku/a/a$a;->j:Z

    .line 266
    iget-object v0, p0, Lmaster/flame/danmaku/a/a$a;->e:Lmaster/flame/danmaku/a/a;

    invoke-static {v0}, Lmaster/flame/danmaku/a/a;->a(Lmaster/flame/danmaku/a/a;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 267
    :try_start_0
    iget-object v1, p0, Lmaster/flame/danmaku/a/a$a;->e:Lmaster/flame/danmaku/a/a;

    invoke-static {v1}, Lmaster/flame/danmaku/a/a;->a(Lmaster/flame/danmaku/a/a;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 268
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 269
    iget-object v0, p0, Lmaster/flame/danmaku/a/a$a;->i:Lmaster/flame/danmaku/a/a$a$a;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 270
    iget-object v0, p0, Lmaster/flame/danmaku/a/a$a;->i:Lmaster/flame/danmaku/a/a$a$a;

    invoke-virtual {v0, v1}, Lmaster/flame/danmaku/a/a$a$a;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 271
    iget-object v0, p0, Lmaster/flame/danmaku/a/a$a;->i:Lmaster/flame/danmaku/a/a$a$a;

    invoke-virtual {v0}, Lmaster/flame/danmaku/a/a$a$a;->c()V

    .line 272
    iput-object v1, p0, Lmaster/flame/danmaku/a/a$a;->i:Lmaster/flame/danmaku/a/a$a$a;

    .line 274
    :cond_0
    iget-object v0, p0, Lmaster/flame/danmaku/a/a$a;->a:Landroid/os/HandlerThread;

    if-eqz v0, :cond_1

    .line 276
    :try_start_1
    iget-object v0, p0, Lmaster/flame/danmaku/a/a$a;->a:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 278
    invoke-static {v0}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    .line 280
    :goto_0
    iget-object v0, p0, Lmaster/flame/danmaku/a/a$a;->a:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 281
    iput-object v1, p0, Lmaster/flame/danmaku/a/a$a;->a:Landroid/os/HandlerThread;

    :cond_1
    return-void

    :catchall_0
    move-exception v1

    .line 268
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public b(J)V
    .locals 1

    .line 1019
    iget-object v0, p0, Lmaster/flame/danmaku/a/a$a;->i:Lmaster/flame/danmaku/a/a$a$a;

    if-eqz v0, :cond_0

    .line 1020
    iget-object v0, p0, Lmaster/flame/danmaku/a/a$a;->i:Lmaster/flame/danmaku/a/a$a$a;

    invoke-virtual {v0, p1, p2}, Lmaster/flame/danmaku/a/a$a$a;->a(J)V

    :cond_0
    return-void
.end method

.method public c()V
    .locals 1

    .line 286
    iget-object v0, p0, Lmaster/flame/danmaku/a/a$a;->i:Lmaster/flame/danmaku/a/a$a$a;

    if-eqz v0, :cond_0

    .line 287
    iget-object v0, p0, Lmaster/flame/danmaku/a/a$a;->i:Lmaster/flame/danmaku/a/a$a$a;

    invoke-virtual {v0}, Lmaster/flame/danmaku/a/a$a$a;->d()V

    goto :goto_0

    .line 289
    :cond_0
    invoke-virtual {p0}, Lmaster/flame/danmaku/a/a$a;->a()V

    :goto_0
    return-void
.end method

.method public d()F
    .locals 2

    .line 300
    iget v0, p0, Lmaster/flame/danmaku/a/a$a;->f:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 303
    :cond_0
    iget v0, p0, Lmaster/flame/danmaku/a/a$a;->g:I

    int-to-float v0, v0

    iget v1, p0, Lmaster/flame/danmaku/a/a$a;->f:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method public e()J
    .locals 3

    .line 1009
    iget-object v0, p0, Lmaster/flame/danmaku/a/a$a;->b:Lmaster/flame/danmaku/danmaku/model/android/e;

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmaster/flame/danmaku/a/a$a;->b:Lmaster/flame/danmaku/danmaku/model/android/e;

    invoke-virtual {v0}, Lmaster/flame/danmaku/danmaku/model/android/e;->a()I

    move-result v0

    if-lez v0, :cond_1

    .line 1010
    iget-object v0, p0, Lmaster/flame/danmaku/a/a$a;->b:Lmaster/flame/danmaku/danmaku/model/android/e;

    invoke-virtual {v0}, Lmaster/flame/danmaku/danmaku/model/android/e;->c()Lmaster/flame/danmaku/danmaku/model/d;

    move-result-object v0

    if-nez v0, :cond_0

    return-wide v1

    .line 1013
    :cond_0
    invoke-virtual {v0}, Lmaster/flame/danmaku/danmaku/model/d;->s()J

    move-result-wide v0

    return-wide v0

    :cond_1
    return-wide v1
.end method

.method public f()V
    .locals 2

    .line 1025
    iget-object v0, p0, Lmaster/flame/danmaku/a/a$a;->i:Lmaster/flame/danmaku/a/a$a$a;

    if-nez v0, :cond_0

    return-void

    .line 1028
    :cond_0
    iget-object v0, p0, Lmaster/flame/danmaku/a/a$a;->i:Lmaster/flame/danmaku/a/a$a$a;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lmaster/flame/danmaku/a/a$a$a;->removeMessages(I)V

    .line 1029
    iget-object v0, p0, Lmaster/flame/danmaku/a/a$a;->i:Lmaster/flame/danmaku/a/a$a$a;

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Lmaster/flame/danmaku/a/a$a$a;->removeMessages(I)V

    .line 1030
    iget-object v0, p0, Lmaster/flame/danmaku/a/a$a;->i:Lmaster/flame/danmaku/a/a$a$a;

    invoke-virtual {v0}, Lmaster/flame/danmaku/a/a$a$a;->a()V

    .line 1031
    iget-object v0, p0, Lmaster/flame/danmaku/a/a$a;->i:Lmaster/flame/danmaku/a/a$a$a;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lmaster/flame/danmaku/a/a$a$a;->removeMessages(I)V

    .line 1032
    iget-object v0, p0, Lmaster/flame/danmaku/a/a$a;->i:Lmaster/flame/danmaku/a/a$a$a;

    invoke-virtual {v0, v1}, Lmaster/flame/danmaku/a/a$a$a;->sendEmptyMessage(I)Z

    return-void
.end method

.method public g()V
    .locals 2

    .line 1036
    iget-object v0, p0, Lmaster/flame/danmaku/a/a$a;->i:Lmaster/flame/danmaku/a/a$a$a;

    if-nez v0, :cond_0

    return-void

    .line 1039
    :cond_0
    iget-object v0, p0, Lmaster/flame/danmaku/a/a$a;->i:Lmaster/flame/danmaku/a/a$a$a;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lmaster/flame/danmaku/a/a$a$a;->removeMessages(I)V

    .line 1040
    iget-object v0, p0, Lmaster/flame/danmaku/a/a$a;->i:Lmaster/flame/danmaku/a/a$a$a;

    invoke-virtual {v0, v1}, Lmaster/flame/danmaku/a/a$a$a;->sendEmptyMessage(I)Z

    return-void
.end method

.method public h()V
    .locals 2

    .line 1044
    iget-object v0, p0, Lmaster/flame/danmaku/a/a$a;->i:Lmaster/flame/danmaku/a/a$a$a;

    if-nez v0, :cond_0

    return-void

    .line 1047
    :cond_0
    iget-object v0, p0, Lmaster/flame/danmaku/a/a$a;->i:Lmaster/flame/danmaku/a/a$a$a;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lmaster/flame/danmaku/a/a$a$a;->removeMessages(I)V

    .line 1048
    iget-object v0, p0, Lmaster/flame/danmaku/a/a$a;->i:Lmaster/flame/danmaku/a/a$a$a;

    invoke-virtual {v0, v1}, Lmaster/flame/danmaku/a/a$a$a;->sendEmptyMessage(I)Z

    return-void
.end method
