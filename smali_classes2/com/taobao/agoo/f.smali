.class Lcom/taobao/agoo/f;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Intent;

.field final synthetic b:Lcom/taobao/agoo/a;


# direct methods
.method constructor <init>(Lcom/taobao/agoo/a;Landroid/content/Intent;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/taobao/agoo/f;->b:Lcom/taobao/agoo/a;

    iput-object p2, p0, Lcom/taobao/agoo/f;->a:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 80
    :try_start_0
    iget-object v2, p0, Lcom/taobao/agoo/f;->a:Landroid/content/Intent;

    if-eqz v2, :cond_4

    .line 83
    iget-object v2, p0, Lcom/taobao/agoo/f;->b:Lcom/taobao/agoo/a;

    iget-object v3, p0, Lcom/taobao/agoo/f;->a:Landroid/content/Intent;

    invoke-static {v2, v3}, Lcom/taobao/agoo/a;->a(Lcom/taobao/agoo/a;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v2

    .line 85
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/taobao/agoo/f;->b:Lcom/taobao/agoo/a;

    invoke-static {v3}, Lcom/taobao/agoo/a;->a(Lcom/taobao/agoo/a;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 86
    iget-object v3, p0, Lcom/taobao/agoo/f;->b:Lcom/taobao/agoo/a;

    invoke-static {v3}, Lcom/taobao/agoo/a;->b(Lcom/taobao/agoo/a;)Lorg/android/agoo/b/c;

    move-result-object v3

    if-nez v3, :cond_0

    .line 87
    iget-object v3, p0, Lcom/taobao/agoo/f;->b:Lcom/taobao/agoo/a;

    new-instance v4, Lorg/android/agoo/b/c;

    invoke-direct {v4}, Lorg/android/agoo/b/c;-><init>()V

    invoke-static {v3, v4}, Lcom/taobao/agoo/a;->a(Lcom/taobao/agoo/a;Lorg/android/agoo/b/c;)Lorg/android/agoo/b/c;

    .line 89
    :cond_0
    iget-object v3, p0, Lcom/taobao/agoo/f;->b:Lcom/taobao/agoo/a;

    invoke-static {v3}, Lcom/taobao/agoo/a;->c(Lcom/taobao/agoo/a;)Lorg/android/agoo/b/a;

    move-result-object v3

    if-nez v3, :cond_1

    .line 90
    iget-object v3, p0, Lcom/taobao/agoo/f;->b:Lcom/taobao/agoo/a;

    new-instance v4, Lorg/android/agoo/b/a;

    invoke-direct {v4}, Lorg/android/agoo/b/a;-><init>()V

    invoke-static {v3, v4}, Lcom/taobao/agoo/a;->a(Lcom/taobao/agoo/a;Lorg/android/agoo/b/a;)Lorg/android/agoo/b/a;

    .line 91
    iget-object v3, p0, Lcom/taobao/agoo/f;->b:Lcom/taobao/agoo/a;

    invoke-static {v3}, Lcom/taobao/agoo/a;->c(Lcom/taobao/agoo/a;)Lorg/android/agoo/b/a;

    move-result-object v3

    iget-object v4, p0, Lcom/taobao/agoo/f;->b:Lcom/taobao/agoo/a;

    invoke-virtual {v4}, Lcom/taobao/agoo/a;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/taobao/agoo/f;->b:Lcom/taobao/agoo/a;

    invoke-static {v5}, Lcom/taobao/agoo/a;->b(Lcom/taobao/agoo/a;)Lorg/android/agoo/b/c;

    move-result-object v5

    invoke-virtual {v3, v4, v5, v0}, Lorg/android/agoo/b/a;->a(Landroid/content/Context;Lorg/android/agoo/b/c;Lorg/android/agoo/d/c;)V

    .line 93
    :cond_1
    iget-object v3, p0, Lcom/taobao/agoo/f;->b:Lcom/taobao/agoo/a;

    invoke-static {v3}, Lcom/taobao/agoo/a;->c(Lcom/taobao/agoo/a;)Lorg/android/agoo/b/a;

    move-result-object v3

    const-string v4, "UTF-8"

    invoke-virtual {v2, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    iget-object v5, p0, Lcom/taobao/agoo/f;->b:Lcom/taobao/agoo/a;

    invoke-static {v5}, Lcom/taobao/agoo/a;->a(Lcom/taobao/agoo/a;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5, v0, v1}, Lorg/android/agoo/b/a;->a([BLjava/lang/String;Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;Z)Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "body"

    .line 94
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "accs.BaseNotifyClickActivity"

    const-string v6, "begin parse EncryptedMsg"

    .line 95
    new-array v7, v1, [Ljava/lang/Object;

    invoke-static {v5, v6, v7}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 96
    iget-object v5, p0, Lcom/taobao/agoo/f;->b:Lcom/taobao/agoo/a;

    invoke-static {v5}, Lcom/taobao/agoo/a;->c(Lcom/taobao/agoo/a;)Lorg/android/agoo/b/a;

    invoke-static {v4}, Lorg/android/agoo/b/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 97
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "body"

    .line 98
    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v4, "accs.BaseNotifyClickActivity"

    const-string v5, "parse EncryptedMsg fail, empty"

    .line 100
    new-array v6, v1, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 102
    :goto_0
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 103
    :try_start_1
    invoke-virtual {v4, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 104
    iget-object v0, p0, Lcom/taobao/agoo/f;->b:Lcom/taobao/agoo/a;

    invoke-static {v0}, Lcom/taobao/agoo/a;->c(Lcom/taobao/agoo/a;)Lorg/android/agoo/b/a;

    move-result-object v0

    const-string v3, "UTF-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    const-string v3, "2"

    invoke-virtual {v0, v2, v3}, Lorg/android/agoo/b/a;->a([BLjava/lang/String;)V

    .line 105
    iget-object v0, p0, Lcom/taobao/agoo/f;->b:Lcom/taobao/agoo/a;

    invoke-static {v0, v4}, Lcom/taobao/agoo/a;->b(Lcom/taobao/agoo/a;Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v4

    goto :goto_1

    :catchall_0
    move-exception v2

    move-object v0, v4

    goto :goto_4

    :catch_0
    move-exception v2

    move-object v0, v4

    goto :goto_2

    :cond_3
    :try_start_2
    const-string v2, "accs.BaseNotifyClickActivity"

    const-string v3, "parseMsgFromNotifyListener null!!"

    const/4 v4, 0x2

    .line 107
    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "source"

    aput-object v5, v4, v1

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/taobao/agoo/f;->b:Lcom/taobao/agoo/a;

    invoke-static {v6}, Lcom/taobao/agoo/a;->a(Lcom/taobao/agoo/a;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 114
    :cond_4
    :goto_1
    :try_start_3
    iget-object v2, p0, Lcom/taobao/agoo/f;->b:Lcom/taobao/agoo/a;

    invoke-virtual {v2, v0}, Lcom/taobao/agoo/a;->a(Landroid/content/Intent;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    const-string v2, "accs.BaseNotifyClickActivity"

    const-string v3, "onMessage"

    .line 116
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v0, v1}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_3

    :catchall_1
    move-exception v2

    goto :goto_4

    :catch_2
    move-exception v2

    :goto_2
    :try_start_4
    const-string v3, "accs.BaseNotifyClickActivity"

    const-string v4, "buildMessage"

    .line 111
    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v3, v4, v2, v5}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 114
    :try_start_5
    iget-object v2, p0, Lcom/taobao/agoo/f;->b:Lcom/taobao/agoo/a;

    invoke-virtual {v2, v0}, Lcom/taobao/agoo/a;->a(Landroid/content/Intent;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1

    :goto_3
    return-void

    :goto_4
    :try_start_6
    iget-object v3, p0, Lcom/taobao/agoo/f;->b:Lcom/taobao/agoo/a;

    invoke-virtual {v3, v0}, Lcom/taobao/agoo/a;->a(Landroid/content/Intent;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_5

    :catch_3
    move-exception v0

    const-string v3, "accs.BaseNotifyClickActivity"

    const-string v4, "onMessage"

    .line 116
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v3, v4, v0, v1}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 117
    :goto_5
    throw v2
.end method
