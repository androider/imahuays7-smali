.class public final Lme/jessyan/progressmanager/b;
.super Ljava/lang/Object;
.source "ProgressManager.java"


# static fields
.field public static final a:Z

.field private static volatile g:Lme/jessyan/progressmanager/b;


# instance fields
.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lme/jessyan/progressmanager/a;",
            ">;>;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lme/jessyan/progressmanager/a;",
            ">;>;"
        }
    .end annotation
.end field

.field private final d:Landroid/os/Handler;

.field private final e:Lokhttp3/Interceptor;

.field private f:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    :try_start_0
    const-string v0, "okhttp3.OkHttpClient"

    .line 83
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    .line 88
    :goto_0
    sput-boolean v0, Lme/jessyan/progressmanager/b;->a:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lme/jessyan/progressmanager/b;->b:Ljava/util/Map;

    .line 65
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lme/jessyan/progressmanager/b;->c:Ljava/util/Map;

    const/16 v0, 0x96

    .line 68
    iput v0, p0, Lme/jessyan/progressmanager/b;->f:I

    .line 93
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lme/jessyan/progressmanager/b;->d:Landroid/os/Handler;

    .line 94
    new-instance v0, Lme/jessyan/progressmanager/b$1;

    invoke-direct {v0, p0}, Lme/jessyan/progressmanager/b$1;-><init>(Lme/jessyan/progressmanager/b;)V

    iput-object v0, p0, Lme/jessyan/progressmanager/b;->e:Lokhttp3/Interceptor;

    return-void
.end method

