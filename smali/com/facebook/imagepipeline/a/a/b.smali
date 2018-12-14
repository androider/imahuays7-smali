.class public Lcom/facebook/imagepipeline/a/a/b;
.super Lcom/facebook/imagepipeline/k/c;
.source "OkHttpNetworkFetcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/imagepipeline/a/a/b$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/imagepipeline/k/c<",
        "Lcom/facebook/imagepipeline/a/a/b$a;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lokhttp3/Call$Factory;

.field private final b:Lokhttp3/CacheControl;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private c:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Lokhttp3/Call$Factory;Ljava/util/concurrent/Executor;)V
    .locals 1

    const/4 v0, 0x1

    .line 75
    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/imagepipeline/a/a/b;-><init>(Lokhttp3/Call$Factory;Ljava/util/concurrent/Executor;Z)V

    return-void
.end method

.method public constructor <init>(Lokhttp3/Call$Factory;Ljava/util/concurrent/Executor;Z)V
    .locals 0

    .line 85
    invoke-direct {p0}, Lcom/facebook/imagepipeline/k/c;-><init>()V

    .line 86
    iput-object p1, p0, Lcom/facebook/imagepipeline/a/a/b;->a:Lokhttp3/Call$Factory;

    .line 87
    iput-object p2, p0, Lcom/facebook/imagepipeline/a/a/b;->c:Ljava/util/concurrent/Executor;

    if-eqz p3, :cond_0

    .line 88
    new-instance p1, Lokhttp3/CacheControl$Builder;

    invoke-direct {p1}, Lokhttp3/CacheControl$Builder;-><init>()V

    invoke-virtual {p1}, Lokhttp3/CacheControl$Builder;->noStore()Lokhttp3/CacheControl$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/CacheControl$Builder;->build()Lokhttp3/CacheControl;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/facebook/imagepipeline/a/a/b;->b:Lokhttp3/CacheControl;

    return-void
.end method

.method public constructor <init>(Lokhttp3/OkHttpClient;)V
    .locals 1

    .line 66
    invoke-virtual {p1}, Lokhttp3/OkHttpClient;->dispatcher()Lokhttp3/Dispatcher;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Dispatcher;->executorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/facebook/imagepipeline/a/a/b;-><init>(Lokhttp3/Call$Factory;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/imagepipeline/a/a/b;)Ljava/util/concurrent/Executor;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/facebook/imagepipeline/a/a/b;->c:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method static synthetic a(Lcom/facebook/imagepipeline/a/a/b;Lokhttp3/Call;Ljava/lang/Exception;Lcom/facebook/imagepipeline/k/ag$a;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/imagepipeline/a/a/b;->a(Lokhttp3/Call;Ljava/lang/Exception;Lcom/facebook/imagepipeline/k/ag$a;)V

    return-void
.end method

.method private a(Lokhttp3/Call;Ljava/lang/Exception;Lcom/facebook/imagepipeline/k/ag$a;)V
    .locals 0

    .line 216
    invoke-interface {p1}, Lokhttp3/Call;->isCanceled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 217
    invoke-interface {p3}, Lcom/facebook/imagepipeline/k/ag$a;->a()V

    goto :goto_0

    .line 219
    :cond_0
    invoke-interface {p3, p2}, Lcom/facebook/imagepipeline/k/ag$a;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/imagepipeline/k/k;Lcom/facebook/imagepipeline/k/al;)Lcom/facebook/imagepipeline/a/a/b$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/k/k<",
            "Lcom/facebook/imagepipeline/g/e;",
            ">;",
            "Lcom/facebook/imagepipeline/k/al;",
            ")",
            "Lcom/facebook/imagepipeline/a/a/b$a;"
        }
    .end annotation

    .line 95
    new-instance v0, Lcom/facebook/imagepipeline/a/a/b$a;

    invoke-direct {v0, p1, p2}, Lcom/facebook/imagepipeline/a/a/b$a;-><init>(Lcom/facebook/imagepipeline/k/k;Lcom/facebook/imagepipeline/k/al;)V

    return-object v0
.end method

.method public synthetic a(Lcom/facebook/imagepipeline/k/t;I)Ljava/util/Map;
    .locals 0

    .line 36
    check-cast p1, Lcom/facebook/imagepipeline/a/a/b$a;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/imagepipeline/a/a/b;->b(Lcom/facebook/imagepipeline/a/a/b$a;I)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/facebook/imagepipeline/a/a/b$a;I)V
    .locals 2

    .line 127
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/facebook/imagepipeline/a/a/b$a;->c:J

    return-void
.end method

