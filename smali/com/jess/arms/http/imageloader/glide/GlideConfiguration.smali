.class public Lcom/jess/arms/http/imageloader/glide/GlideConfiguration;
.super Lcom/bumptech/glide/module/AppGlideModule;
.source "GlideConfiguration.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/bumptech/glide/module/AppGlideModule;-><init>()V

    return-void
.end method


# virtual methods
.method public applyOptions(Landroid/content/Context;Lcom/bumptech/glide/GlideBuilder;)V
    .locals 8

    .line 56
    invoke-static {p1}, Lcom/jess/arms/c/a;->d(Landroid/content/Context;)Lcom/jess/arms/b/a/a;

    move-result-object v0

    .line 57
    new-instance v1, Lcom/jess/arms/http/imageloader/glide/GlideConfiguration$1;

    invoke-direct {v1, p0, v0}, Lcom/jess/arms/http/imageloader/glide/GlideConfiguration$1;-><init>(Lcom/jess/arms/http/imageloader/glide/GlideConfiguration;Lcom/jess/arms/b/a/a;)V

    invoke-virtual {p2, v1}, Lcom/bumptech/glide/GlideBuilder;->setDiskCache(Lcom/bumptech/glide/load/engine/cache/DiskCache$Factory;)Lcom/bumptech/glide/GlideBuilder;

    .line 65
    new-instance v1, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator$Builder;

    invoke-direct {v1, p1}, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator$Builder;->build()Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator;

    move-result-object v1

    .line 66
    invoke-virtual {v1}, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator;->getMemoryCacheSize()I

    move-result v2

    .line 67
    invoke-virtual {v1}, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator;->getBitmapPoolSize()I

    move-result v1

    int-to-double v2, v2

    const-wide v4, 0x3ff3333333333333L    # 1.2

    mul-double v2, v2, v4

    double-to-int v2, v2

    int-to-double v6, v1

    mul-double v6, v6, v4

    double-to-int v1, v6

    .line 72
    new-instance v3, Lcom/bumptech/glide/load/engine/cache/LruResourceCache;

    int-to-long v4, v2

    invoke-direct {v3, v4, v5}, Lcom/bumptech/glide/load/engine/cache/LruResourceCache;-><init>(J)V

    invoke-virtual {p2, v3}, Lcom/bumptech/glide/GlideBuilder;->setMemoryCache(Lcom/bumptech/glide/load/engine/cache/MemoryCache;)Lcom/bumptech/glide/GlideBuilder;

    .line 73
    new-instance v2, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;

    int-to-long v3, v1

    invoke-direct {v2, v3, v4}, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;-><init>(J)V

    invoke-virtual {p2, v2}, Lcom/bumptech/glide/GlideBuilder;->setBitmapPool(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)Lcom/bumptech/glide/GlideBuilder;

    .line 78
    invoke-interface {v0}, Lcom/jess/arms/b/a/a;->e()Lcom/jess/arms/http/imageloader/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jess/arms/http/imageloader/c;->a()Lcom/jess/arms/http/imageloader/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 79
    instance-of v1, v0, Lcom/jess/arms/http/imageloader/glide/b;

    if-eqz v1, :cond_0

    .line 80
    check-cast v0, Lcom/jess/arms/http/imageloader/glide/b;

    invoke-interface {v0, p1, p2}, Lcom/jess/arms/http/imageloader/glide/b;->a(Landroid/content/Context;Lcom/bumptech/glide/GlideBuilder;)V

    :cond_0
    return-void
.end method

.method public isManifestParsingEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public registerComponents(Landroid/content/Context;Lcom/bumptech/glide/Glide;Lcom/bumptech/glide/Registry;)V
    .locals 2

    .line 87
    invoke-static {p1}, Lcom/jess/arms/c/a;->d(Landroid/content/Context;)Lcom/jess/arms/b/a/a;

    move-result-object p1

    .line 88
    const-class p2, Lcom/bumptech/glide/load/model/GlideUrl;

    const-class v0, Ljava/io/InputStream;

    new-instance v1, Lcom/jess/arms/http/d$a;

    invoke-interface {p1}, Lcom/jess/arms/b/a/a;->f()Lokhttp3/OkHttpClient;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/jess/arms/http/d$a;-><init>(Lokhttp3/Call$Factory;)V

    invoke-virtual {p3, p2, v0, v1}, Lcom/bumptech/glide/Registry;->replace(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)Lcom/bumptech/glide/Registry;

    return-void
.end method
