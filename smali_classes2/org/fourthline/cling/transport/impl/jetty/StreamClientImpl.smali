.class public Lorg/fourthline/cling/transport/impl/jetty/StreamClientImpl;
.super Lorg/fourthline/cling/transport/spi/AbstractStreamClient;
.source "StreamClientImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/fourthline/cling/transport/impl/jetty/StreamClientImpl$HttpContentExchange;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/fourthline/cling/transport/spi/AbstractStreamClient<",
        "Lorg/fourthline/cling/transport/impl/jetty/StreamClientConfigurationImpl;",
        "Lorg/fourthline/cling/transport/impl/jetty/StreamClientImpl$HttpContentExchange;",
        ">;"
    }
.end annotation


# static fields
.field private static final log:Ljava/util/logging/Logger;


# instance fields
.field protected final client:Lorg/eclipse/jetty/client/HttpClient;

.field protected final configuration:Lorg/fourthline/cling/transport/impl/jetty/StreamClientConfigurationImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 57
    const-class v0, Lorg/fourthline/cling/transport/spi/StreamClient;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/fourthline/cling/transport/impl/jetty/StreamClientImpl;->log:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/transport/impl/jetty/StreamClientConfigurationImpl;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/transport/spi/InitializationException;
        }
    .end annotation

    .line 62
    invoke-direct {p0}, Lorg/fourthline/cling/transport/spi/AbstractStreamClient;-><init>()V

    .line 63
    iput-object p1, p0, Lorg/fourthline/cling/transport/impl/jetty/StreamClientImpl;->configuration:Lorg/fourthline/cling/transport/impl/jetty/StreamClientConfigurationImpl;

    .line 65
    sget-object v0, Lorg/fourthline/cling/transport/impl/jetty/StreamClientImpl;->log:Ljava/util/logging/Logger;

    const-string v1, "Starting Jetty HttpClient..."

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 66
    new-instance v0, Lorg/eclipse/jetty/client/HttpClient;

    invoke-direct {v0}, Lorg/eclipse/jetty/client/HttpClient;-><init>()V

    iput-object v0, p0, Lorg/fourthline/cling/transport/impl/jetty/StreamClientImpl;->client:Lorg/eclipse/jetty/client/HttpClient;

    .line 70
    iget-object v0, p0, Lorg/fourthline/cling/transport/impl/jetty/StreamClientImpl;->client:Lorg/eclipse/jetty/client/HttpClient;

    new-instance v1, Lorg/fourthline/cling/transport/impl/jetty/StreamClientImpl$1;

    .line 71
    invoke-virtual {p0}, Lorg/fourthline/cling/transport/impl/jetty/StreamClientImpl;->getConfiguration()Lorg/fourthline/cling/transport/impl/jetty/StreamClientConfigurationImpl;

    move-result-object v2

    invoke-virtual {v2}, Lorg/fourthline/cling/transport/impl/jetty/StreamClientConfigurationImpl;->getRequestExecutorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lorg/fourthline/cling/transport/impl/jetty/StreamClientImpl$1;-><init>(Lorg/fourthline/cling/transport/impl/jetty/StreamClientImpl;Ljava/util/concurrent/ExecutorService;)V

    .line 70
    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/client/HttpClient;->setThreadPool(Lorg/eclipse/jetty/util/thread/ThreadPool;)V

    .line 81
    iget-object v0, p0, Lorg/fourthline/cling/transport/impl/jetty/StreamClientImpl;->client:Lorg/eclipse/jetty/client/HttpClient;

    invoke-virtual {p1}, Lorg/fourthline/cling/transport/impl/jetty/StreamClientConfigurationImpl;->getTimeoutSeconds()I

    move-result v1

    add-int/lit8 v1, v1, 0x5

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jetty/client/HttpClient;->setTimeout(J)V

    .line 82
    iget-object v0, p0, Lorg/fourthline/cling/transport/impl/jetty/StreamClientImpl;->client:Lorg/eclipse/jetty/client/HttpClient;

    invoke-virtual {p1}, Lorg/fourthline/cling/transport/impl/jetty/StreamClientConfigurationImpl;->getTimeoutSeconds()I

    move-result v1

    add-int/lit8 v1, v1, 0x5

    mul-int/lit16 v1, v1, 0x3e8

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/client/HttpClient;->setConnectTimeout(I)V

    .line 84
    iget-object v0, p0, Lorg/fourthline/cling/transport/impl/jetty/StreamClientImpl;->client:Lorg/eclipse/jetty/client/HttpClient;

    invoke-virtual {p1}, Lorg/fourthline/cling/transport/impl/jetty/StreamClientConfigurationImpl;->getRequestRetryCount()I

    move-result p1

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/client/HttpClient;->setMaxRetries(I)V

    .line 87
    :try_start_0
    iget-object p1, p0, Lorg/fourthline/cling/transport/impl/jetty/StreamClientImpl;->client:Lorg/eclipse/jetty/client/HttpClient;

    invoke-virtual {p1}, Lorg/eclipse/jetty/client/HttpClient;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 89
    new-instance v0, Lorg/fourthline/cling/transport/spi/InitializationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not start Jetty HTTP client: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/fourthline/cling/transport/spi/InitializationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method static synthetic access$000()Ljava/util/logging/Logger;
    .locals 1

    .line 55
    sget-object v0, Lorg/fourthline/cling/transport/impl/jetty/StreamClientImpl;->log:Ljava/util/logging/Logger;

    return-object v0
.end method


