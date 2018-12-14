.class public abstract Lcom/umeng/message/j;
.super Lcom/taobao/agoo/d;
.source "UmengBaseIntentService.java"


# static fields
.field private static final a:Ljava/lang/String; = "com.umeng.message.j"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/taobao/agoo/d;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    .line 20
    invoke-static {}, Landroid/os/Process;->getElapsedCpuTime()J

    move-result-wide v0

    const-wide/16 v2, 0xbb8

    cmp-long v4, v0, v2

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-gez v4, :cond_0

    .line 22
    sget-object v3, Lcom/umeng/commonsdk/a;->a:Lcom/umeng/commonsdk/a/e;

    sget-object v3, Lcom/umeng/message/j;->a:Ljava/lang/String;

    new-array v4, v1, [Ljava/lang/String;

    const-string v5, "\u5e94\u7528\u7a0b\u5e8f\u901a\u8fc7\u63a8\u9001\u6d88\u606f\u542f\u52a8"

    aput-object v5, v4, v2

    invoke-static {v3, v0, v4}, Lcom/umeng/commonsdk/a/e;->a(Ljava/lang/String;I[Ljava/lang/String;)V

    .line 23
    invoke-static {}, Lcom/umeng/message/f;->l()V

    :cond_0
    const-string v3, "body"

    .line 26
    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 27
    sget-object v4, Lcom/umeng/commonsdk/a;->a:Lcom/umeng/commonsdk/a/e;

    sget-object v4, Lcom/umeng/message/j;->a:Ljava/lang/String;

    new-array v5, v1, [Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onMessage():["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static {v4, v0, v5}, Lcom/umeng/commonsdk/a/e;->a(Ljava/lang/String;I[Ljava/lang/String;)V

    .line 30
    :try_start_0
    new-instance v0, Lcom/umeng/message/entity/a;

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v4}, Lcom/umeng/message/entity/a;-><init>(Lorg/json/JSONObject;)V

    const-string v4, "id"

    .line 31
    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/umeng/message/entity/a;->b:Ljava/lang/String;

    const-string v4, "task_id"

    .line 32
    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/umeng/message/entity/a;->c:Ljava/lang/String;

    .line 33
    invoke-virtual {p0}, Lcom/umeng/message/j;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/umeng/message/h;->a(Landroid/content/Context;)Lcom/umeng/message/h;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/umeng/message/h;->a(Lcom/umeng/message/entity/a;)V

    .line 37
    invoke-static {p1}, Lcom/umeng/message/b/h;->a(Landroid/content/Context;)Lcom/umeng/message/b/h;

    move-result-object v4

    iget-object v5, v0, Lcom/umeng/message/entity/a;->b:Ljava/lang/String;

    iget-object v6, v0, Lcom/umeng/message/entity/a;->c:Ljava/lang/String;

    iget-object v7, v0, Lcom/umeng/message/entity/a;->d:Ljava/lang/String;

    invoke-virtual {v4, v5, v6, v7}, Lcom/umeng/message/b/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    const-string v4, "autoupdate"

    .line 39
    iget-object v0, v0, Lcom/umeng/message/entity/a;->d:Ljava/lang/String;

    invoke-static {v4, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "id"

    .line 40
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "task_id"

    .line 41
    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 42
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 43
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v5, "com.umeng.message.autoupdate.handler.action"

    .line 44
    invoke-virtual {v4, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v5, "body"

    .line 45
    invoke-virtual {v4, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "id"

    .line 46
    invoke-virtual {v4, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "task_id"

    .line 47
    invoke-virtual {v4, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 48
    invoke-virtual {p1, v4}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 51
    invoke-static {p1}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    .line 52
    sget-object p2, Lcom/umeng/commonsdk/a;->a:Lcom/umeng/commonsdk/a/e;

    sget-object p2, Lcom/umeng/message/j;->a:Ljava/lang/String;

    new-array v0, v1, [Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v2

    invoke-static {p2, v2, v0}, Lcom/umeng/commonsdk/a/e;->a(Ljava/lang/String;I[Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
