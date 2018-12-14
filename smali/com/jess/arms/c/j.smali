.class public Lcom/jess/arms/c/j;
.super Ljava/lang/Object;
.source "ZipHelper.java"


# direct methods
.method public static a([BLjava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 67
    invoke-static {p0}, Lcom/jess/arms/c/j;->a([B)[B

    move-result-object p0

    .line 74
    :try_start_0
    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x0

    array-length v2, p0

    invoke-direct {v0, p0, v1, v2, p1}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 82
    invoke-static {p0}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public static a(Ljava/io/Closeable;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 265
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception p0

    .line 267
    throw p0

    :catch_1
    :cond_0
    :goto_0
    return-void
.end method

.method public static a([B)[B
    .locals 8

    .line 99
    new-instance v0, Ljava/util/zip/Inflater;

    invoke-direct {v0}, Ljava/util/zip/Inflater;-><init>()V

    .line 101
    array-length v1, p0

    const/4 v2, 0x0

    .line 104
    invoke-virtual {v0, p0, v2, v1}, Ljava/util/zip/Inflater;->setInput([BII)V

    .line 113
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    const/4 v3, 0x0

    .line 116
    :try_start_0
    invoke-virtual {v0}, Ljava/util/zip/Inflater;->needsInput()Z

    move-result v4

    if-nez v4, :cond_1

    .line 117
    new-array v4, v1, [B

    .line 120
    invoke-virtual {v0, v4}, Ljava/util/zip/Inflater;->inflate([B)I

    move-result v5

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_0

    .line 127
    aget-byte v7, v4, v6

    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    invoke-interface {p0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 131
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [B
    :try_end_0
    .catch Ljava/util/zip/DataFormatException; {:try_start_0 .. :try_end_0} :catch_1

    .line 132
    :goto_1
    :try_start_1
    array-length v3, v1

    if-ge v2, v3, :cond_2

    .line 133
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Byte;

    invoke-virtual {v3}, Ljava/lang/Byte;->byteValue()B

    move-result v3

    aput-byte v3, v1, v2
    :try_end_1
    .catch Ljava/util/zip/DataFormatException; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_2

    :catch_1
    move-exception p0

    move-object v1, v3

    .line 137
    :goto_2
    invoke-static {p0}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    .line 140
    :cond_2
    invoke-virtual {v0}, Ljava/util/zip/Inflater;->end()V

    return-object v1
.end method

.method public static b([BLjava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 240
    array-length v0, p0

    const/4 v1, 0x0

    .line 244
    :try_start_0
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 245
    :try_start_1
    new-instance p0, Ljava/util/zip/GZIPInputStream;

    invoke-direct {p0, v2, v0}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 246
    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 247
    new-array v0, v0, [B

    .line 249
    :goto_0
    invoke-virtual {p0, v0}, Ljava/util/zip/GZIPInputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    .line 250
    new-instance v5, Ljava/lang/String;

    const/4 v6, 0x0

    invoke-direct {v5, v0, v6, v4, p1}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 252
    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 256
    invoke-static {p0}, Lcom/jess/arms/c/j;->a(Ljava/io/Closeable;)V

    .line 257
    invoke-static {v2}, Lcom/jess/arms/c/j;->a(Ljava/io/Closeable;)V

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_1

    :catchall_0
    move-exception p1

    move-object p0, v1

    goto :goto_2

    :catch_1
    move-exception p1

    move-object p0, v1

    goto :goto_1

    :catchall_1
    move-exception p1

    move-object p0, v1

    move-object v2, p0

    goto :goto_2

    :catch_2
    move-exception p1

    move-object p0, v1

    move-object v2, p0

    .line 254
    :goto_1
    :try_start_3
    invoke-static {p1}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 256
    invoke-static {p0}, Lcom/jess/arms/c/j;->a(Ljava/io/Closeable;)V

    .line 257
    invoke-static {v2}, Lcom/jess/arms/c/j;->a(Ljava/io/Closeable;)V

    return-object v1

    :catchall_2
    move-exception p1

    .line 256
    :goto_2
    invoke-static {p0}, Lcom/jess/arms/c/j;->a(Ljava/io/Closeable;)V

    .line 257
    invoke-static {v2}, Lcom/jess/arms/c/j;->a(Ljava/io/Closeable;)V

    throw p1
.end method
