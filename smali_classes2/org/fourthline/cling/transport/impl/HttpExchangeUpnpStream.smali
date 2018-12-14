.class public abstract Lorg/fourthline/cling/transport/impl/HttpExchangeUpnpStream;
.super Lorg/fourthline/cling/transport/spi/UpnpStream;
.source "HttpExchangeUpnpStream.java"


# static fields
.field private static log:Ljava/util/logging/Logger;


# instance fields
.field private httpExchange:Lcom/sun/net/httpserver/HttpExchange;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 48
    const-class v0, Lorg/fourthline/cling/transport/spi/UpnpStream;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/fourthline/cling/transport/impl/HttpExchangeUpnpStream;->log:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/protocol/ProtocolFactory;Lcom/sun/net/httpserver/HttpExchange;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1}, Lorg/fourthline/cling/transport/spi/UpnpStream;-><init>(Lorg/fourthline/cling/protocol/ProtocolFactory;)V

    .line 54
    iput-object p2, p0, Lorg/fourthline/cling/transport/impl/HttpExchangeUpnpStream;->httpExchange:Lcom/sun/net/httpserver/HttpExchange;

    return-void
.end method


# virtual methods
.method protected abstract createConnection()Lorg/fourthline/cling/model/message/Connection;
.end method

.method public getHttpExchange()Lcom/sun/net/httpserver/HttpExchange;
    .locals 1

    .line 58
    iget-object v0, p0, Lorg/fourthline/cling/transport/impl/HttpExchangeUpnpStream;->httpExchange:Lcom/sun/net/httpserver/HttpExchange;

    return-object v0
.end method

