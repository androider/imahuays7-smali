.class public Lcom/taobao/accs/base/c;
.super Landroid/content/BroadcastReceiver;
.source "Taobao"


# instance fields
.field private a:Lcom/taobao/accs/base/e;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    .line 19
    iget-object v0, p0, Lcom/taobao/accs/base/c;->a:Lcom/taobao/accs/base/e;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 21
    :try_start_0
    invoke-static {}, Lcom/taobao/accs/e/a;->a()Lcom/taobao/accs/e/a;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/taobao/accs/e/a;->a(Landroid/content/Context;)Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "com.taobao.accs.internal.b"

    invoke-virtual {v1, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/Class;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/accs/base/e;

    iput-object v1, p0, Lcom/taobao/accs/base/c;->a:Lcom/taobao/accs/base/e;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 26
    invoke-static {v1}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    :try_start_1
    const-string v2, "com.taobao.accs.internal.b"

    .line 28
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/taobao/accs/base/e;

    iput-object v2, p0, Lcom/taobao/accs/base/c;->a:Lcom/taobao/accs/base/e;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v2

    const-string v3, "BaseReceiver"

    const-string v4, "onReceive1"

    .line 30
    new-array v5, v0, [Ljava/lang/Object;

    invoke-static {v3, v4, v2, v5}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :goto_0
    const-string v2, "BaseReceiver"

    const-string v3, "onReceive"

    .line 32
    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {v2, v3, v1, v4}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 34
    :goto_1
    iget-object v1, p0, Lcom/taobao/accs/base/c;->a:Lcom/taobao/accs/base/e;

    if-eqz v1, :cond_0

    const-string v1, "BaseReceiver"

    const-string v2, "onReceive"

    .line 35
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v0}, Lcom/taobao/accs/utl/ALog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 36
    iget-object v0, p0, Lcom/taobao/accs/base/c;->a:Lcom/taobao/accs/base/e;

    invoke-interface {v0, p1, p2}, Lcom/taobao/accs/base/e;->a(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_2

    :cond_0
    const-string p1, "BaseReceiver"

    const-string p2, "onReceive baseReceiver NULL"

    .line 38
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, p2, v0}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    :goto_2
    return-void
.end method
