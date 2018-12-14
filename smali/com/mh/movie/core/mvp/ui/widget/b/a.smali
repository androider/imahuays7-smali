.class public Lcom/mh/movie/core/mvp/ui/widget/b/a;
.super Ljava/lang/Object;
.source "WebpBytebufferDecoder.java"

# interfaces
.implements Lcom/bumptech/glide/load/ResourceDecoder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mh/movie/core/mvp/ui/widget/b/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/ResourceDecoder<",
        "Ljava/nio/ByteBuffer;",
        "Lcom/mh/movie/core/mvp/ui/widget/b/c;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/ImageHeaderParser;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Landroid/content/Context;

.field private final d:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

.field private final e:Lcom/bumptech/glide/load/resource/gif/GifBitmapProvider;

.field private final f:Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 45
    invoke-static {p1}, Lcom/bumptech/glide/Glide;->get(Landroid/content/Context;)Lcom/bumptech/glide/Glide;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/Glide;->getRegistry()Lcom/bumptech/glide/Registry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/Registry;->getImageHeaderParsers()Ljava/util/List;

    move-result-object v0

    invoke-static {p1}, Lcom/bumptech/glide/Glide;->get(Landroid/content/Context;)Lcom/bumptech/glide/Glide;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bumptech/glide/Glide;->getArrayPool()Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;

    move-result-object v1

    .line 46
    invoke-static {p1}, Lcom/bumptech/glide/Glide;->get(Landroid/content/Context;)Lcom/bumptech/glide/Glide;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bumptech/glide/Glide;->getBitmapPool()Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    move-result-object v2

    .line 45
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/mh/movie/core/mvp/ui/widget/b/a;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)V

    const/4 v0, 0x0

    .line 49
    :try_start_0
    invoke-static {p1, v0}, Lcom/facebook/soloader/SoLoader;->a(Landroid/content/Context;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "WebpBytebufferDecoder"

    const-string v1, "Failed to init SoLoader"

    .line 51
    invoke-static {v0, v1, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/ImageHeaderParser;",
            ">;",
            "Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;",
            "Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;",
            ")V"
        }
    .end annotation

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "WebpBytebufferDecoder"

    .line 36
    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/b/a;->a:Ljava/lang/String;

    .line 57
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/b/a;->c:Landroid/content/Context;

    .line 58
    iput-object p2, p0, Lcom/mh/movie/core/mvp/ui/widget/b/a;->b:Ljava/util/List;

    .line 59
    iput-object p4, p0, Lcom/mh/movie/core/mvp/ui/widget/b/a;->d:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    .line 60
    new-instance p1, Lcom/bumptech/glide/load/resource/gif/GifBitmapProvider;

    invoke-direct {p1, p4, p3}, Lcom/bumptech/glide/load/resource/gif/GifBitmapProvider;-><init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;)V

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/b/a;->e:Lcom/bumptech/glide/load/resource/gif/GifBitmapProvider;

    .line 61
    iput-object p3, p0, Lcom/mh/movie/core/mvp/ui/widget/b/a;->f:Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;

    return-void
.end method

