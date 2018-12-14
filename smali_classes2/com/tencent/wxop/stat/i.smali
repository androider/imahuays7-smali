.class Lcom/tencent/wxop/stat/i;
.super Ljava/lang/Object;


# static fields
.field private static d:Lcom/tencent/wxop/stat/common/StatLogger;

.field private static e:Lcom/tencent/wxop/stat/i;

.field private static f:Landroid/content/Context;


# instance fields
.field a:Lorg/apache/http/impl/client/DefaultHttpClient;

.field b:Lcom/tencent/wxop/stat/common/e;

.field c:Ljava/lang/StringBuilder;

.field private g:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/tencent/wxop/stat/common/l;->b()Lcom/tencent/wxop/stat/common/StatLogger;

    move-result-object v0

    sput-object v0, Lcom/tencent/wxop/stat/i;->d:Lcom/tencent/wxop/stat/common/StatLogger;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/wxop/stat/i;->a:Lorg/apache/http/impl/client/DefaultHttpClient;

    iput-object v0, p0, Lcom/tencent/wxop/stat/i;->b:Lcom/tencent/wxop/stat/common/e;

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x1000

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/tencent/wxop/stat/i;->c:Ljava/lang/StringBuilder;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/wxop/stat/i;->g:J

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    sput-object p1, Lcom/tencent/wxop/stat/i;->f:Landroid/content/Context;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/tencent/wxop/stat/i;->g:J

    new-instance p1, Lcom/tencent/wxop/stat/common/e;

    invoke-direct {p1}, Lcom/tencent/wxop/stat/common/e;-><init>()V

    iput-object p1, p0, Lcom/tencent/wxop/stat/i;->b:Lcom/tencent/wxop/stat/common/e;

    invoke-static {}, Lcom/tencent/wxop/stat/StatConfig;->isDebugEnable()Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz p1, :cond_0

    :try_start_1
    const-string p1, "org.apache.http.wire"

    invoke-static {p1}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object p1

    sget-object v0, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->setLevel(Ljava/util/logging/Level;)V

    const-string p1, "org.apache.http.headers"

    invoke-static {p1}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object p1

    sget-object v0, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->setLevel(Ljava/util/logging/Level;)V

    const-string p1, "org.apache.commons.logging.Log"

    const-string v0, "org.apache.commons.logging.impl.SimpleLog"

    invoke-static {p1, v0}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string p1, "org.apache.commons.logging.simplelog.showdatetime"

    const-string v0, "true"

    invoke-static {p1, v0}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string p1, "org.apache.commons.logging.simplelog.log.httpclient.wire"

    const-string v0, "debug"

    invoke-static {p1, v0}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string p1, "org.apache.commons.logging.simplelog.log.org.apache.http"

    const-string v0, "debug"

    invoke-static {p1, v0}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string p1, "org.apache.commons.logging.simplelog.log.org.apache.http.headers"

    const-string v0, "debug"

    invoke-static {p1, v0}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_0
    :try_start_2
    new-instance p1, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {p1}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/apache/http/params/HttpConnectionParams;->setStaleCheckingEnabled(Lorg/apache/http/params/HttpParams;Z)V

    const/16 v0, 0x2710

    invoke-static {p1, v0}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    invoke-static {p1, v0}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0, p1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    iput-object v0, p0, Lcom/tencent/wxop/stat/i;->a:Lorg/apache/http/impl/client/DefaultHttpClient;

    iget-object p1, p0, Lcom/tencent/wxop/stat/i;->a:Lorg/apache/http/impl/client/DefaultHttpClient;

    new-instance v0, Lcom/tencent/wxop/stat/j;

    invoke-direct {v0, p0}, Lcom/tencent/wxop/stat/j;-><init>(Lcom/tencent/wxop/stat/i;)V

    invoke-virtual {p1, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->setKeepAliveStrategy(Lorg/apache/http/conn/ConnectionKeepAliveStrategy;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    return-void

    :catch_1
    move-exception p1

    sget-object v0, Lcom/tencent/wxop/stat/i;->d:Lcom/tencent/wxop/stat/common/StatLogger;

    invoke-virtual {v0, p1}, Lcom/tencent/wxop/stat/common/StatLogger;->e(Ljava/lang/Throwable;)V

    return-void
.end method

.method static a()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/tencent/wxop/stat/i;->f:Landroid/content/Context;

    return-object v0
.end method

.method static a(Landroid/content/Context;)V
    .locals 0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sput-object p0, Lcom/tencent/wxop/stat/i;->f:Landroid/content/Context;

    return-void
.end method

.method private a(Lorg/json/JSONObject;)V
    .locals 6

    :try_start_0
    const-string v0, "mid"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/a/a/a/a/h;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/tencent/wxop/stat/StatConfig;->isDebugEnable()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/tencent/wxop/stat/i;->d:Lcom/tencent/wxop/stat/common/StatLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "update mid:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/wxop/stat/common/StatLogger;->i(Ljava/lang/Object;)V

    :cond_0
    sget-object v1, Lcom/tencent/wxop/stat/i;->f:Landroid/content/Context;

    invoke-static {v1}, Lcom/tencent/a/a/a/a/g;->C(Landroid/content/Context;)Lcom/tencent/a/a/a/a/g;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/a/a/a/a/g;->a(Ljava/lang/String;)V

    :cond_1
    const-string v0, "cfg"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "cfg"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    sget-object v1, Lcom/tencent/wxop/stat/i;->f:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/tencent/wxop/stat/StatConfig;->a(Landroid/content/Context;Lorg/json/JSONObject;)V

    :cond_2
    const-string v0, "ncts"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "ncts"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    int-to-long v0, p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    const/4 v4, 0x0

    sub-long v4, v0, v2

    long-to-int v0, v4

    invoke-static {}, Lcom/tencent/wxop/stat/StatConfig;->isDebugEnable()Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Lcom/tencent/wxop/stat/i;->d:Lcom/tencent/wxop/stat/common/StatLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "server time:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", diff time:"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/tencent/wxop/stat/common/StatLogger;->i(Ljava/lang/Object;)V

    :cond_3
    sget-object p1, Lcom/tencent/wxop/stat/i;->f:Landroid/content/Context;

    invoke-static {p1}, Lcom/tencent/wxop/stat/common/l;->x(Landroid/content/Context;)V

    sget-object p1, Lcom/tencent/wxop/stat/i;->f:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/tencent/wxop/stat/common/l;->a(Landroid/content/Context;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    return-void

    :catch_0
    move-exception p1

    sget-object v0, Lcom/tencent/wxop/stat/i;->d:Lcom/tencent/wxop/stat/common/StatLogger;

    invoke-virtual {v0, p1}, Lcom/tencent/wxop/stat/common/StatLogger;->w(Ljava/lang/Object;)V

    return-void
.end method

.method static b(Landroid/content/Context;)Lcom/tencent/wxop/stat/i;
    .locals 2

    sget-object v0, Lcom/tencent/wxop/stat/i;->e:Lcom/tencent/wxop/stat/i;

    if-nez v0, :cond_1

    const-class v0, Lcom/tencent/wxop/stat/i;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/tencent/wxop/stat/i;->e:Lcom/tencent/wxop/stat/i;

    if-nez v1, :cond_0

    new-instance v1, Lcom/tencent/wxop/stat/i;

    invoke-direct {v1, p0}, Lcom/tencent/wxop/stat/i;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/tencent/wxop/stat/i;->e:Lcom/tencent/wxop/stat/i;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    sget-object p0, Lcom/tencent/wxop/stat/i;->e:Lcom/tencent/wxop/stat/i;

    return-object p0
.end method


# virtual methods
.method a(Lcom/tencent/wxop/stat/event/e;Lcom/tencent/wxop/stat/h;)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {p1}, Lcom/tencent/wxop/stat/event/e;->g()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/tencent/wxop/stat/i;->b(Ljava/util/List;Lcom/tencent/wxop/stat/h;)V

    return-void
.end method

.method a(Ljava/util/List;Lcom/tencent/wxop/stat/h;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;",
            "Lcom/tencent/wxop/stat/h;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_17

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/tencent/wxop/stat/i;->c:Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/tencent/wxop/stat/i;->c:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    invoke-virtual {v3, v1, v4}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/tencent/wxop/stat/i;->c:Ljava/lang/StringBuilder;

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "rc4"

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v0, :cond_2

    iget-object v5, p0, Lcom/tencent/wxop/stat/i;->c:Ljava/lang/StringBuilder;

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v0, -0x1

    if-eq v4, v5, :cond_1

    iget-object v5, p0, Lcom/tencent/wxop/stat/i;->c:Ljava/lang/StringBuilder;

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/tencent/wxop/stat/i;->c:Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/tencent/wxop/stat/i;->c:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tencent/wxop/stat/StatConfig;->getStatReportUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/?index="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Lcom/tencent/wxop/stat/i;->g:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-wide v5, p0, Lcom/tencent/wxop/stat/i;->g:J

    const-wide/16 v7, 0x1

    add-long v9, v5, v7

    iput-wide v9, p0, Lcom/tencent/wxop/stat/i;->g:J

    invoke-static {}, Lcom/tencent/wxop/stat/StatConfig;->isDebugEnable()Z

    move-result v5

    if-eqz v5, :cond_3

    sget-object v5, Lcom/tencent/wxop/stat/i;->d:Lcom/tencent/wxop/stat/common/StatLogger;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "["

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "]Send request("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "bytes), content:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/tencent/wxop/stat/common/StatLogger;->i(Ljava/lang/Object;)V

    :cond_3
    new-instance v5, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v5, v4}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    const-string v4, "Accept-Encoding"

    const-string v6, "gzip"

    invoke-virtual {v5, v4, v6}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "Connection"

    const-string v6, "Keep-Alive"

    invoke-virtual {v5, v4, v6}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "Cache-Control"

    invoke-virtual {v5, v4}, Lorg/apache/http/client/methods/HttpPost;->removeHeaders(Ljava/lang/String;)V

    sget-object v4, Lcom/tencent/wxop/stat/i;->f:Landroid/content/Context;

    invoke-static {v4}, Lcom/tencent/wxop/stat/a;->a(Landroid/content/Context;)Lcom/tencent/wxop/stat/a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tencent/wxop/stat/a;->a()Lorg/apache/http/HttpHost;

    move-result-object v4

    const-string v6, "Content-Encoding"

    invoke-virtual {v5, v6, v3}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v4, :cond_4

    iget-object v6, p0, Lcom/tencent/wxop/stat/i;->a:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v6}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v6

    const-string v7, "http.route.default-proxy"

    invoke-interface {v6, v7}, Lorg/apache/http/params/HttpParams;->removeParameter(Ljava/lang/String;)Z

    goto :goto_1

    :cond_4
    invoke-static {}, Lcom/tencent/wxop/stat/StatConfig;->isDebugEnable()Z

    move-result v6

    if-eqz v6, :cond_5

    sget-object v6, Lcom/tencent/wxop/stat/i;->d:Lcom/tencent/wxop/stat/common/StatLogger;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "proxy:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lorg/apache/http/HttpHost;->toHostString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/tencent/wxop/stat/common/StatLogger;->d(Ljava/lang/Object;)V

    :cond_5
    const-string v6, "X-Content-Encoding"

    invoke-virtual {v5, v6, v3}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/tencent/wxop/stat/i;->a:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v6}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v6

    const-string v7, "http.route.default-proxy"

    invoke-interface {v6, v7, v4}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    const-string v6, "X-Online-Host"

    sget-object v7, Lcom/tencent/wxop/stat/StatConfig;->k:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "Accept"

    const-string v7, "*/*"

    invoke-virtual {v5, v6, v7}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "Content-Type"

    const-string v7, "json"

    invoke-virtual {v5, v6, v7}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    const-string v7, "UTF-8"

    invoke-virtual {p1, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    array-length v7, p1

    sget v8, Lcom/tencent/wxop/stat/StatConfig;->o:I

    if-le v0, v8, :cond_6

    const/4 v0, 0x1

    goto :goto_2

    :cond_6
    const/4 v0, 0x0

    :goto_2
    if-eqz v0, :cond_8

    const-string v0, "Content-Encoding"

    invoke-virtual {v5, v0}, Lorg/apache/http/client/methods/HttpPost;->removeHeaders(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",gzip"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "Content-Encoding"

    invoke-virtual {v5, v3, v0}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v4, :cond_7

    const-string v3, "X-Content-Encoding"

    invoke-virtual {v5, v3}, Lorg/apache/http/client/methods/HttpPost;->removeHeaders(Ljava/lang/String;)V

    const-string v3, "X-Content-Encoding"

    invoke-virtual {v5, v3, v0}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    const/4 v0, 0x4

    new-array v3, v0, [B

    invoke-virtual {v6, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    new-instance v3, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v3, v6}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v3, p1}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    invoke-virtual {v3}, Ljava/util/zip/GZIPOutputStream;->close()V

    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    invoke-static {p1, v1, v0}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-static {}, Lcom/tencent/wxop/stat/StatConfig;->isDebugEnable()Z

    move-result v0

    if-eqz v0, :cond_8

    sget-object v0, Lcom/tencent/wxop/stat/i;->d:Lcom/tencent/wxop/stat/common/StatLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "before Gzip:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " bytes, after Gzip:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, p1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " bytes"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/wxop/stat/common/StatLogger;->d(Ljava/lang/Object;)V

    :cond_8
    invoke-static {p1}, Lcom/tencent/wxop/stat/common/f;->a([B)[B

    move-result-object p1

    new-instance v0, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-direct {v0, p1}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    invoke-virtual {v5, v0}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    iget-object p1, p0, Lcom/tencent/wxop/stat/i;->a:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {p1, v5}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object p1

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v3

    invoke-static {}, Lcom/tencent/wxop/stat/StatConfig;->isDebugEnable()Z

    move-result v5

    if-eqz v5, :cond_9

    sget-object v5, Lcom/tencent/wxop/stat/i;->d:Lcom/tencent/wxop/stat/common/StatLogger;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "http recv response status code:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", content length:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/tencent/wxop/stat/common/StatLogger;->i(Ljava/lang/Object;)V

    :cond_9
    const-wide/16 v7, 0x0

    cmp-long v5, v3, v7

    if-gtz v5, :cond_b

    sget-object p1, Lcom/tencent/wxop/stat/i;->d:Lcom/tencent/wxop/stat/common/StatLogger;

    const-string v1, "Server response no data."

    invoke-virtual {p1, v1}, Lcom/tencent/wxop/stat/common/StatLogger;->e(Ljava/lang/Object;)V

    if-eqz p2, :cond_a

    invoke-interface {p2}, Lcom/tencent/wxop/stat/h;->b()V

    :cond_a
    invoke-static {v0}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    return-void

    :cond_b
    cmp-long v5, v3, v7

    if-lez v5, :cond_14

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v3

    new-instance v4, Ljava/io/DataInputStream;

    invoke-direct {v4, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v7

    long-to-int v0, v7

    new-array v0, v0, [B

    invoke-virtual {v4, v0}, Ljava/io/DataInputStream;->readFully([B)V

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    invoke-virtual {v4}, Ljava/io/DataInputStream;->close()V

    const-string v4, "Content-Encoding"

    invoke-interface {p1, v4}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object p1

    if-eqz p1, :cond_f

    invoke-interface {p1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v4

    const-string v5, "gzip,rc4"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-static {v0}, Lcom/tencent/wxop/stat/common/l;->a([B)[B

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/wxop/stat/common/f;->b([B)[B

    move-result-object v0

    goto :goto_3

    :cond_c
    invoke-interface {p1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v4

    const-string v5, "rc4,gzip"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-static {v0}, Lcom/tencent/wxop/stat/common/f;->b([B)[B

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/wxop/stat/common/l;->a([B)[B

    move-result-object v0

    goto :goto_3

    :cond_d
    invoke-interface {p1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v4

    const-string v5, "gzip"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-static {v0}, Lcom/tencent/wxop/stat/common/l;->a([B)[B

    move-result-object v0

    goto :goto_3

    :cond_e
    invoke-interface {p1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object p1

    const-string v4, "rc4"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_f

    invoke-static {v0}, Lcom/tencent/wxop/stat/common/f;->b([B)[B

    move-result-object v0

    :cond_f
    :goto_3
    new-instance p1, Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-direct {p1, v0, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-static {}, Lcom/tencent/wxop/stat/StatConfig;->isDebugEnable()Z

    move-result v4

    if-eqz v4, :cond_10

    sget-object v4, Lcom/tencent/wxop/stat/i;->d:Lcom/tencent/wxop/stat/common/StatLogger;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "http get response data:"

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/tencent/wxop/stat/common/StatLogger;->i(Ljava/lang/Object;)V

    :cond_10
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const/16 p1, 0xc8

    if-ne v1, p1, :cond_12

    invoke-direct {p0, v4}, Lcom/tencent/wxop/stat/i;->a(Lorg/json/JSONObject;)V

    if-eqz p2, :cond_13

    const-string p1, "ret"

    invoke-virtual {v4, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_11

    invoke-interface {p2}, Lcom/tencent/wxop/stat/h;->a()V

    goto :goto_5

    :cond_11
    sget-object p1, Lcom/tencent/wxop/stat/i;->d:Lcom/tencent/wxop/stat/common/StatLogger;

    const-string v0, "response error data."

    invoke-virtual {p1, v0}, Lcom/tencent/wxop/stat/common/StatLogger;->error(Ljava/lang/Object;)V

    :goto_4
    invoke-interface {p2}, Lcom/tencent/wxop/stat/h;->b()V

    goto :goto_5

    :cond_12
    sget-object p1, Lcom/tencent/wxop/stat/i;->d:Lcom/tencent/wxop/stat/common/StatLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Server response error code:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", error:"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/String;

    const-string v5, "UTF-8"

    invoke-direct {v1, v0, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/tencent/wxop/stat/common/StatLogger;->error(Ljava/lang/Object;)V

    if-eqz p2, :cond_13

    goto :goto_4

    :cond_13
    :goto_5
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    goto :goto_6

    :cond_14
    invoke-static {v0}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    :goto_6
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object p1, v2

    goto :goto_7

    :catchall_0
    move-exception p1

    throw p1

    :catch_0
    move-exception p1

    :goto_7
    if-eqz p1, :cond_17

    sget-object v0, Lcom/tencent/wxop/stat/i;->d:Lcom/tencent/wxop/stat/common/StatLogger;

    invoke-virtual {v0, p1}, Lcom/tencent/wxop/stat/common/StatLogger;->error(Ljava/lang/Throwable;)V

    if-eqz p2, :cond_15

    :try_start_1
    invoke-interface {p2}, Lcom/tencent/wxop/stat/h;->b()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_8

    :catch_1
    move-exception p2

    sget-object v0, Lcom/tencent/wxop/stat/i;->d:Lcom/tencent/wxop/stat/common/StatLogger;

    invoke-virtual {v0, p2}, Lcom/tencent/wxop/stat/common/StatLogger;->e(Ljava/lang/Throwable;)V

    :cond_15
    :goto_8
    instance-of p1, p1, Ljava/lang/OutOfMemoryError;

    if-eqz p1, :cond_16

    invoke-static {}, Ljava/lang/System;->gc()V

    iput-object v2, p0, Lcom/tencent/wxop/stat/i;->c:Ljava/lang/StringBuilder;

    new-instance p1, Ljava/lang/StringBuilder;

    const/16 p2, 0x800

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object p1, p0, Lcom/tencent/wxop/stat/i;->c:Ljava/lang/StringBuilder;

    :cond_16
    sget-object p1, Lcom/tencent/wxop/stat/i;->f:Landroid/content/Context;

    invoke-static {p1}, Lcom/tencent/wxop/stat/a;->a(Landroid/content/Context;)Lcom/tencent/wxop/stat/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tencent/wxop/stat/a;->d()V

    :cond_17
    return-void
.end method

.method b(Ljava/util/List;Lcom/tencent/wxop/stat/h;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;",
            "Lcom/tencent/wxop/stat/h;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/wxop/stat/i;->b:Lcom/tencent/wxop/stat/common/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/wxop/stat/i;->b:Lcom/tencent/wxop/stat/common/e;

    new-instance v1, Lcom/tencent/wxop/stat/k;

    invoke-direct {v1, p0, p1, p2}, Lcom/tencent/wxop/stat/k;-><init>(Lcom/tencent/wxop/stat/i;Ljava/util/List;Lcom/tencent/wxop/stat/h;)V

    invoke-virtual {v0, v1}, Lcom/tencent/wxop/stat/common/e;->a(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
