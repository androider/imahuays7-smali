.class public abstract Lcom/jess/arms/b/b/f;
.super Ljava/lang/Object;
.source "ClientModule.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jess/arms/b/b/f$d;,
        Lcom/jess/arms/b/b/f$b;,
        Lcom/jess/arms/b/b/f$c;,
        Lcom/jess/arms/b/b/f$e;,
        Lcom/jess/arms/b/b/f$a;
    }
.end annotation


# direct methods
.method static a(Landroid/app/Application;Lcom/jess/arms/b/b/f$d;Ljava/io/File;Lcom/google/gson/e;)Lio/rx_cache2/internal/j;
    .locals 1
    .param p1    # Lcom/jess/arms/b/b/f$d;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/io/File;
        .annotation runtime Ljavax/inject/Named;
            value = "RxCacheDirectory"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 211
    new-instance v0, Lio/rx_cache2/internal/j$a;

    invoke-direct {v0}, Lio/rx_cache2/internal/j$a;-><init>()V

    if-eqz p1, :cond_0

    .line 214
    invoke-interface {p1, p0, v0}, Lcom/jess/arms/b/b/f$d;->a(Landroid/content/Context;Lio/rx_cache2/internal/j$a;)Lio/rx_cache2/internal/j;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    return-object p0

    .line 217
    :cond_1
    new-instance p0, Lio/victoralbertos/jolyglot/GsonSpeaker;

    invoke-direct {p0, p3}, Lio/victoralbertos/jolyglot/GsonSpeaker;-><init>(Lcom/google/gson/e;)V

    .line 218
    invoke-virtual {v0, p2, p0}, Lio/rx_cache2/internal/j$a;->a(Ljava/io/File;Lio/victoralbertos/jolyglot/JolyglotGenerics;)Lio/rx_cache2/internal/j;

    move-result-object p0

    return-object p0
.end method

