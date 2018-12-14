.class Lcom/huawei/android/a/a$a;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/android/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field a:Landroid/content/Context;

.field b:Landroid/os/Bundle;

.field final synthetic c:Lcom/huawei/android/a/a;


# direct methods
.method public constructor <init>(Lcom/huawei/android/a/a;Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lcom/huawei/android/a/a$a;->c:Lcom/huawei/android/a/a;

    const-string p1, "EventRunable"

    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/huawei/android/a/a$a;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/huawei/android/a/a$a;->b:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/huawei/android/a/a$a;->b:Landroid/os/Bundle;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/huawei/android/a/a$a;->b:Landroid/os/Bundle;

    const-string v1, "receiveType"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_2

    invoke-static {}, Lcom/huawei/android/a/a$c;->values()[Lcom/huawei/android/a/a$c;

    move-result-object v1

    array-length v1, v1

    if-lt v0, v1, :cond_1

    goto/16 :goto_0

    :cond_1
    sget-object v1, Lcom/huawei/android/a/a$1;->a:[I

    invoke-static {}, Lcom/huawei/android/a/a$c;->values()[Lcom/huawei/android/a/a$c;

    move-result-object v2

    aget-object v0, v2, v0

    invoke-virtual {v0}, Lcom/huawei/android/a/a$c;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/huawei/android/a/a$a;->b:Landroid/os/Bundle;

    const-string v1, "reportType"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p0, Lcom/huawei/android/a/a$a;->b:Landroid/os/Bundle;

    const-string v2, "isReportSuccess"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iget-object v2, p0, Lcom/huawei/android/a/a$a;->b:Landroid/os/Bundle;

    const-string v3, "reportExtra"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    iget-object v3, p0, Lcom/huawei/android/a/a$a;->c:Lcom/huawei/android/a/a;

    iget-object v4, p0, Lcom/huawei/android/a/a$a;->a:Landroid/content/Context;

    invoke-virtual {v3, v4, v0, v1, v2}, Lcom/huawei/android/a/a;->a(Landroid/content/Context;IZLandroid/os/Bundle;)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/huawei/android/a/a$a;->c:Lcom/huawei/android/a/a;

    iget-object v1, p0, Lcom/huawei/android/a/a$a;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/huawei/android/a/a$a;->b:Landroid/os/Bundle;

    const-string v3, "pushNotifyId"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iget-object v3, p0, Lcom/huawei/android/a/a$a;->b:Landroid/os/Bundle;

    const-string v4, "pushMsg"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/huawei/android/a/a;->a(Landroid/content/Context;ILjava/lang/String;Landroid/os/Bundle;)V

    return-void

    :pswitch_2
    iget-object v0, p0, Lcom/huawei/android/a/a$a;->c:Lcom/huawei/android/a/a;

    iget-object v1, p0, Lcom/huawei/android/a/a$a;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/huawei/android/a/a$a;->b:Landroid/os/Bundle;

    const-string v3, "pushMsg"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/huawei/android/a/a;->b(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    :pswitch_3
    iget-object v0, p0, Lcom/huawei/android/a/a$a;->c:Lcom/huawei/android/a/a;

    iget-object v1, p0, Lcom/huawei/android/a/a$a;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/huawei/android/a/a$a;->b:Landroid/os/Bundle;

    const-string v3, "pushState"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/huawei/android/a/a;->a(Landroid/content/Context;Z)V

    return-void

    :pswitch_4
    iget-object v0, p0, Lcom/huawei/android/a/a$a;->c:Lcom/huawei/android/a/a;

    iget-object v1, p0, Lcom/huawei/android/a/a$a;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/huawei/android/a/a$a;->b:Landroid/os/Bundle;

    const-string v3, "pushMsg"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v2

    iget-object v3, p0, Lcom/huawei/android/a/a$a;->b:Landroid/os/Bundle;

    const-string v4, "deviceToken"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/huawei/android/a/a;->a(Landroid/content/Context;[BLjava/lang/String;)V

    return-void

    :pswitch_5
    iget-object v0, p0, Lcom/huawei/android/a/a$a;->c:Lcom/huawei/android/a/a;

    iget-object v1, p0, Lcom/huawei/android/a/a$a;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/huawei/android/a/a$a;->b:Landroid/os/Bundle;

    const-string v3, "deviceToken"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/huawei/android/a/a$a;->b:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2, v3}, Lcom/huawei/android/a/a;->a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void

    :cond_2
    :goto_0
    const-string v1, "PushLogLightSC2816"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid receiverType:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_1
    const-string v1, "PushLogLightSC2816"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "call EventThread(ReceiveType cause:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :goto_1
    throw v0

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
