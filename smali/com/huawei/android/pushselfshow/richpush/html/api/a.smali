.class public Lcom/huawei/android/pushselfshow/richpush/html/api/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/android/pushselfshow/richpush/html/api/a$a;,
        Lcom/huawei/android/pushselfshow/richpush/html/api/a$b;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/LinkedList;

.field private final b:Lcom/huawei/android/pushselfshow/richpush/html/api/a$a;


# virtual methods
.method public a(Ljava/lang/String;Lcom/huawei/android/pushselfshow/richpush/html/api/d$a;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 4

    :try_start_0
    const-string v0, "PushSelfShowLog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addPluginResult status is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/huawei/android/pushselfshow/richpush/html/api/d;->a()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/huawei/android/pushselfshow/richpush/html/api/d$a;->ordinal()I

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/android/a/a/a/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    const-string p1, "JsMessageQueue"

    const-string p2, "Got plugin result with no callbackId"

    invoke-static {p1, p2}, Lcom/huawei/android/a/a/a/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    if-nez p4, :cond_1

    new-instance p4, Lcom/huawei/android/pushselfshow/richpush/html/api/d;

    invoke-direct {p4, p3, p2}, Lcom/huawei/android/pushselfshow/richpush/html/api/d;-><init>(Ljava/lang/String;Lcom/huawei/android/pushselfshow/richpush/html/api/d$a;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/huawei/android/pushselfshow/richpush/html/api/d;

    invoke-direct {v0, p3, p2, p4}, Lcom/huawei/android/pushselfshow/richpush/html/api/d;-><init>(Ljava/lang/String;Lcom/huawei/android/pushselfshow/richpush/html/api/d$a;Lorg/json/JSONObject;)V

    move-object p4, v0

    :goto_0
    new-instance p2, Lcom/huawei/android/pushselfshow/richpush/html/api/a$b;

    invoke-direct {p2, p4, p1}, Lcom/huawei/android/pushselfshow/richpush/html/api/a$b;-><init>(Lcom/huawei/android/pushselfshow/richpush/html/api/d;Ljava/lang/String;)V

    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object p1, p0, Lcom/huawei/android/pushselfshow/richpush/html/api/a;->a:Ljava/util/LinkedList;

    invoke-virtual {p1, p2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/huawei/android/pushselfshow/richpush/html/api/a;->b:Lcom/huawei/android/pushselfshow/richpush/html/api/a$a;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/huawei/android/pushselfshow/richpush/html/api/a;->b:Lcom/huawei/android/pushselfshow/richpush/html/api/a$a;

    invoke-interface {p1}, Lcom/huawei/android/pushselfshow/richpush/html/api/a$a;->a()V

    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p1

    const-string p2, "PushSelfShowLog"

    const-string p3, "addPluginResult failed"

    invoke-static {p2, p3, p1}, Lcom/huawei/android/a/a/a/c;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
