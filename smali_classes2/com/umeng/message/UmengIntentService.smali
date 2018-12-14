.class public Lcom/umeng/message/UmengIntentService;
.super Lcom/umeng/message/j;
.source "UmengIntentService.java"


# static fields
.field private static final a:Ljava/lang/String; = "com.umeng.message.UmengIntentService"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/umeng/message/j;-><init>()V

    return-void
.end method

.method private a(Landroid/content/Intent;Lcom/umeng/message/entity/a;)Landroid/content/Intent;
    .locals 2

    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    .line 135
    iget-object v0, p2, Lcom/umeng/message/entity/a;->B:Ljava/util/Map;

    if-nez v0, :cond_0

    goto :goto_1

    .line 138
    :cond_0
    iget-object p2, p2, Lcom/umeng/message/entity/a;->B:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 139
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 140
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 142
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_2
    return-object p1

    :cond_3
    :goto_1
    return-object p1
.end method


# virtual methods
.method protected a(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .line 44
    invoke-super {p0, p1, p2}, Lcom/umeng/message/j;->a(Landroid/content/Context;Landroid/content/Intent;)V

    :try_start_0
    const-string v0, "body"

    .line 49
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "id"

    .line 50
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "task_id"

    .line 51
    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 53
    new-instance v2, Lcom/umeng/message/entity/a;

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Lcom/umeng/message/entity/a;-><init>(Lorg/json/JSONObject;)V

    const-string v3, "pullapp"

    .line 54
    iget-object v4, v2, Lcom/umeng/message/entity/a;->d:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 55
    iget-boolean p2, v2, Lcom/umeng/message/entity/a;->w:Z

    if-eqz p2, :cond_0

    .line 56
    iget-object p2, v2, Lcom/umeng/message/entity/a;->x:Ljava/lang/String;

    iget-object v0, v2, Lcom/umeng/message/entity/a;->y:Ljava/lang/String;

    invoke-static {p0, p2, v0}, Lcom/umeng/message/a/a;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, v2, Lcom/umeng/message/entity/a;->x:Ljava/lang/String;

    .line 60
    :cond_0
    iget-object p2, v2, Lcom/umeng/message/entity/a;->x:Ljava/lang/String;

    iget-object v0, v2, Lcom/umeng/message/entity/a;->y:Ljava/lang/String;

    invoke-static {p1, p2, v0}, Lcom/umeng/message/a/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 62
    invoke-static {p1}, Lcom/umeng/message/h;->a(Landroid/content/Context;)Lcom/umeng/message/h;

    move-result-object p1

    const/16 p2, 0x34

    invoke-virtual {p1, v2, p2}, Lcom/umeng/message/h;->a(Lcom/umeng/message/entity/a;I)V

    return-void

    .line 65
    :cond_1
    iget-object p2, v2, Lcom/umeng/message/entity/a;->y:Ljava/lang/String;

    invoke-static {p2}, Lcom/umeng/message/a/a;->a(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 66
    invoke-static {p1}, Lcom/umeng/message/h;->a(Landroid/content/Context;)Lcom/umeng/message/h;

    move-result-object p1

    const/16 p2, 0x35

    invoke-virtual {p1, v2, p2}, Lcom/umeng/message/h;->a(Lcom/umeng/message/entity/a;I)V

    return-void

    .line 70
    :cond_2
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    .line 71
    iget-object v0, v2, Lcom/umeng/message/entity/a;->y:Ljava/lang/String;

    iget-object v1, v2, Lcom/umeng/message/entity/a;->x:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 72
    invoke-direct {p0, p2, v2}, Lcom/umeng/message/UmengIntentService;->a(Landroid/content/Intent;Lcom/umeng/message/entity/a;)Landroid/content/Intent;

    .line 73
    invoke-virtual {p0, p2}, Lcom/umeng/message/UmengIntentService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 74
    new-instance p2, Lcom/umeng/message/UmengIntentService$1;

    invoke-direct {p2, p0, p1, v2}, Lcom/umeng/message/UmengIntentService$1;-><init>(Lcom/umeng/message/UmengIntentService;Landroid/content/Context;Lcom/umeng/message/entity/a;)V

    invoke-static {p2}, Lcom/taobao/accs/common/a;->a(Ljava/lang/Runnable;)V

    return-void

    :cond_3
    const-string v3, "notificationpullapp"

    .line 95
    iget-object v2, v2, Lcom/umeng/message/entity/a;->d:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 96
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 97
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "com.umeng.message.message.handler.action"

    .line 98
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "body"

    .line 99
    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "id"

    .line 100
    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "task_id"

    .line 101
    invoke-virtual {v2, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 102
    invoke-virtual {p1, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 104
    :cond_4
    invoke-static {p1}, Lcom/umeng/message/d;->a(Landroid/content/Context;)Lcom/umeng/message/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/umeng/message/d;->n()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    .line 106
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 107
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 108
    invoke-virtual {v3, p1, v2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 109
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "body"

    .line 111
    invoke-virtual {v3, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "id"

    .line 112
    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "task_id"

    .line 113
    invoke-virtual {v3, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 114
    invoke-virtual {p1, v3}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 116
    :cond_5
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 117
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "com.umeng.message.message.handler.action"

    .line 118
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "body"

    .line 119
    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "id"

    .line 120
    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "task_id"

    .line 121
    invoke-virtual {v2, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 122
    invoke-virtual {p1, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    if-eqz p1, :cond_6

    .line 129
    invoke-static {p1}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    :cond_6
    :goto_0
    return-void
.end method
