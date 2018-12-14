.class public Lorg/eclipse/jetty/server/ssl/SslSocketConnector;
.super Lorg/eclipse/jetty/server/bio/SocketConnector;
.source "SslSocketConnector.java"

# interfaces
.implements Lorg/eclipse/jetty/server/ssl/SslConnector;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jetty/server/ssl/SslSocketConnector$SslConnectorEndPoint;
    }
.end annotation


# static fields
.field private static final LOG:Lorg/eclipse/jetty/util/log/Logger;


# instance fields
.field private _handshakeTimeout:I

.field private final _sslContextFactory:Lorg/eclipse/jetty/util/ssl/SslContextFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 60
    const-class v0, Lorg/eclipse/jetty/server/ssl/SslSocketConnector;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/server/ssl/SslSocketConnector;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 71
    new-instance v0, Lorg/eclipse/jetty/util/ssl/SslContextFactory;

    sget-object v1, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->DEFAULT_KEYSTORE_PATH:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/eclipse/jetty/server/ssl/SslSocketConnector;-><init>(Lorg/eclipse/jetty/util/ssl/SslContextFactory;)V

    const/16 v0, 0x7530

    .line 72
    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/server/ssl/SslSocketConnector;->setSoLingerTime(I)V

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jetty/util/ssl/SslContextFactory;)V
    .locals 1

    .line 77
    invoke-direct {p0}, Lorg/eclipse/jetty/server/bio/SocketConnector;-><init>()V

    const/4 v0, 0x0

    .line 63
    iput v0, p0, Lorg/eclipse/jetty/server/ssl/SslSocketConnector;->_handshakeTimeout:I

    .line 78
    iput-object p1, p0, Lorg/eclipse/jetty/server/ssl/SslSocketConnector;->_sslContextFactory:Lorg/eclipse/jetty/util/ssl/SslContextFactory;

    return-void
.end method

.method static synthetic access$000(Lorg/eclipse/jetty/server/ssl/SslSocketConnector;)Lorg/eclipse/jetty/util/ssl/SslContextFactory;
    .locals 0

    .line 58
    iget-object p0, p0, Lorg/eclipse/jetty/server/ssl/SslSocketConnector;->_sslContextFactory:Lorg/eclipse/jetty/util/ssl/SslContextFactory;

    return-object p0
.end method

.method static synthetic access$100()Lorg/eclipse/jetty/util/log/Logger;
    .locals 1

    .line 58
    sget-object v0, Lorg/eclipse/jetty/server/ssl/SslSocketConnector;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    return-object v0
.end method


