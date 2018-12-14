.class public abstract Lorg/fourthline/cling/transport/spi/AbstractStreamClient;
.super Ljava/lang/Object;
.source "AbstractStreamClient.java"

# interfaces
.implements Lorg/fourthline/cling/transport/spi/StreamClient;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C::",
        "Lorg/fourthline/cling/transport/spi/StreamClientConfiguration;",
        "REQUEST:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/fourthline/cling/transport/spi/StreamClient<",
        "TC;>;"
    }
.end annotation


# static fields
.field private static final log:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    const-class v0, Lorg/fourthline/cling/transport/spi/StreamClient;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/fourthline/cling/transport/spi/AbstractStreamClient;->log:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract abort(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TREQUEST;)V"
        }
    .end annotation
.end method

.method protected abstract createCallable(Lorg/fourthline/cling/model/message/StreamRequestMessage;Ljava/lang/Object;)Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/fourthline/cling/model/message/StreamRequestMessage;",
            "TREQUEST;)",
            "Ljava/util/concurrent/Callable<",
            "Lorg/fourthline/cling/model/message/StreamResponseMessage;",
            ">;"
        }
    .end annotation
.end method

.method protected abstract createRequest(Lorg/fourthline/cling/model/message/StreamRequestMessage;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/fourthline/cling/model/message/StreamRequestMessage;",
            ")TREQUEST;"
        }
    .end annotation
.end method

.method protected abstract logExecutionException(Ljava/lang/Throwable;)Z
.end method

.method protected onFinally(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TREQUEST;)V"
        }
    .end annotation

    return-void
.end method

