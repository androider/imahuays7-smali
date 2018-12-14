.class public Lorg/apache/httpcore/b/c/o;
.super Ljava/lang/Object;
.source "SessionInputBufferImpl.java"

# interfaces
.implements Lorg/apache/httpcore/c/a;
.implements Lorg/apache/httpcore/c/g;


# instance fields
.field private final a:Lorg/apache/httpcore/b/c/l;

.field private final b:[B

.field private final c:Lorg/apache/httpcore/util/ByteArrayBuffer;

.field private final d:I

.field private final e:Lorg/apache/httpcore/a/b;

.field private final f:Ljava/nio/charset/CharsetDecoder;

.field private g:Ljava/io/InputStream;

.field private h:I

.field private i:I

.field private j:Ljava/nio/CharBuffer;


# direct methods
.method public constructor <init>(Lorg/apache/httpcore/b/c/l;IILorg/apache/httpcore/a/b;Ljava/nio/charset/CharsetDecoder;)V
    .locals 1

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "HTTP transport metrcis"

    .line 94
    invoke-static {p1, v0}, Lorg/apache/httpcore/util/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Buffer size"

    .line 95
    invoke-static {p2, v0}, Lorg/apache/httpcore/util/a;->a(ILjava/lang/String;)I

    .line 96
    iput-object p1, p0, Lorg/apache/httpcore/b/c/o;->a:Lorg/apache/httpcore/b/c/l;

    .line 97
    new-array p1, p2, [B

    iput-object p1, p0, Lorg/apache/httpcore/b/c/o;->b:[B

    const/4 p1, 0x0

    .line 98
    iput p1, p0, Lorg/apache/httpcore/b/c/o;->h:I

    .line 99
    iput p1, p0, Lorg/apache/httpcore/b/c/o;->i:I

    if-ltz p3, :cond_0

    goto :goto_0

    :cond_0
    const/16 p3, 0x200

    .line 100
    :goto_0
    iput p3, p0, Lorg/apache/httpcore/b/c/o;->d:I

    if-eqz p4, :cond_1

    goto :goto_1

    .line 101
    :cond_1
    sget-object p4, Lorg/apache/httpcore/a/b;->a:Lorg/apache/httpcore/a/b;

    :goto_1
    iput-object p4, p0, Lorg/apache/httpcore/b/c/o;->e:Lorg/apache/httpcore/a/b;

    .line 102
    new-instance p1, Lorg/apache/httpcore/util/ByteArrayBuffer;

    invoke-direct {p1, p2}, Lorg/apache/httpcore/util/ByteArrayBuffer;-><init>(I)V

    iput-object p1, p0, Lorg/apache/httpcore/b/c/o;->c:Lorg/apache/httpcore/util/ByteArrayBuffer;

    .line 103
    iput-object p5, p0, Lorg/apache/httpcore/b/c/o;->f:Ljava/nio/charset/CharsetDecoder;

    return-void
.end method

.method private a(Ljava/nio/charset/CoderResult;Lorg/apache/httpcore/util/CharArrayBuffer;Ljava/nio/ByteBuffer;)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 377
    invoke-virtual {p1}, Ljava/nio/charset/CoderResult;->isError()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 378
    invoke-virtual {p1}, Ljava/nio/charset/CoderResult;->throwException()V

    .line 380
    :cond_0
    iget-object p1, p0, Lorg/apache/httpcore/b/c/o;->j:Ljava/nio/CharBuffer;

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->flip()Ljava/nio/Buffer;

    .line 381
    iget-object p1, p0, Lorg/apache/httpcore/b/c/o;->j:Ljava/nio/CharBuffer;

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->remaining()I

    move-result p1

    .line 382
    :goto_0
    iget-object p3, p0, Lorg/apache/httpcore/b/c/o;->j:Ljava/nio/CharBuffer;

    invoke-virtual {p3}, Ljava/nio/CharBuffer;->hasRemaining()Z

    move-result p3

    if-eqz p3, :cond_1

    .line 383
    iget-object p3, p0, Lorg/apache/httpcore/b/c/o;->j:Ljava/nio/CharBuffer;

    invoke-virtual {p3}, Ljava/nio/CharBuffer;->get()C

    move-result p3

    invoke-virtual {p2, p3}, Lorg/apache/httpcore/util/CharArrayBuffer;->append(C)V

    goto :goto_0

    .line 385
    :cond_1
    iget-object p2, p0, Lorg/apache/httpcore/b/c/o;->j:Ljava/nio/CharBuffer;

    invoke-virtual {p2}, Ljava/nio/CharBuffer;->compact()Ljava/nio/CharBuffer;

    return p1
.end method

.method private a(Lorg/apache/httpcore/util/CharArrayBuffer;I)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 336
    iget v0, p0, Lorg/apache/httpcore/b/c/o;->h:I

    add-int/lit8 v1, p2, 0x1

    .line 338
    iput v1, p0, Lorg/apache/httpcore/b/c/o;->h:I

    if-le p2, v0, :cond_0

    .line 339
    iget-object v1, p0, Lorg/apache/httpcore/b/c/o;->b:[B

    add-int/lit8 v2, p2, -0x1

    aget-byte v1, v1, v2

    const/16 v2, 0xd

    if-ne v1, v2, :cond_0

    add-int/lit8 p2, p2, -0x1

    :cond_0
    sub-int/2addr p2, v0

    .line 344
    iget-object v1, p0, Lorg/apache/httpcore/b/c/o;->f:Ljava/nio/charset/CharsetDecoder;

    if-nez v1, :cond_1

    .line 345
    iget-object v1, p0, Lorg/apache/httpcore/b/c/o;->b:[B

    invoke-virtual {p1, v1, v0, p2}, Lorg/apache/httpcore/util/CharArrayBuffer;->append([BII)V

    goto :goto_0

    .line 347
    :cond_1
    iget-object v1, p0, Lorg/apache/httpcore/b/c/o;->b:[B

    invoke-static {v1, v0, p2}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object p2

    .line 348
    invoke-direct {p0, p1, p2}, Lorg/apache/httpcore/b/c/o;->a(Lorg/apache/httpcore/util/CharArrayBuffer;Ljava/nio/ByteBuffer;)I

    move-result p2

    :goto_0
    return p2
.end method

.method private a(Lorg/apache/httpcore/util/CharArrayBuffer;Ljava/nio/ByteBuffer;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 355
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 358
    :cond_0
    iget-object v0, p0, Lorg/apache/httpcore/b/c/o;->j:Ljava/nio/CharBuffer;

    if-nez v0, :cond_1

    const/16 v0, 0x400

    .line 359
    invoke-static {v0}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/httpcore/b/c/o;->j:Ljava/nio/CharBuffer;

    .line 361
    :cond_1
    iget-object v0, p0, Lorg/apache/httpcore/b/c/o;->f:Ljava/nio/charset/CharsetDecoder;

    invoke-virtual {v0}, Ljava/nio/charset/CharsetDecoder;->reset()Ljava/nio/charset/CharsetDecoder;

    .line 363
    :goto_0
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 364
    iget-object v0, p0, Lorg/apache/httpcore/b/c/o;->f:Ljava/nio/charset/CharsetDecoder;

    iget-object v2, p0, Lorg/apache/httpcore/b/c/o;->j:Ljava/nio/CharBuffer;

    const/4 v3, 0x1

    invoke-virtual {v0, p2, v2, v3}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v0

    .line 365
    invoke-direct {p0, v0, p1, p2}, Lorg/apache/httpcore/b/c/o;->a(Ljava/nio/charset/CoderResult;Lorg/apache/httpcore/util/CharArrayBuffer;Ljava/nio/ByteBuffer;)I

    move-result v0

    add-int/2addr v1, v0

    goto :goto_0

    .line 367
    :cond_2
    iget-object v0, p0, Lorg/apache/httpcore/b/c/o;->f:Ljava/nio/charset/CharsetDecoder;

    iget-object v2, p0, Lorg/apache/httpcore/b/c/o;->j:Ljava/nio/CharBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/charset/CharsetDecoder;->flush(Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;

    move-result-object v0

    .line 368
    invoke-direct {p0, v0, p1, p2}, Lorg/apache/httpcore/b/c/o;->a(Ljava/nio/charset/CoderResult;Lorg/apache/httpcore/util/CharArrayBuffer;Ljava/nio/ByteBuffer;)I

    move-result p1

    add-int/2addr v1, p1

    .line 369
    iget-object p1, p0, Lorg/apache/httpcore/b/c/o;->j:Ljava/nio/CharBuffer;

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->clear()Ljava/nio/Buffer;

    return v1
.end method

.method private b(Lorg/apache/httpcore/util/CharArrayBuffer;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 311
    iget-object v0, p0, Lorg/apache/httpcore/b/c/o;->c:Lorg/apache/httpcore/util/ByteArrayBuffer;

    invoke-virtual {v0}, Lorg/apache/httpcore/util/ByteArrayBuffer;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 313
    iget-object v1, p0, Lorg/apache/httpcore/b/c/o;->c:Lorg/apache/httpcore/util/ByteArrayBuffer;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Lorg/apache/httpcore/util/ByteArrayBuffer;->byteAt(I)I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_0

    add-int/lit8 v0, v0, -0x1

    :cond_0
    if-lez v0, :cond_1

    .line 318
    iget-object v1, p0, Lorg/apache/httpcore/b/c/o;->c:Lorg/apache/httpcore/util/ByteArrayBuffer;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Lorg/apache/httpcore/util/ByteArrayBuffer;->byteAt(I)I

    move-result v1

    const/16 v2, 0xd

    if-ne v1, v2, :cond_1

    add-int/lit8 v0, v0, -0x1

    .line 323
    :cond_1
    iget-object v1, p0, Lorg/apache/httpcore/b/c/o;->f:Ljava/nio/charset/CharsetDecoder;

    const/4 v2, 0x0

    if-nez v1, :cond_2

    .line 324
    iget-object v1, p0, Lorg/apache/httpcore/b/c/o;->c:Lorg/apache/httpcore/util/ByteArrayBuffer;

    invoke-virtual {p1, v1, v2, v0}, Lorg/apache/httpcore/util/CharArrayBuffer;->append(Lorg/apache/httpcore/util/ByteArrayBuffer;II)V

    goto :goto_0

    .line 326
    :cond_2
    iget-object v1, p0, Lorg/apache/httpcore/b/c/o;->c:Lorg/apache/httpcore/util/ByteArrayBuffer;

    invoke-virtual {v1}, Lorg/apache/httpcore/util/ByteArrayBuffer;->buffer()[B

    move-result-object v1

    invoke-static {v1, v2, v0}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 327
    invoke-direct {p0, p1, v0}, Lorg/apache/httpcore/b/c/o;->a(Lorg/apache/httpcore/util/CharArrayBuffer;Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 329
    :goto_0
    iget-object p1, p0, Lorg/apache/httpcore/b/c/o;->c:Lorg/apache/httpcore/util/ByteArrayBuffer;

    invoke-virtual {p1}, Lorg/apache/httpcore/util/ByteArrayBuffer;->clear()V

    return v0
.end method

.method private b([BII)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 136
    iget-object v0, p0, Lorg/apache/httpcore/b/c/o;->g:Ljava/io/InputStream;

    const-string v1, "Input stream"

    invoke-static {v0, v1}, Lorg/apache/httpcore/util/b;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 137
    iget-object v0, p0, Lorg/apache/httpcore/b/c/o;->g:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    return p1
.end method


# virtual methods
.method public a(Lorg/apache/httpcore/util/CharArrayBuffer;)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "Char array buffer"

    .line 243
    invoke-static {p1, v0}, Lorg/apache/httpcore/util/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 244
    iget-object v0, p0, Lorg/apache/httpcore/b/c/o;->e:Lorg/apache/httpcore/a/b;

    invoke-virtual {v0}, Lorg/apache/httpcore/a/b;->a()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :cond_0
    :goto_0
    const/4 v4, -0x1

    if-eqz v1, :cond_8

    .line 250
    iget v5, p0, Lorg/apache/httpcore/b/c/o;->h:I

    :goto_1
    iget v6, p0, Lorg/apache/httpcore/b/c/o;->i:I

    if-ge v5, v6, :cond_2

    .line 251
    iget-object v6, p0, Lorg/apache/httpcore/b/c/o;->b:[B

    aget-byte v6, v6, v5

    const/16 v7, 0xa

    if-ne v6, v7, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    const/4 v5, -0x1

    :goto_2
    if-lez v0, :cond_4

    .line 258
    iget-object v6, p0, Lorg/apache/httpcore/b/c/o;->c:Lorg/apache/httpcore/util/ByteArrayBuffer;

    invoke-virtual {v6}, Lorg/apache/httpcore/util/ByteArrayBuffer;->length()I

    move-result v6

    if-ltz v5, :cond_3

    move v7, v5

    goto :goto_3

    :cond_3
    iget v7, p0, Lorg/apache/httpcore/b/c/o;->i:I

    :goto_3
    add-int/2addr v6, v7

    iget v7, p0, Lorg/apache/httpcore/b/c/o;->h:I

    sub-int/2addr v6, v7

    if-lt v6, v0, :cond_4

    .line 261
    new-instance p1, Lorg/apache/httpcore/MessageConstraintException;

    const-string v0, "Maximum line length limit exceeded"

    invoke-direct {p1, v0}, Lorg/apache/httpcore/MessageConstraintException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    if-eq v5, v4, :cond_6

    .line 267
    iget-object v1, p0, Lorg/apache/httpcore/b/c/o;->c:Lorg/apache/httpcore/util/ByteArrayBuffer;

    invoke-virtual {v1}, Lorg/apache/httpcore/util/ByteArrayBuffer;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 269
    invoke-direct {p0, p1, v5}, Lorg/apache/httpcore/b/c/o;->a(Lorg/apache/httpcore/util/CharArrayBuffer;I)I

    move-result p1

    return p1

    :cond_5
    add-int/lit8 v5, v5, 0x1

    .line 272
    iget v1, p0, Lorg/apache/httpcore/b/c/o;->h:I

    sub-int v1, v5, v1

    .line 273
    iget-object v4, p0, Lorg/apache/httpcore/b/c/o;->c:Lorg/apache/httpcore/util/ByteArrayBuffer;

    iget-object v6, p0, Lorg/apache/httpcore/b/c/o;->b:[B

    iget v7, p0, Lorg/apache/httpcore/b/c/o;->h:I

    invoke-virtual {v4, v6, v7, v1}, Lorg/apache/httpcore/util/ByteArrayBuffer;->append([BII)V

    .line 274
    iput v5, p0, Lorg/apache/httpcore/b/c/o;->h:I

    :goto_4
    const/4 v1, 0x0

    goto :goto_0

    .line 277
    :cond_6
    invoke-virtual {p0}, Lorg/apache/httpcore/b/c/o;->d()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 278
    iget v3, p0, Lorg/apache/httpcore/b/c/o;->i:I

    iget v5, p0, Lorg/apache/httpcore/b/c/o;->h:I

    sub-int/2addr v3, v5

    .line 279
    iget-object v5, p0, Lorg/apache/httpcore/b/c/o;->c:Lorg/apache/httpcore/util/ByteArrayBuffer;

    iget-object v6, p0, Lorg/apache/httpcore/b/c/o;->b:[B

    iget v7, p0, Lorg/apache/httpcore/b/c/o;->h:I

    invoke-virtual {v5, v6, v7, v3}, Lorg/apache/httpcore/util/ByteArrayBuffer;->append([BII)V

    .line 280
    iget v3, p0, Lorg/apache/httpcore/b/c/o;->i:I

    iput v3, p0, Lorg/apache/httpcore/b/c/o;->h:I

    .line 282
    :cond_7
    invoke-virtual {p0}, Lorg/apache/httpcore/b/c/o;->c()I

    move-result v3

    if-ne v3, v4, :cond_0

    goto :goto_4

    :cond_8
    if-ne v3, v4, :cond_9

    .line 288
    iget-object v0, p0, Lorg/apache/httpcore/b/c/o;->c:Lorg/apache/httpcore/util/ByteArrayBuffer;

    invoke-virtual {v0}, Lorg/apache/httpcore/util/ByteArrayBuffer;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    return v4

    .line 292
    :cond_9
    invoke-direct {p0, p1}, Lorg/apache/httpcore/b/c/o;->b(Lorg/apache/httpcore/util/CharArrayBuffer;)I

    move-result p1

    return p1
.end method

.method public a([BII)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 189
    :cond_0
    invoke-virtual {p0}, Lorg/apache/httpcore/b/c/o;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 190
    iget v0, p0, Lorg/apache/httpcore/b/c/o;->i:I

    iget v1, p0, Lorg/apache/httpcore/b/c/o;->h:I

    sub-int/2addr v0, v1

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 191
    iget-object v0, p0, Lorg/apache/httpcore/b/c/o;->b:[B

    iget v1, p0, Lorg/apache/httpcore/b/c/o;->h:I

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 192
    iget p1, p0, Lorg/apache/httpcore/b/c/o;->h:I

    add-int/2addr p1, p3

    iput p1, p0, Lorg/apache/httpcore/b/c/o;->h:I

    return p3

    .line 197
    :cond_1
    iget v0, p0, Lorg/apache/httpcore/b/c/o;->d:I

    if-le p3, v0, :cond_3

    .line 198
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/httpcore/b/c/o;->b([BII)I

    move-result p1

    if-lez p1, :cond_2

    .line 200
    iget-object p2, p0, Lorg/apache/httpcore/b/c/o;->a:Lorg/apache/httpcore/b/c/l;

    int-to-long v0, p1

    invoke-virtual {p2, v0, v1}, Lorg/apache/httpcore/b/c/l;->a(J)V

    :cond_2
    return p1

    .line 205
    :cond_3
    invoke-virtual {p0}, Lorg/apache/httpcore/b/c/o;->d()Z

    move-result v0

    if-nez v0, :cond_4

    .line 206
    invoke-virtual {p0}, Lorg/apache/httpcore/b/c/o;->c()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    return v1

    .line 211
    :cond_4
    iget v0, p0, Lorg/apache/httpcore/b/c/o;->i:I

    iget v1, p0, Lorg/apache/httpcore/b/c/o;->h:I

    sub-int/2addr v0, v1

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 212
    iget-object v0, p0, Lorg/apache/httpcore/b/c/o;->b:[B

    iget v1, p0, Lorg/apache/httpcore/b/c/o;->h:I

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 213
    iget p1, p0, Lorg/apache/httpcore/b/c/o;->h:I

    add-int/2addr p1, p3

    iput p1, p0, Lorg/apache/httpcore/b/c/o;->h:I

    return p3
.end method

.method public a(Ljava/io/InputStream;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lorg/apache/httpcore/b/c/o;->g:Ljava/io/InputStream;

    return-void
.end method

.method public a()Z
    .locals 1

    .line 117
    iget-object v0, p0, Lorg/apache/httpcore/b/c/o;->g:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public b()I
    .locals 2

    .line 127
    iget v0, p0, Lorg/apache/httpcore/b/c/o;->i:I

    iget v1, p0, Lorg/apache/httpcore/b/c/o;->h:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public c()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 142
    iget v0, p0, Lorg/apache/httpcore/b/c/o;->h:I

    if-lez v0, :cond_1

    .line 143
    iget v0, p0, Lorg/apache/httpcore/b/c/o;->i:I

    iget v1, p0, Lorg/apache/httpcore/b/c/o;->h:I

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    if-lez v0, :cond_0

    .line 145
    iget-object v2, p0, Lorg/apache/httpcore/b/c/o;->b:[B

    iget v3, p0, Lorg/apache/httpcore/b/c/o;->h:I

    iget-object v4, p0, Lorg/apache/httpcore/b/c/o;->b:[B

    invoke-static {v2, v3, v4, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 147
    :cond_0
    iput v1, p0, Lorg/apache/httpcore/b/c/o;->h:I

    .line 148
    iput v0, p0, Lorg/apache/httpcore/b/c/o;->i:I

    .line 151
    :cond_1
    iget v0, p0, Lorg/apache/httpcore/b/c/o;->i:I

    .line 152
    iget-object v1, p0, Lorg/apache/httpcore/b/c/o;->b:[B

    array-length v1, v1

    sub-int/2addr v1, v0

    .line 153
    iget-object v2, p0, Lorg/apache/httpcore/b/c/o;->b:[B

    invoke-direct {p0, v2, v0, v1}, Lorg/apache/httpcore/b/c/o;->b([BII)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    return v2

    :cond_2
    add-int/2addr v0, v1

    .line 157
    iput v0, p0, Lorg/apache/httpcore/b/c/o;->i:I

    .line 158
    iget-object v0, p0, Lorg/apache/httpcore/b/c/o;->a:Lorg/apache/httpcore/b/c/l;

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Lorg/apache/httpcore/b/c/l;->a(J)V

    return v1
.end method

.method public d()Z
    .locals 2

    .line 164
    iget v0, p0, Lorg/apache/httpcore/b/c/o;->h:I

    iget v1, p0, Lorg/apache/httpcore/b/c/o;->i:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public e()V
    .locals 1

    const/4 v0, 0x0

    .line 168
    iput v0, p0, Lorg/apache/httpcore/b/c/o;->h:I

    .line 169
    iput v0, p0, Lorg/apache/httpcore/b/c/o;->i:I

    return-void
.end method

.method public f()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 175
    :cond_0
    invoke-virtual {p0}, Lorg/apache/httpcore/b/c/o;->d()Z

    move-result v0

    if-nez v0, :cond_1

    .line 176
    invoke-virtual {p0}, Lorg/apache/httpcore/b/c/o;->c()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return v1

    .line 181
    :cond_1
    iget-object v0, p0, Lorg/apache/httpcore/b/c/o;->b:[B

    iget v1, p0, Lorg/apache/httpcore/b/c/o;->h:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/httpcore/b/c/o;->h:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method