.method private static a(IIII)I
    .locals 0

    .line 100
    div-int/2addr p1, p3

    div-int/2addr p0, p2

    invoke-static {p1, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 102
    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result p0

    :goto_0
    const/4 p1, 0x1

    .line 105
    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method


# virtual methods
.method public a(Ljava/nio/ByteBuffer;IILcom/bumptech/glide/load/Options;)Lcom/bumptech/glide/load/engine/Resource;
    .locals 8
    .param p1    # Ljava/nio/ByteBuffer;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/bumptech/glide/load/Options;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            "II",
            "Lcom/bumptech/glide/load/Options;",
            ")",
            "Lcom/bumptech/glide/load/engine/Resource<",
            "Lcom/mh/movie/core/mvp/ui/widget/b/c;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 76
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result p4

    if-eqz p4, :cond_0

    .line 77
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    goto :goto_0

    .line 79
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result p4

    new-array p4, p4, [B

    .line 80
    invoke-virtual {p1, p4}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    move-object p1, p4

    .line 84
    :goto_0
    invoke-static {p1}, Lcom/facebook/animated/webp/WebPImage;->a([B)Lcom/facebook/animated/webp/WebPImage;

    move-result-object p1

    .line 86
    invoke-virtual {p1}, Lcom/facebook/animated/webp/WebPImage;->a()I

    move-result p4

    invoke-virtual {p1}, Lcom/facebook/animated/webp/WebPImage;->b()I

    move-result v0

    invoke-static {p4, v0, p2, p3}, Lcom/mh/movie/core/mvp/ui/widget/b/a;->a(IIII)I

    move-result p4

    .line 87
    new-instance v2, Lcom/mh/movie/core/mvp/ui/widget/b/b;

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/b/a;->e:Lcom/bumptech/glide/load/resource/gif/GifBitmapProvider;

    invoke-direct {v2, v0, p1, p4}, Lcom/mh/movie/core/mvp/ui/widget/b/b;-><init>(Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;Lcom/facebook/animated/webp/WebPImage;I)V

    .line 88
    invoke-virtual {v2}, Lcom/mh/movie/core/mvp/ui/widget/b/b;->getNextFrame()Landroid/graphics/Bitmap;

    move-result-object v7

    if-nez v7, :cond_1

    const/4 p1, 0x0

    return-object p1

    .line 93
    :cond_1
    invoke-static {}, Lcom/bumptech/glide/load/resource/UnitTransformation;->get()Lcom/bumptech/glide/load/resource/UnitTransformation;

    move-result-object v4

    .line 95
    new-instance p1, Lcom/mh/movie/core/mvp/ui/widget/b/a$a;

    new-instance p4, Lcom/mh/movie/core/mvp/ui/widget/b/c;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/b/a;->c:Landroid/content/Context;

    iget-object v3, p0, Lcom/mh/movie/core/mvp/ui/widget/b/a;->d:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    move-object v0, p4

    move v5, p2

    move v6, p3

    invoke-direct/range {v0 .. v7}, Lcom/mh/movie/core/mvp/ui/widget/b/c;-><init>(Landroid/content/Context;Lcom/bumptech/glide/gifdecoder/GifDecoder;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/bumptech/glide/load/Transformation;IILandroid/graphics/Bitmap;)V

    invoke-direct {p1, p0, p4}, Lcom/mh/movie/core/mvp/ui/widget/b/a$a;-><init>(Lcom/mh/movie/core/mvp/ui/widget/b/a;Lcom/mh/movie/core/mvp/ui/widget/b/c;)V

    return-object p1
.end method

.method public a(Ljava/nio/ByteBuffer;Lcom/bumptech/glide/load/Options;)Z
    .locals 0
    .param p1    # Ljava/nio/ByteBuffer;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/load/Options;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 67
    iget-object p2, p0, Lcom/mh/movie/core/mvp/ui/widget/b/a;->b:Ljava/util/List;

    invoke-static {p2, p1}, Lcom/bumptech/glide/load/ImageHeaderParserUtils;->getType(Ljava/util/List;Ljava/nio/ByteBuffer;)Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    move-result-object p1

    .line 68
    sget-object p2, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->WEBP:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    if-eq p1, p2, :cond_1

    sget-object p2, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->WEBP_A:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public synthetic decode(Ljava/lang/Object;IILcom/bumptech/glide/load/Options;)Lcom/bumptech/glide/load/engine/Resource;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/bumptech/glide/load/Options;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 34
    check-cast p1, Ljava/nio/ByteBuffer;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/mh/movie/core/mvp/ui/widget/b/a;->a(Ljava/nio/ByteBuffer;IILcom/bumptech/glide/load/Options;)Lcom/bumptech/glide/load/engine/Resource;

    move-result-object p1

    return-object p1
.end method

.method public synthetic handles(Ljava/lang/Object;Lcom/bumptech/glide/load/Options;)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/load/Options;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 34
    check-cast p1, Ljava/nio/ByteBuffer;

    invoke-virtual {p0, p1, p2}, Lcom/mh/movie/core/mvp/ui/widget/b/a;->a(Ljava/nio/ByteBuffer;Lcom/bumptech/glide/load/Options;)Z

    move-result p1

    return p1
.end method
