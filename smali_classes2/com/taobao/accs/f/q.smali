.class public Lcom/taobao/accs/f/q;
.super Lcom/taobao/accs/f/c;
.source "Taobao"

# interfaces
.implements Lorg/android/spdy/d;
.implements Lorg/android/spdy/k;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/accs/f/q$a;
    }
.end annotation


# instance fields
.field private A:Ljava/lang/Object;

.field private B:J

.field private C:J

.field private D:J

.field private E:J

.field private F:I

.field private G:Ljava/lang/String;

.field private H:Lcom/taobao/accs/ut/monitor/SessionMonitor;

.field private I:Lcom/taobao/accs/ut/a/c;

.field private J:Z

.field private K:Ljava/lang/String;

.field private L:Z

.field private M:Lcom/taobao/accs/f/i;

.field private N:Ljava/lang/String;

.field protected n:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field protected o:Ljava/lang/String;

.field protected p:I

.field protected q:Ljava/lang/String;

.field protected r:I

.field private s:I

.field private t:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/taobao/accs/data/Message;",
            ">;"
        }
    .end annotation
.end field

.field private u:Lcom/taobao/accs/f/q$a;

.field private v:Z

.field private w:Ljava/lang/String;

.field private x:Ljava/lang/String;

.field private y:Lorg/android/spdy/SpdyAgent;

.field private z:Lorg/android/spdy/SpdySession;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;)V
    .locals 0

    .line 133
    invoke-direct {p0, p1, p2, p3}, Lcom/taobao/accs/f/c;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    const/4 p1, 0x3

    .line 79
    iput p1, p0, Lcom/taobao/accs/f/q;->s:I

    .line 81
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/taobao/accs/f/q;->t:Ljava/util/LinkedList;

    const/4 p1, 0x1

    .line 85
    iput-boolean p1, p0, Lcom/taobao/accs/f/q;->v:Z

    const/4 p1, 0x0

    .line 91
    iput-object p1, p0, Lcom/taobao/accs/f/q;->y:Lorg/android/spdy/SpdyAgent;

    .line 93
    iput-object p1, p0, Lcom/taobao/accs/f/q;->z:Lorg/android/spdy/SpdySession;

    .line 95
    new-instance p2, Ljava/lang/Object;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/taobao/accs/f/q;->A:Ljava/lang/Object;

    const/4 p2, -0x1

    .line 105
    iput p2, p0, Lcom/taobao/accs/f/q;->F:I

    .line 107
    iput-object p1, p0, Lcom/taobao/accs/f/q;->G:Ljava/lang/String;

    const/4 p1, 0x0

    .line 113
    iput-boolean p1, p0, Lcom/taobao/accs/f/q;->J:Z

    const-string p2, ""

    .line 115
    iput-object p2, p0, Lcom/taobao/accs/f/q;->K:Ljava/lang/String;

    .line 117
    iput-boolean p1, p0, Lcom/taobao/accs/f/q;->L:Z

    .line 135
    new-instance p1, Lcom/taobao/accs/f/i;

    invoke-virtual {p0}, Lcom/taobao/accs/f/q;->m()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/taobao/accs/f/i;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/taobao/accs/f/q;->M:Lcom/taobao/accs/f/i;

    .line 160
    invoke-direct {p0}, Lcom/taobao/accs/f/q;->q()V

    return-void
.end method

.method static synthetic a(Lcom/taobao/accs/f/q;J)J
    .locals 0

    .line 59
    iput-wide p1, p0, Lcom/taobao/accs/f/q;->B:J

    return-wide p1
.end method

.method static synthetic a(Lcom/taobao/accs/f/q;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/taobao/accs/f/q;->K:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/taobao/accs/f/q;)Ljava/util/LinkedList;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/taobao/accs/f/q;->t:Ljava/util/LinkedList;

    return-object p0
.end method

.method private a(Lcom/taobao/accs/data/Message;)V
    .locals 6

    .line 308
    iget-object v0, p1, Lcom/taobao/accs/data/Message;->t:Ljava/lang/Integer;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/taobao/accs/f/q;->t:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 312
    :cond_0
    iget-object v0, p0, Lcom/taobao/accs/f/q;->t:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_6

    .line 313
    iget-object v2, p0, Lcom/taobao/accs/f/q;->t:Ljava/util/LinkedList;

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/taobao/accs/data/Message;

    if-eqz v2, :cond_5

    .line 314
    iget-object v3, v2, Lcom/taobao/accs/data/Message;->t:Ljava/lang/Integer;

    if-eqz v3, :cond_5

    invoke-virtual {v2}, Lcom/taobao/accs/data/Message;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/taobao/accs/data/Message;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 316
    iget-object v3, p1, Lcom/taobao/accs/data/Message;->t:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    goto :goto_1

    .line 333
    :pswitch_0
    iget-object v3, v2, Lcom/taobao/accs/data/Message;->t:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x5

    if-eq v3, v4, :cond_1

    iget-object v3, v2, Lcom/taobao/accs/data/Message;->t:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x6

    if-ne v3, v4, :cond_4

    .line 335
    :cond_1
    iget-object v3, p0, Lcom/taobao/accs/f/q;->t:Ljava/util/LinkedList;

    invoke-virtual {v3, v0}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 326
    :pswitch_1
    iget-object v3, v2, Lcom/taobao/accs/data/Message;->t:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_2

    iget-object v3, v2, Lcom/taobao/accs/data/Message;->t:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_4

    .line 328
    :cond_2
    iget-object v3, p0, Lcom/taobao/accs/f/q;->t:Ljava/util/LinkedList;

    invoke-virtual {v3, v0}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 319
    :pswitch_2
    iget-object v3, v2, Lcom/taobao/accs/data/Message;->t:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eq v3, v1, :cond_3

    iget-object v3, v2, Lcom/taobao/accs/data/Message;->t:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_4

    .line 321
    :cond_3
    iget-object v3, p0, Lcom/taobao/accs/f/q;->t:Ljava/util/LinkedList;

    invoke-virtual {v3, v0}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    .line 340
    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/taobao/accs/f/q;->d()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "clearRepeatControlCommand message:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lcom/taobao/accs/data/Message;->t:Ljava/lang/Integer;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/taobao/accs/data/Message;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v2, v4}, Lcom/taobao/accs/utl/ALog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_5
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_0

    .line 344
    :cond_6
    iget-object v0, p0, Lcom/taobao/accs/f/q;->e:Lcom/taobao/accs/data/b;

    if-eqz v0, :cond_7

    .line 345
    iget-object v0, p0, Lcom/taobao/accs/f/q;->e:Lcom/taobao/accs/data/b;

    invoke-virtual {v0, p1}, Lcom/taobao/accs/data/b;->b(Lcom/taobao/accs/data/Message;)V

    :cond_7
    return-void

    :cond_8
    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic a(Lcom/taobao/accs/f/q;Lcom/taobao/accs/data/Message;)V
    .locals 0

    .line 59
    invoke-direct {p0, p1}, Lcom/taobao/accs/f/q;->a(Lcom/taobao/accs/data/Message;)V

    return-void
