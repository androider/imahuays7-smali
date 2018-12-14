.class public final Lcom/flurry/sdk/j;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static b:Lcom/flurry/sdk/j;


# instance fields
.field public a:Lcom/flurry/sdk/e;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    invoke-static {}, Lcom/flurry/sdk/e;->a()Lcom/flurry/sdk/e;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/j;->a:Lcom/flurry/sdk/e;

    return-void
.end method

.method public static declared-synchronized a()Lcom/flurry/sdk/j;
    .locals 3

    const-class v0, Lcom/flurry/sdk/j;

    monitor-enter v0

    .line 25
    :try_start_0
    sget-object v1, Lcom/flurry/sdk/j;->b:Lcom/flurry/sdk/j;

    if-nez v1, :cond_1

    .line 26
    invoke-static {}, Lcom/flurry/sdk/cl;->a()Lcom/flurry/sdk/cl;

    move-result-object v1

    if-nez v1, :cond_0

    .line 27
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Flurry SDK must be initialized before starting config"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 31
    :cond_0
    new-instance v1, Lcom/flurry/sdk/j;

    invoke-direct {v1}, Lcom/flurry/sdk/j;-><init>()V

    sput-object v1, Lcom/flurry/sdk/j;->b:Lcom/flurry/sdk/j;

    .line 33
    :cond_1
    sget-object v1, Lcom/flurry/sdk/j;->b:Lcom/flurry/sdk/j;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 24
    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;Lcom/flurry/sdk/k;)Ljava/lang/String;
    .locals 3

    .line 107
    iget-object v0, p0, Lcom/flurry/sdk/j;->a:Lcom/flurry/sdk/e;

    invoke-virtual {v0}, Lcom/flurry/sdk/e;->c()Lcom/flurry/sdk/b;

    move-result-object v0

    .line 1060
    iget-object v1, v0, Lcom/flurry/sdk/b;->b:Lcom/flurry/sdk/n;

    const/4 v2, 0x0

    if-nez p3, :cond_1

    .line 1412
    iget-object p3, v1, Lcom/flurry/sdk/n;->c:Ljava/util/Map;

    invoke-interface {p3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 1413
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/flurry/sdk/d;

    if-eqz v1, :cond_0

    move-object p3, v1

    goto :goto_0

    .line 1419
    :cond_1
    iget-object v1, v1, Lcom/flurry/sdk/n;->c:Ljava/util/Map;

    invoke-interface {v1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map;

    if-eqz p3, :cond_2

    .line 1421
    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/flurry/sdk/d;

    goto :goto_0

    :cond_2
    move-object p3, v2

    :goto_0
    if-nez p3, :cond_4

    .line 1062
    iget-object p3, v0, Lcom/flurry/sdk/b;->a:Lcom/flurry/sdk/i;

    .line 2075
    iget-object v0, p3, Lcom/flurry/sdk/i;->a:Lcom/flurry/sdk/m;

    if-nez v0, :cond_3

    move-object p3, v2

    goto :goto_1

    .line 2079
    :cond_3
    iget-object p3, p3, Lcom/flurry/sdk/i;->a:Lcom/flurry/sdk/m;

    .line 3074
    iget-object p3, p3, Lcom/flurry/sdk/m;->e:Ljava/util/Map;

    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/flurry/sdk/d;

    move-object p3, p1

    :cond_4
    :goto_1
    if-eqz p3, :cond_a

    .line 3083
    iget-object p1, p3, Lcom/flurry/sdk/d;->d:Ljava/lang/Object;

    if-nez p1, :cond_5

    return-object v2

    .line 3087
    :cond_5
    iget-object p1, p3, Lcom/flurry/sdk/d;->c:Lcom/flurry/sdk/d$a;

    sget-object p2, Lcom/flurry/sdk/d$a;->b:Lcom/flurry/sdk/d$a;

    if-ne p1, p2, :cond_9

    .line 3088
    sget-object p1, Lcom/flurry/sdk/d;->a:Ljava/lang/String;

    if-nez p1, :cond_6

    .line 3089
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/flurry/sdk/d;->a:Ljava/lang/String;

    .line 3090
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/flurry/sdk/d;->b:Ljava/lang/String;

    .line 3092
    :cond_6
    iget-object p1, p3, Lcom/flurry/sdk/d;->d:Ljava/lang/Object;

    check-cast p1, Lorg/json/JSONObject;

    .line 3093
    sget-object p2, Lcom/flurry/sdk/d;->a:Ljava/lang/String;

    invoke-virtual {p1, p2, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_7

    .line 3095
    sget-object p2, Lcom/flurry/sdk/d;->b:Ljava/lang/String;

    invoke-virtual {p1, p2, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :cond_7
    if-nez p2, :cond_8

    const-string p2, "default"

    .line 3098
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :cond_8
    return-object p2

    .line 3103
    :cond_9
    iget-object p1, p3, Lcom/flurry/sdk/d;->d:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_a
    return-object p2
.end method
