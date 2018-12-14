.class public Lcom/taobao/accs/data/b;
.super Ljava/lang/Object;
.source "Taobao"


# instance fields
.field public a:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;>;"
        }
    .end annotation
.end field

.field public b:I

.field protected c:Lcom/taobao/accs/ut/monitor/TrafficsMonitor;

.field public d:Lcom/taobao/accs/flowcontrol/FlowControl;

.field public e:Lcom/taobao/accs/b/a;

.field public f:Ljava/lang/String;

.field private g:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Lcom/taobao/accs/data/Message;",
            ">;"
        }
    .end annotation
.end field

.field private h:Z

.field private i:Landroid/content/Context;

.field private j:Lcom/taobao/accs/data/Message;

.field private k:Lcom/taobao/accs/f/c;

.field private l:Ljava/lang/String;

.field private m:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private n:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/taobao/accs/f/c;)V
    .locals 1

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/taobao/accs/data/b;->g:Ljava/util/concurrent/ConcurrentMap;

    .line 65
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/taobao/accs/data/b;->a:Ljava/util/concurrent/ConcurrentMap;

    const/4 v0, 0x0

    .line 67
    iput-boolean v0, p0, Lcom/taobao/accs/data/b;->h:Z

    const-string v0, ""

    .line 85
    iput-object v0, p0, Lcom/taobao/accs/data/b;->f:Ljava/lang/String;

    const-string v0, "MsgRecv_"

    .line 87
    iput-object v0, p0, Lcom/taobao/accs/data/b;->l:Ljava/lang/String;

    .line 89
    new-instance v0, Lcom/taobao/accs/data/a;

    invoke-direct {v0, p0}, Lcom/taobao/accs/data/a;-><init>(Lcom/taobao/accs/data/b;)V

    iput-object v0, p0, Lcom/taobao/accs/data/b;->m:Ljava/util/LinkedHashMap;

    .line 932
    new-instance v0, Lcom/taobao/accs/data/d;

    invoke-direct {v0, p0}, Lcom/taobao/accs/data/d;-><init>(Lcom/taobao/accs/data/b;)V

    iput-object v0, p0, Lcom/taobao/accs/data/b;->n:Ljava/lang/Runnable;

    .line 98
    iput-object p1, p0, Lcom/taobao/accs/data/b;->i:Landroid/content/Context;

    .line 99
    iput-object p2, p0, Lcom/taobao/accs/data/b;->k:Lcom/taobao/accs/f/c;

    .line 100
    new-instance p1, Lcom/taobao/accs/ut/monitor/TrafficsMonitor;

    iget-object v0, p0, Lcom/taobao/accs/data/b;->i:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/taobao/accs/ut/monitor/TrafficsMonitor;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/taobao/accs/data/b;->c:Lcom/taobao/accs/ut/monitor/TrafficsMonitor;

    .line 101
    new-instance p1, Lcom/taobao/accs/flowcontrol/FlowControl;

    iget-object v0, p0, Lcom/taobao/accs/data/b;->i:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/taobao/accs/flowcontrol/FlowControl;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/taobao/accs/data/b;->d:Lcom/taobao/accs/flowcontrol/FlowControl;

    .line 102
    new-instance p1, Lcom/taobao/accs/b/a;

    iget-object v0, p0, Lcom/taobao/accs/data/b;->i:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/taobao/accs/b/a;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/taobao/accs/data/b;->e:Lcom/taobao/accs/b/a;

    if-nez p2, :cond_0

    .line 103
    iget-object p1, p0, Lcom/taobao/accs/data/b;->l:Ljava/lang/String;

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/taobao/accs/data/b;->l:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p2, Lcom/taobao/accs/f/c;->m:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/taobao/accs/data/b;->l:Ljava/lang/String;

    .line 104
    invoke-direct {p0}, Lcom/taobao/accs/data/b;->e()V

    .line 105
    invoke-virtual {p0}, Lcom/taobao/accs/data/b;->d()V

    return-void
.end method

