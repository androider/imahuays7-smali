.class public final Lcom/mh/movie/core/app/GlobalConfiguration;
.super Ljava/lang/Object;
.source "GlobalConfiguration.java"

# interfaces
.implements Lcom/jess/arms/integration/ConfigModule;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static final synthetic a(Landroid/content/Context;Lio/rx_cache2/internal/j$a;)Lio/rx_cache2/internal/j;
    .locals 0

    const/4 p0, 0x1

    .line 154
    invoke-virtual {p1, p0}, Lio/rx_cache2/internal/j$a;->a(Z)Lio/rx_cache2/internal/j$a;

    const/4 p0, 0x0

    return-object p0
.end method

.method static final synthetic a(Landroid/content/Context;Lcom/google/gson/f;)V
    .locals 0

    .line 138
    invoke-virtual {p1}, Lcom/google/gson/f;->a()Lcom/google/gson/f;

    move-result-object p0

    .line 139
    invoke-virtual {p0}, Lcom/google/gson/f;->b()Lcom/google/gson/f;

    return-void
.end method

.method static final synthetic a(Landroid/content/Context;Lokhttp3/OkHttpClient$Builder;)V
    .locals 2

    .line 147
    sget-object p0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v0, 0xa

    invoke-virtual {p1, v0, v1, p0}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 149
    invoke-static {}, Lme/jessyan/progressmanager/b;->a()Lme/jessyan/progressmanager/b;

    move-result-object p0

    invoke-virtual {p0, p1}, Lme/jessyan/progressmanager/b;->a(Lokhttp3/OkHttpClient$Builder;)Lokhttp3/OkHttpClient$Builder;

    .line 151
    invoke-static {}, Lme/jessyan/retrofiturlmanager/RetrofitUrlManager;->getInstance()Lme/jessyan/retrofiturlmanager/RetrofitUrlManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lme/jessyan/retrofiturlmanager/RetrofitUrlManager;->with(Lokhttp3/OkHttpClient$Builder;)Lokhttp3/OkHttpClient$Builder;

    return-void
.end method

.method static final synthetic a(Landroid/content/Context;Lretrofit2/Retrofit$Builder;)V
    .locals 0

    .line 143
    invoke-static {}, Lretrofit2/converter/scalars/ScalarsConverterFactory;->create()Lretrofit2/converter/scalars/ScalarsConverterFactory;

    move-result-object p0

    invoke-virtual {p1, p0}, Lretrofit2/Retrofit$Builder;->addConverterFactory(Lretrofit2/Converter$Factory;)Lretrofit2/Retrofit$Builder;

    return-void
.end method


# virtual methods
.method public applyOptions(Landroid/content/Context;Lcom/jess/arms/b/b/n$a;)V
    .locals 1

    .line 69
    sget-object v0, Lcom/jess/arms/http/log/RequestInterceptor$Level;->NONE:Lcom/jess/arms/http/log/RequestInterceptor$Level;

    invoke-virtual {p2, v0}, Lcom/jess/arms/b/b/n$a;->a(Lcom/jess/arms/http/log/RequestInterceptor$Level;)Lcom/jess/arms/b/b/n$a;

    const-string v0, "http://172.16.10.40:8888"

    .line 72
    invoke-virtual {p2, v0}, Lcom/jess/arms/b/b/n$a;->a(Ljava/lang/String;)Lcom/jess/arms/b/b/n$a;

    move-result-object p2

    new-instance v0, Lcom/jess/arms/http/imageloader/glide/d;

    invoke-direct {v0}, Lcom/jess/arms/http/imageloader/glide/d;-><init>()V

    .line 75
    invoke-virtual {p2, v0}, Lcom/jess/arms/b/b/n$a;->a(Lcom/jess/arms/http/imageloader/a;)Lcom/jess/arms/b/b/n$a;

    move-result-object p2

    new-instance v0, Lcom/mh/movie/core/app/i;

    invoke-direct {v0, p1}, Lcom/mh/movie/core/app/i;-><init>(Landroid/content/Context;)V

    .line 132
    invoke-virtual {p2, v0}, Lcom/jess/arms/b/b/n$a;->a(Lcom/jess/arms/http/b;)Lcom/jess/arms/b/b/n$a;

    move-result-object p1

    new-instance p2, Lcom/mh/movie/core/app/j;

    invoke-direct {p2}, Lcom/mh/movie/core/app/j;-><init>()V

    .line 135
    invoke-virtual {p1, p2}, Lcom/jess/arms/b/b/n$a;->a(Lme/jessyan/rxerrorhandler/handler/listener/ResponseErrorListener;)Lcom/jess/arms/b/b/n$a;

    move-result-object p1

    sget-object p2, Lcom/mh/movie/core/app/e;->a:Lcom/jess/arms/b/b/a$a;

    .line 136
    invoke-virtual {p1, p2}, Lcom/jess/arms/b/b/n$a;->a(Lcom/jess/arms/b/b/a$a;)Lcom/jess/arms/b/b/n$a;

    move-result-object p1

    sget-object p2, Lcom/mh/movie/core/app/f;->a:Lcom/jess/arms/b/b/f$c;

    .line 141
    invoke-virtual {p1, p2}, Lcom/jess/arms/b/b/n$a;->a(Lcom/jess/arms/b/b/f$c;)Lcom/jess/arms/b/b/n$a;

    move-result-object p1

    sget-object p2, Lcom/mh/movie/core/app/g;->a:Lcom/jess/arms/b/b/f$b;

    .line 145
    invoke-virtual {p1, p2}, Lcom/jess/arms/b/b/n$a;->a(Lcom/jess/arms/b/b/f$b;)Lcom/jess/arms/b/b/n$a;

    move-result-object p1

    sget-object p2, Lcom/mh/movie/core/app/h;->a:Lcom/jess/arms/b/b/f$d;

    .line 153
    invoke-virtual {p1, p2}, Lcom/jess/arms/b/b/n$a;->a(Lcom/jess/arms/b/b/f$d;)Lcom/jess/arms/b/b/n$a;

    return-void
.end method

.method public injectActivityLifecycle(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Landroid/app/Application$ActivityLifecycleCallbacks;",
            ">;)V"
        }
    .end annotation

    .line 172
    new-instance p1, Lcom/mh/movie/core/app/a;

    invoke-direct {p1}, Lcom/mh/movie/core/app/a;-><init>()V

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public injectAppLifecycle(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/jess/arms/a/a/e;",
            ">;)V"
        }
    .end annotation

    .line 165
    new-instance p1, Lcom/mh/movie/core/app/d;

    invoke-direct {p1}, Lcom/mh/movie/core/app/d;-><init>()V

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public injectFragmentLifecycle(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Landroid/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;",
            ">;)V"
        }
    .end annotation

    .line 177
    new-instance p1, Lcom/mh/movie/core/app/GlobalConfiguration$1;

    invoke-direct {p1, p0}, Lcom/mh/movie/core/app/GlobalConfiguration$1;-><init>(Lcom/mh/movie/core/app/GlobalConfiguration;)V

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
