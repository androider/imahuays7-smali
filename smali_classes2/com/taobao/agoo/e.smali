.class public final Lcom/taobao/agoo/e;
.super Ljava/lang/Object;
.source "Taobao"


# static fields
.field private static a:Lcom/taobao/agoo/a/b;


# direct methods
.method static synthetic a()Lcom/taobao/agoo/a/b;
    .locals 1

    .line 31
    sget-object v0, Lcom/taobao/agoo/e;->a:Lcom/taobao/agoo/a/b;

    return-object v0
.end method

.method static synthetic a(Lcom/taobao/agoo/a/b;)Lcom/taobao/agoo/a/b;
    .locals 0

    .line 31
    sput-object p0, Lcom/taobao/agoo/e;->a:Lcom/taobao/agoo/a/b;

    return-object p0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 393
    new-instance v0, Lorg/android/agoo/b/c;

    invoke-direct {v0}, Lorg/android/agoo/b/c;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 397
    :try_start_0
    sget-object v3, Lcom/taobao/accs/utl/ALog$Level;->I:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v3}, Lcom/taobao/accs/utl/ALog;->a(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "TaobaoRegister"

    const-string v4, "clickMessage"

    const/4 v5, 0x4

    .line 398
    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "msgid"

    aput-object v6, v5, v2

    const/4 v6, 0x1

    aput-object p1, v5, v6

    const/4 v6, 0x2

    const-string v7, "extData"

    aput-object v7, v5, v6

    const/4 v6, 0x3

    aput-object p2, v5, v6

    invoke-static {v3, v4, v5}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    const-string v3, "accs"

    const-string v4, "8"

    .line 402
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string p0, "TaobaoRegister"

    const-string p1, "messageId == null"

    .line 403
    new-array p2, v2, [Ljava/lang/Object;

    invoke-static {p0, p1, p2}, Lcom/taobao/accs/utl/ALog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 406
    :cond_1
    invoke-virtual {v0, p0}, Lorg/android/agoo/b/c;->a(Landroid/content/Context;)V

    .line 407
    new-instance v5, Lorg/android/agoo/a/c;

    invoke-direct {v5}, Lorg/android/agoo/a/c;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 408
    :try_start_1
    iput-object p1, v5, Lorg/android/agoo/a/c;->a:Ljava/lang/String;

    .line 409
    iput-object p2, v5, Lorg/android/agoo/a/c;->b:Ljava/lang/String;

    .line 410
    iput-object v3, v5, Lorg/android/agoo/a/c;->e:Ljava/lang/String;

    .line 411
    iput-object v4, v5, Lorg/android/agoo/a/c;->l:Ljava/lang/String;

    .line 412
    new-instance p2, Lorg/android/agoo/b/a;

    invoke-direct {p2}, Lorg/android/agoo/b/a;-><init>()V

    .line 413
    invoke-virtual {p2, p0, v0, v1}, Lorg/android/agoo/b/a;->a(Landroid/content/Context;Lorg/android/agoo/b/c;Lorg/android/agoo/d/c;)V

    const-string p0, "8"

    .line 415
    invoke-virtual {p2, p1, p0}, Lorg/android/agoo/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v5, :cond_2

    .line 421
    invoke-virtual {v0, v5}, Lorg/android/agoo/b/c;->a(Lorg/android/agoo/a/c;)V

    goto :goto_1

    :catchall_0
    move-exception p0

    move-object v1, v5

    goto :goto_2

    :catch_0
    move-exception p0

    move-object v1, v5

    goto :goto_0

    :catchall_1
    move-exception p0

    goto :goto_2

    :catch_1
    move-exception p0

    :goto_0
    :try_start_2
    const-string p1, "TaobaoRegister"

    .line 418
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "clickMessage,error="

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array p2, v2, [Ljava/lang/Object;

    invoke-static {p1, p0, p2}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v1, :cond_2

    .line 421
    invoke-virtual {v0, v1}, Lorg/android/agoo/b/c;->a(Lorg/android/agoo/a/c;)V

    :cond_2
    :goto_1
    return-void

    :goto_2
    if-eqz v1, :cond_3

    invoke-virtual {v0, v1}, Lorg/android/agoo/b/c;->a(Lorg/android/agoo/a/c;)V

    :cond_3
    throw p0
.end method

.method public static declared-synchronized a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/taobao/agoo/c;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/accs/AccsException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-class v0, Lcom/taobao/agoo/e;

    monitor-enter v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    .line 79
    :try_start_0
    invoke-static/range {v1 .. v6}, Lcom/taobao/agoo/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/taobao/agoo/c;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    .line 78
    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/taobao/agoo/c;)V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/accs/AccsException;
        }
    .end annotation

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    const-class v9, Lcom/taobao/agoo/e;

    monitor-enter v9

    const/4 v3, 0x3

    const/4 v4, 0x4

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v10, 0x2

    if-eqz v1, :cond_3

    .line 93
    :try_start_0
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_3

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_0

    goto/16 :goto_1

    :cond_0
    const-string v11, "TaobaoRegister"

    const-string v12, "register"

    .line 97
    new-array v4, v4, [Ljava/lang/Object;

    const-string v13, "appKey"

    aput-object v13, v4, v6

    aput-object v7, v4, v5

    const-string v13, "configTag"

    aput-object v13, v4, v10

    aput-object v2, v4, v3

    invoke-static {v11, v12, v4}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 98
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    .line 99
    sput-object v2, Lorg/android/agoo/a/b;->a:Ljava/lang/String;

    .line 100
    invoke-static {v1, v7}, Lorg/android/agoo/a/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 101
    sput-object v8, Lcom/taobao/accs/utl/c;->b:Ljava/lang/String;

    .line 102
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 103
    sput v10, Lcom/taobao/accs/client/c;->a:I

    .line 106
    :cond_1
    invoke-static {v2}, Lcom/taobao/accs/b;->a(Ljava/lang/String;)Lcom/taobao/accs/b;

    move-result-object v3

    if-nez v3, :cond_2

    .line 108
    new-instance v3, Lcom/taobao/accs/b$a;

    invoke-direct {v3}, Lcom/taobao/accs/b$a;-><init>()V

    invoke-virtual {v3, v7}, Lcom/taobao/accs/b$a;->a(Ljava/lang/String;)Lcom/taobao/accs/b$a;

    move-result-object v3

    invoke-virtual {v3, v8}, Lcom/taobao/accs/b$a;->b(Ljava/lang/String;)Lcom/taobao/accs/b$a;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/taobao/accs/b$a;->f(Ljava/lang/String;)Lcom/taobao/accs/b$a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/taobao/accs/b$a;->a()Lcom/taobao/accs/b;

    goto :goto_0

    .line 112
    :cond_2
    invoke-virtual {v3}, Lcom/taobao/accs/b;->g()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/taobao/accs/client/c;->c:Ljava/lang/String;

    const-string v4, "TaobaoRegister"

    const-string v12, "config exist"

    .line 113
    new-array v10, v10, [Ljava/lang/Object;

    const-string v13, "config"

    aput-object v13, v10, v6

    invoke-virtual {v3}, Lcom/taobao/accs/b;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v10, v5

    invoke-static {v4, v12, v10}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 118
    :goto_0
    invoke-static {v1, v7, v2}, Lcom/taobao/accs/ACCSManager;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/accs/c;

    move-result-object v10

    .line 120
    new-instance v12, Lcom/taobao/agoo/k;

    move-object v1, v12

    move-object v2, v11

    move-object v3, v10

    move-object/from16 v4, p5

    move-object v5, v7

    move-object/from16 v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/taobao/agoo/k;-><init>(Landroid/content/Context;Lcom/taobao/accs/c;Lcom/taobao/agoo/c;Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v10

    move-object v2, v11

    move-object v3, v7

    move-object v4, v8

    move-object/from16 v5, p4

    move-object v6, v12

    invoke-interface/range {v1 .. v6}, Lcom/taobao/accs/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/taobao/accs/e;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 180
    monitor-exit v9

    return-void

    :catchall_0
    move-exception v0

    move-object v1, v0

    goto :goto_2

    :cond_3
    :goto_1
    :try_start_1
    const-string v8, "TaobaoRegister"

    const-string v11, "register params null"

    const/4 v12, 0x6

    .line 94
    new-array v12, v12, [Ljava/lang/Object;

    const-string v13, "appkey"

    aput-object v13, v12, v6

    aput-object v7, v12, v5

    const-string v5, "configTag"

    aput-object v5, v12, v10

    aput-object v2, v12, v3

    const-string v2, "context"

    aput-object v2, v12, v4

    const/4 v2, 0x5

    aput-object v1, v12, v2

    invoke-static {v8, v11, v12}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 95
    monitor-exit v9

    return-void

    .line 92
    :goto_2
    monitor-exit v9

    throw v1
.end method

.method public static a(Ljava/lang/String;)V
    .locals 0

    .line 482
    sput-object p0, Lcom/taobao/accs/client/c;->b:Ljava/lang/String;

    return-void
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 433
    new-instance v0, Lorg/android/agoo/b/c;

    invoke-direct {v0}, Lorg/android/agoo/b/c;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 436
    :try_start_0
    sget-object v3, Lcom/taobao/accs/utl/ALog$Level;->I:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v3}, Lcom/taobao/accs/utl/ALog;->a(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "TaobaoRegister"

    const-string v4, "dismissMessage"

    const/4 v5, 0x4

    .line 437
    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "msgid"

    aput-object v6, v5, v2

    const/4 v6, 0x1

    aput-object p1, v5, v6

    const/4 v6, 0x2

    const-string v7, "extData"

    aput-object v7, v5, v6

    const/4 v6, 0x3

    aput-object p2, v5, v6

    invoke-static {v3, v4, v5}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    const-string v3, "accs"

    const-string v4, "9"

    .line 441
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string p0, "TaobaoRegister"

    const-string p1, "messageId == null"

    .line 442
    new-array p2, v2, [Ljava/lang/Object;

    invoke-static {p0, p1, p2}, Lcom/taobao/accs/utl/ALog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 445
    :cond_1
    invoke-virtual {v0, p0}, Lorg/android/agoo/b/c;->a(Landroid/content/Context;)V

    .line 446
    new-instance v5, Lorg/android/agoo/a/c;

    invoke-direct {v5}, Lorg/android/agoo/a/c;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 447
    :try_start_1
    iput-object p1, v5, Lorg/android/agoo/a/c;->a:Ljava/lang/String;

    .line 448
    iput-object p2, v5, Lorg/android/agoo/a/c;->b:Ljava/lang/String;

    .line 449
    iput-object v3, v5, Lorg/android/agoo/a/c;->e:Ljava/lang/String;

    .line 450
    iput-object v4, v5, Lorg/android/agoo/a/c;->l:Ljava/lang/String;

    .line 451
    new-instance p2, Lorg/android/agoo/b/a;

    invoke-direct {p2}, Lorg/android/agoo/b/a;-><init>()V

    .line 452
    invoke-virtual {p2, p0, v0, v1}, Lorg/android/agoo/b/a;->a(Landroid/content/Context;Lorg/android/agoo/b/c;Lorg/android/agoo/d/c;)V

    const-string p0, "9"

    .line 454
    invoke-virtual {p2, p1, p0}, Lorg/android/agoo/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v5, :cond_2

    .line 459
    invoke-virtual {v0, v5}, Lorg/android/agoo/b/c;->a(Lorg/android/agoo/a/c;)V

    goto :goto_1

    :catchall_0
    move-exception p0

    move-object v1, v5

    goto :goto_2

    :catch_0
    move-exception p0

    move-object v1, v5

    goto :goto_0

    :catchall_1
    move-exception p0

    goto :goto_2

    :catch_1
    move-exception p0

    :goto_0
    :try_start_2
    const-string p1, "TaobaoRegister"

    .line 456
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "clickMessage,error="

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array p2, v2, [Ljava/lang/Object;

    invoke-static {p1, p0, p2}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v1, :cond_2

    .line 459
    invoke-virtual {v0, v1}, Lorg/android/agoo/b/c;->a(Lorg/android/agoo/a/c;)V

    :cond_2
    :goto_1
    return-void

    :goto_2
    if-eqz v1, :cond_3

    invoke-virtual {v0, v1}, Lorg/android/agoo/b/c;->a(Lorg/android/agoo/a/c;)V

    :cond_3
    throw p0
.end method
