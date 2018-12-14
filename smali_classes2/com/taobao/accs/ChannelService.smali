.class public Lcom/taobao/accs/ChannelService;
.super Lcom/taobao/accs/base/d;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/accs/ChannelService$KernelService;
    }
.end annotation


# static fields
.field public static a:I = 0xdd

.field private static c:Lcom/taobao/accs/ChannelService;


# instance fields
.field private d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Lcom/taobao/accs/base/d;-><init>()V

    const/4 v0, 0x1

    .line 23
    iput-boolean v0, p0, Lcom/taobao/accs/ChannelService;->d:Z

    return-void
.end method

.method public static a()Lcom/taobao/accs/ChannelService;
    .locals 1

    .line 26
    sget-object v0, Lcom/taobao/accs/ChannelService;->c:Lcom/taobao/accs/ChannelService;

    return-object v0
.end method

.method static a(Landroid/content/Context;)V
    .locals 3

    .line 67
    :try_start_0
    invoke-static {p0}, Lcom/taobao/accs/ChannelService;->c(Landroid/content/Context;)I

    move-result v0

    .line 68
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v1, v0, :cond_0

    .line 69
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/taobao/accs/ChannelService$KernelService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 70
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 71
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "ChannelService"

    const-string v1, "startKernel"

    const/4 v2, 0x0

    .line 74
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, p0, v2}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void
.end method

.method static b(Landroid/content/Context;)V
    .locals 3

    .line 80
    :try_start_0
    invoke-static {p0}, Lcom/taobao/accs/ChannelService;->c(Landroid/content/Context;)I

    move-result v0

    .line 81
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v1, v0, :cond_0

    .line 82
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/taobao/accs/ChannelService$KernelService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 83
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 84
    invoke-virtual {p0, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "ChannelService"

    const-string v1, "stopKernel"

    const/4 v2, 0x0

    .line 87
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, p0, v2}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void
.end method

.method static c(Landroid/content/Context;)I
    .locals 6

    const/4 v0, 0x0

    const/16 v1, 0x18

    :try_start_0
    const-string v2, "ACCS_SDK"

    .line 94
    invoke-virtual {p0, v2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v2, "support_foreground_v"

    .line 95
    invoke-interface {p0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v2, "ChannelService"

    const-string v3, "getSupportForegroundVer fail:"

    const/4 v4, 0x2

    .line 97
    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "key"

    aput-object v5, v4, v0

    const/4 v0, 0x1

    const-string v5, "support_foreground_v"

    aput-object v5, v4, v0

    invoke-static {v2, v3, p0, v4}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    const/16 p0, 0x18

    :goto_0
    return p0
.end method


# virtual methods
.method public onCreate()V
    .locals 4

    .line 30
    invoke-super {p0}, Lcom/taobao/accs/base/d;->onCreate()V

    .line 31
    sput-object p0, Lcom/taobao/accs/ChannelService;->c:Lcom/taobao/accs/ChannelService;

    .line 32
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-ge v0, v1, :cond_0

    const/16 v0, 0x249b

    .line 34
    :try_start_0
    new-instance v1, Landroid/app/Notification;

    invoke-direct {v1}, Landroid/app/Notification;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/taobao/accs/ChannelService;->startForeground(ILandroid/app/Notification;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "ChannelService"

    const-string v2, "ChannelService onCreate"

    const/4 v3, 0x0

    .line 36
    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v0, v3}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public onDestroy()V
    .locals 4

    .line 54
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    .line 56
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/taobao/accs/ChannelService;->stopForeground(Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "ChannelService"

    const-string v2, "ChannelService onDestroy"

    const/4 v3, 0x0

    .line 58
    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v0, v3}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 61
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/taobao/accs/ChannelService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/accs/ChannelService;->b(Landroid/content/Context;)V

    .line 62
    invoke-super {p0}, Lcom/taobao/accs/base/d;->onDestroy()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1

    .line 44
    iget-boolean v0, p0, Lcom/taobao/accs/ChannelService;->d:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 45
    iput-boolean v0, p0, Lcom/taobao/accs/ChannelService;->d:Z

    .line 46
    invoke-virtual {p0}, Lcom/taobao/accs/ChannelService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/accs/ChannelService;->a(Landroid/content/Context;)V

    .line 48
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/taobao/accs/base/d;->onStartCommand(Landroid/content/Intent;II)I

    move-result p1

    return p1
.end method
