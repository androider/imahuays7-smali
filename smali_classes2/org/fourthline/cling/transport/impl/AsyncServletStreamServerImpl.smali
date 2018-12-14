.class public Lorg/fourthline/cling/transport/impl/AsyncServletStreamServerImpl;
.super Ljava/lang/Object;
.source "AsyncServletStreamServerImpl.java"

# interfaces
.implements Lorg/fourthline/cling/transport/spi/StreamServer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/fourthline/cling/transport/impl/AsyncServletStreamServerImpl$AsyncServletConnection;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/fourthline/cling/transport/spi/StreamServer<",
        "Lorg/fourthline/cling/transport/impl/AsyncServletStreamServerConfigurationImpl;",
        ">;"
    }
.end annotation


# static fields
.field private static final log:Ljava/util/logging/Logger;


# instance fields
.field protected final configuration:Lorg/fourthline/cling/transport/impl/AsyncServletStreamServerConfigurationImpl;

.field protected hostAddress:Ljava/lang/String;

.field protected localPort:I

.field private mCounter:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 45
    const-class v0, Lorg/fourthline/cling/transport/spi/StreamServer;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/fourthline/cling/transport/impl/AsyncServletStreamServerImpl;->log:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/transport/impl/AsyncServletStreamServerConfigurationImpl;)V
    .locals 1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 95
    iput v0, p0, Lorg/fourthline/cling/transport/impl/AsyncServletStreamServerImpl;->mCounter:I

    .line 52
    iput-object p1, p0, Lorg/fourthline/cling/transport/impl/AsyncServletStreamServerImpl;->configuration:Lorg/fourthline/cling/transport/impl/AsyncServletStreamServerConfigurationImpl;

    return-void
.end method

.method static synthetic access$008(Lorg/fourthline/cling/transport/impl/AsyncServletStreamServerImpl;)I
    .locals 2

    .line 43
    iget v0, p0, Lorg/fourthline/cling/transport/impl/AsyncServletStreamServerImpl;->mCounter:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/fourthline/cling/transport/impl/AsyncServletStreamServerImpl;->mCounter:I

    return v0
.end method

.method static synthetic access$100()Ljava/util/logging/Logger;
    .locals 1

    .line 43
    sget-object v0, Lorg/fourthline/cling/transport/impl/AsyncServletStreamServerImpl;->log:Ljava/util/logging/Logger;

    return-object v0
.end method


# virtual methods
.method protected createServlet(Lorg/fourthline/cling/transport/Router;)Ljavax/servlet/Servlet;
    .locals 1

    .line 98
    new-instance v0, Lorg/fourthline/cling/transport/impl/AsyncServletStreamServerImpl$1;

    invoke-direct {v0, p0, p1}, Lorg/fourthline/cling/transport/impl/AsyncServletStreamServerImpl$1;-><init>(Lorg/fourthline/cling/transport/impl/AsyncServletStreamServerImpl;Lorg/fourthline/cling/transport/Router;)V

    return-object v0
.end method

.method public getConfiguration()Lorg/fourthline/cling/transport/impl/AsyncServletStreamServerConfigurationImpl;
    .locals 1

    .line 56
    iget-object v0, p0, Lorg/fourthline/cling/transport/impl/AsyncServletStreamServerImpl;->configuration:Lorg/fourthline/cling/transport/impl/AsyncServletStreamServerConfigurationImpl;

    return-object v0
.end method

