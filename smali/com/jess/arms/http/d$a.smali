.class public Lcom/jess/arms/http/d$a;
.super Ljava/lang/Object;
.source "OkHttpUrlLoader.java"

# interfaces
.implements Lcom/bumptech/glide/load/model/ModelLoaderFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jess/arms/http/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/model/ModelLoaderFactory<",
        "Lcom/bumptech/glide/load/model/GlideUrl;",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile a:Lokhttp3/Call$Factory;


# instance fields
.field private final b:Lokhttp3/Call$Factory;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 77
    invoke-static {}, Lcom/jess/arms/http/d$a;->a()Lokhttp3/Call$Factory;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/jess/arms/http/d$a;-><init>(Lokhttp3/Call$Factory;)V

    return-void
.end method

.method public constructor <init>(Lokhttp3/Call$Factory;)V
    .locals 0
    .param p1    # Lokhttp3/Call$Factory;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput-object p1, p0, Lcom/jess/arms/http/d$a;->b:Lokhttp3/Call$Factory;

    return-void
.end method

.method private static a()Lokhttp3/Call$Factory;
    .locals 2

    .line 63
    sget-object v0, Lcom/jess/arms/http/d$a;->a:Lokhttp3/Call$Factory;

    if-nez v0, :cond_1

    .line 64
    const-class v0, Lcom/jess/arms/http/d$a;

    monitor-enter v0

    .line 65
    :try_start_0
    sget-object v1, Lcom/jess/arms/http/d$a;->a:Lokhttp3/Call$Factory;

    if-nez v1, :cond_0

    .line 66
    new-instance v1, Lokhttp3/OkHttpClient;

    invoke-direct {v1}, Lokhttp3/OkHttpClient;-><init>()V

    sput-object v1, Lcom/jess/arms/http/d$a;->a:Lokhttp3/Call$Factory;

    .line 68
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 70
    :cond_1
    :goto_0
    sget-object v0, Lcom/jess/arms/http/d$a;->a:Lokhttp3/Call$Factory;

    return-object v0
.end method


# virtual methods
.method public build(Lcom/bumptech/glide/load/model/MultiModelLoaderFactory;)Lcom/bumptech/glide/load/model/ModelLoader;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/model/MultiModelLoaderFactory;",
            ")",
            "Lcom/bumptech/glide/load/model/ModelLoader<",
            "Lcom/bumptech/glide/load/model/GlideUrl;",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .line 92
    new-instance p1, Lcom/jess/arms/http/d;

    iget-object v0, p0, Lcom/jess/arms/http/d$a;->b:Lokhttp3/Call$Factory;

    invoke-direct {p1, v0}, Lcom/jess/arms/http/d;-><init>(Lokhttp3/Call$Factory;)V

    return-object p1
.end method

.method public teardown()V
    .locals 0

    return-void
.end method
