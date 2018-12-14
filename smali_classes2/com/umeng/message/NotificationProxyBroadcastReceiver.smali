.class public Lcom/umeng/message/NotificationProxyBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "NotificationProxyBroadcastReceiver.java"


# static fields
.field private static final a:Ljava/lang/String; = "com.umeng.message.NotificationProxyBroadcastReceiver"


# instance fields
.field private b:Lcom/umeng/message/g;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 6

    .line 80
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 81
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 83
    sget-object v0, Lcom/umeng/commonsdk/a;->a:Lcom/umeng/commonsdk/a/e;

    sget-object v0, Lcom/umeng/message/NotificationProxyBroadcastReceiver;->a:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u627e\u4e0d\u5230\u5e94\u7528: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    invoke-static {v0, v2, v1}, Lcom/umeng/commonsdk/a/e;->a(Ljava/lang/String;I[Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v3, 0x0

    .line 86
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v3, 0x10000000

    .line 87
    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 88
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 89
    sget-object v0, Lcom/umeng/commonsdk/a;->a:Lcom/umeng/commonsdk/a/e;

    sget-object v0, Lcom/umeng/message/NotificationProxyBroadcastReceiver;->a:Ljava/lang/String;

    const/4 v3, 0x2

    new-array v1, v1, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u6253\u5f00\u5e94\u7528: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    invoke-static {v0, v3, v1}, Lcom/umeng/commonsdk/a/e;->a(Ljava/lang/String;I[Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11

    const-string v0, "MSG"

    .line 31
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    const-string v1, "ACTION"

    const/4 v2, -0x1

    .line 33
    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 35
    sget-object v3, Lcom/umeng/commonsdk/a;->a:Lcom/umeng/commonsdk/a/e;

    sget-object v3, Lcom/umeng/message/NotificationProxyBroadcastReceiver;->a:Ljava/lang/String;

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/String;

    const-string v6, "onReceive[msg=%s, action=%d]"

    const/4 v7, 0x2

    new-array v8, v7, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v0, v8, v9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v4

    invoke-static {v6, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-static {v3, v7, v5}, Lcom/umeng/commonsdk/a/e;->a(Ljava/lang/String;I[Ljava/lang/String;)V

    const/16 v3, 0xc

    if-ne v1, v3, :cond_0

    .line 38
    invoke-direct {p0, p1}, Lcom/umeng/message/NotificationProxyBroadcastReceiver;->a(Landroid/content/Context;)V

    return-void

    .line 42
    :cond_0
    new-instance v3, Lcom/umeng/message/entity/a;

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v5}, Lcom/umeng/message/entity/a;-><init>(Lorg/json/JSONObject;)V

    const-string v0, "NOTIFICATION_ID"

    .line 43
    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v2, "MESSAGE_ID"

    .line 45
    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lcom/umeng/message/entity/a;->b:Ljava/lang/String;

    const-string v2, "TASK_ID"

    .line 46
    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, v3, Lcom/umeng/message/entity/a;->c:Ljava/lang/String;

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 50
    :pswitch_0
    sget-object p2, Lcom/umeng/commonsdk/a;->a:Lcom/umeng/commonsdk/a/e;

    sget-object p2, Lcom/umeng/message/NotificationProxyBroadcastReceiver;->a:Ljava/lang/String;

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "\u5ffd\u7565\u901a\u77e5"

    aput-object v2, v1, v9

    invoke-static {p2, v7, v1}, Lcom/umeng/commonsdk/a/e;->a(Ljava/lang/String;I[Ljava/lang/String;)V

    .line 51
    invoke-static {p1}, Lcom/umeng/message/h;->a(Landroid/content/Context;)Lcom/umeng/message/h;

    move-result-object p2

    invoke-virtual {p2, v4}, Lcom/umeng/message/h;->a(Z)V

    .line 52
    invoke-static {p1}, Lcom/umeng/message/h;->a(Landroid/content/Context;)Lcom/umeng/message/h;

    move-result-object p2

    invoke-virtual {p2, v3}, Lcom/umeng/message/h;->d(Lcom/umeng/message/entity/a;)V

    .line 53
    invoke-static {p1}, Lcom/umeng/message/f;->a(Landroid/content/Context;)Lcom/umeng/message/f;

    move-result-object p2

    .line 54
    invoke-virtual {p2}, Lcom/umeng/message/f;->c()Lcom/umeng/message/g;

    move-result-object p2

    iput-object p2, p0, Lcom/umeng/message/NotificationProxyBroadcastReceiver;->b:Lcom/umeng/message/g;

    .line 55
    iget-object p2, p0, Lcom/umeng/message/NotificationProxyBroadcastReceiver;->b:Lcom/umeng/message/g;

    if-eqz p2, :cond_1

    .line 56
    iput-boolean v9, v3, Lcom/umeng/message/entity/a;->E:Z

    .line 57
    iget-object p2, p0, Lcom/umeng/message/NotificationProxyBroadcastReceiver;->b:Lcom/umeng/message/g;

    invoke-interface {p2, p1, v3}, Lcom/umeng/message/g;->a(Landroid/content/Context;Lcom/umeng/message/entity/a;)V

    goto :goto_0

    .line 61
    :pswitch_1
    sget-object p2, Lcom/umeng/commonsdk/a;->a:Lcom/umeng/commonsdk/a/e;

    sget-object p2, Lcom/umeng/message/NotificationProxyBroadcastReceiver;->a:Ljava/lang/String;

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "\u70b9\u51fb\u901a\u77e5"

    aput-object v2, v1, v9

    invoke-static {p2, v7, v1}, Lcom/umeng/commonsdk/a/e;->a(Ljava/lang/String;I[Ljava/lang/String;)V

    .line 62
    invoke-static {p1}, Lcom/umeng/message/h;->a(Landroid/content/Context;)Lcom/umeng/message/h;

    move-result-object p2

    invoke-virtual {p2, v4}, Lcom/umeng/message/h;->a(Z)V

    .line 63
    invoke-static {p1}, Lcom/umeng/message/h;->a(Landroid/content/Context;)Lcom/umeng/message/h;

    move-result-object p2

    invoke-virtual {p2, v3}, Lcom/umeng/message/h;->b(Lcom/umeng/message/entity/a;)V

    .line 64
    invoke-static {p1}, Lcom/umeng/message/f;->a(Landroid/content/Context;)Lcom/umeng/message/f;

    move-result-object p2

    .line 65
    invoke-virtual {p2}, Lcom/umeng/message/f;->c()Lcom/umeng/message/g;

    move-result-object p2

    iput-object p2, p0, Lcom/umeng/message/NotificationProxyBroadcastReceiver;->b:Lcom/umeng/message/g;

    .line 66
    iget-object p2, p0, Lcom/umeng/message/NotificationProxyBroadcastReceiver;->b:Lcom/umeng/message/g;

    if-eqz p2, :cond_1

    .line 67
    iput-boolean v4, v3, Lcom/umeng/message/entity/a;->E:Z

    .line 68
    iget-object p2, p0, Lcom/umeng/message/NotificationProxyBroadcastReceiver;->b:Lcom/umeng/message/g;

    invoke-interface {p2, p1, v3}, Lcom/umeng/message/g;->a(Landroid/content/Context;Lcom/umeng/message/entity/a;)V

    .line 73
    :cond_1
    :goto_0
    invoke-static {}, Lcom/umeng/message/c;->a()Lcom/umeng/message/c;

    move-result-object p1

    new-instance p2, Lcom/umeng/message/entity/b;

    invoke-direct {p2, v0, v3}, Lcom/umeng/message/entity/b;-><init>(ILcom/umeng/message/entity/a;)V

    invoke-virtual {p1, p2}, Lcom/umeng/message/c;->b(Lcom/umeng/message/entity/b;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 75
    invoke-static {p1}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