.method public sendRequest(Lorg/fourthline/cling/model/message/StreamRequestMessage;)Lorg/fourthline/cling/model/message/StreamResponseMessage;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 41
    sget-object v0, Lorg/fourthline/cling/transport/spi/AbstractStreamClient;->log:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    sget-object v0, Lorg/fourthline/cling/transport/spi/AbstractStreamClient;->log:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Preparing HTTP request: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 44
    :cond_0
    invoke-virtual {p0, p1}, Lorg/fourthline/cling/transport/spi/AbstractStreamClient;->createRequest(Lorg/fourthline/cling/model/message/StreamRequestMessage;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return-object v1

    .line 48
    :cond_1
    invoke-virtual {p0, p1, v0}, Lorg/fourthline/cling/transport/spi/AbstractStreamClient;->createCallable(Lorg/fourthline/cling/model/message/StreamRequestMessage;Ljava/lang/Object;)Ljava/util/concurrent/Callable;

    move-result-object v2

    .line 51
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 55
    invoke-virtual {p0}, Lorg/fourthline/cling/transport/spi/AbstractStreamClient;->getConfiguration()Lorg/fourthline/cling/transport/spi/StreamClientConfiguration;

    move-result-object v5

    invoke-interface {v5}, Lorg/fourthline/cling/transport/spi/StreamClientConfiguration;->getRequestExecutorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v2

    .line 59
    :try_start_0
    sget-object v5, Lorg/fourthline/cling/transport/spi/AbstractStreamClient;->log:Ljava/util/logging/Logger;

    sget-object v6, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 60
    sget-object v5, Lorg/fourthline/cling/transport/spi/AbstractStreamClient;->log:Ljava/util/logging/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Waiting "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    invoke-virtual {p0}, Lorg/fourthline/cling/transport/spi/AbstractStreamClient;->getConfiguration()Lorg/fourthline/cling/transport/spi/StreamClientConfiguration;

    move-result-object v7

    invoke-interface {v7}, Lorg/fourthline/cling/transport/spi/StreamClientConfiguration;->getTimeoutSeconds()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " seconds for HTTP request to complete: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 60
    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 65
    :cond_2
    invoke-virtual {p0}, Lorg/fourthline/cling/transport/spi/AbstractStreamClient;->getConfiguration()Lorg/fourthline/cling/transport/spi/StreamClientConfiguration;

    move-result-object v5

    invoke-interface {v5}, Lorg/fourthline/cling/transport/spi/StreamClientConfiguration;->getTimeoutSeconds()I

    move-result v5

    int-to-long v5, v5

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, v5, v6, v7}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/fourthline/cling/model/message/StreamResponseMessage;

    .line 68
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const/4 v7, 0x0

    sub-long v7, v5, v3

    .line 69
    sget-object v3, Lorg/fourthline/cling/transport/spi/AbstractStreamClient;->log:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 70
    sget-object v3, Lorg/fourthline/cling/transport/spi/AbstractStreamClient;->log:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Got HTTP response in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, "ms: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    .line 71
    :cond_3
    invoke-virtual {p0}, Lorg/fourthline/cling/transport/spi/AbstractStreamClient;->getConfiguration()Lorg/fourthline/cling/transport/spi/StreamClientConfiguration;

    move-result-object v3

    invoke-interface {v3}, Lorg/fourthline/cling/transport/spi/StreamClientConfiguration;->getLogWarningSeconds()I

    move-result v3

    if-lez v3, :cond_4

    .line 72
    invoke-virtual {p0}, Lorg/fourthline/cling/transport/spi/AbstractStreamClient;->getConfiguration()Lorg/fourthline/cling/transport/spi/StreamClientConfiguration;

    move-result-object v3

    invoke-interface {v3}, Lorg/fourthline/cling/transport/spi/StreamClientConfiguration;->getLogWarningSeconds()I

    move-result v3

    mul-int/lit16 v3, v3, 0x3e8

    int-to-long v3, v3

    cmp-long v5, v7, v3

    if-lez v5, :cond_4

    .line 73
    sget-object v3, Lorg/fourthline/cling/transport/spi/AbstractStreamClient;->log:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "HTTP request took a long time ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, "ms): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    :cond_4
    invoke-virtual {p0, v0}, Lorg/fourthline/cling/transport/spi/AbstractStreamClient;->onFinally(Ljava/lang/Object;)V

    return-object v2

    :catchall_0
    move-exception p1

    goto/16 :goto_0

    :catch_0
    move-exception v2

    .line 95
    :try_start_1
    invoke-virtual {v2}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    .line 96
    invoke-virtual {p0, v2}, Lorg/fourthline/cling/transport/spi/AbstractStreamClient;->logExecutionException(Ljava/lang/Throwable;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 97
    sget-object v3, Lorg/fourthline/cling/transport/spi/AbstractStreamClient;->log:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "HTTP request failed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2}, Lorg/seamless/util/Exceptions;->unwrap(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v2

    invoke-virtual {v3, v4, p1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 101
    :cond_5
    invoke-virtual {p0, v0}, Lorg/fourthline/cling/transport/spi/AbstractStreamClient;->onFinally(Ljava/lang/Object;)V

    return-object v1

    .line 87
    :catch_1
    :try_start_2
    sget-object v2, Lorg/fourthline/cling/transport/spi/AbstractStreamClient;->log:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Timeout of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    invoke-virtual {p0}, Lorg/fourthline/cling/transport/spi/AbstractStreamClient;->getConfiguration()Lorg/fourthline/cling/transport/spi/StreamClientConfiguration;

    move-result-object v4

    invoke-interface {v4}, Lorg/fourthline/cling/transport/spi/StreamClientConfiguration;->getTimeoutSeconds()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " seconds while waiting for HTTP request to complete, aborting: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 87
    invoke-virtual {v2, p1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p0, v0}, Lorg/fourthline/cling/transport/spi/AbstractStreamClient;->abort(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 101
    invoke-virtual {p0, v0}, Lorg/fourthline/cling/transport/spi/AbstractStreamClient;->onFinally(Ljava/lang/Object;)V

    return-object v1

    .line 80
    :catch_2
    :try_start_3
    sget-object v1, Lorg/fourthline/cling/transport/spi/AbstractStreamClient;->log:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 81
    sget-object v1, Lorg/fourthline/cling/transport/spi/AbstractStreamClient;->log:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Interruption, aborting request: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 82
    :cond_6
    invoke-virtual {p0, v0}, Lorg/fourthline/cling/transport/spi/AbstractStreamClient;->abort(Ljava/lang/Object;)V

    .line 83
    new-instance p1, Ljava/lang/InterruptedException;

    const-string v1, "HTTP request interrupted and aborted"

    invoke-direct {p1, v1}, Ljava/lang/InterruptedException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 101
    :goto_0
    invoke-virtual {p0, v0}, Lorg/fourthline/cling/transport/spi/AbstractStreamClient;->onFinally(Ljava/lang/Object;)V

    throw p1
.end method