.method private a(Ljava/util/Map;Lokhttp3/Response;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lme/jessyan/progressmanager/a;",
            ">;>;",
            "Lokhttp3/Response;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 439
    invoke-interface {p1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_3

    .line 440
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    const-string v1, "Location"

    .line 441
    invoke-virtual {p2, v1}, Lokhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 442
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "?JessYan="

    .line 443
    invoke-virtual {p3, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "?JessYan="

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 444
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "?JessYan="

    invoke-virtual {p3, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p3, p2, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 446
    :cond_0
    invoke-interface {p1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_1

    .line 447
    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 449
    :cond_1
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 450
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_2
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lme/jessyan/progressmanager/a;

    .line 451
    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 452
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    const/4 p2, 0x0

    :cond_4
    :goto_1
    return-object p2
.end method

.method public static final a()Lme/jessyan/progressmanager/b;
    .locals 2

    .line 104
    sget-object v0, Lme/jessyan/progressmanager/b;->g:Lme/jessyan/progressmanager/b;

    if-nez v0, :cond_2

    .line 105
    sget-boolean v0, Lme/jessyan/progressmanager/b;->a:Z

    if-nez v0, :cond_0

    .line 106
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must be dependency Okhttp"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 108
    :cond_0
    const-class v0, Lme/jessyan/progressmanager/b;

    monitor-enter v0

    .line 109
    :try_start_0
    sget-object v1, Lme/jessyan/progressmanager/b;->g:Lme/jessyan/progressmanager/b;

    if-nez v1, :cond_1

    .line 110
    new-instance v1, Lme/jessyan/progressmanager/b;

    invoke-direct {v1}, Lme/jessyan/progressmanager/b;-><init>()V

    sput-object v1, Lme/jessyan/progressmanager/b;->g:Lme/jessyan/progressmanager/b;

    .line 112
    :cond_1
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 114
    :cond_2
    :goto_0
    sget-object v0, Lme/jessyan/progressmanager/b;->g:Lme/jessyan/progressmanager/b;

    return-object v0
.end method

.method private a(Ljava/lang/String;Lokhttp3/Request;)Lokhttp3/Request;
    .locals 2

    const-string v0, "?JessYan="

    .line 224
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p2

    .line 227
    :cond_0
    invoke-virtual {p2}, Lokhttp3/Request;->newBuilder()Lokhttp3/Request$Builder;

    move-result-object p2

    const/4 v0, 0x0

    const-string v1, "?JessYan="

    .line 228
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p2

    const-string v0, "JessYan"

    .line 229
    invoke-virtual {p2, v0, p1}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    .line 230
    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    return-object p1
.end method

.method private a(Lokhttp3/Response;Ljava/lang/String;)Lokhttp3/Response;
    .locals 1

    .line 276
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "?JessYan="

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 277
    invoke-virtual {p1}, Lokhttp3/Response;->newBuilder()Lokhttp3/Response$Builder;

    move-result-object p1

    const-string v0, "Location"

    .line 278
    invoke-virtual {p1, v0, p2}, Lokhttp3/Response$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Response$Builder;

    move-result-object p1

    .line 279
    invoke-virtual {p1}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method private b(Lokhttp3/Response;)Z
    .locals 2

    .line 421
    invoke-virtual {p1}, Lokhttp3/Response;->code()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    .line 422
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-string v0, "301"

    .line 424
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "302"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "303"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "307"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public a(Lokhttp3/OkHttpClient$Builder;)Lokhttp3/OkHttpClient$Builder;
    .locals 1

    .line 185
    iget-object v0, p0, Lme/jessyan/progressmanager/b;->e:Lokhttp3/Interceptor;

    .line 186
    invoke-virtual {p1, v0}, Lokhttp3/OkHttpClient$Builder;->addNetworkInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p1

    return-object p1
.end method

.method public a(Lokhttp3/Request;)Lokhttp3/Request;
    .locals 6

    if-nez p1, :cond_0

    return-object p1

    .line 200
    :cond_0
    invoke-virtual {p1}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/HttpUrl;->toString()Ljava/lang/String;

    move-result-object v0

    .line 201
    invoke-direct {p0, v0, p1}, Lme/jessyan/progressmanager/b;->a(Ljava/lang/String;Lokhttp3/Request;)Lokhttp3/Request;

    move-result-object p1

    .line 203
    invoke-virtual {p1}, Lokhttp3/Request;->body()Lokhttp3/RequestBody;

    move-result-object v1

    if-nez v1, :cond_1

    return-object p1

    .line 205
    :cond_1
    iget-object v1, p0, Lme/jessyan/progressmanager/b;->b:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 206
    iget-object v1, p0, Lme/jessyan/progressmanager/b;->b:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 207
    invoke-virtual {p1}, Lokhttp3/Request;->newBuilder()Lokhttp3/Request$Builder;

    move-result-object v1

    .line 208
    invoke-virtual {p1}, Lokhttp3/Request;->method()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lme/jessyan/progressmanager/body/a;

    iget-object v4, p0, Lme/jessyan/progressmanager/b;->d:Landroid/os/Handler;

    invoke-virtual {p1}, Lokhttp3/Request;->body()Lokhttp3/RequestBody;

    move-result-object p1

    iget v5, p0, Lme/jessyan/progressmanager/b;->f:I

    invoke-direct {v3, v4, p1, v0, v5}, Lme/jessyan/progressmanager/body/a;-><init>(Landroid/os/Handler;Lokhttp3/RequestBody;Ljava/util/List;I)V

    invoke-virtual {v1, v2, v3}, Lokhttp3/Request$Builder;->method(Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object p1

    .line 209
    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    return-object p1

    :cond_2
    return-object p1
.end method

.method public a(Lokhttp3/Response;)Lokhttp3/Response;
    .locals 5

    if-nez p1, :cond_0

    return-object p1

    .line 244
    :cond_0
    invoke-virtual {p1}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/HttpUrl;->toString()Ljava/lang/String;

    move-result-object v0

    .line 245
    invoke-virtual {p1}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v1

    const-string v2, "JessYan"

    invoke-virtual {v1, v2}, Lokhttp3/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 246
    invoke-virtual {p1}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v0

    const-string v1, "JessYan"

    invoke-virtual {v0, v1}, Lokhttp3/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 249
    :cond_1
    invoke-direct {p0, p1}, Lme/jessyan/progressmanager/b;->b(Lokhttp3/Response;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 250
    iget-object v1, p0, Lme/jessyan/progressmanager/b;->b:Ljava/util/Map;

    invoke-direct {p0, v1, p1, v0}, Lme/jessyan/progressmanager/b;->a(Ljava/util/Map;Lokhttp3/Response;Ljava/lang/String;)Ljava/lang/String;

    .line 251
    iget-object v1, p0, Lme/jessyan/progressmanager/b;->c:Ljava/util/Map;

    invoke-direct {p0, v1, p1, v0}, Lme/jessyan/progressmanager/b;->a(Ljava/util/Map;Lokhttp3/Response;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 252
    invoke-direct {p0, p1, v0}, Lme/jessyan/progressmanager/b;->a(Lokhttp3/Response;Ljava/lang/String;)Lokhttp3/Response;

    move-result-object p1

    return-object p1

    .line 256
    :cond_2
    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v1

    if-nez v1, :cond_3

    return-object p1

    .line 259
    :cond_3
    iget-object v1, p0, Lme/jessyan/progressmanager/b;->c:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 260
    iget-object v1, p0, Lme/jessyan/progressmanager/b;->c:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 261
    invoke-virtual {p1}, Lokhttp3/Response;->newBuilder()Lokhttp3/Response$Builder;

    move-result-object v1

    new-instance v2, Lme/jessyan/progressmanager/body/b;

    iget-object v3, p0, Lme/jessyan/progressmanager/b;->d:Landroid/os/Handler;

    .line 262
    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p1

    iget v4, p0, Lme/jessyan/progressmanager/b;->f:I

    invoke-direct {v2, v3, p1, v0, v4}, Lme/jessyan/progressmanager/body/b;-><init>(Landroid/os/Handler;Lokhttp3/ResponseBody;Ljava/util/List;I)V

    invoke-virtual {v1, v2}, Lokhttp3/Response$Builder;->body(Lokhttp3/ResponseBody;)Lokhttp3/Response$Builder;

    move-result-object p1

    .line 263
    invoke-virtual {p1}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    move-result-object p1

    return-object p1

    :cond_4
    return-object p1
.end method
