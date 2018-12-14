.class public Lcom/mh/movie/core/mvp/ui/widget/b/b;
.super Ljava/lang/Object;
.source "WebpDecoder.java"

# interfaces
.implements Lcom/bumptech/glide/gifdecoder/GifDecoder;


# instance fields
.field private a:Lcom/facebook/animated/webp/WebPImage;

.field private b:Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;

.field private c:I

.field private d:[I

.field private e:I

.field private f:I

.field private g:[Z

.field private h:I

.field private i:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;Lcom/facebook/animated/webp/WebPImage;I)V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/b/b;->b:Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;

    .line 36
    iput-object p2, p0, Lcom/mh/movie/core/mvp/ui/widget/b/b;->a:Lcom/facebook/animated/webp/WebPImage;

    .line 37
    invoke-virtual {p2}, Lcom/facebook/animated/webp/WebPImage;->d()[I

    move-result-object p1

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/b/b;->d:[I

    .line 38
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/b/b;->d:[I

    array-length p1, p1

    new-array p1, p1, [Z

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/b/b;->g:[Z

    .line 39
    invoke-virtual {p2}, Lcom/facebook/animated/webp/WebPImage;->a()I

    move-result p1

    div-int/2addr p1, p3

    iput p1, p0, Lcom/mh/movie/core/mvp/ui/widget/b/b;->e:I

    .line 40
    invoke-virtual {p2}, Lcom/facebook/animated/webp/WebPImage;->b()I

    move-result p1

    div-int/2addr p1, p3

    iput p1, p0, Lcom/mh/movie/core/mvp/ui/widget/b/b;->f:I

    .line 41
    iput p3, p0, Lcom/mh/movie/core/mvp/ui/widget/b/b;->h:I

    return-void
.end method

.method private a(I)Z
    .locals 4

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    .line 162
    :cond_0
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/b/b;->a:Lcom/facebook/animated/webp/WebPImage;

    invoke-virtual {v1, p1}, Lcom/facebook/animated/webp/WebPImage;->b(I)Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo;

    move-result-object v1

    .line 163
    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/widget/b/b;->a:Lcom/facebook/animated/webp/WebPImage;

    sub-int/2addr p1, v0

    invoke-virtual {v2, p1}, Lcom/facebook/animated/webp/WebPImage;->b(I)Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo;

    move-result-object p1

    .line 164
    iget-object v2, v1, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo;->f:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo$BlendOperation;

    sget-object v3, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo$BlendOperation;->NO_BLEND:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo$BlendOperation;

    if-ne v2, v3, :cond_1

    .line 165
    invoke-direct {p0, v1}, Lcom/mh/movie/core/mvp/ui/widget/b/b;->a(Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    .line 168
    :cond_1
    iget-object v1, p1, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo;->g:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo$DisposalMethod;

    sget-object v2, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo$DisposalMethod;->DISPOSE_TO_BACKGROUND:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo$DisposalMethod;

    if-ne v1, v2, :cond_2

    .line 169
    invoke-direct {p0, p1}, Lcom/mh/movie/core/mvp/ui/widget/b/b;->a(Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private a(Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo;)Z
    .locals 2

    .line 174
    iget v0, p1, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo;->c:I

    if-nez v0, :cond_0

    iget v0, p1, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo;->b:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/b/b;->a:Lcom/facebook/animated/webp/WebPImage;

    .line 175
    invoke-virtual {v0}, Lcom/facebook/animated/webp/WebPImage;->b()I

    move-result v0

    iget v1, p1, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo;->d:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/b/b;->a:Lcom/facebook/animated/webp/WebPImage;

    .line 176
    invoke-virtual {v0}, Lcom/facebook/animated/webp/WebPImage;->a()I

    move-result v0

    iget p1, p1, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo;->e:I

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public advance()V
    .locals 2

    .line 66
    iget v0, p0, Lcom/mh/movie/core/mvp/ui/widget/b/b;->c:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/b/b;->a:Lcom/facebook/animated/webp/WebPImage;

    invoke-virtual {v1}, Lcom/facebook/animated/webp/WebPImage;->c()I

    move-result v1

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/mh/movie/core/mvp/ui/widget/b/b;->c:I

    return-void
.end method

.method public clear()V
    .locals 1

    .line 186
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/b/b;->a:Lcom/facebook/animated/webp/WebPImage;

    invoke-virtual {v0}, Lcom/facebook/animated/webp/WebPImage;->h()V

    const/4 v0, 0x0

    .line 187
    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/b/b;->a:Lcom/facebook/animated/webp/WebPImage;

    return-void
.end method

.method public getByteSize()I
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/b/b;->a:Lcom/facebook/animated/webp/WebPImage;

    invoke-virtual {v0}, Lcom/facebook/animated/webp/WebPImage;->g()I

    move-result v0

    return v0
.end method

.method public getCurrentFrameIndex()I
    .locals 1

    .line 94
    iget v0, p0, Lcom/mh/movie/core/mvp/ui/widget/b/b;->c:I

    return v0
.end method

.method public getData()Ljava/nio/ByteBuffer;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getDelay(I)I
    .locals 1

    if-ltz p1, :cond_0

    .line 72
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/b/b;->d:[I

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/b/b;->d:[I

    aget p1, v0, p1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method public getFrameCount()I
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/b/b;->a:Lcom/facebook/animated/webp/WebPImage;

    invoke-virtual {v0}, Lcom/facebook/animated/webp/WebPImage;->c()I

    move-result v0

    return v0
.end method

.method public getHeight()I
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/b/b;->a:Lcom/facebook/animated/webp/WebPImage;

    invoke-virtual {v0}, Lcom/facebook/animated/webp/WebPImage;->b()I

    move-result v0

    return v0
.end method

.method public getLoopCount()I
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/b/b;->a:Lcom/facebook/animated/webp/WebPImage;

    invoke-virtual {v0}, Lcom/facebook/animated/webp/WebPImage;->e()I

    move-result v0

    return v0
.end method

.method public getNetscapeLoopCount()I
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/b/b;->a:Lcom/facebook/animated/webp/WebPImage;

    invoke-virtual {v0}, Lcom/facebook/animated/webp/WebPImage;->e()I

    move-result v0

    return v0
.end method

.method public getNextDelay()I
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/b/b;->d:[I

    array-length v0, v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/mh/movie/core/mvp/ui/widget/b/b;->c:I

    if-gez v0, :cond_0

    goto :goto_0

    .line 84
    :cond_0
    iget v0, p0, Lcom/mh/movie/core/mvp/ui/widget/b/b;->c:I

    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/widget/b/b;->getDelay(I)I

    move-result v0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public getNextFrame()Landroid/graphics/Bitmap;
    .locals 10

    .line 127
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/b/b;->b:Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;

    iget v1, p0, Lcom/mh/movie/core/mvp/ui/widget/b/b;->e:I

    iget v2, p0, Lcom/mh/movie/core/mvp/ui/widget/b/b;->f:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-interface {v0, v1, v2, v3}, Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;->obtain(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 128
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/b/b;->getCurrentFrameIndex()I

    move-result v1

    .line 129
    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/widget/b/b;->a:Lcom/facebook/animated/webp/WebPImage;

    invoke-virtual {v2, v1}, Lcom/facebook/animated/webp/WebPImage;->a(I)Lcom/facebook/animated/webp/WebPFrame;

    move-result-object v2

    .line 132
    invoke-direct {p0, v1}, Lcom/mh/movie/core/mvp/ui/widget/b/b;->a(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 133
    iget-object v3, p0, Lcom/mh/movie/core/mvp/ui/widget/b/b;->g:[Z

    const/4 v4, 0x1

    aput-boolean v4, v3, v1

    .line 134
    iget v1, p0, Lcom/mh/movie/core/mvp/ui/widget/b/b;->e:I

    iget v3, p0, Lcom/mh/movie/core/mvp/ui/widget/b/b;->f:I

    invoke-virtual {v2, v1, v3, v0}, Lcom/facebook/animated/webp/WebPFrame;->a(IILandroid/graphics/Bitmap;)V

    .line 136
    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/b/b;->i:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 138
    :cond_0
    invoke-virtual {v2}, Lcom/facebook/animated/webp/WebPFrame;->b()I

    move-result v1

    iget v3, p0, Lcom/mh/movie/core/mvp/ui/widget/b/b;->h:I

    div-int/2addr v1, v3

    .line 139
    invoke-virtual {v2}, Lcom/facebook/animated/webp/WebPFrame;->c()I

    move-result v3

    iget v4, p0, Lcom/mh/movie/core/mvp/ui/widget/b/b;->h:I

    div-int/2addr v3, v4

    .line 140
    invoke-virtual {v2}, Lcom/facebook/animated/webp/WebPFrame;->d()I

    move-result v4

    iget v5, p0, Lcom/mh/movie/core/mvp/ui/widget/b/b;->h:I

    div-int/2addr v4, v5

    .line 141
    invoke-virtual {v2}, Lcom/facebook/animated/webp/WebPFrame;->e()I

    move-result v5

    iget v6, p0, Lcom/mh/movie/core/mvp/ui/widget/b/b;->h:I

    div-int/2addr v5, v6

    .line 143
    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 144
    iget-object v7, p0, Lcom/mh/movie/core/mvp/ui/widget/b/b;->i:Landroid/graphics/Bitmap;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v9, v9, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 146
    iget-object v7, p0, Lcom/mh/movie/core/mvp/ui/widget/b/b;->b:Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;

    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-interface {v7, v1, v3, v9}, Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;->obtain(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 147
    invoke-virtual {v2, v1, v3, v7}, Lcom/facebook/animated/webp/WebPFrame;->a(IILandroid/graphics/Bitmap;)V

    int-to-float v1, v4

    int-to-float v3, v5

    .line 148
    invoke-virtual {v6, v7, v1, v3, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 150
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/b/b;->b:Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;

    invoke-interface {v1, v7}, Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;->release(Landroid/graphics/Bitmap;)V

    .line 151
    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/b/b;->i:Landroid/graphics/Bitmap;

    .line 153
    :goto_0
    invoke-virtual {v2}, Lcom/facebook/animated/webp/WebPFrame;->a()V

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getTotalIterationCount()I
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/b/b;->a:Lcom/facebook/animated/webp/WebPImage;

    invoke-virtual {v0}, Lcom/facebook/animated/webp/WebPImage;->e()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/b/b;->a:Lcom/facebook/animated/webp/WebPImage;

    invoke-virtual {v0}, Lcom/facebook/animated/webp/WebPImage;->c()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getWidth()I
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/b/b;->a:Lcom/facebook/animated/webp/WebPImage;

    invoke-virtual {v0}, Lcom/facebook/animated/webp/WebPImage;->a()I

    move-result v0

    return v0
.end method

.method public read(Ljava/io/InputStream;I)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public read([B)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public resetFrameIndex()V
    .locals 1

    const/4 v0, -0x1

    .line 99
    iput v0, p0, Lcom/mh/movie/core/mvp/ui/widget/b/b;->c:I

    return-void
.end method

.method public setData(Lcom/bumptech/glide/gifdecoder/GifHeader;Ljava/nio/ByteBuffer;)V
    .locals 0

    return-void
.end method

.method public setData(Lcom/bumptech/glide/gifdecoder/GifHeader;Ljava/nio/ByteBuffer;I)V
    .locals 0

    return-void
.end method

.method public setData(Lcom/bumptech/glide/gifdecoder/GifHeader;[B)V
    .locals 0

    return-void
.end method

.method public setDefaultBitmapConfig(Landroid/graphics/Bitmap$Config;)V
    .locals 0
    .param p1    # Landroid/graphics/Bitmap$Config;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method