.method public bridge synthetic getConfiguration()Lorg/fourthline/cling/transport/spi/StreamServerConfiguration;
    .locals 1

    .line 43
    invoke-virtual {p0}, Lorg/fourthline/cling/transport/impl/AsyncServletStreamServerImpl;->getConfiguration()Lorg/fourthline/cling/transport/impl/AsyncServletStreamServerConfigurationImpl;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getPort()I
    .locals 1

    monitor-enter p0

    .line 84
    :try_start_0
    iget v0, p0, Lorg/fourthline/cling/transport/impl/AsyncServletStreamServerImpl;->localPort:I
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
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/transport/spi/InitializationException;
        }
    .end annotation

    monitor-enter p0

    .line 61
    :try_start_0
    sget-object v0, Lorg/fourthline/cling/transport/impl/AsyncServletStreamServerImpl;->log:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    sget-object v0, Lorg/fourthline/cling/transport/impl/AsyncServletStreamServerImpl;->log:Ljava/util/logging/Logger;

    const-string v1, "Setting executor service on servlet container adapter"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 63
    :cond_0
    invoke-virtual {p0}, Lorg/fourthline/cling/transport/impl/AsyncServletStreamServerImpl;->getConfiguration()Lorg/fourthline/cling/transport/impl/AsyncServletStreamServerConfigurationImpl;

    move-result-object v0

    invoke-virtual {v0}, Lorg/fourthline/cling/transport/impl/AsyncServletStreamServerConfigurationImpl;->getServletContainerAdapter()Lorg/fourthline/cling/transport/spi/ServletContainerAdapter;

    move-result-object v0

    .line 64
    invoke-interface {p2}, Lorg/fourthline/cling/transport/Router;->getConfiguration()Lorg/fourthline/cling/UpnpServiceConfiguration;

    move-result-object v1

    invoke-interface {v1}, Lorg/fourthline/cling/UpnpServiceConfiguration;->getStreamServerExecutorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    .line 63
    invoke-interface {v0, v1}, Lorg/fourthline/cling/transport/spi/ServletContainerAdapter;->setExecutorService(Ljava/util/concurrent/ExecutorService;)V

    .line 67
    sget-object v0, Lorg/fourthline/cling/transport/impl/AsyncServletStreamServerImpl;->log:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 68
    sget-object v0, Lorg/fourthline/cling/transport/impl/AsyncServletStreamServerImpl;->log:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Adding connector: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/fourthline/cling/transport/impl/AsyncServletStreamServerImpl;->getConfiguration()Lorg/fourthline/cling/transport/impl/AsyncServletStreamServerConfigurationImpl;

    move-result-object v2

    invoke-virtual {v2}, Lorg/fourthline/cling/transport/impl/AsyncServletStreamServerConfigurationImpl;->getListenPort()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 69
    :cond_1
    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/fourthline/cling/transport/impl/AsyncServletStreamServerImpl;->hostAddress:Ljava/lang/String;

    .line 70
    invoke-virtual {p0}, Lorg/fourthline/cling/transport/impl/AsyncServletStreamServerImpl;->getConfiguration()Lorg/fourthline/cling/transport/impl/AsyncServletStreamServerConfigurationImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/fourthline/cling/transport/impl/AsyncServletStreamServerConfigurationImpl;->getServletContainerAdapter()Lorg/fourthline/cling/transport/spi/ServletContainerAdapter;

    move-result-object p1

    iget-object v0, p0, Lorg/fourthline/cling/transport/impl/AsyncServletStreamServerImpl;->hostAddress:Ljava/lang/String;

    .line 72
    invoke-virtual {p0}, Lorg/fourthline/cling/transport/impl/AsyncServletStreamServerImpl;->getConfiguration()Lorg/fourthline/cling/transport/impl/AsyncServletStreamServerConfigurationImpl;

    move-result-object v1

    invoke-virtual {v1}, Lorg/fourthline/cling/transport/impl/AsyncServletStreamServerConfigurationImpl;->getListenPort()I

    move-result v1

    .line 70
    invoke-interface {p1, v0, v1}, Lorg/fourthline/cling/transport/spi/ServletContainerAdapter;->addConnector(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lorg/fourthline/cling/transport/impl/AsyncServletStreamServerImpl;->localPort:I

    .line 75
    invoke-interface {p2}, Lorg/fourthline/cling/transport/Router;->getConfiguration()Lorg/fourthline/cling/UpnpServiceConfiguration;

    move-result-object p1

    invoke-interface {p1}, Lorg/fourthline/cling/UpnpServiceConfiguration;->getNamespace()Lorg/fourthline/cling/model/Namespace;

    move-result-object p1

    invoke-virtual {p1}, Lorg/fourthline/cling/model/Namespace;->getBasePath()Ljava/net/URI;

    move-result-object p1

    invoke-virtual {p1}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object p1

    .line 76
    invoke-virtual {p0}, Lorg/fourthline/cling/transport/impl/AsyncServletStreamServerImpl;->getConfiguration()Lorg/fourthline/cling/transport/impl/AsyncServletStreamServerConfigurationImpl;

    move-result-object v0

    invoke-virtual {v0}, Lorg/fourthline/cling/transport/impl/AsyncServletStreamServerConfigurationImpl;->getServletContainerAdapter()Lorg/fourthline/cling/transport/spi/ServletContainerAdapter;

    move-result-object v0

    invoke-virtual {p0, p2}, Lorg/fourthline/cling/transport/impl/AsyncServletStreamServerImpl;->createServlet(Lorg/fourthline/cling/transport/Router;)Ljavax/servlet/Servlet;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Lorg/fourthline/cling/transport/spi/ServletContainerAdapter;->registerServlet(Ljava/lang/String;Ljavax/servlet/Servlet;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 79
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

.method protected isConnectionOpen(Ljavax/servlet/http/HttpServletRequest;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public run()V
    .locals 1

    .line 92
    invoke-virtual {p0}, Lorg/fourthline/cling/transport/impl/AsyncServletStreamServerImpl;->getConfiguration()Lorg/fourthline/cling/transport/impl/AsyncServletStreamServerConfigurationImpl;

    move-result-object v0

    invoke-virtual {v0}, Lorg/fourthline/cling/transport/impl/AsyncServletStreamServerConfigurationImpl;->getServletContainerAdapter()Lorg/fourthline/cling/transport/spi/ServletContainerAdapter;

    move-result-object v0

    invoke-interface {v0}, Lorg/fourthline/cling/transport/spi/ServletContainerAdapter;->startIfNotRunning()V

    return-void
.end method

.method public declared-synchronized stop()V
    .locals 3

    monitor-enter p0

    .line 88
    :try_start_0
    invoke-virtual {p0}, Lorg/fourthline/cling/transport/impl/AsyncServletStreamServerImpl;->getConfiguration()Lorg/fourthline/cling/transport/impl/AsyncServletStreamServerConfigurationImpl;

    move-result-object v0

    invoke-virtual {v0}, Lorg/fourthline/cling/transport/impl/AsyncServletStreamServerConfigurationImpl;->getServletContainerAdapter()Lorg/fourthline/cling/transport/spi/ServletContainerAdapter;

    move-result-object v0

    iget-object v1, p0, Lorg/fourthline/cling/transport/impl/AsyncServletStreamServerImpl;->hostAddress:Ljava/lang/String;

    iget v2, p0, Lorg/fourthline/cling/transport/impl/AsyncServletStreamServerImpl;->localPort:I

    invoke-interface {v0, v1, v2}, Lorg/fourthline/cling/transport/spi/ServletContainerAdapter;->removeConnector(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 87
    monitor-exit p0

    throw v0
.end method
