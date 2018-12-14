.class public Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;
.super Ljava/lang/Object;
.source "WebpFrameLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader$FrameCallback;,
        Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader$FrameLoaderCallback;,
        Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader$DelayTarget;,
        Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader$FrameSignature;
    }
.end annotation


# instance fields
.field private final bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

.field private final callbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader$FrameCallback;",
            ">;"
        }
    .end annotation
.end field

.field private current:Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader$DelayTarget;

.field private firstFrame:Landroid/graphics/Bitmap;

.field private final gifDecoder:Lcom/bumptech/glide/gifdecoder/GifDecoder;

.field private final handler:Landroid/os/Handler;

.field private isCleared:Z

.field private isLoadPending:Z

.field private isRunning:Z

.field private next:Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader$DelayTarget;

.field private requestBuilder:Lcom/bumptech/glide/RequestBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/RequestBuilder<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field final requestManager:Lcom/bumptech/glide/RequestManager;

.field private startFromFirstFrame:Z

.field private transformation:Lcom/bumptech/glide/load/Transformation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/Transformation<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/Glide;Lcom/bumptech/glide/gifdecoder/GifDecoder;IILcom/bumptech/glide/load/Transformation;Landroid/graphics/Bitmap;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/Glide;",
            "Lcom/bumptech/glide/gifdecoder/GifDecoder;",
            "II",
            "Lcom/bumptech/glide/load/Transformation<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Landroid/graphics/Bitmap;",
            ")V"
        }
    .end annotation

    .line 52
    invoke-virtual {p1}, Lcom/bumptech/glide/Glide;->getBitmapPool()Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    move-result-object v1

    invoke-virtual {p1}, Lcom/bumptech/glide/Glide;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v2

    const/4 v0, 0x0

    move-object v4, v0

    check-cast v4, Landroid/os/Handler;

    invoke-virtual {p1}, Lcom/bumptech/glide/Glide;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object p1

    invoke-static {p1, p3, p4}, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->getRequestBuilder(Lcom/bumptech/glide/RequestManager;II)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v5

    move-object v0, p0

    move-object v3, p2

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;-><init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/bumptech/glide/RequestManager;Lcom/bumptech/glide/gifdecoder/GifDecoder;Landroid/os/Handler;Lcom/bumptech/glide/RequestBuilder;Lcom/bumptech/glide/load/Transformation;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method constructor <init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/bumptech/glide/RequestManager;Lcom/bumptech/glide/gifdecoder/GifDecoder;Landroid/os/Handler;Lcom/bumptech/glide/RequestBuilder;Lcom/bumptech/glide/load/Transformation;Landroid/graphics/Bitmap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;",
            "Lcom/bumptech/glide/RequestManager;",
            "Lcom/bumptech/glide/gifdecoder/GifDecoder;",
            "Landroid/os/Handler;",
            "Lcom/bumptech/glide/RequestBuilder<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Lcom/bumptech/glide/load/Transformation<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Landroid/graphics/Bitmap;",
            ")V"
        }
    .end annotation

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->callbacks:Ljava/util/List;

    const/4 v0, 0x0

    .line 57
    iput-boolean v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->isRunning:Z

    .line 58
    iput-boolean v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->isLoadPending:Z

    .line 59
    iput-boolean v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->startFromFirstFrame:Z

    .line 60
    iput-object p2, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->requestManager:Lcom/bumptech/glide/RequestManager;

    if-nez p4, :cond_0

    .line 62
    new-instance p4, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    new-instance v0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader$FrameLoaderCallback;

    invoke-direct {v0, p0}, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader$FrameLoaderCallback;-><init>(Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;)V

    invoke-direct {p4, p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    .line 65
    :cond_0
    iput-object p1, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    .line 66
    iput-object p4, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->handler:Landroid/os/Handler;

    .line 67
    iput-object p5, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->requestBuilder:Lcom/bumptech/glide/RequestBuilder;

    .line 68
    iput-object p3, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->gifDecoder:Lcom/bumptech/glide/gifdecoder/GifDecoder;

    .line 69
    invoke-virtual {p0, p6, p7}, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->setFrameTransformation(Lcom/bumptech/glide/load/Transformation;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private getFrameSize()I
    .locals 3

    .line 128
    invoke-virtual {p0}, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->getCurrentFrame()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->getCurrentFrame()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->getCurrentFrame()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/bumptech/glide/util/Util;->getBitmapByteSize(IILandroid/graphics/Bitmap$Config;)I

    move-result v0

    return v0
.end method

.method private static getRequestBuilder(Lcom/bumptech/glide/RequestManager;II)Lcom/bumptech/glide/RequestBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/RequestManager;",
            "II)",
            "Lcom/bumptech/glide/RequestBuilder<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 231
    invoke-virtual {p0}, Lcom/bumptech/glide/RequestManager;->asBitmap()Lcom/bumptech/glide/RequestBuilder;

    move-result-object p0

    sget-object v0, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->NONE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-static {v0}, Lcom/bumptech/glide/request/RequestOptions;->diskCacheStrategyOf(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/RequestOptions;->skipMemoryCache(Z)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/bumptech/glide/request/RequestOptions;->override(II)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/RequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p0

    return-object p0
.end method

.method private loadNextFrame()V
    .locals 7

    .line 178
    iget-boolean v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->isRunning:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->isLoadPending:Z

    if-nez v0, :cond_1

    .line 179
    iget-boolean v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->startFromFirstFrame:Z

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->gifDecoder:Lcom/bumptech/glide/gifdecoder/GifDecoder;

    invoke-interface {v0}, Lcom/bumptech/glide/gifdecoder/GifDecoder;->resetFrameIndex()V

    const/4 v0, 0x0

    .line 181
    iput-boolean v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->startFromFirstFrame:Z

    :cond_0
    const/4 v0, 0x1

    .line 184
    iput-boolean v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->isLoadPending:Z

    .line 185
    iget-object v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->gifDecoder:Lcom/bumptech/glide/gifdecoder/GifDecoder;

    invoke-interface {v0}, Lcom/bumptech/glide/gifdecoder/GifDecoder;->getNextDelay()I

    move-result v0

    .line 186
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    int-to-long v3, v0

    add-long v5, v1, v3

    .line 187
    iget-object v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->gifDecoder:Lcom/bumptech/glide/gifdecoder/GifDecoder;

    invoke-interface {v0}, Lcom/bumptech/glide/gifdecoder/GifDecoder;->advance()V

    .line 188
    new-instance v0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader$DelayTarget;

    iget-object v1, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->gifDecoder:Lcom/bumptech/glide/gifdecoder/GifDecoder;

    invoke-interface {v2}, Lcom/bumptech/glide/gifdecoder/GifDecoder;->getCurrentFrameIndex()I

    move-result v2

    invoke-direct {v0, v1, v2, v5, v6}, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader$DelayTarget;-><init>(Landroid/os/Handler;IJ)V

    iput-object v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->next:Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader$DelayTarget;

    .line 189
    iget-object v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->requestBuilder:Lcom/bumptech/glide/RequestBuilder;

    invoke-virtual {v0}, Lcom/bumptech/glide/RequestBuilder;->clone()Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    new-instance v1, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader$FrameSignature;

    invoke-direct {v1}, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader$FrameSignature;-><init>()V

    invoke-static {v1}, Lcom/bumptech/glide/request/RequestOptions;->signatureOf(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/RequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->gifDecoder:Lcom/bumptech/glide/gifdecoder/GifDecoder;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->load(Ljava/lang/Object;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->next:Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader$DelayTarget;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->into(Lcom/bumptech/glide/request/target/Target;)Lcom/bumptech/glide/request/target/Target;

    :cond_1
    return-void
.end method

.method private recycleFirstFrame()V
    .locals 2

    .line 194
    iget-object v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->firstFrame:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    iget-object v1, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->firstFrame:Landroid/graphics/Bitmap;

    invoke-interface {v0, v1}, Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;->put(Landroid/graphics/Bitmap;)V

    const/4 v0, 0x0

    .line 196
    iput-object v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->firstFrame:Landroid/graphics/Bitmap;

    :cond_0
    return-void
.end method

.method private start()V
    .locals 1

    .line 144
    iget-boolean v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->isRunning:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 145
    iput-boolean v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->isRunning:Z

    const/4 v0, 0x0

    .line 146
    iput-boolean v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->isCleared:Z

    .line 147
    invoke-direct {p0}, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->loadNextFrame()V

    :cond_0
    return-void
.end method

.method private stop()V
    .locals 1

    const/4 v0, 0x0

    .line 152
    iput-boolean v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->isRunning:Z

    return-void
.end method


# virtual methods
.method clear()V
    .locals 3

    .line 156
    iget-object v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->callbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 157
    invoke-direct {p0}, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->recycleFirstFrame()V

    .line 158
    invoke-direct {p0}, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->stop()V

    .line 159
    iget-object v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->current:Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader$DelayTarget;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->requestManager:Lcom/bumptech/glide/RequestManager;

    iget-object v2, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->current:Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader$DelayTarget;

    invoke-virtual {v0, v2}, Lcom/bumptech/glide/RequestManager;->clear(Lcom/bumptech/glide/request/target/Target;)V

    .line 161
    iput-object v1, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->current:Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader$DelayTarget;

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->next:Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader$DelayTarget;

    if-eqz v0, :cond_1

    .line 165
    iget-object v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->requestManager:Lcom/bumptech/glide/RequestManager;

    iget-object v2, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->next:Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader$DelayTarget;

    invoke-virtual {v0, v2}, Lcom/bumptech/glide/RequestManager;->clear(Lcom/bumptech/glide/request/target/Target;)V

    .line 166
    iput-object v1, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->next:Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader$DelayTarget;

    .line 169
    :cond_1
    iget-object v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->gifDecoder:Lcom/bumptech/glide/gifdecoder/GifDecoder;

    invoke-interface {v0}, Lcom/bumptech/glide/gifdecoder/GifDecoder;->clear()V

    const/4 v0, 0x1

    .line 170
    iput-boolean v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->isCleared:Z

    return-void
.end method

.method getBuffer()Ljava/nio/ByteBuffer;
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->gifDecoder:Lcom/bumptech/glide/gifdecoder/GifDecoder;

    invoke-interface {v0}, Lcom/bumptech/glide/gifdecoder/GifDecoder;->getData()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method getCurrentFrame()Landroid/graphics/Bitmap;
    .locals 1

    .line 174
    iget-object v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->current:Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader$DelayTarget;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->current:Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader$DelayTarget;

    invoke-virtual {v0}, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader$DelayTarget;->getResource()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->firstFrame:Landroid/graphics/Bitmap;

    :goto_0
    return-object v0
.end method

.method getCurrentIndex()I
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->current:Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader$DelayTarget;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->current:Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader$DelayTarget;

    iget v0, v0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader$DelayTarget;->index:I

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method getFirstFrame()Landroid/graphics/Bitmap;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->firstFrame:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method getFrameCount()I
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->gifDecoder:Lcom/bumptech/glide/gifdecoder/GifDecoder;

    invoke-interface {v0}, Lcom/bumptech/glide/gifdecoder/GifDecoder;->getFrameCount()I

    move-result v0

    return v0
.end method

.method getFrameTransformation()Lcom/bumptech/glide/load/Transformation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/load/Transformation<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 79
    iget-object v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->transformation:Lcom/bumptech/glide/load/Transformation;

    return-object v0
.end method

.method getHeight()I
    .locals 1

    .line 116
    invoke-virtual {p0}, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->getCurrentFrame()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    return v0
.end method

.method getLoopCount()I
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->gifDecoder:Lcom/bumptech/glide/gifdecoder/GifDecoder;

    invoke-interface {v0}, Lcom/bumptech/glide/gifdecoder/GifDecoder;->getTotalIterationCount()I

    move-result v0

    return v0
.end method

.method getSize()I
    .locals 2

    .line 120
    iget-object v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->gifDecoder:Lcom/bumptech/glide/gifdecoder/GifDecoder;

    invoke-interface {v0}, Lcom/bumptech/glide/gifdecoder/GifDecoder;->getByteSize()I

    move-result v0

    invoke-direct {p0}, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->getFrameSize()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method getWidth()I
    .locals 1

    .line 112
    invoke-virtual {p0}, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->getCurrentFrame()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    return v0
.end method

.method onFrameReady(Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader$DelayTarget;)V
    .locals 3

    .line 207
    iget-boolean v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->isCleared:Z

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1

    .line 210
    :cond_0
    invoke-virtual {p1}, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader$DelayTarget;->getResource()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 211
    invoke-direct {p0}, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->recycleFirstFrame()V

    .line 212
    iget-object v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->current:Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader$DelayTarget;

    .line 213
    iput-object p1, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->current:Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader$DelayTarget;

    .line 215
    iget-object p1, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->callbacks:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_0
    if-ltz p1, :cond_1

    .line 216
    iget-object v2, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->callbacks:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader$FrameCallback;

    .line 217
    invoke-interface {v2}, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader$FrameCallback;->onFrameReady()V

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    .line 221
    iget-object p1, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->handler:Landroid/os/Handler;

    invoke-virtual {p1, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_2
    const/4 p1, 0x0

    .line 225
    iput-boolean p1, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->isLoadPending:Z

    .line 226
    invoke-direct {p0}, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->loadNextFrame()V

    :goto_1
    return-void
.end method

.method setFrameTransformation(Lcom/bumptech/glide/load/Transformation;Landroid/graphics/Bitmap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/Transformation<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Landroid/graphics/Bitmap;",
            ")V"
        }
    .end annotation

    .line 73
    invoke-static {p1}, Lcom/bumptech/glide/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/Transformation;

    iput-object v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->transformation:Lcom/bumptech/glide/load/Transformation;

    .line 74
    invoke-static {p2}, Lcom/bumptech/glide/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/graphics/Bitmap;

    iput-object p2, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->firstFrame:Landroid/graphics/Bitmap;

    .line 75
    iget-object p2, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->requestBuilder:Lcom/bumptech/glide/RequestBuilder;

    new-instance v0, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v0}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/request/RequestOptions;->transform(Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/RequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    iput-object p1, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->requestBuilder:Lcom/bumptech/glide/RequestBuilder;

    return-void
.end method

.method setNextStartFromFirstFrame()V
    .locals 3

    .line 202
    iget-boolean v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->isRunning:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const-string v2, "Can\'t restart a running animation"

    invoke-static {v0, v2}, Lcom/bumptech/glide/util/Preconditions;->checkArgument(ZLjava/lang/String;)V

    .line 203
    iput-boolean v1, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->startFromFirstFrame:Z

    return-void
.end method

.method subscribe(Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader$FrameCallback;)V
    .locals 2

    .line 87
    iget-boolean v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->isCleared:Z

    if-eqz v0, :cond_0

    .line 88
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot subscribe to a cleared frame loader"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->callbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    .line 91
    iget-object v1, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->callbacks:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 92
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot subscribe twice in a row"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 94
    :cond_1
    iget-object v1, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->callbacks:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v0, :cond_2

    .line 96
    invoke-direct {p0}, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->start()V

    :cond_2
    return-void
.end method

.method unsubscribe(Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader$FrameCallback;)V
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->callbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 105
    iget-object p1, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->callbacks:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 106
    invoke-direct {p0}, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->stop()V

    :cond_0
    return-void
.end method
