.class public Lorg/fourthline/cling/transport/impl/jetty/StreamClientImpl$HttpContentExchange;
.super Lorg/eclipse/jetty/client/ContentExchange;
.source "StreamClientImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/fourthline/cling/transport/impl/jetty/StreamClientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HttpContentExchange"
.end annotation


# instance fields
.field protected final client:Lorg/eclipse/jetty/client/HttpClient;

.field protected final configuration:Lorg/fourthline/cling/transport/impl/jetty/StreamClientConfigurationImpl;

.field protected exception:Ljava/lang/Throwable;

.field protected final requestMessage:Lorg/fourthline/cling/model/message/StreamRequestMessage;


# direct methods
.method public constructor <init>(Lorg/fourthline/cling/transport/impl/jetty/StreamClientConfigurationImpl;Lorg/eclipse/jetty/client/HttpClient;Lorg/fourthline/cling/model/message/StreamRequestMessage;)V
    .locals 1

    const/4 v0, 0x1

    .line 168
    invoke-direct {p0, v0}, Lorg/eclipse/jetty/client/ContentExchange;-><init>(Z)V

    .line 169
    iput-object p1, p0, Lorg/fourthline/cling/transport/impl/jetty/StreamClientImpl$HttpContentExchange;->configuration:Lorg/fourthline/cling/transport/impl/jetty/StreamClientConfigurationImpl;

    .line 170
    iput-object p2, p0, Lorg/fourthline/cling/transport/impl/jetty/StreamClientImpl$HttpContentExchange;->client:Lorg/eclipse/jetty/client/HttpClient;

    .line 171
    iput-object p3, p0, Lorg/fourthline/cling/transport/impl/jetty/StreamClientImpl$HttpContentExchange;->requestMessage:Lorg/fourthline/cling/model/message/StreamRequestMessage;

    .line 172
    invoke-virtual {p0}, Lorg/fourthline/cling/transport/impl/jetty/StreamClientImpl$HttpContentExchange;->applyRequestURLMethod()V

    .line 173
    invoke-virtual {p0}, Lorg/fourthline/cling/transport/impl/jetty/StreamClientImpl$HttpContentExchange;->applyRequestHeaders()V

    .line 174
    invoke-virtual {p0}, Lorg/fourthline/cling/transport/impl/jetty/StreamClientImpl$HttpContentExchange;->applyRequestBody()V

    return-void
.end method


