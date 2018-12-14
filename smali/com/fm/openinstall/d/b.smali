.class public Lcom/fm/openinstall/d/b;
.super Ljava/lang/Object;


# direct methods
.method private static a(Ljava/nio/channels/FileChannel;JLjava/nio/ByteBuffer;)I
    .locals 6

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, p3, p1, p2}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;J)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    return v0

    :cond_0
    int-to-long v2, v1

    add-long v4, p1, v2

    add-int/2addr v0, v1

    move-wide p1, v4

    goto :goto_0

    :cond_1
    return v0
.end method

.method private static a(Ljava/nio/channels/FileChannel;J[BII)I
    .locals 4

    invoke-static {p3, p4, p5}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object p3

    const/4 p4, 0x0

    :goto_0
    if-ge p4, p5, :cond_1

    int-to-long v0, p4

    add-long v2, p1, v0

    invoke-virtual {p0, p3, v2, v3}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;J)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return p4

    :cond_0
    add-int/2addr p4, v0

    goto :goto_0

    :cond_1
    return p4
.end method

.method public static a(Ljava/nio/channels/FileChannel;)Lcom/fm/openinstall/d/g;
    .locals 27

    const/16 v0, 0x80

    new-array v0, v0, [B

    invoke-virtual/range {p0 .. p0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v7

    const-wide/16 v9, 0x16

    cmp-long v1, v7, v9

    const/4 v11, 0x0

    if-gez v1, :cond_0

    return-object v11

    :cond_0
    const-wide/32 v1, 0x10015

    cmp-long v3, v7, v1

    const-wide/16 v12, 0x0

    if-lez v3, :cond_1

    sub-long v3, v7, v1

    goto :goto_0

    :cond_1
    move-wide v3, v12

    :goto_0
    array-length v1, v0

    add-int/lit8 v1, v1, -0x16

    int-to-long v1, v1

    sub-long v14, v3, v1

    array-length v1, v0

    int-to-long v1, v1

    sub-long v3, v7, v1

    :goto_1
    move-wide v5, v3

    cmp-long v1, v5, v14

    if-ltz v1, :cond_8

    cmp-long v1, v5, v12

    const/4 v2, 0x0

    if-gez v1, :cond_2

    neg-long v3, v5

    long-to-int v1, v3

    invoke-static {v0, v2, v1, v2}, Ljava/util/Arrays;->fill([BIIB)V

    move/from16 v16, v1

    goto :goto_2

    :cond_2
    const/16 v16, 0x0

    :goto_2
    cmp-long v1, v5, v12

    if-gez v1, :cond_3

    move-wide v2, v12

    goto :goto_3

    :cond_3
    move-wide v2, v5

    :goto_3
    array-length v1, v0

    sub-int v17, v1, v16

    move-object/from16 v1, p0

    move-object v4, v0

    move-wide/from16 v18, v5

    move/from16 v5, v16

    move/from16 v6, v17

    invoke-static/range {v1 .. v6}, Lcom/fm/openinstall/d/b;->a(Ljava/nio/channels/FileChannel;J[BII)I

    array-length v1, v0

    add-int/lit8 v1, v1, -0x16

    :goto_4
    if-ltz v1, :cond_7

    aget-byte v2, v0, v1

    const/16 v3, 0x50

    if-ne v2, v3, :cond_6

    add-int/lit8 v2, v1, 0x1

    aget-byte v2, v0, v2

    const/16 v3, 0x4b

    if-ne v2, v3, :cond_6

    add-int/lit8 v2, v1, 0x2

    aget-byte v2, v0, v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_6

    add-int/lit8 v2, v1, 0x3

    aget-byte v2, v0, v2

    const/4 v3, 0x6

    if-ne v2, v3, :cond_6

    add-int/lit8 v2, v1, 0x14

    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {v0, v2, v3}, Lcom/fm/openinstall/d/c;->b([BILjava/nio/ByteOrder;)S

    move-result v2

    const v3, 0xffff

    and-int/2addr v2, v3

    int-to-long v4, v1

    add-long v12, v18, v4

    add-long v4, v12, v9

    int-to-long v9, v2

    add-long v16, v4, v9

    cmp-long v4, v16, v7

    if-nez v4, :cond_5

    new-instance v4, Lcom/fm/openinstall/d/g;

    invoke-direct {v4}, Lcom/fm/openinstall/d/g;-><init>()V

    iput-wide v12, v4, Lcom/fm/openinstall/d/g;->h:J

    add-int/lit8 v5, v1, 0x4

    sget-object v6, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {v0, v5, v6}, Lcom/fm/openinstall/d/c;->b([BILjava/nio/ByteOrder;)S

    move-result v5

    and-int/2addr v5, v3

    iput v5, v4, Lcom/fm/openinstall/d/g;->a:I

    add-int/lit8 v5, v1, 0x6

    sget-object v6, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {v0, v5, v6}, Lcom/fm/openinstall/d/c;->b([BILjava/nio/ByteOrder;)S

    move-result v5

    and-int/2addr v5, v3

    iput v5, v4, Lcom/fm/openinstall/d/g;->b:I

    add-int/lit8 v5, v1, 0x8

    sget-object v6, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {v0, v5, v6}, Lcom/fm/openinstall/d/c;->b([BILjava/nio/ByteOrder;)S

    move-result v5

    and-int/2addr v5, v3

    iput v5, v4, Lcom/fm/openinstall/d/g;->c:I

    add-int/lit8 v5, v1, 0xa

    sget-object v6, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {v0, v5, v6}, Lcom/fm/openinstall/d/c;->b([BILjava/nio/ByteOrder;)S

    move-result v5

    and-int/2addr v3, v5

    iput v3, v4, Lcom/fm/openinstall/d/g;->d:I

    add-int/lit8 v3, v1, 0xc

    sget-object v5, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {v0, v3, v5}, Lcom/fm/openinstall/d/c;->a([BILjava/nio/ByteOrder;)I

    move-result v3

    int-to-long v5, v3

    const-wide v7, 0xffffffffL

    and-long v9, v5, v7

    iput-wide v9, v4, Lcom/fm/openinstall/d/g;->e:J

    add-int/lit8 v1, v1, 0x10

    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {v0, v1, v3}, Lcom/fm/openinstall/d/c;->a([BILjava/nio/ByteOrder;)I

    move-result v0

    int-to-long v0, v0

    and-long v5, v0, v7

    iput-wide v5, v4, Lcom/fm/openinstall/d/g;->f:J

    if-lez v2, :cond_4

    new-array v0, v2, [B

    iput-object v0, v4, Lcom/fm/openinstall/d/g;->g:[B

    iget-wide v0, v4, Lcom/fm/openinstall/d/g;->h:J

    const-wide/16 v5, 0x16

    add-long v21, v0, v5

    iget-object v0, v4, Lcom/fm/openinstall/d/g;->g:[B

    const/16 v24, 0x0

    move-object/from16 v20, p0

    move-object/from16 v23, v0

    move/from16 v25, v2

    invoke-static/range {v20 .. v25}, Lcom/fm/openinstall/d/b;->a(Ljava/nio/channels/FileChannel;J[BII)I

    :cond_4
    return-object v4

    :cond_5
    const-wide/16 v5, 0x16

    goto :goto_5

    :cond_6
    move-wide v5, v9

    :goto_5
    add-int/lit8 v1, v1, -0x1

    move-wide v9, v5

    const-wide/16 v12, 0x0

    goto/16 :goto_4

    :cond_7
    move-wide v5, v9

    array-length v1, v0

    add-int/lit8 v1, v1, -0x16

    int-to-long v1, v1

    sub-long v3, v18, v1

    const-wide/16 v12, 0x0

    goto/16 :goto_1

    :cond_8
    return-object v11
.end method

.method public static b(Ljava/nio/channels/FileChannel;)Lcom/fm/openinstall/d/a;
    .locals 12

    invoke-static {p0}, Lcom/fm/openinstall/d/b;->a(Ljava/nio/channels/FileChannel;)Lcom/fm/openinstall/d/g;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-wide v1, v0, Lcom/fm/openinstall/d/g;->f:J

    const-wide/16 v3, 0x20

    cmp-long v5, v1, v3

    if-gez v5, :cond_1

    new-instance p0, Lcom/fm/openinstall/d/a;

    invoke-direct {p0, v0}, Lcom/fm/openinstall/d/a;-><init>(Lcom/fm/openinstall/d/g;)V

    return-object p0

    :cond_1
    const/16 v1, 0x18

    new-array v8, v1, [B

    iget-wide v2, v0, Lcom/fm/openinstall/d/g;->f:J

    array-length v4, v8

    int-to-long v4, v4

    sub-long v6, v2, v4

    const/4 v9, 0x0

    array-length v10, v8

    move-object v2, p0

    move-wide v3, v6

    move-object v5, v8

    move v6, v9

    move v7, v10

    invoke-static/range {v2 .. v7}, Lcom/fm/openinstall/d/b;->a(Ljava/nio/channels/FileChannel;J[BII)I

    array-length v2, v8

    sub-int/2addr v2, v1

    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {v8, v2, v3}, Lcom/fm/openinstall/d/c;->c([BILjava/nio/ByteOrder;)J

    move-result-wide v2

    array-length v4, v8

    add-int/lit8 v4, v4, -0x10

    sget-object v5, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {v8, v4, v5}, Lcom/fm/openinstall/d/c;->c([BILjava/nio/ByteOrder;)J

    move-result-wide v4

    array-length v6, v8

    add-int/lit8 v6, v6, -0x8

    sget-object v7, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {v8, v6, v7}, Lcom/fm/openinstall/d/c;->c([BILjava/nio/ByteOrder;)J

    move-result-wide v6

    const-wide v8, 0x20676953204b5041L

    cmp-long v10, v4, v8

    if-nez v10, :cond_9

    const-wide v4, 0x3234206b636f6c42L    # 7.465385175170059E-67

    cmp-long v8, v6, v4

    if-eqz v8, :cond_2

    goto/16 :goto_3

    :cond_2
    const-wide/16 v4, 0x8

    add-long v6, v2, v4

    long-to-int v4, v6

    iget-wide v5, v0, Lcom/fm/openinstall/d/g;->f:J

    int-to-long v7, v4

    sub-long v9, v5, v7

    const/16 v5, 0x20

    if-lt v4, v5, :cond_8

    const-wide/16 v5, 0x0

    cmp-long v11, v9, v5

    if-gez v11, :cond_3

    goto :goto_2

    :cond_3
    const-wide/32 v5, 0x1400000

    cmp-long v11, v7, v5

    if-lez v11, :cond_4

    new-instance p0, Lcom/fm/openinstall/d/a;

    invoke-direct {p0, v0}, Lcom/fm/openinstall/d/a;-><init>(Lcom/fm/openinstall/d/g;)V

    return-object p0

    :cond_4
    sub-int/2addr v4, v1

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    sget-object v4, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-static {p0, v9, v10, v1}, Lcom/fm/openinstall/d/b;->a(Ljava/nio/channels/FileChannel;JLjava/nio/ByteBuffer;)I

    move-result p0

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v4

    if-ne p0, v4, :cond_7

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    move-result-object p0

    check-cast p0, Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v4

    cmp-long p0, v4, v2

    if-eqz p0, :cond_5

    goto :goto_1

    :cond_5
    new-instance p0, Lcom/fm/openinstall/d/e;

    invoke-direct {p0}, Lcom/fm/openinstall/d/e;-><init>()V

    :goto_0
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v2

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    const-wide/16 v5, 0x4

    sub-long v7, v2, v5

    long-to-int v2, v7

    new-array v2, v2, [B

    const/4 v3, 0x0

    array-length v5, v2

    invoke-virtual {v1, v2, v3, v5}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    invoke-virtual {p0, v4, v2}, Lcom/fm/openinstall/d/e;->a(I[B)V

    goto :goto_0

    :cond_6
    new-instance v1, Lcom/fm/openinstall/d/a;

    invoke-direct {v1, v9, v10, p0, v0}, Lcom/fm/openinstall/d/a;-><init>(JLcom/fm/openinstall/d/e;Lcom/fm/openinstall/d/g;)V

    return-object v1

    :cond_7
    :goto_1
    new-instance p0, Lcom/fm/openinstall/d/a;

    invoke-direct {p0, v0}, Lcom/fm/openinstall/d/a;-><init>(Lcom/fm/openinstall/d/g;)V

    return-object p0

    :cond_8
    :goto_2
    new-instance p0, Lcom/fm/openinstall/d/a;

    invoke-direct {p0, v0}, Lcom/fm/openinstall/d/a;-><init>(Lcom/fm/openinstall/d/g;)V

    return-object p0

    :cond_9
    :goto_3
    new-instance p0, Lcom/fm/openinstall/d/a;

    invoke-direct {p0, v0}, Lcom/fm/openinstall/d/a;-><init>(Lcom/fm/openinstall/d/g;)V

    return-object p0
.end method
