.class public Lcom/umeng/commonsdk/a;
.super Ljava/lang/Object;
.source "UMConfigure.java"


# static fields
.field public static a:Lcom/umeng/commonsdk/a/e; = null

.field private static b:Z = false

.field private static c:Z = false

.field private static d:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    new-instance v0, Lcom/umeng/commonsdk/a/e;

    invoke-direct {v0}, Lcom/umeng/commonsdk/a/e;-><init>()V

    sput-object v0, Lcom/umeng/commonsdk/a;->a:Lcom/umeng/commonsdk/a/e;

    .line 306
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/umeng/commonsdk/a;->d:Ljava/lang/Object;

    return-void
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 49
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 9

    .line 336
    :try_start_0
    sget-boolean v0, Lcom/umeng/commonsdk/a;->b:Z

    if-eqz v0, :cond_0

    const-string v0, "UMConfigure"

    const-string v1, "common version is 1.5.3"

    .line 337
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "UMConfigure"

    .line 338
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "common type is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/umeng/commonsdk/statistics/b;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-nez p0, :cond_2

    .line 343
    sget-boolean p0, Lcom/umeng/commonsdk/a;->b:Z

    if-eqz p0, :cond_1

    const-string p0, "UMConfigure"

    const-string p1, "context is null !!!"

    .line 344
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    .line 348
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 350
    sget-boolean v1, Lcom/umeng/commonsdk/a;->b:Z

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_3

    .line 351
    invoke-static {v0}, Lcom/umeng/commonsdk/b/a;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 352
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 353
    new-array v5, v2, [Ljava/lang/String;

    const-string v6, "@"

    aput-object v6, v5, v3

    const-string v6, "#"

    aput-object v6, v5, v4

    .line 354
    new-array v6, v2, [Ljava/lang/String;

    aput-object p1, v6, v3

    aput-object v1, v6, v4

    .line 355
    sget-object v1, Lcom/umeng/commonsdk/a;->a:Lcom/umeng/commonsdk/a/e;

    const-string v1, "\u8bf7\u6ce8\u610f\uff1a\u60a8init\u63a5\u53e3\u4e2d\u8bbe\u7f6e\u7684AppKey\u662f@\uff0cmanifest\u4e2d\u8bbe\u7f6e\u7684AppKey\u662f#\uff0cinit\u63a5\u53e3\u8bbe\u7f6e\u7684AppKey\u4f1a\u8986\u76d6manifest\u4e2d\u8bbe\u7f6e\u7684AppKey"

    const/4 v7, 0x3

    const-string v8, ""

    invoke-static {v1, v7, v8, v5, v6}, Lcom/umeng/commonsdk/a/e;->a(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 360
    :cond_3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 361
    invoke-static {v0}, Lcom/umeng/commonsdk/b/a;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 365
    :cond_4
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 366
    invoke-static {v0}, Lcom/umeng/commonsdk/b/a;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    .line 368
    :cond_5
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string p2, "Unknown"

    .line 371
    :cond_6
    invoke-static {v0, p2}, Lcom/umeng/commonsdk/b/a;->c(Landroid/content/Context;Ljava/lang/String;)V

    .line 372
    sget-boolean v1, Lcom/umeng/commonsdk/a;->b:Z

    if-eqz v1, :cond_7

    const-string v1, "UMConfigure"

    .line 373
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "channel is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    :cond_7
    invoke-static {}, Lcom/umeng/commonsdk/a;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_a
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_9

    :try_start_1
    const-string v1, "com.umeng.analytics.MobclickAgent"

    .line 380
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_8

    const-string v5, "init"

    .line 382
    new-array v6, v4, [Ljava/lang/Class;

    const-class v7, Landroid/content/Context;

    aput-object v7, v6, v3

    invoke-virtual {v1, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    if-eqz v5, :cond_8

    .line 384
    invoke-virtual {v5, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 385
    new-array v6, v4, [Ljava/lang/Object;

    aput-object v0, v6, v3

    invoke-virtual {v5, v1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    sget-boolean v1, Lcom/umeng/commonsdk/a;->b:Z

    if-eqz v1, :cond_8

    .line 387
    sget-object v1, Lcom/umeng/commonsdk/a;->a:Lcom/umeng/commonsdk/a/e;

    const-string v1, "\u7edf\u8ba1SDK\u521d\u59cb\u5316\u6210\u529f"

    const-string v5, ""

    invoke-static {v1, v2, v5}, Lcom/umeng/commonsdk/a/e;->b(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_9

    :catch_0
    :cond_8
    :try_start_2
    const-string v1, "com.umeng.message.f"

    .line 397
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_9

    const-string v5, "getInstance"

    .line 399
    new-array v6, v4, [Ljava/lang/Class;

    const-class v7, Landroid/content/Context;

    aput-object v7, v6, v3

    invoke-virtual {v1, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    if-eqz v5, :cond_9

    .line 401
    new-array v6, v4, [Ljava/lang/Object;

    aput-object v0, v6, v3

    invoke-virtual {v5, v1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_9

    const-string v6, "setAppkey"

    .line 403
    new-array v7, v4, [Ljava/lang/Class;

    const-class v8, Ljava/lang/String;

    aput-object v8, v7, v3

    invoke-virtual {v1, v6, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 405
    invoke-virtual {v1, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 406
    new-array v6, v4, [Ljava/lang/Object;

    aput-object p1, v6, v3

    invoke-virtual {v1, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 407
    sget-boolean v1, Lcom/umeng/commonsdk/a;->b:Z

    if-eqz v1, :cond_9

    .line 408
    sget-object v1, Lcom/umeng/commonsdk/a;->a:Lcom/umeng/commonsdk/a/e;

    const-string v1, "PUSH AppKey\u8bbe\u7f6e\u6210\u529f"

    const-string v5, ""

    invoke-static {v1, v2, v5}, Lcom/umeng/commonsdk/a/e;->b(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_9

    :catch_1
    :cond_9
    :try_start_3
    const-string v1, "com.umeng.message.f"

    .line 417
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_a

    const-string v5, "getInstance"

    .line 419
    new-array v6, v4, [Ljava/lang/Class;

    const-class v7, Landroid/content/Context;

    aput-object v7, v6, v3

    invoke-virtual {v1, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    if-eqz v5, :cond_a

    .line 421
    new-array v6, v4, [Ljava/lang/Object;

    aput-object v0, v6, v3

    invoke-virtual {v5, v1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_a

    const-string v6, "setMessageChannel"

    .line 423
    new-array v7, v4, [Ljava/lang/Class;

    const-class v8, Ljava/lang/String;

    aput-object v8, v7, v3

    invoke-virtual {v1, v6, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 425
    invoke-virtual {v1, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 426
    new-array v6, v4, [Ljava/lang/Object;

    aput-object p2, v6, v3

    invoke-virtual {v1, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 427
    sget-boolean p2, Lcom/umeng/commonsdk/a;->b:Z

    if-eqz p2, :cond_a

    .line 428
    sget-object p2, Lcom/umeng/commonsdk/a;->a:Lcom/umeng/commonsdk/a/e;

    const-string p2, "PUSH Channel\u8bbe\u7f6e\u6210\u529f"

    const-string v1, ""

    invoke-static {p2, v2, v1}, Lcom/umeng/commonsdk/a/e;->b(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_9

    :catch_2
    :cond_a
    :try_start_4
    const-string p2, "com.umeng.socialize.UMShareAPI"

    .line 442
    invoke-static {p2}, Lcom/umeng/commonsdk/a;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p2

    const-string v1, "APPKEY"

    .line 443
    invoke-static {p2, v1, p1}, Lcom/umeng/commonsdk/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_b

    const-string v1, "init"

    .line 445
    new-array v5, v2, [Ljava/lang/Class;

    const-class v6, Landroid/content/Context;

    aput-object v6, v5, v3

    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v4

    invoke-virtual {p2, v1, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 447
    invoke-virtual {v1, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 448
    new-array v5, v2, [Ljava/lang/Object;

    aput-object v0, v5, v3

    aput-object p1, v5, v4

    invoke-virtual {v1, p2, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 449
    sget-boolean p2, Lcom/umeng/commonsdk/a;->b:Z

    if-eqz p2, :cond_b

    .line 450
    sget-object p2, Lcom/umeng/commonsdk/a;->a:Lcom/umeng/commonsdk/a/e;

    const-string p2, "Share AppKey\u8bbe\u7f6e\u6210\u529f"

    const-string v1, ""

    invoke-static {p2, v2, v1}, Lcom/umeng/commonsdk/a/e;->b(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_a

    .line 459
    :catch_3
    :cond_b
    :try_start_5
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_d

    .line 460
    sget-boolean p0, Lcom/umeng/commonsdk/a;->b:Z

    if-eqz p0, :cond_c

    .line 461
    sget-object p0, Lcom/umeng/commonsdk/a;->a:Lcom/umeng/commonsdk/a/e;

    sget-object p0, Lcom/umeng/commonsdk/a/f;->c:Ljava/lang/String;

    const-string p1, "\\|"

    invoke-static {p0, v3, p1}, Lcom/umeng/commonsdk/a/e;->a(Ljava/lang/String;ILjava/lang/String;)V

    :cond_c
    return-void

    .line 465
    :cond_d
    invoke-static {v0, p1}, Lcom/umeng/commonsdk/b/a;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 466
    invoke-static {v0}, Lcom/umeng/commonsdk/b/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    .line 467
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_f

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    .line 468
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_e

    .line 469
    sget-boolean v1, Lcom/umeng/commonsdk/a;->b:Z

    if-eqz v1, :cond_e

    .line 470
    sget-object v1, Lcom/umeng/commonsdk/a;->a:Lcom/umeng/commonsdk/a/e;

    const-string v1, "AppKey\u6539\u53d8!!!"

    const-string v5, ""

    invoke-static {v1, v2, v5}, Lcom/umeng/commonsdk/a/e;->b(Ljava/lang/String;ILjava/lang/String;)V

    .line 473
    :cond_e
    invoke-static {v0, p1}, Lcom/umeng/commonsdk/b/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 475
    :cond_f
    sget-boolean v1, Lcom/umeng/commonsdk/a;->b:Z

    if-eqz v1, :cond_10

    const-string v1, "UMConfigure"

    .line 476
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "current appkey is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", last appkey is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    :cond_10
    invoke-static {p3}, Lcom/umeng/commonsdk/statistics/a;->a(I)V

    .line 485
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_11

    .line 486
    sget-boolean p2, Lcom/umeng/commonsdk/a;->b:Z

    goto :goto_0

    .line 490
    :cond_11
    sget-boolean p2, Lcom/umeng/commonsdk/a;->b:Z

    if-eqz p2, :cond_12

    const-string p2, "UMConfigure"

    .line 491
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "push secret is "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_a
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_9

    :cond_12
    :try_start_6
    const-string p2, "com.umeng.message.f"

    .line 494
    invoke-static {p2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p2

    if-eqz p2, :cond_13

    const-string p3, "getInstance"

    .line 496
    new-array v1, v4, [Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    aput-object v5, v1, v3

    invoke-virtual {p2, p3, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p3

    if-eqz p3, :cond_13

    .line 498
    invoke-virtual {p3, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 499
    new-array v1, v4, [Ljava/lang/Object;

    aput-object v0, v1, v3

    invoke-virtual {p3, p2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    if-eqz p3, :cond_13

    const-string v1, "setSecret"

    .line 501
    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v3

    invoke-virtual {p2, v1, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    if-eqz p2, :cond_13

    .line 503
    invoke-virtual {p2, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 504
    new-array v1, v4, [Ljava/lang/Object;

    aput-object p4, v1, v3

    invoke-virtual {p2, p3, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 505
    sget-boolean p2, Lcom/umeng/commonsdk/a;->b:Z

    if-eqz p2, :cond_13

    .line 506
    sget-object p2, Lcom/umeng/commonsdk/a;->a:Lcom/umeng/commonsdk/a/e;

    const-string p2, "PUSH Secret\u8bbe\u7f6e\u6210\u529f"

    const-string p3, ""

    invoke-static {p2, v2, p3}, Lcom/umeng/commonsdk/a/e;->b(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_a

    :catch_4
    :cond_13
    :goto_0
    :try_start_7
    const-string p2, "com.umeng.error.UMError"

    .line 518
    invoke-static {p2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p2

    if-eqz p2, :cond_14

    const-string p3, "init"

    .line 521
    new-array p4, v4, [Ljava/lang/Class;

    const-class v1, Landroid/content/Context;

    aput-object v1, p4, v3

    invoke-virtual {p2, p3, p4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p3

    if-eqz p3, :cond_14

    .line 523
    invoke-virtual {p3, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 524
    new-array p4, v4, [Ljava/lang/Object;

    aput-object v0, p4, v3

    invoke-virtual {p3, p2, p4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 525
    sget-boolean p2, Lcom/umeng/commonsdk/a;->b:Z

    if-eqz p2, :cond_14

    .line 526
    sget-object p2, Lcom/umeng/commonsdk/a;->a:Lcom/umeng/commonsdk/a/e;

    const-string p2, "\u9519\u8bef\u5206\u6790SDK\u521d\u59cb\u5316\u6210\u529f"

    const-string p3, ""

    invoke-static {p2, v2, p3}, Lcom/umeng/commonsdk/a/e;->b(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_a

    .line 534
    :catch_5
    :cond_14
    :try_start_8
    sget p2, Lcom/umeng/commonsdk/statistics/b;->a:I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_a
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_9

    if-eq p2, v4, :cond_15

    :try_start_9
    const-string p2, "com.umeng.commonsdk.b"

    .line 537
    invoke-static {p2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p2

    if-eqz p2, :cond_16

    const-string p3, "init"

    .line 539
    new-array p4, v4, [Ljava/lang/Class;

    const-class v1, Landroid/content/Context;

    aput-object v1, p4, v3

    invoke-virtual {p2, p3, p4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p3

    if-eqz p3, :cond_16

    .line 541
    invoke-virtual {p3, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 542
    new-array p4, v4, [Ljava/lang/Object;

    aput-object v0, p4, v3

    invoke-virtual {p3, p2, p4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_6
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_a

    goto :goto_1

    .line 548
    :cond_15
    :try_start_a
    invoke-static {v0}, Lcom/umeng/commonsdk/c;->a(Landroid/content/Context;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_9

    :catch_6
    :cond_16
    :goto_1
    const/4 p2, 0x0

    :try_start_b
    const-string p3, "com.umeng.visual.UMVisualAgent"

    .line 554
    invoke-static {p3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p3

    const-string p4, "init"

    .line 555
    new-array v0, v2, [Ljava/lang/Class;

    const-class v1, Landroid/content/Context;

    aput-object v1, v0, v3

    const-class v1, Ljava/lang/String;

    aput-object v1, v0, v4

    invoke-virtual {p3, p4, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p3

    .line 556
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-nez p4, :cond_17

    .line 557
    new-array p4, v2, [Ljava/lang/Object;

    aput-object p0, p4, v3

    aput-object p1, p4, v4

    invoke-virtual {p3, p2, p4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 559
    :cond_17
    sget-boolean p1, Lcom/umeng/commonsdk/statistics/a;->c:Z

    if-eqz p1, :cond_18

    const-string p1, "initDebugSDK appkey  is null"

    .line 560
    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/a/d;->d(Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/ClassNotFoundException; {:try_start_b .. :try_end_b} :catch_7
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_8
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_a

    goto :goto_2

    :catch_7
    :try_start_c
    const-string p1, "com.umeng.analytics.vismode.event.VisualHelper"

    .line 565
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    const-string p3, "init"

    .line 566
    new-array p4, v4, [Ljava/lang/Class;

    const-class v0, Landroid/content/Context;

    aput-object v0, p4, v3

    invoke-virtual {p1, p3, p4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    .line 567
    new-array p3, v4, [Ljava/lang/Object;

    aput-object p0, p3, v3

    invoke-virtual {p1, p2, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_8
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_9

    .line 572
    :catch_8
    :cond_18
    :goto_2
    :try_start_d
    sget-object p0, Lcom/umeng/commonsdk/a;->d:Ljava/lang/Object;

    monitor-enter p0
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_a
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_9

    .line 573
    :try_start_e
    sput-boolean v4, Lcom/umeng/commonsdk/a;->c:Z

    .line 574
    monitor-exit p0

    goto :goto_3

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    :try_start_f
    throw p1
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_a
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_9

    :catch_9
    move-exception p0

    .line 581
    sget-boolean p1, Lcom/umeng/commonsdk/a;->b:Z

    if-eqz p1, :cond_19

    const-string p1, "UMConfigure"

    .line 582
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "init e is "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :catch_a
    move-exception p0

    .line 577
    sget-boolean p1, Lcom/umeng/commonsdk/a;->b:Z

    if-eqz p1, :cond_19

    const-string p1, "UMConfigure"

    .line 578
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "init e is "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_19
    :goto_3
    return-void
.end method

.method private static a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 218
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    .line 219
    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public static a()Z
    .locals 1

    .line 588
    sget-boolean v0, Lcom/umeng/commonsdk/a;->b:Z

    return v0
.end method

.method private static b()V
    .locals 3

    .line 252
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "com.umeng.analytics.vismode.V"

    .line 254
    invoke-static {v1}, Lcom/umeng/commonsdk/a;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v1, "v"

    .line 256
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_0
    const-string v1, "com.umeng.analytics.MobclickAgent"

    .line 258
    invoke-static {v1}, Lcom/umeng/commonsdk/a;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v1, "a"

    .line 260
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    :goto_0
    const-string v1, "com.umeng.visual.UMVisualAgent"

    .line 264
    invoke-static {v1}, Lcom/umeng/commonsdk/a;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v1, "x"

    .line 266
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    const-string v1, "com.umeng.message.f"

    .line 269
    invoke-static {v1}, Lcom/umeng/commonsdk/a;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_3

    const-string v1, "p"

    .line 271
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_3
    const-string v1, "com.umeng.socialize.UMShareAPI"

    .line 274
    invoke-static {v1}, Lcom/umeng/commonsdk/a;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_4

    const-string v1, "s"

    .line 276
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_4
    const-string v1, "com.umeng.error.UMError"

    .line 279
    invoke-static {v1}, Lcom/umeng/commonsdk/a;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_5

    const-string v1, "e"

    .line 281
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_5
    const-string v1, "i"

    .line 289
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 291
    sget v1, Lcom/umeng/commonsdk/statistics/b;->a:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_6

    const-string v1, "com.umeng.commonsdk.internal.UMOplus"

    .line 292
    invoke-static {v1}, Lcom/umeng/commonsdk/a;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_6

    const-string v1, "o"

    .line 294
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 298
    :cond_6
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 299
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/umeng/commonsdk/statistics/e;->a:Ljava/lang/String;

    .line 300
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/umeng/commonsdk/stateless/a;->b:Ljava/lang/String;

    :cond_7
    return-void
.end method
