.class Lcom/taobao/accs/i;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/taobao/accs/ChannelService$KernelService;


# direct methods
.method constructor <init>(Lcom/taobao/accs/ChannelService$KernelService;)V
    .locals 0

    .line 124
    iput-object p1, p0, Lcom/taobao/accs/i;->a:Lcom/taobao/accs/ChannelService$KernelService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v0, 0x0

    .line 129
    :try_start_0
    invoke-static {}, Lcom/taobao/accs/ChannelService;->a()Lcom/taobao/accs/ChannelService;

    move-result-object v1

    .line 130
    iget-object v2, p0, Lcom/taobao/accs/i;->a:Lcom/taobao/accs/ChannelService$KernelService;

    invoke-static {v2}, Lcom/taobao/accs/ChannelService$KernelService;->a(Lcom/taobao/accs/ChannelService$KernelService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, p0, Lcom/taobao/accs/i;->a:Lcom/taobao/accs/ChannelService$KernelService;

    invoke-virtual {v3}, Lcom/taobao/accs/ChannelService$KernelService;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->icon:I

    if-eqz v2, :cond_0

    .line 133
    new-instance v3, Landroid/app/Notification$Builder;

    iget-object v4, p0, Lcom/taobao/accs/i;->a:Lcom/taobao/accs/ChannelService$KernelService;

    invoke-static {v4}, Lcom/taobao/accs/ChannelService$KernelService;->a(Lcom/taobao/accs/ChannelService$KernelService;)Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 135
    invoke-virtual {v3, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 136
    invoke-virtual {v3}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v3

    const/16 v4, 0x249b

    invoke-virtual {v1, v4, v3}, Lcom/taobao/accs/ChannelService;->startForeground(ILandroid/app/Notification;)V

    .line 138
    new-instance v1, Landroid/app/Notification$Builder;

    iget-object v3, p0, Lcom/taobao/accs/i;->a:Lcom/taobao/accs/ChannelService$KernelService;

    invoke-static {v3}, Lcom/taobao/accs/ChannelService$KernelService;->a(Lcom/taobao/accs/ChannelService$KernelService;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 140
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 141
    invoke-static {}, Lcom/taobao/accs/ChannelService$KernelService;->a()Lcom/taobao/accs/ChannelService$KernelService;

    move-result-object v2

    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {v2, v4, v1}, Lcom/taobao/accs/ChannelService$KernelService;->startForeground(ILandroid/app/Notification;)V

    .line 142
    invoke-static {}, Lcom/taobao/accs/ChannelService$KernelService;->a()Lcom/taobao/accs/ChannelService$KernelService;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/taobao/accs/ChannelService$KernelService;->stopForeground(Z)V

    .line 144
    :cond_0
    invoke-static {}, Lcom/taobao/accs/ChannelService$KernelService;->a()Lcom/taobao/accs/ChannelService$KernelService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/accs/ChannelService$KernelService;->stopSelf()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "ChannelService"

    const-string v3, " onStartCommand run"

    .line 146
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v2, v3, v1, v0}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
