.class public abstract Lcom/taobao/accs/internal/e;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Lcom/taobao/accs/base/f;


# static fields
.field protected static a:Ljava/util/concurrent/ConcurrentHashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/taobao/accs/f/c;",
            ">;"
        }
    .end annotation
.end field

.field private static g:I = 0x0

.field private static h:Z = false


# instance fields
.field private b:Landroid/content/Context;

.field private c:Z

.field private d:Z

.field private e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field private i:Landroid/app/Service;

.field private j:Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;

.field private k:Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;

.field private l:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field private m:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field private n:Lcom/taobao/accs/base/a;

.field private o:Lcom/taobao/accs/a/a$a;

.field private p:Z

.field private q:Z

.field private r:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 85
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    sput-object v0, Lcom/taobao/accs/internal/e;->a:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method static synthetic a(Lcom/taobao/accs/internal/e;)Landroid/content/Context;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/taobao/accs/internal/e;->b:Landroid/content/Context;

    return-object p0
.end method

.method protected static a(Landroid/content/Context;Ljava/lang/String;ZI)Lcom/taobao/accs/f/c;
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 418
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    const-string p0, "ElectionServiceImpl"

    const-string p1, "getConnection configTag null or env invalid"

    const/4 p2, 0x4

    .line 419
    new-array p2, p2, [Ljava/lang/Object;

    const-string v2, "command"

    aput-object v2, p2, v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p2, v4

    const-string p3, "conns:"

    aput-object p3, p2, v3

    const/4 p3, 0x3

    sget-object v2, Lcom/taobao/accs/internal/e;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, p2, p3

    invoke-static {p0, p1, p2}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 420
    sget-object p0, Lcom/taobao/accs/internal/e;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result p0

    if-lez p0, :cond_0

    .line 421
    sget-object p0, Lcom/taobao/accs/internal/e;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->elements()Ljava/util/Enumeration;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/taobao/accs/f/c;

    goto :goto_0

    :cond_0
    move-object p0, v0

    :goto_0
    return-object p0

    :cond_1
    const-string p3, "ElectionServiceImpl"

    const-string v2, "getConnection"

    .line 425
    new-array v5, v3, [Ljava/lang/Object;

    const-string v6, "configTag"

    aput-object v6, v5, v1

    aput-object p1, v5, v4

    invoke-static {p3, v2, v5}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 426
    invoke-static {p1}, Lcom/taobao/accs/b;->a(Ljava/lang/String;)Lcom/taobao/accs/b;

    move-result-object p3

    if-eqz p3, :cond_2

    .line 427
    invoke-virtual {p3}, Lcom/taobao/accs/b;->l()Z

    move-result p3

    if-eqz p3, :cond_2

    const-string p0, "ElectionServiceImpl"

    const-string p2, "channel disabled!"

    .line 428
    new-array p3, v3, [Ljava/lang/Object;

    const-string v2, "configTag"

    aput-object v2, p3, v1

    aput-object p1, p3, v4

    invoke-static {p0, p2, p3}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    .line 432
    :cond_2
    invoke-static {p0}, Lcom/taobao/accs/utl/l;->a(Landroid/content/Context;)I

    move-result p3

    .line 433
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 434
    sget-object v3, Lcom/taobao/accs/internal/e;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/taobao/accs/f/c;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v3, :cond_5

    .line 436
    :try_start_1
    sput p3, Lcom/taobao/accs/b;->b:I

    .line 437
    new-instance v0, Lcom/taobao/accs/f/q;

    invoke-direct {v0, p0, v1, p1}, Lcom/taobao/accs/f/q;-><init>(Landroid/content/Context;ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz p2, :cond_3

    .line 439
    :try_start_2
    invoke-virtual {v0}, Lcom/taobao/accs/f/c;->a()V

    .line 441
    :cond_3
    sget-object p0, Lcom/taobao/accs/internal/e;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result p0

    const/16 p1, 0xa

    if-ge p0, p1, :cond_4

    .line 442
    sget-object p0, Lcom/taobao/accs/internal/e;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_4
    const-string p0, "ElectionServiceImpl"

    const-string p1, "to many conns!!!"

    .line 444
    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {p0, p1, p2}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_0
    move-exception p0

    move-object v0, v3

    goto :goto_1

    :cond_5
    move-object v0, v3

    goto :goto_2

    :catch_1
    move-exception p0

    :goto_1
    const-string p1, "ElectionServiceImpl"

    const-string p2, "getConnection"

    .line 448
    new-array p3, v1, [Ljava/lang/Object;

    invoke-static {p1, p2, p0, p3}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :goto_2
    return-object v0
.end method

.method static synthetic a(Lcom/taobao/accs/internal/e;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2}, Lcom/taobao/accs/internal/e;->b(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/taobao/accs/internal/e;[BI)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2}, Lcom/taobao/accs/internal/e;->a([BI)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 6

    const/4 v0, 0x0

    .line 770
    :try_start_0
    iget-object v1, p0, Lcom/taobao/accs/internal/e;->o:Lcom/taobao/accs/a/a$a;

    if-nez v1, :cond_0

    .line 771
    iget-object v1, p0, Lcom/taobao/accs/internal/e;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/taobao/accs/a/a;->a(Landroid/content/Context;)Lcom/taobao/accs/a/a$a;

    move-result-object v1

    iput-object v1, p0, Lcom/taobao/accs/internal/e;->o:Lcom/taobao/accs/a/a$a;

    .line 773
    :cond_0
    iget-object v1, p0, Lcom/taobao/accs/internal/e;->o:Lcom/taobao/accs/a/a$a;

    iput-object p1, v1, Lcom/taobao/accs/a/a$a;->a:Ljava/lang/String;

    .line 774
    iget-object v1, p0, Lcom/taobao/accs/internal/e;->o:Lcom/taobao/accs/a/a$a;

    iget v2, v1, Lcom/taobao/accs/a/a$a;->b:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, v1, Lcom/taobao/accs/a/a$a;->b:I

    .line 775
    iget-object v1, p0, Lcom/taobao/accs/internal/e;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/taobao/accs/internal/e;->o:Lcom/taobao/accs/a/a$a;

    invoke-static {v1, v2}, Lcom/taobao/accs/a/a;->a(Landroid/content/Context;Lcom/taobao/accs/a/a$a;)V

    const-string v1, "ElectionServiceImpl"

    const-string v2, "handleResult notify result"

    const/4 v4, 0x4

    .line 776
    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "host"

    aput-object v5, v4, v0

    aput-object p1, v4, v3

    const/4 v3, 0x2

    const-string v5, "packMap"

    aput-object v5, v4, v3

    const/4 v3, 0x3

    iget-object v5, p0, Lcom/taobao/accs/internal/e;->e:Ljava/util/Map;

    aput-object v5, v4, v3

    invoke-static {v1, v2, v4}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 777
    iget-object v1, p0, Lcom/taobao/accs/internal/e;->e:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 778
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 779
    new-instance v3, Landroid/content/Intent;

    invoke-static {}, Lcom/taobao/accs/a/a;->c()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 780
    invoke-virtual {v3, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "operate"

    .line 781
    sget-object v5, Lcom/taobao/accs/common/Constants$Operate;->RESULT_ELECTION:Lcom/taobao/accs/common/Constants$Operate;

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v4, "sudoPack"

    .line 782
    invoke-virtual {v3, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "com.taobao.accs.ChannelService"

    .line 783
    invoke-virtual {v3, v2, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 785
    :try_start_1
    iget-object v2, p0, Lcom/taobao/accs/internal/e;->b:Landroid/content/Context;

    invoke-virtual {v2, v3}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_2
    const-string v3, "ElectionServiceImpl"

    const-string v4, "handleResult startService"

    .line 787
    new-array v5, v0, [Ljava/lang/Object;

    invoke-static {v3, v4, v2, v5}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    const-string v1, "ElectionServiceImpl"

    const-string v2, "handleResult"

    .line 793
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, p1, v0}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method private a(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const-string v0, "ElectionServiceImpl"

    const-string v1, "serverElection start"

    const/4 v2, 0x2

    .line 361
    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "packs"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 362
    new-instance v0, Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;

    invoke-direct {v0}, Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;-><init>()V

    iput-object v0, p0, Lcom/taobao/accs/internal/e;->j:Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;

    .line 364
    :try_start_0
    iget-object v0, p0, Lcom/taobao/accs/internal/e;->j:Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;

    const-string v1, "server"

    iput-object v1, v0, Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;->type:Ljava/lang/String;

    .line 365
    iget-object v0, p0, Lcom/taobao/accs/internal/e;->k:Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;

    if-eqz v0, :cond_0

    .line 366
    iget-object v0, p0, Lcom/taobao/accs/internal/e;->j:Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;

    iget-object v1, p0, Lcom/taobao/accs/internal/e;->k:Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;

    iget-object v1, v1, Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;->reason:Ljava/lang/String;

    iput-object v1, v0, Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;->reason:Ljava/lang/String;

    .line 368
    :cond_0
    iget-object v0, p0, Lcom/taobao/accs/internal/e;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/taobao/accs/client/a;->a(Landroid/content/Context;)Lcom/taobao/accs/client/a;

    move-result-object v0

    const-string v1, "accs_election"

    iget-object v2, p0, Lcom/taobao/accs/internal/e;->n:Lcom/taobao/accs/base/a;

    invoke-virtual {v0, v1, v2}, Lcom/taobao/accs/client/a;->a(Ljava/lang/String;Lcom/taobao/accs/base/a;)V

    .line 369
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.taobao.accs.intent.action.COMMAND"

    .line 370
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "packageName"

    .line 371
    iget-object v2, p0, Lcom/taobao/accs/internal/e;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "command"

    const/16 v2, 0x69

    .line 372
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "packs"

    .line 373
    check-cast p1, Ljava/util/HashMap;

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 374
    invoke-virtual {p0, v0}, Lcom/taobao/accs/internal/e;->c(Landroid/content/Intent;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 376
    iget-object v0, p0, Lcom/taobao/accs/internal/e;->j:Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;

    const/16 v1, -0x385

    iput v1, v0, Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;->errorCode:I

    .line 377
    iget-object v0, p0, Lcom/taobao/accs/internal/e;->j:Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;->errorMsg:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method private a([BI)V
    .locals 8

    .line 712
    iget-boolean v0, p0, Lcom/taobao/accs/internal/e;->q:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string p1, "ElectionServiceImpl"

    const-string p2, "server election handled, return"

    .line 713
    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p1, p2, v0}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 716
    iput-boolean v0, p0, Lcom/taobao/accs/internal/e;->q:Z

    const/4 v2, 0x0

    const/16 v3, 0xc8

    const/4 v4, 0x2

    if-ne p2, v3, :cond_3

    if-nez p1, :cond_1

    goto :goto_1

    .line 731
    :cond_1
    :try_start_0
    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, p1}, Ljava/lang/String;-><init>([B)V

    const-string v3, "ElectionServiceImpl"

    const-string v5, "handleServerElectionResult"

    .line 732
    new-array v4, v4, [Ljava/lang/Object;

    const-string v6, "json"

    aput-object v6, v4, v1

    aput-object p2, v4, v0

    invoke-static {v3, v5, v4}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 733
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "host"

    .line 734
    invoke-virtual {v3, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 735
    :try_start_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    const-string v4, "blacklist"

    .line 738
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 739
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lez v3, :cond_2

    .line 740
    iget-object v3, p0, Lcom/taobao/accs/internal/e;->b:Landroid/content/Context;

    invoke-static {v3, p1}, Lcom/taobao/accs/a/a;->a(Landroid/content/Context;[B)V

    goto :goto_0

    .line 742
    :cond_2
    iget-object p1, p0, Lcom/taobao/accs/internal/e;->b:Landroid/content/Context;

    invoke-static {p1}, Lcom/taobao/accs/a/a;->c(Landroid/content/Context;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    move p1, v2

    goto :goto_3

    :catchall_0
    move-exception p1

    goto/16 :goto_7

    :catchall_1
    move-exception p1

    goto :goto_4

    :catch_0
    move-exception p1

    move-object v2, p2

    goto :goto_5

    :cond_3
    :goto_1
    :try_start_3
    const-string p1, "ElectionServiceImpl"

    const-string v3, "handleServerElectionResult fail, start local election"

    .line 721
    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "error"

    aput-object v5, v4, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-static {p1, v3, v4}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    const/16 p1, 0xc9

    if-eq p2, p1, :cond_4

    const/4 p1, 0x1

    goto :goto_2

    :cond_4
    const/4 p1, 0x0

    .line 726
    :goto_2
    :try_start_4
    iget-object v3, p0, Lcom/taobao/accs/internal/e;->j:Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;

    if-eqz v3, :cond_5

    .line 727
    iget-object v3, p0, Lcom/taobao/accs/internal/e;->j:Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;

    iput p2, v3, Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;->errorCode:I

    .line 728
    iget-object p2, p0, Lcom/taobao/accs/internal/e;->j:Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;

    const-string v3, "server status error"

    iput-object v3, p2, Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;->errorMsg:Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :cond_5
    move-object p2, v2

    :goto_3
    if-eqz p1, :cond_6

    .line 756
    invoke-direct {p0}, Lcom/taobao/accs/internal/e;->c()Ljava/lang/String;

    move-result-object p2

    .line 758
    :cond_6
    invoke-direct {p0, p2}, Lcom/taobao/accs/internal/e;->a(Ljava/lang/String;)V

    .line 759
    iget-object p2, p0, Lcom/taobao/accs/internal/e;->j:Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;

    if-eqz p2, :cond_9

    .line 760
    iget-object p2, p0, Lcom/taobao/accs/internal/e;->j:Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;

    if-eqz p1, :cond_7

    const/4 v0, 0x0

    :cond_7
    iput v0, p2, Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;->ret:I

    goto :goto_6

    :catchall_2
    move-exception p2

    move-object v7, v2

    move v2, p1

    move-object p1, p2

    move-object p2, v7

    goto :goto_7

    :catchall_3
    move-exception p1

    move-object p2, v2

    :goto_4
    const/4 v2, 0x0

    goto :goto_7

    :catch_1
    move-exception p1

    :goto_5
    :try_start_5
    const-string p2, "ElectionServiceImpl"

    const-string v3, "handleServerElectionResult"

    .line 749
    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {p2, v3, p1, v4}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 750
    iget-object p2, p0, Lcom/taobao/accs/internal/e;->j:Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;

    if-eqz p2, :cond_8

    .line 751
    iget-object p2, p0, Lcom/taobao/accs/internal/e;->j:Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;

    const/16 v3, -0x385

    iput v3, p2, Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;->errorCode:I

    .line 752
    iget-object p2, p0, Lcom/taobao/accs/internal/e;->j:Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;->errorMsg:Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 756
    :cond_8
    invoke-direct {p0}, Lcom/taobao/accs/internal/e;->c()Ljava/lang/String;

    move-result-object p1

    .line 758
    invoke-direct {p0, p1}, Lcom/taobao/accs/internal/e;->a(Ljava/lang/String;)V

    .line 759
    iget-object p1, p0, Lcom/taobao/accs/internal/e;->j:Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;

    if-eqz p1, :cond_9

    .line 760
    iget-object p1, p0, Lcom/taobao/accs/internal/e;->j:Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;

    iput v1, p1, Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;->ret:I

    .line 761
    :goto_6
    invoke-static {}, Lanet/channel/b/a;->a()Lanet/channel/b/b;

    move-result-object p1

    iget-object p2, p0, Lcom/taobao/accs/internal/e;->j:Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;

    invoke-interface {p1, p2}, Lanet/channel/b/b;->a(Lanet/channel/statist/StatObject;)V

    :cond_9
    return-void

    :catchall_4
    move-exception p1

    move-object p2, v2

    const/4 v2, 0x1

    :goto_7
    if-eqz v2, :cond_a

    .line 756
    invoke-direct {p0}, Lcom/taobao/accs/internal/e;->c()Ljava/lang/String;

    move-result-object p2

    .line 758
    :cond_a
    invoke-direct {p0, p2}, Lcom/taobao/accs/internal/e;->a(Ljava/lang/String;)V

    .line 759
    iget-object p2, p0, Lcom/taobao/accs/internal/e;->j:Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;

    if-eqz p2, :cond_c

    .line 760
    iget-object p2, p0, Lcom/taobao/accs/internal/e;->j:Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;

    if-eqz v2, :cond_b

    const/4 v0, 0x0

    :cond_b
    iput v0, p2, Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;->ret:I

    .line 761
    invoke-static {}, Lanet/channel/b/a;->a()Lanet/channel/b/b;

    move-result-object p2

    iget-object v0, p0, Lcom/taobao/accs/internal/e;->j:Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;

    invoke-interface {p2, v0}, Lanet/channel/b/b;->a(Lanet/channel/statist/StatObject;)V

    :cond_c
    throw p1
.end method

.method private b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6

    .line 526
    invoke-static {p1}, Lcom/taobao/accs/a/a;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ElectionServiceImpl"

    const-string v2, "selectAppToElection"

    const/4 v3, 0x2

    .line 527
    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "pkg"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v4, 0x1

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 528
    sput-boolean v5, Lcom/taobao/accs/a/a;->c:Z

    .line 529
    iput-boolean v5, p0, Lcom/taobao/accs/internal/e;->d:Z

    .line 530
    new-instance v1, Landroid/content/Intent;

    invoke-static {}, Lcom/taobao/accs/a/a;->c()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 531
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "operate"

    .line 532
    sget-object v3, Lcom/taobao/accs/common/Constants$Operate;->START_ELECTION:Lcom/taobao/accs/common/Constants$Operate;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v2, "reason"

    .line 533
    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 534
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "com.taobao.accs.ChannelService"

    .line 535
    invoke-virtual {v1, v0, p2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    const-string v0, "operate"

    .line 537
    sget-object v2, Lcom/taobao/accs/common/Constants$Operate;->START_ELECTION:Lcom/taobao/accs/common/Constants$Operate;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v0, "reason"

    .line 538
    invoke-virtual {v1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 539
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 540
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    const-string v0, "com.taobao.accs.ChannelService"

    invoke-virtual {v1, p2, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 542
    :goto_0
    iget-object p2, p0, Lcom/taobao/accs/internal/e;->m:Ljava/util/concurrent/ScheduledFuture;

    if-eqz p2, :cond_1

    .line 543
    iget-object p2, p0, Lcom/taobao/accs/internal/e;->m:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {p2, v4}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    const/4 p2, 0x0

    .line 544
    iput-object p2, p0, Lcom/taobao/accs/internal/e;->m:Ljava/util/concurrent/ScheduledFuture;

    .line 546
    :cond_1
    iget-object p2, p0, Lcom/taobao/accs/internal/e;->f:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v0, Lcom/taobao/accs/internal/g;

    invoke-direct {v0, p0, p1}, Lcom/taobao/accs/internal/g;-><init>(Lcom/taobao/accs/internal/e;Landroid/content/Context;)V

    const-wide/16 v2, 0x1e

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p2, v0, v2, v3, v4}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p2

    iput-object p2, p0, Lcom/taobao/accs/internal/e;->m:Ljava/util/concurrent/ScheduledFuture;

    .line 563
    invoke-virtual {p1, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method static synthetic b(Lcom/taobao/accs/internal/e;)Z
    .locals 0

    .line 43
    iget-boolean p0, p0, Lcom/taobao/accs/internal/e;->d:Z

    return p0
.end method

.method private c()Ljava/lang/String;
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 332
    :try_start_0
    iget-object v3, p0, Lcom/taobao/accs/internal/e;->e:Ljava/util/Map;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/taobao/accs/internal/e;->e:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 333
    iget-object v3, p0, Lcom/taobao/accs/internal/e;->b:Landroid/content/Context;

    iget-object v4, p0, Lcom/taobao/accs/internal/e;->e:Ljava/util/Map;

    invoke-static {v3, v4}, Lcom/taobao/accs/a/a;->a(Landroid/content/Context;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v4, v0

    move-object v0, v3

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    const/16 v3, -0x386

    :try_start_1
    const-string v4, "apps is null"
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    :try_start_2
    const-string v5, "ElectionServiceImpl"

    const-string v6, "localElection"

    const/4 v7, 0x2

    .line 339
    new-array v7, v7, [Ljava/lang/Object;

    const-string v8, "host"

    aput-object v8, v7, v1

    aput-object v0, v7, v2

    invoke-static {v5, v6, v7}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 345
    iget-object v1, p0, Lcom/taobao/accs/internal/e;->k:Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;

    if-eqz v1, :cond_2

    .line 346
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 347
    iget-object v1, p0, Lcom/taobao/accs/internal/e;->k:Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;

    iput v3, v1, Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;->errorCode:I

    .line 348
    iget-object v1, p0, Lcom/taobao/accs/internal/e;->k:Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;

    iput-object v4, v1, Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;->errorMsg:Ljava/lang/String;

    .line 350
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/taobao/accs/internal/e;->k:Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    xor-int/2addr v2, v3

    iput v2, v1, Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;->ret:I

    .line 351
    invoke-static {}, Lanet/channel/b/a;->a()Lanet/channel/b/b;

    move-result-object v1

    iget-object v2, p0, Lcom/taobao/accs/internal/e;->k:Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;

    invoke-interface {v1, v2}, Lanet/channel/b/b;->a(Lanet/channel/statist/StatObject;)V

    goto :goto_3

    :catch_0
    move-exception v5

    goto :goto_2

    :catchall_0
    move-exception v1

    move-object v4, v0

    goto :goto_4

    :catch_1
    move-exception v4

    move-object v5, v4

    move-object v4, v0

    goto :goto_2

    :catchall_1
    move-exception v3

    move-object v4, v0

    move-object v1, v3

    const/4 v3, 0x0

    goto :goto_4

    :catch_2
    move-exception v3

    move-object v4, v0

    move-object v5, v3

    const/4 v3, 0x0

    :goto_2
    :try_start_3
    const-string v6, "ElectionServiceImpl"

    const-string v7, "localElection error"

    .line 341
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v6, v7, v5, v1}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    const/16 v1, -0x385

    .line 343
    :try_start_4
    invoke-virtual {v5}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 345
    iget-object v4, p0, Lcom/taobao/accs/internal/e;->k:Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;

    if-eqz v4, :cond_2

    .line 346
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 347
    iget-object v4, p0, Lcom/taobao/accs/internal/e;->k:Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;

    iput v1, v4, Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;->errorCode:I

    .line 348
    iget-object v1, p0, Lcom/taobao/accs/internal/e;->k:Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;

    iput-object v3, v1, Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;->errorMsg:Ljava/lang/String;

    goto :goto_1

    :cond_2
    :goto_3
    return-object v0

    :catchall_2
    move-exception v3

    move-object v1, v3

    const/16 v3, -0x385

    goto :goto_4

    :catchall_3
    move-exception v1

    .line 345
    :goto_4
    iget-object v5, p0, Lcom/taobao/accs/internal/e;->k:Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;

    if-eqz v5, :cond_4

    .line 346
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 347
    iget-object v5, p0, Lcom/taobao/accs/internal/e;->k:Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;

    iput v3, v5, Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;->errorCode:I

    .line 348
    iget-object v3, p0, Lcom/taobao/accs/internal/e;->k:Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;

    iput-object v4, v3, Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;->errorMsg:Ljava/lang/String;

    .line 350
    :cond_3
    iget-object v3, p0, Lcom/taobao/accs/internal/e;->k:Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/2addr v0, v2

    iput v0, v3, Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;->ret:I

    .line 351
    invoke-static {}, Lanet/channel/b/a;->a()Lanet/channel/b/b;

    move-result-object v0

    iget-object v2, p0, Lcom/taobao/accs/internal/e;->k:Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;

    invoke-interface {v0, v2}, Lanet/channel/b/b;->a(Lanet/channel/statist/StatObject;)V

    :cond_4
    throw v1
.end method

.method static synthetic c(Lcom/taobao/accs/internal/e;)Ljava/util/Map;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/taobao/accs/internal/e;->e:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic d(Lcom/taobao/accs/internal/e;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/taobao/accs/internal/e;->g()V

    return-void
.end method

.method private e()V
    .locals 11

    const/4 v0, 0x0

    .line 462
    :try_start_0
    iget-object v1, p0, Lcom/taobao/accs/internal/e;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/taobao/accs/utl/b;->r(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 463
    iget-object v1, p0, Lcom/taobao/accs/internal/e;->b:Landroid/content/Context;

    const-string v2, "first start"

    invoke-direct {p0, v1, v2}, Lcom/taobao/accs/internal/e;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 464
    iget-object v1, p0, Lcom/taobao/accs/internal/e;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/taobao/accs/utl/b;->s(Landroid/content/Context;)V

    return-void

    .line 467
    :cond_0
    iget-object v1, p0, Lcom/taobao/accs/internal/e;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/taobao/accs/a/a;->a(Landroid/content/Context;)Lcom/taobao/accs/a/a$a;

    move-result-object v1

    iget-object v1, v1, Lcom/taobao/accs/a/a$a;->a:Ljava/lang/String;

    .line 468
    iget-object v2, p0, Lcom/taobao/accs/internal/e;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ElectionServiceImpl"

    const-string v4, "tryElection begin"

    const/4 v5, 0x6

    .line 469
    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "isFirstStart"

    aput-object v6, v5, v0

    iget-object v6, p0, Lcom/taobao/accs/internal/e;->b:Landroid/content/Context;

    invoke-static {v6}, Lcom/taobao/accs/utl/b;->r(Landroid/content/Context;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v5, v7

    const-string v6, "currentPack"

    const/4 v8, 0x2

    aput-object v6, v5, v8

    const/4 v6, 0x3

    aput-object v2, v5, v6

    const/4 v9, 0x4

    const-string v10, "currentElectionPack"

    aput-object v10, v5, v9

    const/4 v9, 0x5

    aput-object v1, v5, v9

    invoke-static {v3, v4, v5}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 471
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v1, "ElectionServiceImpl"

    const-string v2, "host is empty, try selectAppToElection"

    .line 472
    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 473
    iget-object v1, p0, Lcom/taobao/accs/internal/e;->b:Landroid/content/Context;

    const-string v2, "host null"

    invoke-direct {p0, v1, v2}, Lcom/taobao/accs/internal/e;->b(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 477
    :cond_1
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v3, :cond_2

    const-wide/16 v3, 0x5

    .line 479
    :try_start_1
    new-instance v5, Landroid/content/Intent;

    invoke-static {}, Lcom/taobao/accs/a/a;->c()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v5, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 480
    invoke-virtual {v5, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v9, "operate"

    .line 481
    sget-object v10, Lcom/taobao/accs/common/Constants$Operate;->PING_ELECTION:Lcom/taobao/accs/common/Constants$Operate;

    invoke-virtual {v5, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v9, "com.taobao.accs.ChannelService"

    .line 482
    invoke-virtual {v5, v1, v9}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v9, "pingPack"

    .line 483
    invoke-virtual {v5, v9, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 484
    iget-object v2, p0, Lcom/taobao/accs/internal/e;->b:Landroid/content/Context;

    invoke-virtual {v2, v5}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    const-string v2, "ElectionServiceImpl"

    const-string v5, "tryElection send PING_ELECTION"

    .line 485
    new-array v9, v8, [Ljava/lang/Object;

    const-string v10, "to pkg"

    aput-object v10, v9, v0

    aput-object v1, v9, v7

    invoke-static {v2, v5, v9}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 489
    :try_start_2
    iget-object v2, p0, Lcom/taobao/accs/internal/e;->f:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v5, Lcom/taobao/accs/internal/f;

    invoke-direct {v5, p0, v1}, Lcom/taobao/accs/internal/f;-><init>(Lcom/taobao/accs/internal/e;Ljava/lang/String;)V

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    :goto_0
    invoke-virtual {v2, v5, v3, v4, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catchall_0
    move-exception v2

    goto :goto_1

    :catch_0
    move-exception v2

    :try_start_3
    const-string v5, "ElectionServiceImpl"

    const-string v9, "tryElection startService error"

    .line 487
    new-array v6, v6, [Ljava/lang/Object;

    const-string v10, "currentElectionPack"

    aput-object v10, v6, v0

    aput-object v1, v6, v7

    aput-object v2, v6, v8

    invoke-static {v5, v9, v6}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 489
    :try_start_4
    iget-object v2, p0, Lcom/taobao/accs/internal/e;->f:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v5, Lcom/taobao/accs/internal/f;

    invoke-direct {v5, p0, v1}, Lcom/taobao/accs/internal/f;-><init>(Lcom/taobao/accs/internal/e;Ljava/lang/String;)V

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    goto :goto_0

    :goto_1
    iget-object v5, p0, Lcom/taobao/accs/internal/e;->f:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v6, Lcom/taobao/accs/internal/f;

    invoke-direct {v6, p0, v1}, Lcom/taobao/accs/internal/f;-><init>(Lcom/taobao/accs/internal/e;Ljava/lang/String;)V

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v5, v6, v3, v4, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    throw v2

    :cond_2
    const-string v1, "ElectionServiceImpl"

    const-string v2, "curr is host, no need election"

    .line 509
    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 510
    invoke-virtual {p0}, Lcom/taobao/accs/internal/e;->d()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    :catch_1
    move-exception v1

    const-string v2, "ElectionServiceImpl"

    const-string v3, "tryElection error"

    .line 513
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v2, v3, v1, v0}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :goto_2
    return-void
.end method

.method static synthetic f()Z
    .locals 1

    .line 43
    sget-boolean v0, Lcom/taobao/accs/internal/e;->h:Z

    return v0
.end method

.method private g()V
    .locals 6

    const/4 v0, 0x0

    .line 662
    :try_start_0
    iget-object v1, p0, Lcom/taobao/accs/internal/e;->l:Ljava/util/concurrent/ScheduledFuture;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 663
    iget-object v1, p0, Lcom/taobao/accs/internal/e;->l:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v1, v2}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    const/4 v1, 0x0

    .line 664
    iput-object v1, p0, Lcom/taobao/accs/internal/e;->l:Ljava/util/concurrent/ScheduledFuture;

    .line 666
    :cond_0
    iget-boolean v1, p0, Lcom/taobao/accs/internal/e;->p:Z

    if-eqz v1, :cond_1

    const-string v1, "ElectionServiceImpl"

    const-string v2, "reportcompleted, return"

    .line 667
    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 706
    iput-boolean v0, p0, Lcom/taobao/accs/internal/e;->c:Z

    return-void

    .line 670
    :cond_1
    :try_start_1
    iput-boolean v2, p0, Lcom/taobao/accs/internal/e;->p:Z

    const-string v1, "ElectionServiceImpl"

    const-string v3, "onReportComplete"

    .line 672
    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {v1, v3, v4}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 673
    iget-object v1, p0, Lcom/taobao/accs/internal/e;->e:Ljava/util/Map;

    if-nez v1, :cond_2

    .line 674
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/taobao/accs/internal/e;->e:Ljava/util/Map;

    .line 676
    :cond_2
    iget-object v1, p0, Lcom/taobao/accs/internal/e;->e:Ljava/util/Map;

    iget-object v3, p0, Lcom/taobao/accs/internal/e;->b:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0xdd

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 679
    iget-object v1, p0, Lcom/taobao/accs/internal/e;->e:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-ne v1, v2, :cond_4

    .line 680
    iget-object v1, p0, Lcom/taobao/accs/internal/e;->e:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    new-array v3, v0, [Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    aget-object v1, v1, v0

    .line 681
    iget-object v3, p0, Lcom/taobao/accs/internal/e;->k:Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;

    if-eqz v3, :cond_3

    .line 682
    iget-object v3, p0, Lcom/taobao/accs/internal/e;->k:Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    xor-int/2addr v2, v4

    iput v2, v3, Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;->ret:I

    .line 683
    invoke-static {}, Lanet/channel/b/a;->a()Lanet/channel/b/b;

    move-result-object v2

    iget-object v3, p0, Lcom/taobao/accs/internal/e;->k:Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;

    invoke-interface {v2, v3}, Lanet/channel/b/b;->a(Lanet/channel/statist/StatObject;)V

    .line 685
    :cond_3
    invoke-direct {p0, v1}, Lcom/taobao/accs/internal/e;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 688
    :cond_4
    iget-object v1, p0, Lcom/taobao/accs/internal/e;->e:Ljava/util/Map;

    invoke-direct {p0, v1}, Lcom/taobao/accs/internal/e;->a(Ljava/util/Map;)V

    .line 689
    iput-boolean v0, p0, Lcom/taobao/accs/internal/e;->q:Z

    .line 690
    iget-object v1, p0, Lcom/taobao/accs/internal/e;->f:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v2, Lcom/taobao/accs/internal/i;

    invoke-direct {v2, p0}, Lcom/taobao/accs/internal/i;-><init>(Lcom/taobao/accs/internal/e;)V

    const-wide/16 v3, 0x14

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4, v5}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v1

    iput-object v1, p0, Lcom/taobao/accs/internal/e;->r:Ljava/util/concurrent/ScheduledFuture;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    .line 700
    :try_start_2
    iget-object v2, p0, Lcom/taobao/accs/internal/e;->k:Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;

    if-eqz v2, :cond_5

    .line 701
    iget-object v2, p0, Lcom/taobao/accs/internal/e;->k:Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;

    const/16 v3, -0x385

    iput v3, v2, Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;->errorCode:I

    .line 702
    iget-object v2, p0, Lcom/taobao/accs/internal/e;->k:Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;->errorMsg:Ljava/lang/String;

    :cond_5
    const-string v2, "ElectionServiceImpl"

    const-string v3, "onReportComplete"

    .line 704
    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {v2, v3, v1, v4}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 706
    :goto_0
    iput-boolean v0, p0, Lcom/taobao/accs/internal/e;->c:Z

    return-void

    :goto_1
    iput-boolean v0, p0, Lcom/taobao/accs/internal/e;->c:Z

    throw v1
.end method


# virtual methods
.method public a(Landroid/content/Intent;II)I
    .locals 20

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const/4 v3, 0x2

    if-nez v2, :cond_0

    return v3

    .line 110
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    .line 113
    iget-object v5, v1, Lcom/taobao/accs/internal/e;->b:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "ElectionServiceImpl"

    const-string v7, "onStartCommand begin"

    .line 114
    new-array v8, v3, [Ljava/lang/Object;

    const-string v9, "action"

    const/4 v10, 0x0

    aput-object v9, v8, v10

    const/4 v9, 0x1

    aput-object v4, v8, v9

    invoke-static {v6, v7, v8}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 116
    invoke-static {}, Lcom/taobao/accs/a/a;->b()Z

    move-result v6

    const/4 v8, 0x6

    const/4 v12, 0x3

    if-eqz v6, :cond_b

    :try_start_0
    const-string v6, "android.intent.action.PACKAGE_REMOVED"

    .line 118
    invoke-static {v4, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 119
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v5

    const-string v6, "android.intent.extra.REPLACING"

    .line 120
    invoke-virtual {v2, v6, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    .line 122
    iget-object v13, v1, Lcom/taobao/accs/internal/e;->b:Landroid/content/Context;

    invoke-static {v13}, Lcom/taobao/accs/a/a;->a(Landroid/content/Context;)Lcom/taobao/accs/a/a$a;

    move-result-object v13

    .line 123
    iget-object v14, v13, Lcom/taobao/accs/a/a$a;->a:Ljava/lang/String;

    const-string v15, "ElectionServiceImpl"

    const-string v7, "onstartcommand PACKAGE_REMOVED"

    .line 124
    new-array v11, v8, [Ljava/lang/Object;

    const-string v18, "pkg"

    aput-object v18, v11, v10

    aput-object v5, v11, v9

    const-string v18, "host"

    aput-object v18, v11, v3

    aput-object v14, v11, v12

    const-string v18, "replaced"

    const/16 v17, 0x4

    aput-object v18, v11, v17

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/16 v16, 0x5

    aput-object v6, v11, v16

    invoke-static {v15, v7, v11}, Lcom/taobao/accs/utl/ALog;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 125
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-static {v14, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 127
    iget-object v5, v1, Lcom/taobao/accs/internal/e;->b:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v1, Lcom/taobao/accs/internal/e;->b:Landroid/content/Context;

    invoke-static {v6}, Lcom/taobao/accs/a/a;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 128
    iput v10, v13, Lcom/taobao/accs/a/a$a;->b:I

    .line 129
    iget-object v5, v1, Lcom/taobao/accs/internal/e;->b:Landroid/content/Context;

    invoke-static {v5, v13}, Lcom/taobao/accs/a/a;->a(Landroid/content/Context;Lcom/taobao/accs/a/a$a;)V

    .line 130
    iget-object v5, v1, Lcom/taobao/accs/internal/e;->b:Landroid/content/Context;

    const-string v6, "host removed"

    invoke-virtual {v1, v5, v6}, Lcom/taobao/accs/internal/e;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_1
    const-string v5, "ElectionServiceImpl"

    const-string v6, "onstartcommand PACKAGE_REMOVED no need election"

    .line 132
    new-array v7, v10, [Ljava/lang/Object;

    invoke-static {v5, v6, v7}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_2
    const-string v5, "ElectionServiceImpl"

    const-string v6, "onstartcommand PACKAGE_REMOVED no need election"

    .line 135
    new-array v7, v10, [Ljava/lang/Object;

    invoke-static {v5, v6, v7}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 137
    :cond_3
    invoke-static {}, Lcom/taobao/accs/a/a;->c()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_c

    const-string v6, "operate"

    .line 138
    invoke-virtual {v2, v6}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v6

    check-cast v6, Lcom/taobao/accs/common/Constants$Operate;

    const-string v7, "ElectionServiceImpl"

    const-string v11, "operate is receive"

    .line 139
    new-array v13, v3, [Ljava/lang/Object;

    const-string v14, "operate"

    aput-object v14, v13, v10

    aput-object v6, v13, v9

    invoke-static {v7, v11, v13}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 140
    sget-object v7, Lcom/taobao/accs/internal/e$1;->a:[I

    invoke-virtual {v6}, Lcom/taobao/accs/common/Constants$Operate;->ordinal()I

    move-result v6

    aget v6, v7, v6

    const/16 v7, 0xdd

    packed-switch v6, :pswitch_data_0

    goto/16 :goto_1

    .line 209
    :pswitch_0
    iget-object v6, v1, Lcom/taobao/accs/internal/e;->b:Landroid/content/Context;

    invoke-static {v6}, Lcom/taobao/accs/a/a;->a(Landroid/content/Context;)Lcom/taobao/accs/a/a$a;

    move-result-object v6

    iget-object v6, v6, Lcom/taobao/accs/a/a$a;->a:Ljava/lang/String;

    const-string v11, "pingPack"

    .line 210
    invoke-virtual {v2, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 212
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_4

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_4

    .line 213
    invoke-static {v6, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_4

    const-string v13, "ElectionServiceImpl"

    const-string v14, "host receive ping, and report ping"

    const/4 v15, 0x4

    .line 214
    new-array v8, v15, [Ljava/lang/Object;

    const-string v15, "to pkg"

    aput-object v15, v8, v10

    aput-object v11, v8, v9

    const-string v15, "host"

    aput-object v15, v8, v3

    aput-object v6, v8, v12

    invoke-static {v13, v14, v8}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 215
    new-instance v8, Landroid/content/Intent;

    invoke-static {}, Lcom/taobao/accs/a/a;->c()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v8, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 216
    invoke-virtual {v8, v11}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v13, "com.taobao.accs.ChannelService"

    .line 217
    invoke-virtual {v8, v11, v13}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v13, "operate"

    .line 218
    sget-object v14, Lcom/taobao/accs/common/Constants$Operate;->PING_ELECTION:Lcom/taobao/accs/common/Constants$Operate;

    invoke-virtual {v8, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v13, "isPing"

    .line 219
    invoke-virtual {v8, v13, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v13, "pingPack"

    .line 220
    invoke-virtual {v8, v13, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v13, "sdkVersion"

    .line 221
    invoke-virtual {v8, v13, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 222
    iget-object v7, v1, Lcom/taobao/accs/internal/e;->b:Landroid/content/Context;

    invoke-virtual {v7, v8}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 223
    invoke-virtual/range {p0 .. p0}, Lcom/taobao/accs/internal/e;->d()V

    .line 227
    :cond_4
    invoke-static {v11, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_a

    const-string v5, "ElectionServiceImpl"

    const-string v7, "receive host\'s ping back"

    .line 228
    new-array v8, v3, [Ljava/lang/Object;

    const-string v11, "host"

    aput-object v11, v8, v10

    aput-object v6, v8, v9

    invoke-static {v5, v7, v8}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v5, "isPing"

    .line 229
    invoke-virtual {v2, v5, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    sput-boolean v5, Lcom/taobao/accs/internal/e;->h:Z

    goto/16 :goto_1

    .line 188
    :pswitch_1
    iput-boolean v9, v1, Lcom/taobao/accs/internal/e;->d:Z

    .line 189
    iget-object v6, v1, Lcom/taobao/accs/internal/e;->m:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v6, :cond_5

    .line 190
    iget-object v6, v1, Lcom/taobao/accs/internal/e;->m:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v6, v9}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    const/4 v6, 0x0

    .line 191
    iput-object v6, v1, Lcom/taobao/accs/internal/e;->m:Ljava/util/concurrent/ScheduledFuture;

    :cond_5
    const-string v6, "sudoPack"

    .line 193
    invoke-virtual {v2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "ElectionServiceImpl"

    const-string v8, "election result"

    const/4 v11, 0x4

    .line 194
    new-array v13, v11, [Ljava/lang/Object;

    const-string v11, "host"

    aput-object v11, v13, v10

    aput-object v6, v13, v9

    const-string v11, "curr pkg"

    aput-object v11, v13, v3

    aput-object v5, v13, v12

    invoke-static {v7, v8, v13}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v7, "accs"

    const-string v8, "ele_pkg_times"

    const-wide/16 v13, 0x0

    .line 195
    invoke-static {v7, v8, v6, v13, v14}, Lcom/taobao/accs/utl/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    .line 196
    iget-object v7, v1, Lcom/taobao/accs/internal/e;->b:Landroid/content/Context;

    invoke-static {v7}, Lcom/taobao/accs/a/a;->b(Landroid/content/Context;)Lcom/taobao/accs/a/a$a;

    .line 197
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_a

    .line 199
    invoke-static {v6, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 200
    invoke-virtual/range {p0 .. p0}, Lcom/taobao/accs/internal/e;->d()V

    goto/16 :goto_1

    .line 203
    :cond_6
    invoke-virtual {v1, v9}, Lcom/taobao/accs/internal/e;->a(Z)V

    goto/16 :goto_1

    .line 170
    :pswitch_2
    iget-boolean v5, v1, Lcom/taobao/accs/internal/e;->c:Z

    if-eqz v5, :cond_8

    const-string v5, "packageName"

    .line 172
    invoke-virtual {v2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "sdkVersion"

    .line 173
    invoke-virtual {v2, v6, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 174
    sget v7, Lcom/taobao/accs/internal/e;->g:I

    sub-int/2addr v7, v9

    sput v7, Lcom/taobao/accs/internal/e;->g:I

    if-eqz v6, :cond_7

    .line 176
    iget-object v7, v1, Lcom/taobao/accs/internal/e;->e:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v5, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    const-string v7, "ElectionServiceImpl"

    const-string v8, "collect info"

    const/4 v11, 0x6

    .line 178
    new-array v13, v11, [Ljava/lang/Object;

    const-string v11, "sdkv"

    aput-object v11, v13, v10

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v13, v9

    const-string v6, "election pkg"

    aput-object v6, v13, v3

    aput-object v5, v13, v12

    const-string v5, "electionPackCount"

    const/4 v6, 0x4

    aput-object v5, v13, v6

    sget v5, Lcom/taobao/accs/internal/e;->g:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x5

    aput-object v5, v13, v6

    invoke-static {v7, v8, v13}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 179
    sget v5, Lcom/taobao/accs/internal/e;->g:I

    if-nez v5, :cond_a

    .line 180
    invoke-direct/range {p0 .. p0}, Lcom/taobao/accs/internal/e;->g()V

    goto/16 :goto_1

    :cond_8
    const-string v5, "ElectionServiceImpl"

    const-string v6, "not electioning, but receive report"

    .line 183
    new-array v7, v10, [Ljava/lang/Object;

    invoke-static {v5, v6, v7}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_3
    const-string v5, "packageName"

    .line 152
    invoke-virtual {v2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "elversion"

    .line 153
    invoke-virtual {v2, v6, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 154
    new-instance v8, Landroid/content/Intent;

    invoke-static {}, Lcom/taobao/accs/a/a;->c()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v8, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v11, "operate"

    .line 155
    sget-object v13, Lcom/taobao/accs/common/Constants$Operate;->REPORT_VERSION:Lcom/taobao/accs/common/Constants$Operate;

    invoke-virtual {v8, v11, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v11, "packageName"

    .line 156
    iget-object v13, v1, Lcom/taobao/accs/internal/e;->b:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8, v11, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 157
    invoke-virtual {v8, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v11, "com.taobao.accs.ChannelService"

    .line 158
    invoke-virtual {v8, v5, v11}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 160
    iget-object v11, v1, Lcom/taobao/accs/internal/e;->b:Landroid/content/Context;

    iget-object v13, v1, Lcom/taobao/accs/internal/e;->b:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13, v6}, Lcom/taobao/accs/a/a;->a(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_9

    const-string v6, "sdkVersion"

    .line 161
    invoke-virtual {v8, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    :cond_9
    const/4 v7, 0x0

    .line 165
    :goto_0
    iget-object v6, v1, Lcom/taobao/accs/internal/e;->b:Landroid/content/Context;

    invoke-virtual {v6, v8}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    const-string v6, "ElectionServiceImpl"

    const-string v8, "report"

    const/4 v11, 0x6

    .line 166
    new-array v13, v11, [Ljava/lang/Object;

    const-string v11, "sdkv"

    aput-object v11, v13, v10

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v13, v9

    const-string v7, "from pkg"

    aput-object v7, v13, v3

    iget-object v7, v1, Lcom/taobao/accs/internal/e;->b:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v13, v12

    const-string v7, "to pkg"

    const/4 v11, 0x4

    aput-object v7, v13, v11

    const/4 v7, 0x5

    aput-object v5, v13, v7

    invoke-static {v6, v8, v13}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_4
    const-string v5, "reason"

    .line 147
    invoke-virtual {v2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 148
    iget-object v6, v1, Lcom/taobao/accs/internal/e;->b:Landroid/content/Context;

    invoke-virtual {v1, v6, v5}, Lcom/taobao/accs/internal/e;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 143
    :pswitch_5
    invoke-direct/range {p0 .. p0}, Lcom/taobao/accs/internal/e;->e()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_a
    :goto_1
    return v3

    :catch_0
    move-exception v0

    move-object v5, v0

    const-string v6, "ElectionServiceImpl"

    const-string v7, "onStartCommand"

    .line 238
    new-array v8, v10, [Ljava/lang/Object;

    invoke-static {v6, v7, v5, v8}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_2

    .line 241
    :cond_b
    invoke-static {}, Lcom/taobao/accs/a/a;->c()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_c

    const-string v2, "ElectionServiceImpl"

    const-string v4, "election disabled"

    .line 242
    new-array v5, v10, [Ljava/lang/Object;

    invoke-static {v2, v4, v5}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v3

    :cond_c
    :goto_2
    const-string v5, "com.taobao.accs.intent.action.START_SERVICE"

    .line 249
    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_f

    :try_start_1
    const-string v5, "packageName"

    .line 252
    invoke-virtual {v2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "appKey"

    .line 254
    invoke-virtual {v2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "ttid"

    .line 256
    invoke-virtual {v2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "app_sercet"

    .line 257
    invoke-virtual {v2, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v11, "configTag"

    .line 258
    invoke-virtual {v2, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v13, "mode"

    .line 259
    invoke-virtual {v2, v13, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v13

    const-string v14, "ElectionServiceImpl"

    const-string v15, "try to saveAppKey"

    const/16 v12, 0xa

    .line 260
    new-array v12, v12, [Ljava/lang/Object;

    const-string v18, "configTag"

    aput-object v18, v12, v10

    aput-object v11, v12, v9

    const-string v18, "appkey"

    aput-object v18, v12, v3

    const/16 v18, 0x3

    aput-object v6, v12, v18

    const-string v18, "appSecret"

    const/16 v17, 0x4

    aput-object v18, v12, v17

    const/16 v16, 0x5

    aput-object v8, v12, v16

    const-string v16, "ttid"

    const/16 v17, 0x6

    aput-object v16, v12, v17

    const/16 v16, 0x7

    aput-object v7, v12, v16

    const/16 v16, 0x8

    const-string v17, "pkg"

    aput-object v17, v12, v16

    const/16 v16, 0x9

    aput-object v5, v12, v16

    invoke-static {v14, v15, v12}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 261
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_e

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_e

    iget-object v12, v1, Lcom/taobao/accs/internal/e;->b:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 264
    iget-object v5, v1, Lcom/taobao/accs/internal/e;->b:Landroid/content/Context;

    invoke-static {v5, v13}, Lcom/taobao/accs/utl/l;->a(Landroid/content/Context;I)V

    .line 265
    iget-object v5, v1, Lcom/taobao/accs/internal/e;->b:Landroid/content/Context;

    const/4 v12, -0x1

    invoke-static {v5, v11, v10, v12}, Lcom/taobao/accs/internal/e;->a(Landroid/content/Context;Ljava/lang/String;ZI)Lcom/taobao/accs/f/c;

    move-result-object v5

    if-eqz v5, :cond_d

    .line 267
    iput-object v7, v5, Lcom/taobao/accs/f/c;->a:Ljava/lang/String;

    goto :goto_3

    :cond_d
    const-string v5, "ElectionServiceImpl"

    const-string v7, "start action, no connection"

    .line 269
    new-array v12, v3, [Ljava/lang/Object;

    const-string v13, "configTag"

    aput-object v13, v12, v10

    aput-object v11, v12, v9

    invoke-static {v5, v7, v12}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 271
    :goto_3
    iget-object v5, v1, Lcom/taobao/accs/internal/e;->b:Landroid/content/Context;

    invoke-static {v5, v6, v8}, Lcom/taobao/accs/utl/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    :catch_1
    move-exception v0

    move-object v5, v0

    const-string v6, "ElectionServiceImpl"

    const-string v7, "start action"

    .line 274
    new-array v8, v10, [Ljava/lang/Object;

    invoke-static {v6, v7, v5, v8}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 284
    :cond_e
    :goto_4
    invoke-static {}, Lcom/taobao/accs/a/a;->b()Z

    move-result v5

    if-eqz v5, :cond_f

    return v3

    .line 289
    :cond_f
    iget-object v5, v1, Lcom/taobao/accs/internal/e;->b:Landroid/content/Context;

    invoke-static {v5}, Lcom/taobao/accs/a/a;->a(Landroid/content/Context;)Lcom/taobao/accs/a/a$a;

    move-result-object v5

    iget-object v5, v5, Lcom/taobao/accs/a/a$a;->a:Ljava/lang/String;

    .line 291
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_12

    iget-object v6, v1, Lcom/taobao/accs/internal/e;->b:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_12

    invoke-static {}, Lcom/taobao/accs/a/a;->b()Z

    move-result v6

    if-nez v6, :cond_10

    goto :goto_5

    .line 297
    :cond_10
    iget-boolean v2, v1, Lcom/taobao/accs/internal/e;->c:Z

    if-nez v2, :cond_11

    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-static {v4, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_11

    const-string v2, "ElectionServiceImpl"

    const-string v4, "not electioning and not host, stop"

    .line 298
    new-array v5, v10, [Ljava/lang/Object;

    invoke-static {v2, v4, v5}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 299
    invoke-virtual {v1, v9}, Lcom/taobao/accs/internal/e;->a(Z)V

    :cond_11
    return v3

    :cond_12
    :goto_5
    const-string v4, "ElectionServiceImpl"

    const-string v6, "deliver to channelservice"

    .line 294
    new-array v3, v3, [Ljava/lang/Object;

    const-string v7, "host pkg"

    aput-object v7, v3, v10

    aput-object v5, v3, v9

    invoke-static {v4, v6, v3}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 295
    invoke-virtual/range {p0 .. p1}, Lcom/taobao/accs/internal/e;->c(Landroid/content/Intent;)I

    move-result v2

    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public a(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public a()V
    .locals 5

    const-string v0, "ElectionServiceImpl"

    const-string v1, "onCreate,"

    const/4 v2, 0x2

    .line 100
    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "sdkv"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/16 v3, 0xdd

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 9

    const/4 v0, 0x0

    .line 576
    :try_start_0
    iget-boolean v1, p0, Lcom/taobao/accs/internal/e;->c:Z

    if-eqz v1, :cond_0

    const-string p1, "ElectionServiceImpl"

    const-string p2, "isElectioning return"

    .line 577
    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {p1, p2, v1}, Lcom/taobao/accs/utl/ALog;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 580
    :cond_0
    invoke-static {p1}, Lcom/taobao/accs/a/a;->a(Landroid/content/Context;)Lcom/taobao/accs/a/a$a;

    move-result-object v1

    iput-object v1, p0, Lcom/taobao/accs/internal/e;->o:Lcom/taobao/accs/a/a$a;

    .line 581
    iget-object v1, p0, Lcom/taobao/accs/internal/e;->o:Lcom/taobao/accs/a/a$a;

    iget v1, v1, Lcom/taobao/accs/a/a$a;->b:I

    const/16 v2, 0x14

    const-wide/16 v3, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-le v1, v2, :cond_1

    const-string v1, "ElectionServiceImpl"

    const-string v2, "startElection too many times, return"

    .line 582
    new-array v5, v5, [Ljava/lang/Object;

    const-string v7, "times"

    aput-object v7, v5, v0

    iget-object v7, p0, Lcom/taobao/accs/internal/e;->o:Lcom/taobao/accs/a/a$a;

    iget v7, v7, Lcom/taobao/accs/a/a$a;->b:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v1, v2, v5}, Lcom/taobao/accs/utl/ALog;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v1, "accs"

    const-string v2, "ele_over_max_times"

    .line 583
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/taobao/accs/utl/b;->q(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, v2, p1, v3, v4}, Lcom/taobao/accs/utl/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    return-void

    .line 587
    :cond_1
    new-instance v1, Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;

    invoke-direct {v1}, Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;-><init>()V

    iput-object v1, p0, Lcom/taobao/accs/internal/e;->k:Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;

    .line 588
    iget-object v1, p0, Lcom/taobao/accs/internal/e;->k:Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;

    const-string v2, "local"

    iput-object v2, v1, Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;->type:Ljava/lang/String;

    .line 589
    iget-object v1, p0, Lcom/taobao/accs/internal/e;->k:Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;

    iput-object p2, v1, Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;->reason:Ljava/lang/String;

    const-string v1, "accs"

    const-string v2, "ele_start_times"

    .line 591
    invoke-static {v1, v2, p2, v3, v4}, Lcom/taobao/accs/utl/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    .line 593
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    .line 595
    new-instance v1, Landroid/content/Intent;

    invoke-static {}, Lcom/taobao/accs/a/a;->c()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x20

    .line 597
    invoke-virtual {p2, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p2

    .line 601
    iput-boolean v6, p0, Lcom/taobao/accs/internal/e;->c:Z

    if-eqz p2, :cond_7

    .line 602
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v1, v5, :cond_2

    goto/16 :goto_1

    .line 607
    :cond_2
    sput v0, Lcom/taobao/accs/internal/e;->g:I

    const-string v1, "ElectionServiceImpl"

    const-string v2, "startElection begin"

    const/4 v3, 0x4

    .line 608
    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "locallist"

    aput-object v4, v3, v0

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    const-string v4, "size"

    aput-object v4, v3, v5

    const/4 v4, 0x3

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v3, v4

    invoke-static {v1, v2, v3}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 609
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    if-nez v1, :cond_3

    goto :goto_0

    .line 613
    :cond_3
    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-nez v2, :cond_4

    goto :goto_0

    .line 616
    :cond_4
    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 617
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "ElectionServiceImpl"

    const-string v3, "startElection unvailable app"

    .line 618
    new-array v4, v5, [Ljava/lang/Object;

    const-string v7, "pkg"

    aput-object v7, v4, v0

    aput-object v1, v4, v6

    invoke-static {v2, v3, v4}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 621
    :cond_5
    new-instance v2, Landroid/content/Intent;

    invoke-static {}, Lcom/taobao/accs/a/a;->c()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "operate"

    .line 622
    sget-object v4, Lcom/taobao/accs/common/Constants$Operate;->ASK_VERSION:Lcom/taobao/accs/common/Constants$Operate;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 623
    invoke-virtual {v2, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "packageName"

    .line 624
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "elversion"

    .line 625
    invoke-virtual {v2, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v3, "com.taobao.accs.ChannelService"

    .line 626
    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "ElectionServiceImpl"

    const-string v4, "startElection askversion"

    .line 627
    new-array v7, v5, [Ljava/lang/Object;

    const-string v8, "receive pkg"

    aput-object v8, v7, v0

    aput-object v1, v7, v6

    invoke-static {v3, v4, v7}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 628
    invoke-virtual {p1, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 629
    sget v1, Lcom/taobao/accs/internal/e;->g:I

    add-int/2addr v1, v6

    sput v1, Lcom/taobao/accs/internal/e;->g:I

    goto :goto_0

    .line 631
    :cond_6
    iput-boolean v0, p0, Lcom/taobao/accs/internal/e;->p:Z

    .line 632
    iget-object p1, p0, Lcom/taobao/accs/internal/e;->f:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance p2, Lcom/taobao/accs/internal/h;

    invoke-direct {p2, p0}, Lcom/taobao/accs/internal/h;-><init>(Lcom/taobao/accs/internal/e;)V

    const-wide/16 v1, 0x3

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, p2, v1, v2, v3}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    iput-object p1, p0, Lcom/taobao/accs/internal/e;->l:Ljava/util/concurrent/ScheduledFuture;

    goto :goto_3

    :cond_7
    :goto_1
    const-string p1, "ElectionServiceImpl"

    const-string v1, "startElection apps < 2"

    .line 603
    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "services"

    aput-object v3, v2, v0

    if-nez p2, :cond_8

    const-string p2, "null"

    goto :goto_2

    :cond_8
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_2
    aput-object p2, v2, v6

    invoke-static {p1, v1, v2}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 604
    invoke-direct {p0}, Lcom/taobao/accs/internal/e;->g()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string p2, "ElectionServiceImpl"

    const-string v1, "startElection error"

    .line 642
    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {p2, v1, p1, v2}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 643
    iput-boolean v0, p0, Lcom/taobao/accs/internal/e;->c:Z

    .line 644
    iget-object p2, p0, Lcom/taobao/accs/internal/e;->k:Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;

    if-eqz p2, :cond_9

    .line 645
    iget-object p2, p0, Lcom/taobao/accs/internal/e;->k:Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;

    const/16 v0, -0x385

    iput v0, p2, Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;->errorCode:I

    .line 646
    iget-object p2, p0, Lcom/taobao/accs/internal/e;->k:Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;->errorMsg:Ljava/lang/String;

    :cond_9
    :goto_3
    return-void
.end method

.method public a(Z)V
    .locals 3

    const-string v0, "ElectionServiceImpl"

    .line 800
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "shouldStopSelf, kill:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 801
    iget-object v0, p0, Lcom/taobao/accs/internal/e;->i:Landroid/app/Service;

    if-eqz v0, :cond_0

    .line 802
    iget-object v0, p0, Lcom/taobao/accs/internal/e;->i:Landroid/app/Service;

    invoke-virtual {v0}, Landroid/app/Service;->stopSelf()V

    :cond_0
    if-eqz p1, :cond_1

    .line 805
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p1

    invoke-static {p1}, Landroid/os/Process;->killProcess(I)V

    :cond_1
    return-void
.end method

.method public b()V
    .locals 3

    const-string v0, "ElectionServiceImpl"

    const-string v1, "Service onDestroy"

    const/4 v2, 0x0

    .line 318
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 319
    iput-object v0, p0, Lcom/taobao/accs/internal/e;->b:Landroid/content/Context;

    .line 320
    iput-object v0, p0, Lcom/taobao/accs/internal/e;->i:Landroid/app/Service;

    return-void
.end method

.method public b(Landroid/content/Intent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public abstract c(Landroid/content/Intent;)I
.end method

.method public abstract d()V
.end method
