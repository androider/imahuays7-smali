.class public Lorg/eclipse/jetty/io/PooledBuffers;
.super Lorg/eclipse/jetty/io/AbstractBuffers;
.source "PooledBuffers.java"


# instance fields
.field private final _buffers:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lorg/eclipse/jetty/io/Buffer;",
            ">;"
        }
    .end annotation
.end field

.field private final _headers:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lorg/eclipse/jetty/io/Buffer;",
            ">;"
        }
    .end annotation
.end field

.field private final _maxSize:I

.field private final _otherBuffers:Z

.field private final _otherHeaders:Z

.field private final _others:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lorg/eclipse/jetty/io/Buffer;",
            ">;"
        }
    .end annotation
.end field

.field private final _size:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>(Lorg/eclipse/jetty/io/Buffers$Type;ILorg/eclipse/jetty/io/Buffers$Type;ILorg/eclipse/jetty/io/Buffers$Type;I)V
    .locals 0

    .line 38
    invoke-direct/range {p0 .. p5}, Lorg/eclipse/jetty/io/AbstractBuffers;-><init>(Lorg/eclipse/jetty/io/Buffers$Type;ILorg/eclipse/jetty/io/Buffers$Type;ILorg/eclipse/jetty/io/Buffers$Type;)V

    .line 30
    new-instance p2, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p2, p0, Lorg/eclipse/jetty/io/PooledBuffers;->_size:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 39
    new-instance p2, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {p2}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object p2, p0, Lorg/eclipse/jetty/io/PooledBuffers;->_headers:Ljava/util/Queue;

    .line 40
    new-instance p2, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {p2}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object p2, p0, Lorg/eclipse/jetty/io/PooledBuffers;->_buffers:Ljava/util/Queue;

    .line 41
    new-instance p2, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {p2}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object p2, p0, Lorg/eclipse/jetty/io/PooledBuffers;->_others:Ljava/util/Queue;

    const/4 p2, 0x0

    const/4 p4, 0x1

    if-ne p1, p5, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 42
    :goto_0
    iput-boolean p1, p0, Lorg/eclipse/jetty/io/PooledBuffers;->_otherHeaders:Z

    if-ne p3, p5, :cond_1

    const/4 p2, 0x1

    .line 43
    :cond_1
    iput-boolean p2, p0, Lorg/eclipse/jetty/io/PooledBuffers;->_otherBuffers:Z

    .line 44
    iput p6, p0, Lorg/eclipse/jetty/io/PooledBuffers;->_maxSize:I

    return-void
.end method


# virtual methods
.method public getBuffer()Lorg/eclipse/jetty/io/Buffer;
    .locals 2

    .line 61
    iget-object v0, p0, Lorg/eclipse/jetty/io/PooledBuffers;->_buffers:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/io/Buffer;

    if-nez v0, :cond_0

    .line 63
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/PooledBuffers;->newBuffer()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v0

    goto :goto_0

    .line 65
    :cond_0
    iget-object v1, p0, Lorg/eclipse/jetty/io/PooledBuffers;->_size:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    :goto_0
    return-object v0
.end method

