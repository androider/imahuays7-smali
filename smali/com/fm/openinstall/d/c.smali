.class public Lcom/fm/openinstall/d/c;
.super Ljava/lang/Object;


# direct methods
.method public static a(BBBB)I
    .locals 0

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x18

    and-int/lit16 p1, p1, 0xff

    shl-int/lit8 p1, p1, 0x10

    or-int/2addr p0, p1

    and-int/lit16 p1, p2, 0xff

    shl-int/lit8 p1, p1, 0x8

    or-int/2addr p0, p1

    and-int/lit16 p1, p3, 0xff

    or-int/2addr p0, p1

    return p0
.end method

.method public static a([BILjava/nio/ByteOrder;)I
    .locals 2

    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    if-ne p2, v0, :cond_0

    add-int/lit8 p2, p1, 0x3

    aget-byte p2, p0, p2

    add-int/lit8 v0, p1, 0x2

    aget-byte v0, p0, v0

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    aget-byte p0, p0, p1

    :goto_0
    invoke-static {p2, v0, v1, p0}, Lcom/fm/openinstall/d/c;->a(BBBB)I

    move-result p0

    return p0

    :cond_0
    aget-byte p2, p0, p1

    add-int/lit8 v0, p1, 0x1

    aget-byte v0, p0, v0

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    add-int/lit8 p1, p1, 0x3

    aget-byte p0, p0, p1

    goto :goto_0
.end method

.method public static a(BBBBBBBB)J
    .locals 2

    invoke-static {p0, p1, p2, p3}, Lcom/fm/openinstall/d/c;->a(BBBB)I

    move-result p0

    int-to-long p0, p0

    const-wide/16 p2, -0x1

    and-long v0, p0, p2

    const/16 p0, 0x20

    shl-long p0, v0, p0

    invoke-static {p4, p5, p6, p7}, Lcom/fm/openinstall/d/c;->a(BBBB)I

    move-result p4

    int-to-long p4, p4

    and-long p6, p4, p2

    or-long p2, p0, p6

    return-wide p2
.end method

.method public static a(BB)S
    .locals 0

    shl-int/lit8 p0, p0, 0x8

    and-int/lit16 p1, p1, 0xff

    or-int/2addr p0, p1

    int-to-short p0, p0

    return p0
.end method

.method public static b([BILjava/nio/ByteOrder;)S
    .locals 1

    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    if-ne p2, v0, :cond_0

    add-int/lit8 p2, p1, 0x1

    aget-byte p2, p0, p2

    aget-byte p0, p0, p1

    :goto_0
    invoke-static {p2, p0}, Lcom/fm/openinstall/d/c;->a(BB)S

    move-result p0

    return p0

    :cond_0
    aget-byte p2, p0, p1

    add-int/lit8 p1, p1, 0x1

    aget-byte p0, p0, p1

    goto :goto_0
.end method

.method public static c([BILjava/nio/ByteOrder;)J
    .locals 8

    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    if-ne p2, v0, :cond_0

    add-int/lit8 p2, p1, 0x7

    aget-byte v0, p0, p2

    add-int/lit8 p2, p1, 0x6

    aget-byte v1, p0, p2

    add-int/lit8 p2, p1, 0x5

    aget-byte v2, p0, p2

    add-int/lit8 p2, p1, 0x4

    aget-byte v3, p0, p2

    add-int/lit8 p2, p1, 0x3

    aget-byte v4, p0, p2

    add-int/lit8 p2, p1, 0x2

    aget-byte v5, p0, p2

    add-int/lit8 p2, p1, 0x1

    aget-byte v6, p0, p2

    aget-byte v7, p0, p1

    :goto_0
    invoke-static/range {v0 .. v7}, Lcom/fm/openinstall/d/c;->a(BBBBBBBB)J

    move-result-wide p0

    return-wide p0

    :cond_0
    aget-byte v0, p0, p1

    add-int/lit8 p2, p1, 0x1

    aget-byte v1, p0, p2

    add-int/lit8 p2, p1, 0x2

    aget-byte v2, p0, p2

    add-int/lit8 p2, p1, 0x3

    aget-byte v3, p0, p2

    add-int/lit8 p2, p1, 0x4

    aget-byte v4, p0, p2

    add-int/lit8 p2, p1, 0x5

    aget-byte v5, p0, p2

    add-int/lit8 p2, p1, 0x6

    aget-byte v6, p0, p2

    add-int/lit8 p1, p1, 0x7

    aget-byte v7, p0, p1

    goto :goto_0
.end method
