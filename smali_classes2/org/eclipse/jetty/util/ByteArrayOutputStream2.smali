.class public Lorg/eclipse/jetty/util/ByteArrayOutputStream2;
.super Ljava/io/ByteArrayOutputStream;
.source "ByteArrayOutputStream2.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    return-void
.end method


# virtual methods
.method public getBuf()[B
    .locals 1

    .line 31
    iget-object v0, p0, Lorg/eclipse/jetty/util/ByteArrayOutputStream2;->buf:[B

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .line 32
    iget v0, p0, Lorg/eclipse/jetty/util/ByteArrayOutputStream2;->count:I

    return v0
.end method

.method public reset(I)V
    .locals 1

    .line 37
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/ByteArrayOutputStream2;->reset()V

    .line 38
    iget-object v0, p0, Lorg/eclipse/jetty/util/ByteArrayOutputStream2;->buf:[B

    array-length v0, v0

    if-ge v0, p1, :cond_0

    .line 40
    new-array p1, p1, [B

    iput-object p1, p0, Lorg/eclipse/jetty/util/ByteArrayOutputStream2;->buf:[B

    :cond_0
    return-void
.end method

.method public setCount(I)V
    .locals 0

    .line 33
    iput p1, p0, Lorg/eclipse/jetty/util/ByteArrayOutputStream2;->count:I

    return-void
.end method

.method public writeUnchecked(I)V
    .locals 3

    .line 46
    iget-object v0, p0, Lorg/eclipse/jetty/util/ByteArrayOutputStream2;->buf:[B

    iget v1, p0, Lorg/eclipse/jetty/util/ByteArrayOutputStream2;->count:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/eclipse/jetty/util/ByteArrayOutputStream2;->count:I

    int-to-byte p1, p1

    aput-byte p1, v0, v1

    return-void
.end method
