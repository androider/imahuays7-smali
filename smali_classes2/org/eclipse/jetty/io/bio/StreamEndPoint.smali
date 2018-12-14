.class public Lorg/eclipse/jetty/io/bio/StreamEndPoint;
.super Ljava/lang/Object;
.source "StreamEndPoint.java"

# interfaces
.implements Lorg/eclipse/jetty/io/EndPoint;


# instance fields
.field _in:Ljava/io/InputStream;

.field _ishut:Z

.field _maxIdleTime:I

.field _oshut:Z

.field _out:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lorg/eclipse/jetty/io/bio/StreamEndPoint;->_in:Ljava/io/InputStream;

    .line 44
    iput-object p2, p0, Lorg/eclipse/jetty/io/bio/StreamEndPoint;->_out:Ljava/io/OutputStream;

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
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 107
    iget-object v0, p0, Lorg/eclipse/jetty/io/bio/StreamEndPoint;->_in:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lorg/eclipse/jetty/io/bio/StreamEndPoint;->_in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_0
    const/4 v0, 0x0

    .line 109
    iput-object v0, p0, Lorg/eclipse/jetty/io/bio/StreamEndPoint;->_in:Ljava/io/InputStream;

    .line 110
    iget-object v1, p0, Lorg/eclipse/jetty/io/bio/StreamEndPoint;->_out:Ljava/io/OutputStream;

    if-eqz v1, :cond_1

    .line 111
    iget-object v1, p0, Lorg/eclipse/jetty/io/bio/StreamEndPoint;->_out:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 112
    :cond_1
    iput-object v0, p0, Lorg/eclipse/jetty/io/bio/StreamEndPoint;->_out:Ljava/io/OutputStream;

    return-void
.end method

