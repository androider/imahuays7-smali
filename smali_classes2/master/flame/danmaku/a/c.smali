.class public Lmaster/flame/danmaku/a/c;
.super Landroid/os/Handler;
.source "DrawHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmaster/flame/danmaku/a/c$b;,
        Lmaster/flame/danmaku/a/c$a;
    }
.end annotation


# instance fields
.field private A:Z

.field private B:Z

.field private C:Z

.field public a:Lmaster/flame/danmaku/a/h;

.field private b:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

.field private c:Lmaster/flame/danmaku/a/c$b;

.field private d:J

.field private e:Z

.field private f:J

.field private g:Z

.field private h:Lmaster/flame/danmaku/a/c$a;

.field private i:Lmaster/flame/danmaku/danmaku/model/f;

.field private j:Lmaster/flame/danmaku/danmaku/a/a;

.field private k:Lmaster/flame/danmaku/a/g;

.field private l:Z

.field private m:Lmaster/flame/danmaku/danmaku/model/b;

.field private final n:Lmaster/flame/danmaku/danmaku/b/a$b;

.field private o:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private p:Lmaster/flame/danmaku/a/i;

.field private q:Z

.field private r:J

.field private s:J

.field private t:J

.field private u:J

.field private v:J

.field private w:Z

.field private x:J

.field private y:J

.field private z:Z


