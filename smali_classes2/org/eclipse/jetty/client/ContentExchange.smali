.class public Lorg/eclipse/jetty/client/ContentExchange;
.super Lorg/eclipse/jetty/client/CachedExchange;
.source "ContentExchange.java"


# instance fields
.field private _bufferSize:I

.field private _encoding:Ljava/lang/String;

.field private _fileForUpload:Ljava/io/File;

.field private _responseContent:Ljava/io/ByteArrayOutputStream;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 45
    invoke-direct {p0, v0}, Lorg/eclipse/jetty/client/CachedExchange;-><init>(Z)V

    const/16 v0, 0x1000

    .line 38
    iput v0, p0, Lorg/eclipse/jetty/client/ContentExchange;->_bufferSize:I

    const-string v0, "utf-8"

    .line 39
    iput-object v0, p0, Lorg/eclipse/jetty/client/ContentExchange;->_encoding:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Lorg/eclipse/jetty/client/CachedExchange;-><init>(Z)V

    const/16 p1, 0x1000

    .line 38
    iput p1, p0, Lorg/eclipse/jetty/client/ContentExchange;->_bufferSize:I

    const-string p1, "utf-8"

    .line 39
    iput-object p1, p0, Lorg/eclipse/jetty/client/ContentExchange;->_encoding:Ljava/lang/String;

    return-void
.end method

.method private declared-synchronized getInputStream()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 122
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lorg/eclipse/jetty/client/ContentExchange;->_fileForUpload:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized getFileForUpload()Ljava/io/File;
    .locals 1

    monitor-enter p0

    .line 127
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/client/ContentExchange;->_fileForUpload:Ljava/io/File;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getResponseContent()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    monitor-enter p0

    .line 55
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/client/ContentExchange;->_responseContent:Ljava/io/ByteArrayOutputStream;

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lorg/eclipse/jetty/client/ContentExchange;->_responseContent:Ljava/io/ByteArrayOutputStream;

    iget-object v1, p0, Lorg/eclipse/jetty/client/ContentExchange;->_encoding:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 57
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 54
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getResponseContentBytes()[B
    .locals 1

    monitor-enter p0

    .line 62
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/client/ContentExchange;->_responseContent:Ljava/io/ByteArrayOutputStream;

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lorg/eclipse/jetty/client/ContentExchange;->_responseContent:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 64
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 61
    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized onResponseContent(Lorg/eclipse/jetty/io/Buffer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 102
    :try_start_0
    invoke-super {p0, p1}, Lorg/eclipse/jetty/client/CachedExchange;->onResponseContent(Lorg/eclipse/jetty/io/Buffer;)V

    .line 103
    iget-object v0, p0, Lorg/eclipse/jetty/client/ContentExchange;->_responseContent:Ljava/io/ByteArrayOutputStream;

    if-nez v0, :cond_0

    .line 104
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    iget v1, p0, Lorg/eclipse/jetty/client/ContentExchange;->_bufferSize:I

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    iput-object v0, p0, Lorg/eclipse/jetty/client/ContentExchange;->_responseContent:Ljava/io/ByteArrayOutputStream;

    .line 105
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/client/ContentExchange;->_responseContent:Ljava/io/ByteArrayOutputStream;

    invoke-interface {p1, v0}, Lorg/eclipse/jetty/io/Buffer;->writeTo(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 101
    monitor-exit p0

    throw p1
.end method

.method protected declared-synchronized onResponseHeader(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 78
    :try_start_0
    invoke-super {p0, p1, p2}, Lorg/eclipse/jetty/client/CachedExchange;->onResponseHeader(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)V

    .line 79
    sget-object v0, Lorg/eclipse/jetty/http/HttpHeaders;->CACHE:Lorg/eclipse/jetty/http/HttpHeaders;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/http/HttpHeaders;->getOrdinal(Lorg/eclipse/jetty/io/Buffer;)I

    move-result p1

    const/16 v0, 0xc

    if-eq p1, v0, :cond_1

    const/16 v0, 0x10

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 86
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/eclipse/jetty/util/StringUtil;->asciiToLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "charset="

    .line 87
    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p2

    if-lez p2, :cond_2

    add-int/lit8 p2, p2, 0x8

    .line 90
    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jetty/client/ContentExchange;->_encoding:Ljava/lang/String;

    .line 91
    iget-object p1, p0, Lorg/eclipse/jetty/client/ContentExchange;->_encoding:Ljava/lang/String;

    const/16 p2, 0x3b

    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(I)I

    move-result p1

    if-lez p1, :cond_2

    .line 93
    iget-object p2, p0, Lorg/eclipse/jetty/client/ContentExchange;->_encoding:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {p2, v0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jetty/client/ContentExchange;->_encoding:Ljava/lang/String;

    goto :goto_0

    .line 83
    :cond_1
    invoke-static {p2}, Lorg/eclipse/jetty/io/BufferUtil;->toInt(Lorg/eclipse/jetty/io/Buffer;)I

    move-result p1

    iput p1, p0, Lorg/eclipse/jetty/client/ContentExchange;->_bufferSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 77
    monitor-exit p0

    throw p1
.end method

.method protected declared-synchronized onResponseStatus(Lorg/eclipse/jetty/io/Buffer;ILorg/eclipse/jetty/io/Buffer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 70
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/client/ContentExchange;->_responseContent:Ljava/io/ByteArrayOutputStream;

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lorg/eclipse/jetty/client/ContentExchange;->_responseContent:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 72
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lorg/eclipse/jetty/client/CachedExchange;->onResponseStatus(Lorg/eclipse/jetty/io/Buffer;ILorg/eclipse/jetty/io/Buffer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 69
    monitor-exit p0

    throw p1
.end method

.method protected declared-synchronized onRetry()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 111
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/client/ContentExchange;->_fileForUpload:Ljava/io/File;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 113
    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/client/ContentExchange;->setRequestContent(Lorg/eclipse/jetty/io/Buffer;)V

    .line 114
    invoke-direct {p0}, Lorg/eclipse/jetty/client/ContentExchange;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/client/ContentExchange;->setRequestContentSource(Ljava/io/InputStream;)V

    goto :goto_0

    .line 117
    :cond_0
    invoke-super {p0}, Lorg/eclipse/jetty/client/CachedExchange;->onRetry()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 110
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setFileForUpload(Ljava/io/File;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 132
    :try_start_0
    iput-object p1, p0, Lorg/eclipse/jetty/client/ContentExchange;->_fileForUpload:Ljava/io/File;

    .line 133
    invoke-direct {p0}, Lorg/eclipse/jetty/client/ContentExchange;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/client/ContentExchange;->setRequestContentSource(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 131
    monitor-exit p0

    throw p1
.end method
