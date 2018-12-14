.class public Lorg/eclipse/jetty/io/nio/IndirectNIOBuffer;
.super Lorg/eclipse/jetty/io/ByteArrayBuffer;
.source "IndirectNIOBuffer.java"

# interfaces
.implements Lorg/eclipse/jetty/io/nio/NIOBuffer;


# instance fields
.field protected final _buf:Ljava/nio/ByteBuffer;


# direct methods
.method public constructor <init>(I)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x2

    .line 32
    invoke-direct {p0, p1, v1, v0}, Lorg/eclipse/jetty/io/ByteArrayBuffer;-><init>(IIZ)V

    .line 33
    iget-object p1, p0, Lorg/eclipse/jetty/io/nio/IndirectNIOBuffer;->_bytes:[B

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jetty/io/nio/IndirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    .line 34
    iget-object p1, p0, Lorg/eclipse/jetty/io/nio/IndirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 35
    iget-object p1, p0, Lorg/eclipse/jetty/io/nio/IndirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/IndirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;Z)V
    .locals 7

    .line 41
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    const/4 v6, 0x0

    if-eqz p2, :cond_0

    const/4 v4, 0x0

    goto :goto_0

    :cond_0
    const/4 p2, 0x2

    const/4 v4, 0x2

    :goto_0
    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jetty/io/ByteArrayBuffer;-><init>([BIIIZ)V

    .line 42
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 43
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 44
    :cond_1
    iput-object p1, p0, Lorg/eclipse/jetty/io/nio/IndirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    .line 45
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result p2

    iput p2, p0, Lorg/eclipse/jetty/io/nio/IndirectNIOBuffer;->_get:I

    .line 46
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result p2

    iput p2, p0, Lorg/eclipse/jetty/io/nio/IndirectNIOBuffer;->_put:I

    .line 47
    invoke-virtual {p1, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 48
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    return-void
.end method


# virtual methods
.method public getByteBuffer()Ljava/nio/ByteBuffer;
    .locals 1

    .line 54
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/IndirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public isDirect()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