.method public a(Lcom/facebook/imagepipeline/a/a/b$a;Lcom/facebook/imagepipeline/k/ag$a;)V
    .locals 3

    .line 101
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/facebook/imagepipeline/a/a/b$a;->a:J

    .line 102
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/a/a/b$a;->e()Landroid/net/Uri;

    move-result-object v0

    .line 105
    :try_start_0
    new-instance v1, Lokhttp3/Request$Builder;

    invoke-direct {v1}, Lokhttp3/Request$Builder;-><init>()V

    .line 106
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    .line 107
    invoke-virtual {v0}, Lokhttp3/Request$Builder;->get()Lokhttp3/Request$Builder;

    move-result-object v0

    .line 109
    iget-object v1, p0, Lcom/facebook/imagepipeline/a/a/b;->b:Lokhttp3/CacheControl;

    if-eqz v1, :cond_0

    .line 110
    iget-object v1, p0, Lcom/facebook/imagepipeline/a/a/b;->b:Lokhttp3/CacheControl;

    invoke-virtual {v0, v1}, Lokhttp3/Request$Builder;->cacheControl(Lokhttp3/CacheControl;)Lokhttp3/Request$Builder;

    .line 113
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/a/a/b$a;->b()Lcom/facebook/imagepipeline/k/al;

    move-result-object v1

    invoke-interface {v1}, Lcom/facebook/imagepipeline/k/al;->a()Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/imagepipeline/request/ImageRequest;->h()Lcom/facebook/imagepipeline/common/a;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v2, "Range"

    .line 115
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/common/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 118
    :cond_1
    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/facebook/imagepipeline/a/a/b;->a(Lcom/facebook/imagepipeline/a/a/b$a;Lcom/facebook/imagepipeline/k/ag$a;Lokhttp3/Request;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 121
    invoke-interface {p2, p1}, Lcom/facebook/imagepipeline/k/ag$a;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method protected a(Lcom/facebook/imagepipeline/a/a/b$a;Lcom/facebook/imagepipeline/k/ag$a;Lokhttp3/Request;)V
    .locals 2

    .line 144
    iget-object v0, p0, Lcom/facebook/imagepipeline/a/a/b;->a:Lokhttp3/Call$Factory;

    invoke-interface {v0, p3}, Lokhttp3/Call$Factory;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p3

    .line 147
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/a/a/b$a;->b()Lcom/facebook/imagepipeline/k/al;

    move-result-object v0

    new-instance v1, Lcom/facebook/imagepipeline/a/a/b$1;

    invoke-direct {v1, p0, p3}, Lcom/facebook/imagepipeline/a/a/b$1;-><init>(Lcom/facebook/imagepipeline/a/a/b;Lokhttp3/Call;)V

    .line 148
    invoke-interface {v0, v1}, Lcom/facebook/imagepipeline/k/al;->a(Lcom/facebook/imagepipeline/k/am;)V

    .line 166
    new-instance v0, Lcom/facebook/imagepipeline/a/a/b$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/facebook/imagepipeline/a/a/b$2;-><init>(Lcom/facebook/imagepipeline/a/a/b;Lcom/facebook/imagepipeline/a/a/b$a;Lcom/facebook/imagepipeline/k/ag$a;)V

    invoke-interface {p3, v0}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    return-void
.end method

.method public bridge synthetic a(Lcom/facebook/imagepipeline/k/t;Lcom/facebook/imagepipeline/k/ag$a;)V
    .locals 0

    .line 36
    check-cast p1, Lcom/facebook/imagepipeline/a/a/b$a;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/imagepipeline/a/a/b;->a(Lcom/facebook/imagepipeline/a/a/b$a;Lcom/facebook/imagepipeline/k/ag$a;)V

    return-void
.end method

.method public synthetic b(Lcom/facebook/imagepipeline/k/k;Lcom/facebook/imagepipeline/k/al;)Lcom/facebook/imagepipeline/k/t;
    .locals 0

    .line 36
    invoke-virtual {p0, p1, p2}, Lcom/facebook/imagepipeline/a/a/b;->a(Lcom/facebook/imagepipeline/k/k;Lcom/facebook/imagepipeline/k/al;)Lcom/facebook/imagepipeline/a/a/b$a;

    move-result-object p1

    return-object p1
.end method

.method public b(Lcom/facebook/imagepipeline/a/a/b$a;I)Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/a/a/b$a;",
            "I)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 132
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "queue_time"

    .line 133
    iget-wide v2, p1, Lcom/facebook/imagepipeline/a/a/b$a;->b:J

    iget-wide v4, p1, Lcom/facebook/imagepipeline/a/a/b$a;->a:J

    sub-long v6, v2, v4

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "fetch_time"

    .line 134
    iget-wide v2, p1, Lcom/facebook/imagepipeline/a/a/b$a;->c:J

    iget-wide v4, p1, Lcom/facebook/imagepipeline/a/a/b$a;->b:J

    sub-long v6, v2, v4

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "total_time"

    .line 135
    iget-wide v2, p1, Lcom/facebook/imagepipeline/a/a/b$a;->c:J

    iget-wide v4, p1, Lcom/facebook/imagepipeline/a/a/b$a;->a:J

    sub-long v6, v2, v4

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "image_size"

    .line 136
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public synthetic b(Lcom/facebook/imagepipeline/k/t;I)V
    .locals 0

    .line 36
    check-cast p1, Lcom/facebook/imagepipeline/a/a/b$a;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/imagepipeline/a/a/b;->a(Lcom/facebook/imagepipeline/a/a/b$a;I)V

    return-void
.end method
