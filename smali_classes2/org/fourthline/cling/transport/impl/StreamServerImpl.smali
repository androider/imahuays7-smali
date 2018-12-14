.class public Lorg/fourthline/cling/transport/impl/StreamServerImpl;
.super Ljava/lang/Object;
.source "StreamServerImpl.java"

# interfaces
.implements Lorg/fourthline/cling/transport/spi/StreamServer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/fourthline/cling/transport/impl/StreamServerImpl$HttpServerConnection;,
        Lorg/fourthline/cling/transport/impl/StreamServerImpl$RequestHttpHandler;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/fourthline/cling/transport/spi/StreamServer<",
        "Lorg/fourthline/cling/transport/impl/StreamServerConfigurationImpl;",
        ">;"
    }
.end annotation


# static fields
.field private static log:Ljava/util/logging/Logger;


# instance fields
.field protected final configuration:Lorg/fourthline/cling/transport/impl/StreamServerConfigurationImpl;

.field protected server:Lcom/sun/net/httpserver/HttpServer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 50
    const-class v0, Lorg/fourthline/cling/transport/spi/StreamServer;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/fourthline/cling/transport/impl/StreamServerImpl;->log:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/transport/impl/StreamServerConfigurationImpl;)V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lorg/fourthline/cling/transport/impl/StreamServerImpl;->configuration:Lorg/fourthline/cling/transport/impl/StreamServerConfigurationImpl;

    return-void
.end method

.method static synthetic access$000()Ljava/util/logging/Logger;
    .locals 1

    .line 48
    sget-object v0, Lorg/fourthline/cling/transport/impl/StreamServerImpl;->log:Ljava/util/logging/Logger;

    return-object v0
.end method


# virtual methods
.method public getConfiguration()Lorg/fourthline/cling/transport/impl/StreamServerConfigurationImpl;
    .locals 1

    .line 78
    iget-object v0, p0, Lorg/fourthline/cling/transport/impl/StreamServerImpl;->configuration:Lorg/fourthline/cling/transport/impl/StreamServerConfigurationImpl;

    return-object v0
.end method

.method public bridge synthetic getConfiguration()Lorg/fourthline/cling/transport/spi/StreamServerConfiguration;
    .locals 1

    .line 48
    invoke-virtual {p0}, Lorg/fourthline/cling/transport/impl/StreamServerImpl;->getConfiguration()Lorg/fourthline/cling/transport/impl/StreamServerConfigurationImpl;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getPort()I
    .locals 1

    monitor-enter p0

    .line 74
    :try_start_0
    iget-object v0, p0, Lorg/fourthline/cling/transport/impl/StreamServerImpl;->server:Lcom/sun/net/httpserver/HttpServer;

    invoke-virtual {v0}, Lcom/sun/net/httpserver/HttpServer;->getAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized init(Ljava/net/InetAddress;Lorg/fourthline/cling/transport/Router;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/transport/spi/InitializationException;
        }
    .end annotation

    monitor-enter p0

    .line 61
    :try_start_0
    new-instance v0, Ljava/net/InetSocketAddress;

    iget-object v1, p0, Lorg/fourthline/cling/transport/impl/StreamServerImpl;->configuration:Lorg/fourthline/cling/transport/impl/StreamServerConfigurationImpl;

    invoke-virtual {v1}, Lorg/fourthline/cling/transport/impl/StreamServerConfigurationImpl;->getListenPort()I

    move-result v1

    invoke-direct {v0, p1, v1}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 63
    iget-object p1, p0, Lorg/fourthline/cling/transport/impl/StreamServerImpl;->configuration:Lorg/fourthline/cling/transport/impl/StreamServerConfigurationImpl;

    invoke-virtual {p1}, Lorg/fourthline/cling/transport/impl/StreamServerConfigurationImpl;->getTcpConnectionBacklog()I

    move-result p1

    invoke-static {v0, p1}, Lcom/sun/net/httpserver/HttpServer;->create(Ljava/net/InetSocketAddress;I)Lcom/sun/net/httpserver/HttpServer;

    move-result-object p1

    iput-object p1, p0, Lorg/fourthline/cling/transport/impl/StreamServerImpl;->server:Lcom/sun/net/httpserver/HttpServer;

    .line 64
    iget-object p1, p0, Lorg/fourthline/cling/transport/impl/StreamServerImpl;->server:Lcom/sun/net/httpserver/HttpServer;

    const-string v0, "/"

    new-instance v1, Lorg/fourthline/cling/transport/impl/StreamServerImpl$RequestHttpHandler;

    invoke-direct {v1, p0, p2}, Lorg/fourthline/cling/transport/impl/StreamServerImpl$RequestHttpHandler;-><init>(Lorg/fourthline/cling/transport/impl/StreamServerImpl;Lorg/fourthline/cling/transport/Router;)V

    invoke-virtual {p1, v0, v1}, Lcom/sun/net/httpserver/HttpServer;->createContext(Ljava/lang/String;Lcom/sun/net/httpserver/HttpHandler;)Lcom/sun/net/httpserver/HttpContext;

    .line 66
    sget-object p1, Lorg/fourthline/cling/transport/impl/StreamServerImpl;->log:Ljava/util/logging/Logger;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Created server (for receiving TCP streams) on: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/fourthline/cling/transport/impl/StreamServerImpl;->server:Lcom/sun/net/httpserver/HttpServer;

    invoke-virtual {v0}, Lcom/sun/net/httpserver/HttpServer;->getAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 69
    :try_start_1
    new-instance p2, Lorg/fourthline/cling/transport/spi/InitializationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not initialize "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lorg/fourthline/cling/transport/spi/InitializationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 60
    :goto_0
    monitor-exit p0

    throw p1
.end method

.method protected isConnectionOpen(Lcom/sun/net/httpserver/HttpExchange;)Z
    .locals 1

    .line 123
    sget-object p1, Lorg/fourthline/cling/transport/impl/StreamServerImpl;->log:Ljava/util/logging/Logger;

    const-string v0, "Can\'t check client connection, socket access impossible on JDK webserver!"

    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method public declared-synchronized run()V
    .locals 2

    monitor-enter p0

    .line 82
    :try_start_0
    sget-object v0, Lorg/fourthline/cling/transport/impl/StreamServerImpl;->log:Ljava/util/logging/Logger;

    const-string v1, "Starting StreamServer..."

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lorg/fourthline/cling/transport/impl/StreamServerImpl;->server:Lcom/sun/net/httpserver/HttpServer;

    invoke-virtual {v0}, Lcom/sun/net/httpserver/HttpServer;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 81
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stop()V
    .locals 2

    monitor-enter p0

    .line 88
    :try_start_0
    sget-object v0, Lorg/fourthline/cling/transport/impl/StreamServerImpl;->log:Ljava/util/logging/Logger;

    const-string v1, "Stopping StreamServer..."

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Lorg/fourthline/cling/transport/impl/StreamServerImpl;->server:Lcom/sun/net/httpserver/HttpServer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/fourthline/cling/transport/impl/StreamServerImpl;->server:Lcom/sun/net/httpserver/HttpServer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sun/net/httpserver/HttpServer;->stop(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 87
    monitor-exit p0

    throw v0
.end method
