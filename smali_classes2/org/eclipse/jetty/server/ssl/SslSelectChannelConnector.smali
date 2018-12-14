.class public Lorg/eclipse/jetty/server/ssl/SslSelectChannelConnector;
.super Lorg/eclipse/jetty/server/nio/SelectChannelConnector;
.source "SslSelectChannelConnector.java"

# interfaces
.implements Lorg/eclipse/jetty/server/ssl/SslConnector;


# instance fields
.field private _sslBuffers:Lorg/eclipse/jetty/io/Buffers;

.field private final _sslContextFactory:Lorg/eclipse/jetty/util/ssl/SslContextFactory;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 58
    new-instance v0, Lorg/eclipse/jetty/util/ssl/SslContextFactory;

    sget-object v1, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->DEFAULT_KEYSTORE_PATH:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/eclipse/jetty/server/ssl/SslSelectChannelConnector;-><init>(Lorg/eclipse/jetty/util/ssl/SslContextFactory;)V

    const/16 v0, 0x7530

    .line 59
    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/server/ssl/SslSelectChannelConnector;->setSoLingerTime(I)V

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jetty/util/ssl/SslContextFactory;)V
    .locals 0

    .line 69
    invoke-direct {p0}, Lorg/eclipse/jetty/server/nio/SelectChannelConnector;-><init>()V

    .line 70
    iput-object p1, p0, Lorg/eclipse/jetty/server/ssl/SslSelectChannelConnector;->_sslContextFactory:Lorg/eclipse/jetty/util/ssl/SslContextFactory;

    .line 71
    iget-object p1, p0, Lorg/eclipse/jetty/server/ssl/SslSelectChannelConnector;->_sslContextFactory:Lorg/eclipse/jetty/util/ssl/SslContextFactory;

    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/server/ssl/SslSelectChannelConnector;->addBean(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    .line 72
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/server/ssl/SslSelectChannelConnector;->setUseDirectBuffers(Z)V

    const/16 p1, 0x7530

    .line 73
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/server/ssl/SslSelectChannelConnector;->setSoLingerTime(I)V

    return-void
.end method


# virtual methods
.method protected createSSLEngine(Ljava/nio/channels/SocketChannel;)Ljavax/net/ssl/SSLEngine;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 591
    invoke-virtual {p1}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    .line 592
    invoke-virtual {p1}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object p1

    invoke-virtual {p1}, Ljava/net/Socket;->getPort()I

    move-result p1

    .line 593
    iget-object v1, p0, Lorg/eclipse/jetty/server/ssl/SslSelectChannelConnector;->_sslContextFactory:Lorg/eclipse/jetty/util/ssl/SslContextFactory;

    invoke-virtual {v1, v0, p1}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->newSslEngine(Ljava/lang/String;I)Ljavax/net/ssl/SSLEngine;

    move-result-object p1

    goto :goto_0

    .line 597
    :cond_0
    iget-object p1, p0, Lorg/eclipse/jetty/server/ssl/SslSelectChannelConnector;->_sslContextFactory:Lorg/eclipse/jetty/util/ssl/SslContextFactory;

    invoke-virtual {p1}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->newSslEngine()Ljavax/net/ssl/SSLEngine;

    move-result-object p1

    :goto_0
    const/4 v0, 0x0

    .line 600
    invoke-virtual {p1, v0}, Ljavax/net/ssl/SSLEngine;->setUseClientMode(Z)V

    return-object p1
.end method

.method public customize(Lorg/eclipse/jetty/io/EndPoint;Lorg/eclipse/jetty/server/Request;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "https"

    .line 105
    invoke-virtual {p2, v0}, Lorg/eclipse/jetty/server/Request;->setScheme(Ljava/lang/String;)V

    .line 106
    invoke-super {p0, p1, p2}, Lorg/eclipse/jetty/server/nio/SelectChannelConnector;->customize(Lorg/eclipse/jetty/io/EndPoint;Lorg/eclipse/jetty/server/Request;)V

    .line 108
    move-object v0, p1

    check-cast v0, Lorg/eclipse/jetty/io/nio/SslConnection$SslEndPoint;

    .line 109
    invoke-virtual {v0}, Lorg/eclipse/jetty/io/nio/SslConnection$SslEndPoint;->getSslEngine()Ljavax/net/ssl/SSLEngine;

    move-result-object v0

    .line 110
    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    .line 112
    invoke-static {v0, p1, p2}, Lorg/eclipse/jetty/server/ssl/SslCertificates;->customize(Ljavax/net/ssl/SSLSession;Lorg/eclipse/jetty/io/EndPoint;Lorg/eclipse/jetty/server/Request;)V

    return-void
.end method

.method protected doStart()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 611
    iget-object v0, p0, Lorg/eclipse/jetty/server/ssl/SslSelectChannelConnector;->_sslContextFactory:Lorg/eclipse/jetty/util/ssl/SslContextFactory;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->checkKeyStore()V

    .line 612
    iget-object v0, p0, Lorg/eclipse/jetty/server/ssl/SslSelectChannelConnector;->_sslContextFactory:Lorg/eclipse/jetty/util/ssl/SslContextFactory;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->start()V

    .line 614
    iget-object v0, p0, Lorg/eclipse/jetty/server/ssl/SslSelectChannelConnector;->_sslContextFactory:Lorg/eclipse/jetty/util/ssl/SslContextFactory;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->newSslEngine()Ljavax/net/ssl/SSLEngine;

    move-result-object v0

    const/4 v1, 0x0

    .line 616
    invoke-virtual {v0, v1}, Ljavax/net/ssl/SSLEngine;->setUseClientMode(Z)V

    .line 618
    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    .line 620
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/ssl/SslSelectChannelConnector;->getUseDirectBuffers()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lorg/eclipse/jetty/io/Buffers$Type;->DIRECT:Lorg/eclipse/jetty/io/Buffers$Type;

    :goto_0
    move-object v2, v1

    goto :goto_1

    :cond_0
    sget-object v1, Lorg/eclipse/jetty/io/Buffers$Type;->INDIRECT:Lorg/eclipse/jetty/io/Buffers$Type;

    goto :goto_0

    :goto_1
    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->getApplicationBufferSize()I

    move-result v3

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/ssl/SslSelectChannelConnector;->getUseDirectBuffers()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lorg/eclipse/jetty/io/Buffers$Type;->DIRECT:Lorg/eclipse/jetty/io/Buffers$Type;

    :goto_2
    move-object v4, v1

    goto :goto_3

    :cond_1
    sget-object v1, Lorg/eclipse/jetty/io/Buffers$Type;->INDIRECT:Lorg/eclipse/jetty/io/Buffers$Type;

    goto :goto_2

    :goto_3
    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->getApplicationBufferSize()I

    move-result v5

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/ssl/SslSelectChannelConnector;->getUseDirectBuffers()Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lorg/eclipse/jetty/io/Buffers$Type;->DIRECT:Lorg/eclipse/jetty/io/Buffers$Type;

    :goto_4
    move-object v6, v1

    goto :goto_5

    :cond_2
    sget-object v1, Lorg/eclipse/jetty/io/Buffers$Type;->INDIRECT:Lorg/eclipse/jetty/io/Buffers$Type;

    goto :goto_4

    :goto_5
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/ssl/SslSelectChannelConnector;->getMaxBuffers()I

    move-result v7

    invoke-static/range {v2 .. v7}, Lorg/eclipse/jetty/io/BuffersFactory;->newBuffers(Lorg/eclipse/jetty/io/Buffers$Type;ILorg/eclipse/jetty/io/Buffers$Type;ILorg/eclipse/jetty/io/Buffers$Type;I)Lorg/eclipse/jetty/io/Buffers;

    move-result-object v1

    iput-object v1, p0, Lorg/eclipse/jetty/server/ssl/SslSelectChannelConnector;->_sslBuffers:Lorg/eclipse/jetty/io/Buffers;

    .line 626
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/ssl/SslSelectChannelConnector;->getRequestHeaderSize()I

    move-result v1

    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->getApplicationBufferSize()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 627
    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->getApplicationBufferSize()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/eclipse/jetty/server/ssl/SslSelectChannelConnector;->setRequestHeaderSize(I)V

    .line 628
    :cond_3
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/ssl/SslSelectChannelConnector;->getRequestBufferSize()I

    move-result v1

    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->getApplicationBufferSize()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 629
    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->getApplicationBufferSize()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/server/ssl/SslSelectChannelConnector;->setRequestBufferSize(I)V

    .line 631
    :cond_4
    invoke-super {p0}, Lorg/eclipse/jetty/server/nio/SelectChannelConnector;->doStart()V

    return-void
.end method

.method protected doStop()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    .line 641
    iput-object v0, p0, Lorg/eclipse/jetty/server/ssl/SslSelectChannelConnector;->_sslBuffers:Lorg/eclipse/jetty/io/Buffers;

    .line 642
    invoke-super {p0}, Lorg/eclipse/jetty/server/nio/SelectChannelConnector;->doStop()V

    return-void
.end method

.method public getAlgorithm()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 229
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getExcludeCipherSuites()[Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 150
    iget-object v0, p0, Lorg/eclipse/jetty/server/ssl/SslSelectChannelConnector;->_sslContextFactory:Lorg/eclipse/jetty/util/ssl/SslContextFactory;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->getExcludeCipherSuites()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIncludeCipherSuites()[Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 172
    iget-object v0, p0, Lorg/eclipse/jetty/server/ssl/SslSelectChannelConnector;->_sslContextFactory:Lorg/eclipse/jetty/util/ssl/SslContextFactory;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->getIncludeCipherSuites()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getKeystore()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 286
    iget-object v0, p0, Lorg/eclipse/jetty/server/ssl/SslSelectChannelConnector;->_sslContextFactory:Lorg/eclipse/jetty/util/ssl/SslContextFactory;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->getKeyStorePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getKeystoreType()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 297
    iget-object v0, p0, Lorg/eclipse/jetty/server/ssl/SslSelectChannelConnector;->_sslContextFactory:Lorg/eclipse/jetty/util/ssl/SslContextFactory;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->getKeyStoreType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNeedClientAuth()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 308
    iget-object v0, p0, Lorg/eclipse/jetty/server/ssl/SslSelectChannelConnector;->_sslContextFactory:Lorg/eclipse/jetty/util/ssl/SslContextFactory;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->getNeedClientAuth()Z

    move-result v0

    return v0
.end method

.method public getProtocol()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 253
    iget-object v0, p0, Lorg/eclipse/jetty/server/ssl/SslSelectChannelConnector;->_sslContextFactory:Lorg/eclipse/jetty/util/ssl/SslContextFactory;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->getProtocol()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProvider()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 363
    iget-object v0, p0, Lorg/eclipse/jetty/server/ssl/SslSelectChannelConnector;->_sslContextFactory:Lorg/eclipse/jetty/util/ssl/SslContextFactory;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->getProvider()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSecureRandomAlgorithm()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 374
    iget-object v0, p0, Lorg/eclipse/jetty/server/ssl/SslSelectChannelConnector;->_sslContextFactory:Lorg/eclipse/jetty/util/ssl/SslContextFactory;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->getSecureRandomAlgorithm()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSslBuffers()Lorg/eclipse/jetty/io/Buffers;
    .locals 1

    .line 651
    iget-object v0, p0, Lorg/eclipse/jetty/server/ssl/SslSelectChannelConnector;->_sslBuffers:Lorg/eclipse/jetty/io/Buffers;

    return-object v0
.end method

.method public getSslContext()Ljavax/net/ssl/SSLContext;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 506
    iget-object v0, p0, Lorg/eclipse/jetty/server/ssl/SslSelectChannelConnector;->_sslContextFactory:Lorg/eclipse/jetty/util/ssl/SslContextFactory;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->getSslContext()Ljavax/net/ssl/SSLContext;

    move-result-object v0

    return-object v0
.end method

.method public getSslContextFactory()Lorg/eclipse/jetty/util/ssl/SslContextFactory;
    .locals 1

    .line 515
    iget-object v0, p0, Lorg/eclipse/jetty/server/ssl/SslSelectChannelConnector;->_sslContextFactory:Lorg/eclipse/jetty/util/ssl/SslContextFactory;

    return-object v0
.end method

.method public getSslKeyManagerFactoryAlgorithm()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 385
    iget-object v0, p0, Lorg/eclipse/jetty/server/ssl/SslSelectChannelConnector;->_sslContextFactory:Lorg/eclipse/jetty/util/ssl/SslContextFactory;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->getSslKeyManagerFactoryAlgorithm()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSslTrustManagerFactoryAlgorithm()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 396
    iget-object v0, p0, Lorg/eclipse/jetty/server/ssl/SslSelectChannelConnector;->_sslContextFactory:Lorg/eclipse/jetty/util/ssl/SslContextFactory;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->getTrustManagerFactoryAlgorithm()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTruststore()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 407
    iget-object v0, p0, Lorg/eclipse/jetty/server/ssl/SslSelectChannelConnector;->_sslContextFactory:Lorg/eclipse/jetty/util/ssl/SslContextFactory;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->getTrustStore()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTruststoreType()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 418
    iget-object v0, p0, Lorg/eclipse/jetty/server/ssl/SslSelectChannelConnector;->_sslContextFactory:Lorg/eclipse/jetty/util/ssl/SslContextFactory;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->getTrustStoreType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWantClientAuth()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 319
    iget-object v0, p0, Lorg/eclipse/jetty/server/ssl/SslSelectChannelConnector;->_sslContextFactory:Lorg/eclipse/jetty/util/ssl/SslContextFactory;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->getWantClientAuth()Z

    move-result v0

    return v0
.end method

.method public isAllowRenegotiate()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 123
    iget-object v0, p0, Lorg/eclipse/jetty/server/ssl/SslSelectChannelConnector;->_sslContextFactory:Lorg/eclipse/jetty/util/ssl/SslContextFactory;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->isAllowRenegotiate()Z

    move-result v0

    return v0
.end method

.method public isConfidential(Lorg/eclipse/jetty/server/Request;)Z
    .locals 1

    .line 530
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/ssl/SslSelectChannelConnector;->getConfidentialPort()I

    move-result v0

    if-eqz v0, :cond_1

    .line 531
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

    .line 546
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/ssl/SslSelectChannelConnector;->getIntegralPort()I

    move-result v0

    if-eqz v0, :cond_1

    .line 547
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

.method protected newConnection(Ljava/nio/channels/SocketChannel;Lorg/eclipse/jetty/io/AsyncEndPoint;)Lorg/eclipse/jetty/io/nio/AsyncConnection;
    .locals 1

    .line 556
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/server/ssl/SslSelectChannelConnector;->createSSLEngine(Ljava/nio/channels/SocketChannel;)Ljavax/net/ssl/SSLEngine;

    move-result-object v0

    .line 557
    invoke-virtual {p0, p2, v0}, Lorg/eclipse/jetty/server/ssl/SslSelectChannelConnector;->newSslConnection(Lorg/eclipse/jetty/io/AsyncEndPoint;Ljavax/net/ssl/SSLEngine;)Lorg/eclipse/jetty/io/nio/SslConnection;

    move-result-object p2

    .line 558
    invoke-virtual {p2}, Lorg/eclipse/jetty/io/nio/SslConnection;->getSslEndPoint()Lorg/eclipse/jetty/io/AsyncEndPoint;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jetty/server/ssl/SslSelectChannelConnector;->newPlainConnection(Ljava/nio/channels/SocketChannel;Lorg/eclipse/jetty/io/AsyncEndPoint;)Lorg/eclipse/jetty/io/nio/AsyncConnection;

    move-result-object p1

    .line 559
    invoke-virtual {p2}, Lorg/eclipse/jetty/io/nio/SslConnection;->getSslEndPoint()Lorg/eclipse/jetty/io/AsyncEndPoint;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/eclipse/jetty/io/AsyncEndPoint;->setConnection(Lorg/eclipse/jetty/io/Connection;)V

    .line 560
    iget-object p1, p0, Lorg/eclipse/jetty/server/ssl/SslSelectChannelConnector;->_sslContextFactory:Lorg/eclipse/jetty/util/ssl/SslContextFactory;

    invoke-virtual {p1}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->isAllowRenegotiate()Z

    move-result p1

    invoke-virtual {p2, p1}, Lorg/eclipse/jetty/io/nio/SslConnection;->setAllowRenegotiate(Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :catch_0
    move-exception p1

    .line 565
    new-instance p2, Lorg/eclipse/jetty/io/RuntimeIOException;

    invoke-direct {p2, p1}, Lorg/eclipse/jetty/io/RuntimeIOException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method protected newPlainConnection(Ljava/nio/channels/SocketChannel;Lorg/eclipse/jetty/io/AsyncEndPoint;)Lorg/eclipse/jetty/io/nio/AsyncConnection;
    .locals 0

    .line 571
    invoke-super {p0, p1, p2}, Lorg/eclipse/jetty/server/nio/SelectChannelConnector;->newConnection(Ljava/nio/channels/SocketChannel;Lorg/eclipse/jetty/io/AsyncEndPoint;)Lorg/eclipse/jetty/io/nio/AsyncConnection;

    move-result-object p1

    return-object p1
.end method

.method protected newSslConnection(Lorg/eclipse/jetty/io/AsyncEndPoint;Ljavax/net/ssl/SSLEngine;)Lorg/eclipse/jetty/io/nio/SslConnection;
    .locals 1

    .line 576
    new-instance v0, Lorg/eclipse/jetty/io/nio/SslConnection;

    invoke-direct {v0, p2, p1}, Lorg/eclipse/jetty/io/nio/SslConnection;-><init>(Ljavax/net/ssl/SSLEngine;Lorg/eclipse/jetty/io/EndPoint;)V

    return-object v0
.end method

.method public setAlgorithm(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 242
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public setAllowRenegotiate(Z)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 139
    iget-object v0, p0, Lorg/eclipse/jetty/server/ssl/SslSelectChannelConnector;->_sslContextFactory:Lorg/eclipse/jetty/util/ssl/SslContextFactory;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->setAllowRenegotiate(Z)V

    return-void
.end method

.method public setExcludeCipherSuites([Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 161
    iget-object v0, p0, Lorg/eclipse/jetty/server/ssl/SslSelectChannelConnector;->_sslContextFactory:Lorg/eclipse/jetty/util/ssl/SslContextFactory;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->setExcludeCipherSuites([Ljava/lang/String;)V

    return-void
.end method

.method public setIncludeCipherSuites([Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 183
    iget-object v0, p0, Lorg/eclipse/jetty/server/ssl/SslSelectChannelConnector;->_sslContextFactory:Lorg/eclipse/jetty/util/ssl/SslContextFactory;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->setIncludeCipherSuites([Ljava/lang/String;)V

    return-void
.end method

.method public setKeyPassword(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 216
    iget-object v0, p0, Lorg/eclipse/jetty/server/ssl/SslSelectChannelConnector;->_sslContextFactory:Lorg/eclipse/jetty/util/ssl/SslContextFactory;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->setKeyManagerPassword(Ljava/lang/String;)V

    return-void
.end method

.method public setKeystore(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 275
    iget-object v0, p0, Lorg/eclipse/jetty/server/ssl/SslSelectChannelConnector;->_sslContextFactory:Lorg/eclipse/jetty/util/ssl/SslContextFactory;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->setKeyStorePath(Ljava/lang/String;)V

    return-void
.end method

.method public setKeystoreType(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 352
    iget-object v0, p0, Lorg/eclipse/jetty/server/ssl/SslSelectChannelConnector;->_sslContextFactory:Lorg/eclipse/jetty/util/ssl/SslContextFactory;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->setKeyStoreType(Ljava/lang/String;)V

    return-void
.end method

.method public setNeedClientAuth(Z)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 330
    iget-object v0, p0, Lorg/eclipse/jetty/server/ssl/SslSelectChannelConnector;->_sslContextFactory:Lorg/eclipse/jetty/util/ssl/SslContextFactory;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->setNeedClientAuth(Z)V

    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 194
    iget-object v0, p0, Lorg/eclipse/jetty/server/ssl/SslSelectChannelConnector;->_sslContextFactory:Lorg/eclipse/jetty/util/ssl/SslContextFactory;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->setKeyStorePassword(Ljava/lang/String;)V

    return-void
.end method

.method public setProtocol(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 264
    iget-object v0, p0, Lorg/eclipse/jetty/server/ssl/SslSelectChannelConnector;->_sslContextFactory:Lorg/eclipse/jetty/util/ssl/SslContextFactory;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->setProtocol(Ljava/lang/String;)V

    return-void
.end method

.method public setProvider(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 429
    iget-object v0, p0, Lorg/eclipse/jetty/server/ssl/SslSelectChannelConnector;->_sslContextFactory:Lorg/eclipse/jetty/util/ssl/SslContextFactory;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->setProvider(Ljava/lang/String;)V

    return-void
.end method

.method public setSecureRandomAlgorithm(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 440
    iget-object v0, p0, Lorg/eclipse/jetty/server/ssl/SslSelectChannelConnector;->_sslContextFactory:Lorg/eclipse/jetty/util/ssl/SslContextFactory;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->setSecureRandomAlgorithm(Ljava/lang/String;)V

    return-void
.end method

.method public setSslContext(Ljavax/net/ssl/SSLContext;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 495
    iget-object v0, p0, Lorg/eclipse/jetty/server/ssl/SslSelectChannelConnector;->_sslContextFactory:Lorg/eclipse/jetty/util/ssl/SslContextFactory;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->setSslContext(Ljavax/net/ssl/SSLContext;)V

    return-void
.end method

.method public setSslKeyManagerFactoryAlgorithm(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 451
    iget-object v0, p0, Lorg/eclipse/jetty/server/ssl/SslSelectChannelConnector;->_sslContextFactory:Lorg/eclipse/jetty/util/ssl/SslContextFactory;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->setSslKeyManagerFactoryAlgorithm(Ljava/lang/String;)V

    return-void
.end method

.method public setSslTrustManagerFactoryAlgorithm(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 462
    iget-object v0, p0, Lorg/eclipse/jetty/server/ssl/SslSelectChannelConnector;->_sslContextFactory:Lorg/eclipse/jetty/util/ssl/SslContextFactory;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->setTrustManagerFactoryAlgorithm(Ljava/lang/String;)V

    return-void
.end method

.method public setTrustPassword(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 205
    iget-object v0, p0, Lorg/eclipse/jetty/server/ssl/SslSelectChannelConnector;->_sslContextFactory:Lorg/eclipse/jetty/util/ssl/SslContextFactory;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->setTrustStorePassword(Ljava/lang/String;)V

    return-void
.end method

.method public setTruststore(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 473
    iget-object v0, p0, Lorg/eclipse/jetty/server/ssl/SslSelectChannelConnector;->_sslContextFactory:Lorg/eclipse/jetty/util/ssl/SslContextFactory;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->setTrustStore(Ljava/lang/String;)V

    return-void
.end method

.method public setTruststoreType(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 484
    iget-object v0, p0, Lorg/eclipse/jetty/server/ssl/SslSelectChannelConnector;->_sslContextFactory:Lorg/eclipse/jetty/util/ssl/SslContextFactory;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->setTrustStoreType(Ljava/lang/String;)V

    return-void
.end method

.method public setWantClientAuth(Z)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 341
    iget-object v0, p0, Lorg/eclipse/jetty/server/ssl/SslSelectChannelConnector;->_sslContextFactory:Lorg/eclipse/jetty/util/ssl/SslContextFactory;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->setWantClientAuth(Z)V

    return-void
.end method
