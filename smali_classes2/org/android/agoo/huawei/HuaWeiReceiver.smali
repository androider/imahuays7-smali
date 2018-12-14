.class public Lorg/android/agoo/huawei/HuaWeiReceiver;
.super Lcom/huawei/android/a/a;


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Lorg/android/agoo/b/a;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/huawei/android/a/a;-><init>()V

    const-string v0, "accs.HuaWeiReceiver"

    iput-object v0, p0, Lorg/android/agoo/huawei/HuaWeiReceiver;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    :try_start_0
    invoke-static {p1}, Lcom/taobao/accs/utl/b;->w(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "accs.HuaWeiReceiver"

    const-string p2, "donnt report huawei token, HuaWeiReceiver should declare in main process"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "accs.HuaWeiReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onToken token:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lorg/android/agoo/b/c;

    invoke-direct {v0}, Lorg/android/agoo/b/c;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/android/agoo/b/c;->a(Landroid/content/Context;)V

    const-string p1, "HW_TOKEN"

    invoke-virtual {v0, p2, p1}, Lorg/android/agoo/b/c;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string p2, "accs.HuaWeiReceiver"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onToken error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public a(Landroid/content/Context;[BLjava/lang/String;)V
    .locals 3

    :try_start_0
    new-instance p3, Ljava/lang/String;

    const-string v0, "UTF-8"

    invoke-direct {p3, p2, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    const-string v0, "accs.HuaWeiReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPushMsg content: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p3, Lorg/android/agoo/b/a;

    invoke-direct {p3}, Lorg/android/agoo/b/a;-><init>()V

    iput-object p3, p0, Lorg/android/agoo/huawei/HuaWeiReceiver;->b:Lorg/android/agoo/b/a;

    iget-object p3, p0, Lorg/android/agoo/huawei/HuaWeiReceiver;->b:Lorg/android/agoo/b/a;

    const/4 v0, 0x0

    invoke-virtual {p3, p1, v0, v0}, Lorg/android/agoo/b/a;->a(Landroid/content/Context;Lorg/android/agoo/b/c;Lorg/android/agoo/d/c;)V

    iget-object p1, p0, Lorg/android/agoo/huawei/HuaWeiReceiver;->b:Lorg/android/agoo/b/a;

    const-string p3, "huawei"

    invoke-virtual {p1, p2, p3, v0}, Lorg/android/agoo/b/a;->a([BLjava/lang/String;Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string p2, "accs.HuaWeiReceiver"

    const-string p3, "onPushMsg error: "

    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
