.class public Lorg/eclipse/jetty/io/nio/ChannelEndPoint;
.super Ljava/lang/Object;
.source "ChannelEndPoint.java"

# interfaces
.implements Lorg/eclipse/jetty/io/EndPoint;


# static fields
.field private static final LOG:Lorg/eclipse/jetty/util/log/Logger;


# instance fields
.field protected final _channel:Ljava/nio/channels/ByteChannel;

.field protected final _gather2:[Ljava/nio/ByteBuffer;

.field private volatile _ishut:Z

.field protected final _local:Ljava/net/InetSocketAddress;

.field protected volatile _maxIdleTime:I

.field private volatile _oshut:Z

.field protected final _remote:Ljava/net/InetSocketAddress;

.field protected final _socket:Ljava/net/Socket;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 44
    const-class v0, Lorg/eclipse/jetty/io/nio/ChannelEndPoint;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/io/nio/ChannelEndPoint;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/nio/channels/ByteChannel;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 47
    new-array v0, v0, [Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lorg/eclipse/jetty/io/nio/ChannelEndPoint;->_gather2:[Ljava/nio/ByteBuffer;

    .line 58
    iput-object p1, p0, Lorg/eclipse/jetty/io/nio/ChannelEndPoint;->_channel:Ljava/nio/channels/ByteChannel;

    .line 59
    instance-of v0, p1, Ljava/nio/channels/SocketChannel;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Ljava/nio/channels/SocketChannel;

    invoke-virtual {p1}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    iput-object p1, p0, Lorg/eclipse/jetty/io/nio/ChannelEndPoint;->_socket:Ljava/net/Socket;

    .line 60
    iget-object p1, p0, Lorg/eclipse/jetty/io/nio/ChannelEndPoint;->_socket:Ljava/net/Socket;

    if-eqz p1, :cond_1

    .line 62
    iget-object p1, p0, Lorg/eclipse/jetty/io/nio/ChannelEndPoint;->_socket:Ljava/net/Socket;

    invoke-virtual {p1}, Ljava/net/Socket;->getLocalSocketAddress()Ljava/net/SocketAddress;

    move-result-object p1

    check-cast p1, Ljava/net/InetSocketAddress;

    iput-object p1, p0, Lorg/eclipse/jetty/io/nio/ChannelEndPoint;->_local:Ljava/net/InetSocketAddress;

    .line 63
    iget-object p1, p0, Lorg/eclipse/jetty/io/nio/ChannelEndPoint;->_socket:Ljava/net/Socket;

    invoke-virtual {p1}, Ljava/net/Socket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object p1

    check-cast p1, Ljava/net/InetSocketAddress;

    iput-object p1, p0, Lorg/eclipse/jetty/io/nio/ChannelEndPoint;->_remote:Ljava/net/InetSocketAddress;

    .line 64
    iget-object p1, p0, Lorg/eclipse/jetty/io/nio/ChannelEndPoint;->_socket:Ljava/net/Socket;

    invoke-virtual {p1}, Ljava/net/Socket;->getSoTimeout()I

    move-result p1

    iput p1, p0, Lorg/eclipse/jetty/io/nio/ChannelEndPoint;->_maxIdleTime:I

    goto :goto_1

    .line 68
    :cond_1
    iput-object v1, p0, Lorg/eclipse/jetty/io/nio/ChannelEndPoint;->_remote:Ljava/net/InetSocketAddress;

    iput-object v1, p0, Lorg/eclipse/jetty/io/nio/ChannelEndPoint;->_local:Ljava/net/InetSocketAddress;

    :goto_1
    return-void
.end method

.method protected constructor <init>(Ljava/nio/channels/ByteChannel;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 47
    new-array v0, v0, [Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lorg/eclipse/jetty/io/nio/ChannelEndPoint;->_gather2:[Ljava/nio/ByteBuffer;

    .line 74
    iput-object p1, p0, Lorg/eclipse/jetty/io/nio/ChannelEndPoint;->_channel:Ljava/nio/channels/ByteChannel;

    .line 75
    iput p2, p0, Lorg/eclipse/jetty/io/nio/ChannelEndPoint;->_maxIdleTime:I

    .line 76
    instance-of p2, p1, Ljava/nio/channels/SocketChannel;

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    check-cast p1, Ljava/nio/channels/SocketChannel;

    invoke-virtual {p1}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    iput-object p1, p0, Lorg/eclipse/jetty/io/nio/ChannelEndPoint;->_socket:Ljava/net/Socket;

    .line 77
    iget-object p1, p0, Lorg/eclipse/jetty/io/nio/ChannelEndPoint;->_socket:Ljava/net/Socket;

    if-eqz p1, :cond_1

    .line 79
    iget-object p1, p0, Lorg/eclipse/jetty/io/nio/ChannelEndPoint;->_socket:Ljava/net/Socket;

    invoke-virtual {p1}, Ljava/net/Socket;->getLocalSocketAddress()Ljava/net/SocketAddress;

    move-result-object p1

    check-cast p1, Ljava/net/InetSocketAddress;

    iput-object p1, p0, Lorg/eclipse/jetty/io/nio/ChannelEndPoint;->_local:Ljava/net/InetSocketAddress;

    .line 80
    iget-object p1, p0, Lorg/eclipse/jetty/io/nio/ChannelEndPoint;->_socket:Ljava/net/Socket;

    invoke-virtual {p1}, Ljava/net/Socket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object p1

    check-cast p1, Ljava/net/InetSocketAddress;

    iput-object p1, p0, Lorg/eclipse/jetty/io/nio/ChannelEndPoint;->_remote:Ljava/net/InetSocketAddress;

    .line 81
    iget-object p1, p0, Lorg/eclipse/jetty/io/nio/ChannelEndPoint;->_socket:Ljava/net/Socket;

    iget p2, p0, Lorg/eclipse/jetty/io/nio/ChannelEndPoint;->_maxIdleTime:I

    invoke-virtual {p1, p2}, Ljava/net/Socket;->setSoTimeout(I)V

    goto :goto_1

    .line 85
    :cond_1
    iput-object v0, p0, Lorg/eclipse/jetty/io/nio/ChannelEndPoint;->_remote:Ljava/net/InetSocketAddress;

    iput-object v0, p0, Lorg/eclipse/jetty/io/nio/ChannelEndPoint;->_local:Ljava/net/InetSocketAddress;

    :goto_1
    return-void
.end method


# virtual methods
.method public blockReadable(J)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p1, 0x1

    return p1
.end method

.method public blockWritable(J)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p1, 0x1

    return p1
.end method

.method public close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 209
    sget-object v0, Lorg/eclipse/jetty/io/nio/ChannelEndPoint;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v1, "close {}"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 210
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/ChannelEndPoint;->_channel:Ljava/nio/channels/ByteChannel;

    invoke-interface {v0}, Ljava/nio/channels/ByteChannel;->close()V

    return-void
.end method

.method public fill(Lorg/eclipse/jetty/io/Buffer;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 218
    iget-boolean v0, p0, Lorg/eclipse/jetty/io/nio/ChannelEndPoint;->_ishut:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    return v1

    .line 220
    :cond_0
    invoke-interface {p1}, Lorg/eclipse/jetty/io/Buffer;->buffer()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v0

    .line 222
    instance-of v2, v0, Lorg/eclipse/jetty/io/nio/NIOBuffer;

    if-eqz v2, :cond_5

    .line 224
    check-cast v0, Lorg/eclipse/jetty/io/nio/NIOBuffer;

    .line 225
    invoke-interface {v0}, Lorg/eclipse/jetty/io/nio/NIOBuffer;->getByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    const/4 v2, 0x0

    .line 230
    :try_start_0
    monitor-enter v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 234
    :try_start_1
    invoke-interface {p1}, Lorg/eclipse/jetty/io/Buffer;->putIndex()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 235
    iget-object v3, p0, Lorg/eclipse/jetty/io/nio/ChannelEndPoint;->_channel:Ljava/nio/channels/ByteChannel;

    invoke-interface {v3, v0}, Ljava/nio/channels/ByteChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 239
    :try_start_2
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    invoke-interface {p1, v4}, Lorg/eclipse/jetty/io/Buffer;->setPutIndex(I)V

    .line 240
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 242
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-gez v3, :cond_2

    .line 244
    :try_start_3
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/ChannelEndPoint;->isOpen()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 246
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/ChannelEndPoint;->isInputShutdown()Z

    move-result p1

    if-nez p1, :cond_1

    .line 247
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/ChannelEndPoint;->shutdownInput()V

    .line 248
    :cond_1
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/ChannelEndPoint;->isOutputShutdown()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 249
    iget-object p1, p0, Lorg/eclipse/jetty/io/nio/ChannelEndPoint;->_channel:Ljava/nio/channels/ByteChannel;

    invoke-interface {p1}, Ljava/nio/channels/ByteChannel;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_2
    :goto_0
    move v1, v3

    goto :goto_4

    :catchall_0
    move-exception p1

    move v2, v3

    goto :goto_1

    :catchall_1
    move-exception v3

    .line 239
    :try_start_4
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    invoke-interface {p1, v4}, Lorg/eclipse/jetty/io/Buffer;->setPutIndex(I)V

    .line 240
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    throw v3

    :catchall_2
    move-exception p1

    .line 242
    :goto_1
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :try_start_5
    throw p1
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    :catch_1
    move-exception p1

    move v3, v2

    goto :goto_2

    :catch_2
    move-exception p1

    const/4 v3, 0x0

    .line 254
    :goto_2
    sget-object v0, Lorg/eclipse/jetty/io/nio/ChannelEndPoint;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v2, "Exception while filling"

    invoke-interface {v0, v2, p1}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 257
    :try_start_6
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/ChannelEndPoint;->_channel:Ljava/nio/channels/ByteChannel;

    invoke-interface {v0}, Ljava/nio/channels/ByteChannel;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 258
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/ChannelEndPoint;->_channel:Ljava/nio/channels/ByteChannel;

    invoke-interface {v0}, Ljava/nio/channels/ByteChannel;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_3

    :catch_3
    move-exception v0

    .line 262
    sget-object v2, Lorg/eclipse/jetty/io/nio/ChannelEndPoint;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v2, v0}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    :cond_3
    :goto_3
    if-lez v3, :cond_4

    .line 266
    throw p1

    :cond_4
    :goto_4
    return v1

    .line 272
    :cond_5
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Not Implemented"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public flush(Lorg/eclipse/jetty/io/Buffer;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 283
    invoke-interface {p1}, Lorg/eclipse/jetty/io/Buffer;->buffer()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v0

    .line 285
    instance-of v1, v0, Lorg/eclipse/jetty/io/nio/NIOBuffer;

    if-eqz v1, :cond_0

    .line 287
    check-cast v0, Lorg/eclipse/jetty/io/nio/NIOBuffer;

    .line 288
    invoke-interface {v0}, Lorg/eclipse/jetty/io/nio/NIOBuffer;->getByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 291
    :try_start_0
    invoke-interface {p1}, Lorg/eclipse/jetty/io/Buffer;->getIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 292
    invoke-interface {p1}, Lorg/eclipse/jetty/io/Buffer;->putIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 293
    iget-object v1, p0, Lorg/eclipse/jetty/io/nio/ChannelEndPoint;->_channel:Ljava/nio/channels/ByteChannel;

    invoke-interface {v1, v0}, Ljava/nio/channels/ByteChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v0, :cond_2

    .line 298
    invoke-interface {p1, v0}, Lorg/eclipse/jetty/io/Buffer;->skip(I)I

    goto :goto_0

    :catchall_0
    move-exception p1

    throw p1

    .line 301
    :cond_0
    instance-of v1, v0, Lorg/eclipse/jetty/io/nio/RandomAccessFileBuffer;

    if-eqz v1, :cond_1

    .line 303
    check-cast v0, Lorg/eclipse/jetty/io/nio/RandomAccessFileBuffer;

    iget-object v1, p0, Lorg/eclipse/jetty/io/nio/ChannelEndPoint;->_channel:Ljava/nio/channels/ByteChannel;

    invoke-interface {p1}, Lorg/eclipse/jetty/io/Buffer;->getIndex()I

    move-result v2

    invoke-interface {p1}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lorg/eclipse/jetty/io/nio/RandomAccessFileBuffer;->writeTo(Ljava/nio/channels/WritableByteChannel;II)I

    move-result v0

    if-lez v0, :cond_2

    .line 305
    invoke-interface {p1, v0}, Lorg/eclipse/jetty/io/Buffer;->skip(I)I

    goto :goto_0

    .line 307
    :cond_1
    invoke-interface {p1}, Lorg/eclipse/jetty/io/Buffer;->array()[B

    move-result-object v0

    if-eqz v0, :cond_3

    .line 309
    invoke-interface {p1}, Lorg/eclipse/jetty/io/Buffer;->array()[B

    move-result-object v0

    invoke-interface {p1}, Lorg/eclipse/jetty/io/Buffer;->getIndex()I

    move-result v1

    invoke-interface {p1}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v2

    invoke-static {v0, v1, v2}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 310
    iget-object v1, p0, Lorg/eclipse/jetty/io/nio/ChannelEndPoint;->_channel:Ljava/nio/channels/ByteChannel;

    invoke-interface {v1, v0}, Ljava/nio/channels/ByteChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result v0

    if-lez v0, :cond_2

    .line 312
    invoke-interface {p1, v0}, Lorg/eclipse/jetty/io/Buffer;->skip(I)I

    :cond_2
    :goto_0
    return v0

    .line 316
    :cond_3
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Not Implemented"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public flush(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move-object v1, v0

    goto :goto_0

    .line 328
    :cond_0
    invoke-interface {p1}, Lorg/eclipse/jetty/io/Buffer;->buffer()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v1

    :goto_0
    if-nez p2, :cond_1

    goto :goto_1

    .line 329
    :cond_1
    invoke-interface {p2}, Lorg/eclipse/jetty/io/Buffer;->buffer()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v0

    .line 331
    :goto_1
    iget-object v2, p0, Lorg/eclipse/jetty/io/nio/ChannelEndPoint;->_channel:Ljava/nio/channels/ByteChannel;

    instance-of v2, v2, Ljava/nio/channels/GatheringByteChannel;

    if-eqz v2, :cond_2

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v2

    if-eqz v2, :cond_2

    instance-of v2, v1, Lorg/eclipse/jetty/io/nio/NIOBuffer;

    if-eqz v2, :cond_2

    if-eqz p2, :cond_2

    invoke-interface {p2}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v2

    if-eqz v2, :cond_2

    instance-of v2, v0, Lorg/eclipse/jetty/io/nio/NIOBuffer;

    if-eqz v2, :cond_2

    .line 335
    check-cast v1, Lorg/eclipse/jetty/io/nio/NIOBuffer;

    invoke-interface {v1}, Lorg/eclipse/jetty/io/nio/NIOBuffer;->getByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object p3

    check-cast v0, Lorg/eclipse/jetty/io/nio/NIOBuffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/nio/NIOBuffer;->getByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p0, p1, p3, p2, v0}, Lorg/eclipse/jetty/io/nio/ChannelEndPoint;->gatheringFlush(Lorg/eclipse/jetty/io/Buffer;Ljava/nio/ByteBuffer;Lorg/eclipse/jetty/io/Buffer;Ljava/nio/ByteBuffer;)I

    move-result p1

    goto :goto_3

    :cond_2
    if-eqz p1, :cond_3

    .line 340
    invoke-interface {p1}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v0

    if-lez v0, :cond_3

    .line 341
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/io/nio/ChannelEndPoint;->flush(Lorg/eclipse/jetty/io/Buffer;)I

    move-result v0

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    :goto_2
    if-eqz p1, :cond_4

    .line 344
    invoke-interface {p1}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v1

    if-nez v1, :cond_5

    :cond_4
    if-eqz p2, :cond_5

    invoke-interface {p2}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v1

    if-lez v1, :cond_5

    .line 346
    invoke-virtual {p0, p2}, Lorg/eclipse/jetty/io/nio/ChannelEndPoint;->flush(Lorg/eclipse/jetty/io/Buffer;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    if-eqz p1, :cond_6

    .line 349
    invoke-interface {p1}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result p1

    if-nez p1, :cond_8

    :cond_6
    if-eqz p2, :cond_7

    invoke-interface {p2}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result p1

    if-nez p1, :cond_8

    :cond_7
    if-eqz p3, :cond_8

    invoke-interface {p3}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result p1

    if-lez p1, :cond_8

    .line 352
    invoke-virtual {p0, p3}, Lorg/eclipse/jetty/io/nio/ChannelEndPoint;->flush(Lorg/eclipse/jetty/io/Buffer;)I

    move-result p1

    add-int/2addr p1, v0

    goto :goto_3

    :cond_8
    move p1, v0

    :goto_3
    return p1
.end method

.method public flush()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method protected gatheringFlush(Lorg/eclipse/jetty/io/Buffer;Ljava/nio/ByteBuffer;Lorg/eclipse/jetty/io/Buffer;Ljava/nio/ByteBuffer;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 362
    monitor-enter p0

    .line 365
    :try_start_0
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object p2

    .line 366
    invoke-interface {p1}, Lorg/eclipse/jetty/io/Buffer;->getIndex()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 367
    invoke-interface {p1}, Lorg/eclipse/jetty/io/Buffer;->putIndex()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 368
    invoke-virtual {p4}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object p4

    .line 369
    invoke-interface {p3}, Lorg/eclipse/jetty/io/Buffer;->getIndex()I

    move-result v0

    invoke-virtual {p4, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 370
    invoke-interface {p3}, Lorg/eclipse/jetty/io/Buffer;->putIndex()I

    move-result v0

    invoke-virtual {p4, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 372
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/ChannelEndPoint;->_gather2:[Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    .line 373
    iget-object p2, p0, Lorg/eclipse/jetty/io/nio/ChannelEndPoint;->_gather2:[Ljava/nio/ByteBuffer;

    const/4 v0, 0x1

    aput-object p4, p2, v0

    .line 376
    iget-object p2, p0, Lorg/eclipse/jetty/io/nio/ChannelEndPoint;->_channel:Ljava/nio/channels/ByteChannel;

    check-cast p2, Ljava/nio/channels/GatheringByteChannel;

    iget-object p4, p0, Lorg/eclipse/jetty/io/nio/ChannelEndPoint;->_gather2:[Ljava/nio/ByteBuffer;

    invoke-interface {p2, p4}, Ljava/nio/channels/GatheringByteChannel;->write([Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    long-to-int p2, v0

    .line 378
    invoke-interface {p1}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result p4

    if-le p2, p4, :cond_0

    .line 381
    invoke-interface {p1}, Lorg/eclipse/jetty/io/Buffer;->clear()V

    sub-int p1, p2, p4

    .line 382
    invoke-interface {p3, p1}, Lorg/eclipse/jetty/io/Buffer;->skip(I)I

    goto :goto_0

    :cond_0
    if-lez p2, :cond_1

    .line 386
    invoke-interface {p1, p2}, Lorg/eclipse/jetty/io/Buffer;->skip(I)I

    .line 388
    :cond_1
    :goto_0
    monitor-exit p0

    return p2

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getChannel()Ljava/nio/channels/ByteChannel;
    .locals 1

    .line 398
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/ChannelEndPoint;->_channel:Ljava/nio/channels/ByteChannel;

    return-object v0
.end method

.method public getLocalAddr()Ljava/lang/String;
    .locals 1

    .line 408
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/ChannelEndPoint;->_socket:Ljava/net/Socket;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 410
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/ChannelEndPoint;->_local:Ljava/net/InetSocketAddress;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/ChannelEndPoint;->_local:Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/ChannelEndPoint;->_local:Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 412
    :cond_1
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/ChannelEndPoint;->_local:Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    :goto_0
    const-string v0, "0.0.0.0"

    return-object v0
.end method

.method public getLocalHost()Ljava/lang/String;
    .locals 1

    .line 421
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/ChannelEndPoint;->_socket:Ljava/net/Socket;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 423
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/ChannelEndPoint;->_local:Ljava/net/InetSocketAddress;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/ChannelEndPoint;->_local:Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/ChannelEndPoint;->_local:Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 425
    :cond_1
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/ChannelEndPoint;->_local:Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getCanonicalHostName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    :goto_0
    const-string v0, "0.0.0.0"

    return-object v0
.end method

.method public getLocalPort()I
    .locals 1

    .line 434
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/ChannelEndPoint;->_socket:Ljava/net/Socket;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 436
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/ChannelEndPoint;->_local:Ljava/net/InetSocketAddress;

    if-nez v0, :cond_1

    const/4 v0, -0x1

    return v0

    .line 438
    :cond_1
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/ChannelEndPoint;->_local:Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v0

    return v0
.end method

.method public getMaxIdleTime()I
    .locals 1

    .line 496
    iget v0, p0, Lorg/eclipse/jetty/io/nio/ChannelEndPoint;->_maxIdleTime:I

    return v0
.end method

.method public getRemoteAddr()Ljava/lang/String;
    .locals 2

    .line 447
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/ChannelEndPoint;->_socket:Ljava/net/Socket;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 449
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/ChannelEndPoint;->_remote:Ljava/net/InetSocketAddress;

    if-nez v0, :cond_1

    return-object v1

    .line 451
    :cond_1
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/ChannelEndPoint;->_remote:Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRemoteHost()Ljava/lang/String;
    .locals 2

    .line 460
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/ChannelEndPoint;->_socket:Ljava/net/Socket;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 462
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/ChannelEndPoint;->_remote:Ljava/net/InetSocketAddress;

    if-nez v0, :cond_1

    return-object v1

    .line 464
    :cond_1
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/ChannelEndPoint;->_remote:Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getCanonicalHostName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRemotePort()I
    .locals 1

    .line 473
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/ChannelEndPoint;->_socket:Ljava/net/Socket;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 475
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/ChannelEndPoint;->_remote:Ljava/net/InetSocketAddress;

    if-nez v0, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/ChannelEndPoint;->_remote:Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getTransport()Ljava/lang/Object;
    .locals 1

    .line 484
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/ChannelEndPoint;->_channel:Ljava/nio/channels/ByteChannel;

    return-object v0
.end method

.method public isBlocking()Z
    .locals 1

    .line 91
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/ChannelEndPoint;->_channel:Ljava/nio/channels/ByteChannel;

    instance-of v0, v0, Ljava/nio/channels/SelectableChannel;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/ChannelEndPoint;->_channel:Ljava/nio/channels/ByteChannel;

    check-cast v0, Ljava/nio/channels/SelectableChannel;

    invoke-virtual {v0}, Ljava/nio/channels/SelectableChannel;->isBlocking()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isInputShutdown()Z
    .locals 1

    .line 201
    iget-boolean v0, p0, Lorg/eclipse/jetty/io/nio/ChannelEndPoint;->_ishut:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/ChannelEndPoint;->_channel:Ljava/nio/channels/ByteChannel;

    invoke-interface {v0}, Ljava/nio/channels/ByteChannel;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/ChannelEndPoint;->_socket:Ljava/net/Socket;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/ChannelEndPoint;->_socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isInputShutdown()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isOpen()Z
    .locals 1

    .line 109
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/ChannelEndPoint;->_channel:Ljava/nio/channels/ByteChannel;

    invoke-interface {v0}, Ljava/nio/channels/ByteChannel;->isOpen()Z

    move-result v0

    return v0
.end method

.method public isOutputShutdown()Z
    .locals 1

    .line 196
    iget-boolean v0, p0, Lorg/eclipse/jetty/io/nio/ChannelEndPoint;->_oshut:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/ChannelEndPoint;->_channel:Ljava/nio/channels/ByteChannel;

    invoke-interface {v0}, Ljava/nio/channels/ByteChannel;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/ChannelEndPoint;->_socket:Ljava/net/Socket;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/ChannelEndPoint;->_socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isOutputShutdown()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public setMaxIdleTime(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 505
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/ChannelEndPoint;->_socket:Ljava/net/Socket;

    if-eqz v0, :cond_1

    iget v0, p0, Lorg/eclipse/jetty/io/nio/ChannelEndPoint;->_maxIdleTime:I

    if-eq p1, v0, :cond_1

    .line 506
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/ChannelEndPoint;->_socket:Ljava/net/Socket;

    if-lez p1, :cond_0

    move v1, p1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 507
    :cond_1
    iput p1, p0, Lorg/eclipse/jetty/io/nio/ChannelEndPoint;->_maxIdleTime:I

    return-void
.end method

.method protected final shutdownChannelInput()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 118
    sget-object v0, Lorg/eclipse/jetty/io/nio/ChannelEndPoint;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v1, "ishut {}"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-interface {v0, v1, v3}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 119
    iput-boolean v2, p0, Lorg/eclipse/jetty/io/nio/ChannelEndPoint;->_ishut:Z

    .line 120
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/ChannelEndPoint;->_channel:Ljava/nio/channels/ByteChannel;

    invoke-interface {v0}, Ljava/nio/channels/ByteChannel;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 122
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/ChannelEndPoint;->_socket:Ljava/net/Socket;

    if-eqz v0, :cond_2

    .line 126
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/ChannelEndPoint;->_socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isInputShutdown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 128
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/ChannelEndPoint;->_socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->shutdownInput()V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 138
    :cond_0
    iget-boolean v0, p0, Lorg/eclipse/jetty/io/nio/ChannelEndPoint;->_oshut:Z

    if-eqz v0, :cond_2

    .line 140
    :goto_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/ChannelEndPoint;->close()V

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 133
    :try_start_1
    sget-object v1, Lorg/eclipse/jetty/io/nio/ChannelEndPoint;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-virtual {v0}, Ljava/net/SocketException;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 134
    sget-object v1, Lorg/eclipse/jetty/io/nio/ChannelEndPoint;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v1, v0}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 138
    iget-boolean v0, p0, Lorg/eclipse/jetty/io/nio/ChannelEndPoint;->_oshut:Z

    if-eqz v0, :cond_2

    goto :goto_0

    :goto_1
    iget-boolean v1, p0, Lorg/eclipse/jetty/io/nio/ChannelEndPoint;->_oshut:Z

    if-eqz v1, :cond_1

    .line 140
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/ChannelEndPoint;->close()V

    :cond_1
    throw v0

    :cond_2
    :goto_2
    return-void
.end method

.method protected final shutdownChannelOutput()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 157
    sget-object v0, Lorg/eclipse/jetty/io/nio/ChannelEndPoint;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v1, "oshut {}"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-interface {v0, v1, v3}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 158
    iput-boolean v2, p0, Lorg/eclipse/jetty/io/nio/ChannelEndPoint;->_oshut:Z

    .line 159
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/ChannelEndPoint;->_channel:Ljava/nio/channels/ByteChannel;

    invoke-interface {v0}, Ljava/nio/channels/ByteChannel;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 161
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/ChannelEndPoint;->_socket:Ljava/net/Socket;

    if-eqz v0, :cond_2

    .line 165
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/ChannelEndPoint;->_socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isOutputShutdown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 167
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/ChannelEndPoint;->_socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->shutdownOutput()V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 177
    :cond_0
    iget-boolean v0, p0, Lorg/eclipse/jetty/io/nio/ChannelEndPoint;->_ishut:Z

    if-eqz v0, :cond_2

    .line 179
    :goto_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/ChannelEndPoint;->close()V

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 172
    :try_start_1
    sget-object v1, Lorg/eclipse/jetty/io/nio/ChannelEndPoint;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-virtual {v0}, Ljava/net/SocketException;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 173
    sget-object v1, Lorg/eclipse/jetty/io/nio/ChannelEndPoint;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v1, v0}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 177
    iget-boolean v0, p0, Lorg/eclipse/jetty/io/nio/ChannelEndPoint;->_ishut:Z

    if-eqz v0, :cond_2

    goto :goto_0

    :goto_1
    iget-boolean v1, p0, Lorg/eclipse/jetty/io/nio/ChannelEndPoint;->_ishut:Z

    if-eqz v1, :cond_1

    .line 179
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/ChannelEndPoint;->close()V

    :cond_1
    throw v0

    :cond_2
    :goto_2
    return-void
.end method

.method public shutdownInput()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 152
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/ChannelEndPoint;->shutdownChannelInput()V

    return-void
.end method

.method public shutdownOutput()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 191
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/ChannelEndPoint;->shutdownChannelOutput()V

    return-void
.end method
