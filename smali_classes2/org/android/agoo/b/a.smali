.class public Lorg/android/agoo/b/a;
.super Ljava/lang/Object;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/android/agoo/b/a$a;,
        Lorg/android/agoo/b/a$b;
    }
.end annotation


# static fields
.field private static d:Landroid/content/Context;


# instance fields
.field protected a:Lorg/android/agoo/b/c;

.field private b:Lorg/android/agoo/d/c;

.field private c:Ljava/util/concurrent/ScheduledThreadPoolExecutor;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 48
    iput-object v0, p0, Lorg/android/agoo/b/a;->a:Lorg/android/agoo/b/c;

    .line 49
    iput-object v0, p0, Lorg/android/agoo/b/a;->b:Lorg/android/agoo/d/c;

    return-void
.end method

.method private static a(JLorg/android/agoo/a/c;)Landroid/os/Bundle;
    .locals 8

    .line 465
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 467
    :try_start_0
    invoke-static {p0, p1}, Ljava/lang/Long;->toBinaryString(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    if-eqz p0, :cond_4

    .line 469
    array-length p1, p0

    const/16 v1, 0x8

    if-gt v1, p1, :cond_4

    .line 470
    array-length p1, p0

    const/4 v2, 0x1

    const/16 v3, 0x31

    if-gt v1, p1, :cond_1

    const-string p1, "encrypted"

    .line 471
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-char v6, p0, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v6, 0x2

    aget-char v7, p0, v6

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v7, 0x3

    aget-char v7, p0, v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v7, 0x4

    aget-char v7, p0, v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, p1, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x6

    .line 476
    aget-char p1, p0, p1

    if-ne p1, v3, :cond_0

    const-string p1, "report"

    const-string v4, "1"

    .line 477
    invoke-virtual {v0, p1, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "1"

    .line 478
    iput-object p1, p2, Lorg/android/agoo/a/c;->j:Ljava/lang/String;

    :cond_0
    const/4 p1, 0x7

    .line 480
    aget-char p1, p0, p1

    if-ne p1, v3, :cond_1

    const-string p1, "notify"

    const-string p2, "1"

    .line 481
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    :cond_1
    array-length p1, p0

    const/16 p2, 0x9

    if-gt p2, p1, :cond_2

    .line 486
    aget-char p1, p0, v1

    if-ne p1, v3, :cond_2

    const-string p1, "has_test"

    const-string v1, "1"

    .line 487
    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    :cond_2
    array-length p1, p0

    const/16 v1, 0xa

    if-gt v1, p1, :cond_3

    .line 492
    aget-char p1, p0, p2

    if-ne p1, v3, :cond_3

    const-string p1, "duplicate"

    const-string p2, "1"

    .line 493
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    const/16 p1, 0xb

    .line 497
    array-length p2, p0

    if-gt p1, p2, :cond_4

    .line 498
    aget-char p0, p0, v1

    if-ne p0, v3, :cond_4

    const-string p0, "popup"

    .line 499
    invoke-virtual {v0, p0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_4
    return-object v0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 302
    :try_start_0
    sget-object v2, Lorg/android/agoo/b/a;->d:Landroid/content/Context;

    invoke-static {v2}, Lorg/android/agoo/a/b;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 303
    sget v3, Lcom/taobao/accs/client/c;->a:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 304
    sget-object v3, Lcom/taobao/accs/utl/c;->b:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 305
    sget-object v3, Lcom/taobao/accs/utl/c;->b:Ljava/lang/String;

    const-string v4, "utf-8"

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lorg/android/agoo/b/a;->d:Landroid/content/Context;

    invoke-static {v5}, Lcom/taobao/accs/utl/c;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "utf-8"

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-static {v3, v4}, Lorg/android/agoo/a/e;->a([B[B)[B

    move-result-object v3

    goto :goto_1

    :cond_0
    const-string v3, "AgooFactory"

    const-string v4, "getAppsign secret null"

    .line 308
    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 311
    :cond_1
    sget-object v3, Lorg/android/agoo/b/a;->d:Landroid/content/Context;

    invoke-static {v3}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/wireless/security/open/SecurityGuardManager;

    move-result-object v3

    if-eqz v3, :cond_2

    const-string v4, "AgooFactory"

    const-string v5, "SecurityGuardManager not null!"

    .line 313
    new-array v6, v1, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/taobao/accs/utl/ALog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 314
    invoke-virtual {v3}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getSecureSignatureComp()Lcom/alibaba/wireless/security/open/securesignature/ISecureSignatureComponent;

    move-result-object v3

    .line 315
    new-instance v4, Lcom/alibaba/wireless/security/open/SecurityGuardParamContext;

    invoke-direct {v4}, Lcom/alibaba/wireless/security/open/SecurityGuardParamContext;-><init>()V

    .line 316
    iput-object v2, v4, Lcom/alibaba/wireless/security/open/SecurityGuardParamContext;->appKey:Ljava/lang/String;

    .line 317
    iget-object v5, v4, Lcom/alibaba/wireless/security/open/SecurityGuardParamContext;->paramMap:Ljava/util/Map;

    const-string v6, "INPUT"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v8, Lorg/android/agoo/b/a;->d:Landroid/content/Context;

    invoke-static {v8}, Lcom/taobao/accs/utl/c;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v5, 0x3

    .line 318
    iput v5, v4, Lcom/alibaba/wireless/security/open/SecurityGuardParamContext;->requestType:I

    .line 320
    sget-object v5, Lcom/taobao/accs/client/c;->c:Ljava/lang/String;

    invoke-interface {v3, v4, v5}, Lcom/alibaba/wireless/security/open/securesignature/ISecureSignatureComponent;->signRequest(Lcom/alibaba/wireless/security/open/SecurityGuardParamContext;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 321
    invoke-static {v3}, Lorg/android/agoo/a/e;->a(Ljava/lang/String;)[B

    move-result-object v3

    goto :goto_1

    :cond_2
    const-string v3, "AgooFactory"

    const-string v4, "SecurityGuardManager is null"

    .line 323
    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    move-object v3, v0

    :goto_1
    if-eqz v3, :cond_3

    .line 326
    array-length v4, v3

    if-lez v4, :cond_3

    const/16 v4, 0x10

    .line 327
    invoke-static {p0, v4}, Lorg/android/agoo/a/d;->a(Ljava/lang/String;I)[B

    move-result-object p0

    new-instance v4, Ljavax/crypto/spec/SecretKeySpec;

    invoke-static {v3}, Lorg/android/agoo/a/e;->a([B)[B

    move-result-object v3

    const-string v5, "AES"

    invoke-direct {v4, v3, v5}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const-string v3, "utf-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {v2}, Lorg/android/agoo/a/e;->a([B)[B

    move-result-object v2

    invoke-static {p0, v4, v2}, Lorg/android/agoo/a/e;->a([BLjavax/crypto/spec/SecretKeySpec;[B)[B

    move-result-object p0

    .line 329
    new-instance v2, Ljava/lang/String;

    const-string v3, "utf-8"

    invoke-direct {v2, p0, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    move-object v0, v2

    goto :goto_2

    :cond_3
    const-string p0, "AgooFactory"

    const-string v2, "aesDecrypt key is null!"

    .line 331
    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {p0, v2, v3}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    const-string v2, "AgooFactory"

    const-string v3, "parseEncryptedMsg failure: "

    .line 334
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, p0, v1}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :goto_2
    return-object v0
.end method

.method static synthetic a(Lorg/android/agoo/b/a;)Lorg/android/agoo/d/c;
    .locals 0

    .line 43
    iget-object p0, p0, Lorg/android/agoo/b/a;->b:Lorg/android/agoo/d/c;

    return-object p0
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;ZLjava/lang/String;Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;)V
    .locals 7

    .line 513
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "org.agoo.android.intent.action.RECEIVE"

    .line 514
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 515
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 516
    invoke-virtual {v0, p3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const-string v1, "type"

    const-string v2, "common-push"

    .line 517
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "message_source"

    .line 518
    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 p5, 0x20

    .line 519
    invoke-virtual {v0, p5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/4 p5, 0x0

    .line 521
    :try_start_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "accs_extra"

    .line 522
    invoke-virtual {v1, v2, p6}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string p6, "msg_agoo_bundle"

    .line 523
    invoke-virtual {v0, p6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p6

    const-string v1, "AgooFactory"

    const-string v2, "sendMsgToBussiness"

    .line 525
    new-array v3, p5, [Ljava/lang/Object;

    invoke-static {v1, v2, p6, v3}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 528
    :goto_0
    sget-object p6, Lcom/taobao/accs/utl/ALog$Level;->I:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {p6}, Lcom/taobao/accs/utl/ALog;->a(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result p6

    if-eqz p6, :cond_0

    const-string p6, "AgooFactory"

    .line 529
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendMsgToBussiness intent:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ",utdid="

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/taobao/accs/utl/c;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ",pack="

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ",agooFlag="

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    new-array p5, p5, [Ljava/lang/Object;

    invoke-static {p6, p3, p5}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    if-eqz p4, :cond_1

    .line 533
    invoke-static {}, Lcom/taobao/accs/utl/a;->a()Lcom/taobao/accs/utl/a;

    move-result-object v1

    const v2, 0x101d2

    const-string v3, "accs.msgRecevie"

    invoke-static {p1}, Lcom/taobao/accs/utl/c;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "agooMsg"

    const-string v6, "15"

    invoke-virtual/range {v1 .. v6}, Lcom/taobao/accs/utl/a;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 534
    invoke-direct {p0, p2, v0}, Lorg/android/agoo/b/a;->a(Ljava/lang/String;Landroid/content/Intent;)V

    goto :goto_1

    .line 537
    :cond_1
    invoke-static {p2}, Lcom/taobao/accs/client/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p2, p3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 538
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :goto_1
    return-void
.end method

.method private a(Ljava/lang/String;Landroid/content/Intent;)V
    .locals 5

    const/4 v0, 0x0

    .line 550
    :try_start_0
    sget-object v1, Lcom/taobao/accs/utl/ALog$Level;->D:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v1}, Lcom/taobao/accs/utl/ALog;->a(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "AgooFactory"

    .line 551
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onHandleMessage current tid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/taobao/accs/utl/ALog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 553
    :cond_0
    iget-object v1, p0, Lorg/android/agoo/b/a;->c:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v2, Lorg/android/agoo/b/a$b;

    invoke-direct {v2, p0, p1, p2}, Lorg/android/agoo/b/a$b;-><init>(Lorg/android/agoo/b/a;Ljava/lang/String;Landroid/content/Intent;)V

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "AgooFactory"

    const-string v1, "sendMsgByBindService error >>"

    .line 555
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p2, v1, p1, v0}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private static final a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    .line 451
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 452
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :catch_0
    :cond_0
    return v0
.end method

.method static synthetic b()Landroid/content/Context;
    .locals 1

    .line 43
    sget-object v0, Lorg/android/agoo/b/a;->d:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic b(Lorg/android/agoo/b/a;)Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    .locals 0

    .line 43
    iget-object p0, p0, Lorg/android/agoo/b/a;->c:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    return-object p0
.end method


# virtual methods
.method public a([BLjava/lang/String;Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;Z)Landroid/os/Bundle;
    .locals 33

    move-object/from16 v8, p0

    move-object/from16 v1, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    const v2, 0x101d2

    const/4 v11, 0x0

    const/4 v12, 0x0

    if-eqz v1, :cond_12

    .line 148
    :try_start_0
    array-length v3, v1

    if-gtz v3, :cond_0

    goto/16 :goto_a

    .line 153
    :cond_0
    new-instance v13, Ljava/lang/String;

    const-string v3, "utf-8"

    invoke-direct {v13, v1, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 154
    sget-object v1, Lcom/taobao/accs/utl/ALog$Level;->I:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v1}, Lcom/taobao/accs/utl/ALog;->a(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "AgooFactory"

    .line 155
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "msgRecevie,message--->["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ",utdid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lorg/android/agoo/b/a;->d:Landroid/content/Context;

    invoke-static {v4}, Lcom/taobao/accs/utl/c;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v12, [Ljava/lang/Object;

    invoke-static {v1, v3, v4}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 157
    :cond_1
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 158
    invoke-static {}, Lcom/taobao/accs/utl/a;->a()Lcom/taobao/accs/utl/a;

    move-result-object v1

    const-string v3, "accs.msgRecevie"

    sget-object v4, Lorg/android/agoo/b/a;->d:Landroid/content/Context;

    invoke-static {v4}, Lcom/taobao/accs/utl/c;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "message==null"

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/taobao/accs/utl/a;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v1, "AgooFactory"

    .line 159
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleMessage message==null,utdid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lorg/android/agoo/b/a;->d:Landroid/content/Context;

    invoke-static {v3}, Lcom/taobao/accs/utl/c;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v12, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v11

    .line 162
    :cond_2
    new-instance v14, Lorg/json/JSONArray;

    invoke-direct {v14, v13}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 163
    invoke-virtual {v14}, Lorg/json/JSONArray;->length()I

    move-result v15

    .line 168
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 169
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 170
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object v1, v11

    move-object v2, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v15, :cond_10

    .line 173
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 174
    invoke-virtual {v14, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    if-nez v1, :cond_3

    move v12, v4

    move-object v11, v6

    move-object/from16 v16, v7

    move-object/from16 v31, v13

    move-object/from16 v23, v14

    move/from16 v28, v15

    move-object v13, v3

    move-object v15, v5

    goto/16 :goto_9

    .line 178
    :cond_3
    new-instance v11, Lorg/android/agoo/a/c;

    invoke-direct {v11}, Lorg/android/agoo/a/c;-><init>()V

    const-string v12, "p"

    .line 179
    invoke-virtual {v1, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v22, v2

    const-string v2, "i"

    .line 180
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v23, v14

    const-string v14, "b"

    .line 181
    invoke-virtual {v1, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v24, v13

    const-string v13, "f"

    move-object/from16 v26, v5

    move-object/from16 v25, v6

    .line 182
    invoke-virtual {v1, v13}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    const-string v13, "ext"

    .line 183
    invoke-virtual {v1, v13}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_4

    const-string v13, "ext"

    .line 184
    invoke-virtual {v1, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    goto :goto_1

    :cond_4
    move-object/from16 v13, v22

    .line 187
    :goto_1
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v27, v1

    add-int/lit8 v1, v15, -0x1

    if-ge v4, v1, :cond_5

    move/from16 v28, v15

    const-string v15, ","

    .line 189
    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_5
    move/from16 v28, v15

    .line 191
    :goto_2
    iput-object v2, v11, Lorg/android/agoo/a/c;->a:Ljava/lang/String;

    .line 192
    iput-object v13, v11, Lorg/android/agoo/a/c;->b:Ljava/lang/String;

    .line 193
    iput-object v12, v11, Lorg/android/agoo/a/c;->c:Ljava/lang/String;

    .line 194
    iput-object v9, v11, Lorg/android/agoo/a/c;->e:Ljava/lang/String;

    .line 195
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_6

    const-string v1, "11"

    .line 196
    iput-object v1, v11, Lorg/android/agoo/a/c;->d:Ljava/lang/String;

    .line 197
    iget-object v1, v8, Lorg/android/agoo/b/a;->a:Lorg/android/agoo/b/c;

    invoke-virtual {v1, v11, v10}, Lorg/android/agoo/b/c;->a(Lorg/android/agoo/a/c;Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;)V

    :goto_3
    move v12, v4

    move-object/from16 v16, v7

    move-object/from16 v32, v13

    move-object/from16 v31, v24

    move-object/from16 v11, v25

    move-object/from16 v15, v26

    :goto_4
    move-object v13, v3

    goto/16 :goto_8

    .line 200
    :cond_6
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_7

    const-string v1, "12"

    .line 201
    iput-object v1, v11, Lorg/android/agoo/a/c;->d:Ljava/lang/String;

    .line 202
    iget-object v1, v8, Lorg/android/agoo/b/a;->a:Lorg/android/agoo/b/c;

    invoke-virtual {v1, v11, v10}, Lorg/android/agoo/b/c;->a(Lorg/android/agoo/a/c;Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;)V

    goto :goto_3

    :cond_7
    const-wide/16 v16, -0x1

    cmp-long v15, v5, v16

    if-nez v15, :cond_8

    const-string v1, "13"

    .line 206
    iput-object v1, v11, Lorg/android/agoo/a/c;->d:Ljava/lang/String;

    .line 207
    iget-object v1, v8, Lorg/android/agoo/b/a;->a:Lorg/android/agoo/b/c;

    invoke-virtual {v1, v11, v10}, Lorg/android/agoo/b/c;->a(Lorg/android/agoo/a/c;Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;)V

    goto :goto_3

    .line 210
    :cond_8
    sget-object v15, Lorg/android/agoo/b/a;->d:Landroid/content/Context;

    invoke-static {v15, v12}, Lorg/android/agoo/b/a;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_a

    const-string v5, "AgooFactory"

    .line 211
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "msgRecevie checkpackage is del,pack="

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v11, 0x0

    new-array v14, v11, [Ljava/lang/Object;

    invoke-static {v5, v6, v14}, Lcom/taobao/accs/utl/ALog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 212
    invoke-static {}, Lcom/taobao/accs/utl/a;->a()Lcom/taobao/accs/utl/a;

    move-result-object v16

    const v17, 0x101d2

    const-string v18, "accs.msgRecevie"

    sget-object v5, Lorg/android/agoo/b/a;->d:Landroid/content/Context;

    invoke-static {v5}, Lcom/taobao/accs/utl/c;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v19

    const-string v20, "deletePack"

    move-object/from16 v21, v12

    invoke-virtual/range {v16 .. v21}, Lcom/taobao/accs/utl/a;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v15, v26

    .line 213
    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v5, v25

    .line 214
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ge v4, v1, :cond_9

    const-string v1, ","

    .line 216
    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    .line 217
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9
    move v12, v4

    move-object v11, v5

    move-object/from16 v16, v7

    move-object/from16 v32, v13

    move-object/from16 v31, v24

    goto :goto_4

    :cond_a
    move-object/from16 v16, v25

    move-object/from16 v15, v26

    .line 221
    invoke-static {v5, v6, v11}, Lorg/android/agoo/b/a;->a(JLorg/android/agoo/a/c;)Landroid/os/Bundle;

    move-result-object v1

    const-string v5, "encrypted"

    .line 222
    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 226
    sget-object v6, Lorg/android/agoo/b/a;->d:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    const/4 v6, 0x4

    .line 227
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_b

    const/4 v5, 0x0

    goto :goto_5

    :cond_b
    const-string v1, "AgooFactory"

    const-string v2, "msgRecevie msg encrypted flag not exist, cannot prase!!!"

    const/4 v5, 0x0

    .line 237
    new-array v6, v5, [Ljava/lang/Object;

    invoke-static {v1, v2, v6}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 238
    invoke-static {}, Lcom/taobao/accs/utl/a;->a()Lcom/taobao/accs/utl/a;

    move-result-object v17

    const v18, 0x101d2

    const-string v19, "accs.msgRecevie"

    sget-object v1, Lorg/android/agoo/b/a;->d:Landroid/content/Context;

    invoke-static {v1}, Lcom/taobao/accs/utl/c;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v20

    const-string v21, "encrypted!=4"

    const-string v22, "15"

    invoke-virtual/range {v17 .. v22}, Lcom/taobao/accs/utl/a;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v1, "24"

    .line 239
    iput-object v1, v11, Lorg/android/agoo/a/c;->d:Ljava/lang/String;

    .line 240
    iget-object v1, v8, Lorg/android/agoo/b/a;->a:Lorg/android/agoo/b/c;

    invoke-virtual {v1, v11, v10}, Lorg/android/agoo/b/c;->a(Lorg/android/agoo/a/c;Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;)V

    move v12, v4

    move-object/from16 v32, v13

    move-object/from16 v11, v16

    move-object/from16 v31, v24

    move-object v13, v3

    move-object/from16 v16, v7

    goto/16 :goto_8

    :cond_c
    const/4 v5, 0x1

    :goto_5
    if-eqz v1, :cond_d

    .line 249
    invoke-virtual {v3, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :cond_d
    :try_start_1
    const-string v1, "t"

    move-object/from16 v6, v27

    .line 252
    invoke-virtual {v6, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 253
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_e

    const-string v6, "time"

    .line 254
    invoke-virtual {v3, v6, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_6

    .line 257
    :catch_0
    :try_start_2
    sget-object v1, Lcom/taobao/accs/utl/ALog$Level;->I:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v1}, Lcom/taobao/accs/utl/ALog;->a(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v1

    if-eqz v1, :cond_e

    const-string v1, "AgooFactory"

    const-string v6, "agoo msg has no time"

    move/from16 v29, v4

    const/4 v11, 0x0

    .line 258
    new-array v4, v11, [Ljava/lang/Object;

    invoke-static {v1, v6, v4}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_7

    :cond_e
    :goto_6
    move/from16 v29, v4

    :goto_7
    const-string v1, "trace"

    move-object/from16 v30, v7

    .line 261
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v3, v1, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v1, "id"

    .line 262
    invoke-virtual {v3, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "body"

    .line 263
    invoke-virtual {v3, v1, v14}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "source"

    .line 264
    invoke-virtual {v3, v1, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "fromAppkey"

    .line 265
    sget-object v2, Lorg/android/agoo/b/a;->d:Landroid/content/Context;

    invoke-static {v2}, Lorg/android/agoo/a/b;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "extData"

    .line 266
    invoke-virtual {v3, v1, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "oriData"

    move-object/from16 v11, v24

    .line 267
    invoke-virtual {v3, v1, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p4, :cond_f

    .line 269
    sget-object v2, Lorg/android/agoo/b/a;->d:Landroid/content/Context;

    move-object v1, v8

    move-object v7, v3

    move-object v3, v12

    move/from16 v12, v29

    move-object v4, v7

    move-object/from16 v31, v11

    move-object/from16 v11, v16

    move-object v6, v9

    move-object/from16 v32, v13

    move-object/from16 v16, v30

    move-object v13, v7

    move-object v7, v10

    invoke-direct/range {v1 .. v7}, Lorg/android/agoo/b/a;->a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;ZLjava/lang/String;Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;)V

    goto :goto_8

    :cond_f
    move-object/from16 v31, v11

    move-object/from16 v32, v13

    move-object/from16 v11, v16

    move/from16 v12, v29

    move-object/from16 v16, v30

    move-object v13, v3

    const-string v1, "type"

    const-string v2, "common-push"

    .line 271
    invoke-virtual {v13, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "message_source"

    .line 272
    invoke-virtual {v13, v1, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_8
    move-object/from16 v2, v32

    :goto_9
    add-int/lit8 v4, v12, 0x1

    move-object v6, v11

    move-object v1, v13

    move-object v5, v15

    move-object/from16 v7, v16

    move-object/from16 v14, v23

    move/from16 v15, v28

    move-object/from16 v13, v31

    const/4 v11, 0x0

    const/4 v12, 0x0

    goto/16 :goto_0

    :cond_10
    move-object v15, v5

    move-object v11, v6

    if-eqz v15, :cond_11

    .line 275
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_11

    .line 276
    new-instance v2, Lorg/android/agoo/a/c;

    invoke-direct {v2}, Lorg/android/agoo/a/c;-><init>()V

    .line 277
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lorg/android/agoo/a/c;->a:Ljava/lang/String;

    .line 278
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lorg/android/agoo/a/c;->c:Ljava/lang/String;

    const-string v3, "10"

    .line 279
    iput-object v3, v2, Lorg/android/agoo/a/c;->d:Ljava/lang/String;

    .line 280
    iput-object v9, v2, Lorg/android/agoo/a/c;->e:Ljava/lang/String;

    .line 282
    iget-object v3, v8, Lorg/android/agoo/b/a;->a:Lorg/android/agoo/b/c;

    invoke-virtual {v3, v2, v10}, Lorg/android/agoo/b/c;->a(Lorg/android/agoo/a/c;Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;)V

    :cond_11
    return-object v1

    :catch_1
    move-exception v0

    move-object v1, v0

    goto :goto_b

    .line 149
    :cond_12
    :goto_a
    invoke-static {}, Lcom/taobao/accs/utl/a;->a()Lcom/taobao/accs/utl/a;

    move-result-object v1

    const-string v3, "accs.msgRecevie"

    sget-object v4, Lorg/android/agoo/b/a;->d:Landroid/content/Context;

    invoke-static {v4}, Lcom/taobao/accs/utl/c;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "data==null"

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/taobao/accs/utl/a;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v1, "AgooFactory"

    .line 150
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleMessage data==null,utdid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lorg/android/agoo/b/a;->d:Landroid/content/Context;

    invoke-static {v3}, Lcom/taobao/accs/utl/c;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v4}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    const/4 v1, 0x0

    return-object v1

    .line 291
    :goto_b
    sget-object v2, Lcom/taobao/accs/utl/ALog$Level;->E:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v2}, Lcom/taobao/accs/utl/ALog;->a(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v2

    if-eqz v2, :cond_13

    const-string v2, "AgooFactory"

    .line 292
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "msgRecevie is error,e="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v1, v3}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_13
    const/4 v1, 0x0

    return-object v1
.end method

.method public a()V
    .locals 4

    .line 342
    :try_start_0
    iget-object v0, p0, Lorg/android/agoo/b/a;->c:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v1, Lorg/android/agoo/b/f;

    invoke-direct {v1, p0}, Lorg/android/agoo/b/f;-><init>(Lorg/android/agoo/b/a;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "AgooFactory"

    .line 360
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reportCacheMsg fail:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public a(Landroid/content/Context;Lorg/android/agoo/b/c;Lorg/android/agoo/d/c;)V
    .locals 0

    .line 57
    sput-object p1, Lorg/android/agoo/b/a;->d:Landroid/content/Context;

    .line 58
    invoke-static {}, Lorg/android/agoo/a/f;->a()Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object p1

    iput-object p1, p0, Lorg/android/agoo/b/a;->c:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 59
    iput-object p2, p0, Lorg/android/agoo/b/a;->a:Lorg/android/agoo/b/c;

    .line 60
    iget-object p1, p0, Lorg/android/agoo/b/a;->a:Lorg/android/agoo/b/c;

    if-nez p1, :cond_0

    .line 61
    new-instance p1, Lorg/android/agoo/b/c;

    invoke-direct {p1}, Lorg/android/agoo/b/c;-><init>()V

    iput-object p1, p0, Lorg/android/agoo/b/a;->a:Lorg/android/agoo/b/c;

    .line 63
    :cond_0
    iget-object p1, p0, Lorg/android/agoo/b/a;->a:Lorg/android/agoo/b/c;

    sget-object p2, Lorg/android/agoo/b/a;->d:Landroid/content/Context;

    invoke-virtual {p1, p2}, Lorg/android/agoo/b/c;->a(Landroid/content/Context;)V

    .line 64
    iput-object p3, p0, Lorg/android/agoo/b/a;->b:Lorg/android/agoo/d/c;

    .line 65
    iget-object p1, p0, Lorg/android/agoo/b/a;->b:Lorg/android/agoo/d/c;

    if-nez p1, :cond_1

    .line 66
    new-instance p1, Lorg/android/agoo/d/c;

    invoke-direct {p1}, Lorg/android/agoo/d/c;-><init>()V

    iput-object p1, p0, Lorg/android/agoo/b/a;->b:Lorg/android/agoo/d/c;

    .line 68
    :cond_1
    iget-object p1, p0, Lorg/android/agoo/b/a;->b:Lorg/android/agoo/d/c;

    sget-object p2, Lorg/android/agoo/b/a;->d:Landroid/content/Context;

    invoke-virtual {p1, p2}, Lorg/android/agoo/d/c;->a(Landroid/content/Context;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x0

    .line 428
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 431
    :cond_0
    sget-object v1, Lcom/taobao/accs/utl/ALog$Level;->I:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v1}, Lcom/taobao/accs/utl/ALog;->a(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "AgooFactory"

    .line 432
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateNotifyMsg begin,messageId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",status="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",reportTimes="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lorg/android/agoo/b/a;->d:Landroid/content/Context;

    invoke-static {v3}, Lorg/android/agoo/a/b;->e(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    const-string v1, "8"

    .line 434
    invoke-static {p2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 436
    iget-object p2, p0, Lorg/android/agoo/b/a;->b:Lorg/android/agoo/d/c;

    const-string v1, "2"

    invoke-virtual {p2, p1, v1}, Lorg/android/agoo/d/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const-string v1, "9"

    .line 437
    invoke-static {p2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 439
    iget-object p2, p0, Lorg/android/agoo/b/a;->b:Lorg/android/agoo/d/c;

    const-string v1, "3"

    invoke-virtual {p2, p1, v1}, Lorg/android/agoo/d/c;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_3
    :goto_0
    return-void

    :catch_0
    move-exception p1

    const-string p2, "AgooFactory"

    .line 442
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateNotifyMsg e="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p2, p1, v0}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public a([B)V
    .locals 1

    const/4 v0, 0x0

    .line 73
    invoke-virtual {p0, p1, v0}, Lorg/android/agoo/b/a;->a([BLjava/lang/String;)V

    return-void
.end method

.method public a([BLjava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 77
    array-length v0, p1

    if-gtz v0, :cond_0

    goto :goto_0

    .line 80
    :cond_0
    iget-object v0, p0, Lorg/android/agoo/b/a;->c:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v1, Lorg/android/agoo/b/d;

    invoke-direct {v1, p0, p1, p2}, Lorg/android/agoo/b/d;-><init>(Lorg/android/agoo/b/a;[BLjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method public a([BLjava/lang/String;Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;)V
    .locals 4

    const/4 v0, 0x0

    .line 128
    :try_start_0
    sget-object v1, Lcom/taobao/accs/utl/ALog$Level;->I:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v1}, Lcom/taobao/accs/utl/ALog;->a(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "AgooFactory"

    .line 129
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "into--[AgooFactory,msgRecevie]:messageSource="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 131
    :cond_0
    iget-object v1, p0, Lorg/android/agoo/b/a;->c:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v2, Lorg/android/agoo/b/e;

    invoke-direct {v2, p0, p1, p2, p3}, Lorg/android/agoo/b/e;-><init>(Lorg/android/agoo/b/a;[BLjava/lang/String;Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;)V

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "AgooFactory"

    .line 139
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "serviceImpl init task fail:"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p3, v0, [Ljava/lang/Object;

    invoke-static {p2, p1, p3}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public a([BZ)V
    .locals 2

    .line 367
    iget-object v0, p0, Lorg/android/agoo/b/a;->c:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v1, Lorg/android/agoo/b/g;

    invoke-direct {v1, p0, p1, p2}, Lorg/android/agoo/b/g;-><init>(Lorg/android/agoo/b/a;[BZ)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
