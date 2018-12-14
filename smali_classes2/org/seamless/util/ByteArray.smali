.class public Lorg/seamless/util/ByteArray;
.super Ljava/lang/Object;
.source "ByteArray.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toPrimitive([Ljava/lang/Byte;)[B
    .locals 3

    .line 23
    array-length v0, p0

    new-array v0, v0, [B

    const/4 v1, 0x0

    .line 24
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 25
    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    aput-byte v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static toWrapper([B)[Ljava/lang/Byte;
    .locals 3

    .line 31
    array-length v0, p0

    new-array v0, v0, [Ljava/lang/Byte;

    const/4 v1, 0x0

    .line 32
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 33
    aget-byte v2, p0, v1

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method
