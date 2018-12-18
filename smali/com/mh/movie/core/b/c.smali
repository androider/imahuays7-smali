.class public Lcom/mh/movie/core/b/c;
.super Ljava/lang/Object;
.source "HttpUtil.java"


# static fields
.field private static c:Lcom/mh/movie/core/b/c;


# instance fields
.field public a:Lokhttp3/OkHttpClient;

.field private b:Lokhttp3/OkHttpClient;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 156
    invoke-static {}, Lcom/mh/movie/core/b/c;->c()Lokhttp3/OkHttpClient;

    move-result-object v0

    iput-object v0, p0, Lcom/mh/movie/core/b/c;->b:Lokhttp3/OkHttpClient;

    .line 157
    invoke-static {}, Lcom/mh/movie/core/b/c;->b()Lokhttp3/OkHttpClient;

    move-result-object v0

    iput-object v0, p0, Lcom/mh/movie/core/b/c;->a:Lokhttp3/OkHttpClient;

    return-void
.end method

.method public static a()Lcom/mh/movie/core/b/c;
    .locals 2

    .line 142
    sget-object v0, Lcom/mh/movie/core/b/c;->c:Lcom/mh/movie/core/b/c;

    if-nez v0, :cond_1

    .line 143
    const-class v0, Lcom/mh/movie/core/b/c;

    monitor-enter v0

    .line 144
    :try_start_0
    sget-object v1, Lcom/mh/movie/core/b/c;->c:Lcom/mh/movie/core/b/c;

    if-nez v1, :cond_0

    .line 145
    new-instance v1, Lcom/mh/movie/core/b/c;

    invoke-direct {v1}, Lcom/mh/movie/core/b/c;-><init>()V

    sput-object v1, Lcom/mh/movie/core/b/c;->c:Lcom/mh/movie/core/b/c;

    .line 147
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 149
    :cond_1
    :goto_0
    sget-object v0, Lcom/mh/movie/core/b/c;->c:Lcom/mh/movie/core/b/c;

    return-object v0
.end method

.method private a(Lokhttp3/Request;)Lokhttp3/Call;
    .locals 2

    .line 115
    invoke-virtual {p1}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/HttpUrl;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "https://"

    .line 117
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/mh/movie/core/b/c;->b:Lokhttp3/OkHttpClient;

    invoke-virtual {v0, p1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p1

    goto :goto_0

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/mh/movie/core/b/c;->a:Lokhttp3/OkHttpClient;

    invoke-virtual {v0, p1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private a(Lokhttp3/Request;Lokhttp3/Callback;)V
    .locals 0

    .line 105
    invoke-direct {p0, p1}, Lcom/mh/movie/core/b/c;->a(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 107
    invoke-interface {p1, p2}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    :cond_0
    return-void
.end method

.method private static b()Lokhttp3/OkHttpClient;
    .locals 4

    .line 163
    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    #sget-object v1, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    #.line 164
    #invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->proxy(Ljava/net/Proxy;)Lokhttp3/OkHttpClient$Builder;

    #move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1e

    .line 165
    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x78

    .line 166
    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 167
    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 169
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    return-object v0
.end method

.method private static c()Lokhttp3/OkHttpClient;
    .locals 4

    const/4 v0, 0x1

    .line 176
    :try_start_0
    new-array v0, v0, [Ljavax/net/ssl/TrustManager;

    const/4 v1, 0x0

    new-instance v2, Lcom/mh/movie/core/b/c$1;

    invoke-direct {v2}, Lcom/mh/movie/core/b/c$1;-><init>()V

    aput-object v2, v0, v1

    const-string v1, "TLS"

    .line 194
    invoke-static {v1}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v1

    const/4 v2, 0x0

    .line 195
    new-instance v3, Ljava/security/SecureRandom;

    invoke-direct {v3}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v1, v2, v0, v3}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 199
    invoke-virtual {v1}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    .line 201
    new-instance v1, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v1}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    .line 202
    #sget-object v2, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    #invoke-virtual {v1, v2}, Lokhttp3/OkHttpClient$Builder;->proxy(Ljava/net/Proxy;)Lokhttp3/OkHttpClient$Builder;

    .line 203
    invoke-virtual {v1, v0}, Lokhttp3/OkHttpClient$Builder;->sslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)Lokhttp3/OkHttpClient$Builder;

    .line 204
    new-instance v0, Lcom/mh/movie/core/b/c$2;

    invoke-direct {v0}, Lcom/mh/movie/core/b/c$2;-><init>()V

    invoke-virtual {v1, v0}, Lokhttp3/OkHttpClient$Builder;->hostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)Lokhttp3/OkHttpClient$Builder;

    const-wide/16 v2, 0x1e

    .line 211
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v0}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x78

    .line 212
    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 213
    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 215
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 217
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public a(Ljava/lang/String;JJLokhttp3/Callback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bytes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    cmp-long v1, p4, p2

    if-lez v1, :cond_0

    .line 42
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ""

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 44
    :cond_0
    new-instance p2, Lokhttp3/Request$Builder;

    invoke-direct {p2}, Lokhttp3/Request$Builder;-><init>()V

    const-string p3, "RANGE"

    .line 45
    invoke-virtual {p2, p3, v0}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p2

    const-string p3, "Accept-Encoding"

    const-string p4, "identity"

    .line 46
    invoke-virtual {p2, p3, p4}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p2

    .line 47
    invoke-virtual {p2, p1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    .line 48
    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    .line 49
    invoke-direct {p0, p1, p6}, Lcom/mh/movie/core/b/c;->a(Lokhttp3/Request;Lokhttp3/Callback;)V

    return-void
.end method

.method public a(Ljava/lang/String;Lokhttp3/Callback;)V
    .locals 1

    .line 61
    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v0, p1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    .line 62
    invoke-direct {p0, p1, p2}, Lcom/mh/movie/core/b/c;->a(Lokhttp3/Request;Lokhttp3/Callback;)V

    return-void
.end method
