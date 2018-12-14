.class Lcom/a/a/b/a/a;
.super Ljava/lang/Object;
.source "FastXmlSerializer.java"

# interfaces
.implements Lorg/xmlpull/v1/XmlSerializer;


# static fields
.field private static final a:[Ljava/lang/String;


# instance fields
.field private final b:[C

.field private c:I

.field private d:Ljava/io/Writer;

.field private e:Ljava/io/OutputStream;

.field private f:Ljava/nio/charset/CharsetEncoder;

.field private g:Ljava/nio/ByteBuffer;

.field private h:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x40

    .line 24
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "&quot;"

    const/16 v2, 0x22

    aput-object v1, v0, v2

    const-string v1, "&amp;"

    const/16 v2, 0x26

    aput-object v1, v0, v2

    const-string v1, "&lt;"

    const/16 v2, 0x3c

    aput-object v1, v0, v2

    const-string v1, "&gt;"

    const/16 v2, 0x3e

    aput-object v1, v0, v2

    sput-object v0, Lcom/a/a/b/a/a;->a:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x2000

    .line 37
    new-array v1, v0, [C

    iput-object v1, p0, Lcom/a/a/b/a/a;->b:[C

    .line 44
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/b/a/a;->g:Ljava/nio/ByteBuffer;

    return-void
.end method

.method private a()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 204
    iget-object v0, p0, Lcom/a/a/b/a/a;->g:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    if-lez v0, :cond_0

    .line 205
    iget-object v1, p0, Lcom/a/a/b/a/a;->g:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 206
    iget-object v1, p0, Lcom/a/a/b/a/a;->e:Ljava/io/OutputStream;

    iget-object v2, p0, Lcom/a/a/b/a/a;->g:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 207
    iget-object v0, p0, Lcom/a/a/b/a/a;->g:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    :cond_0
    return-void
.end method

.method private a(C)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 49
    iget v0, p0, Lcom/a/a/b/a/a;->c:I

    const/16 v1, 0x1fff

    if-lt v0, v1, :cond_0

    .line 51
    invoke-virtual {p0}, Lcom/a/a/b/a/a;->flush()V

    .line 52
    iget v0, p0, Lcom/a/a/b/a/a;->c:I

    .line 54
    :cond_0
    iget-object v1, p0, Lcom/a/a/b/a/a;->b:[C

    aput-char p1, v1, v0

    add-int/lit8 v0, v0, 0x1

    .line 55
    iput v0, p0, Lcom/a/a/b/a/a;->c:I

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 97
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lcom/a/a/b/a/a;->a(Ljava/lang/String;II)V

    return-void
.end method

.method private a(Ljava/lang/String;II)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x2000

    if-le p3, v0, :cond_2

    add-int v1, p2, p3

    :goto_0
    if-lt p2, v1, :cond_0

    return-void

    :cond_0
    add-int/lit16 p3, p2, 0x2000

    if-ge p3, v1, :cond_1

    const/16 v2, 0x2000

    goto :goto_1

    :cond_1
    sub-int v2, v1, p2

    .line 63
    :goto_1
    invoke-direct {p0, p1, p2, v2}, Lcom/a/a/b/a/a;->a(Ljava/lang/String;II)V

    move p2, p3

    goto :goto_0

    .line 68
    :cond_2
    iget v1, p0, Lcom/a/a/b/a/a;->c:I

    add-int v2, v1, p3

    if-le v2, v0, :cond_3

    .line 70
    invoke-virtual {p0}, Lcom/a/a/b/a/a;->flush()V

    .line 71
    iget v1, p0, Lcom/a/a/b/a/a;->c:I

    :cond_3
    add-int v0, p2, p3

    .line 73
    iget-object v2, p0, Lcom/a/a/b/a/a;->b:[C

    invoke-virtual {p1, p2, v0, v2, v1}, Ljava/lang/String;->getChars(II[CI)V

    add-int/2addr v1, p3

    .line 74
    iput v1, p0, Lcom/a/a/b/a/a;->c:I

    return-void
.end method

.method private a([CII)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x2000

    if-le p3, v0, :cond_2

    add-int v1, p2, p3

    :goto_0
    if-lt p2, v1, :cond_0

    return-void

    :cond_0
    add-int/lit16 p3, p2, 0x2000

    if-ge p3, v1, :cond_1

    const/16 v2, 0x2000

    goto :goto_1

    :cond_1
    sub-int v2, v1, p2

    .line 82
    :goto_1
    invoke-direct {p0, p1, p2, v2}, Lcom/a/a/b/a/a;->a([CII)V

    move p2, p3

    goto :goto_0

    .line 87
    :cond_2
    iget v1, p0, Lcom/a/a/b/a/a;->c:I

    add-int v2, v1, p3

    if-le v2, v0, :cond_3

    .line 89
    invoke-virtual {p0}, Lcom/a/a/b/a/a;->flush()V

    .line 90
    iget v1, p0, Lcom/a/a/b/a/a;->c:I

    .line 92
    :cond_3
    iget-object v0, p0, Lcom/a/a/b/a/a;->b:[C

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v1, p3

    .line 93
    iput v1, p0, Lcom/a/a/b/a/a;->c:I

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 101
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 102
    sget-object v1, Lcom/a/a/b/a/a;->a:[Ljava/lang/String;

    array-length v1, v1

    int-to-char v1, v1

    .line 103
    sget-object v2, Lcom/a/a/b/a/a;->a:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-lt v3, v0, :cond_1

    if-ge v4, v3, :cond_0

    sub-int/2addr v3, v4

    .line 119
    invoke-direct {p0, p1, v4, v3}, Lcom/a/a/b/a/a;->a(Ljava/lang/String;II)V

    :cond_0
    return-void

    .line 107
    :cond_1
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-lt v5, v1, :cond_2

    goto :goto_1

    .line 110
    :cond_2
    aget-object v5, v2, v5

    if-nez v5, :cond_3

    goto :goto_1

    :cond_3
    if-ge v4, v3, :cond_4

    sub-int v6, v3, v4

    .line 114
    invoke-direct {p0, p1, v4, v6}, Lcom/a/a/b/a/a;->a(Ljava/lang/String;II)V

    :cond_4
    add-int/lit8 v4, v3, 0x1

    .line 116
    invoke-direct {p0, v5}, Lcom/a/a/b/a/a;->a(Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private b([CII)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 124
    sget-object v0, Lcom/a/a/b/a/a;->a:[Ljava/lang/String;

    array-length v0, v0

    int-to-char v0, v0

    .line 125
    sget-object v1, Lcom/a/a/b/a/a;->a:[Ljava/lang/String;

    add-int/2addr p3, p2

    move v2, p2

    :goto_0
    if-lt p2, p3, :cond_1

    if-ge v2, p2, :cond_0

    sub-int/2addr p2, v2

    .line 142
    invoke-direct {p0, p1, v2, p2}, Lcom/a/a/b/a/a;->a([CII)V

    :cond_0
    return-void

    .line 130
    :cond_1
    aget-char v3, p1, p2

    if-lt v3, v0, :cond_2

    goto :goto_1

    .line 133
    :cond_2
    aget-object v3, v1, v3

    if-nez v3, :cond_3

    goto :goto_1

    :cond_3
    if-ge v2, p2, :cond_4

    sub-int v4, p2, v2

    .line 137
    invoke-direct {p0, p1, v2, v4}, Lcom/a/a/b/a/a;->a([CII)V

    :cond_4
    add-int/lit8 v2, p2, 0x1

    .line 139
    invoke-direct {p0, v3}, Lcom/a/a/b/a/a;->a(Ljava/lang/String;)V

    :goto_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0
.end method


# virtual methods
.method public attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const/16 v0, 0x20

    .line 147
    invoke-direct {p0, v0}, Lcom/a/a/b/a/a;->a(C)V

    if-eqz p1, :cond_0

    .line 149
    invoke-direct {p0, p1}, Lcom/a/a/b/a/a;->a(Ljava/lang/String;)V

    const/16 p1, 0x3a

    .line 150
    invoke-direct {p0, p1}, Lcom/a/a/b/a/a;->a(C)V

    .line 152
    :cond_0
    invoke-direct {p0, p2}, Lcom/a/a/b/a/a;->a(Ljava/lang/String;)V

    const-string p1, "=\""

    .line 153
    invoke-direct {p0, p1}, Lcom/a/a/b/a/a;->a(Ljava/lang/String;)V

    .line 155
    invoke-direct {p0, p3}, Lcom/a/a/b/a/a;->b(Ljava/lang/String;)V

    const/16 p1, 0x22

    .line 156
    invoke-direct {p0, p1}, Lcom/a/a/b/a/a;->a(C)V

    return-object p0
.end method

.method public cdsect(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 162
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public comment(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 167
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public docdecl(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 172
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public endDocument()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 177
    invoke-virtual {p0}, Lcom/a/a/b/a/a;->flush()V

    return-void
.end method

.method public endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 182
    iget-boolean v0, p0, Lcom/a/a/b/a/a;->h:Z

    if-eqz v0, :cond_0

    const-string p1, " />\n"

    .line 183
    invoke-direct {p0, p1}, Lcom/a/a/b/a/a;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "</"

    .line 185
    invoke-direct {p0, v0}, Lcom/a/a/b/a/a;->a(Ljava/lang/String;)V

    if-eqz p1, :cond_1

    .line 187
    invoke-direct {p0, p1}, Lcom/a/a/b/a/a;->a(Ljava/lang/String;)V

    const/16 p1, 0x3a

    .line 188
    invoke-direct {p0, p1}, Lcom/a/a/b/a/a;->a(C)V

    .line 190
    :cond_1
    invoke-direct {p0, p2}, Lcom/a/a/b/a/a;->a(Ljava/lang/String;)V

    const-string p1, ">\n"

    .line 191
    invoke-direct {p0, p1}, Lcom/a/a/b/a/a;->a(Ljava/lang/String;)V

    :goto_0
    const/4 p1, 0x0

    .line 193
    iput-boolean p1, p0, Lcom/a/a/b/a/a;->h:Z

    return-object p0
.end method

.method public entityRef(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 199
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public flush()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 212
    iget v0, p0, Lcom/a/a/b/a/a;->c:I

    if-lez v0, :cond_3

    .line 213
    iget-object v0, p0, Lcom/a/a/b/a/a;->e:Ljava/io/OutputStream;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 214
    iget-object v0, p0, Lcom/a/a/b/a/a;->b:[C

    iget v2, p0, Lcom/a/a/b/a/a;->c:I

    invoke-static {v0, v1, v2}, Ljava/nio/CharBuffer;->wrap([CII)Ljava/nio/CharBuffer;

    move-result-object v0

    .line 215
    iget-object v2, p0, Lcom/a/a/b/a/a;->f:Ljava/nio/charset/CharsetEncoder;

    iget-object v3, p0, Lcom/a/a/b/a/a;->g:Ljava/nio/ByteBuffer;

    const/4 v4, 0x1

    invoke-virtual {v2, v0, v3, v4}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v2

    .line 217
    :goto_0
    invoke-virtual {v2}, Ljava/nio/charset/CoderResult;->isError()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 218
    new-instance v0, Ljava/io/IOException;

    invoke-virtual {v2}, Ljava/nio/charset/CoderResult;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 219
    :cond_0
    invoke-virtual {v2}, Ljava/nio/charset/CoderResult;->isOverflow()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 220
    invoke-direct {p0}, Lcom/a/a/b/a/a;->a()V

    .line 221
    iget-object v2, p0, Lcom/a/a/b/a/a;->f:Ljava/nio/charset/CharsetEncoder;

    iget-object v3, p0, Lcom/a/a/b/a/a;->g:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v0, v3, v4}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v2

    goto :goto_0

    .line 226
    :cond_1
    invoke-direct {p0}, Lcom/a/a/b/a/a;->a()V

    .line 227
    iget-object v0, p0, Lcom/a/a/b/a/a;->e:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    goto :goto_1

    .line 229
    :cond_2
    iget-object v0, p0, Lcom/a/a/b/a/a;->d:Ljava/io/Writer;

    iget-object v2, p0, Lcom/a/a/b/a/a;->b:[C

    iget v3, p0, Lcom/a/a/b/a/a;->c:I

    invoke-virtual {v0, v2, v1, v3}, Ljava/io/Writer;->write([CII)V

    .line 230
    iget-object v0, p0, Lcom/a/a/b/a/a;->d:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    .line 232
    :goto_1
    iput v1, p0, Lcom/a/a/b/a/a;->c:I

    :cond_3
    return-void
.end method

.method public getDepth()I
    .locals 1

    .line 237
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getFeature(Ljava/lang/String;)Z
    .locals 0

    .line 241
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 245
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 1

    .line 249
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getPrefix(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 254
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 258
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public ignorableWhitespace(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 263
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public processingInstruction(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 268
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public setFeature(Ljava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const-string p2, "http://xmlpull.org/v1/doc/features.html#indent-output"

    .line 273
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 276
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    if-nez p1, :cond_0

    .line 282
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 285
    :cond_0
    :try_start_0
    invoke-static {p2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/b/a/a;->f:Ljava/nio/charset/CharsetEncoder;
    :try_end_0
    .catch Ljava/nio/charset/IllegalCharsetNameException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/nio/charset/UnsupportedCharsetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 293
    iput-object p1, p0, Lcom/a/a/b/a/a;->e:Ljava/io/OutputStream;

    return-void

    :catch_0
    move-exception p1

    .line 290
    new-instance v0, Ljava/io/UnsupportedEncodingException;

    invoke-direct {v0, p2}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    .line 291
    invoke-virtual {v0, p1}, Ljava/io/UnsupportedEncodingException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p1

    .line 290
    check-cast p1, Ljava/io/UnsupportedEncodingException;

    throw p1

    :catch_1
    move-exception p1

    .line 287
    new-instance v0, Ljava/io/UnsupportedEncodingException;

    invoke-direct {v0, p2}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    .line 288
    invoke-virtual {v0, p1}, Ljava/io/UnsupportedEncodingException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p1

    .line 287
    check-cast p1, Ljava/io/UnsupportedEncodingException;

    throw p1
.end method

.method public setOutput(Ljava/io/Writer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 302
    iput-object p1, p0, Lcom/a/a/b/a/a;->d:Ljava/io/Writer;

    return-void
.end method

.method public setPrefix(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 307
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 312
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 317
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "<?xml version=\'1.0\' encoding=\'utf-8\' standalone=\'"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 318
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p2, "yes"

    goto :goto_0

    :cond_0
    const-string p2, "no"

    :goto_0
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\' ?>\n"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 317
    invoke-direct {p0, p1}, Lcom/a/a/b/a/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method public startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 323
    iget-boolean v0, p0, Lcom/a/a/b/a/a;->h:Z

    if-eqz v0, :cond_0

    const-string v0, ">\n"

    .line 324
    invoke-direct {p0, v0}, Lcom/a/a/b/a/a;->a(Ljava/lang/String;)V

    :cond_0
    const/16 v0, 0x3c

    .line 326
    invoke-direct {p0, v0}, Lcom/a/a/b/a/a;->a(C)V

    if-eqz p1, :cond_1

    .line 328
    invoke-direct {p0, p1}, Lcom/a/a/b/a/a;->a(Ljava/lang/String;)V

    const/16 p1, 0x3a

    .line 329
    invoke-direct {p0, p1}, Lcom/a/a/b/a/a;->a(C)V

    .line 331
    :cond_1
    invoke-direct {p0, p2}, Lcom/a/a/b/a/a;->a(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 332
    iput-boolean p1, p0, Lcom/a/a/b/a/a;->h:Z

    return-object p0
.end method

.method public text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 348
    iget-boolean v0, p0, Lcom/a/a/b/a/a;->h:Z

    if-eqz v0, :cond_0

    const-string v0, ">"

    .line 349
    invoke-direct {p0, v0}, Lcom/a/a/b/a/a;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 350
    iput-boolean v0, p0, Lcom/a/a/b/a/a;->h:Z

    .line 352
    :cond_0
    invoke-direct {p0, p1}, Lcom/a/a/b/a/a;->b(Ljava/lang/String;)V

    return-object p0
.end method

.method public text([CII)Lorg/xmlpull/v1/XmlSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 338
    iget-boolean v0, p0, Lcom/a/a/b/a/a;->h:Z

    if-eqz v0, :cond_0

    const-string v0, ">"

    .line 339
    invoke-direct {p0, v0}, Lcom/a/a/b/a/a;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 340
    iput-boolean v0, p0, Lcom/a/a/b/a/a;->h:Z

    .line 342
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/a/a/b/a/a;->b([CII)V

    return-object p0
.end method