.method public getBuffer(I)Lorg/eclipse/jetty/io/Buffer;
    .locals 2

    .line 72
    iget-boolean v0, p0, Lorg/eclipse/jetty/io/PooledBuffers;->_otherHeaders:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jetty/io/PooledBuffers;->getHeaderSize()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 73
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/PooledBuffers;->getHeader()Lorg/eclipse/jetty/io/Buffer;

    move-result-object p1

    return-object p1

    .line 74
    :cond_0
    iget-boolean v0, p0, Lorg/eclipse/jetty/io/PooledBuffers;->_otherBuffers:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/eclipse/jetty/io/PooledBuffers;->getBufferSize()I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 75
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/PooledBuffers;->getBuffer()Lorg/eclipse/jetty/io/Buffer;

    move-result-object p1

    return-object p1

    .line 78
    :cond_1
    iget-object v0, p0, Lorg/eclipse/jetty/io/PooledBuffers;->_others:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/io/Buffer;

    :goto_0
    if-eqz v0, :cond_2

    .line 81
    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->capacity()I

    move-result v1

    if-eq v1, p1, :cond_2

    .line 83
    iget-object v0, p0, Lorg/eclipse/jetty/io/PooledBuffers;->_size:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 84
    iget-object v0, p0, Lorg/eclipse/jetty/io/PooledBuffers;->_others:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/io/Buffer;

    goto :goto_0

    :cond_2
    if-nez v0, :cond_3

    .line 88
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/io/PooledBuffers;->newBuffer(I)Lorg/eclipse/jetty/io/Buffer;

    move-result-object v0

    goto :goto_1

    .line 90
    :cond_3
    iget-object p1, p0, Lorg/eclipse/jetty/io/PooledBuffers;->_size:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    :goto_1
    return-object v0
.end method

.method public getHeader()Lorg/eclipse/jetty/io/Buffer;
    .locals 2

    .line 50
    iget-object v0, p0, Lorg/eclipse/jetty/io/PooledBuffers;->_headers:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/io/Buffer;

    if-nez v0, :cond_0

    .line 52
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/PooledBuffers;->newHeader()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v0

    goto :goto_0

    .line 54
    :cond_0
    iget-object v1, p0, Lorg/eclipse/jetty/io/PooledBuffers;->_size:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    :goto_0
    return-object v0
.end method

.method public returnBuffer(Lorg/eclipse/jetty/io/Buffer;)V
    .locals 2

    .line 97
    invoke-interface {p1}, Lorg/eclipse/jetty/io/Buffer;->clear()V

    .line 98
    invoke-interface {p1}, Lorg/eclipse/jetty/io/Buffer;->isVolatile()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-interface {p1}, Lorg/eclipse/jetty/io/Buffer;->isImmutable()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 101
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/io/PooledBuffers;->_size:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    iget v1, p0, Lorg/eclipse/jetty/io/PooledBuffers;->_maxSize:I

    if-le v0, v1, :cond_1

    .line 102
    iget-object p1, p0, Lorg/eclipse/jetty/io/PooledBuffers;->_size:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    goto :goto_0

    .line 105
    :cond_1
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/io/PooledBuffers;->isHeader(Lorg/eclipse/jetty/io/Buffer;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 106
    iget-object v0, p0, Lorg/eclipse/jetty/io/PooledBuffers;->_headers:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 107
    :cond_2
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/io/PooledBuffers;->isBuffer(Lorg/eclipse/jetty/io/Buffer;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 108
    iget-object v0, p0, Lorg/eclipse/jetty/io/PooledBuffers;->_buffers:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 110
    :cond_3
    iget-object v0, p0, Lorg/eclipse/jetty/io/PooledBuffers;->_others:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void

    :cond_4
    :goto_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string v0, "%s [%d/%d@%d,%d/%d@%d,%d/%d@-]"

    const/16 v1, 0x9

    .line 116
    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lorg/eclipse/jetty/io/PooledBuffers;->_headers:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget v2, p0, Lorg/eclipse/jetty/io/PooledBuffers;->_maxSize:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    iget v2, p0, Lorg/eclipse/jetty/io/PooledBuffers;->_headerSize:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    iget-object v2, p0, Lorg/eclipse/jetty/io/PooledBuffers;->_buffers:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x4

    aput-object v2, v1, v3

    iget v2, p0, Lorg/eclipse/jetty/io/PooledBuffers;->_maxSize:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x5

    aput-object v2, v1, v3

    iget v2, p0, Lorg/eclipse/jetty/io/PooledBuffers;->_bufferSize:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x6

    aput-object v2, v1, v3

    iget-object v2, p0, Lorg/eclipse/jetty/io/PooledBuffers;->_others:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x7

    aput-object v2, v1, v3

    iget v2, p0, Lorg/eclipse/jetty/io/PooledBuffers;->_maxSize:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x8

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