# virtual methods
.method public accept(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 108
    iget-object p1, p0, Lorg/eclipse/jetty/server/ssl/SslSocketConnector;->_serverSocket:Ljava/net/ServerSocket;

    invoke-virtual {p1}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object p1

    .line 109
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/server/ssl/SslSocketConnector;->configure(Ljava/net/Socket;)V

    .line 111
    new-instance v0, Lorg/eclipse/jetty/server/ssl/SslSocketConnector$SslConnectorEndPoint;

    invoke-direct {v0, p0, p1}, Lorg/eclipse/jetty/server/ssl/SslSocketConnector$SslConnectorEndPoint;-><init>(Lorg/eclipse/jetty/server/ssl/SslSocketConnector;Ljava/net/Socket;)V

    .line 112
    invoke-virtual {v0}, Lorg/eclipse/jetty/server/bio/SocketConnector$ConnectorEndPoint;->dispatch()V

    return-void
.end method

.method protected configure(Ljava/net/Socket;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 120
    invoke-super {p0, p1}, Lorg/eclipse/jetty/server/bio/SocketConnector;->configure(Ljava/net/Socket;)V

    return-void
.end method

.method public customize(Lorg/eclipse/jetty/io/EndPoint;Lorg/eclipse/jetty/server/Request;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 147
    invoke-super {p0, p1, p2}, Lorg/eclipse/jetty/server/bio/SocketConnector;->customize(Lorg/eclipse/jetty/io/EndPoint;Lorg/eclipse/jetty/server/Request;)V

    const-string v0, "https"

    .line 148
    invoke-virtual {p2, v0}, Lorg/eclipse/jetty/server/Request;->setScheme(Ljava/lang/String;)V

    .line 150
    move-object v0, p1

    check-cast v0, Lorg/eclipse/jetty/io/bio/SocketEndPoint;

    .line 151
    invoke-virtual {v0}, Lorg/eclipse/jetty/io/bio/SocketEndPoint;->getTransport()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/SSLSocket;

    .line 152
    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    .line 154
    invoke-static {v0, p1, p2}, Lorg/eclipse/jetty/server/ssl/SslCertificates;->customize(Ljavax/net/ssl/SSLSession;Lorg/eclipse/jetty/io/EndPoint;Lorg/eclipse/jetty/server/Request;)V

    return-void
.end method

.method protected doStart()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 361
    iget-object v0, p0, Lorg/eclipse/jetty/server/ssl/SslSocketConnector;->_sslContextFactory:Lorg/eclipse/jetty/util/ssl/SslContextFactory;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->checkKeyStore()V

    .line 362
    iget-object v0, p0, Lorg/eclipse/jetty/server/ssl/SslSocketConnector;->_sslContextFactory:Lorg/eclipse/jetty/util/ssl/SslContextFactory;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->start()V

    .line 364
    invoke-super {p0}, Lorg/eclipse/jetty/server/bio/SocketConnector;->doStart()V

    return-void
.end method

.method protected doStop()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 374
    iget-object v0, p0, Lorg/eclipse/jetty/server/ssl/SslSocketConnector;->_sslContextFactory:Lorg/eclipse/jetty/util/ssl/SslContextFactory;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->stop()V

    .line 376
    invoke-super {p0}, Lorg/eclipse/jetty/server/bio/SocketConnector;->doStop()V

    return-void
.end method

.method public getAlgorithm()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 697
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getExcludeCipherSuites()[Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 164
    iget-object v0, p0, Lorg/eclipse/jetty/server/ssl/SslSocketConnector;->_sslContextFactory:Lorg/eclipse/jetty/util/ssl/SslContextFactory;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->getExcludeCipherSuites()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHandshakeTimeout()I
    .locals 1

    .line 614
    iget v0, p0, Lorg/eclipse/jetty/server/ssl/SslSocketConnector;->_handshakeTimeout:I

    return v0
.end method

.method public getIncludeCipherSuites()[Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 175
    iget-object v0, p0, Lorg/eclipse/jetty/server/ssl/SslSocketConnector;->_sslContextFactory:Lorg/eclipse/jetty/util/ssl/SslContextFactory;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->getIncludeCipherSuites()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getKeystore()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 186
    iget-object v0, p0, Lorg/eclipse/jetty/server/ssl/SslSocketConnector;->_sslContextFactory:Lorg/eclipse/jetty/util/ssl/SslContextFactory;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->getKeyStorePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getKeystoreType()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 197
    iget-object v0, p0, Lorg/eclipse/jetty/server/ssl/SslSocketConnector;->_sslContextFactory:Lorg/eclipse/jetty/util/ssl/SslContextFactory;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->getKeyStoreType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNeedClientAuth()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 208
    iget-object v0, p0, Lorg/eclipse/jetty/server/ssl/SslSocketConnector;->_sslContextFactory:Lorg/eclipse/jetty/util/ssl/SslContextFactory;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->getNeedClientAuth()Z

    move-result v0

    return v0
.end method

.method public getProtocol()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 219
    iget-object v0, p0, Lorg/eclipse/jetty/server/ssl/SslSocketConnector;->_sslContextFactory:Lorg/eclipse/jetty/util/ssl/SslContextFactory;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->getProtocol()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProvider()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 229
    iget-object v0, p0, Lorg/eclipse/jetty/server/ssl/SslSocketConnector;->_sslContextFactory:Lorg/eclipse/jetty/util/ssl/SslContextFactory;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->getProvider()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSecureRandomAlgorithm()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 240
    iget-object v0, p0, Lorg/eclipse/jetty/server/ssl/SslSocketConnector;->_sslContextFactory:Lorg/eclipse/jetty/util/ssl/SslContextFactory;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->getSecureRandomAlgorithm()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSslContext()Ljavax/net/ssl/SSLContext;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 581
    iget-object v0, p0, Lorg/eclipse/jetty/server/ssl/SslSocketConnector;->_sslContextFactory:Lorg/eclipse/jetty/util/ssl/SslContextFactory;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->getSslContext()Ljavax/net/ssl/SSLContext;

    move-result-object v0

    return-object v0
.end method

.method public getSslContextFactory()Lorg/eclipse/jetty/util/ssl/SslContextFactory;
    .locals 1

    .line 283
    iget-object v0, p0, Lorg/eclipse/jetty/server/ssl/SslSocketConnector;->_sslContextFactory:Lorg/eclipse/jetty/util/ssl/SslContextFactory;

    return-object v0
.end method

.method public getSslKeyManagerFactoryAlgorithm()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 251
    iget-object v0, p0, Lorg/eclipse/jetty/server/ssl/SslSocketConnector;->_sslContextFactory:Lorg/eclipse/jetty/util/ssl/SslContextFactory;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->getSslKeyManagerFactoryAlgorithm()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSslTrustManagerFactoryAlgorithm()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 262
    iget-object v0, p0, Lorg/eclipse/jetty/server/ssl/SslSocketConnector;->_sslContextFactory:Lorg/eclipse/jetty/util/ssl/SslContextFactory;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->getTrustManagerFactoryAlgorithm()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTruststore()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 273
    iget-object v0, p0, Lorg/eclipse/jetty/server/ssl/SslSocketConnector;->_sslContextFactory:Lorg/eclipse/jetty/util/ssl/SslContextFactory;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->getTrustStore()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTruststoreType()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 294
    iget-object v0, p0, Lorg/eclipse/jetty/server/ssl/SslSocketConnector;->_sslContextFactory:Lorg/eclipse/jetty/util/ssl/SslContextFactory;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->getTrustStoreType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWantClientAuth()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 305
    iget-object v0, p0, Lorg/eclipse/jetty/server/ssl/SslSocketConnector;->_sslContextFactory:Lorg/eclipse/jetty/util/ssl/SslContextFactory;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->getWantClientAuth()Z

    move-result v0

    return v0
.end method

.method public isAllowRenegotiate()Z
    .locals 1

    .line 87
    iget-object v0, p0, Lorg/eclipse/jetty/server/ssl/SslSocketConnector;->_sslContextFactory:Lorg/eclipse/jetty/util/ssl/SslContextFactory;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->isAllowRenegotiate()Z

    move-result v0

    return v0
.end method

.method public isConfidential(Lorg/eclipse/jetty/server/Request;)Z
    .locals 1

    .line 319
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/ssl/SslSocketConnector;->getConfidentialPort()I

    move-result v0

    if-eqz v0, :cond_1

    .line 320
    invoke-virtual {p1}, Lorg/eclipse/jetty/server/Request;->getServerPort()I

    move-result p1

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public isIntegral(Lorg/eclipse/jetty/server/Request;)Z
    .locals 1

    .line 334
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/ssl/SslSocketConnector;->getIntegralPort()I

    move-result v0

    if-eqz v0, :cond_1

    .line 335
    invoke-virtual {p1}, Lorg/eclipse/jetty/server/Request;->getServerPort()I

    move-result p1

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method protected newServerSocket(Ljava/lang/String;II)Ljava/net/ServerSocket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 393
    iget-object v0, p0, Lorg/eclipse/jetty/server/ssl/SslSocketConnector;->_sslContextFactory:Lorg/eclipse/jetty/util/ssl/SslContextFactory;

    invoke-virtual {v0, p1, p2, p3}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->newSslServerSocket(Ljava/lang/String;II)Ljavax/net/ssl/SSLServerSocket;

    move-result-object p1

    return-object p1
.end method

.method public open()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 342
    iget-object v0, p0, Lorg/eclipse/jetty/server/ssl/SslSocketConnector;->_sslContextFactory:Lorg/eclipse/jetty/util/ssl/SslContextFactory;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->checkKeyStore()V

    .line 345
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/ssl/SslSocketConnector;->_sslContextFactory:Lorg/eclipse/jetty/util/ssl/SslContextFactory;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 351
    invoke-super {p0}, Lorg/eclipse/jetty/server/bio/SocketConnector;->open()V

    return-void

    :catch_0
    move-exception v0

    .line 349
    new-instance v1, Lorg/eclipse/jetty/io/RuntimeIOException;

    invoke-direct {v1, v0}, Lorg/eclipse/jetty/io/RuntimeIOException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setAlgorithm(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 710
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public setAllowRenegotiate(Z)V
    .locals 1

    .line 100
    iget-object v0, p0, Lorg/eclipse/jetty/server/ssl/SslSocketConnector;->_sslContextFactory:Lorg/eclipse/jetty/util/ssl/SslContextFactory;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->setAllowRenegotiate(Z)V

    return-void
.end method

.method public setExcludeCipherSuites([Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 404
    iget-object v0, p0, Lorg/eclipse/jetty/server/ssl/SslSocketConnector;->_sslContextFactory:Lorg/eclipse/jetty/util/ssl/SslContextFactory;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->setExcludeCipherSuites([Ljava/lang/String;)V

    return-void
.end method

.method public setHandshakeTimeout(I)V
    .locals 0

    .line 607
    iput p1, p0, Lorg/eclipse/jetty/server/ssl/SslSocketConnector;->_handshakeTimeout:I

    return-void
.end method

.method public setIncludeCipherSuites([Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 415
    iget-object v0, p0, Lorg/eclipse/jetty/server/ssl/SslSocketConnector;->_sslContextFactory:Lorg/eclipse/jetty/util/ssl/SslContextFactory;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->setIncludeCipherSuites([Ljava/lang/String;)V

    return-void
.end method

.method public setKeyPassword(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 426
    iget-object v0, p0, Lorg/eclipse/jetty/server/ssl/SslSocketConnector;->_sslContextFactory:Lorg/eclipse/jetty/util/ssl/SslContextFactory;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->setKeyManagerPassword(Ljava/lang/String;)V

    return-void
.end method

.method public setKeystore(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 437
    iget-object v0, p0, Lorg/eclipse/jetty/server/ssl/SslSocketConnector;->_sslContextFactory:Lorg/eclipse/jetty/util/ssl/SslContextFactory;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->setKeyStorePath(Ljava/lang/String;)V

    return-void
.end method

.method public setKeystoreType(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 448
    iget-object v0, p0, Lorg/eclipse/jetty/server/ssl/SslSocketConnector;->_sslContextFactory:Lorg/eclipse/jetty/util/ssl/SslContextFactory;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->setKeyStoreType(Ljava/lang/String;)V

    return-void
.end method

.method public setNeedClientAuth(Z)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 461
    iget-object v0, p0, Lorg/eclipse/jetty/server/ssl/SslSocketConnector;->_sslContextFactory:Lorg/eclipse/jetty/util/ssl/SslContextFactory;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->setNeedClientAuth(Z)V

    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 472
    iget-object v0, p0, Lorg/eclipse/jetty/server/ssl/SslSocketConnector;->_sslContextFactory:Lorg/eclipse/jetty/util/ssl/SslContextFactory;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->setKeyStorePassword(Ljava/lang/String;)V

    return-void
.end method

.method public setProtocol(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 494
    iget-object v0, p0, Lorg/eclipse/jetty/server/ssl/SslSocketConnector;->_sslContextFactory:Lorg/eclipse/jetty/util/ssl/SslContextFactory;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->setProtocol(Ljava/lang/String;)V

    return-void
.end method

.method public setProvider(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 504
    iget-object v0, p0, Lorg/eclipse/jetty/server/ssl/SslSocketConnector;->_sslContextFactory:Lorg/eclipse/jetty/util/ssl/SslContextFactory;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->setProvider(Ljava/lang/String;)V

    return-void
.end method

.method public setSecureRandomAlgorithm(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 515
    iget-object v0, p0, Lorg/eclipse/jetty/server/ssl/SslSocketConnector;->_sslContextFactory:Lorg/eclipse/jetty/util/ssl/SslContextFactory;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->setSecureRandomAlgorithm(Ljava/lang/String;)V

    return-void
.end method

.method public setSslContext(Ljavax/net/ssl/SSLContext;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 570
    iget-object v0, p0, Lorg/eclipse/jetty/server/ssl/SslSocketConnector;->_sslContextFactory:Lorg/eclipse/jetty/util/ssl/SslContextFactory;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->setSslContext(Ljavax/net/ssl/SSLContext;)V

    return-void
.end method

.method public setSslKeyManagerFactoryAlgorithm(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 526
    iget-object v0, p0, Lorg/eclipse/jetty/server/ssl/SslSocketConnector;->_sslContextFactory:Lorg/eclipse/jetty/util/ssl/SslContextFactory;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->setSslKeyManagerFactoryAlgorithm(Ljava/lang/String;)V

    return-void
.end method

.method public setSslTrustManagerFactoryAlgorithm(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 537
    iget-object v0, p0, Lorg/eclipse/jetty/server/ssl/SslSocketConnector;->_sslContextFactory:Lorg/eclipse/jetty/util/ssl/SslContextFactory;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->setTrustManagerFactoryAlgorithm(Ljava/lang/String;)V

    return-void
.end method

.method public setTrustPassword(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 483
    iget-object v0, p0, Lorg/eclipse/jetty/server/ssl/SslSocketConnector;->_sslContextFactory:Lorg/eclipse/jetty/util/ssl/SslContextFactory;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->setTrustStorePassword(Ljava/lang/String;)V

    return-void
.end method

.method public setTruststore(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 548
    iget-object v0, p0, Lorg/eclipse/jetty/server/ssl/SslSocketConnector;->_sslContextFactory:Lorg/eclipse/jetty/util/ssl/SslContextFactory;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->setTrustStore(Ljava/lang/String;)V

    return-void
.end method

.method public setTruststoreType(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 559
    iget-object v0, p0, Lorg/eclipse/jetty/server/ssl/SslSocketConnector;->_sslContextFactory:Lorg/eclipse/jetty/util/ssl/SslContextFactory;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->setTrustStoreType(Ljava/lang/String;)V

    return-void
.end method

.method public setWantClientAuth(Z)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 596
    iget-object v0, p0, Lorg/eclipse/jetty/server/ssl/SslSocketConnector;->_sslContextFactory:Lorg/eclipse/jetty/util/ssl/SslContextFactory;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->setWantClientAuth(Z)V

    return-void
.end method
