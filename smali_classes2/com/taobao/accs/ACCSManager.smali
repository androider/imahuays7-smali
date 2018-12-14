.class public final Lcom/taobao/accs/ACCSManager;
.super Ljava/lang/Object;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/accs/ACCSManager$AccsRequest;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static a:Ljava/lang/String; = null

.field public static b:I = 0x0

.field public static c:Landroid/content/Context; = null

.field public static d:Ljava/lang/String; = "default"

.field public static e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/taobao/accs/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 399
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    sput-object v0, Lcom/taobao/accs/ACCSManager;->e:Ljava/util/Map;

    return-void
.end method

.method protected static a(Landroid/content/Context;Ljava/lang/String;)Lcom/taobao/accs/c;
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x2

    const/4 v2, 0x0

    :try_start_0
    const-string v3, "ACCSManager"

    const-string v4, "new accs instance"

    .line 429
    new-array v5, v1, [Ljava/lang/Object;

    const-string v6, "configTag"

    aput-object v6, v5, v2

    aput-object p1, v5, v0

    invoke-static {v3, v4, v5}, Lcom/taobao/accs/utl/ALog;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 430
    invoke-static {}, Lcom/taobao/accs/e/a;->a()Lcom/taobao/accs/e/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/taobao/accs/e/a;->b()Ljava/lang/ClassLoader;

    move-result-object v3

    const-string v4, "com.taobao.accs.internal.a"

    invoke-virtual {v3, v4}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    aput-object v5, v4, v2

    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    aput-object p0, v4, v2

    aput-object p1, v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/taobao/accs/c;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_0

    :try_start_1
    const-string v4, "com.taobao.accs.internal.a"

    .line 439
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    new-array v5, v1, [Ljava/lang/Class;

    const-class v6, Landroid/content/Context;

    aput-object v6, v5, v2

    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v2

    aput-object p1, v1, v0

    invoke-virtual {v4, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/taobao/accs/c;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v3, p0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "ACCSManager"

    const-string v0, "getAccsInstance"

    .line 443
    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p1, v0, p0, v1}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception v3

    goto :goto_1

    :catch_1
    move-exception v3

    :try_start_2
    const-string v4, "ACCSManager"

    const-string v5, "getAccsInstance"

    .line 435
    new-array v6, v2, [Ljava/lang/Object;

    invoke-static {v4, v5, v3, v6}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    const-string v3, "com.taobao.accs.internal.a"

    .line 439
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    aput-object v5, v4, v2

    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v2

    aput-object p1, v1, v0

    invoke-virtual {v3, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v3, p0

    check-cast v3, Lcom/taobao/accs/c;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    :catch_2
    move-exception p0

    const-string p1, "ACCSManager"

    const-string v0, "getAccsInstance"

    .line 443
    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p1, v0, p0, v1}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    const/4 v3, 0x0

    :cond_0
    :goto_0
    return-object v3

    :goto_1
    :try_start_4
    const-string v4, "com.taobao.accs.internal.a"

    .line 439
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    new-array v5, v1, [Ljava/lang/Class;

    const-class v6, Landroid/content/Context;

    aput-object v6, v5, v2

    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v2

    aput-object p1, v1, v0

    invoke-virtual {v4, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_2

    :catch_3
    move-exception p0

    const-string p1, "ACCSManager"

    const-string v0, "getAccsInstance"

    .line 443
    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p1, v0, p0, v1}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 444
    :goto_2
    throw v3
.end method

.method public static declared-synchronized a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/accs/c;
    .locals 5

    const-class p1, Lcom/taobao/accs/ACCSManager;

    monitor-enter p1

    if-eqz p0, :cond_2

    .line 407
    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 412
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/taobao/accs/b;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 413
    sget-object v1, Lcom/taobao/accs/ACCSManager;->e:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/accs/c;

    if-nez v1, :cond_1

    .line 416
    invoke-static {p0, p2}, Lcom/taobao/accs/ACCSManager;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/taobao/accs/c;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 418
    sget-object p0, Lcom/taobao/accs/ACCSManager;->e:Ljava/util/Map;

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 422
    :cond_1
    monitor-exit p1

    return-object v1

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_2
    :goto_0
    :try_start_1
    const-string v0, "ACCSManager"

    const-string v1, "getAccsInstance param null"

    const/4 v2, 0x4

    .line 408
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "configTag"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 p2, 0x2

    const-string v3, "context"

    aput-object v3, v2, p2

    const/4 p2, 0x3

    aput-object p0, v2, p2

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p0, 0x0

    .line 409
    monitor-exit p1

    return-object p0

    .line 406
    :goto_1
    monitor-exit p1

    throw p0
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 59
    sget-object v0, Lcom/taobao/accs/ACCSManager;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "ACCSManager"

    const-string v1, "old interface!!, please AccsManager.setAppkey() first!"

    const/4 v2, 0x0

    .line 60
    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "defaultAppkey"

    const/4 v1, 0x0

    .line 61
    invoke-static {p0, v0, v1}, Lcom/taobao/accs/utl/l;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/taobao/accs/ACCSManager;->a:Ljava/lang/String;

    .line 63
    sget-object v0, Lcom/taobao/accs/ACCSManager;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    :try_start_0
    invoke-static {p0}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/wireless/security/open/SecurityGuardManager;

    move-result-object p0

    .line 67
    invoke-virtual {p0}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getStaticDataStoreComp()Lcom/alibaba/wireless/security/open/staticdatastore/IStaticDataStoreComponent;

    move-result-object p0

    .line 68
    invoke-interface {p0, v2, v1}, Lcom/alibaba/wireless/security/open/staticdatastore/IStaticDataStoreComponent;->getAppKeyByIndex(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/taobao/accs/ACCSManager;->a:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "ACCSManager"

    const-string v1, "getDefaultAppkey"

    .line 70
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, p0, v2}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 74
    :cond_0
    :goto_0
    sget-object p0, Lcom/taobao/accs/ACCSManager;->a:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "0"

    .line 75
    sput-object p0, Lcom/taobao/accs/ACCSManager;->a:Ljava/lang/String;

    .line 79
    :cond_1
    sget-object p0, Lcom/taobao/accs/ACCSManager;->a:Ljava/lang/String;

    return-object p0
.end method

.method public static a(Landroid/content/Context;I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 276
    sput p1, Lcom/taobao/accs/ACCSManager;->b:I

    .line 277
    invoke-static {p0}, Lcom/taobao/accs/ACCSManager;->g(Landroid/content/Context;)Lcom/taobao/accs/c;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/taobao/accs/c;->a(Landroid/content/Context;I)V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/taobao/accs/g;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 299
    invoke-static {p0}, Lcom/taobao/accs/ACCSManager;->g(Landroid/content/Context;)Lcom/taobao/accs/c;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/taobao/accs/c;->a(Landroid/content/Context;Lcom/taobao/accs/g;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 44
    invoke-static {p0, p1}, Lcom/taobao/accs/utl/l;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 45
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sput-object p0, Lcom/taobao/accs/ACCSManager;->c:Landroid/content/Context;

    .line 46
    sput-object p1, Lcom/taobao/accs/ACCSManager;->a:Ljava/lang/String;

    .line 47
    sget-object p0, Lcom/taobao/accs/ACCSManager;->c:Landroid/content/Context;

    const-string p1, "defaultAppkey"

    sget-object v0, Lcom/taobao/accs/ACCSManager;->a:Ljava/lang/String;

    invoke-static {p0, p1, v0}, Lcom/taobao/accs/utl/l;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    sput p2, Lcom/taobao/accs/ACCSManager;->b:I

    .line 49
    sput p2, Lcom/taobao/accs/b;->b:I

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/taobao/accs/e;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 128
    sget-object p1, Lcom/taobao/accs/ACCSManager;->a:Ljava/lang/String;

    const-string v0, ""

    invoke-static {p0, p1, v0, p2, p3}, Lcom/taobao/accs/ACCSManager;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/taobao/accs/e;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/taobao/accs/e;)V
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 112
    sget-object p1, Lcom/taobao/accs/ACCSManager;->a:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 113
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "old interface!!, please AccsManager.setAppkey() first!"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 115
    :cond_0
    invoke-static {}, Lcom/taobao/accs/utl/l;->a()V

    .line 116
    invoke-static {p0}, Lcom/taobao/accs/ACCSManager;->g(Landroid/content/Context;)Lcom/taobao/accs/c;

    move-result-object v0

    sget-object v2, Lcom/taobao/accs/ACCSManager;->a:Ljava/lang/String;

    move-object v1, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/taobao/accs/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/taobao/accs/e;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 158
    sget-object v0, Lcom/taobao/accs/ACCSManager;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "old interface!!, please AccsManager.setAppkey() first!"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 161
    :cond_0
    invoke-static {p0}, Lcom/taobao/accs/ACCSManager;->g(Landroid/content/Context;)Lcom/taobao/accs/c;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Lcom/taobao/accs/c;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 97
    sget-object p0, Lcom/taobao/accs/ACCSManager;->d:Ljava/lang/String;

    return-object p0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/taobao/accs/e;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 293
    sget-object p1, Lcom/taobao/accs/ACCSManager;->a:Ljava/lang/String;

    const-string v0, ""

    invoke-static {p0, p1, v0, p2, p3}, Lcom/taobao/accs/ACCSManager;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/taobao/accs/e;)V

    return-void
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/taobao/accs/e;)V
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 287
    invoke-static {}, Lcom/taobao/accs/utl/l;->a()V

    .line 288
    invoke-static {p0}, Lcom/taobao/accs/ACCSManager;->g(Landroid/content/Context;)Lcom/taobao/accs/c;

    move-result-object v0

    sget-object v2, Lcom/taobao/accs/ACCSManager;->a:Ljava/lang/String;

    move-object v1, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/taobao/accs/c;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/taobao/accs/e;)V

    return-void
.end method

.method public static c(Landroid/content/Context;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 170
    invoke-static {p0}, Lcom/taobao/accs/ACCSManager;->g(Landroid/content/Context;)Lcom/taobao/accs/c;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/taobao/accs/c;->a(Landroid/content/Context;)V

    return-void
.end method

.method public static d(Landroid/content/Context;)V
    .locals 1

    .line 451
    invoke-static {p0}, Lcom/taobao/accs/ACCSManager;->g(Landroid/content/Context;)Lcom/taobao/accs/c;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/taobao/accs/c;->c(Landroid/content/Context;)V

    return-void
.end method

.method public static e(Landroid/content/Context;)V
    .locals 1

    .line 455
    invoke-static {p0}, Lcom/taobao/accs/ACCSManager;->g(Landroid/content/Context;)Lcom/taobao/accs/c;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/taobao/accs/c;->b(Landroid/content/Context;)V

    return-void
.end method

.method public static f(Landroid/content/Context;)[Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "ACCS_SDK"

    const/4 v2, 0x0

    .line 478
    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v1, "appkey"

    .line 479
    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "ACCSManager"

    .line 480
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getAppkey:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v3, v2}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 481
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "\\|"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 483
    invoke-static {p0}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-object v0
.end method

.method private static declared-synchronized g(Landroid/content/Context;)Lcom/taobao/accs/c;
    .locals 3

    const-class v0, Lcom/taobao/accs/ACCSManager;

    monitor-enter v0

    const/4 v1, 0x0

    .line 396
    :try_start_0
    invoke-static {p0}, Lcom/taobao/accs/ACCSManager;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v1, v2}, Lcom/taobao/accs/ACCSManager;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/accs/c;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
