.class public abstract Lcom/taobao/accs/f/c;
.super Ljava/lang/Object;
.source "Taobao"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field protected c:I

.field protected d:Landroid/content/Context;

.field protected e:Lcom/taobao/accs/data/b;

.field protected f:I

.field protected volatile g:Z

.field public h:Lcom/taobao/accs/client/d;

.field public i:Lcom/taobao/accs/b;

.field protected j:Ljava/lang/String;

.field protected k:Ljava/lang/String;

.field protected l:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/Integer;",
            "Lcom/taobao/accs/data/Message;",
            ">;"
        }
    .end annotation
.end field

.field public m:Ljava/lang/String;

.field private n:J

.field private o:Ljava/lang/Runnable;

.field private p:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Landroid/content/Context;ILjava/lang/String;)V
    .locals 4

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 59
    iput-object v0, p0, Lcom/taobao/accs/f/c;->b:Ljava/lang/String;

    const/4 v0, 0x0

    .line 69
    iput v0, p0, Lcom/taobao/accs/f/c;->f:I

    const-wide/16 v1, 0x0

    .line 83
    iput-wide v1, p0, Lcom/taobao/accs/f/c;->n:J

    .line 85
    iput-boolean v0, p0, Lcom/taobao/accs/f/c;->g:Z

    const/4 v1, 0x0

    .line 93
    iput-object v1, p0, Lcom/taobao/accs/f/c;->k:Ljava/lang/String;

    .line 95
    new-instance v1, Lcom/taobao/accs/f/a;

    invoke-direct {v1, p0}, Lcom/taobao/accs/f/a;-><init>(Lcom/taobao/accs/f/c;)V

    iput-object v1, p0, Lcom/taobao/accs/f/c;->l:Ljava/util/LinkedHashMap;

    .line 107
    iput p2, p0, Lcom/taobao/accs/f/c;->c:I

    .line 108
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    iput-object p2, p0, Lcom/taobao/accs/f/c;->d:Landroid/content/Context;

    .line 110
    invoke-static {p3}, Lcom/taobao/accs/b;->a(Ljava/lang/String;)Lcom/taobao/accs/b;

    move-result-object p2

    if-nez p2, :cond_0

    .line 112
    invoke-virtual {p0}, Lcom/taobao/accs/f/c;->d()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BaseConnection config null!!"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 114
    :try_start_0
    new-instance v1, Lcom/taobao/accs/b$a;

    invoke-direct {v1}, Lcom/taobao/accs/b$a;-><init>()V

    invoke-static {p1}, Lcom/taobao/accs/ACCSManager;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/taobao/accs/b$a;->a(Ljava/lang/String;)Lcom/taobao/accs/b$a;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/taobao/accs/b$a;->f(Ljava/lang/String;)Lcom/taobao/accs/b$a;

    move-result-object p3

    invoke-virtual {p3}, Lcom/taobao/accs/b$a;->a()Lcom/taobao/accs/b;

    move-result-object p3
    :try_end_0
    .catch Lcom/taobao/accs/AccsException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p2, p3

    goto :goto_0

    :catch_0
    move-exception p3

    .line 118
    invoke-virtual {p0}, Lcom/taobao/accs/f/c;->d()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BaseConnection build config"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, p3, v0}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 121
    :cond_0
    :goto_0
    invoke-virtual {p2}, Lcom/taobao/accs/b;->k()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/taobao/accs/f/c;->m:Ljava/lang/String;

    .line 122
    invoke-virtual {p2}, Lcom/taobao/accs/b;->b()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/taobao/accs/f/c;->b:Ljava/lang/String;

    .line 123
    iput-object p2, p0, Lcom/taobao/accs/f/c;->i:Lcom/taobao/accs/b;

    .line 124
    new-instance p2, Lcom/taobao/accs/data/b;

    invoke-direct {p2, p1, p0}, Lcom/taobao/accs/data/b;-><init>(Landroid/content/Context;Lcom/taobao/accs/f/c;)V

    iput-object p2, p0, Lcom/taobao/accs/f/c;->e:Lcom/taobao/accs/data/b;

    .line 125
    iget-object p1, p0, Lcom/taobao/accs/f/c;->e:Lcom/taobao/accs/data/b;

    iget p2, p0, Lcom/taobao/accs/f/c;->c:I

    iput p2, p1, Lcom/taobao/accs/data/b;->b:I

    .line 127
    invoke-static {}, Lcom/taobao/accs/common/a;->a()Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object p1

    new-instance p2, Lcom/taobao/accs/f/d;

    invoke-direct {p2, p0}, Lcom/taobao/accs/f/d;-><init>(Lcom/taobao/accs/f/c;)V

    const-wide/16 v0, 0x1388

    sget-object p3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, p2, v0, v1, p3}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method


