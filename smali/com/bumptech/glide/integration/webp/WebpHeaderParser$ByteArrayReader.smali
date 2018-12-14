.class final Lcom/bumptech/glide/integration/webp/WebpHeaderParser$ByteArrayReader;
.super Ljava/lang/Object;
.source "WebpHeaderParser.java"

# interfaces
.implements Lcom/bumptech/glide/integration/webp/WebpHeaderParser$Reader;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/integration/webp/WebpHeaderParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ByteArrayReader"
.end annotation


# instance fields
.field private final data:[B

.field private final offset:I

.field private pos:I

.field private final size:I


# direct methods
.method constructor <init>([BII)V
    .locals 0

    .line 244
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 245
    iput-object p1, p0, Lcom/bumptech/glide/integration/webp/WebpHeaderParser$ByteArrayReader;->data:[B

    .line 246
    iput p2, p0, Lcom/bumptech/glide/integration/webp/WebpHeaderParser$ByteArrayReader;->offset:I

    .line 247
    iput p3, p0, Lcom/bumptech/glide/integration/webp/WebpHeaderParser$ByteArrayReader;->size:I

    .line 248
    iput p2, p0, Lcom/bumptech/glide/integration/webp/WebpHeaderParser$ByteArrayReader;->pos:I

    return-void
.end method


# virtual methods
.method public getByte()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 280
    iget v0, p0, Lcom/bumptech/glide/integration/webp/WebpHeaderParser$ByteArrayReader;->pos:I

    iget v1, p0, Lcom/bumptech/glide/integration/webp/WebpHeaderParser$ByteArrayReader;->offset:I

    iget v2, p0, Lcom/bumptech/glide/integration/webp/WebpHeaderParser$ByteArrayReader;->size:I

    add-int/2addr v1, v2

    if-lt v0, v1, :cond_0

    const/4 v0, -0x1

    return v0

    .line 283
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/integration/webp/WebpHeaderParser$ByteArrayReader;->data:[B

    iget v1, p0, Lcom/bumptech/glide/integration/webp/WebpHeaderParser$ByteArrayReader;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/bumptech/glide/integration/webp/WebpHeaderParser$ByteArrayReader;->pos:I

    aget-byte v0, v0, v1

    return v0
.end method

.method public getUInt16()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 253
    invoke-virtual {p0}, Lcom/bumptech/glide/integration/webp/WebpHeaderParser$ByteArrayReader;->getByte()I

    move-result v0

    shl-int/lit8 v0, v0, 0x8

    const v1, 0xff00

    and-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/bumptech/glide/integration/webp/WebpHeaderParser$ByteArrayReader;->getByte()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method public getUInt8()S
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 258
    invoke-virtual {p0}, Lcom/bumptech/glide/integration/webp/WebpHeaderParser$ByteArrayReader;->getByte()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-short v0, v0

    return v0
.end method

.method public read([BI)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 270
    iget v0, p0, Lcom/bumptech/glide/integration/webp/WebpHeaderParser$ByteArrayReader;->offset:I

    iget v1, p0, Lcom/bumptech/glide/integration/webp/WebpHeaderParser$ByteArrayReader;->size:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/bumptech/glide/integration/webp/WebpHeaderParser$ByteArrayReader;->pos:I

    sub-int/2addr v0, v1

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    if-nez p2, :cond_0

    const/4 p1, -0x1

    return p1

    .line 274
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/integration/webp/WebpHeaderParser$ByteArrayReader;->data:[B

    iget v1, p0, Lcom/bumptech/glide/integration/webp/WebpHeaderParser$ByteArrayReader;->pos:I

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return p2
.end method

.method public skip(J)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 263
    iget v0, p0, Lcom/bumptech/glide/integration/webp/WebpHeaderParser$ByteArrayReader;->offset:I

    iget v1, p0, Lcom/bumptech/glide/integration/webp/WebpHeaderParser$ByteArrayReader;->size:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/bumptech/glide/integration/webp/WebpHeaderParser$ByteArrayReader;->pos:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    long-to-int p1, p1

    .line 264
    iget p2, p0, Lcom/bumptech/glide/integration/webp/WebpHeaderParser$ByteArrayReader;->pos:I

    add-int/2addr p2, p1

    iput p2, p0, Lcom/bumptech/glide/integration/webp/WebpHeaderParser$ByteArrayReader;->pos:I

    int-to-long p1, p1

    return-wide p1
.end method
