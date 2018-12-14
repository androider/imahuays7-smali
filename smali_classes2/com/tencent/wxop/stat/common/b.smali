.class public Lcom/tencent/wxop/stat/common/b;
.super Ljava/lang/Object;


# static fields
.field static a:Lcom/tencent/wxop/stat/common/d;

.field private static d:Lcom/tencent/wxop/stat/common/StatLogger;

.field private static e:Lorg/json/JSONObject;


# instance fields
.field b:Ljava/lang/Integer;

.field c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/tencent/wxop/stat/common/l;->b()Lcom/tencent/wxop/stat/common/StatLogger;

    move-result-object v0

    sput-object v0, Lcom/tencent/wxop/stat/common/b;->d:Lcom/tencent/wxop/stat/common/StatLogger;

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    sput-object v0, Lcom/tencent/wxop/stat/common/b;->e:Lorg/json/JSONObject;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/wxop/stat/common/b;->b:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/tencent/wxop/stat/common/b;->c:Ljava/lang/String;

    :try_start_0
    invoke-static {p1}, Lcom/tencent/wxop/stat/common/b;->a(Landroid/content/Context;)Lcom/tencent/wxop/stat/common/d;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/wxop/stat/common/l;->k(Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/wxop/stat/common/b;->b:Ljava/lang/Integer;

    invoke-static {p1}, Lcom/tencent/wxop/stat/a;->a(Landroid/content/Context;)Lcom/tencent/wxop/stat/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tencent/wxop/stat/a;->b()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/wxop/stat/common/b;->c:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    sget-object v0, Lcom/tencent/wxop/stat/common/b;->d:Lcom/tencent/wxop/stat/common/StatLogger;

    invoke-virtual {v0, p1}, Lcom/tencent/wxop/stat/common/StatLogger;->e(Ljava/lang/Throwable;)V

    return-void
.end method

.method static declared-synchronized a(Landroid/content/Context;)Lcom/tencent/wxop/stat/common/d;
    .locals 3

    const-class v0, Lcom/tencent/wxop/stat/common/b;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/tencent/wxop/stat/common/b;->a:Lcom/tencent/wxop/stat/common/d;

    if-nez v1, :cond_0

    new-instance v1, Lcom/tencent/wxop/stat/common/d;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/tencent/wxop/stat/common/d;-><init>(Landroid/content/Context;Lcom/tencent/wxop/stat/common/c;)V

    sput-object v1, Lcom/tencent/wxop/stat/common/b;->a:Lcom/tencent/wxop/stat/common/d;

    :cond_0
    sget-object p0, Lcom/tencent/wxop/stat/common/b;->a:Lcom/tencent/wxop/stat/common/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static a(Landroid/content/Context;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    sget-object v0, Lcom/tencent/wxop/stat/common/b;->e:Lorg/json/JSONObject;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;Ljava/lang/Thread;)V
    .locals 3

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    sget-object v1, Lcom/tencent/wxop/stat/common/b;->a:Lcom/tencent/wxop/stat/common/d;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/tencent/wxop/stat/common/b;->a:Lcom/tencent/wxop/stat/common/d;

    invoke-virtual {v1, v0, p2}, Lcom/tencent/wxop/stat/common/d;->a(Lorg/json/JSONObject;Ljava/lang/Thread;)V

    :cond_0
    const-string v1, "cn"

    iget-object v2, p0, Lcom/tencent/wxop/stat/common/b;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/tencent/wxop/stat/common/r;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/wxop/stat/common/b;->b:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    const-string v1, "tn"

    iget-object v2, p0, Lcom/tencent/wxop/stat/common/b;->b:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    if-nez p2, :cond_2

    const-string p2, "ev"

    :goto_0
    invoke-virtual {p1, p2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    :cond_2
    const-string p2, "errkv"

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :goto_1
    sget-object p2, Lcom/tencent/wxop/stat/common/b;->e:Lorg/json/JSONObject;

    if-eqz p2, :cond_3

    sget-object p2, Lcom/tencent/wxop/stat/common/b;->e:Lorg/json/JSONObject;

    invoke-virtual {p2}, Lorg/json/JSONObject;->length()I

    move-result p2

    if-lez p2, :cond_3

    const-string p2, "eva"

    sget-object v0, Lcom/tencent/wxop/stat/common/b;->e:Lorg/json/JSONObject;

    invoke-virtual {p1, p2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    return-void

    :catch_0
    move-exception p1

    sget-object p2, Lcom/tencent/wxop/stat/common/b;->d:Lcom/tencent/wxop/stat/common/StatLogger;

    invoke-virtual {p2, p1}, Lcom/tencent/wxop/stat/common/StatLogger;->e(Ljava/lang/Throwable;)V

    return-void
.end method
