.class public Lorg/eclipse/jetty/io/nio/SslConnection;
.super Lorg/eclipse/jetty/io/AbstractConnection;
.source "SslConnection.java"

# interfaces
.implements Lorg/eclipse/jetty/io/nio/AsyncConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jetty/io/nio/SslConnection$SslEndPoint;,
        Lorg/eclipse/jetty/io/nio/SslConnection$SslBuffers;
    }
.end annotation


# static fields
.field private static final __ZERO_BUFFER:Lorg/eclipse/jetty/io/nio/NIOBuffer;

.field private static final __buffers:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lorg/eclipse/jetty/io/nio/SslConnection$SslBuffers;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private _aEndp:Lorg/eclipse/jetty/io/AsyncEndPoint;

.field private _allocations:I

.field private _allowRenegotiate:Z

.field private _buffers:Lorg/eclipse/jetty/io/nio/SslConnection$SslBuffers;

.field private _connection:Lorg/eclipse/jetty/io/nio/AsyncConnection;

.field private final _engine:Ljavax/net/ssl/SSLEngine;

.field private _handshook:Z

.field private _inbound:Lorg/eclipse/jetty/io/nio/NIOBuffer;

.field private _ishut:Z

.field private final _logger:Lorg/eclipse/jetty/util/log/Logger;

.field private _oshut:Z

.field private _outbound:Lorg/eclipse/jetty/io/nio/NIOBuffer;

.field private final _progressed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final _session:Ljavax/net/ssl/SSLSession;

.field private final _sslEndPoint:Lorg/eclipse/jetty/io/nio/SslConnection$SslEndPoint;

.field private _unwrapBuf:Lorg/eclipse/jetty/io/nio/NIOBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 52
    new-instance v0, Lorg/eclipse/jetty/io/nio/IndirectNIOBuffer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/eclipse/jetty/io/nio/IndirectNIOBuffer;-><init>(I)V

    sput-object v0, Lorg/eclipse/jetty/io/nio/SslConnection;->__ZERO_BUFFER:Lorg/eclipse/jetty/io/nio/NIOBuffer;

    .line 54
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lorg/eclipse/jetty/io/nio/SslConnection;->__buffers:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>(Ljavax/net/ssl/SSLEngine;Lorg/eclipse/jetty/io/EndPoint;)V
    .locals 2

    .line 91
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/eclipse/jetty/io/nio/SslConnection;-><init>(Ljavax/net/ssl/SSLEngine;Lorg/eclipse/jetty/io/EndPoint;J)V

    return-void
.end method

.method public constructor <init>(Ljavax/net/ssl/SSLEngine;Lorg/eclipse/jetty/io/EndPoint;J)V
    .locals 0

    .line 97
    invoke-direct {p0, p2, p3, p4}, Lorg/eclipse/jetty/io/AbstractConnection;-><init>(Lorg/eclipse/jetty/io/EndPoint;J)V

    const-string p3, "org.eclipse.jetty.io.nio.ssl"

    .line 50
    invoke-static {p3}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/String;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object p3

    iput-object p3, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_logger:Lorg/eclipse/jetty/util/log/Logger;

    const/4 p3, 0x1

    .line 65
    iput-boolean p3, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_allowRenegotiate:Z

    .line 69
    new-instance p3, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p3, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_progressed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 98
    iput-object p1, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_engine:Ljavax/net/ssl/SSLEngine;

    .line 99
    iget-object p1, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {p1}, Ljavax/net/ssl/SSLEngine;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_session:Ljavax/net/ssl/SSLSession;

    .line 100
    check-cast p2, Lorg/eclipse/jetty/io/AsyncEndPoint;

    iput-object p2, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_aEndp:Lorg/eclipse/jetty/io/AsyncEndPoint;

    .line 101
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/SslConnection;->newSslEndPoint()Lorg/eclipse/jetty/io/nio/SslConnection$SslEndPoint;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_sslEndPoint:Lorg/eclipse/jetty/io/nio/SslConnection$SslEndPoint;

    return-void
.end method

.method static synthetic access$000(Lorg/eclipse/jetty/io/nio/SslConnection;)Ljavax/net/ssl/SSLEngine;
    .locals 0

    .line 48
    iget-object p0, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_engine:Ljavax/net/ssl/SSLEngine;

    return-object p0
.end method

.method static synthetic access$100(Lorg/eclipse/jetty/io/nio/SslConnection;)Lorg/eclipse/jetty/io/AsyncEndPoint;
    .locals 0

    .line 48
    iget-object p0, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_aEndp:Lorg/eclipse/jetty/io/AsyncEndPoint;

    return-object p0
.end method

.method static synthetic access$1000(Lorg/eclipse/jetty/io/nio/SslConnection;)Lorg/eclipse/jetty/io/EndPoint;
    .locals 0

    .line 48
    iget-object p0, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    return-object p0
.end method

.method static synthetic access$1100(Lorg/eclipse/jetty/io/nio/SslConnection;)Lorg/eclipse/jetty/io/EndPoint;
    .locals 0

    .line 48
    iget-object p0, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    return-object p0
.end method

.method static synthetic access$1200(Lorg/eclipse/jetty/io/nio/SslConnection;)Lorg/eclipse/jetty/io/EndPoint;
    .locals 0

    .line 48
    iget-object p0, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    return-object p0
.end method

.method static synthetic access$1300(Lorg/eclipse/jetty/io/nio/SslConnection;)Lorg/eclipse/jetty/io/EndPoint;
    .locals 0

    .line 48
    iget-object p0, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    return-object p0
.end method

