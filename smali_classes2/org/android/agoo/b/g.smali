.class Lorg/android/agoo/b/g;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:[B

.field final synthetic b:Z

.field final synthetic c:Lorg/android/agoo/b/a;


# direct methods
.method constructor <init>(Lorg/android/agoo/b/a;[BZ)V
    .locals 0

    .line 367
    iput-object p1, p0, Lorg/android/agoo/b/g;->c:Lorg/android/agoo/b/a;

    iput-object p2, p0, Lorg/android/agoo/b/g;->a:[B

    iput-boolean p3, p0, Lorg/android/agoo/b/g;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    .line 372
    :try_start_0
    new-instance v3, Ljava/lang/String;

    iget-object v4, p0, Lorg/android/agoo/b/g;->a:[B

    const-string v5, "utf-8"

    invoke-direct {v3, v4, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 373
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v3, "accs"

    const-string v4, "agoo_fail_ack"

    const-string v5, "msg==null"

    .line 374
    invoke-static {v3, v4, v5, v1, v2}, Lcom/taobao/accs/utl/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    return-void

    :cond_0
    const-string v4, "AgooFactory"

    .line 377
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "message = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v0, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 378
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    const-string v5, "api"

    .line 380
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "id"

    .line 381
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "agooReport"

    .line 382
    invoke-static {v5, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    const-string v3, "status"

    .line 383
    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_1
    const-string v4, "agooAck"

    .line 385
    invoke-static {v5, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "accs"

    const-string v7, "agoo_success_ack"

    const-string v8, "handlerACKMessage"

    .line 386
    invoke-static {v4, v7, v8, v1, v2}, Lcom/taobao/accs/utl/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    .line 388
    :cond_2
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_8

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_8

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto/16 :goto_1

    .line 392
    :cond_3
    sget-object v4, Lcom/taobao/accs/utl/ALog$Level;->I:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v4}, Lcom/taobao/accs/utl/ALog;->a(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, "AgooFactory"

    .line 393
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateMsg data begin,api="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ",id="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ",status="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ",reportTimes="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lorg/android/agoo/b/a;->b()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lorg/android/agoo/a/b;->e(Landroid/content/Context;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-array v8, v0, [Ljava/lang/Object;

    invoke-static {v4, v7, v8}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    const-string v4, "agooReport"

    .line 395
    invoke-static {v5, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_9

    const-string v4, "4"

    .line 396
    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-boolean v4, p0, Lorg/android/agoo/b/g;->b:Z

    if-eqz v4, :cond_5

    .line 398
    iget-object v4, p0, Lorg/android/agoo/b/g;->c:Lorg/android/agoo/b/a;

    invoke-static {v4}, Lorg/android/agoo/b/a;->a(Lorg/android/agoo/b/a;)Lorg/android/agoo/d/c;

    move-result-object v4

    const-string v5, "1"

    invoke-virtual {v4, v6, v5}, Lorg/android/agoo/d/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    const-string v4, "8"

    .line 399
    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string v4, "9"

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_7

    :cond_6
    iget-boolean v4, p0, Lorg/android/agoo/b/g;->b:Z

    if-eqz v4, :cond_7

    .line 402
    iget-object v4, p0, Lorg/android/agoo/b/g;->c:Lorg/android/agoo/b/a;

    invoke-static {v4}, Lorg/android/agoo/b/a;->a(Lorg/android/agoo/b/a;)Lorg/android/agoo/d/c;

    move-result-object v4

    const-string v5, "100"

    invoke-virtual {v4, v6, v5}, Lorg/android/agoo/d/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    :goto_0
    const-string v4, "accs"

    const-string v5, "agoo_success_ack"

    .line 404
    invoke-static {v4, v5, v3, v1, v2}, Lcom/taobao/accs/utl/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    goto :goto_2

    :cond_8
    :goto_1
    const-string v3, "accs"

    const-string v4, "agoo_fail_ack"

    const-string v5, "json key null"

    .line 389
    invoke-static {v3, v4, v5, v1, v2}, Lcom/taobao/accs/utl/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v3

    const-string v4, "AgooFactory"

    .line 409
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateMsg get data error,e="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v4, v3, v0}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "accs"

    const-string v3, "agoo_fail_ack"

    const-string v4, "json exception"

    .line 410
    invoke-static {v0, v3, v4, v1, v2}, Lcom/taobao/accs/utl/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    :cond_9
    :goto_2
    return-void
.end method
