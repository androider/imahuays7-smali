.class public Lcom/taobao/accs/data/e;
.super Ljava/lang/Object;
.source "Taobao"


# static fields
.field private static a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile b:Lcom/taobao/accs/data/e;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/taobao/accs/data/e;
    .locals 2

    .line 45
    sget-object v0, Lcom/taobao/accs/data/e;->b:Lcom/taobao/accs/data/e;

    if-nez v0, :cond_1

    .line 46
    const-class v0, Lcom/taobao/accs/data/e;

    monitor-enter v0

    .line 47
    :try_start_0
    sget-object v1, Lcom/taobao/accs/data/e;->b:Lcom/taobao/accs/data/e;

    if-nez v1, :cond_0

    .line 48
    new-instance v1, Lcom/taobao/accs/data/e;

    invoke-direct {v1}, Lcom/taobao/accs/data/e;-><init>()V

    sput-object v1, Lcom/taobao/accs/data/e;->b:Lcom/taobao/accs/data/e;

    .line 50
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 52
    :cond_1
    :goto_0
    sget-object v0, Lcom/taobao/accs/data/e;->b:Lcom/taobao/accs/data/e;

    return-object v0
.end method

.method private a(Landroid/content/Context;)V
    .locals 3

    .line 407
    invoke-static {}, Lcom/taobao/accs/a/a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 408
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/taobao/accs/a/a;->c()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "operate"

    .line 409
    sget-object v2, Lcom/taobao/accs/common/Constants$Operate;->TRY_ELECTION:Lcom/taobao/accs/common/Constants$Operate;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 410
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 411
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/taobao/accs/data/e;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 412
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_0
    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 57
    :try_start_0
    invoke-static {}, Lcom/taobao/accs/common/a;->a()Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v0

    new-instance v1, Lcom/taobao/accs/data/f;

    invoke-direct {v1, p0, p1}, Lcom/taobao/accs/data/f;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "MsgDistribute"

    const-string v0, "distribMessage"

    const/4 v1, 0x0

    .line 67
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, p0, v1}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 68
    invoke-static {}, Lcom/taobao/accs/utl/a;->a()Lcom/taobao/accs/utl/a;

    move-result-object p1

    const v0, 0x101d1

    const-string v1, "MsgToBuss8"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "distribMessage"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/16 v2, 0xdd

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v0, v1, p0, v2}, Lcom/taobao/accs/utl/a;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private a(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/taobao/accs/e;I)V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p8, :cond_2

    const/16 v4, 0xc8

    packed-switch p4, :pswitch_data_0

    packed-switch p4, :pswitch_data_1

    goto/16 :goto_1

    .line 248
    :pswitch_0
    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "MsgDistribute"

    const-string v4, "serviceId isEmpty"

    .line 249
    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {p1, v4, v5}, Lcom/taobao/accs/utl/ALog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string p1, "data"

    .line 250
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object p1

    if-eqz p1, :cond_2

    .line 253
    invoke-interface {p8, p5, p7, p1}, Lcom/taobao/accs/e;->a(Ljava/lang/String;Ljava/lang/String;[B)V

    goto :goto_1

    .line 258
    :pswitch_1
    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 259
    invoke-interface {p8, p7, p9}, Lcom/taobao/accs/e;->b(Ljava/lang/String;I)V

    goto :goto_1

    .line 245
    :pswitch_2
    invoke-interface {p8, p9}, Lcom/taobao/accs/e;->b(I)V

    goto :goto_1

    .line 242
    :pswitch_3
    invoke-interface {p8, p5, p9}, Lcom/taobao/accs/e;->a(Ljava/lang/String;I)V

    goto :goto_1

    :pswitch_4
    if-ne p9, v4, :cond_0

    .line 237
    invoke-static {p1}, Lcom/taobao/accs/utl/b;->j(Landroid/content/Context;)V

    .line 239
    :cond_0
    invoke-interface {p8, p9}, Lcom/taobao/accs/e;->a(I)V

    goto :goto_1

    .line 219
    :pswitch_5
    instance-of p2, p8, Lcom/taobao/accs/f;

    if-eqz p2, :cond_1

    .line 220
    move-object p2, p8

    check-cast p2, Lcom/taobao/accs/f;

    invoke-virtual {p2, p9, v0}, Lcom/taobao/accs/f;->a(ILjava/lang/String;)V

    goto :goto_0

    .line 222
    :cond_1
    invoke-interface {p8, p9}, Lcom/taobao/accs/e;->c(I)V

    :goto_0
    if-ne p9, v4, :cond_2

    :try_start_0
    const-string p2, "MsgDistribute"

    const-string p5, "start election by bindapp...."

    .line 227
    new-array v4, v1, [Ljava/lang/Object;

    const-string v5, "serviceId"

    aput-object v5, v4, v3

    aput-object p6, v4, v2

    invoke-static {p2, p5, v4}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 228
    invoke-direct {p0, p1}, Lcom/taobao/accs/data/e;->a(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const-string p2, "MsgDistribute"

    const-string p5, "start election is error"

    .line 231
    new-array v4, v1, [Ljava/lang/Object;

    const-string v5, "serviceId"

    aput-object v5, v4, v3

    aput-object p6, v4, v2

    invoke-static {p2, p5, p1, v4}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_2
    :goto_1
    if-ne p4, v2, :cond_3

    .line 268
    sget-object p1, Lcom/taobao/accs/client/a;->b:Lcom/taobao/accs/d;

    if-eqz p1, :cond_3

    if-eqz p3, :cond_3

    sget-object p1, Lcom/taobao/accs/client/a;->b:Lcom/taobao/accs/d;

    invoke-virtual {p1}, Lcom/taobao/accs/d;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 272
    sget-object p1, Lcom/taobao/accs/client/a;->b:Lcom/taobao/accs/d;

    invoke-virtual {p1, p9, v0}, Lcom/taobao/accs/d;->a(ILjava/lang/String;)V

    return-void

    :cond_3
    if-nez p8, :cond_4

    const/16 p1, 0x68

    if-eq p4, p1, :cond_4

    const/16 p1, 0x67

    if-eq p4, p1, :cond_4

    const-string p1, "accs"

    const-string p2, "send_fail"

    const-string p5, "1"

    const-string p8, "appReceiver null return"

    .line 280
    invoke-static {p1, p2, p6, p5, p8}, Lcom/taobao/accs/utl/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "MsgDistribute"

    const-string p2, "appReceiver null!"

    const/4 p5, 0x4

    .line 281
    new-array p5, p5, [Ljava/lang/Object;

    const-string p8, "serviceId"

    aput-object p8, p5, v3

    aput-object p6, p5, v2

    const-string p8, "appkey"

    aput-object p8, p5, v1

    const/4 p8, 0x3

    aput-object p3, p5, p8

    invoke-static {p1, p2, p5}, Lcom/taobao/accs/utl/ALog;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 282
    invoke-static {}, Lcom/taobao/accs/utl/a;->a()Lcom/taobao/accs/utl/a;

    move-result-object v0

    const v1, 0x101d1

    const-string v2, "MsgToBuss7"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "commandId="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "serviceId="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " errorCode="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " dataId="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 p1, 0xdd

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/taobao/accs/utl/a;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_4
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x64
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic a(Lcom/taobao/accs/data/e;Landroid/content/Context;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lcom/taobao/accs/data/e;->a(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/taobao/accs/data/e;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2}, Lcom/taobao/accs/data/e;->b(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method private a(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10

    const-string v0, "routingAck"

    const/4 v1, 0x0

    .line 426
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    const-string v2, "routingMsg"

    .line 427
    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    const/4 v3, 0x3

    const/4 v4, 0x4

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v0, :cond_1

    const-string v0, "MsgDistribute"

    const-string v7, "recieve routiong ack"

    .line 431
    new-array v8, v4, [Ljava/lang/Object;

    const-string v9, "dataId"

    aput-object v9, v8, v1

    aput-object p3, v8, v6

    const-string v9, "serviceId"

    aput-object v9, v8, v5

    aput-object p4, v8, v3

    invoke-static {v0, v7, v8}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 432
    sget-object v0, Lcom/taobao/accs/data/e;->a:Ljava/util/Set;

    if-eqz v0, :cond_0

    .line 433
    sget-object v0, Lcom/taobao/accs/data/e;->a:Ljava/util/Set;

    invoke-interface {v0, p3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_0
    const-string v0, "accs"

    const-string v7, "ele_routing_rate"

    const-string v8, ""

    .line 435
    invoke-static {v0, v7, v8}, Lcom/taobao/accs/utl/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v2, :cond_2

    :try_start_0
    const-string v2, "packageName"

    .line 442
    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v2, "MsgDistribute"

    const-string v7, "send routiong ack"

    const/4 v8, 0x6

    .line 443
    new-array v8, v8, [Ljava/lang/Object;

    const-string v9, "dataId"

    aput-object v9, v8, v1

    aput-object p3, v8, v6

    const-string v9, "to pkg"

    aput-object v9, v8, v5

    aput-object p2, v8, v3

    const-string v3, "serviceId"

    aput-object v3, v8, v4

    const/4 v3, 0x5

    aput-object p4, v8, v3

    invoke-static {v2, v7, v8}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 444
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.taobao.accs.intent.action.COMMAND"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "command"

    const/16 v4, 0x6a

    .line 445
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v3, "com.taobao.accs.ChannelService"

    .line 446
    invoke-virtual {v2, p2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "routingAck"

    .line 447
    invoke-virtual {v2, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v3, "packageName"

    .line 448
    invoke-virtual {v2, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "dataId"

    .line 449
    invoke-virtual {v2, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 450
    invoke-virtual {p1, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const-string p2, "MsgDistribute"

    const-string p3, "send routing ack"

    .line 452
    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "serviceId"

    aput-object v3, v2, v1

    aput-object p4, v2, v6

    invoke-static {p2, p3, p1, v2}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_2
    :goto_1
    return v0
.end method

.method private b(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 26

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move-object/from16 v13, p2

    .line 77
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 78
    sget-object v2, Lcom/taobao/accs/utl/ALog$Level;->D:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v2}, Lcom/taobao/accs/utl/ALog;->a(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v2

    const/4 v14, 0x0

    if-eqz v2, :cond_0

    const-string v2, "MsgDistribute"

    .line 79
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "action:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v14, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/taobao/accs/utl/ALog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 82
    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/16 v3, 0xdd

    const v4, 0x101d1

    if-eqz v2, :cond_1

    const-string v1, "MsgDistribute"

    const-string v2, "action null"

    .line 83
    new-array v5, v14, [Ljava/lang/Object;

    invoke-static {v1, v2, v5}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 84
    invoke-static {}, Lcom/taobao/accs/utl/a;->a()Lcom/taobao/accs/utl/a;

    move-result-object v1

    const-string v2, "MsgToBuss9"

    const-string v5, "action null"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v4, v2, v5, v3}, Lcom/taobao/accs/utl/a;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_1
    const/4 v15, 0x2

    const/16 v16, 0x1

    :try_start_0
    const-string v5, "com.taobao.accs.intent.action.RECEIVE"

    .line 91
    invoke-static {v1, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_6

    if-eqz v5, :cond_c

    :try_start_1
    const-string v1, "command"

    const/4 v3, -0x1

    .line 92
    invoke-virtual {v13, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_4

    :try_start_2
    const-string v1, "userInfo"

    .line 93
    invoke-virtual {v13, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v1, "errorCode"

    .line 94
    invoke-virtual {v13, v1, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v17

    const-string v1, "serviceId"

    .line 95
    invoke-virtual {v13, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_3

    :try_start_3
    const-string v1, "dataId"

    .line 96
    invoke-virtual {v13, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v1, "appKey"

    .line 97
    invoke-virtual {v13, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    const-string v1, "configTag"

    .line 98
    invoke-virtual {v13, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 100
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v3
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    if-nez v3, :cond_2

    .line 101
    :try_start_4
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v1, v0

    move-object v14, v9

    goto/16 :goto_6

    :cond_2
    :goto_0
    :try_start_5
    const-string v3, "accs"

    .line 104
    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2

    const/16 v5, 0x8

    const/4 v6, 0x7

    const/16 v19, 0x6

    const/16 v20, 0x5

    const/16 v21, 0x4

    const/16 v22, 0x3

    const/16 v2, 0xa

    if-eqz v3, :cond_3

    :try_start_6
    const-string v3, "MsgDistribute"

    const-string v4, "distribute"

    .line 105
    new-array v2, v2, [Ljava/lang/Object;

    const-string v24, "command:"

    aput-object v24, v2, v14

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    aput-object v24, v2, v16

    const-string v24, " serviceId:"

    aput-object v24, v2, v15

    aput-object v9, v2, v22

    const-string v22, " dataId:"

    aput-object v22, v2, v21

    aput-object v8, v2, v20

    const-string v20, "appkey"

    aput-object v20, v2, v19

    aput-object v18, v2, v6

    const-string v6, "config"

    aput-object v6, v2, v5

    const/16 v5, 0x9

    aput-object v1, v2, v5

    invoke-static {v3, v4, v2}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_1

    :cond_3
    :try_start_7
    const-string v3, "MsgDistribute"

    const-string v4, "distribute"

    .line 107
    new-array v2, v2, [Ljava/lang/Object;

    const-string v24, "command:"

    aput-object v24, v2, v14

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    aput-object v24, v2, v16

    const-string v24, " serviceId:"

    aput-object v24, v2, v15

    aput-object v9, v2, v22

    const-string v22, " dataId:"

    aput-object v22, v2, v21

    aput-object v8, v2, v20

    const-string v20, "appkey"

    aput-object v20, v2, v19

    aput-object v18, v2, v6

    const-string v6, "config"

    aput-object v6, v2, v5

    const/16 v5, 0x9

    aput-object v1, v2, v5

    invoke-static {v3, v4, v2}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 111
    :goto_1
    invoke-direct {v11, v12, v13, v8, v9}, Lcom/taobao/accs/data/e;->a(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_2

    if-eqz v2, :cond_4

    return-void

    :cond_4
    if-gez v10, :cond_5

    :try_start_8
    const-string v1, "MsgDistribute"

    .line 117
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "command error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v15, [Ljava/lang/Object;

    const-string v4, "serviceId"

    aput-object v4, v3, v14

    aput-object v9, v3, v16

    invoke-static {v1, v2, v3}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_0

    return-void

    .line 122
    :cond_5
    :try_start_9
    invoke-virtual {v11, v10, v9}, Lcom/taobao/accs/data/e;->a(ILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    return-void

    .line 127
    :cond_6
    invoke-direct {v11, v12, v13, v8, v9}, Lcom/taobao/accs/data/e;->b(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    return-void

    .line 131
    :cond_7
    invoke-static/range {p1 .. p1}, Lcom/taobao/accs/client/a;->a(Landroid/content/Context;)Lcom/taobao/accs/client/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taobao/accs/client/a;->d()Ljava/util/Map;

    move-result-object v6

    .line 133
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_2

    if-nez v2, :cond_9

    if-eqz v6, :cond_8

    .line 134
    :try_start_a
    invoke-interface {v6, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/taobao/accs/e;
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_0

    goto :goto_2

    :cond_8
    const/4 v2, 0x0

    :goto_2
    move-object/from16 v23, v2

    goto :goto_3

    :cond_9
    const/16 v23, 0x0

    :goto_3
    move-object v1, v11

    move-object v2, v12

    move-object v3, v9

    move-object v4, v8

    move-object v5, v13

    move-object/from16 v19, v6

    move-object/from16 v6, v23

    .line 138
    :try_start_b
    invoke-virtual/range {v1 .. v6}, Lcom/taobao/accs/data/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Lcom/taobao/accs/e;)Z

    move-result v1
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_2

    if-eqz v1, :cond_a

    return-void

    :cond_a
    move-object v1, v11

    move-object v2, v12

    move-object v3, v13

    move-object/from16 v4, v18

    move v5, v10

    move-object v6, v7

    move-object v7, v9

    move-object/from16 v18, v8

    move-object v14, v9

    move-object/from16 v9, v23

    move/from16 v20, v10

    move/from16 v10, v17

    .line 143
    :try_start_c
    invoke-direct/range {v1 .. v10}, Lcom/taobao/accs/data/e;->a(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/taobao/accs/e;I)V

    .line 146
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b

    move-object v1, v11

    move-object v2, v12

    move-object/from16 v3, v23

    move-object v4, v13

    move-object v5, v14

    move-object/from16 v6, v18

    move/from16 v7, v20

    move/from16 v8, v17

    .line 147
    invoke-virtual/range {v1 .. v8}, Lcom/taobao/accs/data/e;->a(Landroid/content/Context;Lcom/taobao/accs/e;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;II)V

    goto/16 :goto_7

    :cond_b
    move-object v1, v11

    move-object v2, v12

    move-object/from16 v3, v19

    move-object v4, v13

    move/from16 v5, v20

    move/from16 v6, v17

    .line 149
    invoke-virtual/range {v1 .. v6}, Lcom/taobao/accs/data/e;->a(Landroid/content/Context;Ljava/util/Map;Landroid/content/Intent;II)V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_1

    goto/16 :goto_7

    :catch_1
    move-exception v0

    move-object v1, v0

    move/from16 v10, v20

    goto :goto_6

    :catch_2
    move-exception v0

    move-object v14, v9

    move/from16 v20, v10

    move-object v1, v0

    goto :goto_6

    :catch_3
    move-exception v0

    move/from16 v20, v10

    move-object v1, v0

    goto :goto_4

    :catch_4
    move-exception v0

    move-object v1, v0

    const/4 v10, 0x0

    :goto_4
    const/4 v14, 0x0

    goto :goto_6

    :cond_c
    :try_start_d
    const-string v2, "MsgDistribute"

    .line 152
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "action error "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v15, [Ljava/lang/Object;

    const-string v7, "serviceId"

    const/4 v8, 0x0

    aput-object v7, v6, v8
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_6

    const/4 v14, 0x0

    :try_start_e
    aput-object v14, v6, v16

    invoke-static {v2, v5, v6}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 153
    invoke-static {}, Lcom/taobao/accs/utl/a;->a()Lcom/taobao/accs/utl/a;

    move-result-object v2

    const-string v5, "MsgToBuss10"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v4, v5, v1, v3}, Lcom/taobao/accs/utl/a;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_5

    goto :goto_7

    :catch_5
    move-exception v0

    goto :goto_5

    :catch_6
    move-exception v0

    const/4 v14, 0x0

    :goto_5
    move-object v1, v0

    const/4 v10, 0x0

    :goto_6
    const-string v2, "MsgDistribute"

    const-string v3, "distribMessage :"

    .line 156
    new-array v4, v15, [Ljava/lang/Object;

    const-string v5, "serviceId"

    const/4 v6, 0x0

    aput-object v5, v4, v6

    aput-object v14, v4, v16

    invoke-static {v2, v3, v1, v4}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    const-string v2, "accs"

    const-string v3, "send_fail"

    const-string v4, "1"

    .line 157
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "distribute error "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/taobao/accs/utl/b;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v3, v14, v4, v1}, Lcom/taobao/accs/utl/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_7
    return-void
.end method

.method private b(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 14

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    .line 465
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-nez v1, :cond_1

    const/4 v10, 0x4

    const/4 v11, 0x3

    const/4 v12, 0x2

    :try_start_0
    const-string v1, "MsgDistribute"

    const-string v2, "start MsgDistributeService"

    const/4 v3, 0x6

    .line 467
    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "receive pkg"

    aput-object v4, v3, v8

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v9

    const-string v4, "target pkg"

    aput-object v4, v3, v12

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v11

    const-string v4, "serviceId"

    aput-object v4, v3, v10

    const/4 v4, 0x5

    aput-object p4, v3, v4

    invoke-static {v1, v2, v3}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 468
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.taobao.accs.data.MsgDistributeService"

    invoke-virtual {v6, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "routingMsg"

    .line 469
    invoke-virtual {v6, v1, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "packageName"

    .line 470
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 471
    invoke-virtual/range {p1 .. p2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 472
    sget-object v1, Lcom/taobao/accs/data/e;->a:Ljava/util/Set;

    if-nez v1, :cond_0

    .line 473
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    sput-object v1, Lcom/taobao/accs/data/e;->a:Ljava/util/Set;

    .line 475
    :cond_0
    sget-object v1, Lcom/taobao/accs/data/e;->a:Ljava/util/Set;

    invoke-interface {v1, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 477
    new-instance v13, Lcom/taobao/accs/data/g;

    move-object v1, v13

    move-object v2, p0

    move-object v3, v7

    move-object/from16 v4, p4

    move-object v5, p1

    invoke-direct/range {v1 .. v6}, Lcom/taobao/accs/data/g;-><init>(Lcom/taobao/accs/data/e;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/content/Intent;)V

    const-wide/16 v1, 0xa

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v13, v1, v2, v3}, Lcom/taobao/accs/common/a;->a(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v1, v0

    const-string v2, "accs"

    const-string v3, "ele_routing_rate"

    const-string v4, ""

    const-string v5, "exception"

    .line 492
    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v3, v4, v5, v6}, Lcom/taobao/accs/utl/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "MsgDistribute"

    const-string v3, "routing msg error, try election"

    .line 493
    new-array v4, v10, [Ljava/lang/Object;

    const-string v5, "serviceId"

    aput-object v5, v4, v8

    aput-object p4, v4, v9

    const-string v5, "dataId"

    aput-object v5, v4, v12

    aput-object v7, v4, v11

    invoke-static {v2, v3, v1, v4}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 494
    invoke-direct {p0, p1}, Lcom/taobao/accs/data/e;->a(Landroid/content/Context;)V

    :goto_0
    const/4 v8, 0x1

    :cond_1
    return v8
.end method

.method static synthetic d()Ljava/util/Set;
    .locals 1

    .line 32
    sget-object v0, Lcom/taobao/accs/data/e;->a:Ljava/util/Set;

    return-object v0
.end method


# virtual methods
.method protected a(Landroid/content/Context;Lcom/taobao/accs/e;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 7

    if-eqz p2, :cond_0

    .line 289
    invoke-interface {p2, p4}, Lcom/taobao/accs/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 292
    :goto_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 293
    invoke-static {p1}, Lcom/taobao/accs/client/a;->a(Landroid/content/Context;)Lcom/taobao/accs/client/a;

    move-result-object p2

    invoke-virtual {p2, p4}, Lcom/taobao/accs/client/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 296
    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    .line 297
    sget-object v0, Lcom/taobao/accs/utl/ALog$Level;->D:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v0}, Lcom/taobao/accs/utl/ALog;->a(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "MsgDistribute"

    .line 298
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "to start service:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lcom/taobao/accs/utl/ALog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 300
    :cond_2
    invoke-virtual {p3, p1, p2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 301
    invoke-virtual {p1, p3}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_1

    .line 303
    :cond_3
    invoke-static {p1}, Lcom/taobao/accs/client/a;->a(Landroid/content/Context;)Lcom/taobao/accs/client/a;

    move-result-object p2

    invoke-virtual {p2, p4}, Lcom/taobao/accs/client/a;->d(Ljava/lang/String;)Lcom/taobao/accs/base/a;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 305
    invoke-static {p1, p3, p2}, Lcom/taobao/accs/base/a;->a(Landroid/content/Context;Landroid/content/Intent;Lcom/taobao/accs/base/b;)I

    goto :goto_1

    :cond_4
    const-string p1, "appKey"

    .line 307
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "MsgDistribute"

    const-string p3, "callback is null"

    const/16 v0, 0x8

    .line 308
    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "dataId"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p5, v0, v1

    const/4 v1, 0x2

    const-string v2, " serviceId"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    aput-object p4, v0, v1

    const/4 v1, 0x4

    const-string v2, " command"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "appkey"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    aput-object p1, v0, v1

    invoke-static {p2, p3, v0}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string p1, "accs"

    const-string p2, "send_fail"

    const-string p3, "1"

    const-string v0, "service is null"

    .line 309
    invoke-static {p1, p2, p4, p3, v0}, Lcom/taobao/accs/utl/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    :goto_1
    invoke-static {}, Lcom/taobao/accs/utl/a;->a()Lcom/taobao/accs/utl/a;

    move-result-object v1

    const v2, 0x101d1

    const-string v3, "MsgToBuss"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "commandId="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "serviceId="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " errorCode="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " dataId="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 p1, 0xdd

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual/range {v1 .. v6}, Lcom/taobao/accs/utl/a;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    const-string p1, "accs"

    const-string p2, "to_buss"

    .line 314
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "2commandId="

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p5, "serviceId="

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-wide/16 p4, 0x0

    invoke-static {p1, p2, p3, p4, p5}, Lcom/taobao/accs/utl/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    return-void
.end method

.method protected a(Landroid/content/Context;Ljava/util/Map;Landroid/content/Intent;II)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/taobao/accs/e;",
            ">;",
            "Landroid/content/Intent;",
            "II)V"
        }
    .end annotation

    .line 320
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eqz p2, :cond_1

    .line 322
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 323
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/accs/e;

    .line 324
    invoke-interface {v1}, Lcom/taobao/accs/e;->a()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 326
    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto :goto_0

    :cond_1
    const/16 p2, 0x67

    const/4 v1, 0x0

    if-ne p4, p2, :cond_9

    if-eqz v0, :cond_5

    .line 333
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_2
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    const-string v2, "accs"

    .line 335
    invoke-virtual {v2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "windvane"

    invoke-virtual {v2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "motu-remote"

    invoke-virtual {v2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 338
    :cond_3
    invoke-interface {v0, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 340
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 341
    invoke-static {p1}, Lcom/taobao/accs/client/a;->a(Landroid/content/Context;)Lcom/taobao/accs/client/a;

    move-result-object v2

    invoke-virtual {v2, p4}, Lcom/taobao/accs/client/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 343
    :cond_4
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-nez p4, :cond_2

    .line 344
    invoke-virtual {p3, p1, v2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 345
    invoke-virtual {p1, p3}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_1

    :cond_5
    const-string p2, "connect_avail"

    .line 352
    invoke-virtual {p3, p2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    const-string p4, "host"

    .line 353
    invoke-virtual {p3, p4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string p4, "errorDetail"

    .line 354
    invoke-virtual {p3, p4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string p4, "type_inapp"

    .line 355
    invoke-virtual {p3, p4, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    const-string p4, "is_center_host"

    .line 356
    invoke-virtual {p3, p4, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    const/4 p3, 0x0

    .line 358
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-nez p4, :cond_7

    if-eqz p2, :cond_6

    .line 360
    new-instance p3, Lcom/taobao/accs/base/TaoBaseService$ConnectInfo;

    invoke-direct {p3, v3, v4, v5}, Lcom/taobao/accs/base/TaoBaseService$ConnectInfo;-><init>(Ljava/lang/String;ZZ)V

    goto :goto_2

    .line 362
    :cond_6
    new-instance p3, Lcom/taobao/accs/base/TaoBaseService$ConnectInfo;

    move-object v2, p3

    move v6, p5

    invoke-direct/range {v2 .. v7}, Lcom/taobao/accs/base/TaoBaseService$ConnectInfo;-><init>(Ljava/lang/String;ZZILjava/lang/String;)V

    .line 364
    :goto_2
    iput-boolean p2, p3, Lcom/taobao/accs/base/TaoBaseService$ConnectInfo;->connected:Z

    :cond_7
    if-eqz p3, :cond_8

    .line 367
    new-instance p2, Landroid/content/Intent;

    const-string p4, "com.taobao.accs.intent.action.CONNECTINFO"

    invoke-direct {p2, p4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 368
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string p4, "connect_info"

    .line 369
    invoke-virtual {p2, p4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 370
    invoke-virtual {p1, p2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_4

    :cond_8
    const-string p1, "MsgDistribute"

    const-string p2, "connect info null, host empty"

    .line 372
    new-array p3, v1, [Ljava/lang/Object;

    invoke-static {p1, p2, p3}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4

    :cond_9
    const/16 p2, 0x68

    if-ne p4, p2, :cond_c

    if-eqz v0, :cond_d

    .line 377
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_a
    :goto_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_d

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    .line 378
    invoke-interface {v0, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/String;

    .line 380
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 381
    invoke-static {p1}, Lcom/taobao/accs/client/a;->a(Landroid/content/Context;)Lcom/taobao/accs/client/a;

    move-result-object p5

    invoke-virtual {p5, p4}, Lcom/taobao/accs/client/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    .line 383
    :cond_b
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-nez p4, :cond_a

    .line 384
    invoke-virtual {p3, p1, p5}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 385
    invoke-virtual {p1, p3}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_3

    :cond_c
    const-string p1, "MsgDistribute"

    .line 390
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "distribMessage serviceId is null!! command:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array p3, v1, [Ljava/lang/Object;

    invoke-static {p1, p2, p3}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_d
    :goto_4
    return-void
.end method

.method protected a(ILjava/lang/String;)Z
    .locals 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v2, 0x64

    if-eq p1, v2, :cond_0

    const-string p1, "agooSend"

    .line 164
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 165
    invoke-static {}, Lcom/taobao/accs/utl/b;->a()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long p1, v2, v4

    if-eqz p1, :cond_0

    const-wide/32 v4, 0x500000

    cmp-long p1, v2, v4

    if-gtz p1, :cond_0

    const-string p1, "accs"

    const-string v4, "send_fail"

    const-string v5, "1"

    .line 167
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "space low "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p1, v4, p2, v5, v6}, Lcom/taobao/accs/utl/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "MsgDistribute"

    const-string v4, "user space low, don\'t distribute"

    const/4 v5, 0x4

    .line 168
    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "size"

    aput-object v6, v5, v1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v5, v0

    const/4 v1, 0x2

    const-string v2, "serviceId"

    aput-object v2, v5, v1

    const/4 v1, 0x3

    aput-object p2, v5, v1

    invoke-static {p1, v4, v5}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Lcom/taobao/accs/e;)Z
    .locals 4

    const/4 v0, 0x0

    .line 183
    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p5, :cond_1

    .line 189
    invoke-interface {p5, p2}, Lcom/taobao/accs/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 192
    :cond_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p5

    if-eqz p5, :cond_2

    .line 193
    invoke-static {p1}, Lcom/taobao/accs/client/a;->a(Landroid/content/Context;)Lcom/taobao/accs/client/a;

    move-result-object p5

    invoke-virtual {p5, p2}, Lcom/taobao/accs/client/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 196
    :cond_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p5

    const/4 v1, 0x1

    if-eqz p5, :cond_4

    invoke-static {p1}, Lcom/taobao/accs/utl/b;->w(Landroid/content/Context;)Z

    move-result p5

    if-nez p5, :cond_4

    const-string p5, "accs"

    .line 197
    invoke-virtual {p5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 p5, 0x2

    if-eqz p2, :cond_3

    const-string p2, "MsgDistribute"

    const-string v2, "start MsgDistributeService"

    .line 198
    new-array p5, p5, [Ljava/lang/Object;

    const-string v3, "dataId"

    aput-object v3, p5, v0

    aput-object p3, p5, v1

    invoke-static {p2, v2, p5}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    const-string p2, "MsgDistribute"

    const-string v2, "start MsgDistributeService"

    .line 200
    new-array p5, p5, [Ljava/lang/Object;

    const-string v3, "dataId"

    aput-object v3, p5, v0

    aput-object p3, p5, v1

    invoke-static {p2, v2, p5}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 203
    :goto_0
    invoke-virtual {p4}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Lcom/taobao/accs/data/e;->c()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p4, p2, p3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 204
    invoke-virtual {p1, p4}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    goto :goto_1

    :catch_0
    move-exception p1

    const-string p2, "MsgDistribute"

    const-string p3, "handleMsgInChannelProcess"

    .line 208
    new-array p4, v0, [Ljava/lang/Object;

    invoke-static {p2, p3, p1, p4}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_4
    :goto_1
    return v0
.end method

.method protected b()Ljava/lang/String;
    .locals 1

    const-string v0, "com.taobao.accs.ChannelService"

    return-object v0
.end method

.method protected c()Ljava/lang/String;
    .locals 1

    const-string v0, "com.taobao.accs.data.MsgDistributeService"

    return-object v0
.end method