.end method

.method static synthetic a(Lcom/taobao/accs/f/q;Z)Z
    .locals 0

    .line 59
    iput-boolean p1, p0, Lcom/taobao/accs/f/q;->J:Z

    return p1
.end method

.method static synthetic b(Lcom/taobao/accs/f/q;)I
    .locals 0

    .line 59
    iget p0, p0, Lcom/taobao/accs/f/q;->s:I

    return p0
.end method

.method static synthetic b(Lcom/taobao/accs/f/q;J)J
    .locals 0

    .line 59
    iput-wide p1, p0, Lcom/taobao/accs/f/q;->C:J

    return-wide p1
.end method

.method static synthetic b(Lcom/taobao/accs/f/q;Ljava/lang/String;)V
    .locals 0

    .line 59
    invoke-direct {p0, p1}, Lcom/taobao/accs/f/q;->d(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/taobao/accs/f/q;Z)Z
    .locals 0

    .line 59
    iput-boolean p1, p0, Lcom/taobao/accs/f/q;->L:Z

    return p1
.end method

.method static synthetic c(Lcom/taobao/accs/f/q;)Ljava/lang/String;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/taobao/accs/f/q;->N:Ljava/lang/String;

    return-object p0
.end method

.method private declared-synchronized c(I)V
    .locals 6

    monitor-enter p0

    .line 584
    :try_start_0
    invoke-virtual {p0}, Lcom/taobao/accs/f/q;->d()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/taobao/accs/f/q;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " notifyStatus:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lcom/taobao/accs/f/q;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 585
    iget v0, p0, Lcom/taobao/accs/f/q;->s:I

    if-ne p1, v0, :cond_0

    .line 586
    invoke-virtual {p0}, Lcom/taobao/accs/f/q;->d()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/taobao/accs/f/q;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ignore notifyStatus"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 587
    monitor-exit p0

    return-void

    .line 589
    :cond_0
    :try_start_1
    iput p1, p0, Lcom/taobao/accs/f/q;->s:I

    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_6

    .line 637
    :pswitch_0
    invoke-direct {p0}, Lcom/taobao/accs/f/q;->p()V

    .line 638
    iget-object v1, p0, Lcom/taobao/accs/f/q;->d:Landroid/content/Context;

    invoke-static {v1}, Lcom/taobao/accs/f/h;->a(Landroid/content/Context;)Lcom/taobao/accs/f/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/accs/f/h;->d()V

    .line 639
    iget-object v1, p0, Lcom/taobao/accs/f/q;->A:Ljava/lang/Object;

    monitor-enter v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 641
    :try_start_2
    iget-object v3, p0, Lcom/taobao/accs/f/q;->A:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 644
    :catch_0
    :goto_0
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 645
    :try_start_4
    iget-object v1, p0, Lcom/taobao/accs/f/q;->e:Lcom/taobao/accs/data/b;

    const/16 v3, -0xa

    invoke-virtual {v1, v3}, Lcom/taobao/accs/data/b;->a(I)V

    .line 646
    invoke-virtual {p0, v2, v0}, Lcom/taobao/accs/f/q;->a(ZZ)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto :goto_6

    .line 644
    :goto_1
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw p1

    .line 593
    :pswitch_1
    iget-object v1, p0, Lcom/taobao/accs/f/q;->n:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v1, :cond_1

    .line 594
    iget-object v1, p0, Lcom/taobao/accs/f/q;->n:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 596
    :cond_1
    iget-object v0, p0, Lcom/taobao/accs/f/q;->N:Ljava/lang/String;

    .line 597
    invoke-static {}, Lcom/taobao/accs/common/a;->a()Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v1

    new-instance v3, Lcom/taobao/accs/f/s;

    invoke-direct {v3, p0, v0}, Lcom/taobao/accs/f/s;-><init>(Lcom/taobao/accs/f/q;Ljava/lang/String;)V

    const-wide/32 v4, 0x1d4c0

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v3, v4, v5, v0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    goto :goto_6

    .line 615
    :pswitch_2
    iget-object v1, p0, Lcom/taobao/accs/f/q;->d:Landroid/content/Context;

    invoke-static {v1}, Lcom/taobao/accs/f/h;->a(Landroid/content/Context;)Lcom/taobao/accs/f/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/accs/f/h;->e()V

    .line 616
    invoke-direct {p0}, Lcom/taobao/accs/f/q;->p()V

    .line 617
    iget-object v1, p0, Lcom/taobao/accs/f/q;->n:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v1, :cond_2

    .line 618
    iget-object v1, p0, Lcom/taobao/accs/f/q;->n:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 621
    :cond_2
    iget-object v0, p0, Lcom/taobao/accs/f/q;->A:Ljava/lang/Object;

    monitor-enter v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 623
    :try_start_7
    iget-object v1, p0, Lcom/taobao/accs/f/q;->A:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p1

    goto :goto_5

    .line 626
    :catch_1
    :goto_2
    :try_start_8
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 627
    :try_start_9
    iget-object v0, p0, Lcom/taobao/accs/f/q;->t:Ljava/util/LinkedList;

    monitor-enter v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 629
    :try_start_a
    iget-object v1, p0, Lcom/taobao/accs/f/q;->t:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception p1

    goto :goto_4

    .line 632
    :catch_2
    :goto_3
    :try_start_b
    monitor-exit v0

    goto :goto_6

    :goto_4
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    :try_start_c
    throw p1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    .line 626
    :goto_5
    :try_start_d
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    :try_start_e
    throw p1

    .line 651
    :goto_6
    :pswitch_3
    invoke-virtual {p0}, Lcom/taobao/accs/f/q;->d()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/taobao/accs/f/q;->c:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " notifyStatus:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lcom/taobao/accs/f/q;->a(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " handled"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, p1, v1}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    .line 652
    monitor-exit p0

    return-void

    :catchall_3
    move-exception p1

    .line 583
    monitor-exit p0

    throw p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method static synthetic d(Lcom/taobao/accs/f/q;)Lcom/taobao/accs/ut/monitor/SessionMonitor;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/taobao/accs/f/q;->H:Lcom/taobao/accs/ut/monitor/SessionMonitor;

    return-object p0