# virtual methods
.method protected bridge synthetic abort(Ljava/lang/Object;)V
    .locals 0

    .line 55
    check-cast p1, Lorg/fourthline/cling/transport/impl/jetty/StreamClientImpl$HttpContentExchange;

    invoke-virtual {p0, p1}, Lorg/fourthline/cling/transport/impl/jetty/StreamClientImpl;->abort(Lorg/fourthline/cling/transport/impl/jetty/StreamClientImpl$HttpContentExchange;)V

    return-void
.end method

.method protected abort(Lorg/fourthline/cling/transport/impl/jetty/StreamClientImpl$HttpContentExchange;)V
    .locals 0

    .line 140
    invoke-virtual {p1}, Lorg/fourthline/cling/transport/impl/jetty/StreamClientImpl$HttpContentExchange;->cancel()V

    return-void
.end method

.method protected bridge synthetic createCallable(Lorg/fourthline/cling/model/message/StreamRequestMessage;Ljava/lang/Object;)Ljava/util/concurrent/Callable;
    .locals 0

    .line 55
    check-cast p2, Lorg/fourthline/cling/transport/impl/jetty/StreamClientImpl$HttpContentExchange;

    invoke-virtual {p0, p1, p2}, Lorg/fourthline/cling/transport/impl/jetty/StreamClientImpl;->createCallable(Lorg/fourthline/cling/model/message/StreamRequestMessage;Lorg/fourthline/cling/transport/impl/jetty/StreamClientImpl$HttpContentExchange;)Ljava/util/concurrent/Callable;

    move-result-object p1

    return-object p1
.end method

.method protected createCallable(Lorg/fourthline/cling/model/message/StreamRequestMessage;Lorg/fourthline/cling/transport/impl/jetty/StreamClientImpl$HttpContentExchange;)Ljava/util/concurrent/Callable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/fourthline/cling/model/message/StreamRequestMessage;",
            "Lorg/fourthline/cling/transport/impl/jetty/StreamClientImpl$HttpContentExchange;",
            ")",
            "Ljava/util/concurrent/Callable<",
            "Lorg/fourthline/cling/model/message/StreamResponseMessage;",
            ">;"
        }
    .end annotation

    .line 108
    new-instance v0, Lorg/fourthline/cling/transport/impl/jetty/StreamClientImpl$2;

    invoke-direct {v0, p0, p1, p2}, Lorg/fourthline/cling/transport/impl/jetty/StreamClientImpl$2;-><init>(Lorg/fourthline/cling/transport/impl/jetty/StreamClientImpl;Lorg/fourthline/cling/model/message/StreamRequestMessage;Lorg/fourthline/cling/transport/impl/jetty/StreamClientImpl$HttpContentExchange;)V

    return-object v0
.end method

.method protected bridge synthetic createRequest(Lorg/fourthline/cling/model/message/StreamRequestMessage;)Ljava/lang/Object;
    .locals 0

    .line 55
    invoke-virtual {p0, p1}, Lorg/fourthline/cling/transport/impl/jetty/StreamClientImpl;->createRequest(Lorg/fourthline/cling/model/message/StreamRequestMessage;)Lorg/fourthline/cling/transport/impl/jetty/StreamClientImpl$HttpContentExchange;

    move-result-object p1

    return-object p1
.end method

.method protected createRequest(Lorg/fourthline/cling/model/message/StreamRequestMessage;)Lorg/fourthline/cling/transport/impl/jetty/StreamClientImpl$HttpContentExchange;
    .locals 3

    .line 102
    new-instance v0, Lorg/fourthline/cling/transport/impl/jetty/StreamClientImpl$HttpContentExchange;

    invoke-virtual {p0}, Lorg/fourthline/cling/transport/impl/jetty/StreamClientImpl;->getConfiguration()Lorg/fourthline/cling/transport/impl/jetty/StreamClientConfigurationImpl;

    move-result-object v1

    iget-object v2, p0, Lorg/fourthline/cling/transport/impl/jetty/StreamClientImpl;->client:Lorg/eclipse/jetty/client/HttpClient;

    invoke-direct {v0, v1, v2, p1}, Lorg/fourthline/cling/transport/impl/jetty/StreamClientImpl$HttpContentExchange;-><init>(Lorg/fourthline/cling/transport/impl/jetty/StreamClientConfigurationImpl;Lorg/eclipse/jetty/client/HttpClient;Lorg/fourthline/cling/model/message/StreamRequestMessage;)V

    return-object v0
.end method

.method public getConfiguration()Lorg/fourthline/cling/transport/impl/jetty/StreamClientConfigurationImpl;
    .locals 1

    .line 97
    iget-object v0, p0, Lorg/fourthline/cling/transport/impl/jetty/StreamClientImpl;->configuration:Lorg/fourthline/cling/transport/impl/jetty/StreamClientConfigurationImpl;

    return-object v0
.end method

.method public bridge synthetic getConfiguration()Lorg/fourthline/cling/transport/spi/StreamClientConfiguration;
    .locals 1

    .line 55
    invoke-virtual {p0}, Lorg/fourthline/cling/transport/impl/jetty/StreamClientImpl;->getConfiguration()Lorg/fourthline/cling/transport/impl/jetty/StreamClientConfigurationImpl;

    move-result-object v0

    return-object v0
.end method

.method protected logExecutionException(Ljava/lang/Throwable;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public stop()V
    .locals 4

    .line 151
    :try_start_0
    iget-object v0, p0, Lorg/fourthline/cling/transport/impl/jetty/StreamClientImpl;->client:Lorg/eclipse/jetty/client/HttpClient;

    invoke-virtual {v0}, Lorg/eclipse/jetty/client/HttpClient;->stop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 153
    sget-object v1, Lorg/fourthline/cling/transport/impl/jetty/StreamClientImpl;->log:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error stopping HTTP client: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
