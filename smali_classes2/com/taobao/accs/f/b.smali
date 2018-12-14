.class public Lcom/taobao/accs/f/b;
.super Lcom/taobao/accs/f/h;
.source "Taobao"


# instance fields
.field private c:Landroid/app/PendingIntent;

.field private d:Landroid/app/AlarmManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 22
    invoke-direct {p0, p1}, Lcom/taobao/accs/f/h;-><init>(Landroid/content/Context;)V

    .line 24
    :try_start_0
    iget-object p1, p0, Lcom/taobao/accs/f/b;->a:Landroid/content/Context;

    const-string v0, "alarm"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/AlarmManager;

    iput-object p1, p0, Lcom/taobao/accs/f/b;->d:Landroid/app/AlarmManager;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "AlarmHeartBeatMgr"

    const-string v1, "AlarmHeartBeatMgr"

    const/4 v2, 0x0

    .line 26
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, p1, v2}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method


# virtual methods
.method protected a(I)V
    .locals 4

    .line 33
    iget-object v0, p0, Lcom/taobao/accs/f/b;->d:Landroid/app/AlarmManager;

    if-nez v0, :cond_0

    .line 34
    iget-object v0, p0, Lcom/taobao/accs/f/b;->a:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/taobao/accs/f/b;->d:Landroid/app/AlarmManager;

    .line 37
    :cond_0
    iget-object v0, p0, Lcom/taobao/accs/f/b;->d:Landroid/app/AlarmManager;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    const-string p1, "AlarmHeartBeatMgr"

    const-string v0, "setInner null"

    .line 38
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 42
    :cond_1
    iget-object v0, p0, Lcom/taobao/accs/f/b;->c:Landroid/app/PendingIntent;

    if-nez v0, :cond_2

    .line 43
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 44
    iget-object v2, p0, Lcom/taobao/accs/f/b;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "com.taobao.accs.intent.action.COMMAND"

    .line 45
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "command"

    const/16 v3, 0xc9

    .line 46
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 47
    iget-object v2, p0, Lcom/taobao/accs/f/b;->a:Landroid/content/Context;

    invoke-static {v2, v1, v0, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/accs/f/b;->c:Landroid/app/PendingIntent;

    .line 49
    :cond_2
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 50
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/16 v2, 0xd

    .line 51
    invoke-virtual {v0, v2, p1}, Ljava/util/Calendar;->add(II)V

    .line 52
    iget-object p1, p0, Lcom/taobao/accs/f/b;->d:Landroid/app/AlarmManager;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    iget-object v0, p0, Lcom/taobao/accs/f/b;->c:Landroid/app/PendingIntent;

    invoke-virtual {p1, v1, v2, v3, v0}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    return-void
.end method