.end method

.method private d(Ljava/lang/String;)V
    .locals 17

    move-object/from16 v10, p0

    move-object/from16 v1, p1

    .line 351
    iget v2, v10, Lcom/taobao/accs/f/q;->s:I

    const/4 v11, 0x2

    if-eq v2, v11, :cond_e

    iget v2, v10, Lcom/taobao/accs/f/q;->s:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto/16 :goto_a

    .line 357
    :cond_0
    iget-object v2, v10, Lcom/taobao/accs/f/q;->M:Lcom/taobao/accs/f/i;

    if-nez v2, :cond_1

    .line 358
    new-instance v2, Lcom/taobao/accs/f/i;

    invoke-virtual/range {p0 .. p0}, Lcom/taobao/accs/f/q;->m()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/taobao/accs/f/i;-><init>(Ljava/lang/String;)V

    iput-object v2, v10, Lcom/taobao/accs/f/q;->M:Lcom/taobao/accs/f/i;

    .line 360
    :cond_1
    iget-object v2, v10, Lcom/taobao/accs/f/q;->M:Lcom/taobao/accs/f/i;

    invoke-virtual/range {p0 .. p0}, Lcom/taobao/accs/f/q;->m()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/taobao/accs/f/i;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    const-wide/16 v12, 0x0

    const-wide/16 v3, 0x0

    const/16 v5, 0x1bb

    const/4 v14, 0x0

    if-eqz v2, :cond_7

    .line 366
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_7

    .line 368
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lanet/channel/strategy/c;

    if-eqz v2, :cond_2

    .line 370
    invoke-virtual/range {p0 .. p0}, Lcom/taobao/accs/f/q;->d()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget v8, v10, Lcom/taobao/accs/f/q;->c:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " connect strategys ip:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Lanet/channel/strategy/c;->a()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " port:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Lanet/channel/strategy/c;->c()I

    move-result v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v7, v14, [Ljava/lang/Object;

    invoke-static {v6, v2, v7}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 374
    :cond_3
    iget-boolean v1, v10, Lcom/taobao/accs/f/q;->L:Z

    if-eqz v1, :cond_4

    .line 375
    iget-object v1, v10, Lcom/taobao/accs/f/q;->M:Lcom/taobao/accs/f/i;

    invoke-virtual {v1}, Lcom/taobao/accs/f/i;->b()V

    .line 376
    iput-boolean v14, v10, Lcom/taobao/accs/f/q;->L:Z

    .line 378
    :cond_4
    iget-object v1, v10, Lcom/taobao/accs/f/q;->M:Lcom/taobao/accs/f/i;

    invoke-virtual {v1}, Lcom/taobao/accs/f/i;->a()Lanet/channel/strategy/c;

    move-result-object v1

    if-nez v1, :cond_5

    .line 379
    invoke-virtual/range {p0 .. p0}, Lcom/taobao/accs/f/q;->m()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_5
    invoke-interface {v1}, Lanet/channel/strategy/c;->a()Ljava/lang/String;

    move-result-object v2

    :goto_1
    iput-object v2, v10, Lcom/taobao/accs/f/q;->o:Ljava/lang/String;

    if-nez v1, :cond_6

    goto :goto_2

    .line 380
    :cond_6
    invoke-interface {v1}, Lanet/channel/strategy/c;->c()I

    move-result v5

    :goto_2
    iput v5, v10, Lcom/taobao/accs/f/q;->p:I

    const-string v1, "accs"

    const-string v2, "dns"

    const-string v5, "httpdns"

    .line 381
    invoke-static {v1, v2, v5, v3, v4}, Lcom/taobao/accs/utl/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    .line 382
    invoke-virtual/range {p0 .. p0}, Lcom/taobao/accs/f/q;->d()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, v10, Lcom/taobao/accs/f/q;->c:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " get ip from amdc succ:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v10, Lcom/taobao/accs/f/q;->o:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v10, Lcom/taobao/accs/f/q;->p:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " originPos:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v10, Lcom/taobao/accs/f/q;->M:Lcom/taobao/accs/f/i;

    invoke-virtual {v3}, Lcom/taobao/accs/f/i;->c()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v14, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4

    :cond_7
    if-eqz v1, :cond_8

    .line 385
    iput-object v1, v10, Lcom/taobao/accs/f/q;->o:Ljava/lang/String;

    goto :goto_3

    .line 387
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/taobao/accs/f/q;->m()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v10, Lcom/taobao/accs/f/q;->o:Ljava/lang/String;

    .line 390
    :goto_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v6, 0x2

    rem-long/2addr v1, v6

    cmp-long v6, v1, v12

    if-nez v6, :cond_9

    const/16 v5, 0x50

    :cond_9
    iput v5, v10, Lcom/taobao/accs/f/q;->p:I

    const-string v1, "accs"

    const-string v2, "dns"

    const-string v5, "localdns"

    .line 391
    invoke-static {v1, v2, v5, v3, v4}, Lcom/taobao/accs/utl/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    .line 392
    invoke-virtual/range {p0 .. p0}, Lcom/taobao/accs/f/q;->d()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, v10, Lcom/taobao/accs/f/q;->c:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " get ip from amdc fail!!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v14, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 394
    :goto_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v10, Lcom/taobao/accs/f/q;->o:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v10, Lcom/taobao/accs/f/q;->p:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "/accs/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v10, Lcom/taobao/accs/f/q;->w:Ljava/lang/String;

    .line 396
    invoke-virtual/range {p0 .. p0}, Lcom/taobao/accs/f/q;->d()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, v10, Lcom/taobao/accs/f/q;->c:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " connect URL:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v10, Lcom/taobao/accs/f/q;->w:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v14, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 397
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v10, Lcom/taobao/accs/f/q;->N:Ljava/lang/String;

    .line 399
    iget-object v1, v10, Lcom/taobao/accs/f/q;->H:Lcom/taobao/accs/ut/monitor/SessionMonitor;

    if-eqz v1, :cond_a

    .line 401
    invoke-static {}, Lanet/channel/b/a;->a()Lanet/channel/b/b;

    move-result-object v1

    iget-object v2, v10, Lcom/taobao/accs/f/q;->H:Lcom/taobao/accs/ut/monitor/SessionMonitor;

    invoke-interface {v1, v2}, Lanet/channel/b/b;->a(Lanet/channel/statist/StatObject;)V

    .line 403
    :cond_a
    new-instance v1, Lcom/taobao/accs/ut/monitor/SessionMonitor;

    invoke-direct {v1}, Lcom/taobao/accs/ut/monitor/SessionMonitor;-><init>()V

    iput-object v1, v10, Lcom/taobao/accs/f/q;->H:Lcom/taobao/accs/ut/monitor/SessionMonitor;

    .line 404
    iget-object v1, v10, Lcom/taobao/accs/f/q;->H:Lcom/taobao/accs/ut/monitor/SessionMonitor;

    iget v2, v10, Lcom/taobao/accs/f/q;->c:I

    if-nez v2, :cond_b

    const-string v2, "service"

    goto :goto_5

    :cond_b
    const-string v2, "inapp"

    :goto_5
    invoke-virtual {v1, v2}, Lcom/taobao/accs/ut/monitor/SessionMonitor;->setConnectType(Ljava/lang/String;)V

    .line 409
    iget-object v1, v10, Lcom/taobao/accs/f/q;->y:Lorg/android/spdy/SpdyAgent;

    if-eqz v1, :cond_d

    .line 411
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v10, Lcom/taobao/accs/f/q;->D:J

    .line 412
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    iput-wide v1, v10, Lcom/taobao/accs/f/q;->E:J

    .line 413
    iget-object v1, v10, Lcom/taobao/accs/f/q;->d:Landroid/content/Context;

    invoke-static {v1}, Lcom/taobao/accs/utl/b;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v10, Lcom/taobao/accs/f/q;->q:Ljava/lang/String;

    .line 414
    iget-object v1, v10, Lcom/taobao/accs/f/q;->d:Landroid/content/Context;

    invoke-static {v1}, Lcom/taobao/accs/utl/b;->b(Landroid/content/Context;)I

    move-result v1

    iput v1, v10, Lcom/taobao/accs/f/q;->r:I

    .line 416
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v10, Lcom/taobao/accs/f/q;->B:J

    .line 417
    iget-object v1, v10, Lcom/taobao/accs/f/q;->H:Lcom/taobao/accs/ut/monitor/SessionMonitor;

    invoke-virtual {v1}, Lcom/taobao/accs/ut/monitor/SessionMonitor;->onStartConnect()V

    .line 419
    iget-object v15, v10, Lcom/taobao/accs/f/q;->A:Ljava/lang/Object;

    monitor-enter v15
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 422
    :try_start_1
    iget-object v1, v10, Lcom/taobao/accs/f/q;->q:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_c

    iget v1, v10, Lcom/taobao/accs/f/q;->r:I

    if-ltz v1, :cond_c

    iget-boolean v1, v10, Lcom/taobao/accs/f/q;->J:Z

    if-eqz v1, :cond_c

    .line 423
    invoke-virtual/range {p0 .. p0}, Lcom/taobao/accs/f/q;->d()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, v10, Lcom/taobao/accs/f/q;->c:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " connect with proxy:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v10, Lcom/taobao/accs/f/q;->q:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v10, Lcom/taobao/accs/f/q;->r:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v14, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 424
    new-instance v16, Lorg/android/spdy/e;

    iget-object v2, v10, Lcom/taobao/accs/f/q;->o:Ljava/lang/String;

    iget v3, v10, Lcom/taobao/accs/f/q;->p:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/taobao/accs/f/q;->m()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v10, Lcom/taobao/accs/f/q;->b:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v10, Lcom/taobao/accs/f/q;->q:Ljava/lang/String;

    iget v6, v10, Lcom/taobao/accs/f/q;->r:I

    iget-object v7, v10, Lcom/taobao/accs/f/q;->N:Ljava/lang/String;

    const/16 v9, 0x1082

    move-object/from16 v1, v16

    move-object v8, v10

    invoke-direct/range {v1 .. v9}, Lorg/android/spdy/e;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/Object;Lorg/android/spdy/d;I)V

    .line 425
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v10, Lcom/taobao/accs/f/q;->q:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v10, Lcom/taobao/accs/f/q;->r:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v10, Lcom/taobao/accs/f/q;->K:Ljava/lang/String;

    goto :goto_6

    .line 427
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/taobao/accs/f/q;->d()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, v10, Lcom/taobao/accs/f/q;->c:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " connect normal"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v14, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 428
    new-instance v16, Lorg/android/spdy/e;

    iget-object v2, v10, Lcom/taobao/accs/f/q;->o:Ljava/lang/String;

    iget v3, v10, Lcom/taobao/accs/f/q;->p:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/taobao/accs/f/q;->m()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v10, Lcom/taobao/accs/f/q;->b:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget-object v7, v10, Lcom/taobao/accs/f/q;->N:Ljava/lang/String;

    const/16 v9, 0x1082

    move-object/from16 v1, v16

    move-object v8, v10

    invoke-direct/range {v1 .. v9}, Lorg/android/spdy/e;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/Object;Lorg/android/spdy/d;I)V

    const-string v1, ""

    .line 429
    iput-object v1, v10, Lcom/taobao/accs/f/q;->K:Ljava/lang/String;

    :goto_6
    move-object/from16 v1, v16

    .line 431
    invoke-direct/range {p0 .. p0}, Lcom/taobao/accs/f/q;->o()I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/android/spdy/e;->b(I)V

    const v2, 0x9c40

    .line 433
    invoke-virtual {v1, v2}, Lorg/android/spdy/e;->a(I)V

    .line 435
    iget-object v2, v10, Lcom/taobao/accs/f/q;->y:Lorg/android/spdy/SpdyAgent;

    invoke-virtual {v2, v1}, Lorg/android/spdy/SpdyAgent;->a(Lorg/android/spdy/e;)Lorg/android/spdy/SpdySession;

    move-result-object v1

    iput-object v1, v10, Lcom/taobao/accs/f/q;->z:Lorg/android/spdy/SpdySession;

    .line 437
    invoke-direct {v10, v11}, Lcom/taobao/accs/f/q;->c(I)V

    .line 438
    iget-object v1, v10, Lcom/taobao/accs/f/q;->H:Lcom/taobao/accs/ut/monitor/SessionMonitor;

    iput-wide v12, v1, Lcom/taobao/accs/ut/monitor/SessionMonitor;->connection_stop_date:J

    .line 439
    iget-object v1, v10, Lcom/taobao/accs/f/q;->A:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_7

    :catchall_0
    move-exception v0

    move-object v1, v0

    goto :goto_8

    :catch_0
    move-exception v0

    move-object v1, v0

    .line 443
    :try_start_2
    invoke-static {v1}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    .line 444
    iput-boolean v14, v10, Lcom/taobao/accs/f/q;->J:Z

    goto :goto_7

    :catch_1
    move-exception v0

    move-object v1, v0

    .line 441
    invoke-static {v1}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    .line 446
    :goto_7
    monitor-exit v15

    goto :goto_9

    :goto_8
    monitor-exit v15
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :catch_2
    move-exception v0

    move-object v1, v0

    .line 448
    invoke-static {v1}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    :cond_d
    :goto_9
    return-void

    :cond_e
    :goto_a
    return-void
