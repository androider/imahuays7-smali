.class public Lcom/taobao/accs/internal/c;
.super Lcom/taobao/accs/internal/e;
.source "Taobao"


# static fields
.field private static f:Lcom/taobao/accs/c/a;


# instance fields
.field private b:Landroid/app/Service;

.field private c:Landroid/content/Context;

.field private d:J

.field private e:J

.field private g:Ljava/lang/String;

.field private h:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field private final i:Lorg/android/agoo/e/a$a;


# direct methods
.method static synthetic a(Lcom/taobao/accs/internal/c;)Landroid/content/Context;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/taobao/accs/internal/c;->c:Landroid/content/Context;

    return-object p0
.end method

.method private final a(Landroid/content/Context;)V
    .locals 17

    move-object/from16 v1, p1

    const/4 v2, 0x0

    .line 499
    :try_start_0
    invoke-static {}, Lcom/taobao/accs/utl/j;->d()Ljava/lang/String;

    move-result-object v3

    .line 500
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "ServiceImpl"

    const-string v5, "start pull up"

    .line 501
    new-array v6, v2, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 503
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4, v3}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    .line 509
    :goto_0
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3

    if-ge v3, v5, :cond_2

    .line 511
    :try_start_1
    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 512
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "app"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "action"

    .line 513
    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "pack"

    .line 514
    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "service"

    .line 515
    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "enabled"

    .line 516
    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    const-string v10, "probability"

    .line 517
    invoke-virtual {v5, v10}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    const/4 v10, 0x1

    if-eqz v9, :cond_0

    int-to-double v11, v5

    .line 519
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v13

    const-wide/high16 v15, 0x4059000000000000L    # 100.0

    mul-double v13, v13, v15

    cmpl-double v5, v11, v13

    if-ltz v5, :cond_0

    const/4 v5, 0x1

    goto :goto_1

    :cond_0
    const/4 v5, 0x0

    :goto_1
    const-string v9, "ServiceImpl"

    const-string v11, "pull up"

    const/16 v12, 0x8

    .line 520
    new-array v12, v12, [Ljava/lang/Object;

    const-string v13, "action"

    aput-object v13, v12, v2

    aput-object v6, v12, v10

    const/4 v10, 0x2

    const-string v13, "pack"

    aput-object v13, v12, v10

    const/4 v10, 0x3

    aput-object v7, v12, v10

    const/4 v10, 0x4

    const-string v13, "service"

    aput-object v13, v12, v10

    const/4 v10, 0x5

    aput-object v8, v12, v10

    const/4 v10, 0x6

    const-string v13, "need pull"

    aput-object v13, v12, v10

    const/4 v10, 0x7

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    aput-object v13, v12, v10

    invoke-static {v9, v11, v12}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v5, :cond_1

    .line 521
    invoke-static {v1, v7}, Lcom/taobao/accs/utl/b;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 522
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 523
    invoke-virtual {v5, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 524
    invoke-virtual {v5, v7, v8}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v6, "packageName"

    .line 525
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v6, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 526
    invoke-virtual {v5, v7}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 527
    invoke-virtual {v1, v5}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 529
    invoke-static {}, Lcom/taobao/accs/utl/a;->a()Lcom/taobao/accs/utl/a;

    move-result-object v5

    const v6, 0x101d1

    const-string v8, "pingApp"
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-object/from16 v9, p0

    :try_start_2
    iget-object v10, v9, Lcom/taobao/accs/internal/c;->c:Landroid/content/Context;

    invoke-static {v10}, Lcom/taobao/accs/utl/c;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v6, v8, v10, v7}, Lcom/taobao/accs/utl/a;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_1
    move-object/from16 v9, p0

    goto :goto_3

    :catch_1
    move-exception v0

    move-object/from16 v9, p0

    :goto_2
    move-object v5, v0

    :try_start_3
    const-string v6, "ServiceImpl"

    const-string v7, "onPingIpp parse"

    .line 532
    new-array v8, v2, [Ljava/lang/Object;

    invoke-static {v6, v7, v5, v8}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :catch_2
    move-exception v0

    goto :goto_4

    :cond_2
    move-object/from16 v9, p0

    goto :goto_5

    :catch_3
    move-exception v0

    move-object/from16 v9, p0

    :goto_4
    move-object v1, v0

    const-string v3, "ServiceImpl"

    const-string v4, "onPingIpp"

    .line 538
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v3, v4, v1, v2}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :goto_5
    return-void
.end method

.method private a(Lcom/taobao/accs/data/Message;Z)V
    .locals 2

    .line 577
    sget-object v0, Lcom/taobao/accs/internal/c;->a:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/taobao/accs/internal/c;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 581
    :cond_0
    sget-object v0, Lcom/taobao/accs/internal/c;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 582
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/accs/f/c;

    .line 583
    invoke-virtual {v1, p1, p2}, Lcom/taobao/accs/f/c;->b(Lcom/taobao/accs/data/Message;Z)V

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    :goto_1
    return-void
.end method

.method static synthetic a(Lcom/taobao/accs/internal/c;Landroid/content/Context;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Lcom/taobao/accs/internal/c;->a(Landroid/content/Context;)V

    return-void
.end method

.method private a(ZZ)V
    .locals 7

    .line 588
    sget-object v0, Lcom/taobao/accs/internal/c;->a:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/taobao/accs/internal/c;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 592
    :cond_0
    sget-object v0, Lcom/taobao/accs/internal/c;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 593
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/accs/f/c;

    .line 594
    invoke-virtual {v1, p1, p2}, Lcom/taobao/accs/f/c;->a(ZZ)V

    const-string v2, "ServiceImpl"

    const-string v3, "ping connection"

    const/4 v4, 0x2

    .line 595
    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "appkey"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {v1}, Lcom/taobao/accs/f/c;->i()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v5

    invoke-static {v2, v3, v4}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    :goto_1
    return-void
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 1

    .line 675
    sget-object v0, Lcom/taobao/accs/internal/c;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->elements()Ljava/util/Enumeration;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/accs/f/c;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 676
    :cond_0
    invoke-virtual {v0}, Lcom/taobao/accs/f/c;->j()Lcom/taobao/accs/client/d;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/taobao/accs/client/d;->a(Ljava/lang/String;)Z

    move-result p0

    :goto_0
    return p0
.end method

.method private b(Z)V
    .locals 3

    const-string v0, "ServiceImpl"

    .line 544
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

    .line 545
    iget-object v0, p0, Lcom/taobao/accs/internal/c;->b:Landroid/app/Service;

    if-eqz v0, :cond_0

    .line 546
    iget-object v0, p0, Lcom/taobao/accs/internal/c;->b:Landroid/app/Service;

    invoke-virtual {v0}, Landroid/app/Service;->stopSelf()V

    :cond_0
    if-eqz p1, :cond_1

    .line 549
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p1

    invoke-static {p1}, Landroid/os/Process;->killProcess(I)V

    :cond_1
    return-void
.end method

.method private d(Landroid/content/Intent;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "command"

    const/4 v3, -0x1

    .line 251
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const-string v4, "ServiceImpl"

    .line 252
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "command:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    new-array v7, v6, [Ljava/lang/Object;

    invoke-static {v4, v5, v7}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v4, "packageName"

    .line 253
    invoke-virtual {v1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "serviceId"

    .line 255
    invoke-virtual {v1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v5, "userInfo"

    .line 257
    invoke-virtual {v1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v5, "appKey"

    .line 259
    invoke-virtual {v1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v7, "configTag"

    .line 261
    invoke-virtual {v1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v7, "ttid"

    .line 262
    invoke-virtual {v1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v7, "sid"

    .line 263
    invoke-virtual {v1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    const-string v7, "anti_brush_cookie"

    .line 264
    invoke-virtual {v1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    const/4 v15, 0x1

    const/16 v7, 0xc9

    if-ne v2, v7, :cond_0

    .line 266
    invoke-static {v15, v6}, Lcom/taobao/accs/data/Message;->a(ZI)Lcom/taobao/accs/data/Message;

    move-result-object v7

    invoke-direct {v0, v7, v15}, Lcom/taobao/accs/internal/c;->a(Lcom/taobao/accs/data/Message;Z)V

    .line 267
    invoke-direct/range {p0 .. p0}, Lcom/taobao/accs/internal/c;->i()V

    :cond_0
    if-lez v2, :cond_12

    .line 269
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_12

    .line 271
    iget-object v7, v0, Lcom/taobao/accs/internal/c;->c:Landroid/content/Context;

    invoke-static {v7, v10, v15, v2}, Lcom/taobao/accs/internal/c;->a(Landroid/content/Context;Ljava/lang/String;ZI)Lcom/taobao/accs/f/c;

    move-result-object v13

    const/4 v7, 0x4

    const/4 v11, 0x3

    const/4 v12, 0x2

    if-eqz v13, :cond_11

    .line 273
    invoke-virtual {v13}, Lcom/taobao/accs/f/c;->a()V

    const/16 v17, 0x0

    if-ne v2, v15, :cond_3

    .line 282
    iget-object v7, v0, Lcom/taobao/accs/internal/c;->c:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    const-string v1, "ServiceImpl"

    const-string v2, "handleCommand bindapp pkg error"

    .line 283
    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1
    const-string v7, "app_sercet"

    .line 287
    invoke-virtual {v1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 288
    iget-object v7, v0, Lcom/taobao/accs/internal/c;->c:Landroid/content/Context;

    const-string v8, "appVersion"

    invoke-virtual {v1, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object v8, v10

    move-object v9, v5

    move-object v10, v12

    move-object v11, v4

    move-object v15, v12

    move-object v12, v14

    move-object v3, v13

    move-object/from16 v13, v16

    invoke-static/range {v7 .. v13}, Lcom/taobao/accs/data/Message;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/accs/data/Message;

    move-result-object v7

    .line 301
    iput-object v14, v3, Lcom/taobao/accs/f/c;->a:Ljava/lang/String;

    .line 302
    iget-object v8, v0, Lcom/taobao/accs/internal/c;->c:Landroid/content/Context;

    invoke-static {v8, v5, v15}, Lcom/taobao/accs/utl/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    invoke-virtual {v3}, Lcom/taobao/accs/f/c;->j()Lcom/taobao/accs/client/d;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/taobao/accs/client/d;->a(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "fouce_bind"

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "ServiceImpl"

    .line 309
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " isAppBinded"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v1, v2, v4}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v1, 0xc8

    .line 310
    invoke-virtual {v3, v7, v1}, Lcom/taobao/accs/f/c;->b(Lcom/taobao/accs/data/Message;I)V

    return-void

    :cond_2
    move-object v5, v7

    goto/16 :goto_4

    :cond_3
    move-object v3, v13

    if-ne v2, v12, :cond_4

    const-string v1, "ServiceImpl"

    const-string v5, "onHostStartCommand COMMAND_UNBIND_APP"

    .line 316
    new-array v7, v6, [Ljava/lang/Object;

    invoke-static {v1, v5, v7}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 317
    invoke-virtual {v3}, Lcom/taobao/accs/f/c;->j()Lcom/taobao/accs/client/d;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/taobao/accs/client/d;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 318
    invoke-static {v3, v4}, Lcom/taobao/accs/data/Message;->a(Lcom/taobao/accs/f/c;Ljava/lang/String;)Lcom/taobao/accs/data/Message;

    move-result-object v1

    const-string v2, "ServiceImpl"

    .line 319
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " isAppUnbinded"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v2, v4, v5}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v2, 0xc8

    .line 320
    invoke-virtual {v3, v1, v2}, Lcom/taobao/accs/f/c;->b(Lcom/taobao/accs/data/Message;I)V

    return-void

    :cond_4
    const/4 v5, 0x5

    if-ne v2, v5, :cond_5

    .line 325
    invoke-static {v4, v9}, Lcom/taobao/accs/data/Message;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/accs/data/Message;

    move-result-object v17

    goto/16 :goto_3

    :cond_5
    const/4 v5, 0x6

    if-ne v2, v5, :cond_6

    .line 328
    invoke-static {v4, v9}, Lcom/taobao/accs/data/Message;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/accs/data/Message;

    move-result-object v17

    goto/16 :goto_3

    :cond_6
    if-ne v2, v11, :cond_8

    .line 331
    invoke-static {v4, v8}, Lcom/taobao/accs/data/Message;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/accs/data/Message;

    move-result-object v5

    .line 333
    invoke-virtual {v3}, Lcom/taobao/accs/f/c;->j()Lcom/taobao/accs/client/d;

    move-result-object v7

    invoke-virtual {v7, v4, v8}, Lcom/taobao/accs/client/d;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_e

    const-string v7, "fouce_bind"

    invoke-virtual {v1, v7, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_e

    const-string v1, "ServiceImpl"

    .line 339
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " isUserBinded"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v1, v2, v4}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v5, :cond_7

    const/16 v1, 0xc8

    .line 342
    invoke-virtual {v3, v5, v1}, Lcom/taobao/accs/f/c;->b(Lcom/taobao/accs/data/Message;I)V

    :cond_7
    return-void

    :cond_8
    if-ne v2, v7, :cond_9

    .line 348
    invoke-static {v4}, Lcom/taobao/accs/data/Message;->a(Ljava/lang/String;)Lcom/taobao/accs/data/Message;

    move-result-object v17

    goto/16 :goto_3

    :cond_9
    const/16 v5, 0x64

    if-ne v2, v5, :cond_b

    const-string v5, "data"

    .line 351
    invoke-virtual {v1, v5}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v10

    const-string v5, "dataId"

    .line 353
    invoke-virtual {v1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v5, "target"

    .line 355
    invoke-virtual {v1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v5, "businessId"

    .line 357
    invoke-virtual {v1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v5, "extTag"

    .line 358
    invoke-virtual {v1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :try_start_0
    const-string v7, "send_type"

    .line 361
    invoke-virtual {v1, v7}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/taobao/accs/data/Message$ReqType;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object/from16 v1, v17

    :goto_0
    if-eqz v10, :cond_d

    .line 368
    :try_start_1
    new-instance v7, Ljava/net/URL;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "https://"

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v15, v3

    check-cast v15, Lcom/taobao/accs/f/q;

    invoke-virtual {v15}, Lcom/taobao/accs/f/q;->m()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v7, v13}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v13, v7

    goto :goto_1

    :catch_1
    move-object/from16 v13, v17

    .line 372
    :goto_1
    new-instance v15, Lcom/taobao/accs/ACCSManager$AccsRequest;

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lcom/taobao/accs/ACCSManager$AccsRequest;-><init>(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;Ljava/net/URL;Ljava/lang/String;)V

    .line 373
    invoke-virtual {v15, v5}, Lcom/taobao/accs/ACCSManager$AccsRequest;->setTag(Ljava/lang/String;)V

    if-nez v1, :cond_a

    .line 375
    iget-object v1, v0, Lcom/taobao/accs/internal/c;->c:Landroid/content/Context;

    invoke-static {v3, v1, v4, v15, v6}, Lcom/taobao/accs/data/Message;->a(Lcom/taobao/accs/f/c;Landroid/content/Context;Ljava/lang/String;Lcom/taobao/accs/ACCSManager$AccsRequest;Z)Lcom/taobao/accs/data/Message;

    move-result-object v1

    :goto_2
    move-object/from16 v17, v1

    goto :goto_3

    .line 376
    :cond_a
    sget-object v5, Lcom/taobao/accs/data/Message$ReqType;->REQ:Lcom/taobao/accs/data/Message$ReqType;

    if-ne v1, v5, :cond_d

    .line 377
    iget-object v1, v0, Lcom/taobao/accs/internal/c;->c:Landroid/content/Context;

    invoke-static {v3, v1, v4, v15, v6}, Lcom/taobao/accs/data/Message;->b(Lcom/taobao/accs/f/c;Landroid/content/Context;Ljava/lang/String;Lcom/taobao/accs/ACCSManager$AccsRequest;Z)Lcom/taobao/accs/data/Message;

    move-result-object v1

    goto :goto_2

    :cond_b
    const/16 v5, 0x69

    if-ne v2, v5, :cond_c

    const-string v5, "packs"

    .line 381
    invoke-virtual {v1, v5}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 382
    invoke-static {v4, v1}, Lcom/taobao/accs/data/Message;->a(Ljava/lang/String;Ljava/util/Map;)Lcom/taobao/accs/data/Message;

    move-result-object v17

    goto :goto_3

    :cond_c
    const/16 v5, 0x6a

    if-ne v2, v5, :cond_d

    const-string v2, "com.taobao.accs.intent.action.RECEIVE"

    .line 384
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "command"

    const/4 v3, -0x1

    .line 385
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 386
    iget-object v2, v0, Lcom/taobao/accs/internal/c;->c:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/taobao/accs/data/e;->a(Landroid/content/Context;Landroid/content/Intent;)V

    return-void

    :cond_d
    :goto_3
    move-object/from16 v5, v17

    :cond_e
    :goto_4
    if-eqz v5, :cond_10

    const-string v1, "ServiceImpl"

    const-string v2, "try send message"

    .line 390
    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v1, v2, v4}, Lcom/taobao/accs/utl/ALog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 391
    invoke-virtual {v5}, Lcom/taobao/accs/data/Message;->e()Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;

    move-result-object v1

    if-eqz v1, :cond_f

    .line 392
    invoke-virtual {v5}, Lcom/taobao/accs/data/Message;->e()Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->onSend()V

    :cond_f
    const/4 v1, 0x1

    .line 394
    invoke-virtual {v3, v5, v1}, Lcom/taobao/accs/f/c;->b(Lcom/taobao/accs/data/Message;Z)V

    goto :goto_5

    :cond_10
    const-string v1, "ServiceImpl"

    const-string v5, "message is null"

    .line 396
    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v1, v5, v6}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 397
    invoke-static {v4, v2}, Lcom/taobao/accs/data/Message;->a(Ljava/lang/String;I)Lcom/taobao/accs/data/Message;

    move-result-object v1

    const/4 v2, -0x2

    .line 399
    invoke-virtual {v3, v1, v2}, Lcom/taobao/accs/f/c;->b(Lcom/taobao/accs/data/Message;I)V

    goto :goto_5

    :cond_11
    const-string v1, "ServiceImpl"

    const-string v3, "no connection"

    .line 275
    new-array v4, v7, [Ljava/lang/Object;

    const-string v5, "configTag"

    aput-object v5, v4, v6

    const/4 v5, 0x1

    aput-object v10, v4, v5

    const-string v5, "command"

    aput-object v5, v4, v12

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v11

    invoke-static {v1, v3, v4}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_12
    :goto_5
    return-void
.end method

.method static synthetic e()V
    .locals 0

    return-void
.end method

.method private declared-synchronized g()V
    .locals 10

    monitor-enter p0

    .line 555
    :try_start_0
    sget-object v0, Lcom/taobao/accs/internal/c;->a:Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/taobao/accs/internal/c;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 560
    :cond_0
    sget-object v0, Lcom/taobao/accs/internal/c;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 561
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/taobao/accs/f/c;

    const/4 v4, 0x1

    const/4 v5, 0x2

    if-nez v3, :cond_1

    const-string v0, "ServiceImpl"

    const-string v2, "tryConnect connection null"

    .line 563
    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "appkey"

    aput-object v6, v5, v1

    invoke-virtual {v3}, Lcom/taobao/accs/f/c;->i()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v4

    invoke-static {v0, v2, v5}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 564
    monitor-exit p0

    return-void

    .line 567
    :cond_1
    :try_start_1
    invoke-virtual {v3}, Lcom/taobao/accs/f/c;->k()Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, v3, Lcom/taobao/accs/f/c;->i:Lcom/taobao/accs/b;

    invoke-virtual {v6}, Lcom/taobao/accs/b;->c()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v6, "ServiceImpl"

    const-string v7, "tryConnect secret is null"

    .line 568
    new-array v8, v1, [Ljava/lang/Object;

    invoke-static {v6, v7, v8}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 570
    :cond_2
    invoke-virtual {v3}, Lcom/taobao/accs/f/c;->a()V

    :goto_1
    const-string v6, "ServiceImpl"

    const-string v7, "tryConnect"

    const/4 v8, 0x4

    .line 572
    new-array v8, v8, [Ljava/lang/Object;

    const-string v9, "appkey"

    aput-object v9, v8, v1

    invoke-virtual {v3}, Lcom/taobao/accs/f/c;->i()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v8, v4

    const-string v3, "configTag"

    aput-object v3, v8, v5

    const/4 v3, 0x3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v8, v3

    invoke-static {v6, v7, v8}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 574
    :cond_3
    monitor-exit p0

    return-void

    :cond_4
    :goto_2
    :try_start_2
    const-string v0, "ServiceImpl"

    const-string v2, "tryConnect no connections"

    .line 556
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lcom/taobao/accs/utl/ALog;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 557
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 554
    monitor-exit p0

    throw v0
.end method

.method private h()V
    .locals 2

    .line 600
    sget-object v0, Lcom/taobao/accs/internal/c;->a:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/taobao/accs/internal/c;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 604
    :cond_0
    sget-object v0, Lcom/taobao/accs/internal/c;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 605
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/accs/f/c;

    .line 606
    invoke-virtual {v1}, Lcom/taobao/accs/f/c;->b()V

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    :goto_1
    return-void
.end method

.method private i()V
    .locals 4

    .line 611
    sget-object v0, Lcom/taobao/accs/internal/c;->a:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/taobao/accs/internal/c;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 615
    :cond_0
    sget-object v0, Lcom/taobao/accs/internal/c;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 616
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/accs/f/c;

    .line 617
    invoke-virtual {v1}, Lcom/taobao/accs/f/c;->c()Lcom/taobao/accs/ut/a/c;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 620
    iget-wide v2, p0, Lcom/taobao/accs/internal/c;->d:J

    iput-wide v2, v1, Lcom/taobao/accs/ut/a/c;->h:J

    .line 621
    invoke-virtual {v1}, Lcom/taobao/accs/ut/a/c;->a()V

    goto :goto_0

    :cond_2
    return-void

    :cond_3
    :goto_1
    return-void
.end method

.method private j()V
    .locals 2

    .line 627
    sget-object v0, Lcom/taobao/accs/internal/c;->a:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/taobao/accs/internal/c;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 631
    :cond_0
    sget-object v0, Lcom/taobao/accs/internal/c;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 632
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/accs/f/c;

    .line 633
    invoke-virtual {v1}, Lcom/taobao/accs/f/c;->e()V

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 4

    .line 411
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ServiceImpl"

    .line 412
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "accs probeTaoBao begin......action="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/taobao/accs/utl/ALog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 413
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "org.agoo.android.intent.action.PING_V4"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "source"

    .line 416
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 418
    invoke-static {}, Lcom/taobao/accs/utl/a;->a()Lcom/taobao/accs/utl/a;

    move-result-object v0

    const v1, 0x101d1

    const-string v2, "probeChannelService"

    iget-object v3, p0, Lcom/taobao/accs/internal/c;->c:Landroid/content/Context;

    invoke-static {v3}, Lcom/taobao/accs/utl/b;->q(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/taobao/accs/utl/a;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 419
    iget-object p1, p0, Lcom/taobao/accs/internal/c;->i:Lorg/android/agoo/e/a$a;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public a()V
    .locals 6

    .line 84
    invoke-super {p0}, Lcom/taobao/accs/internal/e;->a()V

    .line 85
    iget-object v0, p0, Lcom/taobao/accs/internal/c;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/taobao/accs/client/a;->a(Landroid/content/Context;)Lcom/taobao/accs/client/a;

    .line 86
    sget-object v0, Lcom/taobao/accs/client/c;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 87
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/taobao/accs/internal/c;->d:J

    .line 88
    iget-wide v0, p0, Lcom/taobao/accs/internal/c;->d:J

    iput-wide v0, p0, Lcom/taobao/accs/internal/c;->e:J

    .line 89
    iget-object v0, p0, Lcom/taobao/accs/internal/c;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/taobao/accs/utl/b;->m(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/accs/internal/c;->g:Ljava/lang/String;

    .line 91
    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V

    iput-object v0, p0, Lcom/taobao/accs/internal/c;->h:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 93
    iget-object v0, p0, Lcom/taobao/accs/internal/c;->c:Landroid/content/Context;

    invoke-static {v0}, Lorg/android/agoo/a/b;->f(Landroid/content/Context;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/taobao/accs/internal/c;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/taobao/accs/c/a;->c(Landroid/content/Context;)V

    .line 96
    iget-object v0, p0, Lcom/taobao/accs/internal/c;->c:Landroid/content/Context;

    const/16 v3, 0x258

    invoke-static {v0, v3, v2}, Lcom/taobao/accs/c/a;->a(Landroid/content/Context;IZ)Lcom/taobao/accs/c/a;

    move-result-object v0

    sput-object v0, Lcom/taobao/accs/internal/c;->f:Lcom/taobao/accs/c/a;

    .line 97
    sget-object v0, Lcom/taobao/accs/internal/c;->f:Lcom/taobao/accs/c/a;

    if-eqz v0, :cond_0

    .line 98
    sget-object v0, Lcom/taobao/accs/internal/c;->f:Lcom/taobao/accs/c/a;

    invoke-virtual {v0}, Lcom/taobao/accs/c/a;->a()V

    .line 104
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/taobao/accs/internal/c;->h:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v3, Lcom/taobao/accs/internal/j;

    invoke-direct {v3, p0}, Lcom/taobao/accs/internal/j;-><init>(Lcom/taobao/accs/internal/c;)V

    invoke-virtual {v0, v3}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v3, "ServiceImpl"

    .line 125
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "serviceImpl init task fail:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v3, v0, v4}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 128
    :goto_0
    sget-object v0, Lcom/taobao/accs/utl/ALog$Level;->I:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v0}, Lcom/taobao/accs/utl/ALog;->a(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "ServiceImpl"

    const-string v3, "ServiceImpl onCreate"

    const/4 v4, 0x6

    .line 129
    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "ClassLoader"

    aput-object v5, v4, v2

    const/4 v2, 0x1

    const-class v5, Lcom/taobao/accs/internal/c;

    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    const-string v2, "sdkv"

    aput-object v2, v4, v1

    const/4 v1, 0x3

    const/16 v2, 0xdd

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v1

    const/4 v1, 0x4

    const-string v2, "procStart"

    aput-object v2, v4, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/taobao/accs/client/c;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->intValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v1

    invoke-static {v0, v3, v4}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public b()V
    .locals 4

    .line 473
    invoke-super {p0}, Lcom/taobao/accs/internal/e;->b()V

    const-string v0, "ServiceImpl"

    const-string v1, "Service onDestroy"

    const/4 v2, 0x0

    .line 474
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 475
    iget-object v0, p0, Lcom/taobao/accs/internal/c;->c:Landroid/content/Context;

    const-string v1, "service_end"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/taobao/accs/utl/b;->a(Landroid/content/Context;Ljava/lang/String;J)V

    const/4 v0, 0x0

    .line 476
    iput-object v0, p0, Lcom/taobao/accs/internal/c;->b:Landroid/app/Service;

    .line 477
    iput-object v0, p0, Lcom/taobao/accs/internal/c;->c:Landroid/content/Context;

    .line 478
    invoke-direct {p0}, Lcom/taobao/accs/internal/c;->j()V

    .line 479
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    return-void
.end method

.method public b(Landroid/content/Intent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public c(Landroid/content/Intent;)I
    .locals 13

    .line 140
    iget-object v0, p0, Lcom/taobao/accs/internal/c;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/taobao/accs/utl/b;->g(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string p1, "ServiceImpl"

    const-string v0, "service disabled!"

    .line 141
    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {p1, v0, v3}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 142
    invoke-direct {p0, v2}, Lcom/taobao/accs/internal/c;->b(Z)V

    return v1

    .line 145
    :cond_0
    sget-object v0, Lcom/taobao/accs/utl/ALog$Level;->I:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v0}, Lcom/taobao/accs/utl/ALog;->a(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "ServiceImpl"

    .line 146
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onHostStartCommand:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    const/4 v0, 0x1

    .line 150
    :try_start_0
    sget-object v3, Lcom/taobao/accs/utl/ALog$Level;->D:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v3}, Lcom/taobao/accs/utl/ALog;->a(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v3

    const/4 v4, 0x3

    if-eqz v3, :cond_2

    if-eqz p1, :cond_2

    .line 152
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 154
    invoke-virtual {v3}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v7, "ServiceImpl"

    const-string v8, "key"

    .line 155
    new-array v9, v4, [Ljava/lang/Object;

    aput-object v6, v9, v2

    const-string v10, " value"

    aput-object v10, v9, v0

    invoke-virtual {v3, v6}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v9, v1

    invoke-static {v7, v8, v9}, Lcom/taobao/accs/utl/ALog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 160
    :cond_2
    invoke-static {}, Lcom/taobao/accs/utl/h;->c()I

    move-result v3
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v5, 0x0

    if-le v3, v4, :cond_3

    :try_start_1
    const-string v7, "ServiceImpl"

    const-string v8, "load SO fail 4 times, don\'t auto restart"

    .line 163
    new-array v9, v2, [Ljava/lang/Object;

    invoke-static {v7, v8, v9}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v7, "accs"

    const-string v8, "sofail"

    .line 164
    invoke-static {v3}, Lcom/taobao/accs/utl/b;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v8, v3, v5, v6}, Lcom/taobao/accs/utl/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v3, 0x2

    goto :goto_1

    :catch_0
    move-exception p1

    const/4 v3, 0x2

    goto/16 :goto_3

    :cond_3
    const/4 v3, 0x1

    :goto_1
    if-nez p1, :cond_4

    const/4 v7, 0x0

    goto :goto_2

    .line 167
    :cond_4
    :try_start_2
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    .line 170
    :goto_2
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_5

    const-string v8, "org.agoo.android.intent.action.PING_V4"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    const-string v8, "source"

    .line 171
    invoke-virtual {p1, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "ServiceImpl"

    const-string v10, "org.agoo.android.intent.action.PING_V4,start channel by brothers"

    .line 172
    new-array v4, v4, [Ljava/lang/Object;

    const-string v11, "serviceStart"

    aput-object v11, v4, v2

    sget-object v11, Lcom/taobao/accs/client/c;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v11}, Ljava/util/concurrent/atomic/AtomicInteger;->intValue()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v4, v0

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "source"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v4, v1

    invoke-static {v9, v10, v4}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v1, "accs"

    const-string v4, "startChannel"

    .line 173
    invoke-static {v1, v4, v8, v5, v6}, Lcom/taobao/accs/utl/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    .line 174
    invoke-static {}, Lcom/taobao/accs/client/c;->c()Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "accs"

    const-string v4, "createChannel"

    .line 175
    invoke-static {v1, v4, v8, v5, v6}, Lcom/taobao/accs/utl/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    .line 180
    :cond_5
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 181
    invoke-direct {p0}, Lcom/taobao/accs/internal/c;->g()V

    .line 182
    invoke-direct {p0, v2, v2}, Lcom/taobao/accs/internal/c;->a(ZZ)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 243
    sget-object p1, Lcom/taobao/accs/client/c;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    return v3

    .line 191
    :cond_6
    :try_start_3
    invoke-direct {p0}, Lcom/taobao/accs/internal/c;->g()V

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    .line 193
    invoke-static {v7, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    goto/16 :goto_4

    :cond_7
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 202
    invoke-static {v7, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 204
    iget-object p1, p0, Lcom/taobao/accs/internal/c;->c:Landroid/content/Context;

    invoke-static {p1}, Lcom/taobao/accs/utl/b;->m(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 206
    iget-object v1, p0, Lcom/taobao/accs/internal/c;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/taobao/accs/utl/b;->p(Landroid/content/Context;)Z

    move-result v1

    .line 208
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "network change:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/taobao/accs/internal/c;->g:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ServiceImpl"

    .line 210
    new-array v6, v2, [Ljava/lang/Object;

    invoke-static {v5, v4, v6}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v1, :cond_8

    .line 212
    iput-object p1, p0, Lcom/taobao/accs/internal/c;->g:Ljava/lang/String;

    .line 213
    invoke-direct {p0}, Lcom/taobao/accs/internal/c;->h()V

    .line 214
    invoke-direct {p0, v0, v2}, Lcom/taobao/accs/internal/c;->a(ZZ)V

    .line 215
    invoke-static {}, Lcom/taobao/accs/utl/a;->a()Lcom/taobao/accs/utl/a;

    move-result-object v4

    const v5, 0x101d1

    const-string v6, "CONNECTIVITY_CHANGE"

    invoke-static {}, Lcom/taobao/accs/utl/b;->d()Ljava/lang/String;

    move-result-object v8

    const-string v9, "0"

    move-object v7, p1

    invoke-virtual/range {v4 .. v9}, Lcom/taobao/accs/utl/a;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_8
    const-string v0, "unknown"

    .line 220
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 221
    invoke-direct {p0}, Lcom/taobao/accs/internal/c;->h()V

    .line 222
    iput-object p1, p0, Lcom/taobao/accs/internal/c;->g:Ljava/lang/String;

    goto :goto_4

    :cond_9
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    .line 225
    invoke-static {v7, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 227
    invoke-direct {p0, v0, v2}, Lcom/taobao/accs/internal/c;->a(ZZ)V

    goto :goto_4

    :cond_a
    const-string v1, "android.intent.action.USER_PRESENT"

    .line 228
    invoke-static {v7, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_b

    const-string p1, "ServiceImpl"

    const-string v1, "action android.intent.action.USER_PRESENT"

    .line 230
    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {p1, v1, v4}, Lcom/taobao/accs/utl/ALog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 231
    invoke-direct {p0, v0, v2}, Lcom/taobao/accs/internal/c;->a(ZZ)V

    goto :goto_4

    :cond_b
    const-string v0, "com.taobao.accs.intent.action.COMMAND"

    .line 232
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 233
    invoke-direct {p0, p1}, Lcom/taobao/accs/internal/c;->d(Landroid/content/Intent;)V

    goto :goto_4

    :cond_c
    const-string p1, "com.taobao.accs.intent.action.START_FROM_AGOO"

    .line 234
    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d

    const-string p1, "ServiceImpl"

    const-string v0, "ACTION_START_FROM_AGOO"

    .line 235
    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_4

    :catch_1
    move-exception p1

    goto :goto_3

    :catchall_0
    move-exception p1

    goto :goto_5

    :catch_2
    move-exception p1

    const/4 v3, 0x1

    :goto_3
    :try_start_4
    const-string v0, "ServiceImpl"

    const-string v1, "onHostStartCommand"

    .line 240
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, p1, v2}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 241
    invoke-static {p1}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 243
    :cond_d
    :goto_4
    sget-object p1, Lcom/taobao/accs/client/c;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    return v3

    :goto_5
    sget-object v0, Lcom/taobao/accs/client/c;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    throw p1
.end method

.method public c()V
    .locals 5

    const-string v0, "ServiceImpl"

    const-string v1, "startConnect"

    const/4 v2, 0x0

    .line 659
    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 661
    :try_start_0
    invoke-direct {p0}, Lcom/taobao/accs/internal/c;->g()V

    .line 662
    invoke-direct {p0, v2, v2}, Lcom/taobao/accs/internal/c;->a(ZZ)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "ServiceImpl"

    .line 664
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "tryConnect is error,e="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public d()V
    .locals 0

    .line 671
    invoke-virtual {p0}, Lcom/taobao/accs/internal/c;->c()V

    return-void
.end method