# direct methods
.method public constructor <init>(Landroid/os/Looper;Lmaster/flame/danmaku/a/g;Z)V
    .locals 2

    .line 147
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const-wide/16 v0, 0x0

    .line 89
    iput-wide v0, p0, Lmaster/flame/danmaku/a/c;->d:J

    const/4 p1, 0x1

    .line 91
    iput-boolean p1, p0, Lmaster/flame/danmaku/a/c;->e:Z

    .line 99
    new-instance v0, Lmaster/flame/danmaku/danmaku/model/f;

    invoke-direct {v0}, Lmaster/flame/danmaku/danmaku/model/f;-><init>()V

    iput-object v0, p0, Lmaster/flame/danmaku/a/c;->i:Lmaster/flame/danmaku/danmaku/model/f;

    .line 107
    iput-boolean p1, p0, Lmaster/flame/danmaku/a/c;->l:Z

    .line 111
    new-instance v0, Lmaster/flame/danmaku/danmaku/b/a$b;

    invoke-direct {v0}, Lmaster/flame/danmaku/danmaku/b/a$b;-><init>()V

    iput-object v0, p0, Lmaster/flame/danmaku/a/c;->n:Lmaster/flame/danmaku/danmaku/b/a$b;

    .line 115
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lmaster/flame/danmaku/a/c;->o:Ljava/util/LinkedList;

    const-wide/16 v0, 0x1e

    .line 121
    iput-wide v0, p0, Lmaster/flame/danmaku/a/c;->r:J

    const-wide/16 v0, 0x3c

    .line 123
    iput-wide v0, p0, Lmaster/flame/danmaku/a/c;->s:J

    const-wide/16 v0, 0x10

    .line 125
    iput-wide v0, p0, Lmaster/flame/danmaku/a/c;->t:J

    .line 148
    invoke-static {}, Ltv/cjump/jni/DeviceUtils;->f()Z

    move-result v0

    xor-int/2addr p1, v0

    iput-boolean p1, p0, Lmaster/flame/danmaku/a/c;->B:Z

    .line 149
    invoke-direct {p0, p2}, Lmaster/flame/danmaku/a/c;->a(Lmaster/flame/danmaku/a/g;)V

    if-eqz p3, :cond_0

    const/4 p1, 0x0

    .line 151
    invoke-virtual {p0, p1}, Lmaster/flame/danmaku/a/c;->b(Ljava/lang/Long;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 153
    invoke-virtual {p0, p1}, Lmaster/flame/danmaku/a/c;->c(Z)J

    .line 155
    :goto_0
    iput-boolean p3, p0, Lmaster/flame/danmaku/a/c;->l:Z

    return-void
.end method

.method private final a(J)J
    .locals 9

    .line 502
    iget-boolean v0, p0, Lmaster/flame/danmaku/a/c;->w:Z

    const-wide/16 v1, 0x0

    if-nez v0, :cond_9

    iget-boolean v0, p0, Lmaster/flame/danmaku/a/c;->z:Z

    if-eqz v0, :cond_0

    goto/16 :goto_4

    :cond_0
    const/4 v0, 0x1

    .line 505
    iput-boolean v0, p0, Lmaster/flame/danmaku/a/c;->z:Z

    .line 507
    iget-wide v3, p0, Lmaster/flame/danmaku/a/c;->f:J

    sub-long v5, p1, v3

    .line 508
    iget-boolean p1, p0, Lmaster/flame/danmaku/a/c;->C:Z

    if-eqz p1, :cond_1

    .line 509
    iget-object p1, p0, Lmaster/flame/danmaku/a/c;->h:Lmaster/flame/danmaku/a/c$a;

    if-eqz p1, :cond_8

    .line 510
    iget-object p1, p0, Lmaster/flame/danmaku/a/c;->h:Lmaster/flame/danmaku/a/c$a;

    iget-object p2, p0, Lmaster/flame/danmaku/a/c;->i:Lmaster/flame/danmaku/danmaku/model/f;

    invoke-interface {p1, p2}, Lmaster/flame/danmaku/a/c$a;->a(Lmaster/flame/danmaku/danmaku/model/f;)V

    .line 511
    iget-object p1, p0, Lmaster/flame/danmaku/a/c;->i:Lmaster/flame/danmaku/danmaku/model/f;

    invoke-virtual {p1}, Lmaster/flame/danmaku/danmaku/model/f;->a()J

    move-result-wide v1

    goto/16 :goto_3

    .line 513
    :cond_1
    iget-boolean p1, p0, Lmaster/flame/danmaku/a/c;->l:Z

    if-eqz p1, :cond_7

    iget-object p1, p0, Lmaster/flame/danmaku/a/c;->n:Lmaster/flame/danmaku/danmaku/b/a$b;

    iget-boolean p1, p1, Lmaster/flame/danmaku/danmaku/b/a$b;->p:Z

    if-nez p1, :cond_7

    iget-boolean p1, p0, Lmaster/flame/danmaku/a/c;->A:Z

    if-eqz p1, :cond_2

    goto/16 :goto_2

    .line 520
    :cond_2
    iget-object p1, p0, Lmaster/flame/danmaku/a/c;->i:Lmaster/flame/danmaku/danmaku/model/f;

    iget-wide p1, p1, Lmaster/flame/danmaku/danmaku/model/f;->a:J

    sub-long v3, v5, p1

    .line 521
    iget-wide p1, p0, Lmaster/flame/danmaku/a/c;->t:J

    invoke-direct {p0}, Lmaster/flame/danmaku/a/c;->r()J

    move-result-wide v5

    invoke-static {p1, p2, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    const-wide/16 v5, 0x7d0

    cmp-long v0, v3, v5

    if-gtz v0, :cond_5

    .line 522
    iget-object v0, p0, Lmaster/flame/danmaku/a/c;->n:Lmaster/flame/danmaku/danmaku/b/a$b;

    iget-wide v5, v0, Lmaster/flame/danmaku/danmaku/b/a$b;->m:J

    iget-wide v7, p0, Lmaster/flame/danmaku/a/c;->r:J

    cmp-long v0, v5, v7

    if-gtz v0, :cond_5

    iget-wide v5, p0, Lmaster/flame/danmaku/a/c;->r:J

    cmp-long v0, p1, v5

    if-lez v0, :cond_3

    goto :goto_0

    .line 526
    :cond_3
    iget-wide v0, p0, Lmaster/flame/danmaku/a/c;->t:J

    div-long v0, v3, v0

    add-long v5, p1, v0

    .line 527
    iget-wide p1, p0, Lmaster/flame/danmaku/a/c;->t:J

    invoke-static {p1, p2, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    .line 528
    iget-wide v0, p0, Lmaster/flame/danmaku/a/c;->r:J

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    .line 529
    iget-wide v0, p0, Lmaster/flame/danmaku/a/c;->v:J

    sub-long v5, p1, v0

    const-wide/16 v0, 0x3

    cmp-long v2, v5, v0

    if-lez v2, :cond_4

    const-wide/16 v0, 0x8

    cmp-long v2, v5, v0

    if-gez v2, :cond_4

    .line 530
    iget-wide v0, p0, Lmaster/flame/danmaku/a/c;->v:J

    iget-wide v5, p0, Lmaster/flame/danmaku/a/c;->t:J

    cmp-long v2, v0, v5

    if-ltz v2, :cond_4

    iget-wide v0, p0, Lmaster/flame/danmaku/a/c;->v:J

    iget-wide v5, p0, Lmaster/flame/danmaku/a/c;->r:J

    cmp-long v2, v0, v5

    if-gtz v2, :cond_4

    .line 531
    iget-wide p1, p0, Lmaster/flame/danmaku/a/c;->v:J

    :cond_4
    const/4 v0, 0x0

    sub-long v1, v3, p1

    .line 534
    iput-wide p1, p0, Lmaster/flame/danmaku/a/c;->v:J

    goto :goto_1

    :cond_5
    :goto_0
    move-wide p1, v3

    .line 536
    :goto_1
    iput-wide v1, p0, Lmaster/flame/danmaku/a/c;->y:J

    .line 537
    iget-object v0, p0, Lmaster/flame/danmaku/a/c;->i:Lmaster/flame/danmaku/danmaku/model/f;

    invoke-virtual {v0, p1, p2}, Lmaster/flame/danmaku/danmaku/model/f;->b(J)J

    .line 538
    iget-object v0, p0, Lmaster/flame/danmaku/a/c;->h:Lmaster/flame/danmaku/a/c$a;

    if-eqz v0, :cond_6

    .line 539
    iget-object v0, p0, Lmaster/flame/danmaku/a/c;->h:Lmaster/flame/danmaku/a/c$a;

    iget-object v1, p0, Lmaster/flame/danmaku/a/c;->i:Lmaster/flame/danmaku/danmaku/model/f;

    invoke-interface {v0, v1}, Lmaster/flame/danmaku/a/c$a;->a(Lmaster/flame/danmaku/danmaku/model/f;)V

    :cond_6
    move-wide v1, p1

    goto :goto_3

    .line 514
    :cond_7
    :goto_2
    iget-object p1, p0, Lmaster/flame/danmaku/a/c;->i:Lmaster/flame/danmaku/danmaku/model/f;

    invoke-virtual {p1, v5, v6}, Lmaster/flame/danmaku/danmaku/model/f;->a(J)J

    .line 515
    iput-wide v1, p0, Lmaster/flame/danmaku/a/c;->y:J

    .line 516
    iget-object p1, p0, Lmaster/flame/danmaku/a/c;->h:Lmaster/flame/danmaku/a/c$a;

    if-eqz p1, :cond_8

    .line 517
    iget-object p1, p0, Lmaster/flame/danmaku/a/c;->h:Lmaster/flame/danmaku/a/c$a;

    iget-object p2, p0, Lmaster/flame/danmaku/a/c;->i:Lmaster/flame/danmaku/danmaku/model/f;

    invoke-interface {p1, p2}, Lmaster/flame/danmaku/a/c$a;->a(Lmaster/flame/danmaku/danmaku/model/f;)V

    :cond_8
    :goto_3
    const/4 p1, 0x0

    .line 544
    iput-boolean p1, p0, Lmaster/flame/danmaku/a/c;->z:Z

    return-wide v1

    :cond_9
    :goto_4
    return-wide v1
.end method

.method static synthetic a(Lmaster/flame/danmaku/a/c;J)J
    .locals 0

    .line 43
    iput-wide p1, p0, Lmaster/flame/danmaku/a/c;->d:J

    return-wide p1
.end method

.method static synthetic a(Lmaster/flame/danmaku/a/c;)Lmaster/flame/danmaku/a/c$a;
    .locals 0

    .line 43
    iget-object p0, p0, Lmaster/flame/danmaku/a/c;->h:Lmaster/flame/danmaku/a/c$a;

    return-object p0
.end method

.method private a(ZLmaster/flame/danmaku/danmaku/model/f;Landroid/content/Context;IIZLmaster/flame/danmaku/a/h$a;)Lmaster/flame/danmaku/a/h;
    .locals 1

    .line 621
    iget-object v0, p0, Lmaster/flame/danmaku/a/c;->b:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    invoke-virtual {v0}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->b()Lmaster/flame/danmaku/danmaku/model/b;

    move-result-object v0

    iput-object v0, p0, Lmaster/flame/danmaku/a/c;->m:Lmaster/flame/danmaku/danmaku/model/b;

    .line 622
    iget-object v0, p0, Lmaster/flame/danmaku/a/c;->m:Lmaster/flame/danmaku/danmaku/model/b;

    invoke-virtual {v0, p4, p5}, Lmaster/flame/danmaku/danmaku/model/b;->a(II)V

    .line 623
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p3

    .line 624
    iget-object p4, p0, Lmaster/flame/danmaku/a/c;->m:Lmaster/flame/danmaku/danmaku/model/b;

    iget p5, p3, Landroid/util/DisplayMetrics;->density:F

    iget v0, p3, Landroid/util/DisplayMetrics;->densityDpi:I

    iget p3, p3, Landroid/util/DisplayMetrics;->scaledDensity:F

    invoke-virtual {p4, p5, v0, p3}, Lmaster/flame/danmaku/danmaku/model/b;->a(FIF)V

    .line 626
    iget-object p3, p0, Lmaster/flame/danmaku/a/c;->m:Lmaster/flame/danmaku/danmaku/model/b;

    iget-object p4, p0, Lmaster/flame/danmaku/a/c;->b:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    iget p4, p4, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->c:F

    invoke-virtual {p3, p4}, Lmaster/flame/danmaku/danmaku/model/b;->b(F)V

    .line 627
    iget-object p3, p0, Lmaster/flame/danmaku/a/c;->m:Lmaster/flame/danmaku/danmaku/model/b;

    invoke-virtual {p3, p6}, Lmaster/flame/danmaku/danmaku/model/b;->a(Z)V

    if-eqz p1, :cond_0

    .line 628
    new-instance p1, Lmaster/flame/danmaku/a/a;

    iget-object p3, p0, Lmaster/flame/danmaku/a/c;->b:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    invoke-direct {p1, p2, p3, p7}, Lmaster/flame/danmaku/a/a;-><init>(Lmaster/flame/danmaku/danmaku/model/f;Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;Lmaster/flame/danmaku/a/h$a;)V

    goto :goto_0

    :cond_0
    new-instance p1, Lmaster/flame/danmaku/a/e;

    iget-object p3, p0, Lmaster/flame/danmaku/a/c;->b:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    invoke-direct {p1, p2, p3, p7}, Lmaster/flame/danmaku/a/e;-><init>(Lmaster/flame/danmaku/danmaku/model/f;Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;Lmaster/flame/danmaku/a/h$a;)V

    .line 631
    :goto_0
    iget-object p2, p0, Lmaster/flame/danmaku/a/c;->j:Lmaster/flame/danmaku/danmaku/a/a;

    invoke-interface {p1, p2}, Lmaster/flame/danmaku/a/h;->b(Lmaster/flame/danmaku/danmaku/a/a;)V

    .line 632
    invoke-interface {p1}, Lmaster/flame/danmaku/a/h;->c()V

    const/16 p2, 0xa

    const/4 p3, 0x0

    .line 633
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-virtual {p0, p2, p3}, Lmaster/flame/danmaku/a/c;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    return-object p1
.end method

.method private a(Ljava/lang/Runnable;)V
    .locals 9

    .line 565
    iget-object v0, p0, Lmaster/flame/danmaku/a/c;->a:Lmaster/flame/danmaku/a/h;

    if-nez v0, :cond_0

    .line 566
    iget-object v0, p0, Lmaster/flame/danmaku/a/c;->k:Lmaster/flame/danmaku/a/g;

    invoke-interface {v0}, Lmaster/flame/danmaku/a/g;->n()Z

    move-result v2

    iget-object v3, p0, Lmaster/flame/danmaku/a/c;->i:Lmaster/flame/danmaku/danmaku/model/f;

    iget-object v0, p0, Lmaster/flame/danmaku/a/c;->k:Lmaster/flame/danmaku/a/g;

    .line 567
    invoke-interface {v0}, Lmaster/flame/danmaku/a/g;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v0, p0, Lmaster/flame/danmaku/a/c;->k:Lmaster/flame/danmaku/a/g;

    invoke-interface {v0}, Lmaster/flame/danmaku/a/g;->getViewWidth()I

    move-result v5

    iget-object v0, p0, Lmaster/flame/danmaku/a/c;->k:Lmaster/flame/danmaku/a/g;

    invoke-interface {v0}, Lmaster/flame/danmaku/a/g;->getViewHeight()I

    move-result v6

    iget-object v0, p0, Lmaster/flame/danmaku/a/c;->k:Lmaster/flame/danmaku/a/g;

    .line 568
    invoke-interface {v0}, Lmaster/flame/danmaku/a/g;->isHardwareAccelerated()Z

    move-result v7

    new-instance v8, Lmaster/flame/danmaku/a/c$3;

    invoke-direct {v8, p0, p1}, Lmaster/flame/danmaku/a/c$3;-><init>(Lmaster/flame/danmaku/a/c;Ljava/lang/Runnable;)V

    move-object v1, p0

    .line 566
    invoke-direct/range {v1 .. v8}, Lmaster/flame/danmaku/a/c;->a(ZLmaster/flame/danmaku/danmaku/model/f;Landroid/content/Context;IIZLmaster/flame/danmaku/a/h$a;)Lmaster/flame/danmaku/a/h;

    move-result-object p1

    iput-object p1, p0, Lmaster/flame/danmaku/a/c;->a:Lmaster/flame/danmaku/a/h;

    goto :goto_0

    .line 608
    :cond_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void
.end method

.method private a(Lmaster/flame/danmaku/a/g;)V
    .locals 0

    .line 159
    iput-object p1, p0, Lmaster/flame/danmaku/a/c;->k:Lmaster/flame/danmaku/a/g;

    return-void
.end method

.method static synthetic a(Lmaster/flame/danmaku/a/c;Z)Z
    .locals 0

    .line 43
    iput-boolean p1, p0, Lmaster/flame/danmaku/a/c;->g:Z

    return p1
.end method

.method static synthetic b(Lmaster/flame/danmaku/a/c;J)J
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2}, Lmaster/flame/danmaku/a/c;->a(J)J

    move-result-wide p0

    return-wide p0
.end method

.method private b(J)V
    .locals 5

    .line 783
    invoke-virtual {p0}, Lmaster/flame/danmaku/a/c;->b()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lmaster/flame/danmaku/a/c;->c()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lmaster/flame/danmaku/a/c;->w:Z

    if-eqz v0, :cond_0

    goto :goto_3

    .line 786
    :cond_0
    iget-object v0, p0, Lmaster/flame/danmaku/a/c;->n:Lmaster/flame/danmaku/danmaku/b/a$b;

    invoke-static {}, Lmaster/flame/danmaku/danmaku/c/c;->a()J

    move-result-wide v1

    iput-wide v1, v0, Lmaster/flame/danmaku/danmaku/b/a$b;->q:J

    const/4 v0, 0x1

    .line 787
    iput-boolean v0, p0, Lmaster/flame/danmaku/a/c;->A:Z

    .line 788
    iget-boolean v0, p0, Lmaster/flame/danmaku/a/c;->q:Z

    const-wide/32 v1, 0x989680

    const/16 v3, 0xb

    if-eqz v0, :cond_3

    .line 789
    iget-object v0, p0, Lmaster/flame/danmaku/a/c;->p:Lmaster/flame/danmaku/a/i;

    if-nez v0, :cond_1

    return-void

    .line 793
    :cond_1
    :try_start_0
    iget-object v0, p0, Lmaster/flame/danmaku/a/c;->a:Lmaster/flame/danmaku/a/h;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    cmp-long v4, p1, v1

    if-nez v4, :cond_2

    .line 795
    :try_start_1
    iget-object p1, p0, Lmaster/flame/danmaku/a/c;->a:Lmaster/flame/danmaku/a/h;

    invoke-virtual {p1}, Ljava/lang/Object;->wait()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 797
    :cond_2
    iget-object v1, p0, Lmaster/flame/danmaku/a/c;->a:Lmaster/flame/danmaku/a/h;

    invoke-virtual {v1, p1, p2}, Ljava/lang/Object;->wait(J)V

    .line 799
    :goto_0
    invoke-virtual {p0, v3}, Lmaster/flame/danmaku/a/c;->sendEmptyMessage(I)Z

    .line 800
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p1

    .line 802
    invoke-static {p1}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_3
    cmp-long v0, p1, v1

    const/4 v1, 0x2

    if-nez v0, :cond_4

    .line 806
    invoke-virtual {p0, v3}, Lmaster/flame/danmaku/a/c;->removeMessages(I)V

    .line 807
    invoke-virtual {p0, v1}, Lmaster/flame/danmaku/a/c;->removeMessages(I)V

    goto :goto_2

    .line 809
    :cond_4
    invoke-virtual {p0, v3}, Lmaster/flame/danmaku/a/c;->removeMessages(I)V

    .line 810
    invoke-virtual {p0, v1}, Lmaster/flame/danmaku/a/c;->removeMessages(I)V

    .line 811
    invoke-virtual {p0, v3, p1, p2}, Lmaster/flame/danmaku/a/c;->sendEmptyMessageDelayed(IJ)Z

    :goto_2
    return-void

    :cond_5
    :goto_3
    return-void
.end method

.method static synthetic b(Lmaster/flame/danmaku/a/c;)Z
    .locals 0

    .line 43
    iget-boolean p0, p0, Lmaster/flame/danmaku/a/c;->e:Z

    return p0
.end method

.method static synthetic c(Lmaster/flame/danmaku/a/c;)J
    .locals 2

    .line 43
    iget-wide v0, p0, Lmaster/flame/danmaku/a/c;->t:J

    return-wide v0
.end method

.method static synthetic c(Lmaster/flame/danmaku/a/c;J)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2}, Lmaster/flame/danmaku/a/c;->b(J)V

    return-void
.end method

.method static synthetic d(Lmaster/flame/danmaku/a/c;)Z
    .locals 0

    .line 43
    iget-boolean p0, p0, Lmaster/flame/danmaku/a/c;->C:Z

    return p0
.end method

.method static synthetic e(Lmaster/flame/danmaku/a/c;)Lmaster/flame/danmaku/a/g;
    .locals 0

    .line 43
    iget-object p0, p0, Lmaster/flame/danmaku/a/c;->k:Lmaster/flame/danmaku/a/g;

    return-object p0
.end method

.method static synthetic f(Lmaster/flame/danmaku/a/c;)J
    .locals 2

    .line 43
    iget-wide v0, p0, Lmaster/flame/danmaku/a/c;->s:J

    return-wide v0
.end method

.method static synthetic g(Lmaster/flame/danmaku/a/c;)Lmaster/flame/danmaku/danmaku/model/f;
    .locals 0

    .line 43
    iget-object p0, p0, Lmaster/flame/danmaku/a/c;->i:Lmaster/flame/danmaku/danmaku/model/f;

    return-object p0
.end method

.method static synthetic h(Lmaster/flame/danmaku/a/c;)Ljava/util/LinkedList;
    .locals 0

    .line 43
    iget-object p0, p0, Lmaster/flame/danmaku/a/c;->o:Ljava/util/LinkedList;

    return-object p0
.end method

.method static synthetic i(Lmaster/flame/danmaku/a/c;)Z
    .locals 0

    .line 43
    iget-boolean p0, p0, Lmaster/flame/danmaku/a/c;->l:Z

    return p0
.end method

.method static synthetic j(Lmaster/flame/danmaku/a/c;)Lmaster/flame/danmaku/danmaku/b/a$b;
    .locals 0

    .line 43
    iget-object p0, p0, Lmaster/flame/danmaku/a/c;->n:Lmaster/flame/danmaku/danmaku/b/a$b;

    return-object p0
.end method

.method private declared-synchronized j()V
    .locals 3

    monitor-enter p0

    .line 369
    :try_start_0
    iget-object v0, p0, Lmaster/flame/danmaku/a/c;->p:Lmaster/flame/danmaku/a/i;

    const/4 v1, 0x0

    .line 370
    iput-object v1, p0, Lmaster/flame/danmaku/a/c;->p:Lmaster/flame/danmaku/a/i;

    if-eqz v0, :cond_0

    .line 372
    iget-object v1, p0, Lmaster/flame/danmaku/a/c;->a:Lmaster/flame/danmaku/a/h;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 373
    :try_start_1
    iget-object v2, p0, Lmaster/flame/danmaku/a/c;->a:Lmaster/flame/danmaku/a/h;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 374
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 375
    :try_start_2
    invoke-virtual {v0}, Lmaster/flame/danmaku/a/i;->a()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const-wide/16 v1, 0x7d0

    .line 377
    :try_start_3
    invoke-virtual {v0, v1, v2}, Lmaster/flame/danmaku/a/i;->join(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 379
    :try_start_4
    invoke-static {v0}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 374
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 382
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :catchall_1
    move-exception v0

    .line 368
    monitor-exit p0

    throw v0
.end method

.method private k()V
    .locals 9

    .line 385
    iget-boolean v0, p0, Lmaster/flame/danmaku/a/c;->e:Z

    if-eqz v0, :cond_0

    return-void

    .line 388
    :cond_0
    invoke-static {}, Lmaster/flame/danmaku/danmaku/c/c;->a()J

    move-result-wide v0

    .line 389
    invoke-direct {p0, v0, v1}, Lmaster/flame/danmaku/a/c;->a(J)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    const/4 v2, 0x2

    if-gez v4, :cond_1

    .line 390
    iget-boolean v3, p0, Lmaster/flame/danmaku/a/c;->C:Z

    if-nez v3, :cond_1

    .line 391
    invoke-virtual {p0, v2}, Lmaster/flame/danmaku/a/c;->removeMessages(I)V

    const-wide/16 v3, 0x3c

    sub-long v5, v3, v0

    .line 392
    invoke-virtual {p0, v2, v5, v6}, Lmaster/flame/danmaku/a/c;->sendEmptyMessageDelayed(IJ)Z

    return-void

    .line 395
    :cond_1
    iget-object v0, p0, Lmaster/flame/danmaku/a/c;->k:Lmaster/flame/danmaku/a/g;

    invoke-interface {v0}, Lmaster/flame/danmaku/a/g;->l()J

    move-result-wide v0

    .line 396
    invoke-virtual {p0, v2}, Lmaster/flame/danmaku/a/c;->removeMessages(I)V

    .line 397
    iget-wide v3, p0, Lmaster/flame/danmaku/a/c;->s:J

    cmp-long v5, v0, v3

    if-lez v5, :cond_2

    .line 398
    iget-object v3, p0, Lmaster/flame/danmaku/a/c;->i:Lmaster/flame/danmaku/danmaku/model/f;

    invoke-virtual {v3, v0, v1}, Lmaster/flame/danmaku/danmaku/model/f;->b(J)J

    .line 399
    iget-object v3, p0, Lmaster/flame/danmaku/a/c;->o:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->clear()V

    .line 401
    :cond_2
    iget-boolean v3, p0, Lmaster/flame/danmaku/a/c;->l:Z

    if-nez v3, :cond_3

    const-wide/32 v0, 0x989680

    .line 402
    invoke-direct {p0, v0, v1}, Lmaster/flame/danmaku/a/c;->b(J)V

    return-void

    .line 404
    :cond_3
    iget-object v3, p0, Lmaster/flame/danmaku/a/c;->n:Lmaster/flame/danmaku/danmaku/b/a$b;

    iget-boolean v3, v3, Lmaster/flame/danmaku/danmaku/b/a$b;->p:Z

    if-eqz v3, :cond_4

    iget-boolean v3, p0, Lmaster/flame/danmaku/a/c;->B:Z

    if-eqz v3, :cond_4

    .line 405
    iget-object v3, p0, Lmaster/flame/danmaku/a/c;->n:Lmaster/flame/danmaku/danmaku/b/a$b;

    iget-wide v3, v3, Lmaster/flame/danmaku/danmaku/b/a$b;->o:J

    iget-object v5, p0, Lmaster/flame/danmaku/a/c;->i:Lmaster/flame/danmaku/danmaku/model/f;

    iget-wide v5, v5, Lmaster/flame/danmaku/danmaku/model/f;->a:J

    sub-long v7, v3, v5

    const-wide/16 v3, 0x1f4

    cmp-long v5, v7, v3

    if-lez v5, :cond_4

    const-wide/16 v0, 0xa

    sub-long v2, v7, v0

    .line 407
    invoke-direct {p0, v2, v3}, Lmaster/flame/danmaku/a/c;->b(J)V

    return-void

    .line 412
    :cond_4
    iget-wide v3, p0, Lmaster/flame/danmaku/a/c;->t:J

    cmp-long v5, v0, v3

    if-gez v5, :cond_5

    .line 413
    iget-wide v3, p0, Lmaster/flame/danmaku/a/c;->t:J

    sub-long v5, v3, v0

    invoke-virtual {p0, v2, v5, v6}, Lmaster/flame/danmaku/a/c;->sendEmptyMessageDelayed(IJ)Z

    return-void

    .line 416
    :cond_5
    invoke-virtual {p0, v2}, Lmaster/flame/danmaku/a/c;->sendEmptyMessage(I)Z

    return-void
.end method

.method static synthetic k(Lmaster/flame/danmaku/a/c;)Z
    .locals 0

    .line 43
    iget-boolean p0, p0, Lmaster/flame/danmaku/a/c;->B:Z

    return p0
.end method

.method private l()V
    .locals 2

    .line 420
    iget-object v0, p0, Lmaster/flame/danmaku/a/c;->p:Lmaster/flame/danmaku/a/i;

    if-eqz v0, :cond_0

    return-void

    .line 423
    :cond_0
    new-instance v0, Lmaster/flame/danmaku/a/c$2;

    const-string v1, "DFM Update"

    invoke-direct {v0, p0, v1}, Lmaster/flame/danmaku/a/c$2;-><init>(Lmaster/flame/danmaku/a/c;Ljava/lang/String;)V

    iput-object v0, p0, Lmaster/flame/danmaku/a/c;->p:Lmaster/flame/danmaku/a/i;

    .line 459
    iget-object v0, p0, Lmaster/flame/danmaku/a/c;->p:Lmaster/flame/danmaku/a/i;

    invoke-virtual {v0}, Lmaster/flame/danmaku/a/i;->start()V

    return-void
.end method

.method static synthetic l(Lmaster/flame/danmaku/a/c;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Lmaster/flame/danmaku/a/c;->q()V

    return-void
.end method

.method private m()V
    .locals 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .line 472
    iget-boolean v0, p0, Lmaster/flame/danmaku/a/c;->e:Z

    if-eqz v0, :cond_0

    return-void

    .line 475
    :cond_0
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    iget-object v1, p0, Lmaster/flame/danmaku/a/c;->c:Lmaster/flame/danmaku/a/c$b;

    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 476
    invoke-static {}, Lmaster/flame/danmaku/danmaku/c/c;->a()J

    move-result-wide v0

    .line 477
    invoke-direct {p0, v0, v1}, Lmaster/flame/danmaku/a/c;->a(J)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    const/4 v0, 0x2

    if-gez v4, :cond_1

    .line 479
    invoke-virtual {p0, v0}, Lmaster/flame/danmaku/a/c;->removeMessages(I)V

    return-void

    .line 482
    :cond_1
    iget-object v1, p0, Lmaster/flame/danmaku/a/c;->k:Lmaster/flame/danmaku/a/g;

    invoke-interface {v1}, Lmaster/flame/danmaku/a/g;->l()J

    move-result-wide v1

    .line 483
    invoke-virtual {p0, v0}, Lmaster/flame/danmaku/a/c;->removeMessages(I)V

    .line 484
    iget-wide v3, p0, Lmaster/flame/danmaku/a/c;->s:J

    cmp-long v0, v1, v3

    if-lez v0, :cond_2

    .line 485
    iget-object v0, p0, Lmaster/flame/danmaku/a/c;->i:Lmaster/flame/danmaku/danmaku/model/f;

    invoke-virtual {v0, v1, v2}, Lmaster/flame/danmaku/danmaku/model/f;->b(J)J

    .line 486
    iget-object v0, p0, Lmaster/flame/danmaku/a/c;->o:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 488
    :cond_2
    iget-boolean v0, p0, Lmaster/flame/danmaku/a/c;->l:Z

    if-nez v0, :cond_3

    const-wide/32 v0, 0x989680

    .line 489
    invoke-direct {p0, v0, v1}, Lmaster/flame/danmaku/a/c;->b(J)V

    return-void

    .line 491
    :cond_3
    iget-object v0, p0, Lmaster/flame/danmaku/a/c;->n:Lmaster/flame/danmaku/danmaku/b/a$b;

    iget-boolean v0, v0, Lmaster/flame/danmaku/danmaku/b/a$b;->p:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lmaster/flame/danmaku/a/c;->B:Z

    if-eqz v0, :cond_4

    .line 492
    iget-object v0, p0, Lmaster/flame/danmaku/a/c;->n:Lmaster/flame/danmaku/danmaku/b/a$b;

    iget-wide v0, v0, Lmaster/flame/danmaku/danmaku/b/a$b;->o:J

    iget-object v2, p0, Lmaster/flame/danmaku/a/c;->i:Lmaster/flame/danmaku/danmaku/model/f;

    iget-wide v2, v2, Lmaster/flame/danmaku/danmaku/model/f;->a:J

    sub-long v4, v0, v2

    const-wide/16 v0, 0x1f4

    cmp-long v2, v4, v0

    if-lez v2, :cond_4

    const-wide/16 v0, 0xa

    sub-long v2, v4, v0

    .line 494
    invoke-direct {p0, v2, v3}, Lmaster/flame/danmaku/a/c;->b(J)V

    return-void

    :cond_4
    return-void
.end method

.method static synthetic m(Lmaster/flame/danmaku/a/c;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Lmaster/flame/danmaku/a/c;->o()V

    return-void
.end method

.method static synthetic n(Lmaster/flame/danmaku/a/c;)Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;
    .locals 0

    .line 43
    iget-object p0, p0, Lmaster/flame/danmaku/a/c;->b:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    return-object p0
.end method

.method private n()V
    .locals 2

    .line 549
    iget-boolean v0, p0, Lmaster/flame/danmaku/a/c;->A:Z

    if-eqz v0, :cond_0

    .line 550
    invoke-static {}, Lmaster/flame/danmaku/danmaku/c/c;->a()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lmaster/flame/danmaku/a/c;->a(J)J

    :cond_0
    return-void
.end method

.method private o()V
    .locals 8

    const-wide/16 v0, 0x10

    long-to-float v2, v0

    const/high16 v3, 0x40200000    # 2.5f

    mul-float v2, v2, v3

    float-to-long v4, v2

    const-wide/16 v6, 0x21

    .line 556
    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    iput-wide v4, p0, Lmaster/flame/danmaku/a/c;->r:J

    .line 557
    iget-wide v4, p0, Lmaster/flame/danmaku/a/c;->r:J

    long-to-float v2, v4

    mul-float v2, v2, v3

    float-to-long v2, v2

    iput-wide v2, p0, Lmaster/flame/danmaku/a/c;->s:J

    const-wide/16 v2, 0xf

    .line 558
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lmaster/flame/danmaku/a/c;->t:J

    .line 559
    iget-wide v0, p0, Lmaster/flame/danmaku/a/c;->t:J

    const-wide/16 v2, 0x3

    add-long v4, v0, v2

    iput-wide v4, p0, Lmaster/flame/danmaku/a/c;->u:J

    return-void
.end method

.method static synthetic o(Lmaster/flame/danmaku/a/c;)Z
    .locals 0

    .line 43
    iget-boolean p0, p0, Lmaster/flame/danmaku/a/c;->A:Z

    return p0
.end method

.method private p()V
    .locals 3

    .line 754
    iget-boolean v0, p0, Lmaster/flame/danmaku/a/c;->e:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lmaster/flame/danmaku/a/c;->l:Z

    if-eqz v0, :cond_0

    const/16 v0, 0xc

    .line 755
    invoke-virtual {p0, v0}, Lmaster/flame/danmaku/a/c;->removeMessages(I)V

    const-wide/16 v1, 0x64

    .line 756
    invoke-virtual {p0, v0, v1, v2}, Lmaster/flame/danmaku/a/c;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method

.method static synthetic p(Lmaster/flame/danmaku/a/c;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Lmaster/flame/danmaku/a/c;->p()V

    return-void
.end method

.method private q()V
    .locals 2

    .line 761
    iget-boolean v0, p0, Lmaster/flame/danmaku/a/c;->A:Z

    if-nez v0, :cond_0

    return-void

    .line 764
    :cond_0
    iget-object v0, p0, Lmaster/flame/danmaku/a/c;->a:Lmaster/flame/danmaku/a/h;

    if-eqz v0, :cond_1

    .line 765
    iget-object v0, p0, Lmaster/flame/danmaku/a/c;->a:Lmaster/flame/danmaku/a/h;

    invoke-interface {v0}, Lmaster/flame/danmaku/a/h;->e()V

    .line 767
    :cond_1
    iget-boolean v0, p0, Lmaster/flame/danmaku/a/c;->q:Z

    if-eqz v0, :cond_2

    .line 768
    monitor-enter p0

    .line 769
    :try_start_0
    iget-object v0, p0, Lmaster/flame/danmaku/a/c;->o:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 770
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 771
    iget-object v0, p0, Lmaster/flame/danmaku/a/c;->a:Lmaster/flame/danmaku/a/h;

    monitor-enter v0

    .line 772
    :try_start_1
    iget-object v1, p0, Lmaster/flame/danmaku/a/c;->a:Lmaster/flame/danmaku/a/h;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 773
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :catchall_1
    move-exception v0

    .line 770
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    .line 775
    :cond_2
    iget-object v0, p0, Lmaster/flame/danmaku/a/c;->o:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    const/4 v0, 0x2

    .line 776
    invoke-virtual {p0, v0}, Lmaster/flame/danmaku/a/c;->removeMessages(I)V

    .line 777
    invoke-virtual {p0, v0}, Lmaster/flame/danmaku/a/c;->sendEmptyMessage(I)Z

    :goto_0
    const/4 v0, 0x0

    .line 779
    iput-boolean v0, p0, Lmaster/flame/danmaku/a/c;->A:Z

    return-void
.end method

.method private declared-synchronized r()J
    .locals 7

    monitor-enter p0

    .line 817
    :try_start_0
    iget-object v0, p0, Lmaster/flame/danmaku/a/c;->o:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v1, 0x0

    if-gtz v0, :cond_0

    .line 819
    monitor-exit p0

    return-wide v1

    .line 820
    :cond_0
    :try_start_1
    iget-object v3, p0, Lmaster/flame/danmaku/a/c;->o:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->peekFirst()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    .line 821
    iget-object v4, p0, Lmaster/flame/danmaku/a/c;->o:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->peekLast()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    if-eqz v3, :cond_2

    if-nez v4, :cond_1

    goto :goto_0

    .line 825
    :cond_1
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const/4 v5, 0x0

    sub-long v5, v1, v3

    int-to-long v0, v0

    .line 826
    div-long/2addr v5, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-wide v5

    .line 823
    :cond_2
    :goto_0
    monitor-exit p0

    return-wide v1

    :catchall_0
    move-exception v0

    .line 816
    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized s()V
    .locals 3

    monitor-enter p0

    .line 830
    :try_start_0
    invoke-static {}, Lmaster/flame/danmaku/danmaku/c/c;->a()J

    move-result-wide v0

    .line 831
    iget-object v2, p0, Lmaster/flame/danmaku/a/c;->o:Ljava/util/LinkedList;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 832
    iget-object v0, p0, Lmaster/flame/danmaku/a/c;->o:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/16 v1, 0x1f4

    if-le v0, v1, :cond_0

    .line 834
    iget-object v0, p0, Lmaster/flame/danmaku/a/c;->o:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 837
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 829
    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public a(Landroid/graphics/Canvas;)Lmaster/flame/danmaku/danmaku/b/a$b;
    .locals 14

    .line 714
    iget-object v0, p0, Lmaster/flame/danmaku/a/c;->a:Lmaster/flame/danmaku/a/h;

    if-nez v0, :cond_0

    .line 715
    iget-object p1, p0, Lmaster/flame/danmaku/a/c;->n:Lmaster/flame/danmaku/danmaku/b/a$b;

    return-object p1

    .line 717
    :cond_0
    iget-boolean v0, p0, Lmaster/flame/danmaku/a/c;->A:Z

    if-nez v0, :cond_4

    .line 718
    iget-object v0, p0, Lmaster/flame/danmaku/a/c;->b:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    iget-object v0, v0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->m:Lmaster/flame/danmaku/danmaku/model/a;

    if-eqz v0, :cond_4

    .line 721
    invoke-virtual {v0}, Lmaster/flame/danmaku/danmaku/model/a;->d()Z

    move-result v1

    if-nez v1, :cond_1

    .line 722
    iget-boolean v2, p0, Lmaster/flame/danmaku/a/c;->e:Z

    if-eqz v2, :cond_1

    goto :goto_0

    .line 725
    :cond_1
    invoke-virtual {v0}, Lmaster/flame/danmaku/danmaku/model/a;->b()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    .line 727
    iget-object v2, p0, Lmaster/flame/danmaku/a/c;->i:Lmaster/flame/danmaku/danmaku/model/f;

    iget-wide v4, v2, Lmaster/flame/danmaku/danmaku/model/f;->a:J

    .line 728
    invoke-virtual {v0}, Lmaster/flame/danmaku/danmaku/model/a;->a()J

    move-result-wide v10

    sub-long v12, v10, v4

    .line 730
    invoke-static {v12, v13}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    invoke-virtual {v0}, Lmaster/flame/danmaku/danmaku/model/a;->c()J

    move-result-wide v6

    cmp-long v0, v2, v6

    if-lez v0, :cond_4

    if-eqz v1, :cond_2

    .line 731
    iget-boolean v0, p0, Lmaster/flame/danmaku/a/c;->e:Z

    if-eqz v0, :cond_2

    .line 732
    invoke-virtual {p0}, Lmaster/flame/danmaku/a/c;->d()V

    .line 734
    :cond_2
    iget-object v3, p0, Lmaster/flame/danmaku/a/c;->a:Lmaster/flame/danmaku/a/h;

    move-wide v6, v10

    move-wide v8, v12

    invoke-interface/range {v3 .. v9}, Lmaster/flame/danmaku/a/h;->a(JJJ)V

    .line 735
    iget-object v0, p0, Lmaster/flame/danmaku/a/c;->i:Lmaster/flame/danmaku/danmaku/model/f;

    invoke-virtual {v0, v10, v11}, Lmaster/flame/danmaku/danmaku/model/f;->a(J)J

    .line 736
    iget-wide v0, p0, Lmaster/flame/danmaku/a/c;->f:J

    sub-long v2, v0, v12

    iput-wide v2, p0, Lmaster/flame/danmaku/a/c;->f:J

    const-wide/16 v0, 0x0

    .line 737
    iput-wide v0, p0, Lmaster/flame/danmaku/a/c;->y:J

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    if-ne v2, v0, :cond_4

    if-eqz v1, :cond_4

    .line 740
    iget-boolean v0, p0, Lmaster/flame/danmaku/a/c;->e:Z

    if-nez v0, :cond_4

    .line 741
    invoke-virtual {p0}, Lmaster/flame/danmaku/a/c;->f()V

    .line 747
    :cond_4
    :goto_0
    iget-object v0, p0, Lmaster/flame/danmaku/a/c;->m:Lmaster/flame/danmaku/danmaku/model/b;

    invoke-virtual {v0, p1}, Lmaster/flame/danmaku/danmaku/model/b;->a(Ljava/lang/Object;)V

    .line 748
    iget-object p1, p0, Lmaster/flame/danmaku/a/c;->n:Lmaster/flame/danmaku/danmaku/b/a$b;

    iget-object v0, p0, Lmaster/flame/danmaku/a/c;->a:Lmaster/flame/danmaku/a/h;

    iget-object v1, p0, Lmaster/flame/danmaku/a/c;->m:Lmaster/flame/danmaku/danmaku/model/b;

    invoke-interface {v0, v1}, Lmaster/flame/danmaku/a/h;->a(Lmaster/flame/danmaku/danmaku/model/b;)Lmaster/flame/danmaku/danmaku/b/a$b;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmaster/flame/danmaku/danmaku/b/a$b;->a(Lmaster/flame/danmaku/danmaku/b/a$b;)V

    .line 749
    invoke-direct {p0}, Lmaster/flame/danmaku/a/c;->s()V

    .line 750
    iget-object p1, p0, Lmaster/flame/danmaku/a/c;->n:Lmaster/flame/danmaku/danmaku/b/a$b;

    return-object p1
.end method

.method public a()V
    .locals 1

    const/4 v0, 0x1

    .line 187
    iput-boolean v0, p0, Lmaster/flame/danmaku/a/c;->e:Z

    const/4 v0, 0x6

    .line 188
    invoke-virtual {p0, v0}, Lmaster/flame/danmaku/a/c;->sendEmptyMessage(I)Z

    return-void
.end method

.method public a(II)V
    .locals 1

    .line 844
    iget-object v0, p0, Lmaster/flame/danmaku/a/c;->m:Lmaster/flame/danmaku/danmaku/model/b;

    if-nez v0, :cond_0

    return-void

    .line 847
    :cond_0
    iget-object v0, p0, Lmaster/flame/danmaku/a/c;->m:Lmaster/flame/danmaku/danmaku/model/b;

    invoke-virtual {v0}, Lmaster/flame/danmaku/danmaku/model/b;->e()I

    move-result v0

    if-ne v0, p1, :cond_1

    iget-object v0, p0, Lmaster/flame/danmaku/a/c;->m:Lmaster/flame/danmaku/danmaku/model/b;

    invoke-virtual {v0}, Lmaster/flame/danmaku/danmaku/model/b;->f()I

    move-result v0

    if-eq v0, p2, :cond_2

    .line 848
    :cond_1
    iget-object v0, p0, Lmaster/flame/danmaku/a/c;->m:Lmaster/flame/danmaku/danmaku/model/b;

    invoke-virtual {v0, p1, p2}, Lmaster/flame/danmaku/danmaku/model/b;->a(II)V

    const/16 p1, 0xa

    const/4 p2, 0x1

    .line 849
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lmaster/flame/danmaku/a/c;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_2
    return-void
.end method

.method public a(Ljava/lang/Long;)V
    .locals 2

    const/4 v0, 0x1

    .line 638
    iput-boolean v0, p0, Lmaster/flame/danmaku/a/c;->w:Z

    .line 639
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lmaster/flame/danmaku/a/c;->x:J

    const/4 v0, 0x2

    .line 640
    invoke-virtual {p0, v0}, Lmaster/flame/danmaku/a/c;->removeMessages(I)V

    const/4 v0, 0x3

    .line 641
    invoke-virtual {p0, v0}, Lmaster/flame/danmaku/a/c;->removeMessages(I)V

    const/4 v0, 0x4

    .line 642
    invoke-virtual {p0, v0}, Lmaster/flame/danmaku/a/c;->removeMessages(I)V

    .line 643
    invoke-virtual {p0, v0, p1}, Lmaster/flame/danmaku/a/c;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public a(Lmaster/flame/danmaku/a/c$a;)V
    .locals 0

    .line 183
    iput-object p1, p0, Lmaster/flame/danmaku/a/c;->h:Lmaster/flame/danmaku/a/c$a;

    return-void
.end method

.method public a(Lmaster/flame/danmaku/danmaku/a/a;)V
    .locals 0

    .line 175
    iput-object p1, p0, Lmaster/flame/danmaku/a/c;->j:Lmaster/flame/danmaku/danmaku/a/a;

    .line 176
    invoke-virtual {p1}, Lmaster/flame/danmaku/danmaku/a/a;->getTimer()Lmaster/flame/danmaku/danmaku/model/f;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 178
    iput-object p1, p0, Lmaster/flame/danmaku/a/c;->i:Lmaster/flame/danmaku/danmaku/model/f;

    :cond_0
    return-void
.end method

.method public a(Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;)V
    .locals 0

    .line 171
    iput-object p1, p0, Lmaster/flame/danmaku/a/c;->b:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    return-void
.end method

.method public a(Lmaster/flame/danmaku/danmaku/model/d;)V
    .locals 1

    .line 647
    iget-object v0, p0, Lmaster/flame/danmaku/a/c;->a:Lmaster/flame/danmaku/a/h;

    if-eqz v0, :cond_0

    .line 648
    iget-object v0, p0, Lmaster/flame/danmaku/a/c;->b:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    iget-object v0, v0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->r:Lmaster/flame/danmaku/danmaku/model/j;

    iput-object v0, p1, Lmaster/flame/danmaku/danmaku/model/d;->G:Lmaster/flame/danmaku/danmaku/model/j;

    .line 649
    iget-object v0, p0, Lmaster/flame/danmaku/a/c;->i:Lmaster/flame/danmaku/danmaku/model/f;

    invoke-virtual {p1, v0}, Lmaster/flame/danmaku/danmaku/model/d;->a(Lmaster/flame/danmaku/danmaku/model/f;)V

    .line 650
    iget-object v0, p0, Lmaster/flame/danmaku/a/c;->a:Lmaster/flame/danmaku/a/h;

    invoke-interface {v0, p1}, Lmaster/flame/danmaku/a/h;->a(Lmaster/flame/danmaku/danmaku/model/d;)V

    const/16 p1, 0xb

    .line 651
    invoke-virtual {p0, p1}, Lmaster/flame/danmaku/a/c;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 163
    iput-boolean p1, p0, Lmaster/flame/danmaku/a/c;->B:Z

    return-void
.end method

.method public b(Ljava/lang/Long;)V
    .locals 2

    .line 686
    iget-boolean v0, p0, Lmaster/flame/danmaku/a/c;->l:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 688
    iput-boolean v0, p0, Lmaster/flame/danmaku/a/c;->l:Z

    const/16 v0, 0x8

    .line 689
    invoke-virtual {p0, v0}, Lmaster/flame/danmaku/a/c;->removeMessages(I)V

    const/16 v1, 0x9

    .line 690
    invoke-virtual {p0, v1}, Lmaster/flame/danmaku/a/c;->removeMessages(I)V

    .line 691
    invoke-virtual {p0, v0, p1}, Lmaster/flame/danmaku/a/c;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public b(Z)V
    .locals 0

    .line 167
    iput-boolean p1, p0, Lmaster/flame/danmaku/a/c;->C:Z

    return-void
.end method

.method public b()Z
    .locals 1

    .line 192
    iget-boolean v0, p0, Lmaster/flame/danmaku/a/c;->e:Z

    return v0
.end method

.method public c(Z)J
    .locals 2

    .line 695
    iget-boolean v0, p0, Lmaster/flame/danmaku/a/c;->l:Z

    if-nez v0, :cond_0

    .line 696
    iget-object p1, p0, Lmaster/flame/danmaku/a/c;->i:Lmaster/flame/danmaku/danmaku/model/f;

    iget-wide v0, p1, Lmaster/flame/danmaku/danmaku/model/f;->a:J

    return-wide v0

    :cond_0
    const/4 v0, 0x0

    .line 697
    iput-boolean v0, p0, Lmaster/flame/danmaku/a/c;->l:Z

    const/16 v0, 0x8

    .line 698
    invoke-virtual {p0, v0}, Lmaster/flame/danmaku/a/c;->removeMessages(I)V

    const/16 v0, 0x9

    .line 699
    invoke-virtual {p0, v0}, Lmaster/flame/danmaku/a/c;->removeMessages(I)V

    .line 700
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lmaster/flame/danmaku/a/c;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 701
    iget-object p1, p0, Lmaster/flame/danmaku/a/c;->i:Lmaster/flame/danmaku/danmaku/model/f;

    iget-wide v0, p1, Lmaster/flame/danmaku/danmaku/model/f;->a:J

    return-wide v0
.end method

.method public c()Z
    .locals 1

    .line 613
    iget-boolean v0, p0, Lmaster/flame/danmaku/a/c;->g:Z

    return v0
.end method

.method public d()V
    .locals 1

    const/4 v0, 0x7

    .line 663
    invoke-virtual {p0, v0}, Lmaster/flame/danmaku/a/c;->removeMessages(I)V

    const/4 v0, 0x3

    .line 664
    invoke-virtual {p0, v0}, Lmaster/flame/danmaku/a/c;->sendEmptyMessage(I)Z

    return-void
.end method

.method public e()V
    .locals 3

    const/4 v0, 0x0

    .line 668
    iput-boolean v0, p0, Lmaster/flame/danmaku/a/c;->g:Z

    .line 669
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-ge v1, v2, :cond_0

    iget-object v1, p0, Lmaster/flame/danmaku/a/c;->b:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    iget-byte v1, v1, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->v:B

    if-nez v1, :cond_0

    .line 670
    iget-object v1, p0, Lmaster/flame/danmaku/a/c;->b:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    const/4 v2, 0x2

    iput-byte v2, v1, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->v:B

    .line 672
    :cond_0
    iget-object v1, p0, Lmaster/flame/danmaku/a/c;->b:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    iget-byte v1, v1, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->v:B

    if-nez v1, :cond_1

    .line 673
    new-instance v1, Lmaster/flame/danmaku/a/c$b;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lmaster/flame/danmaku/a/c$b;-><init>(Lmaster/flame/danmaku/a/c;Lmaster/flame/danmaku/a/c$1;)V

    iput-object v1, p0, Lmaster/flame/danmaku/a/c;->c:Lmaster/flame/danmaku/a/c$b;

    .line 675
    :cond_1
    iget-object v1, p0, Lmaster/flame/danmaku/a/c;->b:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    iget-byte v1, v1, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->v:B

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    const/4 v0, 0x1

    :cond_2
    iput-boolean v0, p0, Lmaster/flame/danmaku/a/c;->q:Z

    const/4 v0, 0x5

    .line 676
    invoke-virtual {p0, v0}, Lmaster/flame/danmaku/a/c;->sendEmptyMessage(I)Z

    return-void
.end method

.method public f()V
    .locals 1

    const/4 v0, 0x3

    .line 680
    invoke-virtual {p0, v0}, Lmaster/flame/danmaku/a/c;->removeMessages(I)V

    .line 681
    invoke-direct {p0}, Lmaster/flame/danmaku/a/c;->n()V

    const/4 v0, 0x7

    .line 682
    invoke-virtual {p0, v0}, Lmaster/flame/danmaku/a/c;->sendEmptyMessage(I)Z

    return-void
.end method

.method public g()Lmaster/flame/danmaku/danmaku/model/l;
    .locals 3

    .line 866
    iget-object v0, p0, Lmaster/flame/danmaku/a/c;->a:Lmaster/flame/danmaku/a/h;

    if-eqz v0, :cond_0

    .line 867
    iget-object v0, p0, Lmaster/flame/danmaku/a/c;->a:Lmaster/flame/danmaku/a/h;

    invoke-virtual {p0}, Lmaster/flame/danmaku/a/c;->h()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lmaster/flame/danmaku/a/h;->b(J)Lmaster/flame/danmaku/danmaku/model/l;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public h()J
    .locals 6

    .line 874
    iget-boolean v0, p0, Lmaster/flame/danmaku/a/c;->g:Z

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 877
    :cond_0
    iget-boolean v0, p0, Lmaster/flame/danmaku/a/c;->w:Z

    if-eqz v0, :cond_1

    .line 878
    iget-wide v0, p0, Lmaster/flame/danmaku/a/c;->x:J

    return-wide v0

    .line 880
    :cond_1
    iget-boolean v0, p0, Lmaster/flame/danmaku/a/c;->e:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lmaster/flame/danmaku/a/c;->A:Z

    if-nez v0, :cond_2

    goto :goto_0

    .line 883
    :cond_2
    invoke-static {}, Lmaster/flame/danmaku/danmaku/c/c;->a()J

    move-result-wide v0

    iget-wide v2, p0, Lmaster/flame/danmaku/a/c;->f:J

    sub-long v4, v0, v2

    return-wide v4

    .line 881
    :cond_3
    :goto_0
    iget-object v0, p0, Lmaster/flame/danmaku/a/c;->i:Lmaster/flame/danmaku/danmaku/model/f;

    iget-wide v0, v0, Lmaster/flame/danmaku/danmaku/model/f;->a:J

    iget-wide v2, p0, Lmaster/flame/danmaku/a/c;->y:J

    sub-long v4, v0, v2

    return-wide v4
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 13

    .line 197
    iget v0, p1, Landroid/os/Message;->what:I

    const-wide/16 v1, 0x64

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_4

    .line 361
    :pswitch_0
    iget-object p1, p0, Lmaster/flame/danmaku/a/c;->a:Lmaster/flame/danmaku/a/h;

    if-eqz p1, :cond_16

    .line 362
    iget-object p1, p0, Lmaster/flame/danmaku/a/c;->a:Lmaster/flame/danmaku/a/h;

    invoke-interface {p1}, Lmaster/flame/danmaku/a/h;->h()V

    goto/16 :goto_4

    .line 356
    :pswitch_1
    iget-object p1, p0, Lmaster/flame/danmaku/a/c;->a:Lmaster/flame/danmaku/a/h;

    if-eqz p1, :cond_16

    .line 357
    iget-object p1, p0, Lmaster/flame/danmaku/a/c;->a:Lmaster/flame/danmaku/a/h;

    invoke-virtual {p0}, Lmaster/flame/danmaku/a/c;->h()J

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Lmaster/flame/danmaku/a/h;->c(J)V

    goto/16 :goto_4

    .line 349
    :pswitch_2
    iget-boolean p1, p0, Lmaster/flame/danmaku/a/c;->e:Z

    if-eqz p1, :cond_16

    iget-object p1, p0, Lmaster/flame/danmaku/a/c;->k:Lmaster/flame/danmaku/a/g;

    if-eqz p1, :cond_16

    .line 350
    iget-object p1, p0, Lmaster/flame/danmaku/a/c;->a:Lmaster/flame/danmaku/a/h;

    invoke-interface {p1}, Lmaster/flame/danmaku/a/h;->e()V

    .line 351
    iget-object p1, p0, Lmaster/flame/danmaku/a/c;->k:Lmaster/flame/danmaku/a/g;

    invoke-interface {p1}, Lmaster/flame/danmaku/a/g;->l()J

    .line 352
    invoke-direct {p0}, Lmaster/flame/danmaku/a/c;->q()V

    goto/16 :goto_4

    .line 346
    :pswitch_3
    invoke-direct {p0}, Lmaster/flame/danmaku/a/c;->q()V

    goto/16 :goto_4

    .line 288
    :pswitch_4
    iget-object v0, p0, Lmaster/flame/danmaku/a/c;->b:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    iget-object v0, v0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->t:Lmaster/flame/danmaku/danmaku/model/android/d;

    iget-object v1, p0, Lmaster/flame/danmaku/a/c;->b:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    invoke-virtual {v0, v1}, Lmaster/flame/danmaku/danmaku/model/android/d;->a(Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;)V

    .line 289
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    if-eqz p1, :cond_16

    .line 290
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_16

    .line 291
    iget-object p1, p0, Lmaster/flame/danmaku/a/c;->b:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    iget-object p1, p1, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->r:Lmaster/flame/danmaku/danmaku/model/j;

    invoke-virtual {p1}, Lmaster/flame/danmaku/danmaku/model/j;->d()V

    .line 292
    iget-object p1, p0, Lmaster/flame/danmaku/a/c;->b:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    iget-object p1, p1, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->r:Lmaster/flame/danmaku/danmaku/model/j;

    invoke-virtual {p1}, Lmaster/flame/danmaku/danmaku/model/j;->c()V

    .line 293
    iget-object p1, p0, Lmaster/flame/danmaku/a/c;->a:Lmaster/flame/danmaku/a/h;

    invoke-interface {p1}, Lmaster/flame/danmaku/a/h;->f()V

    goto/16 :goto_4

    .line 297
    :pswitch_5
    iput-boolean v5, p0, Lmaster/flame/danmaku/a/c;->l:Z

    .line 298
    iget-object v1, p0, Lmaster/flame/danmaku/a/c;->k:Lmaster/flame/danmaku/a/g;

    if-eqz v1, :cond_0

    .line 299
    iget-object v1, p0, Lmaster/flame/danmaku/a/c;->k:Lmaster/flame/danmaku/a/g;

    invoke-interface {v1}, Lmaster/flame/danmaku/a/g;->m()V

    .line 301
    :cond_0
    iget-object v1, p0, Lmaster/flame/danmaku/a/c;->a:Lmaster/flame/danmaku/a/h;

    if-eqz v1, :cond_1

    .line 302
    iget-object v1, p0, Lmaster/flame/danmaku/a/c;->a:Lmaster/flame/danmaku/a/h;

    invoke-interface {v1}, Lmaster/flame/danmaku/a/h;->e()V

    .line 303
    iget-object v1, p0, Lmaster/flame/danmaku/a/c;->a:Lmaster/flame/danmaku/a/h;

    invoke-interface {v1}, Lmaster/flame/danmaku/a/h;->g()V

    .line 305
    :cond_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    .line 306
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lmaster/flame/danmaku/a/c;->a:Lmaster/flame/danmaku/a/h;

    if-eqz v1, :cond_2

    .line 307
    iget-object v1, p0, Lmaster/flame/danmaku/a/c;->a:Lmaster/flame/danmaku/a/h;

    invoke-interface {v1}, Lmaster/flame/danmaku/a/h;->b()V

    .line 309
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_6

    goto/16 :goto_4

    .line 217
    :pswitch_6
    iput-boolean v6, p0, Lmaster/flame/danmaku/a/c;->l:Z

    .line 218
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Long;

    .line 220
    iget-object v8, p0, Lmaster/flame/danmaku/a/c;->a:Lmaster/flame/danmaku/a/h;

    if-eqz v8, :cond_4

    if-nez v7, :cond_3

    .line 222
    iget-object v7, p0, Lmaster/flame/danmaku/a/c;->i:Lmaster/flame/danmaku/danmaku/model/f;

    invoke-virtual {p0}, Lmaster/flame/danmaku/a/c;->h()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Lmaster/flame/danmaku/danmaku/model/f;->a(J)J

    .line 223
    iget-object v7, p0, Lmaster/flame/danmaku/a/c;->a:Lmaster/flame/danmaku/a/h;

    invoke-interface {v7}, Lmaster/flame/danmaku/a/h;->e()V

    goto :goto_0

    .line 225
    :cond_3
    iget-object v8, p0, Lmaster/flame/danmaku/a/c;->a:Lmaster/flame/danmaku/a/h;

    invoke-interface {v8}, Lmaster/flame/danmaku/a/h;->a()V

    .line 226
    iget-object v8, p0, Lmaster/flame/danmaku/a/c;->a:Lmaster/flame/danmaku/a/h;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-interface {v8, v9, v10}, Lmaster/flame/danmaku/a/h;->a(J)V

    .line 227
    iget-object v7, p0, Lmaster/flame/danmaku/a/c;->a:Lmaster/flame/danmaku/a/h;

    invoke-interface {v7}, Lmaster/flame/danmaku/a/h;->e()V

    const/4 v7, 0x1

    goto :goto_1

    :cond_4
    :goto_0
    const/4 v7, 0x0

    .line 231
    :goto_1
    iget-boolean v8, p0, Lmaster/flame/danmaku/a/c;->e:Z

    if-eqz v8, :cond_5

    iget-object v8, p0, Lmaster/flame/danmaku/a/c;->k:Lmaster/flame/danmaku/a/g;

    if-eqz v8, :cond_5

    .line 232
    iget-object v8, p0, Lmaster/flame/danmaku/a/c;->k:Lmaster/flame/danmaku/a/g;

    invoke-interface {v8}, Lmaster/flame/danmaku/a/g;->l()J

    .line 234
    :cond_5
    invoke-direct {p0}, Lmaster/flame/danmaku/a/c;->q()V

    if-nez v7, :cond_11

    goto/16 :goto_4

    .line 313
    :cond_6
    :pswitch_7
    invoke-virtual {p0, v3}, Lmaster/flame/danmaku/a/c;->removeMessages(I)V

    .line 314
    invoke-virtual {p0, v4}, Lmaster/flame/danmaku/a/c;->removeMessages(I)V

    .line 315
    iget-object p1, p0, Lmaster/flame/danmaku/a/c;->a:Lmaster/flame/danmaku/a/h;

    if-eqz p1, :cond_7

    .line 316
    iget-object p1, p0, Lmaster/flame/danmaku/a/c;->a:Lmaster/flame/danmaku/a/h;

    invoke-interface {p1, v4}, Lmaster/flame/danmaku/a/h;->a(I)V

    :cond_7
    :pswitch_8
    const/4 p1, 0x6

    if-ne v0, p1, :cond_8

    const/4 v1, 0x0

    .line 320
    invoke-virtual {p0, v1}, Lmaster/flame/danmaku/a/c;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 322
    :cond_8
    iput-boolean v6, p0, Lmaster/flame/danmaku/a/c;->e:Z

    .line 323
    invoke-direct {p0}, Lmaster/flame/danmaku/a/c;->n()V

    .line 324
    iget-object v1, p0, Lmaster/flame/danmaku/a/c;->i:Lmaster/flame/danmaku/danmaku/model/f;

    iget-wide v1, v1, Lmaster/flame/danmaku/danmaku/model/f;->a:J

    iput-wide v1, p0, Lmaster/flame/danmaku/a/c;->d:J

    .line 325
    iget-boolean v1, p0, Lmaster/flame/danmaku/a/c;->q:Z

    if-eqz v1, :cond_9

    .line 326
    invoke-direct {p0}, Lmaster/flame/danmaku/a/c;->q()V

    .line 327
    invoke-direct {p0}, Lmaster/flame/danmaku/a/c;->j()V

    .line 329
    :cond_9
    iget-object v1, p0, Lmaster/flame/danmaku/a/c;->c:Lmaster/flame/danmaku/a/c$b;

    if-eqz v1, :cond_a

    .line 330
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_a

    .line 331
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v1

    iget-object v2, p0, Lmaster/flame/danmaku/a/c;->c:Lmaster/flame/danmaku/a/c$b;

    invoke-virtual {v1, v2}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    :cond_a
    if-ne v0, p1, :cond_16

    .line 335
    iget-object p1, p0, Lmaster/flame/danmaku/a/c;->a:Lmaster/flame/danmaku/a/h;

    if-eqz p1, :cond_b

    .line 336
    iget-object p1, p0, Lmaster/flame/danmaku/a/c;->a:Lmaster/flame/danmaku/a/h;

    invoke-interface {p1}, Lmaster/flame/danmaku/a/h;->b()V

    .line 338
    :cond_b
    iget-object p1, p0, Lmaster/flame/danmaku/a/c;->j:Lmaster/flame/danmaku/danmaku/a/a;

    if-eqz p1, :cond_c

    .line 339
    iget-object p1, p0, Lmaster/flame/danmaku/a/c;->j:Lmaster/flame/danmaku/danmaku/a/a;

    invoke-virtual {p1}, Lmaster/flame/danmaku/danmaku/a/a;->release()V

    .line 341
    :cond_c
    invoke-virtual {p0}, Lmaster/flame/danmaku/a/c;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-eq p1, v0, :cond_16

    .line 342
    invoke-virtual {p0}, Lmaster/flame/danmaku/a/c;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Looper;->quit()V

    goto/16 :goto_4

    .line 200
    :pswitch_9
    invoke-static {}, Lmaster/flame/danmaku/danmaku/c/c;->a()J

    move-result-wide v3

    iput-wide v3, p0, Lmaster/flame/danmaku/a/c;->f:J

    .line 201
    iget-object p1, p0, Lmaster/flame/danmaku/a/c;->j:Lmaster/flame/danmaku/danmaku/a/a;

    if-eqz p1, :cond_e

    iget-object p1, p0, Lmaster/flame/danmaku/a/c;->k:Lmaster/flame/danmaku/a/g;

    invoke-interface {p1}, Lmaster/flame/danmaku/a/g;->k()Z

    move-result p1

    if-nez p1, :cond_d

    goto :goto_2

    .line 204
    :cond_d
    new-instance p1, Lmaster/flame/danmaku/a/c$1;

    invoke-direct {p1, p0}, Lmaster/flame/danmaku/a/c$1;-><init>(Lmaster/flame/danmaku/a/c;)V

    invoke-direct {p0, p1}, Lmaster/flame/danmaku/a/c;->a(Ljava/lang/Runnable;)V

    goto/16 :goto_4

    :cond_e
    :goto_2
    const/4 p1, 0x5

    .line 202
    invoke-virtual {p0, p1, v1, v2}, Lmaster/flame/danmaku/a/c;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_4

    .line 279
    :pswitch_a
    iget-object p1, p0, Lmaster/flame/danmaku/a/c;->b:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    iget-byte p1, p1, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->v:B

    if-nez p1, :cond_f

    .line 280
    invoke-direct {p0}, Lmaster/flame/danmaku/a/c;->m()V

    goto/16 :goto_4

    .line 281
    :cond_f
    iget-object p1, p0, Lmaster/flame/danmaku/a/c;->b:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    iget-byte p1, p1, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->v:B

    if-ne p1, v6, :cond_10

    .line 282
    invoke-direct {p0}, Lmaster/flame/danmaku/a/c;->l()V

    goto/16 :goto_4

    .line 283
    :cond_10
    iget-object p1, p0, Lmaster/flame/danmaku/a/c;->b:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    iget-byte p1, p1, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->v:B

    if-ne p1, v4, :cond_16

    .line 284
    invoke-direct {p0}, Lmaster/flame/danmaku/a/c;->k()V

    goto/16 :goto_4

    .line 239
    :cond_11
    :pswitch_b
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Long;

    if-eqz v7, :cond_12

    .line 241
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    iput-wide v7, p0, Lmaster/flame/danmaku/a/c;->d:J

    goto :goto_3

    :cond_12
    const-wide/16 v7, 0x0

    .line 243
    iput-wide v7, p0, Lmaster/flame/danmaku/a/c;->d:J

    :goto_3
    :pswitch_c
    const/4 v7, 0x4

    if-ne v0, v7, :cond_14

    .line 247
    iput-boolean v6, p0, Lmaster/flame/danmaku/a/c;->e:Z

    .line 248
    invoke-direct {p0}, Lmaster/flame/danmaku/a/c;->j()V

    .line 249
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Long;

    .line 250
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    iget-object v0, p0, Lmaster/flame/danmaku/a/c;->i:Lmaster/flame/danmaku/danmaku/model/f;

    iget-wide v9, v0, Lmaster/flame/danmaku/danmaku/model/f;->a:J

    sub-long v11, v7, v9

    .line 251
    iget-wide v7, p0, Lmaster/flame/danmaku/a/c;->f:J

    sub-long v9, v7, v11

    iput-wide v9, p0, Lmaster/flame/danmaku/a/c;->f:J

    .line 252
    iget-object v0, p0, Lmaster/flame/danmaku/a/c;->i:Lmaster/flame/danmaku/danmaku/model/f;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-virtual {v0, v7, v8}, Lmaster/flame/danmaku/danmaku/model/f;->a(J)J

    .line 253
    iget-object v0, p0, Lmaster/flame/danmaku/a/c;->b:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    iget-object v0, v0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->r:Lmaster/flame/danmaku/danmaku/model/j;

    invoke-virtual {v0}, Lmaster/flame/danmaku/danmaku/model/j;->d()V

    .line 254
    iget-object v0, p0, Lmaster/flame/danmaku/a/c;->a:Lmaster/flame/danmaku/a/h;

    if-eqz v0, :cond_13

    .line 255
    iget-object v0, p0, Lmaster/flame/danmaku/a/c;->a:Lmaster/flame/danmaku/a/h;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-interface {v0, v7, v8}, Lmaster/flame/danmaku/a/h;->a(J)V

    .line 256
    :cond_13
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    iput-wide v7, p0, Lmaster/flame/danmaku/a/c;->d:J

    :cond_14
    :pswitch_d
    const/4 p1, 0x7

    .line 259
    invoke-virtual {p0, p1}, Lmaster/flame/danmaku/a/c;->removeMessages(I)V

    .line 260
    iput-boolean v5, p0, Lmaster/flame/danmaku/a/c;->e:Z

    .line 261
    iget-boolean p1, p0, Lmaster/flame/danmaku/a/c;->g:Z

    if-eqz p1, :cond_15

    .line 262
    iget-object p1, p0, Lmaster/flame/danmaku/a/c;->n:Lmaster/flame/danmaku/danmaku/b/a$b;

    invoke-virtual {p1}, Lmaster/flame/danmaku/danmaku/b/a$b;->a()V

    .line 263
    iget-object p1, p0, Lmaster/flame/danmaku/a/c;->o:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->clear()V

    .line 264
    invoke-static {}, Lmaster/flame/danmaku/danmaku/c/c;->a()J

    move-result-wide v0

    iget-wide v7, p0, Lmaster/flame/danmaku/a/c;->d:J

    sub-long v9, v0, v7

    iput-wide v9, p0, Lmaster/flame/danmaku/a/c;->f:J

    .line 265
    iget-object p1, p0, Lmaster/flame/danmaku/a/c;->i:Lmaster/flame/danmaku/danmaku/model/f;

    iget-wide v0, p0, Lmaster/flame/danmaku/a/c;->d:J

    invoke-virtual {p1, v0, v1}, Lmaster/flame/danmaku/danmaku/model/f;->a(J)J

    .line 266
    invoke-virtual {p0, v3}, Lmaster/flame/danmaku/a/c;->removeMessages(I)V

    .line 267
    invoke-virtual {p0, v4}, Lmaster/flame/danmaku/a/c;->sendEmptyMessage(I)Z

    .line 268
    iget-object p1, p0, Lmaster/flame/danmaku/a/c;->a:Lmaster/flame/danmaku/a/h;

    invoke-interface {p1}, Lmaster/flame/danmaku/a/h;->a()V

    .line 269
    invoke-direct {p0}, Lmaster/flame/danmaku/a/c;->q()V

    .line 270
    iput-boolean v5, p0, Lmaster/flame/danmaku/a/c;->w:Z

    .line 271
    iget-object p1, p0, Lmaster/flame/danmaku/a/c;->a:Lmaster/flame/danmaku/a/h;

    if-eqz p1, :cond_16

    .line 272
    iget-object p1, p0, Lmaster/flame/danmaku/a/c;->a:Lmaster/flame/danmaku/a/h;

    invoke-interface {p1, v6}, Lmaster/flame/danmaku/a/h;->a(I)V

    goto :goto_4

    .line 275
    :cond_15
    invoke-virtual {p0, v3, v1, v2}, Lmaster/flame/danmaku/a/c;->sendEmptyMessageDelayed(IJ)Z

    :cond_16
    :goto_4
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_d
        :pswitch_c
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public i()Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;
    .locals 1

    .line 891
    iget-object v0, p0, Lmaster/flame/danmaku/a/c;->b:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    return-object v0
.end method
