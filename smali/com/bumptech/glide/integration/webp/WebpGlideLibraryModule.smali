.class public Lcom/bumptech/glide/integration/webp/WebpGlideLibraryModule;
.super Lcom/bumptech/glide/module/LibraryGlideModule;
.source "WebpGlideLibraryModule.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/bumptech/glide/module/LibraryGlideModule;-><init>()V

    return-void
.end method


# virtual methods
.method public registerComponents(Landroid/content/Context;Lcom/bumptech/glide/Glide;Lcom/bumptech/glide/Registry;)V
    .locals 8

    .line 39
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 40
    invoke-virtual {p2}, Lcom/bumptech/glide/Glide;->getBitmapPool()Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    move-result-object v1

    .line 41
    invoke-virtual {p2}, Lcom/bumptech/glide/Glide;->getArrayPool()Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;

    move-result-object p2

    .line 43
    new-instance v2, Lcom/bumptech/glide/integration/webp/decoder/WebpDownsampler;

    invoke-virtual {p3}, Lcom/bumptech/glide/Registry;->getImageHeaderParsers()Ljava/util/List;

    move-result-object v3

    .line 44
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    invoke-direct {v2, v3, v4, v1, p2}, Lcom/bumptech/glide/integration/webp/decoder/WebpDownsampler;-><init>(Ljava/util/List;Landroid/util/DisplayMetrics;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;)V

    .line 45
    new-instance v3, Lcom/bumptech/glide/integration/webp/decoder/AnimatedWebpBitmapDecoder;

    invoke-direct {v3, p2, v1}, Lcom/bumptech/glide/integration/webp/decoder/AnimatedWebpBitmapDecoder;-><init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)V

    .line 46
    new-instance v4, Lcom/bumptech/glide/integration/webp/decoder/ByteBufferBitmapWebpDecoder;

    invoke-direct {v4, v2}, Lcom/bumptech/glide/integration/webp/decoder/ByteBufferBitmapWebpDecoder;-><init>(Lcom/bumptech/glide/integration/webp/decoder/WebpDownsampler;)V

    .line 47
    new-instance v5, Lcom/bumptech/glide/integration/webp/decoder/StreamBitmapWebpDecoder;

    invoke-direct {v5, v2, p2}, Lcom/bumptech/glide/integration/webp/decoder/StreamBitmapWebpDecoder;-><init>(Lcom/bumptech/glide/integration/webp/decoder/WebpDownsampler;Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;)V

    .line 49
    new-instance v2, Lcom/bumptech/glide/integration/webp/decoder/ByteBufferWebpDecoder;

    invoke-direct {v2, p1, p2, v1}, Lcom/bumptech/glide/integration/webp/decoder/ByteBufferWebpDecoder;-><init>(Landroid/content/Context;Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)V

    const-string p1, "Bitmap"

    .line 51
    const-class v1, Ljava/nio/ByteBuffer;

    const-class v6, Landroid/graphics/Bitmap;

    .line 53
    invoke-virtual {p3, p1, v1, v6, v4}, Lcom/bumptech/glide/Registry;->prepend(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/ResourceDecoder;)Lcom/bumptech/glide/Registry;

    move-result-object p1

    const-string p3, "Bitmap"

    const-class v1, Ljava/io/InputStream;

    const-class v6, Landroid/graphics/Bitmap;

    .line 54
    invoke-virtual {p1, p3, v1, v6, v5}, Lcom/bumptech/glide/Registry;->prepend(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/ResourceDecoder;)Lcom/bumptech/glide/Registry;

    move-result-object p1

    const-string p3, "BitmapDrawable"

    const-class v1, Ljava/nio/ByteBuffer;

    const-class v6, Landroid/graphics/drawable/BitmapDrawable;

    new-instance v7, Lcom/bumptech/glide/load/resource/bitmap/BitmapDrawableDecoder;

    invoke-direct {v7, v0, v4}, Lcom/bumptech/glide/load/resource/bitmap/BitmapDrawableDecoder;-><init>(Landroid/content/res/Resources;Lcom/bumptech/glide/load/ResourceDecoder;)V

    .line 56
    invoke-virtual {p1, p3, v1, v6, v7}, Lcom/bumptech/glide/Registry;->prepend(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/ResourceDecoder;)Lcom/bumptech/glide/Registry;

    move-result-object p1

    const-string p3, "BitmapDrawable"

    const-class v1, Ljava/io/InputStream;

    const-class v4, Landroid/graphics/drawable/BitmapDrawable;

    new-instance v6, Lcom/bumptech/glide/load/resource/bitmap/BitmapDrawableDecoder;

    invoke-direct {v6, v0, v5}, Lcom/bumptech/glide/load/resource/bitmap/BitmapDrawableDecoder;-><init>(Landroid/content/res/Resources;Lcom/bumptech/glide/load/ResourceDecoder;)V

    .line 61
    invoke-virtual {p1, p3, v1, v4, v6}, Lcom/bumptech/glide/Registry;->prepend(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/ResourceDecoder;)Lcom/bumptech/glide/Registry;

    move-result-object p1

    const-string p3, "Bitmap"

    const-class v0, Ljava/nio/ByteBuffer;

    const-class v1, Landroid/graphics/Bitmap;

    new-instance v4, Lcom/bumptech/glide/integration/webp/decoder/ByteBufferAnimatedBitmapDecoder;

    invoke-direct {v4, v3}, Lcom/bumptech/glide/integration/webp/decoder/ByteBufferAnimatedBitmapDecoder;-><init>(Lcom/bumptech/glide/integration/webp/decoder/AnimatedWebpBitmapDecoder;)V

    .line 67
    invoke-virtual {p1, p3, v0, v1, v4}, Lcom/bumptech/glide/Registry;->prepend(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/ResourceDecoder;)Lcom/bumptech/glide/Registry;

    move-result-object p1

    const-string p3, "Bitmap"

    const-class v0, Ljava/io/InputStream;

    const-class v1, Landroid/graphics/Bitmap;

    new-instance v4, Lcom/bumptech/glide/integration/webp/decoder/StreamAnimatedBitmapDecoder;

    invoke-direct {v4, v3}, Lcom/bumptech/glide/integration/webp/decoder/StreamAnimatedBitmapDecoder;-><init>(Lcom/bumptech/glide/integration/webp/decoder/AnimatedWebpBitmapDecoder;)V

    .line 68
    invoke-virtual {p1, p3, v0, v1, v4}, Lcom/bumptech/glide/Registry;->prepend(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/ResourceDecoder;)Lcom/bumptech/glide/Registry;

    move-result-object p1

    const-class p3, Ljava/nio/ByteBuffer;

    const-class v0, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable;

    .line 70
    invoke-virtual {p1, p3, v0, v2}, Lcom/bumptech/glide/Registry;->prepend(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/ResourceDecoder;)Lcom/bumptech/glide/Registry;

    move-result-object p1

    const-class p3, Ljava/io/InputStream;

    const-class v0, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable;

    new-instance v1, Lcom/bumptech/glide/integration/webp/decoder/StreamWebpDecoder;

    invoke-direct {v1, v2, p2}, Lcom/bumptech/glide/integration/webp/decoder/StreamWebpDecoder;-><init>(Lcom/bumptech/glide/load/ResourceDecoder;Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;)V

    .line 71
    invoke-virtual {p1, p3, v0, v1}, Lcom/bumptech/glide/Registry;->prepend(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/ResourceDecoder;)Lcom/bumptech/glide/Registry;

    move-result-object p1

    const-class p2, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable;

    new-instance p3, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawableEncoder;

    invoke-direct {p3}, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawableEncoder;-><init>()V

    .line 72
    invoke-virtual {p1, p2, p3}, Lcom/bumptech/glide/Registry;->prepend(Ljava/lang/Class;Lcom/bumptech/glide/load/ResourceEncoder;)Lcom/bumptech/glide/Registry;

    return-void
.end method