.method static a(Ljava/io/File;)Ljava/io/File;
    .locals 2
    .annotation runtime Ljavax/inject/Named;
        value = "RxCacheDirectory"
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 231
    new-instance v0, Ljava/io/File;

    const-string v1, "RxCache"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 232
    invoke-static {v0}, Lcom/jess/arms/c/d;->a(Ljava/io/File;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method static a(Lcom/jess/arms/b/b/f$a;)Ljavax/net/ssl/SSLSocketFactory;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "TLS"

    .line 151
    invoke-static {v1}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v1

    const/4 v2, 0x1

    .line 152
    new-array v2, v2, [Ljavax/net/ssl/TrustManager;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    new-instance p0, Ljava/security/SecureRandom;

    invoke-direct {p0}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v1, v0, v2, p0}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 153
    invoke-virtual {v1}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 155
    invoke-static {p0}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method static a(Landroid/app/Application;Lme/jessyan/rxerrorhandler/handler/listener/ResponseErrorListener;)Lme/jessyan/rxerrorhandler/core/RxErrorHandler;
    .locals 1
    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 246
    invoke-static {}, Lme/jessyan/rxerrorhandler/core/RxErrorHandler;->builder()Lme/jessyan/rxerrorhandler/core/RxErrorHandler$Builder;

    move-result-object v0

    .line 247
    invoke-virtual {v0, p0}, Lme/jessyan/rxerrorhandler/core/RxErrorHandler$Builder;->with(Landroid/content/Context;)Lme/jessyan/rxerrorhandler/core/RxErrorHandler$Builder;

    move-result-object p0

    .line 248
    invoke-virtual {p0, p1}, Lme/jessyan/rxerrorhandler/core/RxErrorHandler$Builder;->responseErrorListener(Lme/jessyan/rxerrorhandler/handler/listener/ResponseErrorListener;)Lme/jessyan/rxerrorhandler/core/RxErrorHandler$Builder;

    move-result-object p0

    .line 249
    invoke-virtual {p0}, Lme/jessyan/rxerrorhandler/core/RxErrorHandler$Builder;->build()Lme/jessyan/rxerrorhandler/core/RxErrorHandler;

    move-result-object p0

    return-object p0
.end method

.method static a(Landroid/app/Application;Lcom/jess/arms/b/b/f$b;Lokhttp3/OkHttpClient$Builder;Lokhttp3/Interceptor;Ljava/util/List;Lcom/jess/arms/http/b;)Lokhttp3/OkHttpClient;
    .locals 5
    .param p1    # Lcom/jess/arms/b/b/f$b;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/util/List;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Lcom/jess/arms/http/b;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Application;",
            "Lcom/jess/arms/b/b/f$b;",
            "Lokhttp3/OkHttpClient$Builder;",
            "Lokhttp3/Interceptor;",
            "Ljava/util/List<",
            "Lokhttp3/Interceptor;",
            ">;",
            "Lcom/jess/arms/http/b;",
            ")",
            "Lokhttp3/OkHttpClient;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 120
    new-instance v0, Lcom/jess/arms/b/b/f$a;

    invoke-direct {v0}, Lcom/jess/arms/b/b/f$a;-><init>()V

    .line 121
    sget-object v1, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    .line 122
    invoke-virtual {p2, v1}, Lokhttp3/OkHttpClient$Builder;->proxy(Ljava/net/Proxy;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0xa

    .line 123
    invoke-virtual {v1, v3, v4, v2}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 124
    invoke-virtual {v1, v3, v4, v2}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    .line 125
    invoke-static {v0}, Lcom/jess/arms/b/b/f;->a(Lcom/jess/arms/b/b/f$a;)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lokhttp3/OkHttpClient$Builder;->sslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/X509TrustManager;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    new-instance v1, Lcom/jess/arms/b/b/f$e;

    invoke-direct {v1}, Lcom/jess/arms/b/b/f$e;-><init>()V

    .line 126
    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->hostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 127
    invoke-virtual {v0, p3}, Lokhttp3/OkHttpClient$Builder;->addNetworkInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    if-eqz p5, :cond_0

    .line 130
    new-instance p3, Lcom/jess/arms/b/b/f$1;

    invoke-direct {p3, p5}, Lcom/jess/arms/b/b/f$1;-><init>(Lcom/jess/arms/http/b;)V

    invoke-virtual {p2, p3}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    :cond_0
    if-eqz p4, :cond_1

    .line 138
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_1

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lokhttp3/Interceptor;

    .line 139
    invoke-virtual {p2, p4}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    .line 144
    invoke-interface {p1, p0, p2}, Lcom/jess/arms/b/b/f$b;->a(Landroid/content/Context;Lokhttp3/OkHttpClient$Builder;)V

    .line 145
    :cond_2
    invoke-virtual {p2}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object p0

    return-object p0
.end method

.method static a()Lretrofit2/Retrofit$Builder;
    .locals 1
    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 187
    new-instance v0, Lretrofit2/Retrofit$Builder;

    invoke-direct {v0}, Lretrofit2/Retrofit$Builder;-><init>()V

    return-object v0
.end method

.method static a(Landroid/app/Application;Lcom/jess/arms/b/b/f$c;Lretrofit2/Retrofit$Builder;Lokhttp3/OkHttpClient;Lokhttp3/HttpUrl;Lcom/google/gson/e;)Lretrofit2/Retrofit;
    .locals 0
    .param p1    # Lcom/jess/arms/b/b/f$c;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 91
    invoke-virtual {p2, p4}, Lretrofit2/Retrofit$Builder;->baseUrl(Lokhttp3/HttpUrl;)Lretrofit2/Retrofit$Builder;

    move-result-object p4

    .line 92
    invoke-virtual {p4, p3}, Lretrofit2/Retrofit$Builder;->client(Lokhttp3/OkHttpClient;)Lretrofit2/Retrofit$Builder;

    if-eqz p1, :cond_0

    .line 95
    invoke-interface {p1, p0, p2}, Lcom/jess/arms/b/b/f$c;->a(Landroid/content/Context;Lretrofit2/Retrofit$Builder;)V

    .line 97
    :cond_0
    new-instance p0, Lcom/jess/arms/b/b/ab;

    invoke-direct {p0}, Lcom/jess/arms/b/b/ab;-><init>()V

    .line 98
    invoke-virtual {p2, p0}, Lretrofit2/Retrofit$Builder;->addConverterFactory(Lretrofit2/Converter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object p0

    .line 99
    invoke-static {}, Lretrofit2/adapter/rxjava2/RxJava2CallAdapterFactory;->create()Lretrofit2/adapter/rxjava2/RxJava2CallAdapterFactory;

    move-result-object p1

    invoke-virtual {p0, p1}, Lretrofit2/Retrofit$Builder;->addCallAdapterFactory(Lretrofit2/CallAdapter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object p0

    .line 100
    invoke-static {p5}, Lretrofit2/converter/gson/GsonConverterFactory;->create(Lcom/google/gson/e;)Lretrofit2/converter/gson/GsonConverterFactory;

    move-result-object p1

    invoke-virtual {p0, p1}, Lretrofit2/Retrofit$Builder;->addConverterFactory(Lretrofit2/Converter$Factory;)Lretrofit2/Retrofit$Builder;

    .line 102
    invoke-virtual {p2}, Lretrofit2/Retrofit$Builder;->build()Lretrofit2/Retrofit;

    move-result-object p0

    return-object p0
.end method

.method static b()Lokhttp3/OkHttpClient$Builder;
    .locals 1
    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 193
    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    return-object v0
.end method
