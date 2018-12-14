.class public Lcom/fm/openinstall/OpenInstall;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/fm/openinstall/a; = null

.field private static volatile b:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    if-nez p0, :cond_0

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "context\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    instance-of v0, p0, Landroid/app/Activity;

    if-nez v0, :cond_1

    instance-of v0, p0, Landroid/app/Application;

    if-nez v0, :cond_1

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "context\u4e0d\u662fActivity/Application\u7684\u5b9e\u4f8b"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "\u8bf7\u5728AndroidManifest.xml\u4e2d\u914d\u7f6eOpenInstall\u63d0\u4f9b\u7684AppKey"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    const-class v0, Lcom/fm/openinstall/OpenInstall;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/fm/openinstall/OpenInstall;->b:Z

    if-nez v1, :cond_4

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sget-object v1, Lcom/fm/openinstall/OpenInstall;->a:Lcom/fm/openinstall/a;

    if-nez v1, :cond_3

    new-instance v1, Lcom/fm/openinstall/a;

    invoke-direct {v1, p0, p1}, Lcom/fm/openinstall/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v1, Lcom/fm/openinstall/OpenInstall;->a:Lcom/fm/openinstall/a;

    :cond_3
    const/4 p0, 0x1

    sput-boolean p0, Lcom/fm/openinstall/OpenInstall;->b:Z

    :cond_4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private static a()Z
    .locals 3

    sget-boolean v0, Lcom/fm/openinstall/OpenInstall;->b:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/fm/openinstall/f/b;->a:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v0, "\u8bf7\u5148\u8c03\u7528 init(Context) \u521d\u59cb\u5316"

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/fm/openinstall/f/b;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return v1

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public static checkYYB(Landroid/content/Intent;)Z
    .locals 1

    sget-object v0, Lcom/fm/openinstall/OpenInstall;->a:Lcom/fm/openinstall/a;

    invoke-virtual {v0, p0}, Lcom/fm/openinstall/a;->b(Landroid/content/Intent;)Z

    move-result p0

    return p0
.end method

.method public static destoryInstall()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v0, Lcom/fm/openinstall/OpenInstall;->a:Lcom/fm/openinstall/a;

    invoke-virtual {v0}, Lcom/fm/openinstall/a;->c()V

    return-void
.end method

.method public static getInstall(Lcom/fm/openinstall/g/b;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/fm/openinstall/OpenInstall;->getInstall(Lcom/fm/openinstall/g/b;I)V

    return-void
.end method

.method public static getInstall(Lcom/fm/openinstall/g/b;I)V
    .locals 3

    invoke-static {}, Lcom/fm/openinstall/OpenInstall;->a()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-interface {p0, v1, v1}, Lcom/fm/openinstall/g/b;->onInstallFinish(Lcom/fm/openinstall/model/AppData;Lcom/fm/openinstall/model/a;)V

    return-void

    :cond_0
    invoke-static {}, Lcom/fm/openinstall/OpenInstall;->isValidInstall()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/fm/openinstall/OpenInstall;->a:Lcom/fm/openinstall/a;

    int-to-long v1, p1

    invoke-virtual {v0, p0, v1, v2}, Lcom/fm/openinstall/a;->a(Lcom/fm/openinstall/g/b;J)V

    return-void

    :cond_1
    invoke-interface {p0, v1, v1}, Lcom/fm/openinstall/g/b;->onInstallFinish(Lcom/fm/openinstall/model/AppData;Lcom/fm/openinstall/model/a;)V

    return-void
.end method

.method public static getWakeUp(Landroid/content/Intent;Lcom/fm/openinstall/g/c;)Z
    .locals 2

    invoke-static {}, Lcom/fm/openinstall/OpenInstall;->a()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {p0}, Lcom/fm/openinstall/OpenInstall;->isValidIntent(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/fm/openinstall/OpenInstall;->a:Lcom/fm/openinstall/a;

    invoke-virtual {v0, p0, p1}, Lcom/fm/openinstall/a;->a(Landroid/content/Intent;Lcom/fm/openinstall/g/c;)V

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method public static getWakeUpYYB(Landroid/content/Intent;Lcom/fm/openinstall/g/c;)Z
    .locals 2

    invoke-static {}, Lcom/fm/openinstall/OpenInstall;->a()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {p0}, Lcom/fm/openinstall/OpenInstall;->checkYYB(Landroid/content/Intent;)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lcom/fm/openinstall/OpenInstall;->a:Lcom/fm/openinstall/a;

    invoke-virtual {p0, p1}, Lcom/fm/openinstall/a;->a(Lcom/fm/openinstall/g/c;)V

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method public static init(Landroid/content/Context;)V
    .locals 1

    const-string v0, "com.openinstall.APP_KEY"

    invoke-static {p0, v0}, Lcom/fm/openinstall/a/a;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/fm/openinstall/OpenInstall;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static isValidInstall()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v0, Lcom/fm/openinstall/OpenInstall;->a:Lcom/fm/openinstall/a;

    invoke-virtual {v0}, Lcom/fm/openinstall/a;->b()Z

    move-result v0

    return v0
.end method

.method public static isValidIntent(Landroid/content/Intent;)Z
    .locals 1

    sget-object v0, Lcom/fm/openinstall/OpenInstall;->a:Lcom/fm/openinstall/a;

    invoke-virtual {v0, p0}, Lcom/fm/openinstall/a;->a(Landroid/content/Intent;)Z

    move-result p0

    return p0
.end method

.method public static reportEffectPoint(Ljava/lang/String;J)V
    .locals 1

    invoke-static {}, Lcom/fm/openinstall/OpenInstall;->a()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/fm/openinstall/OpenInstall;->a:Lcom/fm/openinstall/a;

    invoke-virtual {v0, p0, p1, p2}, Lcom/fm/openinstall/a;->a(Ljava/lang/String;J)V

    return-void
.end method

.method public static reportRegister()V
    .locals 1

    invoke-static {}, Lcom/fm/openinstall/OpenInstall;->a()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/fm/openinstall/OpenInstall;->a:Lcom/fm/openinstall/a;

    invoke-virtual {v0}, Lcom/fm/openinstall/a;->a()V

    return-void
.end method

.method public static setDebug(Z)V
    .locals 0

    sput-boolean p0, Lcom/fm/openinstall/f/b;->a:Z

    return-void
.end method
