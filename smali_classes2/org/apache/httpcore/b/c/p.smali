.class public Lorg/apache/httpcore/b/c/p;
.super Ljava/lang/Object;
.source "SessionOutputBufferImpl.java"

# interfaces
.implements Lorg/apache/httpcore/c/a;
.implements Lorg/apache/httpcore/c/h;


# static fields
.field private static final a:[B


# instance fields
.field private final b:Lorg/apache/httpcore/b/c/l;

.field private final c:Lorg/apache/httpcore/util/ByteArrayBuffer;

.field private final d:I

.field private final e:Ljava/nio/charset/CharsetEncoder;

.field private f:Ljava/io/OutputStream;

.field private g:Ljava/nio/ByteBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x2

    .line 58
    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/httpcore/b/c/p;->a:[B

    return-void

    nop

    :array_0
    .array-data 1
        0xdt
        0xat
    .end array-data
.end method

.method public constructor <init>(Lorg/apache/httpcore/b/c/l;IILjava/nio/charset/CharsetEncoder;)V
    .locals 1

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Buffer size"

    .line 85
    invoke-static {p2, v0}, Lorg/apache/httpcore/util/a;->a(ILjava/lang/String;)I

    const-string v0, "HTTP transport metrcis"

    .line 86
    invoke-static {p1, v0}, Lorg/apache/httpcore/util/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 87
    iput-object p1, p0, Lorg/apache/httpcore/b/c/p;->b:Lorg/apache/httpcore/b/c/l;

    .line 88
    new-instance p1, Lorg/apache/httpcore/util/ByteArrayBuffer;

    invoke-direct {p1, p2}, Lorg/apache/httpcore/util/ByteArrayBuffer;-><init>(I)V

    iput-object p1, p0, Lorg/apache/httpcore/b/c/p;->c:Lorg/apache/httpcore/util/ByteArrayBuffer;

    if-ltz p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    .line 89
    :goto_0
    iput p3, p0, Lorg/apache/httpcore/b/c/p;->d:I

    .line 90
    iput-object p4, p0, Lorg/apache/httpcore/b/c/p;->e:Ljava/nio/charset/CharsetEncoder;

    return-void
.end method

.method private a(Ljava/nio/CharBuffer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 259
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 262
    :cond_0
    iget-object v0, p0, Lorg/apache/httpcore/b/c/p;->g:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_1

    const/16 v0, 0x400

    .line 263
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/httpcore/b/c/p;->g:Ljava/nio/ByteBuffer;

    .line 265
    :cond_1
    iget-object v0, p0, Lorg/apache/httpcore/b/c/p;->e:Ljava/nio/charset/CharsetEncoder;

    invoke-virtual {v0}, Ljava/nio/charset/CharsetEncoder;->reset()Ljava/nio/charset/CharsetEncoder;

    .line 266
    :goto_0
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 267
    iget-object v0, p0, Lorg/apache/httpcore/b/c/p;->e:Ljava/nio/charset/CharsetEncoder;

    iget-object v1, p0, Lorg/apache/httpcore/b/c/p;->g:Ljava/nio/ByteBuffer;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v0

    .line 268
    invoke-direct {p0, v0}, Lorg/apache/httpcore/b/c/p;->a(Ljava/nio/charset/CoderResult;)V

    goto :goto_0

    .line 270
    :cond_2
    iget-object p1, p0, Lorg/apache/httpcore/b/c/p;->e:Ljava/nio/charset/CharsetEncoder;

    iget-object v0, p0, Lorg/apache/httpcore/b/c/p;->g:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0}, Ljava/nio/charset/CharsetEncoder;->flush(Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;

    move-result-object p1

    .line 271
    invoke-direct {p0, p1}, Lorg/apache/httpcore/b/c/p;->a(Ljava/nio/charset/CoderResult;)V

    .line 272
    iget-object p1, p0, Lorg/apache/httpcore/b/c/p;->g:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    return-void
.end method

.method private a(Ljava/nio/charset/CoderResult;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 276
    invoke-virtual {p1}, Ljava/nio/charset/CoderResult;->isError()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 277
    invoke-virtual {p1}, Ljava/nio/charset/CoderResult;->throwException()V

    .line 279
    :cond_0
    iget-object p1, p0, Lorg/apache/httpcore/b/c/p;->g:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 280
    :goto_0
    iget-object p1, p0, Lorg/apache/httpcore/b/c/p;->g:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 281
    iget-object p1, p0, Lorg/apache/httpcore/b/c/p;->g:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result p1

    invoke-virtual {p0, p1}, Lorg/apache/httpcore/b/c/p;->a(I)V

    goto :goto_0

    .line 283
    :cond_1
    iget-object p1, p0, Lorg/apache/httpcore/b/c/p;->g:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;

    return-void
.end method

.method private b([BII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 123
    iget-object v0, p0, Lorg/apache/httpcore/b/c/p;->f:Ljava/io/OutputStream;

    const-string v1, "Output stream"

    invoke-static {v0, v1}, Lorg/apache/httpcore/util/b;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 124
    iget-object v0, p0, Lorg/apache/httpcore/b/c/p;->f:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    return-void
.end method

.method private d()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 128
    iget-object v0, p0, Lorg/apache/httpcore/b/c/p;->f:Ljava/io/OutputStream;

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lorg/apache/httpcore/b/c/p;->f:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    :cond_0
    return-void
.end method

.method private e()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 134
    iget-object v0, p0, Lorg/apache/httpcore/b/c/p;->c:Lorg/apache/httpcore/util/ByteArrayBuffer;

    invoke-virtual {v0}, Lorg/apache/httpcore/util/ByteArrayBuffer;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 136
    iget-object v1, p0, Lorg/apache/httpcore/b/c/p;->c:Lorg/apache/httpcore/util/ByteArrayBuffer;

    invoke-virtual {v1}, Lorg/apache/httpcore/util/ByteArrayBuffer;->buffer()[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2, v0}, Lorg/apache/httpcore/b/c/p;->b([BII)V

    .line 137
    iget-object v1, p0, Lorg/apache/httpcore/b/c/p;->c:Lorg/apache/httpcore/util/ByteArrayBuffer;

    invoke-virtual {v1}, Lorg/apache/httpcore/util/ByteArrayBuffer;->clear()V

    .line 138
    iget-object v1, p0, Lorg/apache/httpcore/b/c/p;->b:Lorg/apache/httpcore/b/c/l;

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Lorg/apache/httpcore/b/c/l;->a(J)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 184
    iget v0, p0, Lorg/apache/httpcore/b/c/p;->d:I

    if-lez v0, :cond_1

    .line 185
    iget-object v0, p0, Lorg/apache/httpcore/b/c/p;->c:Lorg/apache/httpcore/util/ByteArrayBuffer;

    invoke-virtual {v0}, Lorg/apache/httpcore/util/ByteArrayBuffer;->isFull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 186
    invoke-direct {p0}, Lorg/apache/httpcore/b/c/p;->e()V

    .line 188
    :cond_0
    iget-object v0, p0, Lorg/apache/httpcore/b/c/p;->c:Lorg/apache/httpcore/util/ByteArrayBuffer;

    invoke-virtual {v0, p1}, Lorg/apache/httpcore/util/ByteArrayBuffer;->append(I)V

    goto :goto_0

    .line 190
    :cond_1
    invoke-direct {p0}, Lorg/apache/httpcore/b/c/p;->e()V

    .line 191
    iget-object v0, p0, Lorg/apache/httpcore/b/c/p;->f:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    :goto_0
    return-void
.end method

.method public a(Ljava/io/OutputStream;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lorg/apache/httpcore/b/c/p;->f:Ljava/io/OutputStream;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 209
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 210
    iget-object v0, p0, Lorg/apache/httpcore/b/c/p;->e:Ljava/nio/charset/CharsetEncoder;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 211
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 212
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {p0, v1}, Lorg/apache/httpcore/b/c/p;->a(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 215
    :cond_1
    invoke-static {p1}, Ljava/nio/CharBuffer;->wrap(Ljava/lang/CharSequence;)Ljava/nio/CharBuffer;

    move-result-object p1

    .line 216
    invoke-direct {p0, p1}, Lorg/apache/httpcore/b/c/p;->a(Ljava/nio/CharBuffer;)V

    .line 219
    :cond_2
    sget-object p1, Lorg/apache/httpcore/b/c/p;->a:[B

    invoke-virtual {p0, p1}, Lorg/apache/httpcore/b/c/p;->a([B)V

    return-void
.end method

.method public a(Lorg/apache/httpcore/util/CharArrayBuffer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 236
    :cond_0
    iget-object v0, p0, Lorg/apache/httpcore/b/c/p;->e:Ljava/nio/charset/CharsetEncoder;

    const/4 v1, 0x0

    if-nez v0, :cond_3

    .line 238
    invoke-virtual {p1}, Lorg/apache/httpcore/util/CharArrayBuffer;->length()I

    move-result v0

    :goto_0
    if-lez v0, :cond_4

    .line 240
    iget-object v2, p0, Lorg/apache/httpcore/b/c/p;->c:Lorg/apache/httpcore/util/ByteArrayBuffer;

    invoke-virtual {v2}, Lorg/apache/httpcore/util/ByteArrayBuffer;->capacity()I

    move-result v2

    iget-object v3, p0, Lorg/apache/httpcore/b/c/p;->c:Lorg/apache/httpcore/util/ByteArrayBuffer;

    invoke-virtual {v3}, Lorg/apache/httpcore/util/ByteArrayBuffer;->length()I

    move-result v3

    sub-int/2addr v2, v3

    .line 241
    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    if-lez v2, :cond_1

    .line 243
    iget-object v3, p0, Lorg/apache/httpcore/b/c/p;->c:Lorg/apache/httpcore/util/ByteArrayBuffer;

    invoke-virtual {v3, p1, v1, v2}, Lorg/apache/httpcore/util/ByteArrayBuffer;->append(Lorg/apache/httpcore/util/CharArrayBuffer;II)V

    .line 245
    :cond_1
    iget-object v3, p0, Lorg/apache/httpcore/b/c/p;->c:Lorg/apache/httpcore/util/ByteArrayBuffer;

    invoke-virtual {v3}, Lorg/apache/httpcore/util/ByteArrayBuffer;->isFull()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 246
    invoke-direct {p0}, Lorg/apache/httpcore/b/c/p;->e()V

    :cond_2
    add-int/2addr v1, v2

    sub-int/2addr v0, v2

    goto :goto_0

    .line 252
    :cond_3
    invoke-virtual {p1}, Lorg/apache/httpcore/util/CharArrayBuffer;->buffer()[C

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/httpcore/util/CharArrayBuffer;->length()I

    move-result p1

    invoke-static {v0, v1, p1}, Ljava/nio/CharBuffer;->wrap([CII)Ljava/nio/CharBuffer;

    move-result-object p1

    .line 253
    invoke-direct {p0, p1}, Lorg/apache/httpcore/b/c/p;->a(Ljava/nio/CharBuffer;)V

    .line 255
    :cond_4
    sget-object p1, Lorg/apache/httpcore/b/c/p;->a:[B

    invoke-virtual {p0, p1}, Lorg/apache/httpcore/b/c/p;->a([B)V

    return-void
.end method

.method public a([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 179
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/httpcore/b/c/p;->a([BII)V

    return-void
.end method

.method public a([BII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 156
    :cond_0
    iget v0, p0, Lorg/apache/httpcore/b/c/p;->d:I

    if-gt p3, v0, :cond_3

    iget-object v0, p0, Lorg/apache/httpcore/b/c/p;->c:Lorg/apache/httpcore/util/ByteArrayBuffer;

    invoke-virtual {v0}, Lorg/apache/httpcore/util/ByteArrayBuffer;->capacity()I

    move-result v0

    if-le p3, v0, :cond_1

    goto :goto_0

    .line 164
    :cond_1
    iget-object v0, p0, Lorg/apache/httpcore/b/c/p;->c:Lorg/apache/httpcore/util/ByteArrayBuffer;

    invoke-virtual {v0}, Lorg/apache/httpcore/util/ByteArrayBuffer;->capacity()I

    move-result v0

    iget-object v1, p0, Lorg/apache/httpcore/b/c/p;->c:Lorg/apache/httpcore/util/ByteArrayBuffer;

    invoke-virtual {v1}, Lorg/apache/httpcore/util/ByteArrayBuffer;->length()I

    move-result v1

    sub-int/2addr v0, v1

    if-le p3, v0, :cond_2

    .line 167
    invoke-direct {p0}, Lorg/apache/httpcore/b/c/p;->e()V

    .line 170
    :cond_2
    iget-object v0, p0, Lorg/apache/httpcore/b/c/p;->c:Lorg/apache/httpcore/util/ByteArrayBuffer;

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/httpcore/util/ByteArrayBuffer;->append([BII)V

    goto :goto_1

    .line 158
    :cond_3
    :goto_0
    invoke-direct {p0}, Lorg/apache/httpcore/b/c/p;->e()V

    .line 160
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/httpcore/b/c/p;->b([BII)V

    .line 161
    iget-object p1, p0, Lorg/apache/httpcore/b/c/p;->b:Lorg/apache/httpcore/b/c/l;

    int-to-long p2, p3

    invoke-virtual {p1, p2, p3}, Lorg/apache/httpcore/b/c/l;->a(J)V

    :goto_1
    return-void
.end method

.method public a()Z
    .locals 1

    .line 104
    iget-object v0, p0, Lorg/apache/httpcore/b/c/p;->f:Ljava/io/OutputStream;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public b()I
    .locals 1

    .line 114
    iget-object v0, p0, Lorg/apache/httpcore/b/c/p;->c:Lorg/apache/httpcore/util/ByteArrayBuffer;

    invoke-virtual {v0}, Lorg/apache/httpcore/util/ByteArrayBuffer;->length()I

    move-result v0

    return v0
.end method

.method public c()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 144
    invoke-direct {p0}, Lorg/apache/httpcore/b/c/p;->e()V

    .line 145
    invoke-direct {p0}, Lorg/apache/httpcore/b/c/p;->d()V

    return-void
.end method
