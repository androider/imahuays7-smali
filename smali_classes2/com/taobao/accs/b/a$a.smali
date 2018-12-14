.class public Lcom/taobao/accs/b/a$a;
.super Landroid/content/BroadcastReceiver;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/accs/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 140
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    const/4 p1, 0x0

    :try_start_0
    const-string v0, "Result"

    .line 145
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "AntiBrush"

    .line 146
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "anti onReceive result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, p1, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "success"

    .line 148
    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 154
    invoke-static {}, Lcom/taobao/accs/client/a;->a()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/taobao/accs/b/a;->a(Landroid/content/Context;Z)V

    goto :goto_0

    :catchall_0
    move-exception p2

    goto :goto_1

    :catch_0
    move-exception p2

    :try_start_1
    const-string v0, "AntiBrush"

    const-string v1, "anti onReceive"

    .line 152
    new-array v2, p1, [Ljava/lang/Object;

    invoke-static {v0, v1, p2, v2}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 154
    invoke-static {}, Lcom/taobao/accs/client/a;->a()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/taobao/accs/b/a;->a(Landroid/content/Context;Z)V

    :goto_0
    return-void

    :goto_1
    invoke-static {}, Lcom/taobao/accs/client/a;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/taobao/accs/b/a;->a(Landroid/content/Context;Z)V

    throw p2
.end method
