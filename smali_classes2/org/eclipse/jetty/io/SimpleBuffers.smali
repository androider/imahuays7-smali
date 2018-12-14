.class public Lorg/eclipse/jetty/io/SimpleBuffers;
.super Ljava/lang/Object;
.source "SimpleBuffers.java"

# interfaces
.implements Lorg/eclipse/jetty/io/Buffers;


# instance fields
.field final _buffer:Lorg/eclipse/jetty/io/Buffer;

.field _bufferOut:Z

.field final _header:Lorg/eclipse/jetty/io/Buffer;

.field _headerOut:Z


# direct methods
.method public constructor <init>(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lorg/eclipse/jetty/io/SimpleBuffers;->_header:Lorg/eclipse/jetty/io/Buffer;

    .line 41
    iput-object p2, p0, Lorg/eclipse/jetty/io/SimpleBuffers;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    return-void
.end method


# virtual methods
.method public getBuffer()Lorg/eclipse/jetty/io/Buffer;
    .locals 3

    .line 47
    monitor-enter p0

    .line 49
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/io/SimpleBuffers;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/eclipse/jetty/io/SimpleBuffers;->_bufferOut:Z

    if-nez v0, :cond_0

    .line 51
    iput-boolean v1, p0, Lorg/eclipse/jetty/io/SimpleBuffers;->_bufferOut:Z

    .line 52
    iget-object v0, p0, Lorg/eclipse/jetty/io/SimpleBuffers;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    monitor-exit p0

    return-object v0

    .line 55
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/io/SimpleBuffers;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jetty/io/SimpleBuffers;->_header:Lorg/eclipse/jetty/io/Buffer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jetty/io/SimpleBuffers;->_header:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->capacity()I

    move-result v0

    iget-object v2, p0, Lorg/eclipse/jetty/io/SimpleBuffers;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v2}, Lorg/eclipse/jetty/io/Buffer;->capacity()I

    move-result v2

    if-ne v0, v2, :cond_1

    iget-boolean v0, p0, Lorg/eclipse/jetty/io/SimpleBuffers;->_headerOut:Z

    if-nez v0, :cond_1

    .line 57
    iput-boolean v1, p0, Lorg/eclipse/jetty/io/SimpleBuffers;->_headerOut:Z

    .line 58
    iget-object v0, p0, Lorg/eclipse/jetty/io/SimpleBuffers;->_header:Lorg/eclipse/jetty/io/Buffer;

    monitor-exit p0

    return-object v0

    .line 61
    :cond_1
    iget-object v0, p0, Lorg/eclipse/jetty/io/SimpleBuffers;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    if-eqz v0, :cond_2

    .line 62
    new-instance v0, Lorg/eclipse/jetty/io/ByteArrayBuffer;

    iget-object v1, p0, Lorg/eclipse/jetty/io/SimpleBuffers;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v1}, Lorg/eclipse/jetty/io/Buffer;->capacity()I

    move-result v1

    invoke-direct {v0, v1}, Lorg/eclipse/jetty/io/ByteArrayBuffer;-><init>(I)V

    monitor-exit p0

    return-object v0

    .line 63
    :cond_2
    new-instance v0, Lorg/eclipse/jetty/io/ByteArrayBuffer;

    const/16 v1, 0x1000

    invoke-direct {v0, v1}, Lorg/eclipse/jetty/io/ByteArrayBuffer;-><init>(I)V

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 64
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getBuffer(I)Lorg/eclipse/jetty/io/Buffer;
    .locals 1

    .line 93
    monitor-enter p0

    .line 95
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/io/SimpleBuffers;->_header:Lorg/eclipse/jetty/io/Buffer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/io/SimpleBuffers;->_header:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->capacity()I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 96
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/SimpleBuffers;->getHeader()Lorg/eclipse/jetty/io/Buffer;

    move-result-object p1

    monitor-exit p0

    return-object p1

    .line 97
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/io/SimpleBuffers;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jetty/io/SimpleBuffers;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->capacity()I

    move-result v0

    if-ne v0, p1, :cond_1

    .line 98
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/SimpleBuffers;->getBuffer()Lorg/eclipse/jetty/io/Buffer;

    move-result-object p1

    monitor-exit p0

    return-object p1

    :cond_1
    const/4 p1, 0x0

    .line 99
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    .line 100
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getHeader()Lorg/eclipse/jetty/io/Buffer;
    .locals 3

    .line 70
    monitor-enter p0

    .line 72
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/io/SimpleBuffers;->_header:Lorg/eclipse/jetty/io/Buffer;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/eclipse/jetty/io/SimpleBuffers;->_headerOut:Z

    if-nez v0, :cond_0

    .line 74
    iput-boolean v1, p0, Lorg/eclipse/jetty/io/SimpleBuffers;->_headerOut:Z

    .line 75
    iget-object v0, p0, Lorg/eclipse/jetty/io/SimpleBuffers;->_header:Lorg/eclipse/jetty/io/Buffer;

    monitor-exit p0

    return-object v0

    .line 78
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/io/SimpleBuffers;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jetty/io/SimpleBuffers;->_header:Lorg/eclipse/jetty/io/Buffer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jetty/io/SimpleBuffers;->_header:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->capacity()I

    move-result v0

    iget-object v2, p0, Lorg/eclipse/jetty/io/SimpleBuffers;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v2}, Lorg/eclipse/jetty/io/Buffer;->capacity()I

    move-result v2

    if-ne v0, v2, :cond_1

    iget-boolean v0, p0, Lorg/eclipse/jetty/io/SimpleBuffers;->_bufferOut:Z

    if-nez v0, :cond_1

    .line 80
    iput-boolean v1, p0, Lorg/eclipse/jetty/io/SimpleBuffers;->_bufferOut:Z

    .line 81
    iget-object v0, p0, Lorg/eclipse/jetty/io/SimpleBuffers;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    monitor-exit p0

    return-object v0

    .line 84
    :cond_1
    iget-object v0, p0, Lorg/eclipse/jetty/io/SimpleBuffers;->_header:Lorg/eclipse/jetty/io/Buffer;

    if-eqz v0, :cond_2

    .line 85
    new-instance v0, Lorg/eclipse/jetty/io/ByteArrayBuffer;

    iget-object v1, p0, Lorg/eclipse/jetty/io/SimpleBuffers;->_header:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v1}, Lorg/eclipse/jetty/io/Buffer;->capacity()I

    move-result v1

    invoke-direct {v0, v1}, Lorg/eclipse/jetty/io/ByteArrayBuffer;-><init>(I)V

    monitor-exit p0

    return-object v0

    .line 86
    :cond_2
    new-instance v0, Lorg/eclipse/jetty/io/ByteArrayBuffer;

    const/16 v1, 0x1000

    invoke-direct {v0, v1}, Lorg/eclipse/jetty/io/ByteArrayBuffer;-><init>(I)V

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 87
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public returnBuffer(Lorg/eclipse/jetty/io/Buffer;)V
    .locals 2

    .line 106
    monitor-enter p0

    .line 108
    :try_start_0
    invoke-interface {p1}, Lorg/eclipse/jetty/io/Buffer;->clear()V

    .line 109
    iget-object v0, p0, Lorg/eclipse/jetty/io/SimpleBuffers;->_header:Lorg/eclipse/jetty/io/Buffer;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    .line 110
    iput-boolean v1, p0, Lorg/eclipse/jetty/io/SimpleBuffers;->_headerOut:Z

    .line 111
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/io/SimpleBuffers;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    if-ne p1, v0, :cond_1

    .line 112
    iput-boolean v1, p0, Lorg/eclipse/jetty/io/SimpleBuffers;->_bufferOut:Z

    .line 113
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