.method private a(Ljava/util/Map;Landroid/content/Intent;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/Intent;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    const-string v0, "ext_header"

    .line 830
    check-cast p1, Ljava/util/HashMap;

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method private b(Lcom/taobao/accs/data/Message;I)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    .line 864
    :cond_0
    iget-object v0, p0, Lcom/taobao/accs/data/b;->i:Landroid/content/Context;

    invoke-static {v0}, Lcom/taobao/accs/utl/b;->q(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 865
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xc8

    const/4 v3, 0x1

    if-eq p2, v2, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    .line 870
    :goto_0
    iget-object v4, p1, Lcom/taobao/accs/data/Message;->t:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eq v4, v3, :cond_3

    const/4 v3, 0x3

    if-eq v4, v3, :cond_2

    goto :goto_1

    .line 880
    :cond_2
    new-instance v3, Lcom/taobao/accs/ut/a/b;

    invoke-direct {v3}, Lcom/taobao/accs/ut/a/b;-><init>()V

    .line 881
    iput-object v0, v3, Lcom/taobao/accs/ut/a/b;->a:Ljava/lang/String;

    .line 882
    iput-object v1, v3, Lcom/taobao/accs/ut/a/b;->b:Ljava/lang/String;

    .line 883
    iput-boolean v2, v3, Lcom/taobao/accs/ut/a/b;->c:Z

    .line 884
    iget-object p1, p1, Lcom/taobao/accs/data/Message;->E:Ljava/lang/String;

    iput-object p1, v3, Lcom/taobao/accs/ut/a/b;->e:Ljava/lang/String;

    .line 885
    invoke-virtual {v3, p2}, Lcom/taobao/accs/ut/a/b;->a(I)V

    .line 886
    invoke-virtual {v3}, Lcom/taobao/accs/ut/a/b;->a()V

    goto :goto_1

    .line 872
    :cond_3
    new-instance p1, Lcom/taobao/accs/ut/a/a;

    invoke-direct {p1}, Lcom/taobao/accs/ut/a/a;-><init>()V

    .line 873
    iput-object v0, p1, Lcom/taobao/accs/ut/a/a;->a:Ljava/lang/String;

    .line 874
    iput-object v1, p1, Lcom/taobao/accs/ut/a/a;->b:Ljava/lang/String;

    .line 875
    iput-boolean v2, p1, Lcom/taobao/accs/ut/a/a;->c:Z

    .line 876
    invoke-virtual {p1, p2}, Lcom/taobao/accs/ut/a/a;->a(I)V

    .line 877
    invoke-virtual {p1}, Lcom/taobao/accs/ut/a/a;->a()V

    :goto_1
    return-void
.end method

.method private b(I)Z
    .locals 1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    const/16 v0, -0x9

    if-eq p1, v0, :cond_1

    const/16 v0, -0xa

    if-eq p1, v0, :cond_1

    const/16 v0, -0xb

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method private c(Lcom/taobao/accs/data/Message;)Landroid/content/Intent;
    .locals 3

    .line 814
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.taobao.accs.intent.action.RECEIVE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 815
    iget-object v1, p1, Lcom/taobao/accs/data/Message;->s:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "command"

    .line 816
    iget-object v2, p1, Lcom/taobao/accs/data/Message;->t:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v1, "serviceId"

    .line 817
    iget-object v2, p1, Lcom/taobao/accs/data/Message;->F:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "userInfo"

    .line 818
    iget-object v2, p1, Lcom/taobao/accs/data/Message;->E:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 819
    iget-object v1, p1, Lcom/taobao/accs/data/Message;->t:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/taobao/accs/data/Message;->t:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x64

    if-ne v1, v2, :cond_0

    const-string v1, "dataId"

    .line 820
    iget-object p1, p1, Lcom/taobao/accs/data/Message;->M:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    return-object v0
.end method

.method private e()V
    .locals 5

    .line 784
    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/taobao/accs/data/b;->i:Landroid/content/Context;

    const-string v2, "accs"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "message"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/taobao/accs/data/b;->k:Lcom/taobao/accs/f/c;

    invoke-virtual {v4}, Lcom/taobao/accs/f/c;->i()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 785
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 786
    iget-object v0, p0, Lcom/taobao/accs/data/b;->l:Ljava/lang/String;

    const-string v1, "message file not exist"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 789
    :cond_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 791
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 792
    iget-object v2, p0, Lcom/taobao/accs/data/b;->m:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v0, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 794
    :cond_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 796
    invoke-static {v0}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/taobao/accs/data/Message;
    .locals 1

    .line 753
    iget-object v0, p0, Lcom/taobao/accs/data/b;->g:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/taobao/accs/data/Message;

    return-object p1
.end method

.method public a()V
    .locals 3

    .line 659
    iget-object v0, p0, Lcom/taobao/accs/data/b;->l:Ljava/lang/String;

    const-string v1, "onSendPing"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 660
    const-class v0, Lcom/taobao/accs/data/b;

    monitor-enter v0

    const/4 v1, 0x1

    .line 661
    :try_start_0
    iput-boolean v1, p0, Lcom/taobao/accs/data/b;->h:Z

    .line 662
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public a(I)V
    .locals 5

    const/4 v0, 0x0

    .line 691
    iput-boolean v0, p0, Lcom/taobao/accs/data/b;->h:Z

    .line 692
    iget-object v1, p0, Lcom/taobao/accs/data/b;->g:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1}, Ljava/util/concurrent/ConcurrentMap;->keySet()Ljava/util/Set;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 693
    array-length v2, v1

    if-lez v2, :cond_1

    .line 694
    iget-object v2, p0, Lcom/taobao/accs/data/b;->l:Ljava/lang/String;

    const-string v3, "onNetworkFail"

    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/taobao/accs/utl/ALog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 695
    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    .line 696
    iget-object v4, p0, Lcom/taobao/accs/data/b;->g:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v4, v3}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/taobao/accs/data/Message;

    if-eqz v3, :cond_0

    .line 698
    invoke-virtual {p0, v3, p1}, Lcom/taobao/accs/data/b;->a(Lcom/taobao/accs/data/Message;I)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public a(Lcom/taobao/accs/data/Message;)V
    .locals 8

    .line 677
    iget-object v0, p0, Lcom/taobao/accs/data/b;->j:Lcom/taobao/accs/data/Message;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/taobao/accs/data/Message;->M:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/taobao/accs/data/Message;->F:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/taobao/accs/data/b;->j:Lcom/taobao/accs/data/Message;

    iget-object v0, v0, Lcom/taobao/accs/data/Message;->M:Ljava/lang/String;

    iget-object v1, p1, Lcom/taobao/accs/data/Message;->M:Ljava/lang/String;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/taobao/accs/data/b;->j:Lcom/taobao/accs/data/Message;

    iget-object v0, v0, Lcom/taobao/accs/data/Message;->F:Ljava/lang/String;

    iget-object v1, p1, Lcom/taobao/accs/data/Message;->F:Ljava/lang/String;

    if-ne v0, v1, :cond_0

    .line 682
    invoke-static {}, Lcom/taobao/accs/utl/a;->a()Lcom/taobao/accs/utl/a;

    move-result-object v2

    const v3, 0x101d1

    const-string v4, "SEND_REPEAT"

    iget-object v5, p1, Lcom/taobao/accs/data/Message;->F:Ljava/lang/String;

    iget-object v6, p1, Lcom/taobao/accs/data/Message;->M:Ljava/lang/String;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual/range {v2 .. v7}, Lcom/taobao/accs/utl/a;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 684
    :cond_0
    invoke-virtual {p1}, Lcom/taobao/accs/data/Message;->a()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    invoke-virtual {p1}, Lcom/taobao/accs/data/Message;->a()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    iget-boolean v0, p1, Lcom/taobao/accs/data/Message;->c:Z

    if-eqz v0, :cond_1

    goto :goto_0

    .line 687
    :cond_1
    iget-object v0, p0, Lcom/taobao/accs/data/b;->g:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {p1}, Lcom/taobao/accs/data/Message;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_2
    :goto_0
    return-void