# virtual methods
.method protected a(I)Ljava/lang/String;
    .locals 0

    packed-switch p1, :pswitch_data_0

    const-string p1, "DISCONNECTED"

    goto :goto_0

    :pswitch_0
    const-string p1, "DISCONNECTING"

    goto :goto_0

    :pswitch_1
    const-string p1, "DISCONNECTED"

    goto :goto_0

    :pswitch_2
    const-string p1, "CONNECTING"

    goto :goto_0

    :pswitch_3
    const-string p1, "CONNECTED"

    :goto_0
    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 332
    iget-object v0, p0, Lcom/taobao/accs/f/c;->i:Lcom/taobao/accs/b;

    invoke-virtual {v0}, Lcom/taobao/accs/b;->d()Ljava/lang/String;

    move-result-object v0

    .line 333
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, ""

    goto :goto_0

    :cond_0
    move-object v2, p1

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 335
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "https://"

    .line 336
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string p1, ""

    :cond_1
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 338
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const-string v0, "InAppConnection"

    const-string v2, "getHost"

    const/4 v3, 0x0

    .line 341
    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, p1, v3}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    move-object p1, v1

    :goto_1
    return-object p1
.end method

.method public abstract a()V
.end method

.method protected a(Landroid/content/Context;)V
    .locals 5

    const/4 v0, 0x0

    .line 353
    :try_start_0
    sget-object v1, Lanet/channel/entity/ENV;->ONLINE:Lanet/channel/entity/ENV;

    .line 354
    sget v2, Lcom/taobao/accs/b;->b:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 355
    sget-object v1, Lanet/channel/entity/ENV;->TEST:Lanet/channel/entity/ENV;

    .line 356
    invoke-static {v1}, Lanet/channel/g;->a(Lanet/channel/entity/ENV;)V

    goto :goto_0

    .line 357
    :cond_0
    sget v2, Lcom/taobao/accs/b;->b:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 358
    sget-object v1, Lanet/channel/entity/ENV;->PREPARE:Lanet/channel/entity/ENV;

    .line 359
    invoke-static {v1}, Lanet/channel/g;->a(Lanet/channel/entity/ENV;)V

    .line 362
    :cond_1
    :goto_0
    new-instance v2, Lanet/channel/b$a;

    invoke-direct {v2}, Lanet/channel/b$a;-><init>()V

    iget-object v3, p0, Lcom/taobao/accs/f/c;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lanet/channel/b$a;->b(Ljava/lang/String;)Lanet/channel/b$a;

    move-result-object v2

    iget-object v3, p0, Lcom/taobao/accs/f/c;->i:Lcom/taobao/accs/b;

    invoke-virtual {v3}, Lcom/taobao/accs/b;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lanet/channel/b$a;->d(Ljava/lang/String;)Lanet/channel/b$a;

    move-result-object v2

    iget-object v3, p0, Lcom/taobao/accs/f/c;->i:Lcom/taobao/accs/b;

    invoke-virtual {v3}, Lcom/taobao/accs/b;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lanet/channel/b$a;->c(Ljava/lang/String;)Lanet/channel/b$a;

    move-result-object v2

    invoke-virtual {v2, v1}, Lanet/channel/b$a;->a(Lanet/channel/entity/ENV;)Lanet/channel/b$a;

    move-result-object v1

    iget-object v2, p0, Lcom/taobao/accs/f/c;->i:Lcom/taobao/accs/b;

    invoke-virtual {v2}, Lcom/taobao/accs/b;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lanet/channel/b$a;->a(Ljava/lang/String;)Lanet/channel/b$a;

    move-result-object v1

    .line 369
    invoke-virtual {v1}, Lanet/channel/b$a;->a()Lanet/channel/b;

    move-result-object v1

    .line 370
    invoke-static {p1, v1}, Lanet/channel/g;->a(Landroid/content/Context;Lanet/channel/b;)V

    const-string p1, "acs"

    .line 372
    iget-object v1, p0, Lcom/taobao/accs/f/c;->i:Lcom/taobao/accs/b;

    invoke-virtual {v1}, Lcom/taobao/accs/b;->h()I

    move-result v1

    const/16 v2, 0xa

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lcom/taobao/accs/f/c;->i:Lcom/taobao/accs/b;

    invoke-virtual {v1}, Lcom/taobao/accs/b;->h()I

    move-result v1

    const/16 v2, 0xb

    if-ne v1, v2, :cond_3

    :cond_2
    const-string p1, "open"

    .line 375
    :cond_3
    invoke-static {}, Lanet/channel/strategy/m;->a()Lanet/channel/strategy/m;

    move-result-object v1

    iget-object v2, p0, Lcom/taobao/accs/f/c;->i:Lcom/taobao/accs/b;

    invoke-virtual {v2}, Lcom/taobao/accs/b;->d()Ljava/lang/String;

    move-result-object v2

    const-string v3, "http2"

    const-string v4, "0rtt"

    invoke-static {v3, v4, p1, v0}, Lanet/channel/strategy/ConnProtocol;->valueOf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lanet/channel/strategy/ConnProtocol;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Lanet/channel/strategy/m;->a(Ljava/lang/String;Lanet/channel/strategy/ConnProtocol;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 378
    invoke-virtual {p0}, Lcom/taobao/accs/f/c;->d()Ljava/lang/String;

    move-result-object v1

    const-string v2, "initAwcn"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, p1, v0}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :goto_1
    return-void
