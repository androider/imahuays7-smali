.class public Lorg/eclipse/jetty/io/bio/SocketEndPoint;
.super Lorg/eclipse/jetty/io/bio/StreamEndPoint;
.source "SocketEndPoint.java"


# static fields
.field private static final LOG:Lorg/eclipse/jetty/util/log/Logger;


# instance fields
.field final _local:Ljava/net/InetSocketAddress;

.field final _remote:Ljava/net/InetSocketAddress;

.field final _socket:Ljava/net/Socket;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    const-class v0, Lorg/eclipse/jetty/io/bio/SocketEndPoint;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/io/bio/SocketEndPoint;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/net/Socket;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 47
    invoke-virtual {p1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/eclipse/jetty/io/bio/StreamEndPoint;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 48
    iput-object p1, p0, Lorg/eclipse/jetty/io/bio/SocketEndPoint;->_socket:Ljava/net/Socket;

    .line 49
    iget-object p1, p0, Lorg/eclipse/jetty/io/bio/SocketEndPoint;->_socket:Ljava/net/Socket;

    invoke-virtual {p1}, Ljava/net/Socket;->getLocalSocketAddress()Ljava/net/SocketAddress;

    move-result-object p1

    check-cast p1, Ljava/net/InetSocketAddress;

    iput-object p1, p0, Lorg/eclipse/jetty/io/bio/SocketEndPoint;->_local:Ljava/net/InetSocketAddress;

    .line 50
    iget-object p1, p0, Lorg/eclipse/jetty/io/bio/SocketEndPoint;->_socket:Ljava/net/Socket;

    invoke-virtual {p1}, Ljava/net/Socket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object p1

    check-cast p1, Ljava/net/InetSocketAddress;

    iput-object p1, p0, Lorg/eclipse/jetty/io/bio/SocketEndPoint;->_remote:Ljava/net/InetSocketAddress;

    .line 51
    iget-object p1, p0, Lorg/eclipse/jetty/io/bio/SocketEndPoint;->_socket:Ljava/net/Socket;

    invoke-virtual {p1}, Ljava/net/Socket;->getSoTimeout()I

    move-result p1

    invoke-super {p0, p1}, Lorg/eclipse/jetty/io/bio/StreamEndPoint;->setMaxIdleTime(I)V

    return-void
.end method

.method protected constructor <init>(Ljava/net/Socket;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 61
    invoke-virtual {p1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/eclipse/jetty/io/bio/StreamEndPoint;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 62
    iput-object p1, p0, Lorg/eclipse/jetty/io/bio/SocketEndPoint;->_socket:Ljava/net/Socket;

    .line 63
    iget-object p1, p0, Lorg/eclipse/jetty/io/bio/SocketEndPoint;->_socket:Ljava/net/Socket;

    invoke-virtual {p1}, Ljava/net/Socket;->getLocalSocketAddress()Ljava/net/SocketAddress;

    move-result-object p1

    check-cast p1, Ljava/net/InetSocketAddress;

    iput-object p1, p0, Lorg/eclipse/jetty/io/bio/SocketEndPoint;->_local:Ljava/net/InetSocketAddress;

    .line 64
    iget-object p1, p0, Lorg/eclipse/jetty/io/bio/SocketEndPoint;->_socket:Ljava/net/Socket;

    invoke-virtual {p1}, Ljava/net/Socket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object p1

    check-cast p1, Ljava/net/InetSocketAddress;

    iput-object p1, p0, Lorg/eclipse/jetty/io/bio/SocketEndPoint;->_remote:Ljava/net/InetSocketAddress;

    .line 65
    iget-object p1, p0, Lorg/eclipse/jetty/io/bio/SocketEndPoint;->_socket:Ljava/net/Socket;

    if-lez p2, :cond_0

    move v0, p2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 66
    invoke-super {p0, p2}, Lorg/eclipse/jetty/io/bio/StreamEndPoint;->setMaxIdleTime(I)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 161
    iget-object v0, p0, Lorg/eclipse/jetty/io/bio/SocketEndPoint;->_socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    const/4 v0, 0x0

    .line 162
    iput-object v0, p0, Lorg/eclipse/jetty/io/bio/SocketEndPoint;->_in:Ljava/io/InputStream;

    .line 163
    iput-object v0, p0, Lorg/eclipse/jetty/io/bio/SocketEndPoint;->_out:Ljava/io/OutputStream;

    return-void
.end method

.method public getLocalAddr()Ljava/lang/String;
    .locals 1

    .line 174
    iget-object v0, p0, Lorg/eclipse/jetty/io/bio/SocketEndPoint;->_local:Ljava/net/InetSocketAddress;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jetty/io/bio/SocketEndPoint;->_local:Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jetty/io/bio/SocketEndPoint;->_local:Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 177
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/io/bio/SocketEndPoint;->_local:Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    const-string v0, "0.0.0.0"

    return-object v0
.end method

.method public getLocalHost()Ljava/lang/String;
    .locals 1

    .line 187
    iget-object v0, p0, Lorg/eclipse/jetty/io/bio/SocketEndPoint;->_local:Ljava/net/InetSocketAddress;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jetty/io/bio/SocketEndPoint;->_local:Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jetty/io/bio/SocketEndPoint;->_local:Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 190
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/io/bio/SocketEndPoint;->_local:Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getCanonicalHostName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    const-string v0, "0.0.0.0"

    return-object v0
.end method

.method public getLocalPort()I
    .locals 1

    .line 200
    iget-object v0, p0, Lorg/eclipse/jetty/io/bio/SocketEndPoint;->_local:Ljava/net/InetSocketAddress;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    .line 202
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/io/bio/SocketEndPoint;->_local:Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v0

    return v0
.end method

.method public getRemoteAddr()Ljava/lang/String;
    .locals 2

    .line 212
    iget-object v0, p0, Lorg/eclipse/jetty/io/bio/SocketEndPoint;->_remote:Ljava/net/InetSocketAddress;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 214
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/io/bio/SocketEndPoint;->_remote:Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 215
    :cond_1
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public getRemoteHost()Ljava/lang/String;
    .locals 1

    .line 225
    iget-object v0, p0, Lorg/eclipse/jetty/io/bio/SocketEndPoint;->_remote:Ljava/net/InetSocketAddress;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 227
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/io/bio/SocketEndPoint;->_remote:Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getCanonicalHostName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRemotePort()I
    .locals 1

    .line 237
    iget-object v0, p0, Lorg/eclipse/jetty/io/bio/SocketEndPoint;->_remote:Ljava/net/InetSocketAddress;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    .line 239
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/io/bio/SocketEndPoint;->_remote:Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v0

    return v0
.end method

.method public getTransport()Ljava/lang/Object;
    .locals 1

    .line 249
    iget-object v0, p0, Lorg/eclipse/jetty/io/bio/SocketEndPoint;->_socket:Ljava/net/Socket;

    return-object v0
.end method

.method protected idleExpired()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 271
    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/bio/SocketEndPoint;->isInputShutdown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 272
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/bio/SocketEndPoint;->shutdownInput()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 276
    sget-object v1, Lorg/eclipse/jetty/io/bio/SocketEndPoint;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v1, v0}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    .line 277
    iget-object v0, p0, Lorg/eclipse/jetty/io/bio/SocketEndPoint;->_socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    :cond_0
    :goto_0
    return-void
.end method

.method public isInputShutdown()Z
    .locals 1

    .line 83
    iget-object v0, p0, Lorg/eclipse/jetty/io/bio/SocketEndPoint;->_socket:Ljava/net/Socket;

    instance-of v0, v0, Ljavax/net/ssl/SSLSocket;

    if-eqz v0, :cond_0

    .line 84
    invoke-super {p0}, Lorg/eclipse/jetty/io/bio/StreamEndPoint;->isInputShutdown()Z

    move-result v0

    return v0

    .line 85
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/io/bio/SocketEndPoint;->_socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/eclipse/jetty/io/bio/SocketEndPoint;->_socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isInputShutdown()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isOpen()Z
    .locals 1

    .line 76
    invoke-super {p0}, Lorg/eclipse/jetty/io/bio/StreamEndPoint;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/io/bio/SocketEndPoint;->_socket:Ljava/net/Socket;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/io/bio/SocketEndPoint;->_socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isOutputShutdown()Z
    .locals 1

    .line 92
    iget-object v0, p0, Lorg/eclipse/jetty/io/bio/SocketEndPoint;->_socket:Ljava/net/Socket;

    instance-of v0, v0, Ljavax/net/ssl/SSLSocket;

    if-eqz v0, :cond_0

    .line 93
    invoke-super {p0}, Lorg/eclipse/jetty/io/bio/StreamEndPoint;->isOutputShutdown()Z

    move-result v0

    return v0

    .line 95
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/io/bio/SocketEndPoint;->_socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/eclipse/jetty/io/bio/SocketEndPoint;->_socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isOutputShutdown()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
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

    .line 259
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/bio/SocketEndPoint;->getMaxIdleTime()I

    move-result v0

    if-eq p1, v0, :cond_1

    .line 260
    iget-object v0, p0, Lorg/eclipse/jetty/io/bio/SocketEndPoint;->_socket:Ljava/net/Socket;

    if-lez p1, :cond_0

    move v1, p1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 261
    :cond_1
    invoke-super {p0, p1}, Lorg/eclipse/jetty/io/bio/StreamEndPoint;->setMaxIdleTime(I)V

    return-void
.end method

.method public shutdownInput()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 148
    iget-object v0, p0, Lorg/eclipse/jetty/io/bio/SocketEndPoint;->_socket:Ljava/net/Socket;

    instance-of v0, v0, Ljavax/net/ssl/SSLSocket;

    if-eqz v0, :cond_0

    .line 149
    invoke-super {p0}, Lorg/eclipse/jetty/io/bio/StreamEndPoint;->shutdownInput()V

    goto :goto_0

    .line 151
    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/bio/SocketEndPoint;->shutdownSocketInput()V

    :goto_0
    return-void
.end method

.method public shutdownOutput()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 120
    iget-object v0, p0, Lorg/eclipse/jetty/io/bio/SocketEndPoint;->_socket:Ljava/net/Socket;

    instance-of v0, v0, Ljavax/net/ssl/SSLSocket;

    if-eqz v0, :cond_0

    .line 121
    invoke-super {p0}, Lorg/eclipse/jetty/io/bio/StreamEndPoint;->shutdownOutput()V

    goto :goto_0

    .line 123
    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/bio/SocketEndPoint;->shutdownSocketOutput()V

    :goto_0
    return-void
.end method

.method public shutdownSocketInput()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 132
    iget-object v0, p0, Lorg/eclipse/jetty/io/bio/SocketEndPoint;->_socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 134
    iget-object v0, p0, Lorg/eclipse/jetty/io/bio/SocketEndPoint;->_socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isInputShutdown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 135
    iget-object v0, p0, Lorg/eclipse/jetty/io/bio/SocketEndPoint;->_socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->shutdownInput()V

    .line 136
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/io/bio/SocketEndPoint;->_socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isOutputShutdown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 137
    iget-object v0, p0, Lorg/eclipse/jetty/io/bio/SocketEndPoint;->_socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    :cond_1
    return-void
.end method

.method protected final shutdownSocketOutput()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 104
    iget-object v0, p0, Lorg/eclipse/jetty/io/bio/SocketEndPoint;->_socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 106
    iget-object v0, p0, Lorg/eclipse/jetty/io/bio/SocketEndPoint;->_socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isOutputShutdown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 107
    iget-object v0, p0, Lorg/eclipse/jetty/io/bio/SocketEndPoint;->_socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->shutdownOutput()V

    .line 108
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/io/bio/SocketEndPoint;->_socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isInputShutdown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 109
    iget-object v0, p0, Lorg/eclipse/jetty/io/bio/SocketEndPoint;->_socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 284
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/eclipse/jetty/io/bio/SocketEndPoint;->_local:Ljava/net/InetSocketAddress;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " <--> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/eclipse/jetty/io/bio/SocketEndPoint;->_remote:Ljava/net/InetSocketAddress;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
