.class public Lcom/taobao/accs/internal/a;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Lcom/taobao/accs/c;


# instance fields
.field public a:Lcom/taobao/accs/f/c;

.field private b:I

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method private a(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 679
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.taobao.accs.intent.action.RECEIVE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 680
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "command"

    .line 681
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "serviceId"

    .line 682
    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p3, "dataId"

    .line 683
    invoke-virtual {v0, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p3, "appKey"

    .line 684
    iget-object p4, p0, Lcom/taobao/accs/internal/a;->a:Lcom/taobao/accs/f/c;

    iget-object p4, p4, Lcom/taobao/accs/f/c;->b:Ljava/lang/String;

    invoke-virtual {v0, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p3, "configTag"

    .line 685
    iget-object p4, p0, Lcom/taobao/accs/internal/a;->c:Ljava/lang/String;

    invoke-virtual {v0, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p3, "errorCode"

    const/4 p4, 0x2

    if-ne p2, p4, :cond_0

    const/16 p2, 0xc8

    goto :goto_0

    :cond_0
    const/16 p2, 0x12c

    .line 686
    :goto_0
    invoke-virtual {v0, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 687
    invoke-static {p1, v0}, Lcom/taobao/accs/data/e;->a(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method private a(Landroid/content/Context;Lcom/taobao/accs/data/Message;IZ)V
    .locals 7

    .line 159
    iget-object v0, p0, Lcom/taobao/accs/internal/a;->a:Lcom/taobao/accs/f/c;

    invoke-virtual {v0}, Lcom/taobao/accs/f/c;->a()V

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 161
    iget-object p2, p0, Lcom/taobao/accs/internal/a;->d:Ljava/lang/String;

    const-string p4, "message is null"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p2, p4, v0}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 162
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p3}, Lcom/taobao/accs/data/Message;->a(Ljava/lang/String;I)Lcom/taobao/accs/data/Message;

    move-result-object p1

    .line 164
    iget-object p2, p0, Lcom/taobao/accs/internal/a;->a:Lcom/taobao/accs/f/c;

    const/4 p3, -0x2

    invoke-virtual {p2, p1, p3}, Lcom/taobao/accs/f/c;->b(Lcom/taobao/accs/data/Message;I)V

    goto/16 :goto_3

    :cond_0
    const/4 p1, 0x2

    const/16 v1, 0xc8

    const/4 v2, 0x1

    packed-switch p3, :pswitch_data_0

    goto/16 :goto_1

    .line 185
    :pswitch_0
    iget-object v3, p0, Lcom/taobao/accs/internal/a;->a:Lcom/taobao/accs/f/c;

    invoke-virtual {v3}, Lcom/taobao/accs/f/c;->j()Lcom/taobao/accs/client/d;

    move-result-object v3

    invoke-virtual {p2}, Lcom/taobao/accs/data/Message;->f()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p2, Lcom/taobao/accs/data/Message;->E:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/taobao/accs/client/d;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    if-nez p4, :cond_1

    .line 187
    iget-object v3, p0, Lcom/taobao/accs/internal/a;->d:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/taobao/accs/data/Message;->f()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p2, Lcom/taobao/accs/data/Message;->E:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " isUserBinded"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, p1, [Ljava/lang/Object;

    const-string v6, "isForceBind"

    aput-object v6, v5, v0

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p4

    aput-object p4, v5, v2

    invoke-static {v3, v4, v5}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 189
    iget-object p4, p0, Lcom/taobao/accs/internal/a;->a:Lcom/taobao/accs/f/c;

    invoke-virtual {p4, p2, v1}, Lcom/taobao/accs/f/c;->b(Lcom/taobao/accs/data/Message;I)V

    goto :goto_0

    .line 177
    :pswitch_1
    iget-object p4, p0, Lcom/taobao/accs/internal/a;->a:Lcom/taobao/accs/f/c;

    invoke-virtual {p4}, Lcom/taobao/accs/f/c;->j()Lcom/taobao/accs/client/d;

    move-result-object p4

    invoke-virtual {p2}, Lcom/taobao/accs/data/Message;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p4, v3}, Lcom/taobao/accs/client/d;->b(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_1

    .line 178
    iget-object p4, p0, Lcom/taobao/accs/internal/a;->d:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/taobao/accs/data/Message;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " isAppUnbinded"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {p4, v3, v4}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 179
    iget-object p4, p0, Lcom/taobao/accs/internal/a;->a:Lcom/taobao/accs/f/c;

    invoke-virtual {p4, p2, v1}, Lcom/taobao/accs/f/c;->b(Lcom/taobao/accs/data/Message;I)V

    :goto_0
    const/4 p4, 0x0

    goto :goto_2

    .line 169
    :pswitch_2
    iget-object v3, p0, Lcom/taobao/accs/internal/a;->a:Lcom/taobao/accs/f/c;

    invoke-virtual {v3}, Lcom/taobao/accs/f/c;->j()Lcom/taobao/accs/client/d;

    move-result-object v3

    invoke-virtual {p2}, Lcom/taobao/accs/data/Message;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/taobao/accs/client/d;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    if-nez p4, :cond_1

    .line 171
    iget-object p4, p0, Lcom/taobao/accs/internal/a;->d:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/taobao/accs/data/Message;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " isAppBinded"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {p4, v3, v4}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 172
    iget-object p4, p0, Lcom/taobao/accs/internal/a;->a:Lcom/taobao/accs/f/c;

    invoke-virtual {p4, p2, v1}, Lcom/taobao/accs/f/c;->b(Lcom/taobao/accs/data/Message;I)V

    goto :goto_0

    :cond_1
    :goto_1
    const/4 p4, 0x1

    :goto_2
    if-eqz p4, :cond_2

    .line 195
    iget-object p4, p0, Lcom/taobao/accs/internal/a;->d:Ljava/lang/String;

    const-string v1, "sendControlMessage"

    new-array p1, p1, [Ljava/lang/Object;

    const-string v3, "command"

    aput-object v3, p1, v0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p1, v2

    invoke-static {p4, v1, p1}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 196
    iget-object p1, p0, Lcom/taobao/accs/internal/a;->a:Lcom/taobao/accs/f/c;

    invoke-virtual {p1, p2, v2}, Lcom/taobao/accs/f/c;->b(Lcom/taobao/accs/data/Message;Z)V

    :cond_2
    :goto_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private b(Landroid/content/Context;I)Landroid/content/Intent;
    .locals 3

    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    .line 621
    invoke-static {p1}, Lcom/taobao/accs/utl/b;->g(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 622
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getIntent null command:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " serviceEnable:"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/taobao/accs/utl/b;->g(Landroid/content/Context;)Z

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 625
    iget-object p2, p0, Lcom/taobao/accs/internal/a;->d:Ljava/lang/String;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p2, p1, v0}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1

    .line 631
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.taobao.accs.intent.action.COMMAND"

    .line 632
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 633
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.taobao.accs.ChannelService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "packageName"

    .line 636
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "command"

    .line 637
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "appKey"

    .line 638
    iget-object p2, p0, Lcom/taobao/accs/internal/a;->a:Lcom/taobao/accs/f/c;

    iget-object p2, p2, Lcom/taobao/accs/f/c;->b:Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "configTag"

    .line 639
    iget-object p2, p0, Lcom/taobao/accs/internal/a;->c:Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/taobao/accs/ACCSManager$AccsRequest;)Ljava/lang/String;
    .locals 7

    const/4 v0, 0x0

    .line 378
    :try_start_0
    invoke-static {p1}, Lcom/taobao/accs/utl/b;->f(Landroid/content/Context;)Z

    move-result v1

    .line 380
    invoke-static {p1}, Lcom/taobao/accs/utl/b;->w(Landroid/content/Context;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 381
    iget-object p1, p0, Lcom/taobao/accs/internal/a;->d:Ljava/lang/String;

    const-string v1, "send data not in mainprocess"

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {p1, v1, v2}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v3

    :cond_0
    if-nez v1, :cond_5

    if-nez p2, :cond_1

    goto/16 :goto_1

    .line 396
    :cond_1
    iget-object v1, p2, Lcom/taobao/accs/ACCSManager$AccsRequest;->dataId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    .line 397
    const-class v1, Lcom/taobao/accs/internal/a;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 398
    :try_start_1
    iget v4, p0, Lcom/taobao/accs/internal/a;->b:I

    add-int/2addr v4, v2

    iput v4, p0, Lcom/taobao/accs/internal/a;->b:I

    .line 399
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, p0, Lcom/taobao/accs/internal/a;->b:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p2, Lcom/taobao/accs/ACCSManager$AccsRequest;->dataId:Ljava/lang/String;

    .line 400
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1

    .line 403
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/taobao/accs/internal/a;->a:Lcom/taobao/accs/f/c;

    invoke-virtual {v1}, Lcom/taobao/accs/f/c;->i()Ljava/lang/String;

    move-result-object v1

    .line 404
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string p1, "accs"

    const-string v1, "send_fail"

    .line 405
    iget-object v2, p2, Lcom/taobao/accs/ACCSManager$AccsRequest;->serviceId:Ljava/lang/String;

    const-string v4, "1"

    const-string v5, "data appkey null"

    invoke-static {p1, v1, v2, v4, v5}, Lcom/taobao/accs/utl/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    iget-object p1, p0, Lcom/taobao/accs/internal/a;->d:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "send data appkey null dataid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p2, Lcom/taobao/accs/ACCSManager$AccsRequest;->dataId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {p1, v1, v2}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v3

    .line 409
    :cond_3
    iget-object v1, p0, Lcom/taobao/accs/internal/a;->a:Lcom/taobao/accs/f/c;

    invoke-virtual {v1}, Lcom/taobao/accs/f/c;->a()V

    .line 410
    iget-object v1, p0, Lcom/taobao/accs/internal/a;->a:Lcom/taobao/accs/f/c;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, p1, v3, p2}, Lcom/taobao/accs/data/Message;->a(Lcom/taobao/accs/f/c;Landroid/content/Context;Ljava/lang/String;Lcom/taobao/accs/ACCSManager$AccsRequest;)Lcom/taobao/accs/data/Message;

    move-result-object p1

    .line 412
    invoke-virtual {p1}, Lcom/taobao/accs/data/Message;->e()Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 413
    invoke-virtual {p1}, Lcom/taobao/accs/data/Message;->e()Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->onSend()V

    .line 415
    :cond_4
    iget-object v1, p0, Lcom/taobao/accs/internal/a;->a:Lcom/taobao/accs/f/c;

    invoke-virtual {v1, p1, v2}, Lcom/taobao/accs/f/c;->b(Lcom/taobao/accs/data/Message;Z)V

    goto :goto_3

    :cond_5
    :goto_1
    if-eqz v1, :cond_6

    const-string p1, "accs"

    const-string v2, "send_fail"

    .line 388
    iget-object v4, p2, Lcom/taobao/accs/ACCSManager$AccsRequest;->serviceId:Ljava/lang/String;

    const-string v5, "1"

    const-string v6, "accs disable"

    invoke-static {p1, v2, v4, v5, v6}, Lcom/taobao/accs/utl/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    const-string p1, "accs"

    const-string v2, "send_fail"

    const-string v4, ""

    const-string v5, "1"

    const-string v6, "data null"

    .line 390
    invoke-static {p1, v2, v4, v5, v6}, Lcom/taobao/accs/utl/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    :goto_2
    iget-object p1, p0, Lcom/taobao/accs/internal/a;->d:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "send data dataInfo null or disable:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {p1, v1, v2}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    return-object v3

    :catch_0
    move-exception p1

    const-string v1, "accs"

    const-string v2, "send_fail"

    .line 417
    iget-object v3, p2, Lcom/taobao/accs/ACCSManager$AccsRequest;->serviceId:Ljava/lang/String;

    const-string v4, "1"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "data "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v2, v3, v4, v5}, Lcom/taobao/accs/utl/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    iget-object v1, p0, Lcom/taobao/accs/internal/a;->d:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "send data dataid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p2, Lcom/taobao/accs/ACCSManager$AccsRequest;->dataId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, p1, v0}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 421
    :goto_3
    iget-object p1, p2, Lcom/taobao/accs/ACCSManager$AccsRequest;->dataId:Ljava/lang/String;

    return-object p1
.end method

.method public a(Landroid/content/Context;Lcom/taobao/accs/ACCSManager$AccsRequest;Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;)Ljava/lang/String;
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    const/4 v6, 0x5

    const/4 v7, 0x4

    const/4 v8, 0x3

    const/4 v9, 0x2

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    if-eqz v2, :cond_d

    if-nez v3, :cond_0

    goto/16 :goto_4

    :cond_0
    :try_start_0
    const-string v13, "accs"

    const-string v14, "send_fail"

    const-string v15, "push response total"

    .line 515
    invoke-static {v13, v14, v15}, Lcom/taobao/accs/utl/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    invoke-static/range {p1 .. p1}, Lcom/taobao/accs/utl/b;->f(Landroid/content/Context;)Z

    move-result v13

    if-eqz v13, :cond_1

    const-string v2, "accs"

    const-string v4, "send_fail"

    .line 519
    iget-object v5, v3, Lcom/taobao/accs/ACCSManager$AccsRequest;->serviceId:Ljava/lang/String;

    const-string v6, "1"

    const-string v7, "sendPushResponse accs disable"

    invoke-static {v2, v4, v5, v6, v7}, Lcom/taobao/accs/utl/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v10

    .line 523
    :cond_1
    iget-object v13, v1, Lcom/taobao/accs/internal/a;->a:Lcom/taobao/accs/f/c;

    invoke-virtual {v13}, Lcom/taobao/accs/f/c;->i()Ljava/lang/String;

    move-result-object v13

    .line 524
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_2

    const-string v2, "accs"

    const-string v4, "send_fail"

    .line 525
    iget-object v5, v3, Lcom/taobao/accs/ACCSManager$AccsRequest;->serviceId:Ljava/lang/String;

    const-string v6, "1"

    const-string v7, "sendPushResponse appkey null"

    invoke-static {v2, v4, v5, v6, v7}, Lcom/taobao/accs/utl/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 526
    iget-object v2, v1, Lcom/taobao/accs/internal/a;->d:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sendPushResponse appkey null dataid:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v3, Lcom/taobao/accs/ACCSManager$AccsRequest;->dataId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v12, [Ljava/lang/Object;

    invoke-static {v2, v4, v5}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v10

    .line 530
    :cond_2
    iget-object v14, v3, Lcom/taobao/accs/ACCSManager$AccsRequest;->dataId:Ljava/lang/String;

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 531
    const-class v14, Lcom/taobao/accs/internal/a;

    monitor-enter v14
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 532
    :try_start_1
    iget v15, v1, Lcom/taobao/accs/internal/a;->b:I

    add-int/2addr v15, v11

    iput v15, v1, Lcom/taobao/accs/internal/a;->b:I

    .line 533
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, v1, Lcom/taobao/accs/internal/a;->b:I

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ""

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/taobao/accs/ACCSManager$AccsRequest;->dataId:Ljava/lang/String;

    .line 534
    monitor-exit v14

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v2, v0

    monitor-exit v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2

    :cond_3
    :goto_0
    if-nez p3, :cond_4

    .line 538
    new-instance v4, Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;

    invoke-direct {v4}, Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;-><init>()V

    goto :goto_1

    :cond_4
    move-object/from16 v4, p3

    .line 540
    :goto_1
    iput-object v10, v3, Lcom/taobao/accs/ACCSManager$AccsRequest;->host:Ljava/net/URL;

    .line 550
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;->fromPackage:Ljava/lang/String;

    .line 553
    iget v5, v4, Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;->connType:I

    if-eqz v5, :cond_6

    iget-object v5, v4, Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;->fromHost:Ljava/lang/String;

    if-nez v5, :cond_5

    goto :goto_2

    :cond_5
    const/4 v5, 0x1

    goto :goto_3

    .line 554
    :cond_6
    :goto_2
    iput v12, v4, Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;->connType:I

    .line 556
    iget-object v5, v1, Lcom/taobao/accs/internal/a;->d:Ljava/lang/String;

    const-string v14, "pushresponse use channel"

    new-array v15, v9, [Ljava/lang/Object;

    const-string v17, "host"

    aput-object v17, v15, v12

    iget-object v10, v4, Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;->fromHost:Ljava/lang/String;

    aput-object v10, v15, v11

    invoke-static {v5, v14, v15}, Lcom/taobao/accs/utl/ALog;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v5, 0x0

    .line 559
    :goto_3
    iget-object v10, v1, Lcom/taobao/accs/internal/a;->d:Ljava/lang/String;

    const-string v14, "sendPushResponse"

    const/16 v15, 0x8

    new-array v15, v15, [Ljava/lang/Object;

    const-string v17, "sendbyInapp"

    aput-object v17, v15, v12

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    aput-object v17, v15, v11

    const-string v17, "host"

    aput-object v17, v15, v9

    iget-object v11, v4, Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;->fromHost:Ljava/lang/String;

    aput-object v11, v15, v8

    const-string v11, "pkg"

    aput-object v11, v15, v7

    iget-object v11, v4, Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;->fromPackage:Ljava/lang/String;

    aput-object v11, v15, v6

    const-string v11, "dataId"

    const/16 v16, 0x6

    aput-object v11, v15, v16

    const/4 v11, 0x7

    iget-object v6, v3, Lcom/taobao/accs/ACCSManager$AccsRequest;->dataId:Ljava/lang/String;

    aput-object v6, v15, v11

    invoke-static {v10, v14, v15}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v5, :cond_8

    .line 562
    iget-object v5, v1, Lcom/taobao/accs/internal/a;->d:Ljava/lang/String;

    const-string v6, "sendPushResponse inapp by"

    new-array v7, v9, [Ljava/lang/Object;

    const-string v8, "app"

    aput-object v8, v7, v12

    iget-object v8, v4, Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;->fromPackage:Ljava/lang/String;

    const/4 v9, 0x1

    aput-object v8, v7, v9

    invoke-static {v5, v6, v7}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 563
    new-instance v5, Ljava/net/URL;

    iget-object v6, v4, Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;->fromHost:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v5, v3, Lcom/taobao/accs/ACCSManager$AccsRequest;->host:Ljava/net/URL;

    .line 564
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v4, Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;->fromPackage:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-static/range {p1 .. p1}, Lcom/taobao/accs/utl/b;->w(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 565
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4, v12}, Lcom/taobao/accs/internal/a;->a(Landroid/content/Context;Lcom/taobao/accs/ACCSManager$AccsRequest;Ljava/lang/String;Z)Ljava/lang/String;

    goto/16 :goto_5

    .line 567
    :cond_7
    new-instance v5, Landroid/content/Intent;

    const-string v6, "com.taobao.accs.intent.action.SEND"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 568
    iget-object v4, v4, Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;->fromPackage:Ljava/lang/String;

    const-string v6, "com.taobao.accs.data.MsgDistributeService"

    invoke-virtual {v5, v4, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "packageName"

    .line 569
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "reqdata"

    .line 570
    invoke-virtual {v5, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v4, "appKey"

    .line 571
    invoke-virtual {v5, v4, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "configTag"

    .line 572
    iget-object v6, v1, Lcom/taobao/accs/internal/a;->c:Ljava/lang/String;

    invoke-virtual {v5, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 573
    invoke-virtual {v2, v5}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_5

    :cond_8
    const/16 v5, 0x64

    .line 577
    invoke-direct {v1, v2, v5}, Lcom/taobao/accs/internal/a;->b(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v6

    if-nez v6, :cond_9

    const-string v6, "accs"

    const-string v10, "send_fail"

    .line 579
    iget-object v11, v3, Lcom/taobao/accs/ACCSManager$AccsRequest;->serviceId:Ljava/lang/String;

    const-string v13, "1"

    const-string v14, "push response intent null"

    invoke-static {v6, v10, v11, v13, v14}, Lcom/taobao/accs/utl/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 580
    iget-object v6, v3, Lcom/taobao/accs/ACCSManager$AccsRequest;->serviceId:Ljava/lang/String;

    iget-object v10, v3, Lcom/taobao/accs/ACCSManager$AccsRequest;->dataId:Ljava/lang/String;

    invoke-direct {v1, v2, v5, v6, v10}, Lcom/taobao/accs/internal/a;->a(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    .line 581
    iget-object v5, v1, Lcom/taobao/accs/internal/a;->d:Ljava/lang/String;

    const-string v6, "sendPushResponse input null"

    const/4 v10, 0x6

    new-array v10, v10, [Ljava/lang/Object;

    const-string v11, "context"

    aput-object v11, v10, v12

    const/4 v11, 0x1

    aput-object v2, v10, v11

    const-string v2, "response"

    aput-object v2, v10, v9

    aput-object v3, v10, v8

    const-string v2, "extraInfo"

    aput-object v2, v10, v7

    const/4 v2, 0x5

    aput-object v4, v10, v2

    invoke-static {v5, v6, v10}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x0

    return-object v2

    .line 584
    :cond_9
    iget-object v5, v1, Lcom/taobao/accs/internal/a;->d:Ljava/lang/String;

    const-string v7, "sendPushResponse channel by"

    new-array v8, v9, [Ljava/lang/Object;

    const-string v9, "app"

    aput-object v9, v8, v12

    iget-object v9, v4, Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;->fromPackage:Ljava/lang/String;

    const/4 v10, 0x1

    aput-object v9, v8, v10

    invoke-static {v5, v7, v8}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 585
    iget-object v4, v4, Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;->fromPackage:Ljava/lang/String;

    const-string v5, "com.taobao.accs.ChannelService"

    invoke-virtual {v6, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "send_type"

    .line 586
    sget-object v5, Lcom/taobao/accs/data/Message$ReqType;->REQ:Lcom/taobao/accs/data/Message$ReqType;

    invoke-virtual {v6, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v4, "appKey"

    .line 587
    invoke-virtual {v6, v4, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "userInfo"

    .line 588
    iget-object v5, v3, Lcom/taobao/accs/ACCSManager$AccsRequest;->userId:Ljava/lang/String;

    invoke-virtual {v6, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "serviceId"

    .line 589
    iget-object v5, v3, Lcom/taobao/accs/ACCSManager$AccsRequest;->serviceId:Ljava/lang/String;

    invoke-virtual {v6, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "data"

    .line 590
    iget-object v5, v3, Lcom/taobao/accs/ACCSManager$AccsRequest;->data:[B

    invoke-virtual {v6, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const-string v4, "dataId"

    .line 591
    iget-object v5, v3, Lcom/taobao/accs/ACCSManager$AccsRequest;->dataId:Ljava/lang/String;

    invoke-virtual {v6, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "configTag"

    .line 592
    iget-object v5, v1, Lcom/taobao/accs/internal/a;->c:Ljava/lang/String;

    invoke-virtual {v6, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 594
    iget-object v4, v3, Lcom/taobao/accs/ACCSManager$AccsRequest;->businessId:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_a

    const-string v4, "businessId"

    .line 595
    iget-object v5, v3, Lcom/taobao/accs/ACCSManager$AccsRequest;->businessId:Ljava/lang/String;

    invoke-virtual {v6, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 597
    :cond_a
    iget-object v4, v3, Lcom/taobao/accs/ACCSManager$AccsRequest;->tag:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_b

    const-string v4, "extTag"

    .line 598
    iget-object v5, v3, Lcom/taobao/accs/ACCSManager$AccsRequest;->tag:Ljava/lang/String;

    invoke-virtual {v6, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 600
    :cond_b
    iget-object v4, v3, Lcom/taobao/accs/ACCSManager$AccsRequest;->target:Ljava/lang/String;

    if-eqz v4, :cond_c

    const-string v4, "target"

    .line 601
    iget-object v5, v3, Lcom/taobao/accs/ACCSManager$AccsRequest;->target:Ljava/lang/String;

    invoke-virtual {v6, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 603
    :cond_c
    invoke-virtual {v2, v6}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_5

    .line 510
    :cond_d
    :goto_4
    iget-object v5, v1, Lcom/taobao/accs/internal/a;->d:Ljava/lang/String;

    const-string v6, "sendPushResponse input null"

    const/4 v10, 0x6

    new-array v10, v10, [Ljava/lang/Object;

    const-string v11, "context"

    aput-object v11, v10, v12

    const/4 v11, 0x1

    aput-object v2, v10, v11

    const-string v2, "response"

    aput-object v2, v10, v9

    aput-object v3, v10, v8

    const-string v2, "extraInfo"

    aput-object v2, v10, v7

    const/4 v2, 0x5

    aput-object p3, v10, v2

    invoke-static {v5, v6, v10}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v2, "accs"

    const-string v4, "send_fail"

    const-string v5, ""

    const-string v6, "1"

    const-string v7, "sendPushResponse null"

    .line 511
    invoke-static {v2, v4, v5, v6, v7}, Lcom/taobao/accs/utl/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    const/4 v2, 0x0

    return-object v2

    :catch_0
    move-exception v0

    move-object v2, v0

    const-string v4, "accs"

    const-string v5, "send_fail"

    .line 608
    iget-object v6, v3, Lcom/taobao/accs/ACCSManager$AccsRequest;->serviceId:Ljava/lang/String;

    const-string v7, "1"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "push response "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v5, v6, v7, v8}, Lcom/taobao/accs/utl/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 609
    iget-object v4, v1, Lcom/taobao/accs/internal/a;->d:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sendPushResponse dataid:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v3, Lcom/taobao/accs/ACCSManager$AccsRequest;->dataId:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v5, v12, [Ljava/lang/Object;

    invoke-static {v4, v3, v2, v5}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :goto_5
    const/4 v2, 0x0

    return-object v2
.end method

.method public a(Landroid/content/Context;Lcom/taobao/accs/ACCSManager$AccsRequest;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-nez p2, :cond_0

    .line 440
    :try_start_0
    iget-object p1, p0, Lcom/taobao/accs/internal/a;->d:Ljava/lang/String;

    const-string p3, "sendRequest request null"

    new-array p4, v1, [Ljava/lang/Object;

    invoke-static {p1, p3, p4}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string p1, "accs"

    const-string p3, "send_fail"

    const-string p4, "1"

    const-string v2, "request null"

    .line 441
    invoke-static {p1, p3, v0, p4, v2}, Lcom/taobao/accs/utl/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :catch_0
    move-exception p1

    goto/16 :goto_1

    .line 445
    :cond_0
    invoke-static {p1}, Lcom/taobao/accs/utl/b;->w(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 446
    iget-object p1, p0, Lcom/taobao/accs/internal/a;->d:Ljava/lang/String;

    const-string p3, "send data not in mainprocess"

    new-array p4, v1, [Ljava/lang/Object;

    invoke-static {p1, p3, p4}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    .line 450
    :cond_1
    invoke-static {p1}, Lcom/taobao/accs/utl/b;->f(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 452
    iget-object p1, p0, Lcom/taobao/accs/internal/a;->d:Ljava/lang/String;

    const-string p3, "sendRequest disable"

    new-array p4, v1, [Ljava/lang/Object;

    invoke-static {p1, p3, p4}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string p1, "accs"

    const-string p3, "send_fail"

    .line 453
    iget-object p4, p2, Lcom/taobao/accs/ACCSManager$AccsRequest;->serviceId:Ljava/lang/String;

    const-string v2, "1"

    const-string v3, "accs disable"

    invoke-static {p1, p3, p4, v2, v3}, Lcom/taobao/accs/utl/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 457
    :cond_2
    iget-object v2, p2, Lcom/taobao/accs/ACCSManager$AccsRequest;->dataId:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    .line 458
    const-class v2, Lcom/taobao/accs/internal/a;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 459
    :try_start_1
    iget v4, p0, Lcom/taobao/accs/internal/a;->b:I

    add-int/2addr v4, v3

    iput v4, p0, Lcom/taobao/accs/internal/a;->b:I

    .line 460
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, p0, Lcom/taobao/accs/internal/a;->b:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p2, Lcom/taobao/accs/ACCSManager$AccsRequest;->dataId:Ljava/lang/String;

    .line 461
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1

    .line 464
    :cond_3
    :goto_0
    iget-object v2, p0, Lcom/taobao/accs/internal/a;->a:Lcom/taobao/accs/f/c;

    invoke-virtual {v2}, Lcom/taobao/accs/f/c;->i()Ljava/lang/String;

    move-result-object v2

    .line 465
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string p1, "accs"

    const-string p3, "send_fail"

    .line 466
    iget-object p4, p2, Lcom/taobao/accs/ACCSManager$AccsRequest;->serviceId:Ljava/lang/String;

    const-string v2, "1"

    const-string v3, "request appkey null"

    invoke-static {p1, p3, p4, v2, v3}, Lcom/taobao/accs/utl/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    iget-object p1, p0, Lcom/taobao/accs/internal/a;->d:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "sendRequest appkey null dataid:"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p2, Lcom/taobao/accs/ACCSManager$AccsRequest;->dataId:Ljava/lang/String;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    new-array p4, v1, [Ljava/lang/Object;

    invoke-static {p1, p3, p4}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    .line 470
    :cond_4
    iget-object v0, p0, Lcom/taobao/accs/internal/a;->a:Lcom/taobao/accs/f/c;

    invoke-virtual {v0}, Lcom/taobao/accs/f/c;->a()V

    if-nez p3, :cond_5

    .line 471
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p3

    .line 472
    :cond_5
    iget-object v0, p0, Lcom/taobao/accs/internal/a;->a:Lcom/taobao/accs/f/c;

    invoke-static {v0, p1, p3, p2, p4}, Lcom/taobao/accs/data/Message;->b(Lcom/taobao/accs/f/c;Landroid/content/Context;Ljava/lang/String;Lcom/taobao/accs/ACCSManager$AccsRequest;Z)Lcom/taobao/accs/data/Message;

    move-result-object p1

    .line 474
    invoke-virtual {p1}, Lcom/taobao/accs/data/Message;->e()Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;

    move-result-object p3

    if-eqz p3, :cond_6

    .line 475
    invoke-virtual {p1}, Lcom/taobao/accs/data/Message;->e()Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;

    move-result-object p3

    invoke-virtual {p3}, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->onSend()V

    .line 477
    :cond_6
    iget-object p3, p0, Lcom/taobao/accs/internal/a;->a:Lcom/taobao/accs/f/c;

    invoke-virtual {p3, p1, v3}, Lcom/taobao/accs/f/c;->b(Lcom/taobao/accs/data/Message;Z)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :goto_1
    if-eqz p2, :cond_7

    const-string p3, "accs"

    const-string p4, "send_fail"

    .line 480
    iget-object v0, p2, Lcom/taobao/accs/ACCSManager$AccsRequest;->serviceId:Ljava/lang/String;

    const-string v2, "1"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "request "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p3, p4, v0, v2, v3}, Lcom/taobao/accs/utl/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    iget-object p3, p0, Lcom/taobao/accs/internal/a;->d:Ljava/lang/String;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "sendRequest dataid:"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p2, Lcom/taobao/accs/ACCSManager$AccsRequest;->dataId:Ljava/lang/String;

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p3, p4, p1, v0}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 486
    :cond_7
    :goto_2
    iget-object p1, p2, Lcom/taobao/accs/ACCSManager$AccsRequest;->dataId:Ljava/lang/String;

    return-object p1
.end method

.method public a(Landroid/content/Context;)V
    .locals 4

    .line 276
    invoke-static {p1}, Lcom/taobao/accs/utl/b;->f(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 279
    :cond_0
    invoke-static {p1}, Lcom/taobao/accs/utl/b;->f(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x4

    .line 282
    invoke-direct {p0, p1, v0}, Lcom/taobao/accs/internal/a;->b(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v1

    if-nez v1, :cond_2

    const/4 v1, 0x0

    .line 284
    invoke-direct {p0, p1, v0, v1, v1}, Lcom/taobao/accs/internal/a;->a(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    return-void

    .line 287
    :cond_2
    iget-object v2, p0, Lcom/taobao/accs/internal/a;->a:Lcom/taobao/accs/f/c;

    invoke-virtual {v2}, Lcom/taobao/accs/f/c;->i()Ljava/lang/String;

    move-result-object v2

    .line 288
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    return-void

    :cond_3
    const-string v3, "appKey"

    .line 291
    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 293
    invoke-static {p1}, Lcom/taobao/accs/utl/b;->w(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 294
    iget-object v2, p0, Lcom/taobao/accs/internal/a;->a:Lcom/taobao/accs/f/c;

    invoke-static {v2, v1}, Lcom/taobao/accs/data/Message;->b(Lcom/taobao/accs/f/c;Landroid/content/Intent;)Lcom/taobao/accs/data/Message;

    move-result-object v1

    const/4 v2, 0x0

    .line 295
    invoke-direct {p0, p1, v1, v0, v2}, Lcom/taobao/accs/internal/a;->a(Landroid/content/Context;Lcom/taobao/accs/data/Message;IZ)V

    :cond_4
    return-void
.end method

.method public a(Landroid/content/Context;I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 675
    invoke-static {p1, p2}, Lcom/taobao/accs/a;->a(Landroid/content/Context;I)V

    return-void
.end method

.method public a(Landroid/content/Context;Lcom/taobao/accs/g;)V
    .locals 1

    .line 728
    invoke-static {p1}, Lcom/taobao/accs/client/a;->a(Landroid/content/Context;)Lcom/taobao/accs/client/a;

    move-result-object p1

    iget-object v0, p0, Lcom/taobao/accs/internal/a;->a:Lcom/taobao/accs/f/c;

    iget-object v0, v0, Lcom/taobao/accs/f/c;->m:Ljava/lang/String;

    invoke-virtual {p1, v0, p2}, Lcom/taobao/accs/client/a;->a(Ljava/lang/String;Lcom/taobao/accs/g;)V

    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Lcom/taobao/accs/base/a;)V
    .locals 0

    .line 845
    invoke-static {p1}, Lcom/taobao/accs/client/a;->a(Landroid/content/Context;)Lcom/taobao/accs/client/a;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Lcom/taobao/accs/client/a;->a(Ljava/lang/String;Lcom/taobao/accs/base/a;)V

    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/taobao/accs/e;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    .line 71
    :cond_0
    iget-object p3, p0, Lcom/taobao/accs/internal/a;->d:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bindApp APPKEY:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p3, v0, v2}, Lcom/taobao/accs/utl/ALog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 72
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p3

    const/4 v0, 0x1

    invoke-static {p3, v0}, Lcom/taobao/accs/data/Message;->a(Ljava/lang/String;I)Lcom/taobao/accs/data/Message;

    move-result-object p3

    .line 75
    invoke-static {p1}, Lcom/taobao/accs/utl/b;->f(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 76
    iget-object v2, p0, Lcom/taobao/accs/internal/a;->d:Ljava/lang/String;

    const-string v3, "accs disabled, try enable"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 77
    invoke-static {p1}, Lcom/taobao/accs/utl/b;->e(Landroid/content/Context;)V

    .line 80
    :cond_1
    iget-object v2, p0, Lcom/taobao/accs/internal/a;->a:Lcom/taobao/accs/f/c;

    invoke-virtual {v2}, Lcom/taobao/accs/f/c;->k()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/taobao/accs/internal/a;->a:Lcom/taobao/accs/f/c;

    iget-object v2, v2, Lcom/taobao/accs/f/c;->i:Lcom/taobao/accs/b;

    invoke-virtual {v2}, Lcom/taobao/accs/b;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 81
    iget-object p1, p0, Lcom/taobao/accs/internal/a;->a:Lcom/taobao/accs/f/c;

    const/16 p2, -0xf

    invoke-virtual {p1, p3, p2}, Lcom/taobao/accs/f/c;->b(Lcom/taobao/accs/data/Message;I)V

    return-void

    .line 90
    :cond_2
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 91
    iget-object p1, p0, Lcom/taobao/accs/internal/a;->a:Lcom/taobao/accs/f/c;

    const/16 p2, -0xe

    invoke-virtual {p1, p3, p2}, Lcom/taobao/accs/f/c;->b(Lcom/taobao/accs/data/Message;I)V

    return-void

    .line 94
    :cond_3
    iget-object p3, p0, Lcom/taobao/accs/internal/a;->a:Lcom/taobao/accs/f/c;

    iput-object p4, p3, Lcom/taobao/accs/f/c;->a:Ljava/lang/String;

    .line 95
    iget-object p3, p0, Lcom/taobao/accs/internal/a;->a:Lcom/taobao/accs/f/c;

    iput-object p2, p3, Lcom/taobao/accs/f/c;->b:Ljava/lang/String;

    .line 96
    iget-object p3, p0, Lcom/taobao/accs/internal/a;->a:Lcom/taobao/accs/f/c;

    iget-object p3, p3, Lcom/taobao/accs/f/c;->i:Lcom/taobao/accs/b;

    invoke-virtual {p3}, Lcom/taobao/accs/b;->c()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p2, p3}, Lcom/taobao/accs/utl/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p5, :cond_4

    .line 99
    invoke-static {p1}, Lcom/taobao/accs/client/a;->a(Landroid/content/Context;)Lcom/taobao/accs/client/a;

    move-result-object p3

    iget-object v2, p0, Lcom/taobao/accs/internal/a;->c:Ljava/lang/String;

    invoke-virtual {p3, v2, p5}, Lcom/taobao/accs/client/a;->a(Ljava/lang/String;Lcom/taobao/accs/e;)V

    .line 107
    :cond_4
    invoke-static {p1}, Lcom/taobao/accs/utl/b;->i(Landroid/content/Context;)V

    .line 108
    invoke-direct {p0, p1, v0}, Lcom/taobao/accs/internal/a;->b(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object p3

    if-nez p3, :cond_5

    return-void

    .line 115
    :cond_5
    :try_start_0
    invoke-static {p1}, Lcom/taobao/accs/client/a;->a(Landroid/content/Context;)Lcom/taobao/accs/client/a;

    move-result-object p5

    invoke-virtual {p5}, Lcom/taobao/accs/client/a;->g()Landroid/content/pm/PackageInfo;

    move-result-object p5

    iget-object p5, p5, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 116
    invoke-static {p1}, Lcom/taobao/accs/utl/b;->c(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string v2, "ACCS_SDK"

    invoke-static {v2, p1}, Lcom/taobao/accs/utl/b;->a(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_6

    goto :goto_0

    :cond_6
    const/4 v2, 0x0

    goto :goto_1

    :cond_7
    :goto_0
    const/4 v2, 0x1

    :goto_1
    if-eqz v2, :cond_8

    const-string v3, "fouce_bind"

    .line 118
    invoke-virtual {p3, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_8
    const-string v3, "appKey"

    .line 120
    invoke-virtual {p3, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "ttid"

    .line 121
    invoke-virtual {p3, p2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "appVersion"

    .line 122
    invoke-virtual {p3, p2, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "app_sercet"

    .line 123
    iget-object p4, p0, Lcom/taobao/accs/internal/a;->a:Lcom/taobao/accs/f/c;

    iget-object p4, p4, Lcom/taobao/accs/f/c;->i:Lcom/taobao/accs/b;

    invoke-virtual {p4}, Lcom/taobao/accs/b;->c()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 124
    invoke-static {p1}, Lcom/taobao/accs/utl/b;->w(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_9

    .line 125
    iget-object p2, p0, Lcom/taobao/accs/internal/a;->a:Lcom/taobao/accs/f/c;

    invoke-static {p2, p1, p3}, Lcom/taobao/accs/data/Message;->a(Lcom/taobao/accs/f/c;Landroid/content/Context;Landroid/content/Intent;)Lcom/taobao/accs/data/Message;

    move-result-object p2

    .line 126
    invoke-direct {p0, p1, p2, v0, v2}, Lcom/taobao/accs/internal/a;->a(Landroid/content/Context;Lcom/taobao/accs/data/Message;IZ)V

    .line 132
    :cond_9
    iget-object p2, p0, Lcom/taobao/accs/internal/a;->a:Lcom/taobao/accs/f/c;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/taobao/accs/f/c;->b(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 135
    :try_start_1
    new-array p1, v0, [Ljava/lang/String;

    const-string p2, "accs"

    aput-object p2, p1, v1

    new-instance p2, Lcom/taobao/accs/utl/j$a;

    invoke-direct {p2}, Lcom/taobao/accs/utl/j$a;-><init>()V

    invoke-static {p1, p2}, Lcom/taobao/accs/utl/j;->a([Ljava/lang/String;Lcom/taobao/orange/OrangeConfigListenerV1;)V

    .line 136
    invoke-static {}, Lcom/taobao/accs/utl/j;->f()V

    .line 137
    invoke-static {}, Lcom/taobao/accs/utl/j;->e()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 139
    :catch_0
    :try_start_2
    iget-object p1, p0, Lcom/taobao/accs/internal/a;->d:Ljava/lang/String;

    const-string p2, "no orange sdk"

    new-array p3, v1, [Ljava/lang/Object;

    invoke-static {p1, p2, p3}, Lcom/taobao/accs/utl/ALog;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 143
    iget-object p2, p0, Lcom/taobao/accs/internal/a;->d:Ljava/lang/String;

    const-string p3, "bindApp exception"

    new-array p4, v1, [Ljava/lang/Object;

    invoke-static {p2, p3, p1, p4}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :goto_2
    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 7

    const/4 v0, 0x0

    .line 231
    :try_start_0
    iget-object v1, p0, Lcom/taobao/accs/internal/a;->d:Ljava/lang/String;

    const-string v2, "bindUser"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "userId"

    aput-object v4, v3, v0

    const/4 v4, 0x1

    aput-object p2, v3, v4

    invoke-static {v1, v2, v3}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 233
    invoke-static {p1}, Lcom/taobao/accs/utl/b;->f(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 234
    iget-object p1, p0, Lcom/taobao/accs/internal/a;->d:Ljava/lang/String;

    const-string p2, "accs disabled"

    new-array p3, v0, [Ljava/lang/Object;

    invoke-static {p1, p2, p3}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    const/4 v1, 0x3

    .line 238
    invoke-direct {p0, p1, v1}, Lcom/taobao/accs/internal/a;->b(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v2

    if-nez v2, :cond_1

    .line 240
    iget-object p2, p0, Lcom/taobao/accs/internal/a;->d:Ljava/lang/String;

    const-string p3, "intent null"

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {p2, p3, v2}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p2, 0x0

    .line 241
    invoke-direct {p0, p1, v1, p2, p2}, Lcom/taobao/accs/internal/a;->a(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    return-void

    .line 244
    :cond_1
    iget-object v3, p0, Lcom/taobao/accs/internal/a;->a:Lcom/taobao/accs/f/c;

    invoke-virtual {v3}, Lcom/taobao/accs/f/c;->i()Ljava/lang/String;

    move-result-object v3

    .line 245
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 246
    iget-object p1, p0, Lcom/taobao/accs/internal/a;->d:Ljava/lang/String;

    const-string p2, "appKey null"

    new-array p3, v0, [Ljava/lang/Object;

    invoke-static {p1, p2, p3}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 249
    :cond_2
    invoke-static {p1}, Lcom/taobao/accs/utl/b;->c(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_3

    if-eqz p3, :cond_4

    .line 250
    :cond_3
    iget-object p3, p0, Lcom/taobao/accs/internal/a;->d:Ljava/lang/String;

    const-string v5, "force bind User"

    new-array v6, v0, [Ljava/lang/Object;

    invoke-static {p3, v5, v6}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string p3, "fouce_bind"

    .line 252
    invoke-virtual {v2, p3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 p3, 0x1

    :cond_4
    const-string v4, "appKey"

    .line 254
    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "userInfo"

    .line 255
    invoke-virtual {v2, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 257
    invoke-static {p1}, Lcom/taobao/accs/utl/b;->w(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 258
    iget-object p2, p0, Lcom/taobao/accs/internal/a;->a:Lcom/taobao/accs/f/c;

    invoke-static {p2, v2}, Lcom/taobao/accs/data/Message;->a(Lcom/taobao/accs/f/c;Landroid/content/Intent;)Lcom/taobao/accs/data/Message;

    move-result-object p2

    .line 259
    invoke-direct {p0, p1, p2, v1, p3}, Lcom/taobao/accs/internal/a;->a(Landroid/content/Context;Lcom/taobao/accs/data/Message;IZ)V

    .line 264
    :cond_5
    iget-object p2, p0, Lcom/taobao/accs/internal/a;->a:Lcom/taobao/accs/f/c;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/taobao/accs/f/c;->b(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 270
    iget-object p2, p0, Lcom/taobao/accs/internal/a;->d:Ljava/lang/String;

    const-string p3, "bindUser"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p2, p3, p1, v0}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public a(Lcom/taobao/accs/b;)V
    .locals 1

    .line 865
    iget-object v0, p0, Lcom/taobao/accs/internal/a;->a:Lcom/taobao/accs/f/c;

    instance-of v0, v0, Lcom/taobao/accs/f/l;

    if-eqz v0, :cond_0

    .line 866
    iget-object v0, p0, Lcom/taobao/accs/internal/a;->a:Lcom/taobao/accs/f/c;

    check-cast v0, Lcom/taobao/accs/f/l;

    invoke-virtual {v0, p1}, Lcom/taobao/accs/f/l;->a(Lcom/taobao/accs/b;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;SLjava/lang/String;Ljava/util/Map;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "S",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 859
    iget-object v0, p0, Lcom/taobao/accs/internal/a;->a:Lcom/taobao/accs/f/c;

    const/4 v4, 0x1

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-static/range {v0 .. v7}, Lcom/taobao/accs/data/Message;->a(Lcom/taobao/accs/f/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZSLjava/lang/String;Ljava/util/Map;)Lcom/taobao/accs/data/Message;

    move-result-object p1

    .line 860
    iget-object p2, p0, Lcom/taobao/accs/internal/a;->a:Lcom/taobao/accs/f/c;

    const/4 p3, 0x1

    invoke-virtual {p2, p1, p3}, Lcom/taobao/accs/f/c;->b(Lcom/taobao/accs/data/Message;Z)V

    return-void
.end method

.method public b(Landroid/content/Context;Lcom/taobao/accs/ACCSManager$AccsRequest;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 490
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/taobao/accs/internal/a;->a(Landroid/content/Context;Lcom/taobao/accs/ACCSManager$AccsRequest;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public b(Landroid/content/Context;)V
    .locals 0

    .line 659
    invoke-static {p1}, Lcom/taobao/accs/utl/b;->d(Landroid/content/Context;)V

    return-void
.end method

.method public b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/taobao/accs/e;)V
    .locals 2

    .line 710
    invoke-static {p1}, Lcom/taobao/accs/client/a;->a(Landroid/content/Context;)Lcom/taobao/accs/client/a;

    move-result-object p3

    iget-object v0, p0, Lcom/taobao/accs/internal/a;->c:Ljava/lang/String;

    invoke-virtual {p3, v0, p5}, Lcom/taobao/accs/client/a;->a(Ljava/lang/String;Lcom/taobao/accs/e;)V

    .line 711
    invoke-static {p1}, Lcom/taobao/accs/utl/b;->w(Landroid/content/Context;)Z

    move-result p3

    const/4 p5, 0x0

    if-nez p3, :cond_0

    .line 712
    iget-object p1, p0, Lcom/taobao/accs/internal/a;->d:Ljava/lang/String;

    const-string p2, "inapp only init in main process!"

    new-array p3, p5, [Ljava/lang/Object;

    invoke-static {p1, p2, p3}, Lcom/taobao/accs/utl/ALog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 715
    :cond_0
    iget-object p3, p0, Lcom/taobao/accs/internal/a;->d:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startInAppConnection APPKEY:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array p5, p5, [Ljava/lang/Object;

    invoke-static {p3, v0, p5}, Lcom/taobao/accs/utl/ALog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 716
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_1

    return-void

    .line 718
    :cond_1
    iget-object p3, p0, Lcom/taobao/accs/internal/a;->a:Lcom/taobao/accs/f/c;

    invoke-virtual {p3}, Lcom/taobao/accs/f/c;->i()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_2

    .line 719
    iget-object p3, p0, Lcom/taobao/accs/internal/a;->a:Lcom/taobao/accs/f/c;

    iput-object p4, p3, Lcom/taobao/accs/f/c;->a:Ljava/lang/String;

    .line 720
    iget-object p3, p0, Lcom/taobao/accs/internal/a;->a:Lcom/taobao/accs/f/c;

    iput-object p2, p3, Lcom/taobao/accs/f/c;->b:Ljava/lang/String;

    .line 721
    iget-object p3, p0, Lcom/taobao/accs/internal/a;->a:Lcom/taobao/accs/f/c;

    iget-object p3, p3, Lcom/taobao/accs/f/c;->i:Lcom/taobao/accs/b;

    invoke-virtual {p3}, Lcom/taobao/accs/b;->c()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p2, p3}, Lcom/taobao/accs/utl/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 724
    :cond_2
    iget-object p1, p0, Lcom/taobao/accs/internal/a;->a:Lcom/taobao/accs/f/c;

    invoke-virtual {p1}, Lcom/taobao/accs/f/c;->a()V

    return-void
.end method

.method public c(Landroid/content/Context;)V
    .locals 0

    .line 664
    invoke-static {p1}, Lcom/taobao/accs/utl/b;->e(Landroid/content/Context;)V

    return-void
.end method