.end method

.method protected abstract a(Lcom/taobao/accs/data/Message;Z)V
.end method

.method protected a(Ljava/lang/String;J)V
    .locals 2

    .line 243
    new-instance v0, Lcom/taobao/accs/f/e;

    invoke-direct {v0, p0, p1}, Lcom/taobao/accs/f/e;-><init>(Lcom/taobao/accs/f/c;Ljava/lang/String;)V

    .line 253
    invoke-static {}, Lcom/taobao/accs/common/a;->a()Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object p1

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, p2, p3, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method protected abstract a(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract a(ZZ)V
.end method

.method protected a(Lcom/taobao/accs/data/Message;I)Z
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 265
    :try_start_0
    iget v2, p1, Lcom/taobao/accs/data/Message;->P:I

    const/4 v3, 0x3

    if-le v2, v3, :cond_0

    return v0

    .line 268
    :cond_0
    iget v2, p1, Lcom/taobao/accs/data/Message;->P:I

    add-int/2addr v2, v1

    iput v2, p1, Lcom/taobao/accs/data/Message;->P:I

    int-to-long v2, p2

    .line 269
    iput-wide v2, p1, Lcom/taobao/accs/data/Message;->O:J

    .line 270
    invoke-virtual {p0}, Lcom/taobao/accs/f/c;->d()Ljava/lang/String;

    move-result-object p2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reSend dataid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/taobao/accs/data/Message;->q:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " retryTimes:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/taobao/accs/data/Message;->P:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {p2, v2, v3}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 271
    invoke-virtual {p0, p1, v1}, Lcom/taobao/accs/f/c;->b(Lcom/taobao/accs/data/Message;Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 273
    :try_start_1
    invoke-virtual {p1}, Lcom/taobao/accs/data/Message;->e()Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 274
    invoke-virtual {p1}, Lcom/taobao/accs/data/Message;->e()Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;

    move-result-object p2

    const-wide/16 v2, 0x0

    iput-wide v2, p2, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->take_date:J

    .line 275
    invoke-virtual {p1}, Lcom/taobao/accs/data/Message;->e()Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;

    move-result-object p2

    iput-wide v2, p2, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->to_tnet_date:J

    .line 276
    invoke-virtual {p1}, Lcom/taobao/accs/data/Message;->e()Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;

    move-result-object p2

    iget v2, p1, Lcom/taobao/accs/data/Message;->P:I

    iput v2, p2, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->retry_times:I

    .line 278
    iget p2, p1, Lcom/taobao/accs/data/Message;->P:I

    if-ne p2, v1, :cond_1

    const-string p2, "accs"

    const-string v2, "resend"

    const-string v3, "total"

    const-wide/16 v4, 0x0

    .line 279
    invoke-static {p2, v2, v3, v4, v5}, Lcom/taobao/accs/utl/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p2

    goto :goto_0

    :catch_1
    move-exception p2

    const/4 v1, 0x0

    .line 283
    :goto_0
    iget-object v2, p0, Lcom/taobao/accs/f/c;->e:Lcom/taobao/accs/data/b;

    const/4 v3, -0x8

    invoke-virtual {v2, p1, v3}, Lcom/taobao/accs/data/b;->a(Lcom/taobao/accs/data/Message;I)V

    .line 284
    invoke-virtual {p0}, Lcom/taobao/accs/f/c;->d()Ljava/lang/String;

    move-result-object p1

    const-string v2, "reSend error"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v2, p2, v0}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_1
    :goto_1
    return v1
.end method

.method protected b(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 433
    iget-object v0, p0, Lcom/taobao/accs/f/c;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/taobao/accs/utl/b;->q(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 436
    :try_start_0
    invoke-static {v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    .line 438
    invoke-virtual {p0}, Lcom/taobao/accs/f/c;->d()Ljava/lang/String;

    move-result-object v2

    const-string v3, "encode"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v1, v4}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 442
    :goto_0
    iget-object v1, p0, Lcom/taobao/accs/f/c;->d:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/taobao/accs/f/c;->i()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/taobao/accs/f/c;->i:Lcom/taobao/accs/b;

    invoke-virtual {v3}, Lcom/taobao/accs/b;->c()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/taobao/accs/f/c;->d:Landroid/content/Context;

    invoke-static {v4}, Lcom/taobao/accs/utl/b;->q(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/taobao/accs/f/c;->m:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4, v5}, Lcom/taobao/accs/utl/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 444
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x100

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 446
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "auth?1="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&2="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&3="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/taobao/accs/f/c;->i()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 450
    iget-object p1, p0, Lcom/taobao/accs/f/c;->k:Ljava/lang/String;

    if-eqz p1, :cond_0

    const-string p1, "&4="

    .line 451
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/taobao/accs/f/c;->k:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string p1, "&5="

    .line 453
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/taobao/accs/f/c;->c:I

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "&6="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/taobao/accs/f/c;->d:Landroid/content/Context;

    invoke-static {p1}, Lcom/taobao/accs/utl/b;->l(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&7="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/taobao/accs/f/c;->d:Landroid/content/Context;

    invoke-static {p1}, Lcom/taobao/accs/utl/b;->t(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&8="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/taobao/accs/f/c;->c:I

    const/16 v0, 0xdd

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    const-string p1, "1.1.2"

    goto :goto_1

    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    :goto_1
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "&9="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "&10="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "&11="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "&12="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/taobao/accs/f/c;->d:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&13="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/taobao/accs/f/c;->d:Landroid/content/Context;

    invoke-static {p1}, Lcom/taobao/accs/utl/b;->v(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&14="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/taobao/accs/f/c;->a:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&15="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&16="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&17="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "&19="

    .line 466
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/taobao/accs/f/c;->k()Z

    move-result p1

    xor-int/2addr p1, v1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 468
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public abstract b()V
.end method

.method protected b(I)V
    .locals 5

    if-gez p1, :cond_0

    .line 292
    invoke-virtual {p0}, Lcom/taobao/accs/f/c;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "reSendAck"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "dataId"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 293
    iget-object v0, p0, Lcom/taobao/accs/f/c;->l:Ljava/util/LinkedHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/taobao/accs/data/Message;

    if-eqz p1, :cond_0

    const/16 v0, 0x1388

    .line 295
    invoke-virtual {p0, p1, v0}, Lcom/taobao/accs/f/c;->a(Lcom/taobao/accs/data/Message;I)Z

    const-string p1, "accs"

    const-string v0, "resend"

    const-string v1, "ack"

    const-wide/16 v2, 0x0

    .line 296
    invoke-static {p1, v0, v1, v2, v3}, Lcom/taobao/accs/utl/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    :cond_0
    return-void
.end method

.method public b(Landroid/content/Context;)V
    .locals 3

    .line 404
    :try_start_0
    new-instance v0, Lcom/taobao/accs/f/g;

    invoke-direct {v0, p0, p1}, Lcom/taobao/accs/f/g;-><init>(Lcom/taobao/accs/f/c;Landroid/content/Context;)V

    const-wide/16 v1, 0x2710

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v0, v1, v2, p1}, Lcom/taobao/accs/common/a;->a(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 427
    invoke-virtual {p0}, Lcom/taobao/accs/f/c;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "startChannelService"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, p1, v2}, Lcom/taobao/accs/utl/ALog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public b(Lcom/taobao/accs/data/Message;I)V
    .locals 1

    .line 384
    iget-object v0, p0, Lcom/taobao/accs/f/c;->e:Lcom/taobao/accs/data/b;

    invoke-virtual {v0, p1, p2}, Lcom/taobao/accs/data/b;->a(Lcom/taobao/accs/data/Message;I)V

    return-void
.end method

.method public b(Lcom/taobao/accs/data/Message;Z)V
    .locals 9

    .line 187
    iget-boolean v0, p1, Lcom/taobao/accs/data/Message;->c:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/taobao/accs/f/c;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/taobao/accs/utl/b;->p(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 188
    invoke-virtual {p0}, Lcom/taobao/accs/f/c;->d()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "no network:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/taobao/accs/data/Message;->q:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2, v0, v1}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 189
    iget-object p2, p0, Lcom/taobao/accs/f/c;->e:Lcom/taobao/accs/data/b;

    const/16 v0, -0xd

    invoke-virtual {p2, p1, v0}, Lcom/taobao/accs/data/b;->a(Lcom/taobao/accs/data/Message;I)V

    return-void

    .line 193
    :cond_0
    invoke-virtual {p1}, Lcom/taobao/accs/data/Message;->a()I

    move-result v0

    const/4 v2, 0x2

    const-wide/16 v3, 0x0

    if-eq v0, v2, :cond_1

    .line 194
    iget-object v0, p0, Lcom/taobao/accs/f/c;->e:Lcom/taobao/accs/data/b;

    iget-object v0, v0, Lcom/taobao/accs/data/b;->d:Lcom/taobao/accs/flowcontrol/FlowControl;

    iget-object v5, p1, Lcom/taobao/accs/data/Message;->F:Ljava/lang/String;

    iget-object v6, p1, Lcom/taobao/accs/data/Message;->T:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Lcom/taobao/accs/flowcontrol/FlowControl;->a(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v5

    goto :goto_0

    :cond_1
    move-wide v5, v3

    :goto_0
    const-wide/16 v7, -0x1

    cmp-long v0, v5, v7

    if-nez v0, :cond_2

    .line 197
    invoke-virtual {p0}, Lcom/taobao/accs/f/c;->d()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "servier limit high. dataId:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/taobao/accs/data/Message;->q:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2, v0, v1}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 198
    iget-object p2, p0, Lcom/taobao/accs/f/c;->e:Lcom/taobao/accs/data/b;

    const v0, 0x11185

    invoke-virtual {p2, p1, v0}, Lcom/taobao/accs/data/b;->a(Lcom/taobao/accs/data/Message;I)V

    return-void

    :cond_2
    const-wide/16 v7, -0x3e8

    cmp-long v0, v5, v7

    if-nez v0, :cond_3

    .line 203
    invoke-virtual {p0}, Lcom/taobao/accs/f/c;->d()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "servier limit high for brush. dataId:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/taobao/accs/data/Message;->q:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2, v0, v1}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 204
    iget-object p2, p0, Lcom/taobao/accs/f/c;->e:Lcom/taobao/accs/data/b;

    const v0, 0x11187

    invoke-virtual {p2, p1, v0}, Lcom/taobao/accs/data/b;->a(Lcom/taobao/accs/data/Message;I)V

    return-void

    :cond_3
    cmp-long v0, v5, v3

    if-lez v0, :cond_5

    .line 209
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v7, p0, Lcom/taobao/accs/f/c;->n:J

    cmp-long v0, v3, v7

    if-lez v0, :cond_4

    .line 210
    iput-wide v5, p1, Lcom/taobao/accs/data/Message;->O:J

    goto :goto_1

    .line 212
    :cond_4
    iget-wide v3, p0, Lcom/taobao/accs/f/c;->n:J

    add-long v7, v3, v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long v5, v7, v3

    iput-wide v5, p1, Lcom/taobao/accs/data/Message;->O:J

    .line 214
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p1, Lcom/taobao/accs/data/Message;->O:J

    add-long v7, v3, v5

    iput-wide v7, p0, Lcom/taobao/accs/f/c;->n:J

    .line 215
    invoke-virtual {p0}, Lcom/taobao/accs/f/c;->d()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "send message, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/taobao/accs/data/Message;->a()I

    move-result v4

    invoke-static {v4}, Lcom/taobao/accs/data/Message$a;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " delay:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p1, Lcom/taobao/accs/data/Message;->O:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " dataId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/taobao/accs/data/Message;->q:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_5
    const-string v0, "accs"

    .line 218
    iget-object v3, p1, Lcom/taobao/accs/data/Message;->F:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 219
    invoke-virtual {p0}, Lcom/taobao/accs/f/c;->d()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "send message, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/taobao/accs/data/Message;->a()I

    move-result v4

    invoke-static {v4}, Lcom/taobao/accs/data/Message$a;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " delay:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p1, Lcom/taobao/accs/data/Message;->O:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " dataId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/taobao/accs/data/Message;->q:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 220
    :cond_6
    sget-object v0, Lcom/taobao/accs/utl/ALog$Level;->D:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v0}, Lcom/taobao/accs/utl/ALog;->a(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 221
    invoke-virtual {p0}, Lcom/taobao/accs/f/c;->d()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "send message, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/taobao/accs/data/Message;->a()I

    move-result v4

    invoke-static {v4}, Lcom/taobao/accs/data/Message$a;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " delay:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p1, Lcom/taobao/accs/data/Message;->O:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " dataId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/taobao/accs/data/Message;->q:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lcom/taobao/accs/utl/ALog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 225
    :cond_7
    :goto_2
    :try_start_0
    iget-object v0, p0, Lcom/taobao/accs/f/c;->j:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 226
    iget-object v0, p0, Lcom/taobao/accs/f/c;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/taobao/accs/utl/b;->q(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/accs/f/c;->j:Ljava/lang/String;

    .line 229
    :cond_8
    invoke-virtual {p1}, Lcom/taobao/accs/data/Message;->g()Z

    move-result v0

    if-nez v0, :cond_9

    .line 230
    invoke-virtual {p0, p1, p2}, Lcom/taobao/accs/f/c;->a(Lcom/taobao/accs/data/Message;Z)V

    goto :goto_3

    .line 232
    :cond_9
    iget-object p2, p0, Lcom/taobao/accs/f/c;->e:Lcom/taobao/accs/data/b;

    const/16 v0, -0x9

    invoke-virtual {p2, p1, v0}, Lcom/taobao/accs/data/b;->a(Lcom/taobao/accs/data/Message;I)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 235
    :catch_0
    iget-object p2, p0, Lcom/taobao/accs/f/c;->e:Lcom/taobao/accs/data/b;

    const v0, 0x11178

    invoke-virtual {p2, p1, v0}, Lcom/taobao/accs/data/b;->a(Lcom/taobao/accs/data/Message;I)V

    .line 236
    invoke-virtual {p0}, Lcom/taobao/accs/f/c;->d()Ljava/lang/String;

    move-result-object p1

    const-string p2, "msg queue full"

    new-array v0, v2, [Ljava/lang/Object;

    const-string v2, "size"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {}, Lcom/taobao/accs/common/a;->b()Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {p1, p2, v0}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_3
    return-void
.end method

.method public abstract c()Lcom/taobao/accs/ut/a/c;
.end method

.method protected abstract d()Ljava/lang/String;
.end method

.method public e()V
    .locals 0

    return-void
.end method

.method protected f()V
    .locals 5

    .line 304
    iget-object v0, p0, Lcom/taobao/accs/f/c;->o:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    .line 305
    new-instance v0, Lcom/taobao/accs/f/f;

    invoke-direct {v0, p0}, Lcom/taobao/accs/f/f;-><init>(Lcom/taobao/accs/f/c;)V

    iput-object v0, p0, Lcom/taobao/accs/f/c;->o:Ljava/lang/Runnable;

    .line 317
    :cond_0
    invoke-virtual {p0}, Lcom/taobao/accs/f/c;->g()V

    .line 318
    invoke-static {}, Lcom/taobao/accs/common/a;->a()Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/accs/f/c;->o:Ljava/lang/Runnable;

    const-wide/32 v2, 0x9c40

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/accs/f/c;->p:Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method protected g()V
    .locals 2

    .line 322
    iget-object v0, p0, Lcom/taobao/accs/f/c;->p:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    .line 323
    iget-object v0, p0, Lcom/taobao/accs/f/c;->p:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    :cond_0
    return-void
.end method

.method protected h()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .line 392
    iget-object v0, p0, Lcom/taobao/accs/f/c;->b:Ljava/lang/String;

    return-object v0
.end method

.method public j()Lcom/taobao/accs/client/d;
    .locals 3

    .line 396
    iget-object v0, p0, Lcom/taobao/accs/f/c;->h:Lcom/taobao/accs/client/d;

    if-nez v0, :cond_0

    .line 397
    new-instance v0, Lcom/taobao/accs/client/d;

    iget-object v1, p0, Lcom/taobao/accs/f/c;->d:Landroid/content/Context;

    iget-object v2, p0, Lcom/taobao/accs/f/c;->m:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/taobao/accs/client/d;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/taobao/accs/f/c;->h:Lcom/taobao/accs/client/d;

    .line 399
    :cond_0
    iget-object v0, p0, Lcom/taobao/accs/f/c;->h:Lcom/taobao/accs/client/d;

    return-object v0
.end method

.method public k()Z
    .locals 2

    .line 473
    iget-object v0, p0, Lcom/taobao/accs/f/c;->i:Lcom/taobao/accs/b;

    invoke-virtual {v0}, Lcom/taobao/accs/b;->f()I

    move-result v0

    const/4 v1, 0x2

    if-ne v1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
