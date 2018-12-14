.class public Lorg/android/agoo/huawei/a;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    sput-object v0, Lorg/android/agoo/huawei/a;->a:Ljava/lang/String;

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 1

    :try_start_0
    invoke-static {p0}, Lcom/taobao/accs/utl/b;->w(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "accs.HuaWeiRegister"

    const-string v0, "register not in main process, return"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {p0}, Lorg/android/agoo/huawei/a;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lorg/android/agoo/huawei/b;

    invoke-direct {v0}, Lorg/android/agoo/huawei/b;-><init>()V

    invoke-static {v0}, Lcom/taobao/agoo/a;->a(Lcom/taobao/agoo/a$a;)V

    new-instance v0, Lorg/android/agoo/huawei/a$1;

    invoke-direct {v0, p0}, Lorg/android/agoo/huawei/a$1;-><init>(Landroid/content/Context;)V

    new-instance p0, Ljava/lang/Thread;

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    return-void

    :cond_1
    const-string p0, "accs.HuaWeiRegister"

    const-string v0, "checkDevice false"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string v0, "accs.HuaWeiRegister"

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static b(Landroid/content/Context;)Z
    .locals 1

    sget-object p0, Lorg/android/agoo/huawei/a;->a:Ljava/lang/String;

    const-string v0, "huawei"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    sget-object p0, Lorg/android/agoo/huawei/a;->a:Ljava/lang/String;

    const-string v0, "honor"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method
