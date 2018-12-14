.class public abstract Lcom/xiaomi/mipush/sdk/MiPushClient;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/mipush/sdk/MiPushClient$b;,
        Lcom/xiaomi/mipush/sdk/MiPushClient$a;
    }
.end annotation


# static fields
.field private static a:Z = true

.field private static b:Landroid/content/Context;

.field private static c:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/xiaomi/mipush/sdk/MiPushClient;->c:J

    return-void
.end method

.method protected static declared-synchronized a()Ljava/lang/String;
    .locals 8

    const-class v0, Lcom/xiaomi/mipush/sdk/MiPushClient;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x4

    invoke-static {v2}, Lcom/xiaomi/a/a/e/c;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v2, Lcom/xiaomi/mipush/sdk/MiPushClient;->c:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-wide v2, Lcom/xiaomi/mipush/sdk/MiPushClient;->c:J

    const-wide/16 v4, 0x1

    add-long v6, v2, v4

    sput-wide v6, Lcom/xiaomi/mipush/sdk/MiPushClient;->c:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static declared-synchronized a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    const-class v0, Lcom/xiaomi/mipush/sdk/MiPushClient;

    monitor-enter v0

    :try_start_0
    const-string v1, "mipush_extra"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "alias_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-interface {p0, p1, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method static a(Landroid/content/Context;Ljava/lang/String;Lcom/xiaomi/xmpush/thrift/c;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lcom/xiaomi/xmpush/thrift/i;

    invoke-direct {v0}, Lcom/xiaomi/xmpush/thrift/i;-><init>()V

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/e;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/e;

    move-result-object p3

    invoke-virtual {p3}, Lcom/xiaomi/mipush/sdk/e;->b()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/e;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/e;

    move-result-object p3

    invoke-virtual {p3}, Lcom/xiaomi/mipush/sdk/e;->c()Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    :cond_0
    const-string p0, "do not report clicked message"

    invoke-static {p0}, Lcom/xiaomi/a/a/b/c;->c(Ljava/lang/String;)V

    return-void

    :cond_1
    :goto_0
    invoke-virtual {v0, p3}, Lcom/xiaomi/xmpush/thrift/i;->b(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/i;

    const-string p3, "bar:click"

    invoke-virtual {v0, p3}, Lcom/xiaomi/xmpush/thrift/i;->c(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/i;

    invoke-virtual {v0, p1}, Lcom/xiaomi/xmpush/thrift/i;->a(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/i;

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Lcom/xiaomi/xmpush/thrift/i;->a(Z)Lcom/xiaomi/xmpush/thrift/i;

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/k;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/k;

    move-result-object p0

    sget-object p3, Lcom/xiaomi/xmpush/thrift/a;->i:Lcom/xiaomi/xmpush/thrift/a;

    invoke-virtual {p0, v0, p3, p1, p2}, Lcom/xiaomi/mipush/sdk/k;->a(Lorg/apache/thrift/a;Lcom/xiaomi/xmpush/thrift/a;ZLcom/xiaomi/xmpush/thrift/c;)V

    return-void
.end method

.method static a(Landroid/content/Context;Ljava/lang/String;Lcom/xiaomi/xmpush/thrift/c;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    new-instance v1, Lcom/xiaomi/xmpush/thrift/i;

    invoke-direct {v1}, Lcom/xiaomi/xmpush/thrift/i;-><init>()V

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "do not report clicked message"

    invoke-static {p0}, Lcom/xiaomi/a/a/b/c;->c(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {v1, p4}, Lcom/xiaomi/xmpush/thrift/i;->b(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/i;

    const-string v0, "bar:click"

    invoke-virtual {v1, v0}, Lcom/xiaomi/xmpush/thrift/i;->c(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/i;

    invoke-virtual {v1, p1}, Lcom/xiaomi/xmpush/thrift/i;->a(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/i;

    const/4 p1, 0x0

    invoke-virtual {v1, p1}, Lcom/xiaomi/xmpush/thrift/i;->a(Z)Lcom/xiaomi/xmpush/thrift/i;

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/k;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/k;

    move-result-object v0

    sget-object v2, Lcom/xiaomi/xmpush/thrift/a;->i:Lcom/xiaomi/xmpush/thrift/a;

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v6, 0x1

    move-object v5, p2

    move-object v7, p3

    move-object v8, p4

    invoke-virtual/range {v0 .. v8}, Lcom/xiaomi/mipush/sdk/k;->a(Lorg/apache/thrift/a;Lcom/xiaomi/xmpush/thrift/a;ZZLcom/xiaomi/xmpush/thrift/c;ZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/xiaomi/mipush/sdk/f;

    invoke-direct {v1, p0, p1, p2}, Lcom/xiaomi/mipush/sdk/f;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/mipush/sdk/MiPushClient$b;)V
    .locals 10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lcom/xiaomi/mipush/sdk/MiPushClient;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appID"

    invoke-static {p1, v0}, Lcom/xiaomi/mipush/sdk/MiPushClient;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appToken"

    invoke-static {p2, v0}, Lcom/xiaomi/mipush/sdk/MiPushClient;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/mipush/sdk/MiPushClient;->b:Landroid/content/Context;

    sget-object v0, Lcom/xiaomi/mipush/sdk/MiPushClient;->b:Landroid/content/Context;

    if-nez v0, :cond_0

    sput-object p0, Lcom/xiaomi/mipush/sdk/MiPushClient;->b:Landroid/content/Context;

    :cond_0
    if-eqz p3, :cond_1

    invoke-static {p3}, Lcom/xiaomi/mipush/sdk/PushMessageHandler;->a(Lcom/xiaomi/mipush/sdk/MiPushClient$b;)V

    :cond_1
    sget-object v0, Lcom/xiaomi/mipush/sdk/MiPushClient;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/mipush/sdk/e;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/mipush/sdk/e;->m()I

    move-result v0

    invoke-static {}, Lcom/xiaomi/mipush/sdk/a;->a()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_3

    sget-object v1, Lcom/xiaomi/mipush/sdk/MiPushClient;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/xiaomi/mipush/sdk/MiPushClient;->k(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/k;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/k;

    move-result-object p0

    invoke-virtual {p0}, Lcom/xiaomi/mipush/sdk/k;->a()V

    const-string p0, "Could not send  register message within 5s repeatly ."

    invoke-static {p0}, Lcom/xiaomi/a/a/b/c;->a(Ljava/lang/String;)V

    return-void

    :cond_3
    if-nez v0, :cond_8

    sget-object v1, Lcom/xiaomi/mipush/sdk/MiPushClient;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/xiaomi/mipush/sdk/e;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/e;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/xiaomi/mipush/sdk/e;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    sget-object v1, Lcom/xiaomi/mipush/sdk/MiPushClient;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/xiaomi/mipush/sdk/e;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/mipush/sdk/e;->n()Z

    move-result v1

    if-nez v1, :cond_8

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/b;->a(Landroid/content/Context;)I

    move-result p1

    const/4 p2, 0x0

    if-ne v2, p1, :cond_4

    const-string p1, "callback"

    invoke-static {p3, p1}, Lcom/xiaomi/mipush/sdk/MiPushClient;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/e;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/e;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaomi/mipush/sdk/e;->e()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, v0, v1, p2, p1}, Lcom/xiaomi/mipush/sdk/MiPushClient$b;->a(JLjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/e;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/e;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaomi/mipush/sdk/e;->e()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v5, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v4, "register"

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Lcom/xiaomi/mipush/sdk/b;->a(Ljava/lang/String;Ljava/util/List;JLjava/lang/String;Ljava/lang/String;)Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;

    move-result-object p1

    sget-object p3, Lcom/xiaomi/mipush/sdk/MiPushClient;->b:Landroid/content/Context;

    invoke-static {p3, p1}, Lcom/xiaomi/mipush/sdk/b;->a(Landroid/content/Context;Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;)V

    :goto_1
    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/k;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/k;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaomi/mipush/sdk/k;->a()V

    sget-object p1, Lcom/xiaomi/mipush/sdk/MiPushClient;->b:Landroid/content/Context;

    invoke-static {p1}, Lcom/xiaomi/mipush/sdk/e;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/e;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaomi/mipush/sdk/e;->a()Z

    move-result p1

    if-eqz p1, :cond_6

    new-instance p1, Lcom/xiaomi/xmpush/thrift/i;

    invoke-direct {p1}, Lcom/xiaomi/xmpush/thrift/i;-><init>()V

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/e;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/e;

    move-result-object p3

    invoke-virtual {p3}, Lcom/xiaomi/mipush/sdk/e;->c()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/xiaomi/xmpush/thrift/i;->b(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/i;

    const-string p3, "client_info_update"

    invoke-virtual {p1, p3}, Lcom/xiaomi/xmpush/thrift/i;->c(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/i;

    invoke-static {}, Lcom/xiaomi/mipush/sdk/MiPushClient;->a()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/xiaomi/xmpush/thrift/i;->a(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/i;

    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    iput-object p3, p1, Lcom/xiaomi/xmpush/thrift/i;->h:Ljava/util/Map;

    iget-object p3, p1, Lcom/xiaomi/xmpush/thrift/i;->h:Ljava/util/Map;

    const-string v0, "app_version"

    sget-object v1, Lcom/xiaomi/mipush/sdk/MiPushClient;->b:Landroid/content/Context;

    sget-object v4, Lcom/xiaomi/mipush/sdk/MiPushClient;->b:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/xiaomi/mipush/sdk/e;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p3, p1, Lcom/xiaomi/xmpush/thrift/i;->h:Ljava/util/Map;

    const-string v0, "push_sdk_vn"

    const-string v1, "2_2_22"

    invoke-interface {p3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p3, p1, Lcom/xiaomi/xmpush/thrift/i;->h:Ljava/util/Map;

    const-string v0, "push_sdk_vc"

    const/16 v1, 0x4efe

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p3, Lcom/xiaomi/mipush/sdk/MiPushClient;->b:Landroid/content/Context;

    invoke-static {p3}, Lcom/xiaomi/mipush/sdk/e;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/e;

    move-result-object p3

    invoke-virtual {p3}, Lcom/xiaomi/mipush/sdk/e;->g()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p1, Lcom/xiaomi/xmpush/thrift/i;->h:Ljava/util/Map;

    const-string v1, "deviceid"

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/k;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/k;

    move-result-object p0

    sget-object p3, Lcom/xiaomi/xmpush/thrift/a;->i:Lcom/xiaomi/xmpush/thrift/a;

    invoke-virtual {p0, p1, p3, v3, p2}, Lcom/xiaomi/mipush/sdk/k;->a(Lorg/apache/thrift/a;Lcom/xiaomi/xmpush/thrift/a;ZLcom/xiaomi/xmpush/thrift/c;)V

    :cond_6
    sget-object p0, Lcom/xiaomi/mipush/sdk/MiPushClient;->b:Landroid/content/Context;

    const-string p1, "update_devId"

    invoke-static {p0, p1, v3}, Lcom/xiaomi/a/a/a/a;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0

    if-nez p0, :cond_7

    invoke-static {}, Lcom/xiaomi/mipush/sdk/MiPushClient;->c()V

    sget-object p0, Lcom/xiaomi/mipush/sdk/MiPushClient;->b:Landroid/content/Context;

    const-string p1, "update_devId"

    invoke-static {p0, p1, v2}, Lcom/xiaomi/a/a/a/a;->b(Landroid/content/Context;Ljava/lang/String;Z)V

    :cond_7
    sget-object p0, Lcom/xiaomi/mipush/sdk/MiPushClient;->b:Landroid/content/Context;

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/MiPushClient;->a(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_9

    sget-object p0, Lcom/xiaomi/mipush/sdk/MiPushClient;->b:Landroid/content/Context;

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/MiPushClient;->i(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_9

    new-instance v5, Lcom/xiaomi/xmpush/thrift/i;

    invoke-direct {v5}, Lcom/xiaomi/xmpush/thrift/i;-><init>()V

    sget-object p0, Lcom/xiaomi/mipush/sdk/MiPushClient;->b:Landroid/content/Context;

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/e;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/e;

    move-result-object p0

    invoke-virtual {p0}, Lcom/xiaomi/mipush/sdk/e;->c()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v5, p0}, Lcom/xiaomi/xmpush/thrift/i;->b(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/i;

    const-string p0, "pull"

    invoke-virtual {v5, p0}, Lcom/xiaomi/xmpush/thrift/i;->c(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/i;

    invoke-static {}, Lcom/xiaomi/mipush/sdk/MiPushClient;->a()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v5, p0}, Lcom/xiaomi/xmpush/thrift/i;->a(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/i;

    invoke-virtual {v5, v3}, Lcom/xiaomi/xmpush/thrift/i;->a(Z)Lcom/xiaomi/xmpush/thrift/i;

    sget-object p0, Lcom/xiaomi/mipush/sdk/MiPushClient;->b:Landroid/content/Context;

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/k;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/k;

    move-result-object v4

    sget-object v6, Lcom/xiaomi/xmpush/thrift/a;->i:Lcom/xiaomi/xmpush/thrift/a;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Lcom/xiaomi/mipush/sdk/k;->a(Lorg/apache/thrift/a;Lcom/xiaomi/xmpush/thrift/a;ZLcom/xiaomi/xmpush/thrift/c;Z)V

    sget-object p0, Lcom/xiaomi/mipush/sdk/MiPushClient;->b:Landroid/content/Context;

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/MiPushClient;->h(Landroid/content/Context;)V

    goto :goto_2

    :cond_8
    const/4 p3, 0x6

    invoke-static {p3}, Lcom/xiaomi/a/a/e/c;->a(I)Ljava/lang/String;

    move-result-object p3

    sget-object v1, Lcom/xiaomi/mipush/sdk/MiPushClient;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/xiaomi/mipush/sdk/e;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/mipush/sdk/e;->h()V

    sget-object v1, Lcom/xiaomi/mipush/sdk/MiPushClient;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/xiaomi/mipush/sdk/e;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/e;

    move-result-object v1

    invoke-static {}, Lcom/xiaomi/mipush/sdk/a;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/xiaomi/mipush/sdk/e;->a(I)V

    sget-object v1, Lcom/xiaomi/mipush/sdk/MiPushClient;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/xiaomi/mipush/sdk/e;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/e;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3}, Lcom/xiaomi/mipush/sdk/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/xiaomi/mipush/sdk/MiPushClient;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/xiaomi/mipush/sdk/MiPushClient;->b(Landroid/content/Context;)V

    new-instance v1, Lcom/xiaomi/xmpush/thrift/j;

    invoke-direct {v1}, Lcom/xiaomi/xmpush/thrift/j;-><init>()V

    invoke-static {}, Lcom/xiaomi/mipush/sdk/MiPushClient;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaomi/xmpush/thrift/j;->a(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/j;

    invoke-virtual {v1, p1}, Lcom/xiaomi/xmpush/thrift/j;->b(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/j;

    invoke-virtual {v1, p2}, Lcom/xiaomi/xmpush/thrift/j;->e(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/j;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/xiaomi/xmpush/thrift/j;->d(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/j;

    invoke-virtual {v1, p3}, Lcom/xiaomi/xmpush/thrift/j;->f(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/j;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/xiaomi/mipush/sdk/e;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/xiaomi/xmpush/thrift/j;->c(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/j;

    const-string p0, "2_2_22"

    invoke-virtual {v1, p0}, Lcom/xiaomi/xmpush/thrift/j;->g(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/j;

    const-wide/16 p0, 0x4efe

    invoke-virtual {v1, p0, p1}, Lcom/xiaomi/xmpush/thrift/j;->a(J)Lcom/xiaomi/xmpush/thrift/j;

    sget-object p0, Lcom/xiaomi/mipush/sdk/MiPushClient;->b:Landroid/content/Context;

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/k;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/k;

    move-result-object p0

    invoke-virtual {p0, v1, v0}, Lcom/xiaomi/mipush/sdk/k;->a(Lcom/xiaomi/xmpush/thrift/j;Z)V

    :cond_9
    :goto_2
    sget-boolean p0, Lcom/xiaomi/mipush/sdk/MiPushClient;->a:Z

    if-eqz p0, :cond_a

    sget-object p0, Lcom/xiaomi/mipush/sdk/MiPushClient;->b:Landroid/content/Context;

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/MiPushClient;->g(Landroid/content/Context;)V

    :cond_a
    sget-object p0, Lcom/xiaomi/mipush/sdk/MiPushClient;->b:Landroid/content/Context;

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/MiPushClient;->j(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/xiaomi/a/a/b/c;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method private static a(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    if-nez p0, :cond_0

    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "param "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is not nullable"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    return-void
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 0

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/k;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/k;

    move-result-object p0

    invoke-virtual {p0}, Lcom/xiaomi/mipush/sdk/k;->b()Z

    move-result p0

    return p0
.end method

.method static synthetic b()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/xiaomi/mipush/sdk/MiPushClient;->b:Landroid/content/Context;

    return-object v0
.end method

.method protected static b(Landroid/content/Context;)V
    .locals 5

    const-string v0, "mipush_extra"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "wake_up"

    const-wide/16 v1, 0x0

    invoke-interface {p0, v0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    cmp-long v0, v3, v1

    if-lez v0, :cond_0

    const-string v0, "wake_up"

    invoke-interface {p0, v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    :cond_0
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method static declared-synchronized b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    const-class v0, Lcom/xiaomi/mipush/sdk/MiPushClient;

    monitor-enter v0

    :try_start_0
    const-string v1, "mipush_extra"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "alias_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method static declared-synchronized b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-class v0, Lcom/xiaomi/mipush/sdk/MiPushClient;

    monitor-enter v0

    :try_start_0
    const-string v1, "mipush_extra"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v1, "accept_time"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static c()V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/xiaomi/mipush/sdk/g;

    invoke-direct {v1}, Lcom/xiaomi/mipush/sdk/g;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method static c(Landroid/content/Context;)V
    .locals 5

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/e;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/mipush/sdk/e;->i()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/xiaomi/a/a/e/c;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/e;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/mipush/sdk/e;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/e;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/e;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaomi/mipush/sdk/e;->d()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/e;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/e;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xiaomi/mipush/sdk/e;->h()V

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/e;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/e;

    move-result-object v3

    invoke-virtual {v3, v1, v2, v0}, Lcom/xiaomi/mipush/sdk/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lcom/xiaomi/xmpush/thrift/j;

    invoke-direct {v3}, Lcom/xiaomi/xmpush/thrift/j;-><init>()V

    invoke-static {}, Lcom/xiaomi/mipush/sdk/MiPushClient;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/xiaomi/xmpush/thrift/j;->a(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/j;

    invoke-virtual {v3, v1}, Lcom/xiaomi/xmpush/thrift/j;->b(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/j;

    invoke-virtual {v3, v2}, Lcom/xiaomi/xmpush/thrift/j;->e(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/j;

    invoke-virtual {v3, v0}, Lcom/xiaomi/xmpush/thrift/j;->f(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/j;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/xiaomi/xmpush/thrift/j;->d(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/j;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/xiaomi/mipush/sdk/e;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/xiaomi/xmpush/thrift/j;->c(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/j;

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/k;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/k;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v3, v0}, Lcom/xiaomi/mipush/sdk/k;->a(Lcom/xiaomi/xmpush/thrift/j;Z)V

    return-void
.end method

.method static declared-synchronized c(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    const-class v0, Lcom/xiaomi/mipush/sdk/MiPushClient;

    monitor-enter v0

    :try_start_0
    const-string v1, "mipush_extra"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "account_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-interface {p0, p1, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static d(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/k;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/k;

    move-result-object p0

    invoke-virtual {p0}, Lcom/xiaomi/mipush/sdk/k;->e()V

    return-void
.end method

.method static declared-synchronized d(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    const-class v0, Lcom/xiaomi/mipush/sdk/MiPushClient;

    monitor-enter v0

    :try_start_0
    const-string v1, "mipush_extra"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "account_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static e(Landroid/content/Context;)V
    .locals 2

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/e;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/mipush/sdk/e;->b()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/xiaomi/xmpush/thrift/q;

    invoke-direct {v0}, Lcom/xiaomi/xmpush/thrift/q;-><init>()V

    invoke-static {}, Lcom/xiaomi/mipush/sdk/MiPushClient;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/xmpush/thrift/q;->a(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/q;

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/e;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/mipush/sdk/e;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/xmpush/thrift/q;->b(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/q;

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/e;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/mipush/sdk/e;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/xmpush/thrift/q;->c(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/q;

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/e;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/mipush/sdk/e;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/xmpush/thrift/q;->e(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/q;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/xmpush/thrift/q;->d(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/q;

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/k;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/k;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaomi/mipush/sdk/k;->a(Lcom/xiaomi/xmpush/thrift/q;)V

    invoke-static {}, Lcom/xiaomi/mipush/sdk/PushMessageHandler;->a()V

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/e;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/mipush/sdk/e;->k()V

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/MiPushClient;->b(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/MiPushClient;->d(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/MiPushClient;->f(Landroid/content/Context;)V

    return-void
.end method

.method static declared-synchronized e(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    const-class v0, Lcom/xiaomi/mipush/sdk/MiPushClient;

    monitor-enter v0

    :try_start_0
    const-string v1, "mipush_extra"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "topic_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-interface {p0, p1, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static f(Landroid/content/Context;)V
    .locals 1

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/k;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/k;

    move-result-object p0

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/xiaomi/mipush/sdk/k;->a(I)V

    return-void
.end method

.method static declared-synchronized f(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    const-class v0, Lcom/xiaomi/mipush/sdk/MiPushClient;

    monitor-enter v0

    :try_start_0
    const-string v1, "mipush_extra"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "topic_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static g(Landroid/content/Context;Ljava/lang/String;)J
    .locals 2

    const-string v0, "mipush_extra"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "topic_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-wide/16 v0, -0x1

    invoke-interface {p0, p1, v0, v1}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p0

    return-wide p0
.end method

.method private static g(Landroid/content/Context;)V
    .locals 7

    const-string v0, "mipush_extra"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/32 v3, 0x927c0

    sub-long v5, v1, v3

    const-string v1, "wake_up"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    cmp-long v3, v5, v1

    if-gez v3, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "wake_up"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/xiaomi/mipush/sdk/h;

    invoke-direct {v1, p0}, Lcom/xiaomi/mipush/sdk/h;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static h(Landroid/content/Context;Ljava/lang/String;)J
    .locals 2

    const-string v0, "mipush_extra"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "alias_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-wide/16 v0, -0x1

    invoke-interface {p0, p1, v0, v1}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p0

    return-wide p0
.end method

.method private static h(Landroid/content/Context;)V
    .locals 3

    const-string v0, "mipush_extra"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "last_pull_notification"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-interface {p0, v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private static i(Landroid/content/Context;)Z
    .locals 8

    const-string v0, "mipush_extra"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v0, "last_pull_notification"

    const-wide/16 v4, -0x1

    invoke-interface {p0, v0, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    sub-long v6, v2, v4

    const-wide/32 v2, 0x493e0

    cmp-long p0, v6, v2

    if-lez p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private static j(Landroid/content/Context;)V
    .locals 3

    const-string v0, "mipush_extra"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "last_reg_request"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-interface {p0, v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private static k(Landroid/content/Context;)Z
    .locals 8

    const-string v0, "mipush_extra"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v0, "last_reg_request"

    const-wide/16 v4, -0x1

    invoke-interface {p0, v0, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    sub-long v6, v2, v4

    const-wide/16 v2, 0x1388

    cmp-long p0, v6, v2

    if-lez p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method