.end method

.method static synthetic e(Lcom/taobao/accs/f/q;)Lcom/taobao/accs/f/i;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/taobao/accs/f/q;->M:Lcom/taobao/accs/f/i;

    return-object p0
.end method

.method static synthetic f(Lcom/taobao/accs/f/q;)Z
    .locals 0

    .line 59
    iget-boolean p0, p0, Lcom/taobao/accs/f/q;->v:Z

    return p0
.end method

.method static synthetic g(Lcom/taobao/accs/f/q;)J
    .locals 2

    .line 59
    iget-wide v0, p0, Lcom/taobao/accs/f/q;->B:J

    return-wide v0
.end method

.method static synthetic h(Lcom/taobao/accs/f/q;)Lorg/android/spdy/SpdySession;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/taobao/accs/f/q;->z:Lorg/android/spdy/SpdySession;

    return-object p0
.end method

.method static synthetic i(Lcom/taobao/accs/f/q;)V
    .locals 0

    .line 59
    invoke-direct {p0}, Lcom/taobao/accs/f/q;->p()V

    return-void
.end method

.method private o()I
    .locals 6

    .line 455
    invoke-virtual {p0}, Lcom/taobao/accs/f/q;->k()Z

    move-result v0

    .line 457
    sget v1, Lcom/taobao/accs/b;->b:I

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 467
    :cond_0
    iget-object v1, p0, Lcom/taobao/accs/f/q;->i:Lcom/taobao/accs/b;

    invoke-virtual {v1}, Lcom/taobao/accs/b;->i()I

    move-result v1

    if-lez v1, :cond_1

    .line 469
    invoke-virtual {p0}, Lcom/taobao/accs/f/q;->d()Ljava/lang/String;

    move-result-object v0

    const-string v4, "use custom pub key"

    new-array v2, v2, [Ljava/lang/Object;

    const-string v5, "pubKey"

    aput-object v5, v2, v3

    const/4 v3, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v3

    invoke-static {v0, v4, v2}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    :cond_1
    if-eqz v0, :cond_2

    const/4 v3, 0x4

    goto :goto_0

    :cond_2
    const/4 v3, 0x3

    :goto_0
    return v3
.end method

.method private declared-synchronized p()V
    .locals 2

    monitor-enter p0

    .line 560
    :try_start_0
    iget v0, p0, Lcom/taobao/accs/f/q;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 561
    monitor-exit p0

    return-void

    .line 563
    :cond_0
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/taobao/accs/f/q;->B:J

    .line 564
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/taobao/accs/f/q;->C:J

    .line 580
    iget-object v0, p0, Lcom/taobao/accs/f/q;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/taobao/accs/f/h;->a(Landroid/content/Context;)Lcom/taobao/accs/f/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/accs/f/h;->a()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 581
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 559
    monitor-exit p0

    throw v0
.end method

.method private q()V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 664
    :try_start_0
    sput-boolean v0, Lorg/android/spdy/SpdyAgent;->a:Z

    .line 665
    iget-object v0, p0, Lcom/taobao/accs/f/q;->d:Landroid/content/Context;

    sget-object v2, Lorg/android/spdy/SpdyVersion;->SPDY3:Lorg/android/spdy/SpdyVersion;

    sget-object v3, Lorg/android/spdy/SpdySessionKind;->NONE_SESSION:Lorg/android/spdy/SpdySessionKind;

    invoke-static {v0, v2, v3}, Lorg/android/spdy/SpdyAgent;->a(Landroid/content/Context;Lorg/android/spdy/SpdyVersion;Lorg/android/spdy/SpdySessionKind;)Lorg/android/spdy/SpdyAgent;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/accs/f/q;->y:Lorg/android/spdy/SpdyAgent;

    .line 667
    invoke-static {}, Lorg/android/spdy/SpdyAgent;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 669
    invoke-static {}, Lcom/taobao/accs/utl/h;->a()V

    .line 670
    invoke-virtual {p0}, Lcom/taobao/accs/f/q;->k()Z

    move-result v0

    if-nez v0, :cond_0

    .line 671
    iget-object v0, p0, Lcom/taobao/accs/f/q;->y:Lorg/android/spdy/SpdyAgent;

    new-instance v2, Lcom/taobao/accs/f/t;

    invoke-direct {v2, p0}, Lcom/taobao/accs/f/t;-><init>(Lcom/taobao/accs/f/q;)V

    invoke-virtual {v0, v2}, Lorg/android/spdy/SpdyAgent;->a(Lorg/android/spdy/a;)V

    .line 679
    :cond_0
    invoke-static {v1}, Lcom/taobao/accs/utl/j;->a(Z)Z

    move-result v0

    if-nez v0, :cond_3

    .line 681
    iget v0, p0, Lcom/taobao/accs/f/q;->c:I

    if-nez v0, :cond_1

    const-string v0, "service"

    goto :goto_0

    :cond_1
    const-string v0, "inapp"

    .line 682
    :goto_0
    invoke-virtual {p0}, Lcom/taobao/accs/f/q;->d()Ljava/lang/String;

    move-result-object v2

    const-string v3, "into--[setTnetLogPath]"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/taobao/accs/utl/ALog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 683
    iget-object v2, p0, Lcom/taobao/accs/f/q;->d:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/taobao/accs/utl/b;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 684
    invoke-virtual {p0}, Lcom/taobao/accs/f/q;->d()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "config tnet log path:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/taobao/accs/utl/ALog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 685
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 686
    iget-object v2, p0, Lcom/taobao/accs/f/q;->y:Lorg/android/spdy/SpdyAgent;

    const/high16 v3, 0x500000

    const/4 v4, 0x5

    invoke-virtual {v2, v0, v3, v4}, Lorg/android/spdy/SpdyAgent;->a(Ljava/lang/String;II)I

    goto :goto_1

    .line 691
    :cond_2
    invoke-virtual {p0}, Lcom/taobao/accs/f/q;->d()Ljava/lang/String;

    move-result-object v0

    const-string v2, "loadSoFail"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 692
    invoke-static {}, Lcom/taobao/accs/utl/h;->b()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 696
    invoke-virtual {p0}, Lcom/taobao/accs/f/q;->d()Ljava/lang/String;

    move-result-object v2

    const-string v3, "loadSoFail"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v0, v1}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    const/4 v0, 0x1

    .line 165
    iput-boolean v0, p0, Lcom/taobao/accs/f/q;->v:Z

    .line 166
    iget-object v0, p0, Lcom/taobao/accs/f/q;->d:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/taobao/accs/f/q;->a(Landroid/content/Context;)V

    .line 167
    iget-object v0, p0, Lcom/taobao/accs/f/q;->u:Lcom/taobao/accs/f/q$a;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 168
    invoke-virtual {p0}, Lcom/taobao/accs/f/q;->d()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/taobao/accs/f/q;->c:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " start thread"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 169
    new-instance v0, Lcom/taobao/accs/f/q$a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NetworkThread_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/taobao/accs/f/q;->m:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lcom/taobao/accs/f/q$a;-><init>(Lcom/taobao/accs/f/q;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/taobao/accs/f/q;->u:Lcom/taobao/accs/f/q$a;

    .line 170
    iget-object v0, p0, Lcom/taobao/accs/f/q;->u:Lcom/taobao/accs/f/q$a;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/taobao/accs/f/q$a;->setPriority(I)V

    .line 171
    iget-object v0, p0, Lcom/taobao/accs/f/q;->u:Lcom/taobao/accs/f/q$a;

    invoke-virtual {v0}, Lcom/taobao/accs/f/q$a;->start()V

    .line 173
    :cond_0
    invoke-virtual {p0, v1, v1}, Lcom/taobao/accs/f/q;->a(ZZ)V

    return-void
.end method

.method protected a(Landroid/content/Context;)V
    .locals 2

    .line 1223
    iget-boolean v0, p0, Lcom/taobao/accs/f/q;->g:Z

    if-eqz v0, :cond_0

    return-void

    .line 1226
    :cond_0
    invoke-super {p0, p1}, Lcom/taobao/accs/f/c;->a(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 1227
    invoke-static {p1}, Lanet/channel/d;->a(Z)V

    const/4 v0, 0x1

    .line 1228
    iput-boolean v0, p0, Lcom/taobao/accs/f/q;->g:Z

    .line 1229
    invoke-virtual {p0}, Lcom/taobao/accs/f/q;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "init awcn success!"

    new-array p1, p1, [Ljava/lang/Object;

    invoke-static {v0, v1, p1}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method protected a(Lcom/taobao/accs/data/Message;Z)V
    .locals 5

    .line 177
    iget-boolean v0, p0, Lcom/taobao/accs/f/q;->v:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    if-nez p1, :cond_0

    goto/16 :goto_1

    .line 182
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/taobao/accs/common/a;->a()Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v0

    const/16 v2, 0x3e8

    if-le v0, v2, :cond_1

    .line 183
    new-instance p2, Ljava/util/concurrent/RejectedExecutionException;

    const-string v0, "accs"

    invoke-direct {p2, v0}, Ljava/util/concurrent/RejectedExecutionException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 186
    :cond_1
    invoke-static {}, Lcom/taobao/accs/common/a;->a()Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v0

    new-instance v2, Lcom/taobao/accs/f/r;

    invoke-direct {v2, p0, p1, p2}, Lcom/taobao/accs/f/r;-><init>(Lcom/taobao/accs/f/q;Lcom/taobao/accs/data/Message;Z)V

    iget-wide v3, p1, Lcom/taobao/accs/data/Message;->O:J

    sget-object p2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v4, p2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p2

    .line 224
    invoke-virtual {p1}, Lcom/taobao/accs/data/Message;->a()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_3

    iget-object v0, p1, Lcom/taobao/accs/data/Message;->M:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 227
    invoke-virtual {p1}, Lcom/taobao/accs/data/Message;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 228
    iget-object v0, p1, Lcom/taobao/accs/data/Message;->M:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/taobao/accs/f/q;->c(Ljava/lang/String;)Z

    .line 230
    :cond_2
    iget-object v0, p0, Lcom/taobao/accs/f/q;->e:Lcom/taobao/accs/data/b;

    iget-object v0, v0, Lcom/taobao/accs/data/b;->a:Ljava/util/concurrent/ConcurrentMap;

    iget-object v2, p1, Lcom/taobao/accs/data/Message;->M:Ljava/lang/String;

    invoke-interface {v0, v2, p2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    :cond_3
    invoke-virtual {p1}, Lcom/taobao/accs/data/Message;->e()Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 234
    invoke-virtual {p1}, Lcom/taobao/accs/data/Message;->e()Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;

    move-result-object p2

    iget-object v0, p0, Lcom/taobao/accs/f/q;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/taobao/accs/utl/b;->q(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->setDeviceId(Ljava/lang/String;)V

    .line 235
    invoke-virtual {p1}, Lcom/taobao/accs/data/Message;->e()Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;

    move-result-object p2

    iget v0, p0, Lcom/taobao/accs/f/q;->c:I

    invoke-virtual {p2, v0}, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->setConnType(I)V

    .line 236
    invoke-virtual {p1}, Lcom/taobao/accs/data/Message;->e()Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;

    move-result-object p2

    invoke-virtual {p2}, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->onEnterQueueData()V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 243
    iget-object v0, p0, Lcom/taobao/accs/f/q;->e:Lcom/taobao/accs/data/b;

    const/4 v2, -0x8

    invoke-virtual {v0, p1, v2}, Lcom/taobao/accs/data/b;->a(Lcom/taobao/accs/data/Message;I)V

    .line 244
    invoke-virtual {p0}, Lcom/taobao/accs/f/q;->d()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/taobao/accs/f/q;->c:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "send error"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, p2, v1}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0

    .line 240
    :catch_1
    iget-object p2, p0, Lcom/taobao/accs/f/q;->e:Lcom/taobao/accs/data/b;

    const v0, 0x11178

    invoke-virtual {p2, p1, v0}, Lcom/taobao/accs/data/b;->a(Lcom/taobao/accs/data/Message;I)V

    .line 241
    invoke-virtual {p0}, Lcom/taobao/accs/f/q;->d()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget v0, p0, Lcom/taobao/accs/f/q;->c:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "send queue full count:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/taobao/accs/common/a;->a()Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p1, p2, v0}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    :goto_0
    return-void

    .line 178
    :cond_5
    :goto_1
    invoke-virtual {p0}, Lcom/taobao/accs/f/q;->d()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "not running or msg null! "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/taobao/accs/f/q;->v:Z

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p1, p2, v0}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    const/4 p1, 0x4

    .line 1157
    :try_start_0
    invoke-direct {p0, p1}, Lcom/taobao/accs/f/q;->c(I)V

    .line 1158
    invoke-virtual {p0}, Lcom/taobao/accs/f/q;->l()V

    .line 1159
    iget-object p1, p0, Lcom/taobao/accs/f/q;->H:Lcom/taobao/accs/ut/monitor/SessionMonitor;

    invoke-virtual {p1, p2}, Lcom/taobao/accs/ut/monitor/SessionMonitor;->setCloseReason(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1161
    invoke-static {p1}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public a(ZZ)V
    .locals 4

    .line 267
    invoke-virtual {p0}, Lcom/taobao/accs/f/q;->d()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "try ping, force:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/taobao/accs/utl/ALog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 268
    iget v0, p0, Lcom/taobao/accs/f/q;->c:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 269
    invoke-virtual {p0}, Lcom/taobao/accs/f/q;->d()Ljava/lang/String;

    move-result-object p1

    const-string p2, "INAPP, skip"

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {p1, p2, v0}, Lcom/taobao/accs/utl/ALog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    if-eqz p2, :cond_1

    .line 272
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    mul-double v0, v0, v2

    const-wide v2, 0x408f400000000000L    # 1000.0

    mul-double v0, v0, v2

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x0

    :goto_0
    double-to-int p2, v0

    invoke-static {p1, p2}, Lcom/taobao/accs/data/Message;->a(ZI)Lcom/taobao/accs/data/Message;

    move-result-object p2

    invoke-virtual {p0, p2, p1}, Lcom/taobao/accs/f/q;->b(Lcom/taobao/accs/data/Message;Z)V

    return-void
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x0

    .line 1145
    iput-boolean v0, p0, Lcom/taobao/accs/f/q;->J:Z

    .line 1146
    iput v0, p0, Lcom/taobao/accs/f/q;->f:I

    return-void
.end method

.method public c()Lcom/taobao/accs/ut/a/c;
    .locals 3

    .line 292
    iget-object v0, p0, Lcom/taobao/accs/f/q;->I:Lcom/taobao/accs/ut/a/c;

    if-nez v0, :cond_0

    .line 293
    new-instance v0, Lcom/taobao/accs/ut/a/c;

    invoke-direct {v0}, Lcom/taobao/accs/ut/a/c;-><init>()V

    iput-object v0, p0, Lcom/taobao/accs/f/q;->I:Lcom/taobao/accs/ut/a/c;

    .line 295
    :cond_0
    iget-object v0, p0, Lcom/taobao/accs/f/q;->I:Lcom/taobao/accs/ut/a/c;

    iget v1, p0, Lcom/taobao/accs/f/q;->c:I

    iput v1, v0, Lcom/taobao/accs/ut/a/c;->b:I

    .line 296
    iget-object v0, p0, Lcom/taobao/accs/f/q;->I:Lcom/taobao/accs/ut/a/c;

    iget-object v1, p0, Lcom/taobao/accs/f/q;->t:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    iput v1, v0, Lcom/taobao/accs/ut/a/c;->d:I

    .line 297
    iget-object v0, p0, Lcom/taobao/accs/f/q;->I:Lcom/taobao/accs/ut/a/c;

    iget-object v1, p0, Lcom/taobao/accs/f/q;->d:Landroid/content/Context;

    invoke-static {v1}, Lcom/taobao/accs/utl/b;->p(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/taobao/accs/ut/a/c;->i:Z

    .line 298
    iget-object v0, p0, Lcom/taobao/accs/f/q;->I:Lcom/taobao/accs/ut/a/c;

    iget-object v1, p0, Lcom/taobao/accs/f/q;->K:Ljava/lang/String;

    iput-object v1, v0, Lcom/taobao/accs/ut/a/c;->f:Ljava/lang/String;

    .line 299
    iget-object v0, p0, Lcom/taobao/accs/f/q;->I:Lcom/taobao/accs/ut/a/c;

    iget v1, p0, Lcom/taobao/accs/f/q;->s:I

    iput v1, v0, Lcom/taobao/accs/ut/a/c;->a:I

    .line 300
    iget-object v0, p0, Lcom/taobao/accs/f/q;->I:Lcom/taobao/accs/ut/a/c;

    iget-object v1, p0, Lcom/taobao/accs/f/q;->H:Lcom/taobao/accs/ut/monitor/SessionMonitor;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/taobao/accs/f/q;->H:Lcom/taobao/accs/ut/monitor/SessionMonitor;

    invoke-virtual {v1}, Lcom/taobao/accs/ut/monitor/SessionMonitor;->getRet()Z

    move-result v1

    :goto_0
    iput-boolean v1, v0, Lcom/taobao/accs/ut/a/c;->c:Z

    .line 301
    iget-object v0, p0, Lcom/taobao/accs/f/q;->I:Lcom/taobao/accs/ut/a/c;

    invoke-virtual {p0}, Lcom/taobao/accs/f/q;->n()Z

    move-result v1

    iput-boolean v1, v0, Lcom/taobao/accs/ut/a/c;->j:Z

    .line 302
    iget-object v0, p0, Lcom/taobao/accs/f/q;->I:Lcom/taobao/accs/ut/a/c;

    iget-object v1, p0, Lcom/taobao/accs/f/q;->e:Lcom/taobao/accs/data/b;

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/taobao/accs/f/q;->e:Lcom/taobao/accs/data/b;

    invoke-virtual {v1}, Lcom/taobao/accs/data/b;->c()I

    move-result v2

    :goto_1
    iput v2, v0, Lcom/taobao/accs/ut/a/c;->e:I

    .line 303
    iget-object v0, p0, Lcom/taobao/accs/f/q;->I:Lcom/taobao/accs/ut/a/c;

    iget-object v1, p0, Lcom/taobao/accs/f/q;->x:Ljava/lang/String;

    iput-object v1, v0, Lcom/taobao/accs/ut/a/c;->g:Ljava/lang/String;

    .line 304
    iget-object v0, p0, Lcom/taobao/accs/f/q;->I:Lcom/taobao/accs/ut/a/c;

    return-object v0
.end method

.method public c(Ljava/lang/String;)Z
    .locals 5

    .line 1173
    iget-object v0, p0, Lcom/taobao/accs/f/q;->t:Ljava/util/LinkedList;

    monitor-enter v0

    .line 1174
    :try_start_0
    iget-object v1, p0, Lcom/taobao/accs/f/q;->t:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_0
    if-ltz v1, :cond_1

    .line 1175
    iget-object v3, p0, Lcom/taobao/accs/f/q;->t:Ljava/util/LinkedList;

    invoke-virtual {v3, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/taobao/accs/data/Message;

    if-eqz v3, :cond_0

    .line 1176
    invoke-virtual {v3}, Lcom/taobao/accs/data/Message;->a()I

    move-result v4

    if-ne v4, v2, :cond_0

    iget-object v4, v3, Lcom/taobao/accs/data/Message;->M:Ljava/lang/String;

    if-eqz v4, :cond_0

    iget-object v3, v3, Lcom/taobao/accs/data/Message;->M:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1180
    iget-object p1, p0, Lcom/taobao/accs/f/q;->t:Ljava/util/LinkedList;

    invoke-virtual {p1, v1}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 1185
    :goto_1
    monitor-exit v0

    return v2

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method protected d()Ljava/lang/String;
    .locals 2

    .line 1209
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SilenceConn_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/taobao/accs/f/q;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e()V
    .locals 4

    .line 250
    invoke-super {p0}, Lcom/taobao/accs/f/c;->e()V

    const/4 v0, 0x0

    .line 251
    iput-boolean v0, p0, Lcom/taobao/accs/f/q;->v:Z

    .line 252
    invoke-virtual {p0}, Lcom/taobao/accs/f/q;->l()V

    .line 253
    iget-object v1, p0, Lcom/taobao/accs/f/q;->H:Lcom/taobao/accs/ut/monitor/SessionMonitor;

    if-eqz v1, :cond_0

    .line 254
    iget-object v1, p0, Lcom/taobao/accs/f/q;->H:Lcom/taobao/accs/ut/monitor/SessionMonitor;

    const-string v2, "shut down"

    invoke-virtual {v1, v2}, Lcom/taobao/accs/ut/monitor/SessionMonitor;->setCloseReason(Ljava/lang/String;)V

    .line 256
    :cond_0
    iget-object v1, p0, Lcom/taobao/accs/f/q;->t:Ljava/util/LinkedList;

    monitor-enter v1

    .line 258
    :try_start_0
    iget-object v2, p0, Lcom/taobao/accs/f/q;->t:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 261
    :catch_0
    :goto_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 262
    invoke-virtual {p0}, Lcom/taobao/accs/f/q;->d()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/taobao/accs/f/q;->c:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "shut down"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v0}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 261
    :goto_1
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method protected h()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public l()V
    .locals 3

    .line 282
    invoke-virtual {p0}, Lcom/taobao/accs/f/q;->d()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/taobao/accs/f/q;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " force close!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 284
    :try_start_0
    iget-object v0, p0, Lcom/taobao/accs/f/q;->z:Lorg/android/spdy/SpdySession;

    invoke-virtual {v0}, Lorg/android/spdy/SpdySession;->e()I

    .line 285
    iget-object v0, p0, Lcom/taobao/accs/f/q;->H:Lcom/taobao/accs/ut/monitor/SessionMonitor;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/taobao/accs/ut/monitor/SessionMonitor;->setCloseType(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x3

    .line 288
    invoke-direct {p0, v0}, Lcom/taobao/accs/f/q;->c(I)V

    return-void
.end method

.method public m()Ljava/lang/String;
    .locals 4

    .line 655
    iget-object v0, p0, Lcom/taobao/accs/f/q;->i:Lcom/taobao/accs/b;

    invoke-virtual {v0}, Lcom/taobao/accs/b;->e()Ljava/lang/String;

    move-result-object v0

    .line 656
    invoke-virtual {p0}, Lcom/taobao/accs/f/q;->d()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/taobao/accs/f/q;->c:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " getChannelHost:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public n()Z
    .locals 1

    .line 912
    iget-boolean v0, p0, Lcom/taobao/accs/f/q;->v:Z

    return v0
.end method
