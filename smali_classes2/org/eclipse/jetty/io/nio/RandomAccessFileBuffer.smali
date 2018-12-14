.class public Lorg/eclipse/jetty/io/nio/RandomAccessFileBuffer;
.super Lorg/eclipse/jetty/io/AbstractBuffer;
.source "RandomAccessFileBuffer.java"

# interfaces
.implements Lorg/eclipse/jetty/io/Buffer;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final _capacity:I

.field final _channel:Ljava/nio/channels/FileChannel;

.field final _file:Ljava/io/RandomAccessFile;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    const/4 v0, 0x2

    const/4 v1, 0x1

    .line 40
    invoke-direct {p0, v0, v1}, Lorg/eclipse/jetty/io/AbstractBuffer;-><init>(IZ)V

    .line 42
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v1, "rw"

    invoke-direct {v0, p1, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/eclipse/jetty/io/nio/RandomAccessFileBuffer;->_file:Ljava/io/RandomAccessFile;

    .line 43
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/RandomAccessFileBuffer;->_file:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/io/nio/RandomAccessFileBuffer;->_channel:Ljava/nio/channels/FileChannel;

    const v0, 0x7fffffff

    .line 44
    iput v0, p0, Lorg/eclipse/jetty/io/nio/RandomAccessFileBuffer;->_capacity:I

    const/4 v0, 0x0

    .line 45
    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/io/nio/RandomAccessFileBuffer;->setGetIndex(I)V

    .line 46
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    long-to-int p1, v0

    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/io/nio/RandomAccessFileBuffer;->setPutIndex(I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    const/4 v0, 0x2

    const/4 v1, 0x1

    .line 52
    invoke-direct {p0, v0, v1}, Lorg/eclipse/jetty/io/AbstractBuffer;-><init>(IZ)V

    .line 55
    iput p2, p0, Lorg/eclipse/jetty/io/nio/RandomAccessFileBuffer;->_capacity:I

    .line 56
    new-instance p2, Ljava/io/RandomAccessFile;

    const-string v0, "rw"

    invoke-direct {p2, p1, v0}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p2, p0, Lorg/eclipse/jetty/io/nio/RandomAccessFileBuffer;->_file:Ljava/io/RandomAccessFile;

    .line 57
    iget-object p2, p0, Lorg/eclipse/jetty/io/nio/RandomAccessFileBuffer;->_file:Ljava/io/RandomAccessFile;

    invoke-virtual {p2}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p2

    iput-object p2, p0, Lorg/eclipse/jetty/io/nio/RandomAccessFileBuffer;->_channel:Ljava/nio/channels/FileChannel;

    const/4 p2, 0x0

    .line 58
    invoke-virtual {p0, p2}, Lorg/eclipse/jetty/io/nio/RandomAccessFileBuffer;->setGetIndex(I)V

    .line 59
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide p1

    long-to-int p1, p1

    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/io/nio/RandomAccessFileBuffer;->setPutIndex(I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 65
    invoke-direct {p0, p3, v0}, Lorg/eclipse/jetty/io/AbstractBuffer;-><init>(IZ)V

    .line 68
    iput p2, p0, Lorg/eclipse/jetty/io/nio/RandomAccessFileBuffer;->_capacity:I

    .line 69
    new-instance p2, Ljava/io/RandomAccessFile;

    const/4 v0, 0x2

    if-ne p3, v0, :cond_0

    const-string p3, "rw"

    goto :goto_0

    :cond_0
    const-string p3, "r"

    :goto_0
    invoke-direct {p2, p1, p3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p2, p0, Lorg/eclipse/jetty/io/nio/RandomAccessFileBuffer;->_file:Ljava/io/RandomAccessFile;

    .line 70
    iget-object p2, p0, Lorg/eclipse/jetty/io/nio/RandomAccessFileBuffer;->_file:Ljava/io/RandomAccessFile;

    invoke-virtual {p2}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p2

    iput-object p2, p0, Lorg/eclipse/jetty/io/nio/RandomAccessFileBuffer;->_channel:Ljava/nio/channels/FileChannel;

    const/4 p2, 0x0

    .line 71
    invoke-virtual {p0, p2}, Lorg/eclipse/jetty/io/nio/RandomAccessFileBuffer;->setGetIndex(I)V

    .line 72
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide p1

    long-to-int p1, p1

    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/io/nio/RandomAccessFileBuffer;->setPutIndex(I)V

    return-void
.end method


# virtual methods
.method public array()[B
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public capacity()I
    .locals 1

    .line 82
    iget v0, p0, Lorg/eclipse/jetty/io/nio/RandomAccessFileBuffer;->_capacity:I

    return v0
.end method

.method public clear()V
    .locals 4

    .line 90
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/RandomAccessFileBuffer;->_file:Ljava/io/RandomAccessFile;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    :try_start_1
    invoke-super {p0}, Lorg/eclipse/jetty/io/AbstractBuffer;->clear()V

    .line 93
    iget-object v1, p0, Lorg/eclipse/jetty/io/nio/RandomAccessFileBuffer;->_file:Ljava/io/RandomAccessFile;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 94
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    .line 98
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public peek()B
    .locals 6

    .line 106
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/RandomAccessFileBuffer;->_file:Ljava/io/RandomAccessFile;

    monitor-enter v0

    .line 110
    :try_start_0
    iget v1, p0, Lorg/eclipse/jetty/io/nio/RandomAccessFileBuffer;->_get:I

    int-to-long v1, v1

    iget-object v3, p0, Lorg/eclipse/jetty/io/nio/RandomAccessFileBuffer;->_file:Ljava/io/RandomAccessFile;

    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v3

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    .line 111
    iget-object v1, p0, Lorg/eclipse/jetty/io/nio/RandomAccessFileBuffer;->_file:Ljava/io/RandomAccessFile;

    iget v2, p0, Lorg/eclipse/jetty/io/nio/RandomAccessFileBuffer;->_get:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 112
    :cond_0
    iget-object v1, p0, Lorg/eclipse/jetty/io/nio/RandomAccessFileBuffer;->_file:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->readByte()B

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    goto :goto_0

    :catch_0
    move-exception v1

    .line 116
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 118
    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public peek(I)B
    .locals 4

    .line 123
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/RandomAccessFileBuffer;->_file:Ljava/io/RandomAccessFile;

    monitor-enter v0

    .line 127
    :try_start_0
    iget-object v1, p0, Lorg/eclipse/jetty/io/nio/RandomAccessFileBuffer;->_file:Ljava/io/RandomAccessFile;

    int-to-long v2, p1

    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 128
    iget-object p1, p0, Lorg/eclipse/jetty/io/nio/RandomAccessFileBuffer;->_file:Ljava/io/RandomAccessFile;

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->readByte()B

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 132
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 134
    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public peek(I[BII)I
    .locals 4

    .line 139
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/RandomAccessFileBuffer;->_file:Ljava/io/RandomAccessFile;

    monitor-enter v0

    .line 143
    :try_start_0
    iget-object v1, p0, Lorg/eclipse/jetty/io/nio/RandomAccessFileBuffer;->_file:Ljava/io/RandomAccessFile;

    int-to-long v2, p1

    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 144
    iget-object p1, p0, Lorg/eclipse/jetty/io/nio/RandomAccessFileBuffer;->_file:Ljava/io/RandomAccessFile;

    invoke-virtual {p1, p2, p3, p4}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 148
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 150
    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public poke(I[BII)I
    .locals 4

    .line 172
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/RandomAccessFileBuffer;->_file:Ljava/io/RandomAccessFile;

    monitor-enter v0

    .line 176
    :try_start_0
    iget-object v1, p0, Lorg/eclipse/jetty/io/nio/RandomAccessFileBuffer;->_file:Ljava/io/RandomAccessFile;

    int-to-long v2, p1

    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 177
    iget-object p1, p0, Lorg/eclipse/jetty/io/nio/RandomAccessFileBuffer;->_file:Ljava/io/RandomAccessFile;

    invoke-virtual {p1, p2, p3, p4}, Ljava/io/RandomAccessFile;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 178
    :try_start_1
    monitor-exit v0

    return p4

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 182
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 184
    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public poke(IB)V
    .locals 4

    .line 155
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/RandomAccessFileBuffer;->_file:Ljava/io/RandomAccessFile;

    monitor-enter v0

    .line 159
    :try_start_0
    iget-object v1, p0, Lorg/eclipse/jetty/io/nio/RandomAccessFileBuffer;->_file:Ljava/io/RandomAccessFile;

    int-to-long v2, p1

    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 160
    iget-object p1, p0, Lorg/eclipse/jetty/io/nio/RandomAccessFileBuffer;->_file:Ljava/io/RandomAccessFile;

    invoke-virtual {p1, p2}, Ljava/io/RandomAccessFile;->writeByte(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 166
    :try_start_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 164
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 166
    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public writeTo(Ljava/nio/channels/WritableByteChannel;II)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 190
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/RandomAccessFileBuffer;->_file:Ljava/io/RandomAccessFile;

    monitor-enter v0

    .line 192
    :try_start_0
    iget-object v1, p0, Lorg/eclipse/jetty/io/nio/RandomAccessFileBuffer;->_channel:Ljava/nio/channels/FileChannel;

    int-to-long v2, p2

    int-to-long v4, p3

    move-object v6, p1

    invoke-virtual/range {v1 .. v6}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J

    move-result-wide p1

    long-to-int p1, p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 193
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
