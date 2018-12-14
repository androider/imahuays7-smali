.class public Lcom/taobao/accs/base/d;
.super Landroid/app/Service;
.source "Taobao"


# instance fields
.field b:Lcom/taobao/accs/base/f;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x0

    .line 15
    iput-object v0, p0, Lcom/taobao/accs/base/d;->b:Lcom/taobao/accs/base/f;

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 3

    const-string v0, "BaseService"

    .line 58
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBind:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 59
    iget-object v0, p0, Lcom/taobao/accs/base/d;->b:Lcom/taobao/accs/base/f;

    invoke-interface {v0, p1}, Lcom/taobao/accs/base/f;->a(Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object p1

    return-object p1
.end method

.method public onCreate()V
    .locals 6

    .line 20
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 22
    :try_start_0
    invoke-static {}, Lcom/taobao/accs/e/a;->a()Lcom/taobao/accs/e/a;

    move-result-object v2

    invoke-virtual {p0}, Lcom/taobao/accs/base/d;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/taobao/accs/e/a;->a(Landroid/content/Context;)Ljava/lang/ClassLoader;

    move-result-object v2

    const-string v3, "com.taobao.accs.internal.c"

    invoke-virtual {v2, v3}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    new-array v3, v0, [Ljava/lang/Class;

    const-class v4, Landroid/app/Service;

    aput-object v4, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    new-array v3, v0, [Ljava/lang/Object;

    aput-object p0, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/taobao/accs/base/f;

    iput-object v2, p0, Lcom/taobao/accs/base/d;->b:Lcom/taobao/accs/base/f;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    iget-object v2, p0, Lcom/taobao/accs/base/d;->b:Lcom/taobao/accs/base/f;

    if-nez v2, :cond_0

    :try_start_1
    const-string v2, "com.taobao.accs.internal.c"

    .line 31
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    new-array v3, v0, [Ljava/lang/Class;

    const-class v4, Landroid/app/Service;

    aput-object v4, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p0, v0, v1

    invoke-virtual {v2, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    check-cast v0, Lcom/taobao/accs/base/f;

    iput-object v0, p0, Lcom/taobao/accs/base/d;->b:Lcom/taobao/accs/base/f;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catchall_0
    move-exception v2

    goto :goto_3

    :catch_0
    move-exception v2

    .line 27
    :try_start_2
    invoke-static {v2}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 29
    iget-object v2, p0, Lcom/taobao/accs/base/d;->b:Lcom/taobao/accs/base/f;

    if-nez v2, :cond_0

    :try_start_3
    const-string v2, "com.taobao.accs.internal.c"

    .line 31
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    new-array v3, v0, [Ljava/lang/Class;

    const-class v4, Landroid/app/Service;

    aput-object v4, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p0, v0, v1

    invoke-virtual {v2, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    :catch_1
    :cond_0
    :goto_1
    const-string v0, "BaseService"

    const-string v2, "onCreate"

    .line 38
    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/taobao/accs/utl/ALog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 39
    iget-object v0, p0, Lcom/taobao/accs/base/d;->b:Lcom/taobao/accs/base/f;

    if-eqz v0, :cond_1

    .line 40
    iget-object v0, p0, Lcom/taobao/accs/base/d;->b:Lcom/taobao/accs/base/f;

    invoke-interface {v0}, Lcom/taobao/accs/base/f;->a()V

    goto :goto_2

    :cond_1
    const-string v0, "BaseService"

    const-string v2, "cann\'t start ServiceImpl!"

    .line 42
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_2
    return-void

    .line 29
    :goto_3
    iget-object v3, p0, Lcom/taobao/accs/base/d;->b:Lcom/taobao/accs/base/f;

    if-nez v3, :cond_2

    :try_start_4
    const-string v3, "com.taobao.accs.internal.c"

    .line 31
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    new-array v4, v0, [Ljava/lang/Class;

    const-class v5, Landroid/app/Service;

    aput-object v5, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p0, v0, v1

    invoke-virtual {v3, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/accs/base/f;

    iput-object v0, p0, Lcom/taobao/accs/base/d;->b:Lcom/taobao/accs/base/f;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    .line 35
    :catch_2
    :cond_2
    throw v2
.end method

.method public onDestroy()V
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/taobao/accs/base/d;->b:Lcom/taobao/accs/base/f;

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/taobao/accs/base/d;->b:Lcom/taobao/accs/base/f;

    invoke-interface {v0}, Lcom/taobao/accs/base/f;->b()V

    const/4 v0, 0x0

    .line 71
    iput-object v0, p0, Lcom/taobao/accs/base/d;->b:Lcom/taobao/accs/base/f;

    .line 73
    :cond_0
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/taobao/accs/base/d;->b:Lcom/taobao/accs/base/f;

    if-nez v0, :cond_0

    const-string p1, "BaseService"

    const-string p2, "onStartCommand mBaseService null"

    const/4 p3, 0x0

    .line 49
    new-array p3, p3, [Ljava/lang/Object;

    invoke-static {p1, p2, p3}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x2

    return p1

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/taobao/accs/base/d;->b:Lcom/taobao/accs/base/f;

    invoke-interface {v0, p1, p2, p3}, Lcom/taobao/accs/base/f;->a(Landroid/content/Intent;II)I

    move-result p1

    return p1
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/taobao/accs/base/d;->b:Lcom/taobao/accs/base/f;

    invoke-interface {v0, p1}, Lcom/taobao/accs/base/f;->b(Landroid/content/Intent;)Z

    move-result p1

    return p1
.end method
