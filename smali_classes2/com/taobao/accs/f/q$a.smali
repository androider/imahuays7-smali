.class Lcom/taobao/accs/f/q$a;
.super Ljava/lang/Thread;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/accs/f/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field public a:I

.field b:J

.field final synthetic c:Lcom/taobao/accs/f/q;

.field private final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/taobao/accs/f/q;Ljava/lang/String;)V
    .locals 0

    .line 707
    iput-object p1, p0, Lcom/taobao/accs/f/q$a;->c:Lcom/taobao/accs/f/q;

    .line 708
    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 701
    invoke-virtual {p0}, Lcom/taobao/accs/f/q$a;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/taobao/accs/f/q$a;->d:Ljava/lang/String;

    const/4 p1, 0x0

    .line 703
    iput p1, p0, Lcom/taobao/accs/f/q$a;->a:I

    return-void
.end method

.method private a(Z)V
    .locals 11

    .line 712
    iget-object v0, p0, Lcom/taobao/accs/f/q$a;->c:Lcom/taobao/accs/f/q;

    invoke-static {v0}, Lcom/taobao/accs/f/q;->b(Lcom/taobao/accs/f/q;)I

    move-result v0

    const-wide/16 v1, 0x1388

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v0, v3, :cond_6

    .line 713
    iget-object v0, p0, Lcom/taobao/accs/f/q$a;->c:Lcom/taobao/accs/f/q;

    iget-object v0, v0, Lcom/taobao/accs/f/q;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/taobao/accs/utl/b;->p(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 714
    iget-object p1, p0, Lcom/taobao/accs/f/q$a;->d:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/taobao/accs/f/q$a;->c:Lcom/taobao/accs/f/q;

    iget v1, v1, Lcom/taobao/accs/f/q;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " Network not available"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 718
    iput v4, p0, Lcom/taobao/accs/f/q$a;->a:I

    .line 720
    :cond_1
    iget-object v0, p0, Lcom/taobao/accs/f/q$a;->d:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/taobao/accs/f/q$a;->c:Lcom/taobao/accs/f/q;

    iget v6, v6, Lcom/taobao/accs/f/q;->c:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " try connect, force = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " failTimes = "

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/taobao/accs/f/q$a;->a:I

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {v0, p1, v5}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 722
    iget-object p1, p0, Lcom/taobao/accs/f/q$a;->c:Lcom/taobao/accs/f/q;

    invoke-static {p1}, Lcom/taobao/accs/f/q;->b(Lcom/taobao/accs/f/q;)I

    move-result p1

    if-eq p1, v3, :cond_2

    iget p1, p0, Lcom/taobao/accs/f/q$a;->a:I

    const/4 v0, 0x4

    if-lt p1, v0, :cond_2

    .line 723
    iget-object p1, p0, Lcom/taobao/accs/f/q$a;->c:Lcom/taobao/accs/f/q;

    invoke-static {p1, v3}, Lcom/taobao/accs/f/q;->a(Lcom/taobao/accs/f/q;Z)Z

    .line 724
    iget-object p1, p0, Lcom/taobao/accs/f/q$a;->d:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/taobao/accs/f/q$a;->c:Lcom/taobao/accs/f/q;

    iget v2, v2, Lcom/taobao/accs/f/q;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " try connect fail "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " times"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 726
    :cond_2
    iget-object p1, p0, Lcom/taobao/accs/f/q$a;->c:Lcom/taobao/accs/f/q;

    invoke-static {p1}, Lcom/taobao/accs/f/q;->b(Lcom/taobao/accs/f/q;)I

    move-result p1

    if-eq p1, v3, :cond_7

    .line 727
    iget-object p1, p0, Lcom/taobao/accs/f/q$a;->c:Lcom/taobao/accs/f/q;

    iget p1, p1, Lcom/taobao/accs/f/q;->c:I

    if-ne p1, v3, :cond_3

    iget p1, p0, Lcom/taobao/accs/f/q$a;->a:I

    if-nez p1, :cond_3

    .line 728
    iget-object p1, p0, Lcom/taobao/accs/f/q$a;->d:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/taobao/accs/f/q$a;->c:Lcom/taobao/accs/f/q;

    iget v1, v1, Lcom/taobao/accs/f/q;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " try connect in app, no sleep"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 730
    :cond_3
    iget-object p1, p0, Lcom/taobao/accs/f/q$a;->d:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/taobao/accs/f/q$a;->c:Lcom/taobao/accs/f/q;

    iget v5, v5, Lcom/taobao/accs/f/q;->c:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " try connect, need sleep"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {p1, v0, v5}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 732
    :try_start_0
    invoke-static {v1, v2}, Lcom/taobao/accs/f/q$a;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 734
    invoke-static {p1}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    .line 738
    :goto_0
    iget-object p1, p0, Lcom/taobao/accs/f/q$a;->c:Lcom/taobao/accs/f/q;

    const-string v0, ""

    invoke-static {p1, v0}, Lcom/taobao/accs/f/q;->a(Lcom/taobao/accs/f/q;Ljava/lang/String;)Ljava/lang/String;

    .line 741
    iget p1, p0, Lcom/taobao/accs/f/q$a;->a:I

    const/4 v0, 0x3

    if-ne p1, v0, :cond_4

    .line 742
    iget-object p1, p0, Lcom/taobao/accs/f/q$a;->c:Lcom/taobao/accs/f/q;

    invoke-static {p1}, Lcom/taobao/accs/f/q;->e(Lcom/taobao/accs/f/q;)Lcom/taobao/accs/f/i;

    move-result-object p1

    iget-object v0, p0, Lcom/taobao/accs/f/q$a;->c:Lcom/taobao/accs/f/q;

    invoke-virtual {v0}, Lcom/taobao/accs/f/q;->m()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/taobao/accs/f/i;->b(Ljava/lang/String;)V

    .line 745
    :cond_4
    iget-object p1, p0, Lcom/taobao/accs/f/q$a;->c:Lcom/taobao/accs/f/q;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/taobao/accs/f/q;->b(Lcom/taobao/accs/f/q;Ljava/lang/String;)V

    .line 747
    iget-object p1, p0, Lcom/taobao/accs/f/q$a;->c:Lcom/taobao/accs/f/q;

    invoke-static {p1}, Lcom/taobao/accs/f/q;->d(Lcom/taobao/accs/f/q;)Lcom/taobao/accs/ut/monitor/SessionMonitor;

    move-result-object p1

    iget v0, p0, Lcom/taobao/accs/f/q$a;->a:I

    invoke-virtual {p1, v0}, Lcom/taobao/accs/ut/monitor/SessionMonitor;->setRetryTimes(I)V

    .line 748
    iget-object p1, p0, Lcom/taobao/accs/f/q$a;->c:Lcom/taobao/accs/f/q;

    invoke-static {p1}, Lcom/taobao/accs/f/q;->b(Lcom/taobao/accs/f/q;)I

    move-result p1

    if-eq p1, v3, :cond_5

    .line 749
    iget p1, p0, Lcom/taobao/accs/f/q$a;->a:I

    add-int/2addr p1, v3

    iput p1, p0, Lcom/taobao/accs/f/q$a;->a:I

    .line 750
    iget-object p1, p0, Lcom/taobao/accs/f/q$a;->d:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/taobao/accs/f/q$a;->c:Lcom/taobao/accs/f/q;

    iget v1, v1, Lcom/taobao/accs/f/q;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " try connect fail, ready for reconnect"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 751
    invoke-direct {p0, v4}, Lcom/taobao/accs/f/q$a;->a(Z)V

    goto :goto_1

    .line 753
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/taobao/accs/f/q$a;->b:J

    goto :goto_1

    .line 756
    :cond_6
    iget-object p1, p0, Lcom/taobao/accs/f/q$a;->c:Lcom/taobao/accs/f/q;

    invoke-static {p1}, Lcom/taobao/accs/f/q;->b(Lcom/taobao/accs/f/q;)I

    move-result p1

    if-ne p1, v3, :cond_7

    .line 757
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/taobao/accs/f/q$a;->b:J

    sub-long v9, v5, v7

    cmp-long p1, v9, v1

    if-lez p1, :cond_7

    .line 758
    iput v4, p0, Lcom/taobao/accs/f/q$a;->a:I

    :cond_7
    :goto_1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 18

    move-object/from16 v1, p0

    .line 764
    iget-object v2, v1, Lcom/taobao/accs/f/q$a;->d:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v1, Lcom/taobao/accs/f/q$a;->c:Lcom/taobao/accs/f/q;

    iget v4, v4, Lcom/taobao/accs/f/q;->c:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " NetworkThread run"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v5}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 766
    iput v4, v1, Lcom/taobao/accs/f/q$a;->a:I

    const/4 v2, 0x0

    .line 767
    :cond_0
    :goto_0
    iget-object v3, v1, Lcom/taobao/accs/f/q$a;->c:Lcom/taobao/accs/f/q;

    invoke-static {v3}, Lcom/taobao/accs/f/q;->f(Lcom/taobao/accs/f/q;)Z

    move-result v3

    if-eqz v3, :cond_20

    .line 768
    iget-object v3, v1, Lcom/taobao/accs/f/q$a;->d:Ljava/lang/String;

    const-string v5, "ready to get message"

    new-array v6, v4, [Ljava/lang/Object;

    invoke-static {v3, v5, v6}, Lcom/taobao/accs/utl/ALog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 769
    iget-object v3, v1, Lcom/taobao/accs/f/q$a;->c:Lcom/taobao/accs/f/q;

    invoke-static {v3}, Lcom/taobao/accs/f/q;->a(Lcom/taobao/accs/f/q;)Ljava/util/LinkedList;

    move-result-object v3

    monitor-enter v3

    .line 770
    :try_start_0
    iget-object v5, v1, Lcom/taobao/accs/f/q$a;->c:Lcom/taobao/accs/f/q;

    invoke-static {v5}, Lcom/taobao/accs/f/q;->a(Lcom/taobao/accs/f/q;)Ljava/util/LinkedList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_a

    if-nez v5, :cond_1

    .line 772
    :try_start_1
    iget-object v5, v1, Lcom/taobao/accs/f/q$a;->d:Ljava/lang/String;

    const-string v6, "no message, wait"

    new-array v7, v4, [Ljava/lang/Object;

    invoke-static {v5, v6, v7}, Lcom/taobao/accs/utl/ALog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 773
    iget-object v5, v1, Lcom/taobao/accs/f/q$a;->c:Lcom/taobao/accs/f/q;

    invoke-static {v5}, Lcom/taobao/accs/f/q;->a(Lcom/taobao/accs/f/q;)Ljava/util/LinkedList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_a

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v2, v0

    .line 775
    :try_start_2
    invoke-static {v2}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    .line 776
    monitor-exit v3

    goto/16 :goto_11

    .line 779
    :cond_1
    :goto_1
    iget-object v5, v1, Lcom/taobao/accs/f/q$a;->d:Ljava/lang/String;

    const-string v6, "try get message"

    new-array v7, v4, [Ljava/lang/Object;

    invoke-static {v5, v6, v7}, Lcom/taobao/accs/utl/ALog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 780
    iget-object v5, v1, Lcom/taobao/accs/f/q$a;->c:Lcom/taobao/accs/f/q;

    invoke-static {v5}, Lcom/taobao/accs/f/q;->a(Lcom/taobao/accs/f/q;)Ljava/util/LinkedList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    move-result v5

    if-eqz v5, :cond_2

    .line 781
    iget-object v2, v1, Lcom/taobao/accs/f/q$a;->c:Lcom/taobao/accs/f/q;

    invoke-static {v2}, Lcom/taobao/accs/f/q;->a(Lcom/taobao/accs/f/q;)Ljava/util/LinkedList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/taobao/accs/data/Message;

    .line 783
    invoke-virtual {v2}, Lcom/taobao/accs/data/Message;->e()Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 784
    invoke-virtual {v2}, Lcom/taobao/accs/data/Message;->e()Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;

    move-result-object v5

    invoke-virtual {v5}, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->onTakeFromQueue()V

    .line 787
    :cond_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_a

    .line 788
    iget-object v3, v1, Lcom/taobao/accs/f/q$a;->c:Lcom/taobao/accs/f/q;

    invoke-static {v3}, Lcom/taobao/accs/f/q;->f(Lcom/taobao/accs/f/q;)Z

    move-result v3

    if-nez v3, :cond_3

    goto/16 :goto_11

    :cond_3
    if-eqz v2, :cond_0

    .line 793
    iget-object v3, v1, Lcom/taobao/accs/f/q$a;->d:Ljava/lang/String;

    const-string v5, "send message not null"

    new-array v6, v4, [Ljava/lang/Object;

    invoke-static {v3, v5, v6}, Lcom/taobao/accs/utl/ALog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v3, 0xc9

    const/4 v7, 0x1

    .line 800
    :try_start_3
    invoke-virtual {v2}, Lcom/taobao/accs/data/Message;->a()I

    move-result v8

    .line 801
    iget-object v9, v1, Lcom/taobao/accs/f/q$a;->d:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, v1, Lcom/taobao/accs/f/q$a;->c:Lcom/taobao/accs/f/q;

    iget v11, v11, Lcom/taobao/accs/f/q;->c:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " send:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v8}, Lcom/taobao/accs/data/Message$a;->a(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " status:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v1, Lcom/taobao/accs/f/q$a;->c:Lcom/taobao/accs/f/q;

    invoke-static {v11}, Lcom/taobao/accs/f/q;->b(Lcom/taobao/accs/f/q;)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    new-array v11, v4, [Ljava/lang/Object;

    invoke-static {v9, v10, v11}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v9, 0x2

    if-ne v8, v9, :cond_7

    .line 803
    iget-object v8, v1, Lcom/taobao/accs/f/q$a;->c:Lcom/taobao/accs/f/q;

    iget v8, v8, Lcom/taobao/accs/f/q;->c:I

    if-ne v8, v7, :cond_4

    .line 804
    iget-object v8, v1, Lcom/taobao/accs/f/q$a;->d:Ljava/lang/String;

    const-string v9, "INAPP ping, skip"

    new-array v10, v4, [Ljava/lang/Object;

    invoke-static {v8, v9, v10}, Lcom/taobao/accs/utl/ALog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    .line 894
    :try_start_4
    iget-object v3, v1, Lcom/taobao/accs/f/q$a;->d:Ljava/lang/String;

    const-string v5, "send succ, remove it"

    new-array v6, v4, [Ljava/lang/Object;

    invoke-static {v3, v5, v6}, Lcom/taobao/accs/utl/ALog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 895
    iget-object v3, v1, Lcom/taobao/accs/f/q$a;->c:Lcom/taobao/accs/f/q;

    invoke-static {v3}, Lcom/taobao/accs/f/q;->a(Lcom/taobao/accs/f/q;)Ljava/util/LinkedList;

    move-result-object v3

    monitor-enter v3
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3

    .line 896
    :try_start_5
    iget-object v5, v1, Lcom/taobao/accs/f/q$a;->c:Lcom/taobao/accs/f/q;

    invoke-static {v5}, Lcom/taobao/accs/f/q;->a(Lcom/taobao/accs/f/q;)Ljava/util/LinkedList;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 897
    monitor-exit v3

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    move-object v5, v0

    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v5
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3

    .line 808
    :cond_4
    :try_start_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget-object v10, v1, Lcom/taobao/accs/f/q$a;->c:Lcom/taobao/accs/f/q;

    invoke-static {v10}, Lcom/taobao/accs/f/q;->g(Lcom/taobao/accs/f/q;)J

    move-result-wide v10

    const/4 v12, 0x0

    sub-long v12, v8, v10

    iget-object v8, v1, Lcom/taobao/accs/f/q$a;->c:Lcom/taobao/accs/f/q;

    iget-object v8, v8, Lcom/taobao/accs/f/q;->d:Landroid/content/Context;

    invoke-static {v8}, Lcom/taobao/accs/f/h;->a(Landroid/content/Context;)Lcom/taobao/accs/f/h;

    move-result-object v8

    invoke-virtual {v8}, Lcom/taobao/accs/f/h;->b()I

    move-result v8

    sub-int/2addr v8, v7

    mul-int/lit16 v8, v8, 0x3e8

    int-to-long v8, v8

    cmp-long v10, v12, v8

    if-gez v10, :cond_6

    iget-boolean v8, v2, Lcom/taobao/accs/data/Message;->d:Z

    if-eqz v8, :cond_5

    goto :goto_2

    .line 826
    :cond_5
    invoke-direct {v1, v4}, Lcom/taobao/accs/f/q$a;->a(Z)V

    goto/16 :goto_5

    .line 809
    :cond_6
    :goto_2
    iget-object v8, v1, Lcom/taobao/accs/f/q$a;->d:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ms:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    iget-object v12, v1, Lcom/taobao/accs/f/q$a;->c:Lcom/taobao/accs/f/q;

    invoke-static {v12}, Lcom/taobao/accs/f/q;->g(Lcom/taobao/accs/f/q;)J

    move-result-wide v12

    const/4 v14, 0x0

    sub-long v14, v10, v12

    invoke-virtual {v9, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, " force:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v10, v2, Lcom/taobao/accs/data/Message;->d:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-array v10, v4, [Ljava/lang/Object;

    invoke-static {v8, v9, v10}, Lcom/taobao/accs/utl/ALog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 810
    invoke-direct {v1, v7}, Lcom/taobao/accs/f/q$a;->a(Z)V

    .line 811
    iget-object v8, v1, Lcom/taobao/accs/f/q$a;->c:Lcom/taobao/accs/f/q;

    invoke-static {v8}, Lcom/taobao/accs/f/q;->h(Lcom/taobao/accs/f/q;)Lorg/android/spdy/SpdySession;

    move-result-object v8

    if-eqz v8, :cond_d

    iget-object v8, v1, Lcom/taobao/accs/f/q$a;->c:Lcom/taobao/accs/f/q;

    invoke-static {v8}, Lcom/taobao/accs/f/q;->b(Lcom/taobao/accs/f/q;)I

    move-result v8

    if-ne v8, v7, :cond_d

    .line 812
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget-object v10, v1, Lcom/taobao/accs/f/q$a;->c:Lcom/taobao/accs/f/q;

    invoke-static {v10}, Lcom/taobao/accs/f/q;->g(Lcom/taobao/accs/f/q;)J

    move-result-wide v10

    const/4 v12, 0x0

    sub-long v12, v8, v10

    iget-object v8, v1, Lcom/taobao/accs/f/q$a;->c:Lcom/taobao/accs/f/q;

    iget-object v8, v8, Lcom/taobao/accs/f/q;->d:Landroid/content/Context;

    invoke-static {v8}, Lcom/taobao/accs/f/h;->a(Landroid/content/Context;)Lcom/taobao/accs/f/h;

    move-result-object v8

    invoke-virtual {v8}, Lcom/taobao/accs/f/h;->b()I

    move-result v8

    sub-int/2addr v8, v7

    mul-int/lit16 v8, v8, 0x3e8

    int-to-long v8, v8

    cmp-long v10, v12, v8

    if-ltz v10, :cond_f

    .line 813
    iget-object v8, v1, Lcom/taobao/accs/f/q$a;->d:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, v1, Lcom/taobao/accs/f/q$a;->c:Lcom/taobao/accs/f/q;

    iget v10, v10, Lcom/taobao/accs/f/q;->c:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " onSendPing"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-array v10, v4, [Ljava/lang/Object;

    invoke-static {v8, v9, v10}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 814
    iget-object v8, v1, Lcom/taobao/accs/f/q$a;->c:Lcom/taobao/accs/f/q;

    iget-object v8, v8, Lcom/taobao/accs/f/q;->e:Lcom/taobao/accs/data/b;

    invoke-virtual {v8}, Lcom/taobao/accs/data/b;->a()V

    .line 815
    iget-object v8, v1, Lcom/taobao/accs/f/q$a;->c:Lcom/taobao/accs/f/q;

    invoke-static {v8}, Lcom/taobao/accs/f/q;->h(Lcom/taobao/accs/f/q;)Lorg/android/spdy/SpdySession;

    move-result-object v8

    invoke-virtual {v8}, Lorg/android/spdy/SpdySession;->c()I

    .line 816
    iget-object v8, v1, Lcom/taobao/accs/f/q$a;->c:Lcom/taobao/accs/f/q;

    invoke-static {v8}, Lcom/taobao/accs/f/q;->d(Lcom/taobao/accs/f/q;)Lcom/taobao/accs/ut/monitor/SessionMonitor;

    move-result-object v8

    invoke-virtual {v8}, Lcom/taobao/accs/ut/monitor/SessionMonitor;->onSendPing()V

    .line 818
    iget-object v8, v1, Lcom/taobao/accs/f/q$a;->c:Lcom/taobao/accs/f/q;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-static {v8, v9, v10}, Lcom/taobao/accs/f/q;->a(Lcom/taobao/accs/f/q;J)J

    .line 819
    iget-object v8, v1, Lcom/taobao/accs/f/q$a;->c:Lcom/taobao/accs/f/q;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v9

    invoke-static {v8, v9, v10}, Lcom/taobao/accs/f/q;->b(Lcom/taobao/accs/f/q;J)J

    .line 820
    iget-object v8, v1, Lcom/taobao/accs/f/q$a;->c:Lcom/taobao/accs/f/q;

    invoke-virtual {v8}, Lcom/taobao/accs/f/q;->f()V

    goto/16 :goto_5

    :cond_7
    if-ne v8, v7, :cond_e

    .line 830
    invoke-direct {v1, v7}, Lcom/taobao/accs/f/q$a;->a(Z)V

    .line 831
    iget-object v8, v1, Lcom/taobao/accs/f/q$a;->c:Lcom/taobao/accs/f/q;

    invoke-static {v8}, Lcom/taobao/accs/f/q;->b(Lcom/taobao/accs/f/q;)I

    move-result v8

    if-ne v8, v7, :cond_d

    iget-object v8, v1, Lcom/taobao/accs/f/q$a;->c:Lcom/taobao/accs/f/q;

    invoke-static {v8}, Lcom/taobao/accs/f/q;->h(Lcom/taobao/accs/f/q;)Lorg/android/spdy/SpdySession;

    move-result-object v8

    if-eqz v8, :cond_d

    .line 832
    iget-object v8, v1, Lcom/taobao/accs/f/q$a;->c:Lcom/taobao/accs/f/q;

    iget-object v8, v8, Lcom/taobao/accs/f/q;->d:Landroid/content/Context;

    iget-object v10, v1, Lcom/taobao/accs/f/q$a;->c:Lcom/taobao/accs/f/q;

    iget v10, v10, Lcom/taobao/accs/f/q;->c:I

    invoke-virtual {v2, v8, v10}, Lcom/taobao/accs/data/Message;->a(Landroid/content/Context;I)[B

    move-result-object v8

    .line 833
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual {v2, v10, v11}, Lcom/taobao/accs/data/Message;->a(J)V

    .line 834
    array-length v10, v8

    const/16 v11, 0x4000

    if-le v10, v11, :cond_8

    iget-object v10, v2, Lcom/taobao/accs/data/Message;->t:Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    const/16 v11, 0x66

    if-eq v10, v11, :cond_8

    .line 835
    iget-object v8, v1, Lcom/taobao/accs/f/q$a;->c:Lcom/taobao/accs/f/q;

    iget-object v8, v8, Lcom/taobao/accs/f/q;->e:Lcom/taobao/accs/data/b;

    const/4 v9, -0x4

    invoke-virtual {v8, v2, v9}, Lcom/taobao/accs/data/b;->a(Lcom/taobao/accs/data/Message;I)V

    goto/16 :goto_5

    .line 838
    :cond_8
    iget-object v10, v1, Lcom/taobao/accs/f/q$a;->c:Lcom/taobao/accs/f/q;

    invoke-static {v10}, Lcom/taobao/accs/f/q;->h(Lcom/taobao/accs/f/q;)Lorg/android/spdy/SpdySession;

    move-result-object v11

    invoke-virtual {v2}, Lcom/taobao/accs/data/Message;->d()I

    move-result v12

    const/16 v13, 0xc8

    const/4 v14, 0x0

    if-nez v8, :cond_9

    const/4 v15, 0x0

    goto :goto_3

    :cond_9
    array-length v10, v8

    move v15, v10

    :goto_3
    move-object/from16 v16, v8

    invoke-virtual/range {v11 .. v16}, Lorg/android/spdy/SpdySession;->a(IIII[B)I

    .line 839
    iget-object v10, v1, Lcom/taobao/accs/f/q$a;->d:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, v1, Lcom/taobao/accs/f/q$a;->c:Lcom/taobao/accs/f/q;

    iget v12, v12, Lcom/taobao/accs/f/q;->c:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " send data len"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x5

    new-array v12, v12, [Ljava/lang/Object;

    if-nez v8, :cond_a

    const/4 v13, 0x0

    goto :goto_4

    :cond_a
    array-length v13, v8

    :goto_4
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v12, v4

    const-string v13, "dataId"

    aput-object v13, v12, v7

    invoke-virtual {v2}, Lcom/taobao/accs/data/Message;->b()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v12, v9

    const/4 v13, 0x3

    const-string v14, "utdid"

    aput-object v14, v12, v13

    const/4 v13, 0x4

    iget-object v14, v1, Lcom/taobao/accs/f/q$a;->c:Lcom/taobao/accs/f/q;

    iget-object v14, v14, Lcom/taobao/accs/f/q;->j:Ljava/lang/String;

    aput-object v14, v12, v13

    invoke-static {v10, v11, v12}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 843
    iget-object v10, v1, Lcom/taobao/accs/f/q$a;->c:Lcom/taobao/accs/f/q;

    iget-object v10, v10, Lcom/taobao/accs/f/q;->e:Lcom/taobao/accs/data/b;

    invoke-virtual {v10, v2}, Lcom/taobao/accs/data/b;->a(Lcom/taobao/accs/data/Message;)V

    .line 845
    iget-boolean v10, v2, Lcom/taobao/accs/data/Message;->c:Z

    if-eqz v10, :cond_b

    .line 846
    iget-object v10, v1, Lcom/taobao/accs/f/q$a;->d:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, v1, Lcom/taobao/accs/f/q$a;->c:Lcom/taobao/accs/f/q;

    iget v12, v12, Lcom/taobao/accs/f/q;->c:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " sendCFrame end ack"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    new-array v9, v9, [Ljava/lang/Object;

    const-string v12, "dataId"

    aput-object v12, v9, v4

    invoke-virtual {v2}, Lcom/taobao/accs/data/Message;->d()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v9, v7

    invoke-static {v10, v11, v9}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 847
    iget-object v9, v1, Lcom/taobao/accs/f/q$a;->c:Lcom/taobao/accs/f/q;

    iget-object v9, v9, Lcom/taobao/accs/f/q;->l:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Lcom/taobao/accs/data/Message;->d()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 850
    :cond_b
    invoke-virtual {v2}, Lcom/taobao/accs/data/Message;->e()Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;

    move-result-object v9

    if-eqz v9, :cond_c

    .line 851
    invoke-virtual {v2}, Lcom/taobao/accs/data/Message;->e()Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;

    move-result-object v9

    invoke-virtual {v9}, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->onSendData()V

    .line 853
    :cond_c
    iget-object v9, v1, Lcom/taobao/accs/f/q$a;->c:Lcom/taobao/accs/f/q;

    invoke-virtual {v2}, Lcom/taobao/accs/data/Message;->b()Ljava/lang/String;

    move-result-object v10

    iget v11, v2, Lcom/taobao/accs/data/Message;->Q:I

    int-to-long v11, v11

    invoke-virtual {v9, v10, v11, v12}, Lcom/taobao/accs/f/q;->a(Ljava/lang/String;J)V

    .line 855
    iget-object v9, v1, Lcom/taobao/accs/f/q$a;->c:Lcom/taobao/accs/f/q;

    iget-object v9, v9, Lcom/taobao/accs/f/q;->e:Lcom/taobao/accs/data/b;

    new-instance v14, Lcom/taobao/accs/ut/monitor/TrafficsMonitor$a;

    iget-object v11, v2, Lcom/taobao/accs/data/Message;->F:Ljava/lang/String;

    invoke-static {}, Lanet/channel/d;->h()Z

    move-result v12

    iget-object v10, v1, Lcom/taobao/accs/f/q$a;->c:Lcom/taobao/accs/f/q;

    invoke-virtual {v10}, Lcom/taobao/accs/f/q;->m()Ljava/lang/String;

    move-result-object v13

    array-length v8, v8

    int-to-long v5, v8

    move-object v10, v14

    move-object v8, v14

    move-wide v14, v5

    invoke-direct/range {v10 .. v15}, Lcom/taobao/accs/ut/monitor/TrafficsMonitor$a;-><init>(Ljava/lang/String;ZLjava/lang/String;J)V

    invoke-virtual {v9, v8}, Lcom/taobao/accs/data/b;->a(Lcom/taobao/accs/ut/monitor/TrafficsMonitor$a;)V

    goto :goto_5

    :cond_d
    const/4 v5, 0x0

    goto :goto_6

    .line 862
    :cond_e
    invoke-direct {v1, v4}, Lcom/taobao/accs/f/q$a;->a(Z)V

    .line 864
    iget-object v5, v1, Lcom/taobao/accs/f/q$a;->d:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v1, Lcom/taobao/accs/f/q$a;->c:Lcom/taobao/accs/f/q;

    iget v9, v9, Lcom/taobao/accs/f/q;->c:I

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " skip msg "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v8, v4, [Ljava/lang/Object;

    invoke-static {v5, v6, v8}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    :cond_f
    :goto_5
    const/4 v5, 0x1

    .line 866
    :goto_6
    :try_start_8
    iget-object v6, v1, Lcom/taobao/accs/f/q$a;->c:Lcom/taobao/accs/f/q;

    invoke-static {v6}, Lcom/taobao/accs/f/q;->i(Lcom/taobao/accs/f/q;)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    if-nez v5, :cond_14

    .line 877
    :try_start_9
    iget-object v5, v1, Lcom/taobao/accs/f/q$a;->c:Lcom/taobao/accs/f/q;

    invoke-virtual {v5}, Lcom/taobao/accs/f/q;->l()V

    .line 878
    iget-object v5, v1, Lcom/taobao/accs/f/q$a;->c:Lcom/taobao/accs/f/q;

    invoke-static {v5}, Lcom/taobao/accs/f/q;->d(Lcom/taobao/accs/f/q;)Lcom/taobao/accs/ut/monitor/SessionMonitor;

    move-result-object v5

    if-eqz v5, :cond_10

    .line 879
    iget-object v5, v1, Lcom/taobao/accs/f/q$a;->c:Lcom/taobao/accs/f/q;

    invoke-static {v5}, Lcom/taobao/accs/f/q;->d(Lcom/taobao/accs/f/q;)Lcom/taobao/accs/ut/monitor/SessionMonitor;

    move-result-object v5

    const-string v6, "send fail"

    invoke-virtual {v5, v6}, Lcom/taobao/accs/ut/monitor/SessionMonitor;->setCloseReason(Ljava/lang/String;)V

    .line 881
    :cond_10
    iget-object v5, v1, Lcom/taobao/accs/f/q$a;->c:Lcom/taobao/accs/f/q;

    invoke-static {v5}, Lcom/taobao/accs/f/q;->a(Lcom/taobao/accs/f/q;)Ljava/util/LinkedList;

    move-result-object v5

    monitor-enter v5
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_3

    .line 882
    :try_start_a
    iget-object v6, v1, Lcom/taobao/accs/f/q$a;->c:Lcom/taobao/accs/f/q;

    invoke-static {v6}, Lcom/taobao/accs/f/q;->a(Lcom/taobao/accs/f/q;)Ljava/util/LinkedList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/LinkedList;->size()I

    move-result v6

    sub-int/2addr v6, v7

    :goto_7
    if-ltz v6, :cond_13

    .line 883
    iget-object v7, v1, Lcom/taobao/accs/f/q$a;->c:Lcom/taobao/accs/f/q;

    invoke-static {v7}, Lcom/taobao/accs/f/q;->a(Lcom/taobao/accs/f/q;)Ljava/util/LinkedList;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/taobao/accs/data/Message;

    if-eqz v7, :cond_12

    .line 884
    iget-object v8, v7, Lcom/taobao/accs/data/Message;->t:Ljava/lang/Integer;

    if-eqz v8, :cond_12

    iget-object v8, v7, Lcom/taobao/accs/data/Message;->t:Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/16 v9, 0x64

    if-eq v8, v9, :cond_11

    iget-object v8, v7, Lcom/taobao/accs/data/Message;->t:Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-ne v8, v3, :cond_12

    .line 886
    :cond_11
    iget-object v8, v1, Lcom/taobao/accs/f/q$a;->c:Lcom/taobao/accs/f/q;

    iget-object v8, v8, Lcom/taobao/accs/f/q;->e:Lcom/taobao/accs/data/b;

    const/4 v9, -0x1

    invoke-virtual {v8, v7, v9}, Lcom/taobao/accs/data/b;->a(Lcom/taobao/accs/data/Message;I)V

    .line 887
    iget-object v7, v1, Lcom/taobao/accs/f/q$a;->c:Lcom/taobao/accs/f/q;

    invoke-static {v7}, Lcom/taobao/accs/f/q;->a(Lcom/taobao/accs/f/q;)Ljava/util/LinkedList;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    :cond_12
    add-int/lit8 v6, v6, -0x1

    goto :goto_7

    .line 890
    :cond_13
    iget-object v3, v1, Lcom/taobao/accs/f/q$a;->d:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v1, Lcom/taobao/accs/f/q$a;->c:Lcom/taobao/accs/f/q;

    iget v7, v7, Lcom/taobao/accs/f/q;->c:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " network disconnected, wait"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v4, [Ljava/lang/Object;

    invoke-static {v3, v6, v7}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 891
    iget-object v3, v1, Lcom/taobao/accs/f/q$a;->c:Lcom/taobao/accs/f/q;

    invoke-static {v3}, Lcom/taobao/accs/f/q;->a(Lcom/taobao/accs/f/q;)Ljava/util/LinkedList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V

    .line 892
    monitor-exit v5

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    move-object v3, v0

    monitor-exit v5
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :try_start_b
    throw v3

    .line 894
    :cond_14
    iget-object v3, v1, Lcom/taobao/accs/f/q$a;->d:Ljava/lang/String;

    const-string v5, "send succ, remove it"

    new-array v6, v4, [Ljava/lang/Object;

    invoke-static {v3, v5, v6}, Lcom/taobao/accs/utl/ALog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 895
    iget-object v3, v1, Lcom/taobao/accs/f/q$a;->c:Lcom/taobao/accs/f/q;

    invoke-static {v3}, Lcom/taobao/accs/f/q;->a(Lcom/taobao/accs/f/q;)Ljava/util/LinkedList;

    move-result-object v3

    monitor-enter v3
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_3

    .line 896
    :try_start_c
    iget-object v5, v1, Lcom/taobao/accs/f/q$a;->c:Lcom/taobao/accs/f/q;

    invoke-static {v5}, Lcom/taobao/accs/f/q;->a(Lcom/taobao/accs/f/q;)Ljava/util/LinkedList;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 897
    monitor-exit v3

    goto/16 :goto_0

    :catchall_2
    move-exception v0

    move-object v5, v0

    monitor-exit v3
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    :try_start_d
    throw v5
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_3

    :catchall_3
    move-exception v0

    move v6, v5

    goto/16 :goto_b

    :catch_1
    move-exception v0

    move v6, v5

    move-object v5, v0

    goto :goto_8

    :catchall_4
    move-exception v0

    move-object v5, v0

    const/4 v6, 0x1

    goto/16 :goto_c

    :catch_2
    move-exception v0

    move-object v5, v0

    const/4 v6, 0x1

    :goto_8
    :try_start_e
    const-string v8, "accs"

    const-string v9, "send_fail"

    .line 870
    iget-object v10, v2, Lcom/taobao/accs/data/Message;->F:Ljava/lang/String;

    const-string v11, "1"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, v1, Lcom/taobao/accs/f/q$a;->c:Lcom/taobao/accs/f/q;

    iget v13, v13, Lcom/taobao/accs/f/q;->c:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v8, v9, v10, v11, v12}, Lcom/taobao/accs/utl/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 871
    invoke-static {v5}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    .line 872
    iget-object v8, v1, Lcom/taobao/accs/f/q$a;->d:Ljava/lang/String;

    const-string v9, "service connection run"

    new-array v10, v4, [Ljava/lang/Object;

    invoke-static {v8, v9, v5, v10}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_7

    if-nez v6, :cond_19

    .line 877
    :try_start_f
    iget-object v5, v1, Lcom/taobao/accs/f/q$a;->c:Lcom/taobao/accs/f/q;

    invoke-virtual {v5}, Lcom/taobao/accs/f/q;->l()V

    .line 878
    iget-object v5, v1, Lcom/taobao/accs/f/q$a;->c:Lcom/taobao/accs/f/q;

    invoke-static {v5}, Lcom/taobao/accs/f/q;->d(Lcom/taobao/accs/f/q;)Lcom/taobao/accs/ut/monitor/SessionMonitor;

    move-result-object v5

    if-eqz v5, :cond_15

    .line 879
    iget-object v5, v1, Lcom/taobao/accs/f/q$a;->c:Lcom/taobao/accs/f/q;

    invoke-static {v5}, Lcom/taobao/accs/f/q;->d(Lcom/taobao/accs/f/q;)Lcom/taobao/accs/ut/monitor/SessionMonitor;

    move-result-object v5

    const-string v6, "send fail"

    invoke-virtual {v5, v6}, Lcom/taobao/accs/ut/monitor/SessionMonitor;->setCloseReason(Ljava/lang/String;)V

    .line 881
    :cond_15
    iget-object v5, v1, Lcom/taobao/accs/f/q$a;->c:Lcom/taobao/accs/f/q;

    invoke-static {v5}, Lcom/taobao/accs/f/q;->a(Lcom/taobao/accs/f/q;)Ljava/util/LinkedList;

    move-result-object v5

    monitor-enter v5
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_3

    .line 882
    :try_start_10
    iget-object v6, v1, Lcom/taobao/accs/f/q$a;->c:Lcom/taobao/accs/f/q;

    invoke-static {v6}, Lcom/taobao/accs/f/q;->a(Lcom/taobao/accs/f/q;)Ljava/util/LinkedList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/LinkedList;->size()I

    move-result v6

    sub-int/2addr v6, v7

    :goto_9
    if-ltz v6, :cond_18

    .line 883
    iget-object v7, v1, Lcom/taobao/accs/f/q$a;->c:Lcom/taobao/accs/f/q;

    invoke-static {v7}, Lcom/taobao/accs/f/q;->a(Lcom/taobao/accs/f/q;)Ljava/util/LinkedList;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/taobao/accs/data/Message;

    if-eqz v7, :cond_17

    .line 884
    iget-object v8, v7, Lcom/taobao/accs/data/Message;->t:Ljava/lang/Integer;

    if-eqz v8, :cond_17

    iget-object v8, v7, Lcom/taobao/accs/data/Message;->t:Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/16 v9, 0x64

    if-eq v8, v9, :cond_16

    iget-object v8, v7, Lcom/taobao/accs/data/Message;->t:Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-ne v8, v3, :cond_17

    .line 886
    :cond_16
    iget-object v8, v1, Lcom/taobao/accs/f/q$a;->c:Lcom/taobao/accs/f/q;

    iget-object v8, v8, Lcom/taobao/accs/f/q;->e:Lcom/taobao/accs/data/b;

    const/4 v9, -0x1

    invoke-virtual {v8, v7, v9}, Lcom/taobao/accs/data/b;->a(Lcom/taobao/accs/data/Message;I)V

    .line 887
    iget-object v7, v1, Lcom/taobao/accs/f/q$a;->c:Lcom/taobao/accs/f/q;

    invoke-static {v7}, Lcom/taobao/accs/f/q;->a(Lcom/taobao/accs/f/q;)Ljava/util/LinkedList;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    :cond_17
    add-int/lit8 v6, v6, -0x1

    goto :goto_9

    .line 890
    :cond_18
    iget-object v3, v1, Lcom/taobao/accs/f/q$a;->d:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v1, Lcom/taobao/accs/f/q$a;->c:Lcom/taobao/accs/f/q;

    iget v7, v7, Lcom/taobao/accs/f/q;->c:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " network disconnected, wait"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v4, [Ljava/lang/Object;

    invoke-static {v3, v6, v7}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 891
    iget-object v3, v1, Lcom/taobao/accs/f/q$a;->c:Lcom/taobao/accs/f/q;

    invoke-static {v3}, Lcom/taobao/accs/f/q;->a(Lcom/taobao/accs/f/q;)Ljava/util/LinkedList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V

    .line 892
    monitor-exit v5

    goto/16 :goto_0

    :catchall_5
    move-exception v0

    move-object v3, v0

    monitor-exit v5
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_5

    :try_start_11
    throw v3

    :catch_3
    move-exception v0

    move-object v3, v0

    goto :goto_a

    .line 894
    :cond_19
    iget-object v3, v1, Lcom/taobao/accs/f/q$a;->d:Ljava/lang/String;

    const-string v5, "send succ, remove it"

    new-array v6, v4, [Ljava/lang/Object;

    invoke-static {v3, v5, v6}, Lcom/taobao/accs/utl/ALog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 895
    iget-object v3, v1, Lcom/taobao/accs/f/q$a;->c:Lcom/taobao/accs/f/q;

    invoke-static {v3}, Lcom/taobao/accs/f/q;->a(Lcom/taobao/accs/f/q;)Ljava/util/LinkedList;

    move-result-object v3

    monitor-enter v3
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_3

    .line 896
    :try_start_12
    iget-object v5, v1, Lcom/taobao/accs/f/q$a;->c:Lcom/taobao/accs/f/q;

    invoke-static {v5}, Lcom/taobao/accs/f/q;->a(Lcom/taobao/accs/f/q;)Ljava/util/LinkedList;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 897
    monitor-exit v3

    goto/16 :goto_0

    :catchall_6
    move-exception v0

    move-object v5, v0

    monitor-exit v3
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_6

    :try_start_13
    throw v5
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_13} :catch_3

    .line 900
    :goto_a
    iget-object v5, v1, Lcom/taobao/accs/f/q$a;->d:Ljava/lang/String;

    const-string v6, " run finally error"

    new-array v7, v4, [Ljava/lang/Object;

    invoke-static {v5, v6, v3, v7}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :catchall_7
    move-exception v0

    :goto_b
    move-object v5, v0

    :goto_c
    if-nez v6, :cond_1f

    .line 877
    :try_start_14
    iget-object v2, v1, Lcom/taobao/accs/f/q$a;->c:Lcom/taobao/accs/f/q;

    invoke-virtual {v2}, Lcom/taobao/accs/f/q;->l()V

    .line 878
    iget-object v2, v1, Lcom/taobao/accs/f/q$a;->c:Lcom/taobao/accs/f/q;

    invoke-static {v2}, Lcom/taobao/accs/f/q;->d(Lcom/taobao/accs/f/q;)Lcom/taobao/accs/ut/monitor/SessionMonitor;

    move-result-object v2

    if-eqz v2, :cond_1a

    .line 879
    iget-object v2, v1, Lcom/taobao/accs/f/q$a;->c:Lcom/taobao/accs/f/q;

    invoke-static {v2}, Lcom/taobao/accs/f/q;->d(Lcom/taobao/accs/f/q;)Lcom/taobao/accs/ut/monitor/SessionMonitor;

    move-result-object v2

    const-string v6, "send fail"

    invoke-virtual {v2, v6}, Lcom/taobao/accs/ut/monitor/SessionMonitor;->setCloseReason(Ljava/lang/String;)V

    .line 881
    :cond_1a
    iget-object v2, v1, Lcom/taobao/accs/f/q$a;->c:Lcom/taobao/accs/f/q;

    invoke-static {v2}, Lcom/taobao/accs/f/q;->a(Lcom/taobao/accs/f/q;)Ljava/util/LinkedList;

    move-result-object v2

    monitor-enter v2
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_14} :catch_4

    .line 882
    :try_start_15
    iget-object v6, v1, Lcom/taobao/accs/f/q$a;->c:Lcom/taobao/accs/f/q;

    invoke-static {v6}, Lcom/taobao/accs/f/q;->a(Lcom/taobao/accs/f/q;)Ljava/util/LinkedList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/LinkedList;->size()I

    move-result v6

    sub-int/2addr v6, v7

    :goto_d
    if-ltz v6, :cond_1e

    .line 883
    iget-object v7, v1, Lcom/taobao/accs/f/q$a;->c:Lcom/taobao/accs/f/q;

    invoke-static {v7}, Lcom/taobao/accs/f/q;->a(Lcom/taobao/accs/f/q;)Ljava/util/LinkedList;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/taobao/accs/data/Message;

    if-eqz v7, :cond_1c

    .line 884
    iget-object v8, v7, Lcom/taobao/accs/data/Message;->t:Ljava/lang/Integer;

    if-eqz v8, :cond_1c

    iget-object v8, v7, Lcom/taobao/accs/data/Message;->t:Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/16 v9, 0x64

    if-eq v8, v9, :cond_1b

    iget-object v8, v7, Lcom/taobao/accs/data/Message;->t:Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-ne v8, v3, :cond_1d

    .line 886
    :cond_1b
    iget-object v8, v1, Lcom/taobao/accs/f/q$a;->c:Lcom/taobao/accs/f/q;

    iget-object v8, v8, Lcom/taobao/accs/f/q;->e:Lcom/taobao/accs/data/b;

    const/4 v10, -0x1

    invoke-virtual {v8, v7, v10}, Lcom/taobao/accs/data/b;->a(Lcom/taobao/accs/data/Message;I)V

    .line 887
    iget-object v7, v1, Lcom/taobao/accs/f/q$a;->c:Lcom/taobao/accs/f/q;

    invoke-static {v7}, Lcom/taobao/accs/f/q;->a(Lcom/taobao/accs/f/q;)Ljava/util/LinkedList;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    goto :goto_e

    :cond_1c
    const/16 v9, 0x64

    :cond_1d
    const/4 v10, -0x1

    :goto_e
    add-int/lit8 v6, v6, -0x1

    goto :goto_d

    .line 890
    :cond_1e
    iget-object v3, v1, Lcom/taobao/accs/f/q$a;->d:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v1, Lcom/taobao/accs/f/q$a;->c:Lcom/taobao/accs/f/q;

    iget v7, v7, Lcom/taobao/accs/f/q;->c:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " network disconnected, wait"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v4, [Ljava/lang/Object;

    invoke-static {v3, v6, v7}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 891
    iget-object v3, v1, Lcom/taobao/accs/f/q$a;->c:Lcom/taobao/accs/f/q;

    invoke-static {v3}, Lcom/taobao/accs/f/q;->a(Lcom/taobao/accs/f/q;)Ljava/util/LinkedList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V

    .line 892
    monitor-exit v2

    goto :goto_10

    :catchall_8
    move-exception v0

    move-object v3, v0

    monitor-exit v2
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_8

    :try_start_16
    throw v3

    :catch_4
    move-exception v0

    move-object v2, v0

    goto :goto_f

    .line 894
    :cond_1f
    iget-object v3, v1, Lcom/taobao/accs/f/q$a;->d:Ljava/lang/String;

    const-string v6, "send succ, remove it"

    new-array v7, v4, [Ljava/lang/Object;

    invoke-static {v3, v6, v7}, Lcom/taobao/accs/utl/ALog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 895
    iget-object v3, v1, Lcom/taobao/accs/f/q$a;->c:Lcom/taobao/accs/f/q;

    invoke-static {v3}, Lcom/taobao/accs/f/q;->a(Lcom/taobao/accs/f/q;)Ljava/util/LinkedList;

    move-result-object v3

    monitor-enter v3
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_16} :catch_4

    .line 896
    :try_start_17
    iget-object v6, v1, Lcom/taobao/accs/f/q$a;->c:Lcom/taobao/accs/f/q;

    invoke-static {v6}, Lcom/taobao/accs/f/q;->a(Lcom/taobao/accs/f/q;)Ljava/util/LinkedList;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 897
    monitor-exit v3

    goto :goto_10

    :catchall_9
    move-exception v0

    move-object v2, v0

    monitor-exit v3
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_9

    :try_start_18
    throw v2
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_18} :catch_4

    .line 900
    :goto_f
    iget-object v3, v1, Lcom/taobao/accs/f/q$a;->d:Ljava/lang/String;

    const-string v6, " run finally error"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v6, v2, v4}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 901
    :goto_10
    throw v5

    :catchall_a
    move-exception v0

    move-object v2, v0

    .line 787
    :try_start_19
    monitor-exit v3
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_a

    throw v2

    .line 906
    :cond_20
    :goto_11
    iget-object v2, v1, Lcom/taobao/accs/f/q$a;->c:Lcom/taobao/accs/f/q;

    invoke-virtual {v2}, Lcom/taobao/accs/f/q;->l()V

    return-void
.end method