.method public run()V
    .locals 10

    const-wide/16 v0, -0x1

    .line 64
    :try_start_0
    sget-object v2, Lorg/fourthline/cling/transport/impl/HttpExchangeUpnpStream;->log:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Processing HTTP request: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/fourthline/cling/transport/impl/HttpExchangeUpnpStream;->getHttpExchange()Lcom/sun/net/httpserver/HttpExchange;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sun/net/httpserver/HttpExchange;->getRequestMethod()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/fourthline/cling/transport/impl/HttpExchangeUpnpStream;->getHttpExchange()Lcom/sun/net/httpserver/HttpExchange;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sun/net/httpserver/HttpExchange;->getRequestURI()Ljava/net/URI;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 67
    new-instance v2, Lorg/fourthline/cling/model/message/StreamRequestMessage;

    .line 69
    invoke-virtual {p0}, Lorg/fourthline/cling/transport/impl/HttpExchangeUpnpStream;->getHttpExchange()Lcom/sun/net/httpserver/HttpExchange;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sun/net/httpserver/HttpExchange;->getRequestMethod()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/fourthline/cling/model/message/UpnpRequest$Method;->getByHttpName(Ljava/lang/String;)Lorg/fourthline/cling/model/message/UpnpRequest$Method;

    move-result-object v3

    .line 70
    invoke-virtual {p0}, Lorg/fourthline/cling/transport/impl/HttpExchangeUpnpStream;->getHttpExchange()Lcom/sun/net/httpserver/HttpExchange;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sun/net/httpserver/HttpExchange;->getRequestURI()Ljava/net/URI;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/fourthline/cling/model/message/StreamRequestMessage;-><init>(Lorg/fourthline/cling/model/message/UpnpRequest$Method;Ljava/net/URI;)V

    .line 73
    invoke-virtual {v2}, Lorg/fourthline/cling/model/message/StreamRequestMessage;->getOperation()Lorg/fourthline/cling/model/message/UpnpOperation;

    move-result-object v3

    check-cast v3, Lorg/fourthline/cling/model/message/UpnpRequest;

    invoke-virtual {v3}, Lorg/fourthline/cling/model/message/UpnpRequest;->getMethod()Lorg/fourthline/cling/model/message/UpnpRequest$Method;

    move-result-object v3

    sget-object v4, Lorg/fourthline/cling/model/message/UpnpRequest$Method;->UNKNOWN:Lorg/fourthline/cling/model/message/UpnpRequest$Method;

    invoke-virtual {v3, v4}, Lorg/fourthline/cling/model/message/UpnpRequest$Method;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 74
    sget-object v2, Lorg/fourthline/cling/transport/impl/HttpExchangeUpnpStream;->log:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Method not supported by UPnP stack: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/fourthline/cling/transport/impl/HttpExchangeUpnpStream;->getHttpExchange()Lcom/sun/net/httpserver/HttpExchange;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sun/net/httpserver/HttpExchange;->getRequestMethod()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 75
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Method not supported: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/fourthline/cling/transport/impl/HttpExchangeUpnpStream;->getHttpExchange()Lcom/sun/net/httpserver/HttpExchange;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sun/net/httpserver/HttpExchange;->getRequestMethod()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 79
    :cond_0
    invoke-virtual {v2}, Lorg/fourthline/cling/model/message/StreamRequestMessage;->getOperation()Lorg/fourthline/cling/model/message/UpnpOperation;

    move-result-object v3

    check-cast v3, Lorg/fourthline/cling/model/message/UpnpRequest;

    .line 80
    invoke-virtual {p0}, Lorg/fourthline/cling/transport/impl/HttpExchangeUpnpStream;->getHttpExchange()Lcom/sun/net/httpserver/HttpExchange;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sun/net/httpserver/HttpExchange;->getProtocol()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "HTTP/1.1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 79
    invoke-virtual {v3, v4}, Lorg/fourthline/cling/model/message/UpnpRequest;->setHttpMinorVersion(I)V

    .line 83
    sget-object v3, Lorg/fourthline/cling/transport/impl/HttpExchangeUpnpStream;->log:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Created new request message: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 86
    invoke-virtual {p0}, Lorg/fourthline/cling/transport/impl/HttpExchangeUpnpStream;->createConnection()Lorg/fourthline/cling/model/message/Connection;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/fourthline/cling/model/message/StreamRequestMessage;->setConnection(Lorg/fourthline/cling/model/message/Connection;)V

    .line 89
    new-instance v3, Lorg/fourthline/cling/model/message/UpnpHeaders;

    invoke-virtual {p0}, Lorg/fourthline/cling/transport/impl/HttpExchangeUpnpStream;->getHttpExchange()Lcom/sun/net/httpserver/HttpExchange;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sun/net/httpserver/HttpExchange;->getRequestHeaders()Lcom/sun/net/httpserver/Headers;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/fourthline/cling/model/message/UpnpHeaders;-><init>(Ljava/util/Map;)V

    invoke-virtual {v2, v3}, Lorg/fourthline/cling/model/message/StreamRequestMessage;->setHeaders(Lorg/fourthline/cling/model/message/UpnpHeaders;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x0

    .line 95
    :try_start_1
    invoke-virtual {p0}, Lorg/fourthline/cling/transport/impl/HttpExchangeUpnpStream;->getHttpExchange()Lcom/sun/net/httpserver/HttpExchange;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sun/net/httpserver/HttpExchange;->getRequestBody()Ljava/io/InputStream;

    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 96
    :try_start_2
    invoke-static {v4}, Lorg/seamless/util/io/IO;->readBytes(Ljava/io/InputStream;)[B

    move-result-object v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v4, :cond_1

    .line 99
    :try_start_3
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 102
    :cond_1
    sget-object v4, Lorg/fourthline/cling/transport/impl/HttpExchangeUpnpStream;->log:Ljava/util/logging/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Reading request body bytes: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v7, v5

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 104
    array-length v4, v5

    if-lez v4, :cond_2

    invoke-virtual {v2}, Lorg/fourthline/cling/model/message/StreamRequestMessage;->isContentTypeMissingOrText()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 106
    sget-object v4, Lorg/fourthline/cling/transport/impl/HttpExchangeUpnpStream;->log:Ljava/util/logging/Logger;

    const-string v6, "Request contains textual entity body, converting then setting string on message"

    invoke-virtual {v4, v6}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 107
    invoke-virtual {v2, v5}, Lorg/fourthline/cling/model/message/StreamRequestMessage;->setBodyCharacters([B)V

    goto :goto_0

    .line 109
    :cond_2
    array-length v4, v5

    if-lez v4, :cond_3

    .line 111
    sget-object v4, Lorg/fourthline/cling/transport/impl/HttpExchangeUpnpStream;->log:Ljava/util/logging/Logger;

    const-string v6, "Request contains binary entity body, setting bytes on message"

    invoke-virtual {v4, v6}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 112
    sget-object v4, Lorg/fourthline/cling/model/message/UpnpMessage$BodyType;->BYTES:Lorg/fourthline/cling/model/message/UpnpMessage$BodyType;

    invoke-virtual {v2, v4, v5}, Lorg/fourthline/cling/model/message/StreamRequestMessage;->setBody(Lorg/fourthline/cling/model/message/UpnpMessage$BodyType;Ljava/lang/Object;)V

    goto :goto_0

    .line 115
    :cond_3
    sget-object v4, Lorg/fourthline/cling/transport/impl/HttpExchangeUpnpStream;->log:Ljava/util/logging/Logger;

    const-string v5, "Request did not contain entity body"

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 119
    :goto_0
    invoke-virtual {p0, v2}, Lorg/fourthline/cling/transport/impl/HttpExchangeUpnpStream;->process(Lorg/fourthline/cling/model/message/StreamRequestMessage;)Lorg/fourthline/cling/model/message/StreamResponseMessage;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 123
    sget-object v4, Lorg/fourthline/cling/transport/impl/HttpExchangeUpnpStream;->log:Ljava/util/logging/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Preparing HTTP response message: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 126
    invoke-virtual {p0}, Lorg/fourthline/cling/transport/impl/HttpExchangeUpnpStream;->getHttpExchange()Lcom/sun/net/httpserver/HttpExchange;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sun/net/httpserver/HttpExchange;->getResponseHeaders()Lcom/sun/net/httpserver/Headers;

    move-result-object v4

    .line 127
    invoke-virtual {v2}, Lorg/fourthline/cling/model/message/StreamResponseMessage;->getHeaders()Lorg/fourthline/cling/model/message/UpnpHeaders;

    move-result-object v5

    .line 126
    invoke-virtual {v4, v5}, Lcom/sun/net/httpserver/Headers;->putAll(Ljava/util/Map;)V

    .line 131
    invoke-virtual {v2}, Lorg/fourthline/cling/model/message/StreamResponseMessage;->hasBody()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v2}, Lorg/fourthline/cling/model/message/StreamResponseMessage;->getBodyBytes()[B

    move-result-object v4

    goto :goto_1

    :cond_4
    move-object v4, v3

    :goto_1
    if-eqz v4, :cond_5

    .line 132
    array-length v5, v4

    goto :goto_2

    :cond_5
    const/4 v5, -0x1

    .line 134
    :goto_2
    sget-object v6, Lorg/fourthline/cling/transport/impl/HttpExchangeUpnpStream;->log:Ljava/util/logging/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Sending HTTP response message: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " with content length: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 135
    invoke-virtual {p0}, Lorg/fourthline/cling/transport/impl/HttpExchangeUpnpStream;->getHttpExchange()Lcom/sun/net/httpserver/HttpExchange;

    move-result-object v6

    invoke-virtual {v2}, Lorg/fourthline/cling/model/message/StreamResponseMessage;->getOperation()Lorg/fourthline/cling/model/message/UpnpOperation;

    move-result-object v7

    check-cast v7, Lorg/fourthline/cling/model/message/UpnpResponse;

    invoke-virtual {v7}, Lorg/fourthline/cling/model/message/UpnpResponse;->getStatusCode()I

    move-result v7

    int-to-long v8, v5

    invoke-virtual {v6, v7, v8, v9}, Lcom/sun/net/httpserver/HttpExchange;->sendResponseHeaders(IJ)V

    if-lez v5, :cond_8

    .line 138
    sget-object v5, Lorg/fourthline/cling/transport/impl/HttpExchangeUpnpStream;->log:Ljava/util/logging/Logger;

    const-string v6, "Response message has body, writing bytes to stream..."

    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    .line 141
    :try_start_4
    invoke-virtual {p0}, Lorg/fourthline/cling/transport/impl/HttpExchangeUpnpStream;->getHttpExchange()Lcom/sun/net/httpserver/HttpExchange;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sun/net/httpserver/HttpExchange;->getResponseBody()Ljava/io/OutputStream;

    move-result-object v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 142
    :try_start_5
    invoke-static {v5, v4}, Lorg/seamless/util/io/IO;->writeBytes(Ljava/io/OutputStream;[B)V

    .line 143
    invoke-virtual {v5}, Ljava/io/OutputStream;->flush()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v5, :cond_8

    .line 146
    :try_start_6
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V

    goto :goto_4

    :catchall_0
    move-exception v2

    move-object v3, v5

    goto :goto_3

    :catchall_1
    move-exception v2

    :goto_3
    if-eqz v3, :cond_6

    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    :cond_6
    throw v2

    .line 152
    :cond_7
    sget-object v3, Lorg/fourthline/cling/transport/impl/HttpExchangeUpnpStream;->log:Ljava/util/logging/Logger;

    const-string v4, "Sending HTTP response status: 404"

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 153
    invoke-virtual {p0}, Lorg/fourthline/cling/transport/impl/HttpExchangeUpnpStream;->getHttpExchange()Lcom/sun/net/httpserver/HttpExchange;

    move-result-object v3

    const/16 v4, 0x194

    invoke-virtual {v3, v4, v0, v1}, Lcom/sun/net/httpserver/HttpExchange;->sendResponseHeaders(IJ)V

    .line 156
    :cond_8
    :goto_4
    invoke-virtual {p0, v2}, Lorg/fourthline/cling/transport/impl/HttpExchangeUpnpStream;->responseSent(Lorg/fourthline/cling/model/message/StreamResponseMessage;)V

    goto :goto_7

    :catchall_2
    move-exception v2

    move-object v3, v4

    goto :goto_5

    :catchall_3
    move-exception v2

    :goto_5
    if-eqz v3, :cond_9

    .line 99
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    :cond_9
    throw v2
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0

    :catch_0
    move-exception v2

    .line 169
    sget-object v3, Lorg/fourthline/cling/transport/impl/HttpExchangeUpnpStream;->log:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception occured during UPnP stream processing: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 170
    sget-object v3, Lorg/fourthline/cling/transport/impl/HttpExchangeUpnpStream;->log:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 171
    sget-object v3, Lorg/fourthline/cling/transport/impl/HttpExchangeUpnpStream;->log:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cause: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lorg/seamless/util/Exceptions;->unwrap(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2}, Lorg/seamless/util/Exceptions;->unwrap(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 174
    :cond_a
    :try_start_7
    iget-object v3, p0, Lorg/fourthline/cling/transport/impl/HttpExchangeUpnpStream;->httpExchange:Lcom/sun/net/httpserver/HttpExchange;

    const/16 v4, 0x1f4

    invoke-virtual {v3, v4, v0, v1}, Lcom/sun/net/httpserver/HttpExchange;->sendResponseHeaders(IJ)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_6

    :catch_1
    move-exception v0

    .line 176
    sget-object v1, Lorg/fourthline/cling/transport/impl/HttpExchangeUpnpStream;->log:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t send error response: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 179
    :goto_6
    invoke-virtual {p0, v2}, Lorg/fourthline/cling/transport/impl/HttpExchangeUpnpStream;->responseException(Ljava/lang/Throwable;)V

    :goto_7
    return-void
.end method