.end method

.method public a(Lcom/taobao/accs/data/Message;I)V
    .locals 6

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    .line 507
    invoke-virtual/range {v0 .. v5}, Lcom/taobao/accs/data/b;->a(Lcom/taobao/accs/data/Message;ILcom/taobao/accs/data/Message$ReqType;[BLjava/util/Map;)V

    return-void
.end method

.method public a(Lcom/taobao/accs/data/Message;ILcom/taobao/accs/data/Message$ReqType;[BLjava/util/Map;)V
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taobao/accs/data/Message;",
            "I",
            "Lcom/taobao/accs/data/Message$ReqType;",
            "[B",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 515
    iget-object v2, v1, Lcom/taobao/accs/data/Message;->t:Ljava/lang/Integer;

    const/4 v3, 0x0

    if-eqz v2, :cond_16

    invoke-virtual/range {p1 .. p1}, Lcom/taobao/accs/data/Message;->a()I

    move-result v2

    if-ltz v2, :cond_16

    invoke-virtual/range {p1 .. p1}, Lcom/taobao/accs/data/Message;->a()I

    move-result v2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_0

    goto/16 :goto_8

    .line 521
    :cond_0
    iget-object v2, v1, Lcom/taobao/accs/data/Message;->M:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 522
    iget-object v2, v0, Lcom/taobao/accs/data/b;->a:Ljava/util/concurrent/ConcurrentMap;

    iget-object v5, v1, Lcom/taobao/accs/data/Message;->M:Ljava/lang/String;

    invoke-interface {v2, v5}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 526
    :cond_1
    iget-object v2, v0, Lcom/taobao/accs/data/b;->e:Lcom/taobao/accs/b/a;

    iget-object v5, v1, Lcom/taobao/accs/data/Message;->f:Ljava/net/URL;

    move-object/from16 v6, p5

    invoke-virtual {v2, v5, v6}, Lcom/taobao/accs/b/a;->a(Ljava/net/URL;Ljava/util/Map;)Z

    move-result v2

    const/4 v5, 0x0

    if-eqz v2, :cond_2

    const v2, 0x11186

    move-object v6, v5

    move-object v7, v6

    move-object v8, v7

    goto :goto_0

    :cond_2
    move/from16 v2, p2

    move-object/from16 v8, p3

    move-object/from16 v7, p4

    .line 533
    :goto_0
    iget-object v9, v0, Lcom/taobao/accs/data/b;->d:Lcom/taobao/accs/flowcontrol/FlowControl;

    iget-object v10, v1, Lcom/taobao/accs/data/Message;->F:Ljava/lang/String;

    invoke-virtual {v9, v6, v10}, Lcom/taobao/accs/flowcontrol/FlowControl;->a(Ljava/util/Map;Ljava/lang/String;)I

    move-result v9

    const/4 v10, 0x3

    if-eqz v9, :cond_5

    if-ne v9, v4, :cond_3

    const v2, 0x11185

    goto :goto_1

    :cond_3
    if-ne v9, v10, :cond_4

    const v2, 0x11187

    goto :goto_1

    :cond_4
    const v2, 0x11184

    :goto_1
    move v14, v2

    move-object v6, v5

    move-object v8, v6

    move-object v15, v8

    goto :goto_2

    :cond_5
    move v14, v2

    move-object v15, v7

    .line 546
    :goto_2
    sget-object v2, Lcom/taobao/accs/utl/ALog$Level;->D:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v2}, Lcom/taobao/accs/utl/ALog;->a(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 547
    iget-object v2, v0, Lcom/taobao/accs/data/b;->l:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onResult command:"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/taobao/accs/data/Message;->t:Ljava/lang/Integer;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " erorcode:"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v7, v3, [Ljava/lang/Object;

    invoke-static {v2, v4, v7}, Lcom/taobao/accs/utl/ALog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 550
    :cond_6
    iget-object v2, v1, Lcom/taobao/accs/data/Message;->t:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v4, 0x66

    if-ne v2, v4, :cond_7

    return-void

    .line 554
    :cond_7
    iget-object v2, v1, Lcom/taobao/accs/data/Message;->t:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v4, 0x69

    if-ne v2, v4, :cond_9

    .line 555
    iget-object v2, v0, Lcom/taobao/accs/data/b;->i:Landroid/content/Context;

    invoke-static {v2}, Lcom/taobao/accs/client/a;->a(Landroid/content/Context;)Lcom/taobao/accs/client/a;

    move-result-object v2

    const-string v4, "accs_election"

    invoke-virtual {v2, v4}, Lcom/taobao/accs/client/a;->d(Ljava/lang/String;)Lcom/taobao/accs/base/a;

    move-result-object v11

    if-eqz v11, :cond_8

    const-string v12, "accs_election"

    .line 557
    iget-object v13, v1, Lcom/taobao/accs/data/Message;->M:Ljava/lang/String;

    const/16 v16, 0x0

    invoke-virtual/range {v11 .. v16}, Lcom/taobao/accs/base/a;->a(Ljava/lang/String;Ljava/lang/String;I[BLcom/taobao/accs/base/TaoBaseService$ExtraInfo;)V

    goto :goto_3

    .line 559
    :cond_8
    iget-object v1, v0, Lcom/taobao/accs/data/b;->l:Ljava/lang/String;

    const-string v2, "onResult election listener null"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_3
    return-void

    .line 563
    :cond_9
    iget-boolean v2, v1, Lcom/taobao/accs/data/Message;->e:Z

    const/16 v4, 0xc8

    const/4 v7, 0x1

    const-wide/16 v11, 0x0

    if-nez v2, :cond_e

    .line 564
    invoke-direct {v0, v14}, Lcom/taobao/accs/data/b;->b(I)Z

    move-result v2

    if-eqz v2, :cond_a

    iget-object v2, v1, Lcom/taobao/accs/data/Message;->t:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v9, 0x64

    if-eq v2, v9, :cond_a

    iget v2, v1, Lcom/taobao/accs/data/Message;->P:I

    sget v9, Lcom/taobao/accs/data/Message;->a:I

    if-gt v2, v9, :cond_a

    .line 567
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, v1, Lcom/taobao/accs/data/Message;->R:J

    .line 568
    iget v2, v1, Lcom/taobao/accs/data/Message;->P:I

    add-int/2addr v2, v7

    iput v2, v1, Lcom/taobao/accs/data/Message;->P:I

    .line 569
    iget-object v2, v0, Lcom/taobao/accs/data/b;->k:Lcom/taobao/accs/f/c;

    invoke-virtual {v2, v1, v7}, Lcom/taobao/accs/f/c;->b(Lcom/taobao/accs/data/Message;Z)V

    goto/16 :goto_4

    .line 571
    :cond_a
    iget-object v2, v0, Lcom/taobao/accs/data/b;->l:Ljava/lang/String;

    const-string v9, "prepare send broadcast"

    new-array v13, v3, [Ljava/lang/Object;

    invoke-static {v2, v9, v13}, Lcom/taobao/accs/utl/ALog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 572
    invoke-direct/range {p0 .. p1}, Lcom/taobao/accs/data/b;->c(Lcom/taobao/accs/data/Message;)Landroid/content/Intent;

    move-result-object v2

    const-string v9, "errorCode"

    .line 573
    invoke-virtual {v2, v9, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 574
    iget-short v9, v1, Lcom/taobao/accs/data/Message;->k:S

    shr-int/lit8 v9, v9, 0xd

    and-int/2addr v9, v10

    invoke-static {v9}, Lcom/taobao/accs/data/Message$ReqType;->valueOf(I)Lcom/taobao/accs/data/Message$ReqType;

    move-result-object v9

    .line 576
    sget-object v10, Lcom/taobao/accs/data/Message$ReqType;->RES:Lcom/taobao/accs/data/Message$ReqType;

    if-eq v8, v10, :cond_b

    sget-object v8, Lcom/taobao/accs/data/Message$ReqType;->REQ:Lcom/taobao/accs/data/Message$ReqType;

    if-ne v9, v8, :cond_c

    :cond_b
    const-string v8, "send_type"

    const-string v9, "res"

    .line 577
    invoke-virtual {v2, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_c
    if-ne v14, v4, :cond_d

    const-string v8, "data"

    .line 580
    invoke-virtual {v2, v8, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    :cond_d
    const-string v8, "appKey"

    .line 582
    iget-object v9, v0, Lcom/taobao/accs/data/b;->k:Lcom/taobao/accs/f/c;

    iget-object v9, v9, Lcom/taobao/accs/f/c;->b:Ljava/lang/String;

    invoke-virtual {v2, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v8, "configTag"

    .line 583
    iget-object v9, v0, Lcom/taobao/accs/data/b;->k:Lcom/taobao/accs/f/c;

    iget-object v9, v9, Lcom/taobao/accs/f/c;->m:Ljava/lang/String;

    invoke-virtual {v2, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 585
    invoke-direct {v0, v6, v2}, Lcom/taobao/accs/data/b;->a(Ljava/util/Map;Landroid/content/Intent;)V

    .line 586
    iget-object v6, v0, Lcom/taobao/accs/data/b;->i:Landroid/content/Context;

    invoke-static {v6, v2}, Lcom/taobao/accs/data/e;->a(Landroid/content/Context;Landroid/content/Intent;)V

    .line 590
    iget-object v2, v1, Lcom/taobao/accs/data/Message;->F:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_f

    .line 591
    invoke-static {}, Lcom/taobao/accs/utl/a;->a()Lcom/taobao/accs/utl/a;

    move-result-object v15

    const v16, 0x101d1

    const-string v17, "MsgToBuss0"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "commandId="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/taobao/accs/data/Message;->t:Ljava/lang/Integer;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "serviceId="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/taobao/accs/data/Message;->F:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " errorCode="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " dataId="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/taobao/accs/data/Message;->q:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    const/16 v2, 0xdd

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-virtual/range {v15 .. v20}, Lcom/taobao/accs/utl/a;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v2, "accs"

    const-string v6, "to_buss"

    .line 592
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "1commandId="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v1, Lcom/taobao/accs/data/Message;->t:Ljava/lang/Integer;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, "serviceId="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v1, Lcom/taobao/accs/data/Message;->F:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v6, v8, v11, v12}, Lcom/taobao/accs/utl/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    goto :goto_4

    .line 596
    :cond_e
    iget-object v2, v0, Lcom/taobao/accs/data/b;->l:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v8, v0, Lcom/taobao/accs/data/b;->b:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " message is cancel! command:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/taobao/accs/data/Message;->t:Ljava/lang/Integer;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v8, v3, [Ljava/lang/Object;

    invoke-static {v2, v6, v8}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 615
    :cond_f
    :goto_4
    invoke-virtual/range {p1 .. p1}, Lcom/taobao/accs/data/Message;->e()Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;

    move-result-object v2

    if-eqz v2, :cond_15

    .line 617
    invoke-virtual {v2}, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->onToBizDate()V

    .line 618
    iget-object v6, v1, Lcom/taobao/accs/data/Message;->f:Ljava/net/URL;

    if-nez v6, :cond_10

    goto :goto_5

    :cond_10
    iget-object v5, v1, Lcom/taobao/accs/data/Message;->f:Ljava/net/URL;

    invoke-virtual {v5}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_5
    if-ne v14, v4, :cond_12

    .line 620
    invoke-virtual {v2, v7}, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->setRet(Z)V

    .line 621
    iget v2, v1, Lcom/taobao/accs/data/Message;->P:I

    if-lez v2, :cond_11

    const-string v2, "accs"

    const-string v3, "resend"

    const-string v4, "succ"

    .line 622
    invoke-static {v2, v3, v4, v11, v12}, Lcom/taobao/accs/utl/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    const-string v2, "accs"

    const-string v3, "resend"

    .line 623
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "succ_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v1, Lcom/taobao/accs/data/Message;->P:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4, v11, v12}, Lcom/taobao/accs/utl/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    goto :goto_7

    :cond_11
    const-string v2, "accs"

    const-string v3, "Request_Success_Rate"

    .line 625
    invoke-static {v2, v3, v5}, Lcom/taobao/accs/utl/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    .line 628
    :cond_12
    iget v4, v1, Lcom/taobao/accs/data/Message;->P:I

    if-lez v4, :cond_13

    const-string v4, "accs"

    const-string v5, "resend"

    .line 629
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "fail\uff3f"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6, v11, v12}, Lcom/taobao/accs/utl/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    const-string v4, "accs"

    const-string v5, "resend"

    const-string v6, "fail"

    .line 630
    invoke-static {v4, v5, v6, v11, v12}, Lcom/taobao/accs/utl/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    goto :goto_6

    :cond_13
    const/16 v4, -0xd

    if-eq v14, v4, :cond_14

    const-string v4, "accs"

    const-string v6, "Request_Success_Rate"

    .line 633
    invoke-static {v14}, Lcom/taobao/accs/utl/b;->a(I)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget v9, v0, Lcom/taobao/accs/data/b;->b:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v9, v1, Lcom/taobao/accs/data/Message;->F:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v1, Lcom/taobao/accs/data/Message;->Q:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v6, v5, v7, v8}, Lcom/taobao/accs/utl/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 637
    :cond_14
    :goto_6
    invoke-virtual {v2, v3}, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->setRet(Z)V

    .line 638
    invoke-virtual {v2, v14}, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->setFailReason(I)V

    .line 641
    :goto_7
    invoke-static {}, Lanet/channel/b/a;->a()Lanet/channel/b/b;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/taobao/accs/data/Message;->e()Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;

    move-result-object v3

    invoke-interface {v2, v3}, Lanet/channel/b/b;->a(Lanet/channel/statist/StatObject;)V

    .line 646
    :cond_15
    invoke-direct {v0, v1, v14}, Lcom/taobao/accs/data/b;->b(Lcom/taobao/accs/data/Message;I)V

    return-void

    .line 516
    :cond_16
    :goto_8
    iget-object v1, v0, Lcom/taobao/accs/data/b;->l:Ljava/lang/String;

    const-string v2, "onError, skip ping/ack"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/taobao/accs/utl/ALog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public a(Lcom/taobao/accs/ut/monitor/TrafficsMonitor$a;)V
    .locals 3

    .line 919
    :try_start_0
    invoke-static {}, Lcom/taobao/accs/common/a;->a()Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v0

    new-instance v1, Lcom/taobao/accs/data/c;

    invoke-direct {v1, p0, p1}, Lcom/taobao/accs/data/c;-><init>(Lcom/taobao/accs/data/b;Lcom/taobao/accs/ut/monitor/TrafficsMonitor$a;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 928
    iget-object v0, p0, Lcom/taobao/accs/data/b;->l:Ljava/lang/String;

    const-string v1, "addTrafficsInfo"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, p1, v2}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public b(Ljava/lang/String;)Lcom/taobao/accs/data/Message;
    .locals 1

    .line 758
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 759
    iget-object v0, p0, Lcom/taobao/accs/data/b;->g:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/taobao/accs/data/Message;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public b(Lcom/taobao/accs/data/Message;)V
    .locals 8

    .line 705
    iget-object v0, p0, Lcom/taobao/accs/data/b;->g:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->keySet()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/taobao/accs/data/b;->g:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 707
    iget-object v0, p0, Lcom/taobao/accs/data/b;->g:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 708
    iget-object v2, p0, Lcom/taobao/accs/data/b;->g:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, v1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/accs/data/Message;

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_4

    .line 709
    iget-object v4, v1, Lcom/taobao/accs/data/Message;->t:Ljava/lang/Integer;

    if-eqz v4, :cond_4

    invoke-virtual {v1}, Lcom/taobao/accs/data/Message;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/taobao/accs/data/Message;->f()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 712
    iget-object v4, p1, Lcom/taobao/accs/data/Message;->t:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    goto :goto_1

    .line 729
    :pswitch_0
    iget-object v4, v1, Lcom/taobao/accs/data/Message;->t:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x5

    if-eq v4, v5, :cond_1

    iget-object v4, v1, Lcom/taobao/accs/data/Message;->t:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x6

    if-ne v4, v5, :cond_4

    .line 731
    :cond_1
    iput-boolean v3, v1, Lcom/taobao/accs/data/Message;->e:Z

    goto :goto_1

    .line 722
    :pswitch_1
    iget-object v4, v1, Lcom/taobao/accs/data/Message;->t:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x3

    if-eq v4, v5, :cond_2

    iget-object v4, v1, Lcom/taobao/accs/data/Message;->t:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_4

    .line 724
    :cond_2
    iput-boolean v3, v1, Lcom/taobao/accs/data/Message;->e:Z

    goto :goto_1

    .line 715
    :pswitch_2
    iget-object v4, v1, Lcom/taobao/accs/data/Message;->t:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eq v4, v3, :cond_3

    iget-object v4, v1, Lcom/taobao/accs/data/Message;->t:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v2, :cond_4

    .line 717
    :cond_3
    iput-boolean v3, v1, Lcom/taobao/accs/data/Message;->e:Z

    :cond_4
    :goto_1
    if-eqz v1, :cond_0

    .line 736
    iget-boolean v4, v1, Lcom/taobao/accs/data/Message;->e:Z

    if-eqz v4, :cond_0

    .line 737
    iget-object v4, p0, Lcom/taobao/accs/data/b;->l:Ljava/lang/String;

    const-string v5, "cancelControlMessage"

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "command"

    aput-object v7, v2, v6

    iget-object v1, v1, Lcom/taobao/accs/data/Message;->t:Ljava/lang/Integer;

    aput-object v1, v2, v3

    invoke-static {v4, v5, v2}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_5
    return-void

    nop

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

.method public b()Z
    .locals 1

    .line 673
    iget-boolean v0, p0, Lcom/taobao/accs/data/b;->h:Z

    return v0
.end method

.method public c()I
    .locals 1

    .line 745
    iget-object v0, p0, Lcom/taobao/accs/data/b;->g:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->size()I

    move-result v0

    return v0
.end method

.method public d()V
    .locals 4

    .line 911
    :try_start_0
    invoke-static {}, Lcom/taobao/accs/common/a;->a()Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/accs/data/b;->n:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 913
    iget-object v1, p0, Lcom/taobao/accs/data/b;->l:Ljava/lang/String;

    const-string v2, "restoreTraffics"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v0, v3}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