.method static synthetic access$1400(Lorg/eclipse/jetty/io/nio/SslConnection;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 48
    iget-object p0, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_progressed:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic access$1500(Lorg/eclipse/jetty/io/nio/SslConnection;)Lorg/eclipse/jetty/io/nio/AsyncConnection;
    .locals 0

    .line 48
    iget-object p0, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_connection:Lorg/eclipse/jetty/io/nio/AsyncConnection;

    return-object p0
.end method

.method static synthetic access$1502(Lorg/eclipse/jetty/io/nio/SslConnection;Lorg/eclipse/jetty/io/nio/AsyncConnection;)Lorg/eclipse/jetty/io/nio/AsyncConnection;
    .locals 0

    .line 48
    iput-object p1, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_connection:Lorg/eclipse/jetty/io/nio/AsyncConnection;

    return-object p1
.end method

.method static synthetic access$1600(Lorg/eclipse/jetty/io/nio/SslConnection;)Lorg/eclipse/jetty/io/nio/NIOBuffer;
    .locals 0

    .line 48
    iget-object p0, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_outbound:Lorg/eclipse/jetty/io/nio/NIOBuffer;

    return-object p0
.end method

.method static synthetic access$1700(Lorg/eclipse/jetty/io/nio/SslConnection;)Z
    .locals 0

    .line 48
    iget-boolean p0, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_ishut:Z

    return p0
.end method

.method static synthetic access$200(Lorg/eclipse/jetty/io/nio/SslConnection;)Ljavax/net/ssl/SSLSession;
    .locals 0

    .line 48
    iget-object p0, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_session:Ljavax/net/ssl/SSLSession;

    return-object p0
.end method

.method static synthetic access$300(Lorg/eclipse/jetty/io/nio/SslConnection;)Lorg/eclipse/jetty/util/log/Logger;
    .locals 0

    .line 48
    iget-object p0, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_logger:Lorg/eclipse/jetty/util/log/Logger;

    return-object p0
.end method

.method static synthetic access$400(Lorg/eclipse/jetty/io/nio/SslConnection;)Z
    .locals 0

    .line 48
    iget-boolean p0, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_oshut:Z

    return p0
.end method

.method static synthetic access$402(Lorg/eclipse/jetty/io/nio/SslConnection;Z)Z
    .locals 0

    .line 48
    iput-boolean p1, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_oshut:Z

    return p1
.end method

.method static synthetic access$500(Lorg/eclipse/jetty/io/nio/SslConnection;)Lorg/eclipse/jetty/io/EndPoint;
    .locals 0

    .line 48
    iget-object p0, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    return-object p0
.end method

.method static synthetic access$600(Lorg/eclipse/jetty/io/nio/SslConnection;)Lorg/eclipse/jetty/io/nio/NIOBuffer;
    .locals 0

    .line 48
    iget-object p0, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_unwrapBuf:Lorg/eclipse/jetty/io/nio/NIOBuffer;

    return-object p0
.end method

.method static synthetic access$700(Lorg/eclipse/jetty/io/nio/SslConnection;)Lorg/eclipse/jetty/io/nio/NIOBuffer;
    .locals 0

    .line 48
    iget-object p0, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_inbound:Lorg/eclipse/jetty/io/nio/NIOBuffer;

    return-object p0
.end method

.method static synthetic access$800(Lorg/eclipse/jetty/io/nio/SslConnection;)Lorg/eclipse/jetty/io/EndPoint;
    .locals 0

    .line 48
    iget-object p0, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    return-object p0
.end method

.method static synthetic access$900(Lorg/eclipse/jetty/io/nio/SslConnection;Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 48
    invoke-direct {p0, p1, p2}, Lorg/eclipse/jetty/io/nio/SslConnection;->process(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)Z

    move-result p0

    return p0
.end method

.method private allocateBuffers()V
    .locals 3

    .line 138
    monitor-enter p0

    .line 140
    :try_start_0
    iget v0, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_allocations:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_allocations:I

    if-nez v0, :cond_1

    .line 142
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_buffers:Lorg/eclipse/jetty/io/nio/SslConnection$SslBuffers;

    if-nez v0, :cond_1

    .line 144
    sget-object v0, Lorg/eclipse/jetty/io/nio/SslConnection;->__buffers:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/io/nio/SslConnection$SslBuffers;

    iput-object v0, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_buffers:Lorg/eclipse/jetty/io/nio/SslConnection$SslBuffers;

    .line 145
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_buffers:Lorg/eclipse/jetty/io/nio/SslConnection$SslBuffers;

    if-nez v0, :cond_0

    .line 146
    new-instance v0, Lorg/eclipse/jetty/io/nio/SslConnection$SslBuffers;

    iget-object v1, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_session:Ljavax/net/ssl/SSLSession;

    invoke-interface {v1}, Ljavax/net/ssl/SSLSession;->getPacketBufferSize()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_session:Ljavax/net/ssl/SSLSession;

    invoke-interface {v2}, Ljavax/net/ssl/SSLSession;->getApplicationBufferSize()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    invoke-direct {v0, v1, v2}, Lorg/eclipse/jetty/io/nio/SslConnection$SslBuffers;-><init>(II)V

    iput-object v0, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_buffers:Lorg/eclipse/jetty/io/nio/SslConnection$SslBuffers;

    .line 147
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_buffers:Lorg/eclipse/jetty/io/nio/SslConnection$SslBuffers;

    iget-object v0, v0, Lorg/eclipse/jetty/io/nio/SslConnection$SslBuffers;->_in:Lorg/eclipse/jetty/io/nio/NIOBuffer;

    iput-object v0, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_inbound:Lorg/eclipse/jetty/io/nio/NIOBuffer;

    .line 148
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_buffers:Lorg/eclipse/jetty/io/nio/SslConnection$SslBuffers;

    iget-object v0, v0, Lorg/eclipse/jetty/io/nio/SslConnection$SslBuffers;->_out:Lorg/eclipse/jetty/io/nio/NIOBuffer;

    iput-object v0, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_outbound:Lorg/eclipse/jetty/io/nio/NIOBuffer;

    .line 149
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_buffers:Lorg/eclipse/jetty/io/nio/SslConnection$SslBuffers;

    iget-object v0, v0, Lorg/eclipse/jetty/io/nio/SslConnection$SslBuffers;->_unwrap:Lorg/eclipse/jetty/io/nio/NIOBuffer;

    iput-object v0, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_unwrapBuf:Lorg/eclipse/jetty/io/nio/NIOBuffer;

    .line 150
    sget-object v0, Lorg/eclipse/jetty/io/nio/SslConnection;->__buffers:Ljava/lang/ThreadLocal;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 153
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private closeInbound()V
    .locals 2

    .line 435
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->closeInbound()V
    :try_end_0
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 439
    iget-object v1, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_logger:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v1, v0}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private extractByteBuffer(Lorg/eclipse/jetty/io/Buffer;)Ljava/nio/ByteBuffer;
    .locals 1

    .line 602
    invoke-interface {p1}, Lorg/eclipse/jetty/io/Buffer;->buffer()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v0

    instance-of v0, v0, Lorg/eclipse/jetty/io/nio/NIOBuffer;

    if-eqz v0, :cond_0

    .line 603
    invoke-interface {p1}, Lorg/eclipse/jetty/io/Buffer;->buffer()Lorg/eclipse/jetty/io/Buffer;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jetty/io/nio/NIOBuffer;

    invoke-interface {p1}, Lorg/eclipse/jetty/io/nio/NIOBuffer;->getByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1

    .line 604
    :cond_0
    invoke-interface {p1}, Lorg/eclipse/jetty/io/Buffer;->array()[B

    move-result-object p1

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1
.end method

.method private declared-synchronized process(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)Z
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    monitor-enter p0

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 282
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lorg/eclipse/jetty/io/nio/SslConnection;->allocateBuffers()V

    if-nez v2, :cond_0

    .line 288
    iget-object v2, v1, Lorg/eclipse/jetty/io/nio/SslConnection;->_unwrapBuf:Lorg/eclipse/jetty/io/nio/NIOBuffer;

    invoke-interface {v2}, Lorg/eclipse/jetty/io/nio/NIOBuffer;->compact()V

    .line 289
    iget-object v2, v1, Lorg/eclipse/jetty/io/nio/SslConnection;->_unwrapBuf:Lorg/eclipse/jetty/io/nio/NIOBuffer;

    goto :goto_0

    .line 292
    :cond_0
    invoke-interface/range {p1 .. p1}, Lorg/eclipse/jetty/io/Buffer;->capacity()I

    move-result v6

    iget-object v7, v1, Lorg/eclipse/jetty/io/nio/SslConnection;->_session:Ljavax/net/ssl/SSLSession;

    invoke-interface {v7}, Ljavax/net/ssl/SSLSession;->getApplicationBufferSize()I

    move-result v7

    if-ge v6, v7, :cond_2

    const/4 v6, 0x0

    .line 295
    invoke-direct {v1, v6, v3}, Lorg/eclipse/jetty/io/nio/SslConnection;->process(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)Z

    move-result v3

    .line 298
    iget-object v6, v1, Lorg/eclipse/jetty/io/nio/SslConnection;->_unwrapBuf:Lorg/eclipse/jetty/io/nio/NIOBuffer;

    if-eqz v6, :cond_1

    iget-object v6, v1, Lorg/eclipse/jetty/io/nio/SslConnection;->_unwrapBuf:Lorg/eclipse/jetty/io/nio/NIOBuffer;

    invoke-interface {v6}, Lorg/eclipse/jetty/io/nio/NIOBuffer;->hasContent()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 301
    iget-object v3, v1, Lorg/eclipse/jetty/io/nio/SslConnection;->_unwrapBuf:Lorg/eclipse/jetty/io/nio/NIOBuffer;

    iget-object v6, v1, Lorg/eclipse/jetty/io/nio/SslConnection;->_unwrapBuf:Lorg/eclipse/jetty/io/nio/NIOBuffer;

    invoke-interface {v2, v6}, Lorg/eclipse/jetty/io/Buffer;->put(Lorg/eclipse/jetty/io/Buffer;)I

    move-result v2

    invoke-interface {v3, v2}, Lorg/eclipse/jetty/io/nio/NIOBuffer;->skip(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 424
    :try_start_1
    invoke-direct/range {p0 .. p0}, Lorg/eclipse/jetty/io/nio/SslConnection;->releaseBuffers()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 426
    monitor-exit p0

    return v5

    .line 424
    :cond_1
    :try_start_2
    invoke-direct/range {p0 .. p0}, Lorg/eclipse/jetty/io/nio/SslConnection;->releaseBuffers()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 426
    monitor-exit p0

    return v3

    .line 309
    :cond_2
    :try_start_3
    iget-object v6, v1, Lorg/eclipse/jetty/io/nio/SslConnection;->_unwrapBuf:Lorg/eclipse/jetty/io/nio/NIOBuffer;

    if-eqz v6, :cond_3

    iget-object v6, v1, Lorg/eclipse/jetty/io/nio/SslConnection;->_unwrapBuf:Lorg/eclipse/jetty/io/nio/NIOBuffer;

    invoke-interface {v6}, Lorg/eclipse/jetty/io/nio/NIOBuffer;->hasContent()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 312
    iget-object v3, v1, Lorg/eclipse/jetty/io/nio/SslConnection;->_unwrapBuf:Lorg/eclipse/jetty/io/nio/NIOBuffer;

    iget-object v6, v1, Lorg/eclipse/jetty/io/nio/SslConnection;->_unwrapBuf:Lorg/eclipse/jetty/io/nio/NIOBuffer;

    invoke-interface {v2, v6}, Lorg/eclipse/jetty/io/Buffer;->put(Lorg/eclipse/jetty/io/Buffer;)I

    move-result v2

    invoke-interface {v3, v2}, Lorg/eclipse/jetty/io/nio/NIOBuffer;->skip(I)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 424
    :try_start_4
    invoke-direct/range {p0 .. p0}, Lorg/eclipse/jetty/io/nio/SslConnection;->releaseBuffers()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 426
    monitor-exit p0

    return v5

    :cond_3
    :goto_0
    if-nez v3, :cond_4

    .line 320
    :try_start_5
    sget-object v3, Lorg/eclipse/jetty/io/nio/SslConnection;->__ZERO_BUFFER:Lorg/eclipse/jetty/io/nio/NIOBuffer;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :cond_4
    const/4 v6, 0x1

    const/4 v7, 0x0

    :goto_1
    if-eqz v6, :cond_10

    const/4 v10, 0x3

    const/4 v11, 0x2

    const/4 v12, 0x7

    .line 333
    :try_start_6
    iget-object v13, v1, Lorg/eclipse/jetty/io/nio/SslConnection;->_inbound:Lorg/eclipse/jetty/io/nio/NIOBuffer;

    invoke-interface {v13}, Lorg/eclipse/jetty/io/nio/NIOBuffer;->space()I

    move-result v13

    if-lez v13, :cond_5

    iget-object v13, v1, Lorg/eclipse/jetty/io/nio/SslConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    iget-object v14, v1, Lorg/eclipse/jetty/io/nio/SslConnection;->_inbound:Lorg/eclipse/jetty/io/nio/NIOBuffer;

    invoke-interface {v13, v14}, Lorg/eclipse/jetty/io/EndPoint;->fill(Lorg/eclipse/jetty/io/Buffer;)I

    move-result v13
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-lez v13, :cond_6

    const/4 v14, 0x1

    goto :goto_2

    :cond_5
    const/4 v13, 0x0

    :cond_6
    const/4 v14, 0x0

    .line 337
    :goto_2
    :try_start_7
    iget-object v15, v1, Lorg/eclipse/jetty/io/nio/SslConnection;->_outbound:Lorg/eclipse/jetty/io/nio/NIOBuffer;

    invoke-interface {v15}, Lorg/eclipse/jetty/io/nio/NIOBuffer;->hasContent()Z

    move-result v15

    if-eqz v15, :cond_7

    iget-object v15, v1, Lorg/eclipse/jetty/io/nio/SslConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    iget-object v6, v1, Lorg/eclipse/jetty/io/nio/SslConnection;->_outbound:Lorg/eclipse/jetty/io/nio/NIOBuffer;

    invoke-interface {v15, v6}, Lorg/eclipse/jetty/io/EndPoint;->flush(Lorg/eclipse/jetty/io/Buffer;)I

    move-result v6
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    if-lez v6, :cond_8

    const/4 v14, 0x1

    goto :goto_3

    :cond_7
    const/4 v6, 0x0

    .line 347
    :cond_8
    :goto_3
    :try_start_8
    iget-object v15, v1, Lorg/eclipse/jetty/io/nio/SslConnection;->_logger:Lorg/eclipse/jetty/util/log/Logger;

    const-string v8, "{} {} {} filled={}/{} flushed={}/{}"

    new-array v12, v12, [Ljava/lang/Object;

    iget-object v9, v1, Lorg/eclipse/jetty/io/nio/SslConnection;->_session:Ljavax/net/ssl/SSLSession;

    aput-object v9, v12, v4

    aput-object v1, v12, v5

    iget-object v9, v1, Lorg/eclipse/jetty/io/nio/SslConnection;->_engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v9}, Ljavax/net/ssl/SSLEngine;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v9

    aput-object v9, v12, v11

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v12, v10

    iget-object v9, v1, Lorg/eclipse/jetty/io/nio/SslConnection;->_inbound:Lorg/eclipse/jetty/io/nio/NIOBuffer;

    invoke-interface {v9}, Lorg/eclipse/jetty/io/nio/NIOBuffer;->length()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x4

    aput-object v9, v12, v10

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v9, 0x5

    aput-object v6, v12, v9

    iget-object v6, v1, Lorg/eclipse/jetty/io/nio/SslConnection;->_outbound:Lorg/eclipse/jetty/io/nio/NIOBuffer;

    invoke-interface {v6}, Lorg/eclipse/jetty/io/nio/NIOBuffer;->length()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v9, 0x6

    aput-object v6, v12, v9

    invoke-interface {v15, v8, v12}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 351
    sget-object v6, Lorg/eclipse/jetty/io/nio/SslConnection$1;->$SwitchMap$javax$net$ssl$SSLEngineResult$HandshakeStatus:[I

    iget-object v8, v1, Lorg/eclipse/jetty/io/nio/SslConnection;->_engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v8}, Ljavax/net/ssl/SSLEngine;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v8

    invoke-virtual {v8}, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->ordinal()I

    move-result v8

    aget v6, v6, v8

    packed-switch v6, :pswitch_data_0

    goto/16 :goto_6

    .line 394
    :pswitch_0
    iget-boolean v6, v1, Lorg/eclipse/jetty/io/nio/SslConnection;->_handshook:Z

    if-eqz v6, :cond_9

    iget-boolean v6, v1, Lorg/eclipse/jetty/io/nio/SslConnection;->_allowRenegotiate:Z

    if-nez v6, :cond_9

    .line 395
    iget-object v6, v1, Lorg/eclipse/jetty/io/nio/SslConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v6}, Lorg/eclipse/jetty/io/EndPoint;->close()V

    goto/16 :goto_6

    .line 396
    :cond_9
    iget-object v6, v1, Lorg/eclipse/jetty/io/nio/SslConnection;->_inbound:Lorg/eclipse/jetty/io/nio/NIOBuffer;

    invoke-interface {v6}, Lorg/eclipse/jetty/io/nio/NIOBuffer;->hasContent()Z

    move-result v6

    if-nez v6, :cond_a

    const/4 v6, -0x1

    if-ne v13, v6, :cond_a

    .line 399
    iget-object v6, v1, Lorg/eclipse/jetty/io/nio/SslConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v6}, Lorg/eclipse/jetty/io/EndPoint;->shutdownInput()V

    goto :goto_6

    .line 401
    :cond_a
    invoke-direct {v1, v2}, Lorg/eclipse/jetty/io/nio/SslConnection;->unwrap(Lorg/eclipse/jetty/io/Buffer;)Z

    move-result v6

    if-eqz v6, :cond_d

    goto :goto_4

    .line 384
    :pswitch_1
    iget-boolean v6, v1, Lorg/eclipse/jetty/io/nio/SslConnection;->_handshook:Z

    if-eqz v6, :cond_b

    iget-boolean v6, v1, Lorg/eclipse/jetty/io/nio/SslConnection;->_allowRenegotiate:Z

    if-nez v6, :cond_b

    .line 385
    iget-object v6, v1, Lorg/eclipse/jetty/io/nio/SslConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v6}, Lorg/eclipse/jetty/io/EndPoint;->close()V

    goto :goto_6

    .line 386
    :cond_b
    invoke-direct {v1, v3}, Lorg/eclipse/jetty/io/nio/SslConnection;->wrap(Lorg/eclipse/jetty/io/Buffer;)Z

    move-result v6

    if-eqz v6, :cond_d

    :goto_4
    const/4 v6, 0x1

    goto :goto_7

    .line 372
    :goto_5
    :pswitch_2
    iget-object v6, v1, Lorg/eclipse/jetty/io/nio/SslConnection;->_engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v6}, Ljavax/net/ssl/SSLEngine;->getDelegatedTask()Ljava/lang/Runnable;

    move-result-object v6

    if-eqz v6, :cond_d

    .line 375
    invoke-interface {v6}, Ljava/lang/Runnable;->run()V

    const/4 v14, 0x1

    goto :goto_5

    .line 359
    :pswitch_3
    invoke-interface {v2}, Lorg/eclipse/jetty/io/Buffer;->space()I

    move-result v6

    if-lez v6, :cond_c

    iget-object v6, v1, Lorg/eclipse/jetty/io/nio/SslConnection;->_inbound:Lorg/eclipse/jetty/io/nio/NIOBuffer;

    invoke-interface {v6}, Lorg/eclipse/jetty/io/nio/NIOBuffer;->hasContent()Z

    move-result v6

    if-eqz v6, :cond_c

    invoke-direct {v1, v2}, Lorg/eclipse/jetty/io/nio/SslConnection;->unwrap(Lorg/eclipse/jetty/io/Buffer;)Z

    move-result v6

    if-eqz v6, :cond_c

    const/4 v14, 0x1

    .line 363
    :cond_c
    invoke-interface {v3}, Lorg/eclipse/jetty/io/Buffer;->hasContent()Z

    move-result v6

    if-eqz v6, :cond_d

    iget-object v6, v1, Lorg/eclipse/jetty/io/nio/SslConnection;->_outbound:Lorg/eclipse/jetty/io/nio/NIOBuffer;

    invoke-interface {v6}, Lorg/eclipse/jetty/io/nio/NIOBuffer;->space()I

    move-result v6

    if-lez v6, :cond_d

    invoke-direct {v1, v3}, Lorg/eclipse/jetty/io/nio/SslConnection;->wrap(Lorg/eclipse/jetty/io/Buffer;)Z

    move-result v6

    if-eqz v6, :cond_d

    goto :goto_4

    .line 354
    :pswitch_4
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    throw v2

    :cond_d
    :goto_6
    move v6, v14

    .line 408
    :goto_7
    iget-object v8, v1, Lorg/eclipse/jetty/io/nio/SslConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v8}, Lorg/eclipse/jetty/io/EndPoint;->isOpen()Z

    move-result v8

    if-eqz v8, :cond_e

    iget-object v8, v1, Lorg/eclipse/jetty/io/nio/SslConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v8}, Lorg/eclipse/jetty/io/EndPoint;->isInputShutdown()Z

    move-result v8

    if-eqz v8, :cond_e

    iget-object v8, v1, Lorg/eclipse/jetty/io/nio/SslConnection;->_inbound:Lorg/eclipse/jetty/io/nio/NIOBuffer;

    invoke-interface {v8}, Lorg/eclipse/jetty/io/nio/NIOBuffer;->hasContent()Z

    move-result v8

    if-nez v8, :cond_e

    .line 409
    invoke-direct/range {p0 .. p0}, Lorg/eclipse/jetty/io/nio/SslConnection;->closeInbound()V

    .line 411
    :cond_e
    iget-object v8, v1, Lorg/eclipse/jetty/io/nio/SslConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v8}, Lorg/eclipse/jetty/io/EndPoint;->isOpen()Z

    move-result v8

    if-eqz v8, :cond_f

    iget-object v8, v1, Lorg/eclipse/jetty/io/nio/SslConnection;->_engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v8}, Ljavax/net/ssl/SSLEngine;->isOutboundDone()Z

    move-result v8

    if-eqz v8, :cond_f

    iget-object v8, v1, Lorg/eclipse/jetty/io/nio/SslConnection;->_outbound:Lorg/eclipse/jetty/io/nio/NIOBuffer;

    invoke-interface {v8}, Lorg/eclipse/jetty/io/nio/NIOBuffer;->hasContent()Z

    move-result v8

    if-nez v8, :cond_f

    .line 412
    iget-object v8, v1, Lorg/eclipse/jetty/io/nio/SslConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v8}, Lorg/eclipse/jetty/io/EndPoint;->shutdownOutput()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :cond_f
    or-int/2addr v7, v6

    goto/16 :goto_1

    :catch_0
    move-exception v0

    move-object v2, v0

    goto :goto_8

    :catchall_0
    move-exception v0

    move-object v2, v0

    const/4 v13, 0x0

    goto :goto_9

    :catch_1
    move-exception v0

    move-object v2, v0

    const/4 v13, 0x0

    .line 342
    :goto_8
    :try_start_9
    iget-object v3, v1, Lorg/eclipse/jetty/io/nio/SslConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v3}, Lorg/eclipse/jetty/io/EndPoint;->close()V

    .line 343
    throw v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :catchall_1
    move-exception v0

    move-object v2, v0

    .line 347
    :goto_9
    :try_start_a
    iget-object v3, v1, Lorg/eclipse/jetty/io/nio/SslConnection;->_logger:Lorg/eclipse/jetty/util/log/Logger;

    const-string v6, "{} {} {} filled={}/{} flushed={}/{}"

    new-array v8, v12, [Ljava/lang/Object;

    iget-object v9, v1, Lorg/eclipse/jetty/io/nio/SslConnection;->_session:Ljavax/net/ssl/SSLSession;

    aput-object v9, v8, v4

    aput-object v1, v8, v5

    iget-object v9, v1, Lorg/eclipse/jetty/io/nio/SslConnection;->_engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v9}, Ljavax/net/ssl/SSLEngine;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v10

    iget-object v9, v1, Lorg/eclipse/jetty/io/nio/SslConnection;->_inbound:Lorg/eclipse/jetty/io/nio/NIOBuffer;

    invoke-interface {v9}, Lorg/eclipse/jetty/io/nio/NIOBuffer;->length()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x4

    aput-object v9, v8, v10

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v9, 0x5

    aput-object v4, v8, v9

    iget-object v4, v1, Lorg/eclipse/jetty/io/nio/SslConnection;->_outbound:Lorg/eclipse/jetty/io/nio/NIOBuffer;

    invoke-interface {v4}, Lorg/eclipse/jetty/io/nio/NIOBuffer;->length()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v9, 0x6

    aput-object v4, v8, v9

    invoke-interface {v3, v6, v8}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v2

    .line 419
    :cond_10
    iget-object v3, v1, Lorg/eclipse/jetty/io/nio/SslConnection;->_unwrapBuf:Lorg/eclipse/jetty/io/nio/NIOBuffer;

    if-ne v2, v3, :cond_11

    iget-object v2, v1, Lorg/eclipse/jetty/io/nio/SslConnection;->_unwrapBuf:Lorg/eclipse/jetty/io/nio/NIOBuffer;

    invoke-interface {v2}, Lorg/eclipse/jetty/io/nio/NIOBuffer;->hasContent()Z

    move-result v2

    if-eqz v2, :cond_11

    iget-object v2, v1, Lorg/eclipse/jetty/io/nio/SslConnection;->_connection:Lorg/eclipse/jetty/io/nio/AsyncConnection;

    invoke-interface {v2}, Lorg/eclipse/jetty/io/nio/AsyncConnection;->isSuspended()Z

    move-result v2

    if-nez v2, :cond_11

    .line 420
    iget-object v2, v1, Lorg/eclipse/jetty/io/nio/SslConnection;->_aEndp:Lorg/eclipse/jetty/io/AsyncEndPoint;

    invoke-interface {v2}, Lorg/eclipse/jetty/io/AsyncEndPoint;->dispatch()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 424
    :cond_11
    :try_start_b
    invoke-direct/range {p0 .. p0}, Lorg/eclipse/jetty/io/nio/SslConnection;->releaseBuffers()V

    if-eqz v7, :cond_12

    .line 426
    iget-object v2, v1, Lorg/eclipse/jetty/io/nio/SslConnection;->_progressed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    .line 428
    :cond_12
    monitor-exit p0

    return v7

    :catchall_2
    move-exception v0

    move-object v2, v0

    goto :goto_a

    :catchall_3
    move-exception v0

    move-object v2, v0

    const/4 v7, 0x0

    .line 424
    :goto_a
    :try_start_c
    invoke-direct/range {p0 .. p0}, Lorg/eclipse/jetty/io/nio/SslConnection;->releaseBuffers()V

    if-eqz v7, :cond_13

    .line 426
    iget-object v3, v1, Lorg/eclipse/jetty/io/nio/SslConnection;->_progressed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_13
    throw v2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    :catchall_4
    move-exception v0

    move-object v2, v0

    .line 277
    monitor-exit p0

    throw v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private releaseBuffers()V
    .locals 3

    .line 159
    monitor-enter p0

    .line 161
    :try_start_0
    iget v0, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_allocations:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_allocations:I

    if-nez v0, :cond_0

    .line 163
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_buffers:Lorg/eclipse/jetty/io/nio/SslConnection$SslBuffers;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_inbound:Lorg/eclipse/jetty/io/nio/NIOBuffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/nio/NIOBuffer;->length()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_outbound:Lorg/eclipse/jetty/io/nio/NIOBuffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/nio/NIOBuffer;->length()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_unwrapBuf:Lorg/eclipse/jetty/io/nio/NIOBuffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/nio/NIOBuffer;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 168
    iput-object v0, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_inbound:Lorg/eclipse/jetty/io/nio/NIOBuffer;

    .line 169
    iput-object v0, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_outbound:Lorg/eclipse/jetty/io/nio/NIOBuffer;

    .line 170
    iput-object v0, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_unwrapBuf:Lorg/eclipse/jetty/io/nio/NIOBuffer;

    .line 171
    sget-object v1, Lorg/eclipse/jetty/io/nio/SslConnection;->__buffers:Ljava/lang/ThreadLocal;

    iget-object v2, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_buffers:Lorg/eclipse/jetty/io/nio/SslConnection$SslBuffers;

    invoke-virtual {v1, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 172
    iput-object v0, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_buffers:Lorg/eclipse/jetty/io/nio/SslConnection$SslBuffers;

    .line 175
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private declared-synchronized unwrap(Lorg/eclipse/jetty/io/Buffer;)Z
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 518
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_inbound:Lorg/eclipse/jetty/io/nio/NIOBuffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/nio/NIOBuffer;->hasContent()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 519
    monitor-exit p0

    return v1

    .line 521
    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Lorg/eclipse/jetty/io/nio/SslConnection;->extractByteBuffer(Lorg/eclipse/jetty/io/Buffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 524
    monitor-enter v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 526
    :try_start_2
    iget-object v2, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_inbound:Lorg/eclipse/jetty/io/nio/NIOBuffer;

    invoke-interface {v2}, Lorg/eclipse/jetty/io/nio/NIOBuffer;->getByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 527
    monitor-enter v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 531
    :try_start_3
    invoke-interface {p1}, Lorg/eclipse/jetty/io/Buffer;->putIndex()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 532
    invoke-interface {p1}, Lorg/eclipse/jetty/io/Buffer;->capacity()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 533
    iget-object v3, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_inbound:Lorg/eclipse/jetty/io/nio/NIOBuffer;

    invoke-interface {v3}, Lorg/eclipse/jetty/io/nio/NIOBuffer;->getIndex()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 534
    iget-object v3, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_inbound:Lorg/eclipse/jetty/io/nio/NIOBuffer;

    invoke-interface {v3}, Lorg/eclipse/jetty/io/nio/NIOBuffer;->putIndex()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 536
    iget-object v3, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v3, v2, v0}, Ljavax/net/ssl/SSLEngine;->unwrap(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v3

    .line 537
    iget-object v4, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_logger:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v4}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v4

    const/4 v5, 0x4

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-eqz v4, :cond_1

    .line 538
    iget-object v4, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_logger:Lorg/eclipse/jetty/util/log/Logger;

    const-string v9, "{} unwrap {} {} consumed={} produced={}"

    const/4 v10, 0x5

    new-array v10, v10, [Ljava/lang/Object;

    iget-object v11, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_session:Ljavax/net/ssl/SSLSession;

    aput-object v11, v10, v1

    invoke-virtual {v3}, Ljavax/net/ssl/SSLEngineResult;->getStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v11

    aput-object v11, v10, v8

    invoke-virtual {v3}, Ljavax/net/ssl/SSLEngineResult;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v11

    aput-object v11, v10, v7

    invoke-virtual {v3}, Ljavax/net/ssl/SSLEngineResult;->bytesConsumed()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v6

    invoke-virtual {v3}, Ljavax/net/ssl/SSLEngineResult;->bytesProduced()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v5

    invoke-interface {v4, v9, v10}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 545
    :cond_1
    iget-object v4, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_inbound:Lorg/eclipse/jetty/io/nio/NIOBuffer;

    invoke-virtual {v3}, Ljavax/net/ssl/SSLEngineResult;->bytesConsumed()I

    move-result v9

    invoke-interface {v4, v9}, Lorg/eclipse/jetty/io/nio/NIOBuffer;->skip(I)I

    .line 546
    iget-object v4, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_inbound:Lorg/eclipse/jetty/io/nio/NIOBuffer;

    invoke-interface {v4}, Lorg/eclipse/jetty/io/nio/NIOBuffer;->compact()V

    .line 547
    invoke-interface {p1}, Lorg/eclipse/jetty/io/Buffer;->putIndex()I

    move-result v4

    invoke-virtual {v3}, Ljavax/net/ssl/SSLEngineResult;->bytesProduced()I

    move-result v9

    add-int/2addr v4, v9

    invoke-interface {p1, v4}, Lorg/eclipse/jetty/io/Buffer;->setPutIndex(I)V
    :try_end_3
    .catch Ljavax/net/ssl/SSLException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 557
    :try_start_4
    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 558
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 559
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 560
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 562
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 563
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 565
    :try_start_6
    sget-object v0, Lorg/eclipse/jetty/io/nio/SslConnection$1;->$SwitchMap$javax$net$ssl$SSLEngineResult$Status:[I

    invoke-virtual {v3}, Ljavax/net/ssl/SSLEngineResult;->getStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/net/ssl/SSLEngineResult$Status;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    .line 588
    iget-object p1, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_logger:Lorg/eclipse/jetty/util/log/Logger;

    goto :goto_1

    .line 582
    :pswitch_0
    iget-object p1, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_logger:Lorg/eclipse/jetty/util/log/Logger;

    const-string v0, "unwrap CLOSE {} {}"

    new-array v2, v7, [Ljava/lang/Object;

    aput-object p0, v2, v1

    aput-object v3, v2, v8

    invoke-interface {p1, v0, v2}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 583
    invoke-virtual {v3}, Ljavax/net/ssl/SSLEngineResult;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object p1

    sget-object v0, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->FINISHED:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-ne p1, v0, :cond_2

    .line 584
    iget-object p1, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {p1}, Lorg/eclipse/jetty/io/EndPoint;->close()V

    goto :goto_0

    .line 577
    :pswitch_1
    invoke-virtual {v3}, Ljavax/net/ssl/SSLEngineResult;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object p1

    sget-object v0, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->FINISHED:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-ne p1, v0, :cond_2

    .line 578
    iput-boolean v8, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_handshook:Z

    goto :goto_0

    .line 573
    :pswitch_2
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_logger:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v0}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_logger:Lorg/eclipse/jetty/util/log/Logger;

    const-string v2, "{} unwrap {} {}->{}"

    new-array v4, v5, [Ljava/lang/Object;

    iget-object v5, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_session:Ljavax/net/ssl/SSLSession;

    aput-object v5, v4, v1

    invoke-virtual {v3}, Ljavax/net/ssl/SSLEngineResult;->getStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v5

    aput-object v5, v4, v8

    iget-object v5, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_inbound:Lorg/eclipse/jetty/io/nio/NIOBuffer;

    invoke-interface {v5}, Lorg/eclipse/jetty/io/nio/NIOBuffer;->toDetailString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-interface {p1}, Lorg/eclipse/jetty/io/Buffer;->toDetailString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v4, v6

    invoke-interface {v0, v2, v4}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 568
    :pswitch_3
    iget-object p1, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {p1}, Lorg/eclipse/jetty/io/EndPoint;->isInputShutdown()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 569
    iget-object p1, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_inbound:Lorg/eclipse/jetty/io/nio/NIOBuffer;

    invoke-interface {p1}, Lorg/eclipse/jetty/io/nio/NIOBuffer;->clear()V

    .line 595
    :cond_2
    :goto_0
    invoke-virtual {v3}, Ljavax/net/ssl/SSLEngineResult;->bytesConsumed()I

    move-result p1

    if-gtz p1, :cond_3

    invoke-virtual {v3}, Ljavax/net/ssl/SSLEngineResult;->bytesProduced()I

    move-result p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    if-lez p1, :cond_4

    :cond_3
    const/4 v1, 0x1

    :cond_4
    monitor-exit p0

    return v1

    :goto_1
    :try_start_7
    const-string v0, "{} wrap default {}"

    .line 588
    new-array v2, v7, [Ljava/lang/Object;

    iget-object v4, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_session:Ljavax/net/ssl/SSLSession;

    aput-object v4, v2, v1

    aput-object v3, v2, v8

    invoke-interface {p1, v0, v2}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 589
    new-instance p1, Ljava/io/IOException;

    invoke-virtual {v3}, Ljavax/net/ssl/SSLEngineResult;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 551
    :try_start_8
    iget-object v3, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_logger:Lorg/eclipse/jetty/util/log/Logger;

    iget-object v4, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, p1}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 552
    iget-object v3, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v3}, Lorg/eclipse/jetty/io/EndPoint;->close()V

    .line 553
    throw p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 557
    :goto_2
    :try_start_9
    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 558
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 559
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 560
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    throw p1

    :catchall_1
    move-exception p1

    .line 562
    monitor-exit v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :try_start_a
    throw p1

    :catchall_2
    move-exception p1

    .line 563
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :try_start_b
    throw p1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    :catchall_3
    move-exception p1

    .line 517
    monitor-exit p0

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private declared-synchronized wrap(Lorg/eclipse/jetty/io/Buffer;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 445
    :try_start_0
    invoke-direct {p0, p1}, Lorg/eclipse/jetty/io/nio/SslConnection;->extractByteBuffer(Lorg/eclipse/jetty/io/Buffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 448
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 450
    :try_start_1
    iget-object v1, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_outbound:Lorg/eclipse/jetty/io/nio/NIOBuffer;

    invoke-interface {v1}, Lorg/eclipse/jetty/io/nio/NIOBuffer;->compact()V

    .line 451
    iget-object v1, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_outbound:Lorg/eclipse/jetty/io/nio/NIOBuffer;

    invoke-interface {v1}, Lorg/eclipse/jetty/io/nio/NIOBuffer;->getByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 452
    monitor-enter v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const/4 v2, 0x0

    .line 456
    :try_start_2
    invoke-interface {p1}, Lorg/eclipse/jetty/io/Buffer;->getIndex()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 457
    invoke-interface {p1}, Lorg/eclipse/jetty/io/Buffer;->putIndex()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 458
    iget-object v3, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_outbound:Lorg/eclipse/jetty/io/nio/NIOBuffer;

    invoke-interface {v3}, Lorg/eclipse/jetty/io/nio/NIOBuffer;->putIndex()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 459
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 460
    iget-object v3, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v3, v0, v1}, Ljavax/net/ssl/SSLEngine;->wrap(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v3

    .line 461
    iget-object v4, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_logger:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v4}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v4

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v4, :cond_0

    .line 462
    iget-object v4, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_logger:Lorg/eclipse/jetty/util/log/Logger;

    const-string v7, "{} wrap {} {} consumed={} produced={}"

    const/4 v8, 0x5

    new-array v8, v8, [Ljava/lang/Object;

    iget-object v9, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_session:Ljavax/net/ssl/SSLSession;

    aput-object v9, v8, v2

    invoke-virtual {v3}, Ljavax/net/ssl/SSLEngineResult;->getStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v9

    aput-object v9, v8, v6

    invoke-virtual {v3}, Ljavax/net/ssl/SSLEngineResult;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v9

    aput-object v9, v8, v5

    const/4 v9, 0x3

    invoke-virtual {v3}, Ljavax/net/ssl/SSLEngineResult;->bytesConsumed()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x4

    invoke-virtual {v3}, Ljavax/net/ssl/SSLEngineResult;->bytesProduced()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-interface {v4, v7, v8}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 470
    :cond_0
    invoke-virtual {v3}, Ljavax/net/ssl/SSLEngineResult;->bytesConsumed()I

    move-result v4

    invoke-interface {p1, v4}, Lorg/eclipse/jetty/io/Buffer;->skip(I)I

    .line 471
    iget-object p1, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_outbound:Lorg/eclipse/jetty/io/nio/NIOBuffer;

    iget-object v4, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_outbound:Lorg/eclipse/jetty/io/nio/NIOBuffer;

    invoke-interface {v4}, Lorg/eclipse/jetty/io/nio/NIOBuffer;->putIndex()I

    move-result v4

    invoke-virtual {v3}, Ljavax/net/ssl/SSLEngineResult;->bytesProduced()I

    move-result v7

    add-int/2addr v4, v7

    invoke-interface {p1, v4}, Lorg/eclipse/jetty/io/nio/NIOBuffer;->setPutIndex(I)V
    :try_end_2
    .catch Ljavax/net/ssl/SSLException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 481
    :try_start_3
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 482
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 483
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 484
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 486
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 487
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 489
    :try_start_5
    sget-object p1, Lorg/eclipse/jetty/io/nio/SslConnection$1;->$SwitchMap$javax$net$ssl$SSLEngineResult$Status:[I

    invoke-virtual {v3}, Ljavax/net/ssl/SSLEngineResult;->getStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngineResult$Status;->ordinal()I

    move-result v0

    aget p1, p1, v0

    packed-switch p1, :pswitch_data_0

    .line 509
    iget-object p1, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_logger:Lorg/eclipse/jetty/util/log/Logger;

    goto :goto_1

    .line 503
    :pswitch_0
    iget-object p1, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_logger:Lorg/eclipse/jetty/util/log/Logger;

    const-string v0, "wrap CLOSE {} {}"

    new-array v1, v5, [Ljava/lang/Object;

    aput-object p0, v1, v2

    aput-object v3, v1, v6

    invoke-interface {p1, v0, v1}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 504
    invoke-virtual {v3}, Ljavax/net/ssl/SSLEngineResult;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object p1

    sget-object v0, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->FINISHED:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-ne p1, v0, :cond_1

    .line 505
    iget-object p1, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {p1}, Lorg/eclipse/jetty/io/EndPoint;->close()V

    goto :goto_0

    .line 498
    :pswitch_1
    invoke-virtual {v3}, Ljavax/net/ssl/SSLEngineResult;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object p1

    sget-object v0, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->FINISHED:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-ne p1, v0, :cond_1

    .line 499
    iput-boolean v6, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_handshook:Z

    .line 513
    :cond_1
    :goto_0
    :pswitch_2
    invoke-virtual {v3}, Ljavax/net/ssl/SSLEngineResult;->bytesConsumed()I

    move-result p1

    if-gtz p1, :cond_2

    invoke-virtual {v3}, Ljavax/net/ssl/SSLEngineResult;->bytesProduced()I

    move-result p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    if-lez p1, :cond_3

    :cond_2
    const/4 v2, 0x1

    :cond_3
    monitor-exit p0

    return v2

    .line 492
    :pswitch_3
    :try_start_6
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :goto_1
    const-string v0, "{} wrap default {}"

    .line 509
    new-array v1, v5, [Ljava/lang/Object;

    iget-object v4, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_session:Ljavax/net/ssl/SSLSession;

    aput-object v4, v1, v2

    aput-object v3, v1, v6

    invoke-interface {p1, v0, v1}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 510
    new-instance p1, Ljava/io/IOException;

    invoke-virtual {v3}, Ljavax/net/ssl/SSLEngineResult;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 475
    :try_start_7
    iget-object v3, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_logger:Lorg/eclipse/jetty/util/log/Logger;

    iget-object v4, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, p1}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 476
    iget-object v3, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v3}, Lorg/eclipse/jetty/io/EndPoint;->close()V

    .line 477
    throw p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 481
    :goto_2
    :try_start_8
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 482
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 483
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 484
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    throw p1

    :catchall_1
    move-exception p1

    .line 486
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    throw p1

    :catchall_2
    move-exception p1

    .line 487
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :try_start_a
    throw p1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    :catchall_3
    move-exception p1

    .line 444
    monitor-exit p0

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getSslEndPoint()Lorg/eclipse/jetty/io/AsyncEndPoint;
    .locals 1

    .line 610
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_sslEndPoint:Lorg/eclipse/jetty/io/nio/SslConnection$SslEndPoint;

    return-object v0
.end method

.method public handle()Lorg/eclipse/jetty/io/Connection;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 183
    :try_start_0
    invoke-direct {p0}, Lorg/eclipse/jetty/io/nio/SslConnection;->allocateBuffers()V

    const/4 v1, 0x1

    :goto_0
    if-eqz v1, :cond_2

    .line 192
    iget-object v1, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v1}, Ljavax/net/ssl/SSLEngine;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v1

    sget-object v2, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NOT_HANDSHAKING:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    const/4 v3, 0x0

    if-eq v1, v2, :cond_0

    const/4 v1, 0x0

    .line 193
    invoke-direct {p0, v1, v1}, Lorg/eclipse/jetty/io/nio/SslConnection;->process(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)Z

    move-result v1

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    .line 196
    :goto_1
    iget-object v2, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_connection:Lorg/eclipse/jetty/io/nio/AsyncConnection;

    invoke-interface {v2}, Lorg/eclipse/jetty/io/nio/AsyncConnection;->handle()Lorg/eclipse/jetty/io/Connection;

    move-result-object v2

    check-cast v2, Lorg/eclipse/jetty/io/nio/AsyncConnection;

    .line 197
    iget-object v4, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_connection:Lorg/eclipse/jetty/io/nio/AsyncConnection;

    if-eq v2, v4, :cond_1

    if-eqz v2, :cond_1

    .line 199
    iput-object v2, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_connection:Lorg/eclipse/jetty/io/nio/AsyncConnection;

    const/4 v1, 0x1

    .line 203
    :cond_1
    iget-object v2, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_logger:Lorg/eclipse/jetty/util/log/Logger;

    const-string v4, "{} handle {} progress={}"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_session:Ljavax/net/ssl/SSLSession;

    aput-object v6, v5, v3

    aput-object p0, v5, v0

    const/4 v3, 0x2

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-interface {v2, v4, v5}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 208
    :cond_2
    invoke-direct {p0}, Lorg/eclipse/jetty/io/nio/SslConnection;->releaseBuffers()V

    .line 210
    iget-boolean v1, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_ishut:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_sslEndPoint:Lorg/eclipse/jetty/io/nio/SslConnection$SslEndPoint;

    invoke-virtual {v1}, Lorg/eclipse/jetty/io/nio/SslConnection$SslEndPoint;->isInputShutdown()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_sslEndPoint:Lorg/eclipse/jetty/io/nio/SslConnection$SslEndPoint;

    invoke-virtual {v1}, Lorg/eclipse/jetty/io/nio/SslConnection$SslEndPoint;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 212
    iput-boolean v0, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_ishut:Z

    .line 215
    :try_start_1
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_connection:Lorg/eclipse/jetty/io/nio/AsyncConnection;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/nio/AsyncConnection;->onInputShutdown()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 219
    iget-object v1, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_logger:Lorg/eclipse/jetty/util/log/Logger;

    const-string v2, "onInputShutdown failed"

    invoke-interface {v1, v2, v0}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 220
    :try_start_2
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_sslEndPoint:Lorg/eclipse/jetty/io/nio/SslConnection$SslEndPoint;

    invoke-virtual {v0}, Lorg/eclipse/jetty/io/nio/SslConnection$SslEndPoint;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    .line 222
    iget-object v1, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_logger:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v1, v0}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    :cond_3
    :goto_2
    return-object p0

    :catchall_0
    move-exception v1

    .line 208
    invoke-direct {p0}, Lorg/eclipse/jetty/io/nio/SslConnection;->releaseBuffers()V

    .line 210
    iget-boolean v2, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_ishut:Z

    if-nez v2, :cond_4

    iget-object v2, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_sslEndPoint:Lorg/eclipse/jetty/io/nio/SslConnection$SslEndPoint;

    invoke-virtual {v2}, Lorg/eclipse/jetty/io/nio/SslConnection$SslEndPoint;->isInputShutdown()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_sslEndPoint:Lorg/eclipse/jetty/io/nio/SslConnection$SslEndPoint;

    invoke-virtual {v2}, Lorg/eclipse/jetty/io/nio/SslConnection$SslEndPoint;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 212
    iput-boolean v0, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_ishut:Z

    .line 215
    :try_start_3
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_connection:Lorg/eclipse/jetty/io/nio/AsyncConnection;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/nio/AsyncConnection;->onInputShutdown()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_3

    :catch_2
    move-exception v0

    .line 219
    iget-object v2, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_logger:Lorg/eclipse/jetty/util/log/Logger;

    const-string v3, "onInputShutdown failed"

    invoke-interface {v2, v3, v0}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 220
    :try_start_4
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_sslEndPoint:Lorg/eclipse/jetty/io/nio/SslConnection$SslEndPoint;

    invoke-virtual {v0}, Lorg/eclipse/jetty/io/nio/SslConnection$SslEndPoint;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_3

    :catch_3
    move-exception v0

    .line 222
    iget-object v2, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_logger:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v2, v0}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    .line 223
    :cond_4
    :goto_3
    throw v1
.end method

.method public isAllowRenegotiate()Z
    .locals 1

    .line 116
    iget-boolean v0, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_allowRenegotiate:Z

    return v0
.end method

.method public isIdle()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isSuspended()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected newSslEndPoint()Lorg/eclipse/jetty/io/nio/SslConnection$SslEndPoint;
    .locals 1

    .line 107
    new-instance v0, Lorg/eclipse/jetty/io/nio/SslConnection$SslEndPoint;

    invoke-direct {v0, p0}, Lorg/eclipse/jetty/io/nio/SslConnection$SslEndPoint;-><init>(Lorg/eclipse/jetty/io/nio/SslConnection;)V

    return-object v0
.end method

.method public onClose()V
    .locals 1

    .line 245
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_sslEndPoint:Lorg/eclipse/jetty/io/nio/SslConnection$SslEndPoint;

    invoke-virtual {v0}, Lorg/eclipse/jetty/io/nio/SslConnection$SslEndPoint;->getConnection()Lorg/eclipse/jetty/io/Connection;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eq v0, p0, :cond_0

    .line 247
    invoke-interface {v0}, Lorg/eclipse/jetty/io/Connection;->onClose()V

    :cond_0
    return-void
.end method

.method public onIdleExpired(J)V
    .locals 5

    .line 256
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_logger:Lorg/eclipse/jetty/util/log/Logger;

    const-string v1, "onIdleExpired {}ms on {}"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p0, v2, v3

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 257
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/EndPoint;->isOutputShutdown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 258
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_sslEndPoint:Lorg/eclipse/jetty/io/nio/SslConnection$SslEndPoint;

    invoke-virtual {v0}, Lorg/eclipse/jetty/io/nio/SslConnection$SslEndPoint;->close()V

    goto :goto_0

    .line 260
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_sslEndPoint:Lorg/eclipse/jetty/io/nio/SslConnection$SslEndPoint;

    invoke-virtual {v0}, Lorg/eclipse/jetty/io/nio/SslConnection$SslEndPoint;->shutdownOutput()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 264
    iget-object v1, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_logger:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v1, v0}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/Throwable;)V

    .line 265
    invoke-super {p0, p1, p2}, Lorg/eclipse/jetty/io/AbstractConnection;->onIdleExpired(J)V

    :goto_0
    return-void
.end method

.method public onInputShutdown()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public setAllowRenegotiate(Z)V
    .locals 0

    .line 132
    iput-boolean p1, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_allowRenegotiate:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string v0, "%s %s"

    const/4 v1, 0x2

    .line 616
    new-array v1, v1, [Ljava/lang/Object;

    invoke-super {p0}, Lorg/eclipse/jetty/io/AbstractConnection;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_sslEndPoint:Lorg/eclipse/jetty/io/nio/SslConnection$SslEndPoint;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
