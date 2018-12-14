.class Lorg/fourthline/cling/transport/impl/jetty/StreamClientImpl$2;
.super Ljava/lang/Object;
.source "StreamClientImpl.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/fourthline/cling/transport/impl/jetty/StreamClientImpl;->createCallable(Lorg/fourthline/cling/model/message/StreamRequestMessage;Lorg/fourthline/cling/transport/impl/jetty/StreamClientImpl$HttpContentExchange;)Ljava/util/concurrent/Callable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lorg/fourthline/cling/model/message/StreamResponseMessage;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/fourthline/cling/transport/impl/jetty/StreamClientImpl;

.field final synthetic val$exchange:Lorg/fourthline/cling/transport/impl/jetty/StreamClientImpl$HttpContentExchange;

.field final synthetic val$requestMessage:Lorg/fourthline/cling/model/message/StreamRequestMessage;


# direct methods
.method constructor <init>(Lorg/fourthline/cling/transport/impl/jetty/StreamClientImpl;Lorg/fourthline/cling/model/message/StreamRequestMessage;Lorg/fourthline/cling/transport/impl/jetty/StreamClientImpl$HttpContentExchange;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lorg/fourthline/cling/transport/impl/jetty/StreamClientImpl$2;->this$0:Lorg/fourthline/cling/transport/impl/jetty/StreamClientImpl;

    iput-object p2, p0, Lorg/fourthline/cling/transport/impl/jetty/StreamClientImpl$2;->val$requestMessage:Lorg/fourthline/cling/model/message/StreamRequestMessage;

    iput-object p3, p0, Lorg/fourthline/cling/transport/impl/jetty/StreamClientImpl$2;->val$exchange:Lorg/fourthline/cling/transport/impl/jetty/StreamClientImpl$HttpContentExchange;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 108
    invoke-virtual {p0}, Lorg/fourthline/cling/transport/impl/jetty/StreamClientImpl$2;->call()Lorg/fourthline/cling/model/message/StreamResponseMessage;

    move-result-object v0

    return-object v0
.end method

.method public call()Lorg/fourthline/cling/model/message/StreamResponseMessage;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 111
    invoke-static {}, Lorg/fourthline/cling/transport/impl/jetty/StreamClientImpl;->access$000()Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    invoke-static {}, Lorg/fourthline/cling/transport/impl/jetty/StreamClientImpl;->access$000()Ljava/util/logging/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sending HTTP request: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/fourthline/cling/transport/impl/jetty/StreamClientImpl$2;->val$requestMessage:Lorg/fourthline/cling/model/message/StreamRequestMessage;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 114
    :cond_0
    iget-object v0, p0, Lorg/fourthline/cling/transport/impl/jetty/StreamClientImpl$2;->this$0:Lorg/fourthline/cling/transport/impl/jetty/StreamClientImpl;

    iget-object v0, v0, Lorg/fourthline/cling/transport/impl/jetty/StreamClientImpl;->client:Lorg/eclipse/jetty/client/HttpClient;

    iget-object v1, p0, Lorg/fourthline/cling/transport/impl/jetty/StreamClientImpl$2;->val$exchange:Lorg/fourthline/cling/transport/impl/jetty/StreamClientImpl$HttpContentExchange;

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/client/HttpClient;->send(Lorg/eclipse/jetty/client/HttpExchange;)V

    .line 115
    iget-object v0, p0, Lorg/fourthline/cling/transport/impl/jetty/StreamClientImpl$2;->val$exchange:Lorg/fourthline/cling/transport/impl/jetty/StreamClientImpl$HttpContentExchange;

    invoke-virtual {v0}, Lorg/fourthline/cling/transport/impl/jetty/StreamClientImpl$HttpContentExchange;->waitForDone()I

    move-result v0

    const/4 v1, 0x7

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 119
    :try_start_0
    iget-object v0, p0, Lorg/fourthline/cling/transport/impl/jetty/StreamClientImpl$2;->val$exchange:Lorg/fourthline/cling/transport/impl/jetty/StreamClientImpl$HttpContentExchange;

    invoke-virtual {v0}, Lorg/fourthline/cling/transport/impl/jetty/StreamClientImpl$HttpContentExchange;->createResponse()Lorg/fourthline/cling/model/message/StreamResponseMessage;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 121
    invoke-static {}, Lorg/fourthline/cling/transport/impl/jetty/StreamClientImpl;->access$000()Ljava/util/logging/Logger;

    move-result-object v1

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error reading response: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lorg/fourthline/cling/transport/impl/jetty/StreamClientImpl$2;->val$requestMessage:Lorg/fourthline/cling/model/message/StreamRequestMessage;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0}, Lorg/seamless/util/Exceptions;->unwrap(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v1, v3, v4, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v2

    :cond_1
    const/16 v1, 0xb

    if-ne v0, v1, :cond_2

    return-object v2

    :cond_2
    const/16 v1, 0x9

    if-ne v0, v1, :cond_3

    return-object v2

    .line 131
    :cond_3
    invoke-static {}, Lorg/fourthline/cling/transport/impl/jetty/StreamClientImpl;->access$000()Ljava/util/logging/Logger;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unhandled HTTP exchange status: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    return-object v2
.end method
