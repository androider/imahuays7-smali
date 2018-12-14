.class public Lorg/fourthline/cling/transport/impl/StreamClientImpl;
.super Ljava/lang/Object;
.source "StreamClientImpl.java"

# interfaces
.implements Lorg/fourthline/cling/transport/spi/StreamClient;


# static fields
.field static final HACK_STREAM_HANDLER_SYSTEM_PROPERTY:Ljava/lang/String; = "hackStreamHandlerProperty"

.field private static final log:Ljava/util/logging/Logger;


# instance fields
.field protected final configuration:Lorg/fourthline/cling/transport/impl/StreamClientConfigurationImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 72
    const-class v0, Lorg/fourthline/cling/transport/spi/StreamClient;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/fourthline/cling/transport/impl/StreamClientImpl;->log:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/transport/impl/StreamClientConfigurationImpl;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/transport/spi/InitializationException;
        }
    .end annotation

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-object p1, p0, Lorg/fourthline/cling/transport/impl/StreamClientImpl;->configuration:Lorg/fourthline/cling/transport/impl/StreamClientConfigurationImpl;

    .line 79
    sget-boolean v0, Lorg/fourthline/cling/model/ModelUtil;->ANDROID_EMULATOR:Z

    if-nez v0, :cond_2

    sget-boolean v0, Lorg/fourthline/cling/model/ModelUtil;->ANDROID_RUNTIME:Z

    if-eqz v0, :cond_0

    goto :goto_1

    .line 98
    :cond_0
    sget-object v0, Lorg/fourthline/cling/transport/impl/StreamClientImpl;->log:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Using persistent HTTP stream client connections: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/fourthline/cling/transport/impl/StreamClientConfigurationImpl;->isUsePersistentConnections()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    const-string v0, "http.keepAlive"

    .line 99
    invoke-virtual {p1}, Lorg/fourthline/cling/transport/impl/StreamClientConfigurationImpl;->isUsePersistentConnections()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string p1, "hackStreamHandlerProperty"

    .line 102
    invoke-static {p1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    .line 103
    sget-object p1, Lorg/fourthline/cling/transport/impl/StreamClientImpl;->log:Ljava/util/logging/Logger;

    const-string v0, "Setting custom static URLStreamHandlerFactory to work around bad JDK defaults"

    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    :try_start_0
    const-string p1, "org.fourthline.cling.transport.impl.FixedSunURLStreamHandler"

    .line 108
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    .line 110
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/net/URLStreamHandlerFactory;

    .line 107
    invoke-static {p1}, Ljava/net/URL;->setURLStreamHandlerFactory(Ljava/net/URLStreamHandlerFactory;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const-string p1, "hackStreamHandlerProperty"

    const-string v0, "alreadyWorkedAroundTheEvilJDK"

    .line 118
    invoke-static {p1, v0}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 113
    :catch_0
    new-instance p1, Lorg/fourthline/cling/transport/spi/InitializationException;

    const-string v0, "Failed to set modified URLStreamHandlerFactory in this environment. Can\'t use bundled default client based on HTTPURLConnection, see manual."

    invoke-direct {p1, v0}, Lorg/fourthline/cling/transport/spi/InitializationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void

    .line 92
    :cond_2
    :goto_1
    new-instance p1, Lorg/fourthline/cling/transport/spi/InitializationException;

    const-string v0, "This client does not work on Android. The design of HttpURLConnection is broken, we can not add additional \'permitted\' HTTP methods. Read the Cling manual."

    invoke-direct {p1, v0}, Lorg/fourthline/cling/transport/spi/InitializationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method protected applyHeaders(Ljava/net/HttpURLConnection;Lorg/seamless/http/Headers;)V
    .locals 7

    .line 221
    sget-object v0, Lorg/fourthline/cling/transport/impl/StreamClientImpl;->log:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Writing headers on HttpURLConnection: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lorg/seamless/http/Headers;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 222
    invoke-virtual {p2}, Lorg/seamless/http/Headers;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 223
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 224
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 225
    sget-object v4, Lorg/fourthline/cling/transport/impl/StreamClientImpl;->log:Ljava/util/logging/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Setting header \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\': "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 226
    invoke-virtual {p1, v3, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected applyRequestBody(Ljava/net/HttpURLConnection;Lorg/fourthline/cling/model/message/StreamRequestMessage;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 233
    invoke-virtual {p2}, Lorg/fourthline/cling/model/message/StreamRequestMessage;->hasBody()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    .line 234
    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 240
    invoke-virtual {p2}, Lorg/fourthline/cling/model/message/StreamRequestMessage;->getBodyType()Lorg/fourthline/cling/model/message/UpnpMessage$BodyType;

    move-result-object v0

    sget-object v1, Lorg/fourthline/cling/model/message/UpnpMessage$BodyType;->STRING:Lorg/fourthline/cling/model/message/UpnpMessage$BodyType;

    invoke-virtual {v0, v1}, Lorg/fourthline/cling/model/message/UpnpMessage$BodyType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 241
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-virtual {p2}, Lorg/fourthline/cling/model/message/StreamRequestMessage;->getBodyString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lorg/seamless/util/io/IO;->writeUTF8(Ljava/io/OutputStream;Ljava/lang/String;)V

    goto :goto_0

    .line 242
    :cond_0
    invoke-virtual {p2}, Lorg/fourthline/cling/model/message/StreamRequestMessage;->getBodyType()Lorg/fourthline/cling/model/message/UpnpMessage$BodyType;

    move-result-object v0

    sget-object v1, Lorg/fourthline/cling/model/message/UpnpMessage$BodyType;->BYTES:Lorg/fourthline/cling/model/message/UpnpMessage$BodyType;

    invoke-virtual {v0, v1}, Lorg/fourthline/cling/model/message/UpnpMessage$BodyType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 243
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-virtual {p2}, Lorg/fourthline/cling/model/message/StreamRequestMessage;->getBodyBytes()[B

    move-result-object p2

    invoke-static {v0, p2}, Lorg/seamless/util/io/IO;->writeBytes(Ljava/io/OutputStream;[B)V

    .line 245
    :cond_1
    :goto_0
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    return-void

    :cond_2
    const/4 p2, 0x0

    .line 236
    invoke-virtual {p1, p2}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    return-void
.end method

.method protected applyRequestProperties(Ljava/net/HttpURLConnection;Lorg/fourthline/cling/model/message/StreamRequestMessage;)V
    .locals 4

    const/4 v0, 0x0

    .line 202
    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 209
    invoke-virtual {p2}, Lorg/fourthline/cling/model/message/StreamRequestMessage;->getHeaders()Lorg/fourthline/cling/model/message/UpnpHeaders;

    move-result-object v0

    sget-object v1, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;->USER_AGENT:Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;

    invoke-virtual {v0, v1}, Lorg/fourthline/cling/model/message/UpnpHeaders;->containsKey(Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 210
    sget-object v0, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;->USER_AGENT:Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;

    .line 211
    invoke-virtual {v0}, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;->getHttpName()Ljava/lang/String;

    move-result-object v0

    .line 212
    invoke-virtual {p0}, Lorg/fourthline/cling/transport/impl/StreamClientImpl;->getConfiguration()Lorg/fourthline/cling/transport/impl/StreamClientConfigurationImpl;

    move-result-object v1

    invoke-virtual {p2}, Lorg/fourthline/cling/model/message/StreamRequestMessage;->getUdaMajorVersion()I

    move-result v2

    invoke-virtual {p2}, Lorg/fourthline/cling/model/message/StreamRequestMessage;->getUdaMinorVersion()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/fourthline/cling/transport/impl/StreamClientConfigurationImpl;->getUserAgentValue(II)Ljava/lang/String;

    move-result-object v1

    .line 210
    invoke-virtual {p1, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    :cond_0
    invoke-virtual {p2}, Lorg/fourthline/cling/model/message/StreamRequestMessage;->getHeaders()Lorg/fourthline/cling/model/message/UpnpHeaders;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/fourthline/cling/transport/impl/StreamClientImpl;->applyHeaders(Ljava/net/HttpURLConnection;Lorg/seamless/http/Headers;)V

    return-void
.end method

.method protected createResponse(Ljava/net/HttpURLConnection;Ljava/io/InputStream;)Lorg/fourthline/cling/model/message/StreamResponseMessage;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 250
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 251
    sget-object p2, Lorg/fourthline/cling/transport/impl/StreamClientImpl;->log:Ljava/util/logging/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received an invalid HTTP response: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 252
    sget-object p1, Lorg/fourthline/cling/transport/impl/StreamClientImpl;->log:Ljava/util/logging/Logger;

    const-string p2, "Is your Cling-based server sending connection heartbeats with RemoteClientInfo#isRequestCancelled? This client can\'t handle heartbeats, read the manual."

    invoke-virtual {p1, p2}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    return-object v1

    .line 259
    :cond_0
    new-instance v0, Lorg/fourthline/cling/model/message/UpnpResponse;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lorg/fourthline/cling/model/message/UpnpResponse;-><init>(ILjava/lang/String;)V

    .line 261
    sget-object v2, Lorg/fourthline/cling/transport/impl/StreamClientImpl;->log:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received response: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 264
    new-instance v2, Lorg/fourthline/cling/model/message/StreamResponseMessage;

    invoke-direct {v2, v0}, Lorg/fourthline/cling/model/message/StreamResponseMessage;-><init>(Lorg/fourthline/cling/model/message/UpnpResponse;)V

    .line 267
    new-instance v0, Lorg/fourthline/cling/model/message/UpnpHeaders;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/fourthline/cling/model/message/UpnpHeaders;-><init>(Ljava/util/Map;)V

    invoke-virtual {v2, v0}, Lorg/fourthline/cling/model/message/StreamResponseMessage;->setHeaders(Lorg/fourthline/cling/model/message/UpnpHeaders;)V

    if-eqz p2, :cond_2

    .line 274
    :try_start_0
    invoke-static {p2}, Lorg/seamless/util/io/IO;->readBytes(Ljava/io/InputStream;)[B

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    if-eqz p2, :cond_1

    .line 277
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V

    :cond_1
    throw p1

    :cond_2
    :goto_0
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/io/InputStream;->close()V

    :cond_3
    if-eqz v1, :cond_4

    .line 280
    array-length p1, v1

    if-lez p1, :cond_4

    invoke-virtual {v2}, Lorg/fourthline/cling/model/message/StreamResponseMessage;->isContentTypeMissingOrText()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 282
    sget-object p1, Lorg/fourthline/cling/transport/impl/StreamClientImpl;->log:Ljava/util/logging/Logger;

    const-string p2, "Response contains textual entity body, converting then setting string on message"

    invoke-virtual {p1, p2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 283
    invoke-virtual {v2, v1}, Lorg/fourthline/cling/model/message/StreamResponseMessage;->setBodyCharacters([B)V

    goto :goto_1

    :cond_4
    if-eqz v1, :cond_5

    .line 285
    array-length p1, v1

    if-lez p1, :cond_5

    .line 287
    sget-object p1, Lorg/fourthline/cling/transport/impl/StreamClientImpl;->log:Ljava/util/logging/Logger;

    const-string p2, "Response contains binary entity body, setting bytes on message"

    invoke-virtual {p1, p2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 288
    sget-object p1, Lorg/fourthline/cling/model/message/UpnpMessage$BodyType;->BYTES:Lorg/fourthline/cling/model/message/UpnpMessage$BodyType;

    invoke-virtual {v2, p1, v1}, Lorg/fourthline/cling/model/message/StreamResponseMessage;->setBody(Lorg/fourthline/cling/model/message/UpnpMessage$BodyType;Ljava/lang/Object;)V

    goto :goto_1

    .line 291
    :cond_5
    sget-object p1, Lorg/fourthline/cling/transport/impl/StreamClientImpl;->log:Ljava/util/logging/Logger;

    const-string p2, "Response did not contain entity body"

    invoke-virtual {p1, p2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 294
    :goto_1
    sget-object p1, Lorg/fourthline/cling/transport/impl/StreamClientImpl;->log:Ljava/util/logging/Logger;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Response message complete: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    return-object v2
.end method

.method public getConfiguration()Lorg/fourthline/cling/transport/impl/StreamClientConfigurationImpl;
    .locals 1

    .line 124
    iget-object v0, p0, Lorg/fourthline/cling/transport/impl/StreamClientImpl;->configuration:Lorg/fourthline/cling/transport/impl/StreamClientConfigurationImpl;

    return-object v0
.end method

.method public bridge synthetic getConfiguration()Lorg/fourthline/cling/transport/spi/StreamClientConfiguration;
    .locals 1

    .line 68
    invoke-virtual {p0}, Lorg/fourthline/cling/transport/impl/StreamClientImpl;->getConfiguration()Lorg/fourthline/cling/transport/impl/StreamClientConfigurationImpl;

    move-result-object v0

    return-object v0
.end method

.method public sendRequest(Lorg/fourthline/cling/model/message/StreamRequestMessage;)Lorg/fourthline/cling/model/message/StreamResponseMessage;
    .locals 7

    .line 130
    invoke-virtual {p1}, Lorg/fourthline/cling/model/message/StreamRequestMessage;->getOperation()Lorg/fourthline/cling/model/message/UpnpOperation;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/model/message/UpnpRequest;

    .line 131
    sget-object v1, Lorg/fourthline/cling/transport/impl/StreamClientImpl;->log:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Preparing HTTP request message with method \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/fourthline/cling/model/message/UpnpRequest;->getHttpMethodName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\': "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 133
    invoke-virtual {v0}, Lorg/fourthline/cling/model/message/UpnpRequest;->getURI()Ljava/net/URI;

    move-result-object v1

    invoke-static {v1}, Lorg/seamless/util/URIUtil;->toURL(Ljava/net/URI;)Ljava/net/URL;

    move-result-object v1

    const/4 v2, 0x0

    .line 139
    :try_start_0
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/net/ProtocolException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 141
    :try_start_1
    invoke-virtual {v0}, Lorg/fourthline/cling/model/message/UpnpRequest;->getHttpMethodName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 144
    iget-object v0, p0, Lorg/fourthline/cling/transport/impl/StreamClientImpl;->configuration:Lorg/fourthline/cling/transport/impl/StreamClientConfigurationImpl;

    invoke-virtual {v0}, Lorg/fourthline/cling/transport/impl/StreamClientConfigurationImpl;->getTimeoutSeconds()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    invoke-virtual {v1, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 145
    iget-object v0, p0, Lorg/fourthline/cling/transport/impl/StreamClientImpl;->configuration:Lorg/fourthline/cling/transport/impl/StreamClientConfigurationImpl;

    invoke-virtual {v0}, Lorg/fourthline/cling/transport/impl/StreamClientConfigurationImpl;->getTimeoutSeconds()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    invoke-virtual {v1, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 147
    invoke-virtual {p0, v1, p1}, Lorg/fourthline/cling/transport/impl/StreamClientImpl;->applyRequestProperties(Ljava/net/HttpURLConnection;Lorg/fourthline/cling/model/message/StreamRequestMessage;)V

    .line 148
    invoke-virtual {p0, v1, p1}, Lorg/fourthline/cling/transport/impl/StreamClientImpl;->applyRequestBody(Ljava/net/HttpURLConnection;Lorg/fourthline/cling/model/message/StreamRequestMessage;)V

    .line 150
    sget-object v0, Lorg/fourthline/cling/transport/impl/StreamClientImpl;->log:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Sending HTTP request: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 151
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 152
    invoke-virtual {p0, v1, v0}, Lorg/fourthline/cling/transport/impl/StreamClientImpl;->createResponse(Ljava/net/HttpURLConnection;Ljava/io/InputStream;)Lorg/fourthline/cling/model/message/StreamResponseMessage;

    move-result-object v0
    :try_end_1
    .catch Ljava/net/ProtocolException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v1, :cond_0

    .line 190
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_0
    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto/16 :goto_2

    :catchall_0
    move-exception p1

    move-object v1, v2

    goto/16 :goto_3

    :catch_3
    move-exception v0

    move-object v1, v2

    .line 183
    :goto_0
    :try_start_2
    sget-object v3, Lorg/fourthline/cling/transport/impl/StreamClientImpl;->log:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "HTTP request failed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0}, Lorg/seamless/util/Exceptions;->unwrap(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v3, v4, p1, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v1, :cond_1

    .line 190
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_1
    return-object v2

    :catch_4
    move-exception v0

    move-object v1, v2

    :goto_1
    if-nez v1, :cond_3

    .line 160
    :try_start_3
    sget-object v3, Lorg/fourthline/cling/transport/impl/StreamClientImpl;->log:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "HTTP request failed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0}, Lorg/seamless/util/Exceptions;->unwrap(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v3, v4, p1, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v1, :cond_2

    .line 190
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_2
    return-object v2

    .line 164
    :cond_3
    :try_start_4
    instance-of v3, v0, Ljava/net/SocketTimeoutException;

    if-eqz v3, :cond_5

    .line 165
    sget-object v0, Lorg/fourthline/cling/transport/impl/StreamClientImpl;->log:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Timeout of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    invoke-virtual {p0}, Lorg/fourthline/cling/transport/impl/StreamClientImpl;->getConfiguration()Lorg/fourthline/cling/transport/impl/StreamClientConfigurationImpl;

    move-result-object v4

    invoke-virtual {v4}, Lorg/fourthline/cling/transport/impl/StreamClientConfigurationImpl;->getTimeoutSeconds()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " seconds while waiting for HTTP request to complete, aborting: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 165
    invoke-virtual {v0, p1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v1, :cond_4

    .line 190
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_4
    return-object v2

    .line 172
    :cond_5
    :try_start_5
    sget-object p1, Lorg/fourthline/cling/transport/impl/StreamClientImpl;->log:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {p1, v3}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 173
    sget-object p1, Lorg/fourthline/cling/transport/impl/StreamClientImpl;->log:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception occurred, trying to read the error stream: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lorg/seamless/util/Exceptions;->unwrap(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 175
    :cond_6
    :try_start_6
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object p1

    .line 176
    invoke-virtual {p0, v1, p1}, Lorg/fourthline/cling/transport/impl/StreamClientImpl;->createResponse(Ljava/net/HttpURLConnection;Ljava/io/InputStream;)Lorg/fourthline/cling/model/message/StreamResponseMessage;

    move-result-object p1
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-eqz v1, :cond_7

    .line 190
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_7
    return-object p1

    :catch_5
    move-exception p1

    .line 178
    :try_start_7
    sget-object v0, Lorg/fourthline/cling/transport/impl/StreamClientImpl;->log:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v3}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 179
    sget-object v0, Lorg/fourthline/cling/transport/impl/StreamClientImpl;->log:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not read error stream: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :cond_8
    if-eqz v1, :cond_9

    .line 190
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_9
    return-object v2

    :catch_6
    move-exception v0

    move-object v1, v2

    .line 155
    :goto_2
    :try_start_8
    sget-object v3, Lorg/fourthline/cling/transport/impl/StreamClientImpl;->log:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "HTTP request failed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0}, Lorg/seamless/util/Exceptions;->unwrap(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v3, v4, p1, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    if-eqz v1, :cond_a

    .line 190
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_a
    return-object v2

    :catchall_1
    move-exception p1

    :goto_3
    if-eqz v1, :cond_b

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_b
    throw p1
.end method

.method public stop()V
    .locals 0

    return-void
.end method
