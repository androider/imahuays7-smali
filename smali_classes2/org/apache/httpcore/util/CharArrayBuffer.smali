.class public final Lorg/apache/httpcore/util/CharArrayBuffer;
.super Ljava/lang/Object;
.source "CharArrayBuffer.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/CharSequence;


# static fields
.field private static final serialVersionUID:J = -0x562aa19b667920bfL


# instance fields
.field private a:[C

.field private b:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Buffer capacity"

    .line 55
    invoke-static {p1, v0}, Lorg/apache/httpcore/util/a;->b(ILjava/lang/String;)I

    .line 56
    new-array p1, p1, [C

    iput-object p1, p0, Lorg/apache/httpcore/util/CharArrayBuffer;->a:[C

    return-void
.end method

.method private a(I)V
    .locals 3

    .line 60
    iget-object v0, p0, Lorg/apache/httpcore/util/CharArrayBuffer;->a:[C

    array-length v0, v0

    shl-int/lit8 v0, v0, 0x1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    new-array p1, p1, [C

    .line 61
    iget-object v0, p0, Lorg/apache/httpcore/util/CharArrayBuffer;->a:[C

    iget v1, p0, Lorg/apache/httpcore/util/CharArrayBuffer;->b:I

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 62
    iput-object p1, p0, Lorg/apache/httpcore/util/CharArrayBuffer;->a:[C

    return-void
.end method


# virtual methods
.method public append(C)V
    .locals 3

    .line 154
    iget v0, p0, Lorg/apache/httpcore/util/CharArrayBuffer;->b:I

    add-int/lit8 v0, v0, 0x1

    .line 155
    iget-object v1, p0, Lorg/apache/httpcore/util/CharArrayBuffer;->a:[C

    array-length v1, v1

    if-le v0, v1, :cond_0

    .line 156
    invoke-direct {p0, v0}, Lorg/apache/httpcore/util/CharArrayBuffer;->a(I)V

    .line 158
    :cond_0
    iget-object v1, p0, Lorg/apache/httpcore/util/CharArrayBuffer;->a:[C

    iget v2, p0, Lorg/apache/httpcore/util/CharArrayBuffer;->b:I

    aput-char p1, v1, v2

    .line 159
    iput v0, p0, Lorg/apache/httpcore/util/CharArrayBuffer;->b:I

    return-void
.end method

.method public append(Ljava/lang/Object;)V
    .locals 0

    .line 227
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/httpcore/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    return-void
.end method

.method public append(Ljava/lang/String;)V
    .locals 5

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "null"

    .line 104
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 105
    iget v1, p0, Lorg/apache/httpcore/util/CharArrayBuffer;->b:I

    add-int/2addr v1, v0

    .line 106
    iget-object v2, p0, Lorg/apache/httpcore/util/CharArrayBuffer;->a:[C

    array-length v2, v2

    if-le v1, v2, :cond_1

    .line 107
    invoke-direct {p0, v1}, Lorg/apache/httpcore/util/CharArrayBuffer;->a(I)V

    :cond_1
    const/4 v2, 0x0

    .line 109
    iget-object v3, p0, Lorg/apache/httpcore/util/CharArrayBuffer;->a:[C

    iget v4, p0, Lorg/apache/httpcore/util/CharArrayBuffer;->b:I

    invoke-virtual {p1, v2, v0, v3, v4}, Ljava/lang/String;->getChars(II[CI)V

    .line 110
    iput v1, p0, Lorg/apache/httpcore/util/CharArrayBuffer;->b:I

    return-void
.end method

.method public append(Lorg/apache/httpcore/util/ByteArrayBuffer;II)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 216
    :cond_0
    invoke-virtual {p1}, Lorg/apache/httpcore/util/ByteArrayBuffer;->buffer()[B

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/httpcore/util/CharArrayBuffer;->append([BII)V

    return-void
.end method

.method public append(Lorg/apache/httpcore/util/CharArrayBuffer;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 144
    :cond_0
    iget-object v0, p1, Lorg/apache/httpcore/util/CharArrayBuffer;->a:[C

    const/4 v1, 0x0

    iget p1, p1, Lorg/apache/httpcore/util/CharArrayBuffer;->b:I

    invoke-virtual {p0, v0, v1, p1}, Lorg/apache/httpcore/util/CharArrayBuffer;->append([CII)V

    return-void
.end method

.method public append(Lorg/apache/httpcore/util/CharArrayBuffer;II)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 130
    :cond_0
    iget-object p1, p1, Lorg/apache/httpcore/util/CharArrayBuffer;->a:[C

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/httpcore/util/CharArrayBuffer;->append([CII)V

    return-void
.end method

.method public append([BII)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-ltz p2, :cond_5

    .line 180
    array-length v0, p1

    if-gt p2, v0, :cond_5

    if-ltz p3, :cond_5

    add-int v0, p2, p3

    if-ltz v0, :cond_5

    array-length v1, p1

    if-le v0, v1, :cond_1

    goto :goto_1

    :cond_1
    if-nez p3, :cond_2

    return-void

    .line 187
    :cond_2
    iget v0, p0, Lorg/apache/httpcore/util/CharArrayBuffer;->b:I

    add-int/2addr p3, v0

    .line 189
    iget-object v1, p0, Lorg/apache/httpcore/util/CharArrayBuffer;->a:[C

    array-length v1, v1

    if-le p3, v1, :cond_3

    .line 190
    invoke-direct {p0, p3}, Lorg/apache/httpcore/util/CharArrayBuffer;->a(I)V

    :cond_3
    :goto_0
    if-ge v0, p3, :cond_4

    .line 193
    iget-object v1, p0, Lorg/apache/httpcore/util/CharArrayBuffer;->a:[C

    aget-byte v2, p1, p2

    and-int/lit16 v2, v2, 0xff

    int-to-char v2, v2

    aput-char v2, v1, v0

    add-int/lit8 p2, p2, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 195
    :cond_4
    iput p3, p0, Lorg/apache/httpcore/util/CharArrayBuffer;->b:I

    return-void

    .line 182
    :cond_5
    :goto_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "off: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " len: "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " b.length: "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public append([CII)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-ltz p2, :cond_4

    .line 81
    array-length v0, p1

    if-gt p2, v0, :cond_4

    if-ltz p3, :cond_4

    add-int v0, p2, p3

    if-ltz v0, :cond_4

    array-length v1, p1

    if-le v0, v1, :cond_1

    goto :goto_0

    :cond_1
    if-nez p3, :cond_2

    return-void

    .line 88
    :cond_2
    iget v0, p0, Lorg/apache/httpcore/util/CharArrayBuffer;->b:I

    add-int/2addr v0, p3

    .line 89
    iget-object v1, p0, Lorg/apache/httpcore/util/CharArrayBuffer;->a:[C

    array-length v1, v1

    if-le v0, v1, :cond_3

    .line 90
    invoke-direct {p0, v0}, Lorg/apache/httpcore/util/CharArrayBuffer;->a(I)V

    .line 92
    :cond_3
    iget-object v1, p0, Lorg/apache/httpcore/util/CharArrayBuffer;->a:[C

    iget v2, p0, Lorg/apache/httpcore/util/CharArrayBuffer;->b:I

    invoke-static {p1, p2, v1, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 93
    iput v0, p0, Lorg/apache/httpcore/util/CharArrayBuffer;->b:I

    return-void

    .line 83
    :cond_4
    :goto_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "off: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " len: "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " b.length: "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public buffer()[C
    .locals 1

    .line 271
    iget-object v0, p0, Lorg/apache/httpcore/util/CharArrayBuffer;->a:[C

    return-object v0
.end method

.method public capacity()I
    .locals 1

    .line 282
    iget-object v0, p0, Lorg/apache/httpcore/util/CharArrayBuffer;->a:[C

    array-length v0, v0

    return v0
.end method

.method public charAt(I)C
    .locals 1

    .line 262
    iget-object v0, p0, Lorg/apache/httpcore/util/CharArrayBuffer;->a:[C

    aget-char p1, v0, p1

    return p1
.end method

.method public clear()V
    .locals 1

    const/4 v0, 0x0

    .line 234
    iput v0, p0, Lorg/apache/httpcore/util/CharArrayBuffer;->b:I

    return-void
.end method

.method public ensureCapacity(I)V
    .locals 2

    if-gtz p1, :cond_0

    return-void

    .line 307
    :cond_0
    iget-object v0, p0, Lorg/apache/httpcore/util/CharArrayBuffer;->a:[C

    array-length v0, v0

    iget v1, p0, Lorg/apache/httpcore/util/CharArrayBuffer;->b:I

    sub-int/2addr v0, v1

    if-le p1, v0, :cond_1

    .line 309
    iget v0, p0, Lorg/apache/httpcore/util/CharArrayBuffer;->b:I

    add-int/2addr v0, p1

    invoke-direct {p0, v0}, Lorg/apache/httpcore/util/CharArrayBuffer;->a(I)V

    :cond_1
    return-void
.end method

.method public indexOf(I)I
    .locals 2

    .line 402
    iget v0, p0, Lorg/apache/httpcore/util/CharArrayBuffer;->b:I

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lorg/apache/httpcore/util/CharArrayBuffer;->indexOf(III)I

    move-result p1

    return p1
.end method

.method public indexOf(III)I
    .locals 2

    if-gez p2, :cond_0

    const/4 p2, 0x0

    .line 377
    :cond_0
    iget v0, p0, Lorg/apache/httpcore/util/CharArrayBuffer;->b:I

    if-le p3, v0, :cond_1

    .line 378
    iget p3, p0, Lorg/apache/httpcore/util/CharArrayBuffer;->b:I

    :cond_1
    const/4 v0, -0x1

    if-le p2, p3, :cond_2

    return v0

    :cond_2
    :goto_0
    if-ge p2, p3, :cond_4

    .line 384
    iget-object v1, p0, Lorg/apache/httpcore/util/CharArrayBuffer;->a:[C

    aget-char v1, v1, p2

    if-ne v1, p1, :cond_3

    return p2

    :cond_3
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_4
    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 337
    iget v0, p0, Lorg/apache/httpcore/util/CharArrayBuffer;->b:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isFull()Z
    .locals 2

    .line 347
    iget v0, p0, Lorg/apache/httpcore/util/CharArrayBuffer;->b:I

    iget-object v1, p0, Lorg/apache/httpcore/util/CharArrayBuffer;->a:[C

    array-length v1, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public length()I
    .locals 1

    .line 292
    iget v0, p0, Lorg/apache/httpcore/util/CharArrayBuffer;->b:I

    return v0
.end method

.method public setLength(I)V
    .locals 3

    if-ltz p1, :cond_1

    .line 324
    iget-object v0, p0, Lorg/apache/httpcore/util/CharArrayBuffer;->a:[C

    array-length v0, v0

    if-le p1, v0, :cond_0

    goto :goto_0

    .line 327
    :cond_0
    iput p1, p0, Lorg/apache/httpcore/util/CharArrayBuffer;->b:I

    return-void

    .line 325
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "len: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " < 0 or > buffer len: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lorg/apache/httpcore/util/CharArrayBuffer;->a:[C

    array-length p1, p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public subSequence(II)Ljava/lang/CharSequence;
    .locals 3

    if-gez p1, :cond_0

    .line 476
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Negative beginIndex: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 478
    :cond_0
    iget v0, p0, Lorg/apache/httpcore/util/CharArrayBuffer;->b:I

    if-le p2, v0, :cond_1

    .line 479
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "endIndex: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " > length: "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lorg/apache/httpcore/util/CharArrayBuffer;->b:I

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    if-le p1, p2, :cond_2

    .line 482
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "beginIndex: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " > endIndex: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 484
    :cond_2
    iget-object v0, p0, Lorg/apache/httpcore/util/CharArrayBuffer;->a:[C

    invoke-static {v0, p1, p2}, Ljava/nio/CharBuffer;->wrap([CII)Ljava/nio/CharBuffer;

    move-result-object p1

    return-object p1
.end method

.method public substring(II)Ljava/lang/String;
    .locals 3

    if-gez p1, :cond_0

    .line 421
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Negative beginIndex: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 423
    :cond_0
    iget v0, p0, Lorg/apache/httpcore/util/CharArrayBuffer;->b:I

    if-le p2, v0, :cond_1

    .line 424
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "endIndex: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " > length: "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lorg/apache/httpcore/util/CharArrayBuffer;->b:I

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    if-le p1, p2, :cond_2

    .line 427
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "beginIndex: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " > endIndex: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 429
    :cond_2
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/httpcore/util/CharArrayBuffer;->a:[C

    sub-int/2addr p2, p1

    invoke-direct {v0, v1, p1, p2}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method public substringTrimmed(II)Ljava/lang/String;
    .locals 3

    if-gez p1, :cond_0

    .line 450
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Negative beginIndex: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 452
    :cond_0
    iget v0, p0, Lorg/apache/httpcore/util/CharArrayBuffer;->b:I

    if-le p2, v0, :cond_1

    .line 453
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "endIndex: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " > length: "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lorg/apache/httpcore/util/CharArrayBuffer;->b:I

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    if-le p1, p2, :cond_2

    .line 456
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "beginIndex: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " > endIndex: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    if-ge p1, p2, :cond_3

    .line 460
    iget-object v0, p0, Lorg/apache/httpcore/util/CharArrayBuffer;->a:[C

    aget-char v0, v0, p1

    invoke-static {v0}, Lorg/apache/httpcore/d/c;->a(C)Z

    move-result v0

    if-eqz v0, :cond_3

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    if-le p2, p1, :cond_4

    .line 463
    iget-object v0, p0, Lorg/apache/httpcore/util/CharArrayBuffer;->a:[C

    add-int/lit8 v1, p2, -0x1

    aget-char v0, v0, v1

    invoke-static {v0}, Lorg/apache/httpcore/d/c;->a(C)Z

    move-result v0

    if-eqz v0, :cond_4

    add-int/lit8 p2, p2, -0x1

    goto :goto_1

    .line 466
    :cond_4
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/httpcore/util/CharArrayBuffer;->a:[C

    sub-int/2addr p2, p1

    invoke-direct {v0, v1, p1, p2}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method public toCharArray()[C
    .locals 4

    .line 243
    iget v0, p0, Lorg/apache/httpcore/util/CharArrayBuffer;->b:I

    new-array v0, v0, [C

    .line 244
    iget v1, p0, Lorg/apache/httpcore/util/CharArrayBuffer;->b:I

    if-lez v1, :cond_0

    .line 245
    iget-object v1, p0, Lorg/apache/httpcore/util/CharArrayBuffer;->a:[C

    iget v2, p0, Lorg/apache/httpcore/util/CharArrayBuffer;->b:I

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 489
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/httpcore/util/CharArrayBuffer;->a:[C

    iget v2, p0, Lorg/apache/httpcore/util/CharArrayBuffer;->b:I

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method
