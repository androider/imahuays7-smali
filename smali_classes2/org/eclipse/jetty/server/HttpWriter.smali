.class public Lorg/eclipse/jetty/server/HttpWriter;
.super Ljava/io/Writer;
.source "HttpWriter.java"


# static fields
.field public static final MAX_OUTPUT_CHARS:I = 0x200

.field private static final WRITE_CONV:I = 0x0

.field private static final WRITE_ISO1:I = 0x1

.field private static final WRITE_UTF8:I = 0x2


# instance fields
.field final _generator:Lorg/eclipse/jetty/http/AbstractGenerator;

.field final _out:Lorg/eclipse/jetty/server/HttpOutput;

.field _surrogate:I

.field _writeMode:I


# direct methods
.method public constructor <init>(Lorg/eclipse/jetty/server/HttpOutput;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    .line 53
    iput-object p1, p0, Lorg/eclipse/jetty/server/HttpWriter;->_out:Lorg/eclipse/jetty/server/HttpOutput;

    .line 54
    iget-object p1, p0, Lorg/eclipse/jetty/server/HttpWriter;->_out:Lorg/eclipse/jetty/server/HttpOutput;

    iget-object p1, p1, Lorg/eclipse/jetty/server/HttpOutput;->_generator:Lorg/eclipse/jetty/http/AbstractGenerator;

    iput-object p1, p0, Lorg/eclipse/jetty/server/HttpWriter;->_generator:Lorg/eclipse/jetty/http/AbstractGenerator;

    const/4 p1, 0x0

    .line 55
    iput p1, p0, Lorg/eclipse/jetty/server/HttpWriter;->_surrogate:I

    return-void
.end method

.method private getConverter()Ljava/io/Writer;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 298
    iget-object v0, p0, Lorg/eclipse/jetty/server/HttpWriter;->_out:Lorg/eclipse/jetty/server/HttpOutput;

    iget-object v0, v0, Lorg/eclipse/jetty/server/HttpOutput;->_converter:Ljava/io/Writer;

    if-nez v0, :cond_0

    .line 299
    iget-object v0, p0, Lorg/eclipse/jetty/server/HttpWriter;->_out:Lorg/eclipse/jetty/server/HttpOutput;

    new-instance v1, Ljava/io/OutputStreamWriter;

    iget-object v2, p0, Lorg/eclipse/jetty/server/HttpWriter;->_out:Lorg/eclipse/jetty/server/HttpOutput;

    iget-object v2, v2, Lorg/eclipse/jetty/server/HttpOutput;->_bytes:Lorg/eclipse/jetty/util/ByteArrayOutputStream2;

    iget-object v3, p0, Lorg/eclipse/jetty/server/HttpWriter;->_out:Lorg/eclipse/jetty/server/HttpOutput;

    iget-object v3, v3, Lorg/eclipse/jetty/server/HttpOutput;->_characterEncoding:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    iput-object v1, v0, Lorg/eclipse/jetty/server/HttpOutput;->_converter:Ljava/io/Writer;

    .line 300
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/HttpWriter;->_out:Lorg/eclipse/jetty/server/HttpOutput;

    iget-object v0, v0, Lorg/eclipse/jetty/server/HttpOutput;->_converter:Ljava/io/Writer;

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 85
    iget-object v0, p0, Lorg/eclipse/jetty/server/HttpWriter;->_out:Lorg/eclipse/jetty/server/HttpOutput;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/HttpOutput;->close()V

    return-void
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 92
    iget-object v0, p0, Lorg/eclipse/jetty/server/HttpWriter;->_out:Lorg/eclipse/jetty/server/HttpOutput;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/HttpOutput;->flush()V

    return-void
.end method

.method public setCharacterEncoding(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_3

    const-string v0, "ISO-8859-1"

    .line 61
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "UTF-8"

    .line 65
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    .line 67
    iput v0, p0, Lorg/eclipse/jetty/server/HttpWriter;->_writeMode:I

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 71
    iput v0, p0, Lorg/eclipse/jetty/server/HttpWriter;->_writeMode:I

    .line 72
    iget-object v0, p0, Lorg/eclipse/jetty/server/HttpWriter;->_out:Lorg/eclipse/jetty/server/HttpOutput;

    iget-object v0, v0, Lorg/eclipse/jetty/server/HttpOutput;->_characterEncoding:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/eclipse/jetty/server/HttpWriter;->_out:Lorg/eclipse/jetty/server/HttpOutput;

    iget-object v0, v0, Lorg/eclipse/jetty/server/HttpOutput;->_characterEncoding:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 73
    :cond_2
    iget-object v0, p0, Lorg/eclipse/jetty/server/HttpWriter;->_out:Lorg/eclipse/jetty/server/HttpOutput;

    const/4 v1, 0x0

    iput-object v1, v0, Lorg/eclipse/jetty/server/HttpOutput;->_converter:Ljava/io/Writer;

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v0, 0x1

    .line 63
    iput v0, p0, Lorg/eclipse/jetty/server/HttpWriter;->_writeMode:I

    .line 76
    :cond_4
    :goto_1
    iget-object v0, p0, Lorg/eclipse/jetty/server/HttpWriter;->_out:Lorg/eclipse/jetty/server/HttpOutput;

    iput-object p1, v0, Lorg/eclipse/jetty/server/HttpOutput;->_characterEncoding:Ljava/lang/String;

    .line 77
    iget-object p1, p0, Lorg/eclipse/jetty/server/HttpWriter;->_out:Lorg/eclipse/jetty/server/HttpOutput;

    iget-object p1, p1, Lorg/eclipse/jetty/server/HttpOutput;->_bytes:Lorg/eclipse/jetty/util/ByteArrayOutputStream2;

    if-nez p1, :cond_5

    .line 78
    iget-object p1, p0, Lorg/eclipse/jetty/server/HttpWriter;->_out:Lorg/eclipse/jetty/server/HttpOutput;

    new-instance v0, Lorg/eclipse/jetty/util/ByteArrayOutputStream2;

    const/16 v1, 0x200

    invoke-direct {v0, v1}, Lorg/eclipse/jetty/util/ByteArrayOutputStream2;-><init>(I)V

    iput-object v0, p1, Lorg/eclipse/jetty/server/HttpOutput;->_bytes:Lorg/eclipse/jetty/util/ByteArrayOutputStream2;

    :cond_5
    return-void
.end method

.method public write(Ljava/lang/String;II)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    const/16 v0, 0x200

    if-le p3, v0, :cond_0

    .line 101
    invoke-virtual {p0, p1, p2, v0}, Lorg/eclipse/jetty/server/HttpWriter;->write(Ljava/lang/String;II)V

    add-int/lit16 p2, p2, 0x200

    add-int/lit16 p3, p3, -0x200

    goto :goto_0

    .line 106
    :cond_0
    iget-object v1, p0, Lorg/eclipse/jetty/server/HttpWriter;->_out:Lorg/eclipse/jetty/server/HttpOutput;

    iget-object v1, v1, Lorg/eclipse/jetty/server/HttpOutput;->_chars:[C

    if-nez v1, :cond_1

    .line 108
    iget-object v1, p0, Lorg/eclipse/jetty/server/HttpWriter;->_out:Lorg/eclipse/jetty/server/HttpOutput;

    new-array v0, v0, [C

    iput-object v0, v1, Lorg/eclipse/jetty/server/HttpOutput;->_chars:[C

    .line 110
    :cond_1
    iget-object v0, p0, Lorg/eclipse/jetty/server/HttpWriter;->_out:Lorg/eclipse/jetty/server/HttpOutput;

    iget-object v0, v0, Lorg/eclipse/jetty/server/HttpOutput;->_chars:[C

    add-int v1, p2, p3

    const/4 v2, 0x0

    .line 111
    invoke-virtual {p1, p2, v1, v0, v2}, Ljava/lang/String;->getChars(II[CI)V

    .line 112
    invoke-virtual {p0, v0, v2, p3}, Lorg/eclipse/jetty/server/HttpWriter;->write([CII)V

    return-void
.end method

.method public write([CII)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 119
    iget-object v0, p0, Lorg/eclipse/jetty/server/HttpWriter;->_out:Lorg/eclipse/jetty/server/HttpOutput;

    :goto_0
    if-lez p3, :cond_17

    .line 123
    iget-object v1, v0, Lorg/eclipse/jetty/server/HttpOutput;->_bytes:Lorg/eclipse/jetty/util/ByteArrayOutputStream2;

    invoke-virtual {v1}, Lorg/eclipse/jetty/util/ByteArrayOutputStream2;->reset()V

    const/16 v1, 0x200

    if-le p3, v1, :cond_0

    goto :goto_1

    :cond_0
    move v1, p3

    .line 126
    :goto_1
    iget v2, p0, Lorg/eclipse/jetty/server/HttpWriter;->_writeMode:I

    const/4 v3, 0x0

    const/16 v4, 0x3f

    packed-switch v2, :pswitch_data_0

    .line 285
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 157
    :pswitch_0
    iget-object v2, v0, Lorg/eclipse/jetty/server/HttpOutput;->_bytes:Lorg/eclipse/jetty/util/ByteArrayOutputStream2;

    invoke-virtual {v2}, Lorg/eclipse/jetty/util/ByteArrayOutputStream2;->getBuf()[B

    move-result-object v2

    .line 158
    iget-object v5, v0, Lorg/eclipse/jetty/server/HttpOutput;->_bytes:Lorg/eclipse/jetty/util/ByteArrayOutputStream2;

    invoke-virtual {v5}, Lorg/eclipse/jetty/util/ByteArrayOutputStream2;->getCount()I

    move-result v5

    add-int v6, v5, v1

    .line 160
    array-length v7, v2

    if-le v6, v7, :cond_1

    .line 161
    array-length v1, v2

    sub-int/2addr v1, v5

    :cond_1
    move v6, v5

    const/4 v5, 0x0

    :goto_2
    if-ge v5, v1, :cond_12

    add-int v7, p2, v5

    .line 165
    aget-char v7, p1, v7

    .line 168
    iget v8, p0, Lorg/eclipse/jetty/server/HttpWriter;->_surrogate:I

    if-nez v8, :cond_2

    int-to-char v8, v7

    .line 171
    invoke-static {v8}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 173
    iput v7, p0, Lorg/eclipse/jetty/server/HttpWriter;->_surrogate:I

    goto/16 :goto_7

    :cond_2
    int-to-char v7, v7

    .line 178
    invoke-static {v7}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 180
    iget v8, p0, Lorg/eclipse/jetty/server/HttpWriter;->_surrogate:I

    int-to-char v8, v8

    invoke-static {v8, v7}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v7

    goto :goto_3

    .line 185
    :cond_3
    iget v7, p0, Lorg/eclipse/jetty/server/HttpWriter;->_surrogate:I

    .line 186
    iput v3, p0, Lorg/eclipse/jetty/server/HttpWriter;->_surrogate:I

    add-int/lit8 v5, v5, -0x1

    :cond_4
    :goto_3
    and-int/lit8 v8, v7, -0x80

    if-nez v8, :cond_6

    .line 193
    array-length v8, v2

    if-lt v6, v8, :cond_5

    goto/16 :goto_5

    :cond_5
    add-int/lit8 v8, v6, 0x1

    int-to-byte v7, v7

    .line 198
    aput-byte v7, v2, v6

    move v6, v8

    goto/16 :goto_7

    :cond_6
    and-int/lit16 v8, v7, -0x800

    if-nez v8, :cond_8

    add-int/lit8 v8, v6, 0x2

    .line 205
    array-length v9, v2

    if-le v8, v9, :cond_7

    goto/16 :goto_5

    :cond_7
    add-int/lit8 v8, v6, 0x1

    shr-int/lit8 v9, v7, 0x6

    or-int/lit16 v9, v9, 0xc0

    int-to-byte v9, v9

    .line 210
    aput-byte v9, v2, v6

    add-int/lit8 v6, v8, 0x1

    and-int/lit8 v7, v7, 0x3f

    or-int/lit16 v7, v7, 0x80

    int-to-byte v7, v7

    .line 211
    aput-byte v7, v2, v8

    goto/16 :goto_6

    :cond_8
    const/high16 v8, -0x10000

    and-int/2addr v8, v7

    if-nez v8, :cond_a

    add-int/lit8 v8, v6, 0x3

    .line 216
    array-length v9, v2

    if-le v8, v9, :cond_9

    goto/16 :goto_5

    :cond_9
    add-int/lit8 v8, v6, 0x1

    shr-int/lit8 v9, v7, 0xc

    or-int/lit16 v9, v9, 0xe0

    int-to-byte v9, v9

    .line 221
    aput-byte v9, v2, v6

    add-int/lit8 v6, v8, 0x1

    shr-int/lit8 v9, v7, 0x6

    and-int/2addr v9, v4

    or-int/lit16 v9, v9, 0x80

    int-to-byte v9, v9

    .line 222
    aput-byte v9, v2, v8

    add-int/lit8 v8, v6, 0x1

    and-int/lit8 v7, v7, 0x3f

    or-int/lit16 v7, v7, 0x80

    int-to-byte v7, v7

    .line 223
    aput-byte v7, v2, v6

    :goto_4
    move v6, v8

    goto/16 :goto_6

    :cond_a
    const/high16 v8, -0xe00000

    and-int/2addr v8, v7

    if-nez v8, :cond_c

    add-int/lit8 v8, v6, 0x4

    .line 228
    array-length v9, v2

    if-le v8, v9, :cond_b

    goto :goto_5

    :cond_b
    add-int/lit8 v8, v6, 0x1

    shr-int/lit8 v9, v7, 0x12

    or-int/lit16 v9, v9, 0xf0

    int-to-byte v9, v9

    .line 233
    aput-byte v9, v2, v6

    add-int/lit8 v6, v8, 0x1

    shr-int/lit8 v9, v7, 0xc

    and-int/2addr v9, v4

    or-int/lit16 v9, v9, 0x80

    int-to-byte v9, v9

    .line 234
    aput-byte v9, v2, v8

    add-int/lit8 v8, v6, 0x1

    shr-int/lit8 v9, v7, 0x6

    and-int/2addr v9, v4

    or-int/lit16 v9, v9, 0x80

    int-to-byte v9, v9

    .line 235
    aput-byte v9, v2, v6

    add-int/lit8 v6, v8, 0x1

    and-int/lit8 v7, v7, 0x3f

    or-int/lit16 v7, v7, 0x80

    int-to-byte v7, v7

    .line 236
    aput-byte v7, v2, v8

    goto/16 :goto_6

    :cond_c
    const/high16 v8, -0xc000000

    and-int/2addr v8, v7

    if-nez v8, :cond_e

    add-int/lit8 v8, v6, 0x5

    .line 241
    array-length v9, v2

    if-le v8, v9, :cond_d

    goto :goto_5

    :cond_d
    add-int/lit8 v8, v6, 0x1

    shr-int/lit8 v9, v7, 0x18

    or-int/lit16 v9, v9, 0xf8

    int-to-byte v9, v9

    .line 246
    aput-byte v9, v2, v6

    add-int/lit8 v6, v8, 0x1

    shr-int/lit8 v9, v7, 0x12

    and-int/2addr v9, v4

    or-int/lit16 v9, v9, 0x80

    int-to-byte v9, v9

    .line 247
    aput-byte v9, v2, v8

    add-int/lit8 v8, v6, 0x1

    shr-int/lit8 v9, v7, 0xc

    and-int/2addr v9, v4

    or-int/lit16 v9, v9, 0x80

    int-to-byte v9, v9

    .line 248
    aput-byte v9, v2, v6

    add-int/lit8 v6, v8, 0x1

    shr-int/lit8 v9, v7, 0x6

    and-int/2addr v9, v4

    or-int/lit16 v9, v9, 0x80

    int-to-byte v9, v9

    .line 249
    aput-byte v9, v2, v8

    add-int/lit8 v8, v6, 0x1

    and-int/lit8 v7, v7, 0x3f

    or-int/lit16 v7, v7, 0x80

    int-to-byte v7, v7

    .line 250
    aput-byte v7, v2, v6

    goto :goto_4

    :cond_e
    const/high16 v8, -0x80000000

    and-int/2addr v8, v7

    if-nez v8, :cond_10

    add-int/lit8 v8, v6, 0x6

    .line 255
    array-length v9, v2

    if-le v8, v9, :cond_f

    :goto_5
    move v1, v5

    goto :goto_8

    :cond_f
    add-int/lit8 v8, v6, 0x1

    shr-int/lit8 v9, v7, 0x1e

    or-int/lit16 v9, v9, 0xfc

    int-to-byte v9, v9

    .line 260
    aput-byte v9, v2, v6

    add-int/lit8 v6, v8, 0x1

    shr-int/lit8 v9, v7, 0x18

    and-int/2addr v9, v4

    or-int/lit16 v9, v9, 0x80

    int-to-byte v9, v9

    .line 261
    aput-byte v9, v2, v8

    add-int/lit8 v8, v6, 0x1

    shr-int/lit8 v9, v7, 0x12

    and-int/2addr v9, v4

    or-int/lit16 v9, v9, 0x80

    int-to-byte v9, v9

    .line 262
    aput-byte v9, v2, v6

    add-int/lit8 v6, v8, 0x1

    shr-int/lit8 v9, v7, 0xc

    and-int/2addr v9, v4

    or-int/lit16 v9, v9, 0x80

    int-to-byte v9, v9

    .line 263
    aput-byte v9, v2, v8

    add-int/lit8 v8, v6, 0x1

    shr-int/lit8 v9, v7, 0x6

    and-int/2addr v9, v4

    or-int/lit16 v9, v9, 0x80

    int-to-byte v9, v9

    .line 264
    aput-byte v9, v2, v6

    add-int/lit8 v6, v8, 0x1

    and-int/lit8 v7, v7, 0x3f

    or-int/lit16 v7, v7, 0x80

    int-to-byte v7, v7

    .line 265
    aput-byte v7, v2, v8

    goto :goto_6

    :cond_10
    add-int/lit8 v7, v6, 0x1

    .line 269
    aput-byte v4, v2, v6

    move v6, v7

    .line 272
    :goto_6
    iput v3, p0, Lorg/eclipse/jetty/server/HttpWriter;->_surrogate:I

    .line 274
    array-length v7, v2

    if-ne v6, v7, :cond_11

    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_11
    :goto_7
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_2

    .line 281
    :cond_12
    :goto_8
    iget-object v2, v0, Lorg/eclipse/jetty/server/HttpOutput;->_bytes:Lorg/eclipse/jetty/util/ByteArrayOutputStream2;

    invoke-virtual {v2, v6}, Lorg/eclipse/jetty/util/ByteArrayOutputStream2;->setCount(I)V

    goto :goto_b

    .line 138
    :pswitch_1
    iget-object v2, v0, Lorg/eclipse/jetty/server/HttpOutput;->_bytes:Lorg/eclipse/jetty/util/ByteArrayOutputStream2;

    invoke-virtual {v2}, Lorg/eclipse/jetty/util/ByteArrayOutputStream2;->getBuf()[B

    move-result-object v2

    .line 139
    iget-object v5, v0, Lorg/eclipse/jetty/server/HttpOutput;->_bytes:Lorg/eclipse/jetty/util/ByteArrayOutputStream2;

    invoke-virtual {v5}, Lorg/eclipse/jetty/util/ByteArrayOutputStream2;->getCount()I

    move-result v5

    .line 141
    array-length v6, v2

    sub-int/2addr v6, v5

    if-le v1, v6, :cond_13

    .line 142
    array-length v1, v2

    sub-int/2addr v1, v5

    :cond_13
    :goto_9
    if-ge v3, v1, :cond_15

    add-int v6, p2, v3

    .line 146
    aget-char v6, p1, v6

    add-int/lit8 v7, v5, 0x1

    const/16 v8, 0x100

    if-ge v6, v8, :cond_14

    goto :goto_a

    :cond_14
    const/16 v6, 0x3f

    :goto_a
    int-to-byte v6, v6

    .line 147
    aput-byte v6, v2, v5

    add-int/lit8 v3, v3, 0x1

    move v5, v7

    goto :goto_9

    :cond_15
    if-ltz v5, :cond_16

    .line 150
    iget-object v2, v0, Lorg/eclipse/jetty/server/HttpOutput;->_bytes:Lorg/eclipse/jetty/util/ByteArrayOutputStream2;

    invoke-virtual {v2, v5}, Lorg/eclipse/jetty/util/ByteArrayOutputStream2;->setCount(I)V

    goto :goto_b

    .line 130
    :pswitch_2
    invoke-direct {p0}, Lorg/eclipse/jetty/server/HttpWriter;->getConverter()Ljava/io/Writer;

    move-result-object v2

    .line 131
    invoke-virtual {v2, p1, p2, v1}, Ljava/io/Writer;->write([CII)V

    .line 132
    invoke-virtual {v2}, Ljava/io/Writer;->flush()V

    .line 288
    :cond_16
    :goto_b
    iget-object v2, v0, Lorg/eclipse/jetty/server/HttpOutput;->_bytes:Lorg/eclipse/jetty/util/ByteArrayOutputStream2;

    invoke-virtual {v2, v0}, Lorg/eclipse/jetty/util/ByteArrayOutputStream2;->writeTo(Ljava/io/OutputStream;)V

    sub-int/2addr p3, v1

    add-int/2addr p2, v1

    goto/16 :goto_0

    :cond_17
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