# virtual methods
.method protected applyRequestBody()V
    .locals 5

    .line 236
    invoke-virtual {p0}, Lorg/fourthline/cling/transport/impl/jetty/StreamClientImpl$HttpContentExchange;->getRequestMessage()Lorg/fourthline/cling/model/message/StreamRequestMessage;

    move-result-object v0

    invoke-virtual {v0}, Lorg/fourthline/cling/model/message/StreamRequestMessage;->hasBody()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 237
    invoke-virtual {p0}, Lorg/fourthline/cling/transport/impl/jetty/StreamClientImpl$HttpContentExchange;->getRequestMessage()Lorg/fourthline/cling/model/message/StreamRequestMessage;

    move-result-object v0

    invoke-virtual {v0}, Lorg/fourthline/cling/model/message/StreamRequestMessage;->getBodyType()Lorg/fourthline/cling/model/message/UpnpMessage$BodyType;

    move-result-object v0

    sget-object v1, Lorg/fourthline/cling/model/message/UpnpMessage$BodyType;->STRING:Lorg/fourthline/cling/model/message/UpnpMessage$BodyType;

    if-ne v0, v1, :cond_3

    .line 238
    invoke-static {}, Lorg/fourthline/cling/transport/impl/jetty/StreamClientImpl;->access$000()Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 239
    invoke-static {}, Lorg/fourthline/cling/transport/impl/jetty/StreamClientImpl;->access$000()Ljava/util/logging/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Writing textual request body: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/fourthline/cling/transport/impl/jetty/StreamClientImpl$HttpContentExchange;->getRequestMessage()Lorg/fourthline/cling/model/message/StreamRequestMessage;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 242
    :cond_0
    invoke-virtual {p0}, Lorg/fourthline/cling/transport/impl/jetty/StreamClientImpl$HttpContentExchange;->getRequestMessage()Lorg/fourthline/cling/model/message/StreamRequestMessage;

    move-result-object v0

    invoke-virtual {v0}, Lorg/fourthline/cling/model/message/StreamRequestMessage;->getContentTypeHeader()Lorg/fourthline/cling/model/message/header/ContentTypeHeader;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 243
    invoke-virtual {p0}, Lorg/fourthline/cling/transport/impl/jetty/StreamClientImpl$HttpContentExchange;->getRequestMessage()Lorg/fourthline/cling/model/message/StreamRequestMessage;

    move-result-object v0

    invoke-virtual {v0}, Lorg/fourthline/cling/model/message/StreamRequestMessage;->getContentTypeHeader()Lorg/fourthline/cling/model/message/header/ContentTypeHeader;

    move-result-object v0

    invoke-virtual {v0}, Lorg/fourthline/cling/model/message/header/ContentTypeHeader;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/seamless/util/MimeType;

    goto :goto_0

    :cond_1
    sget-object v0, Lorg/fourthline/cling/model/message/header/ContentTypeHeader;->DEFAULT_CONTENT_TYPE_UTF8:Lorg/seamless/util/MimeType;

    .line 247
    :goto_0
    invoke-virtual {p0}, Lorg/fourthline/cling/transport/impl/jetty/StreamClientImpl$HttpContentExchange;->getRequestMessage()Lorg/fourthline/cling/model/message/StreamRequestMessage;

    move-result-object v1

    invoke-virtual {v1}, Lorg/fourthline/cling/model/message/StreamRequestMessage;->getContentTypeCharset()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 248
    invoke-virtual {p0}, Lorg/fourthline/cling/transport/impl/jetty/StreamClientImpl$HttpContentExchange;->getRequestMessage()Lorg/fourthline/cling/model/message/StreamRequestMessage;

    move-result-object v1

    invoke-virtual {v1}, Lorg/fourthline/cling/model/message/StreamRequestMessage;->getContentTypeCharset()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_2
    const-string v1, "UTF-8"

    .line 251
    :goto_1
    invoke-virtual {v0}, Lorg/seamless/util/MimeType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/transport/impl/jetty/StreamClientImpl$HttpContentExchange;->setRequestContentType(Ljava/lang/String;)V

    .line 254
    :try_start_0
    new-instance v0, Lorg/eclipse/jetty/io/ByteArrayBuffer;

    invoke-virtual {p0}, Lorg/fourthline/cling/transport/impl/jetty/StreamClientImpl$HttpContentExchange;->getRequestMessage()Lorg/fourthline/cling/model/message/StreamRequestMessage;

    move-result-object v2

    invoke-virtual {v2}, Lorg/fourthline/cling/model/message/StreamRequestMessage;->getBodyString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Lorg/eclipse/jetty/io/ByteArrayBuffer;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "Content-Length"

    .line 258
    invoke-virtual {v0}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->length()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/fourthline/cling/transport/impl/jetty/StreamClientImpl$HttpContentExchange;->setRequestHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    invoke-virtual {p0, v0}, Lorg/fourthline/cling/transport/impl/jetty/StreamClientImpl$HttpContentExchange;->setRequestContent(Lorg/eclipse/jetty/io/Buffer;)V

    goto/16 :goto_2

    :catch_0
    move-exception v0

    .line 256
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsupported character encoding: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 262
    :cond_3
    invoke-static {}, Lorg/fourthline/cling/transport/impl/jetty/StreamClientImpl;->access$000()Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 263
    invoke-static {}, Lorg/fourthline/cling/transport/impl/jetty/StreamClientImpl;->access$000()Ljava/util/logging/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Writing binary request body: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/fourthline/cling/transport/impl/jetty/StreamClientImpl$HttpContentExchange;->getRequestMessage()Lorg/fourthline/cling/model/message/StreamRequestMessage;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 265
    :cond_4
    invoke-virtual {p0}, Lorg/fourthline/cling/transport/impl/jetty/StreamClientImpl$HttpContentExchange;->getRequestMessage()Lorg/fourthline/cling/model/message/StreamRequestMessage;

    move-result-object v0

    invoke-virtual {v0}, Lorg/fourthline/cling/model/message/StreamRequestMessage;->getContentTypeHeader()Lorg/fourthline/cling/model/message/header/ContentTypeHeader;

    move-result-object v0

    if-nez v0, :cond_5

    .line 266
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Missing content type header in request message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/fourthline/cling/transport/impl/jetty/StreamClientImpl$HttpContentExchange;->requestMessage:Lorg/fourthline/cling/model/message/StreamRequestMessage;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 269
    :cond_5
    invoke-virtual {p0}, Lorg/fourthline/cling/transport/impl/jetty/StreamClientImpl$HttpContentExchange;->getRequestMessage()Lorg/fourthline/cling/model/message/StreamRequestMessage;

    move-result-object v0

    invoke-virtual {v0}, Lorg/fourthline/cling/model/message/StreamRequestMessage;->getContentTypeHeader()Lorg/fourthline/cling/model/message/header/ContentTypeHeader;

    move-result-object v0

    invoke-virtual {v0}, Lorg/fourthline/cling/model/message/header/ContentTypeHeader;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/seamless/util/MimeType;

    .line 271
    invoke-virtual {v0}, Lorg/seamless/util/MimeType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/transport/impl/jetty/StreamClientImpl$HttpContentExchange;->setRequestContentType(Ljava/lang/String;)V

    .line 273
    new-instance v0, Lorg/eclipse/jetty/io/ByteArrayBuffer;

    invoke-virtual {p0}, Lorg/fourthline/cling/transport/impl/jetty/StreamClientImpl$HttpContentExchange;->getRequestMessage()Lorg/fourthline/cling/model/message/StreamRequestMessage;

    move-result-object v1

    invoke-virtual {v1}, Lorg/fourthline/cling/model/message/StreamRequestMessage;->getBodyBytes()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/eclipse/jetty/io/ByteArrayBuffer;-><init>([B)V

    const-string v1, "Content-Length"

    .line 274
    invoke-virtual {v0}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->length()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/fourthline/cling/transport/impl/jetty/StreamClientImpl$HttpContentExchange;->setRequestHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    invoke-virtual {p0, v0}, Lorg/fourthline/cling/transport/impl/jetty/StreamClientImpl$HttpContentExchange;->setRequestContent(Lorg/eclipse/jetty/io/Buffer;)V

    :cond_6
    :goto_2
    return-void
.end method

.method protected applyRequestHeaders()V
    .locals 8

    .line 210
    invoke-virtual {p0}, Lorg/fourthline/cling/transport/impl/jetty/StreamClientImpl$HttpContentExchange;->getRequestMessage()Lorg/fourthline/cling/model/message/StreamRequestMessage;

    move-result-object v0

    invoke-virtual {v0}, Lorg/fourthline/cling/model/message/StreamRequestMessage;->getHeaders()Lorg/fourthline/cling/model/message/UpnpHeaders;

    move-result-object v0

    .line 211
    invoke-static {}, Lorg/fourthline/cling/transport/impl/jetty/StreamClientImpl;->access$000()Ljava/util/logging/Logger;

    move-result-object v1

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 212
    invoke-static {}, Lorg/fourthline/cling/transport/impl/jetty/StreamClientImpl;->access$000()Ljava/util/logging/Logger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Writing headers on HttpContentExchange: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/fourthline/cling/model/message/UpnpHeaders;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 216
    :cond_0
    sget-object v1, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;->USER_AGENT:Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;

    invoke-virtual {v0, v1}, Lorg/fourthline/cling/model/message/UpnpHeaders;->containsKey(Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 217
    sget-object v1, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;->USER_AGENT:Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;

    .line 218
    invoke-virtual {v1}, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;->getHttpName()Ljava/lang/String;

    move-result-object v1

    .line 219
    invoke-virtual {p0}, Lorg/fourthline/cling/transport/impl/jetty/StreamClientImpl$HttpContentExchange;->getConfiguration()Lorg/fourthline/cling/transport/impl/jetty/StreamClientConfigurationImpl;

    move-result-object v2

    .line 220
    invoke-virtual {p0}, Lorg/fourthline/cling/transport/impl/jetty/StreamClientImpl$HttpContentExchange;->getRequestMessage()Lorg/fourthline/cling/model/message/StreamRequestMessage;

    move-result-object v3

    invoke-virtual {v3}, Lorg/fourthline/cling/model/message/StreamRequestMessage;->getUdaMajorVersion()I

    move-result v3

    .line 221
    invoke-virtual {p0}, Lorg/fourthline/cling/transport/impl/jetty/StreamClientImpl$HttpContentExchange;->getRequestMessage()Lorg/fourthline/cling/model/message/StreamRequestMessage;

    move-result-object v4

    invoke-virtual {v4}, Lorg/fourthline/cling/model/message/StreamRequestMessage;->getUdaMinorVersion()I

    move-result v4

    .line 219
    invoke-virtual {v2, v3, v4}, Lorg/fourthline/cling/transport/impl/jetty/StreamClientConfigurationImpl;->getUserAgentValue(II)Ljava/lang/String;

    move-result-object v2

    .line 217
    invoke-virtual {p0, v1, v2}, Lorg/fourthline/cling/transport/impl/jetty/StreamClientImpl$HttpContentExchange;->setRequestHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    :cond_1
    invoke-virtual {v0}, Lorg/fourthline/cling/model/message/UpnpHeaders;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 225
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 226
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 227
    invoke-static {}, Lorg/fourthline/cling/transport/impl/jetty/StreamClientImpl;->access$000()Ljava/util/logging/Logger;

    move-result-object v5

    sget-object v6, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 228
    invoke-static {}, Lorg/fourthline/cling/transport/impl/jetty/StreamClientImpl;->access$000()Ljava/util/logging/Logger;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Setting header \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\': "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 229
    :cond_3
    invoke-virtual {p0, v4, v3}, Lorg/fourthline/cling/transport/impl/jetty/StreamClientImpl$HttpContentExchange;->addRequestHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    return-void
.end method

.method protected applyRequestURLMethod()V
    .locals 4

    .line 196
    invoke-virtual {p0}, Lorg/fourthline/cling/transport/impl/jetty/StreamClientImpl$HttpContentExchange;->getRequestMessage()Lorg/fourthline/cling/model/message/StreamRequestMessage;

    move-result-object v0

    invoke-virtual {v0}, Lorg/fourthline/cling/model/message/StreamRequestMessage;->getOperation()Lorg/fourthline/cling/model/message/UpnpOperation;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/model/message/UpnpRequest;

    .line 197
    invoke-static {}, Lorg/fourthline/cling/transport/impl/jetty/StreamClientImpl;->access$000()Ljava/util/logging/Logger;

    move-result-object v1

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 198
    invoke-static {}, Lorg/fourthline/cling/transport/impl/jetty/StreamClientImpl;->access$000()Ljava/util/logging/Logger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Preparing HTTP request message with method \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    invoke-virtual {v0}, Lorg/fourthline/cling/model/message/UpnpRequest;->getHttpMethodName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\': "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    invoke-virtual {p0}, Lorg/fourthline/cling/transport/impl/jetty/StreamClientImpl$HttpContentExchange;->getRequestMessage()Lorg/fourthline/cling/model/message/StreamRequestMessage;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 198
    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 204
    :cond_0
    invoke-virtual {v0}, Lorg/fourthline/cling/model/message/UpnpRequest;->getURI()Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/fourthline/cling/transport/impl/jetty/StreamClientImpl$HttpContentExchange;->setURL(Ljava/lang/String;)V

    .line 205
    invoke-virtual {v0}, Lorg/fourthline/cling/model/message/UpnpRequest;->getHttpMethodName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/transport/impl/jetty/StreamClientImpl$HttpContentExchange;->setMethod(Ljava/lang/String;)V

    return-void
.end method

.method protected createResponse()Lorg/fourthline/cling/model/message/StreamResponseMessage;
    .locals 7

    .line 282
    new-instance v0, Lorg/fourthline/cling/model/message/UpnpResponse;

    .line 284
    invoke-virtual {p0}, Lorg/fourthline/cling/transport/impl/jetty/StreamClientImpl$HttpContentExchange;->getResponseStatus()I

    move-result v1

    .line 285
    invoke-virtual {p0}, Lorg/fourthline/cling/transport/impl/jetty/StreamClientImpl$HttpContentExchange;->getResponseStatus()I

    move-result v2

    invoke-static {v2}, Lorg/fourthline/cling/model/message/UpnpResponse$Status;->getByStatusCode(I)Lorg/fourthline/cling/model/message/UpnpResponse$Status;

    move-result-object v2

    invoke-virtual {v2}, Lorg/fourthline/cling/model/message/UpnpResponse$Status;->getStatusMsg()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/fourthline/cling/model/message/UpnpResponse;-><init>(ILjava/lang/String;)V

    .line 288
    invoke-static {}, Lorg/fourthline/cling/transport/impl/jetty/StreamClientImpl;->access$000()Ljava/util/logging/Logger;

    move-result-object v1

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 289
    invoke-static {}, Lorg/fourthline/cling/transport/impl/jetty/StreamClientImpl;->access$000()Ljava/util/logging/Logger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received response: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 291
    :cond_0
    new-instance v1, Lorg/fourthline/cling/model/message/StreamResponseMessage;

    invoke-direct {v1, v0}, Lorg/fourthline/cling/model/message/StreamResponseMessage;-><init>(Lorg/fourthline/cling/model/message/UpnpResponse;)V

    .line 294
    new-instance v0, Lorg/fourthline/cling/model/message/UpnpHeaders;

    invoke-direct {v0}, Lorg/fourthline/cling/model/message/UpnpHeaders;-><init>()V

    .line 295
    invoke-virtual {p0}, Lorg/fourthline/cling/transport/impl/jetty/StreamClientImpl$HttpContentExchange;->getResponseFields()Lorg/eclipse/jetty/http/HttpFields;

    move-result-object v2

    .line 296
    invoke-virtual {v2}, Lorg/eclipse/jetty/http/HttpFields;->getFieldNamesCollection()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 297
    invoke-virtual {v2, v4}, Lorg/eclipse/jetty/http/HttpFields;->getValuesCollection(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 298
    invoke-virtual {v0, v4, v6}, Lorg/fourthline/cling/model/message/UpnpHeaders;->add(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 301
    :cond_2
    invoke-virtual {v1, v0}, Lorg/fourthline/cling/model/message/StreamResponseMessage;->setHeaders(Lorg/fourthline/cling/model/message/UpnpHeaders;)V

    .line 304
    invoke-virtual {p0}, Lorg/fourthline/cling/transport/impl/jetty/StreamClientImpl$HttpContentExchange;->getResponseContentBytes()[B

    move-result-object v0

    if-eqz v0, :cond_4

    .line 305
    array-length v2, v0

    if-lez v2, :cond_4

    invoke-virtual {v1}, Lorg/fourthline/cling/model/message/StreamResponseMessage;->isContentTypeMissingOrText()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 307
    invoke-static {}, Lorg/fourthline/cling/transport/impl/jetty/StreamClientImpl;->access$000()Ljava/util/logging/Logger;

    move-result-object v2

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 308
    invoke-static {}, Lorg/fourthline/cling/transport/impl/jetty/StreamClientImpl;->access$000()Ljava/util/logging/Logger;

    move-result-object v2

    const-string v3, "Response contains textual entity body, converting then setting string on message"

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 310
    :cond_3
    :try_start_0
    invoke-virtual {v1, v0}, Lorg/fourthline/cling/model/message/StreamResponseMessage;->setBodyCharacters([B)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 312
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported character encoding: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_4
    if-eqz v0, :cond_6

    .line 315
    array-length v2, v0

    if-lez v2, :cond_6

    .line 317
    invoke-static {}, Lorg/fourthline/cling/transport/impl/jetty/StreamClientImpl;->access$000()Ljava/util/logging/Logger;

    move-result-object v2

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 318
    invoke-static {}, Lorg/fourthline/cling/transport/impl/jetty/StreamClientImpl;->access$000()Ljava/util/logging/Logger;

    move-result-object v2

    const-string v3, "Response contains binary entity body, setting bytes on message"

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 319
    :cond_5
    sget-object v2, Lorg/fourthline/cling/model/message/UpnpMessage$BodyType;->BYTES:Lorg/fourthline/cling/model/message/UpnpMessage$BodyType;

    invoke-virtual {v1, v2, v0}, Lorg/fourthline/cling/model/message/StreamResponseMessage;->setBody(Lorg/fourthline/cling/model/message/UpnpMessage$BodyType;Ljava/lang/Object;)V

    goto :goto_1

    .line 322
    :cond_6
    invoke-static {}, Lorg/fourthline/cling/transport/impl/jetty/StreamClientImpl;->access$000()Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 323
    invoke-static {}, Lorg/fourthline/cling/transport/impl/jetty/StreamClientImpl;->access$000()Ljava/util/logging/Logger;

    move-result-object v0

    const-string v2, "Response did not contain entity body"

    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 326
    :cond_7
    :goto_1
    invoke-static {}, Lorg/fourthline/cling/transport/impl/jetty/StreamClientImpl;->access$000()Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 327
    invoke-static {}, Lorg/fourthline/cling/transport/impl/jetty/StreamClientImpl;->access$000()Ljava/util/logging/Logger;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Response message complete: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    :cond_8
    return-object v1
.end method

.method public getConfiguration()Lorg/fourthline/cling/transport/impl/jetty/StreamClientConfigurationImpl;
    .locals 1

    .line 188
    iget-object v0, p0, Lorg/fourthline/cling/transport/impl/jetty/StreamClientImpl$HttpContentExchange;->configuration:Lorg/fourthline/cling/transport/impl/jetty/StreamClientConfigurationImpl;

    return-object v0
.end method

.method public getRequestMessage()Lorg/fourthline/cling/model/message/StreamRequestMessage;
    .locals 1

    .line 192
    iget-object v0, p0, Lorg/fourthline/cling/transport/impl/jetty/StreamClientImpl$HttpContentExchange;->requestMessage:Lorg/fourthline/cling/model/message/StreamRequestMessage;

    return-object v0
.end method

.method protected onConnectionFailed(Ljava/lang/Throwable;)V
    .locals 4

    .line 179
    invoke-static {}, Lorg/fourthline/cling/transport/impl/jetty/StreamClientImpl;->access$000()Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HTTP connection failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/fourthline/cling/transport/impl/jetty/StreamClientImpl$HttpContentExchange;->requestMessage:Lorg/fourthline/cling/model/message/StreamRequestMessage;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Lorg/seamless/util/Exceptions;->unwrap(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p1

    invoke-virtual {v0, v1, v2, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method protected onException(Ljava/lang/Throwable;)V
    .locals 4

    .line 184
    invoke-static {}, Lorg/fourthline/cling/transport/impl/jetty/StreamClientImpl;->access$000()Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HTTP request failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/fourthline/cling/transport/impl/jetty/StreamClientImpl$HttpContentExchange;->requestMessage:Lorg/fourthline/cling/model/message/StreamRequestMessage;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Lorg/seamless/util/Exceptions;->unwrap(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p1

    invoke-virtual {v0, v1, v2, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