.method public fill(Lorg/eclipse/jetty/io/Buffer;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 126
    iget-boolean v0, p0, Lorg/eclipse/jetty/io/bio/StreamEndPoint;->_ishut:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    return v1

    .line 128
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/io/bio/StreamEndPoint;->_in:Ljava/io/InputStream;

    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    .line 131
    :cond_1
    invoke-interface {p1}, Lorg/eclipse/jetty/io/Buffer;->space()I

    move-result v0

    if-gtz v0, :cond_3

    .line 134
    invoke-interface {p1}, Lorg/eclipse/jetty/io/Buffer;->hasContent()Z

    move-result p1

    if-eqz p1, :cond_2

    return v2

    .line 136
    :cond_2
    new-instance p1, Ljava/io/IOException;

    const-string v0, "FULL"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 141
    :cond_3
    :try_start_0
    iget-object v2, p0, Lorg/eclipse/jetty/io/bio/StreamEndPoint;->_in:Ljava/io/InputStream;

    invoke-interface {p1, v2, v0}, Lorg/eclipse/jetty/io/Buffer;->readFrom(Ljava/io/InputStream;I)I

    move-result p1

    if-gez p1, :cond_4

    .line 143
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/bio/StreamEndPoint;->shutdownInput()V
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    return p1

    .line 148
    :catch_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/bio/StreamEndPoint;->idleExpired()V

    return v1
.end method

.method public flush(Lorg/eclipse/jetty/io/Buffer;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 158
    iget-boolean v0, p0, Lorg/eclipse/jetty/io/bio/StreamEndPoint;->_oshut:Z

    if-eqz v0, :cond_0

    const/4 p1, -0x1

    return p1

    .line 160
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/io/bio/StreamEndPoint;->_out:Ljava/io/OutputStream;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 162
    :cond_1
    invoke-interface {p1}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 164
    iget-object v1, p0, Lorg/eclipse/jetty/io/bio/StreamEndPoint;->_out:Ljava/io/OutputStream;

    invoke-interface {p1, v1}, Lorg/eclipse/jetty/io/Buffer;->writeTo(Ljava/io/OutputStream;)V

    .line 165
    :cond_2
    invoke-interface {p1}, Lorg/eclipse/jetty/io/Buffer;->isImmutable()Z

    move-result v1

    if-nez v1, :cond_3

    .line 166
    invoke-interface {p1}, Lorg/eclipse/jetty/io/Buffer;->clear()V

    :cond_3
    return v0
.end method

.method public flush(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 179
    invoke-interface {p1}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 182
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/io/bio/StreamEndPoint;->flush(Lorg/eclipse/jetty/io/Buffer;)I

    move-result p1

    if-ge p1, v0, :cond_1

    return p1

    :cond_0
    const/4 p1, 0x0

    :cond_1
    if-eqz p2, :cond_4

    .line 191
    invoke-interface {p2}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v0

    if-lez v0, :cond_4

    .line 194
    invoke-virtual {p0, p2}, Lorg/eclipse/jetty/io/bio/StreamEndPoint;->flush(Lorg/eclipse/jetty/io/Buffer;)I

    move-result p2

    if-gez p2, :cond_3

    if-lez p1, :cond_2

    goto :goto_0

    :cond_2
    move p1, p2

    :goto_0
    return p1

    :cond_3
    add-int/2addr p1, p2

    if-ge p2, v0, :cond_4

    return p1

    :cond_4
    if-eqz p3, :cond_7

    .line 205
    invoke-interface {p3}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result p2

    if-lez p2, :cond_7

    .line 208
    invoke-virtual {p0, p3}, Lorg/eclipse/jetty/io/bio/StreamEndPoint;->flush(Lorg/eclipse/jetty/io/Buffer;)I

    move-result p2

    if-gez p2, :cond_6

    if-lez p1, :cond_5

    goto :goto_1

    :cond_5
    move p1, p2

    :goto_1
    return p1

    :cond_6
    add-int/2addr p1, p2

    :cond_7
    return p1
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 309
    iget-object v0, p0, Lorg/eclipse/jetty/io/bio/StreamEndPoint;->_out:Ljava/io/OutputStream;

    if-eqz v0, :cond_0

    .line 310
    iget-object v0, p0, Lorg/eclipse/jetty/io/bio/StreamEndPoint;->_out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    :cond_0
    return-void
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1

    .line 283
    iget-object v0, p0, Lorg/eclipse/jetty/io/bio/StreamEndPoint;->_in:Ljava/io/InputStream;

    return-object v0
.end method

.method public getLocalAddr()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getLocalHost()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getLocalPort()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getMaxIdleTime()I
    .locals 1

    .line 316
    iget v0, p0, Lorg/eclipse/jetty/io/bio/StreamEndPoint;->_maxIdleTime:I

    return v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1

    .line 295
    iget-object v0, p0, Lorg/eclipse/jetty/io/bio/StreamEndPoint;->_out:Ljava/io/OutputStream;

    return-object v0
.end method

.method public getRemoteAddr()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getRemoteHost()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getRemotePort()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getTransport()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected idleExpired()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 117
    iget-object v0, p0, Lorg/eclipse/jetty/io/bio/StreamEndPoint;->_in:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lorg/eclipse/jetty/io/bio/StreamEndPoint;->_in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_0
    return-void
.end method

.method public isBlocking()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final isClosed()Z
    .locals 1

    .line 75
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/bio/StreamEndPoint;->isOpen()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isInputShutdown()Z
    .locals 1

    .line 87
    iget-boolean v0, p0, Lorg/eclipse/jetty/io/bio/StreamEndPoint;->_ishut:Z

    return v0
.end method

.method public isOpen()Z
    .locals 1

    .line 67
    iget-object v0, p0, Lorg/eclipse/jetty/io/bio/StreamEndPoint;->_in:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isOutputShutdown()Z
    .locals 1

    .line 99
    iget-boolean v0, p0, Lorg/eclipse/jetty/io/bio/StreamEndPoint;->_oshut:Z

    return v0
.end method

.method public setInputStream(Ljava/io/InputStream;)V
    .locals 0

    .line 289
    iput-object p1, p0, Lorg/eclipse/jetty/io/bio/StreamEndPoint;->_in:Ljava/io/InputStream;

    return-void
.end method

.method public setMaxIdleTime(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 322
    iput p1, p0, Lorg/eclipse/jetty/io/bio/StreamEndPoint;->_maxIdleTime:I

    return-void
.end method

.method public setOutputStream(Ljava/io/OutputStream;)V
    .locals 0

    .line 301
    iput-object p1, p0, Lorg/eclipse/jetty/io/bio/StreamEndPoint;->_out:Ljava/io/OutputStream;

    return-void
.end method

.method public shutdownInput()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 92
    iput-boolean v0, p0, Lorg/eclipse/jetty/io/bio/StreamEndPoint;->_ishut:Z

    .line 93
    iget-boolean v0, p0, Lorg/eclipse/jetty/io/bio/StreamEndPoint;->_oshut:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/io/bio/StreamEndPoint;->_in:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lorg/eclipse/jetty/io/bio/StreamEndPoint;->_in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_0
    return-void
.end method

.method public shutdownOutput()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 80
    iput-boolean v0, p0, Lorg/eclipse/jetty/io/bio/StreamEndPoint;->_oshut:Z

    .line 81
    iget-boolean v0, p0, Lorg/eclipse/jetty/io/bio/StreamEndPoint;->_ishut:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/io/bio/StreamEndPoint;->_out:Ljava/io/OutputStream;

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lorg/eclipse/jetty/io/bio/StreamEndPoint;->_out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    :cond_0
    return-void
.end method
