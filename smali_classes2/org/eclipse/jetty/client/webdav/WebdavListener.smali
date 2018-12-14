.class public Lorg/eclipse/jetty/client/webdav/WebdavListener;
.super Lorg/eclipse/jetty/client/HttpEventListenerWrapper;
.source "WebdavListener.java"


# static fields
.field private static final LOG:Lorg/eclipse/jetty/util/log/Logger;


# instance fields
.field private _destination:Lorg/eclipse/jetty/client/HttpDestination;

.field private _exchange:Lorg/eclipse/jetty/client/HttpExchange;

.field private _needIntercept:Z

.field private _requestComplete:Z

.field private _responseComplete:Z

.field private _webdavEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 44
    const-class v0, Lorg/eclipse/jetty/client/webdav/WebdavListener;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/client/webdav/WebdavListener;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jetty/client/HttpDestination;Lorg/eclipse/jetty/client/HttpExchange;)V
    .locals 2

    .line 57
    invoke-virtual {p2}, Lorg/eclipse/jetty/client/HttpExchange;->getEventListener()Lorg/eclipse/jetty/client/HttpEventListener;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lorg/eclipse/jetty/client/HttpEventListenerWrapper;-><init>(Lorg/eclipse/jetty/client/HttpEventListener;Z)V

    .line 58
    iput-object p1, p0, Lorg/eclipse/jetty/client/webdav/WebdavListener;->_destination:Lorg/eclipse/jetty/client/HttpDestination;

    .line 59
    iput-object p2, p0, Lorg/eclipse/jetty/client/webdav/WebdavListener;->_exchange:Lorg/eclipse/jetty/client/HttpExchange;

    const-string p1, "PUT"

    .line 62
    iget-object p2, p0, Lorg/eclipse/jetty/client/webdav/WebdavListener;->_exchange:Lorg/eclipse/jetty/client/HttpExchange;

    invoke-virtual {p2}, Lorg/eclipse/jetty/client/HttpExchange;->getMethod()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 64
    iput-boolean v1, p0, Lorg/eclipse/jetty/client/webdav/WebdavListener;->_webdavEnabled:Z

    :cond_0
    return-void
.end method

.method private checkExists(Ljava/lang/String;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 254
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "have failed miserably"

    invoke-virtual {p1, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return v0

    .line 258
    :cond_0
    new-instance v1, Lorg/eclipse/jetty/client/webdav/PropfindExchange;

    invoke-direct {v1}, Lorg/eclipse/jetty/client/webdav/PropfindExchange;-><init>()V

    .line 259
    iget-object v2, p0, Lorg/eclipse/jetty/client/webdav/WebdavListener;->_exchange:Lorg/eclipse/jetty/client/HttpExchange;

    invoke-virtual {v2}, Lorg/eclipse/jetty/client/HttpExchange;->getAddress()Lorg/eclipse/jetty/client/Address;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/eclipse/jetty/client/webdav/PropfindExchange;->setAddress(Lorg/eclipse/jetty/client/Address;)V

    const-string v2, "GET"

    .line 260
    invoke-virtual {v1, v2}, Lorg/eclipse/jetty/client/webdav/PropfindExchange;->setMethod(Ljava/lang/String;)V

    .line 261
    iget-object v2, p0, Lorg/eclipse/jetty/client/webdav/WebdavListener;->_exchange:Lorg/eclipse/jetty/client/HttpExchange;

    invoke-virtual {v2}, Lorg/eclipse/jetty/client/HttpExchange;->getScheme()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/eclipse/jetty/client/webdav/PropfindExchange;->setScheme(Lorg/eclipse/jetty/io/Buffer;)V

    .line 262
    new-instance v2, Lorg/eclipse/jetty/client/security/SecurityListener;

    iget-object v3, p0, Lorg/eclipse/jetty/client/webdav/WebdavListener;->_destination:Lorg/eclipse/jetty/client/HttpDestination;

    invoke-direct {v2, v3, v1}, Lorg/eclipse/jetty/client/security/SecurityListener;-><init>(Lorg/eclipse/jetty/client/HttpDestination;Lorg/eclipse/jetty/client/HttpExchange;)V

    invoke-virtual {v1, v2}, Lorg/eclipse/jetty/client/webdav/PropfindExchange;->setEventListener(Lorg/eclipse/jetty/client/HttpEventListener;)V

    .line 263
    invoke-virtual {v1, v0}, Lorg/eclipse/jetty/client/webdav/PropfindExchange;->setConfigureListeners(Z)V

    .line 264
    invoke-virtual {v1, p1}, Lorg/eclipse/jetty/client/webdav/PropfindExchange;->setRequestURI(Ljava/lang/String;)V

    .line 266
    iget-object p1, p0, Lorg/eclipse/jetty/client/webdav/WebdavListener;->_destination:Lorg/eclipse/jetty/client/HttpDestination;

    invoke-virtual {p1, v1}, Lorg/eclipse/jetty/client/HttpDestination;->send(Lorg/eclipse/jetty/client/HttpExchange;)V

    .line 270
    :try_start_0
    invoke-virtual {v1}, Lorg/eclipse/jetty/client/webdav/PropfindExchange;->waitForDone()I

    .line 272
    invoke-virtual {v1}, Lorg/eclipse/jetty/client/webdav/PropfindExchange;->exists()Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 276
    sget-object v1, Lorg/eclipse/jetty/client/webdav/WebdavListener;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v1, p1}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    return v0
.end method

.method private checkWebdavSupported()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 309
    new-instance v0, Lorg/eclipse/jetty/client/webdav/WebdavSupportedExchange;

    invoke-direct {v0}, Lorg/eclipse/jetty/client/webdav/WebdavSupportedExchange;-><init>()V

    .line 310
    iget-object v1, p0, Lorg/eclipse/jetty/client/webdav/WebdavListener;->_exchange:Lorg/eclipse/jetty/client/HttpExchange;

    invoke-virtual {v1}, Lorg/eclipse/jetty/client/HttpExchange;->getAddress()Lorg/eclipse/jetty/client/Address;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/client/webdav/WebdavSupportedExchange;->setAddress(Lorg/eclipse/jetty/client/Address;)V

    const-string v1, "OPTIONS"

    .line 311
    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/client/webdav/WebdavSupportedExchange;->setMethod(Ljava/lang/String;)V

    .line 312
    iget-object v1, p0, Lorg/eclipse/jetty/client/webdav/WebdavListener;->_exchange:Lorg/eclipse/jetty/client/HttpExchange;

    invoke-virtual {v1}, Lorg/eclipse/jetty/client/HttpExchange;->getScheme()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/client/webdav/WebdavSupportedExchange;->setScheme(Lorg/eclipse/jetty/io/Buffer;)V

    .line 313
    new-instance v1, Lorg/eclipse/jetty/client/security/SecurityListener;

    iget-object v2, p0, Lorg/eclipse/jetty/client/webdav/WebdavListener;->_destination:Lorg/eclipse/jetty/client/HttpDestination;

    invoke-direct {v1, v2, v0}, Lorg/eclipse/jetty/client/security/SecurityListener;-><init>(Lorg/eclipse/jetty/client/HttpDestination;Lorg/eclipse/jetty/client/HttpExchange;)V

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/client/webdav/WebdavSupportedExchange;->setEventListener(Lorg/eclipse/jetty/client/HttpEventListener;)V

    const/4 v1, 0x0

    .line 314
    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/client/webdav/WebdavSupportedExchange;->setConfigureListeners(Z)V

    .line 315
    iget-object v2, p0, Lorg/eclipse/jetty/client/webdav/WebdavListener;->_exchange:Lorg/eclipse/jetty/client/HttpExchange;

    invoke-virtual {v2}, Lorg/eclipse/jetty/client/HttpExchange;->getURI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/eclipse/jetty/client/webdav/WebdavSupportedExchange;->setRequestURI(Ljava/lang/String;)V

    .line 317
    iget-object v2, p0, Lorg/eclipse/jetty/client/webdav/WebdavListener;->_destination:Lorg/eclipse/jetty/client/HttpDestination;

    invoke-virtual {v2, v0}, Lorg/eclipse/jetty/client/HttpDestination;->send(Lorg/eclipse/jetty/client/HttpExchange;)V

    .line 321
    :try_start_0
    invoke-virtual {v0}, Lorg/eclipse/jetty/client/webdav/WebdavSupportedExchange;->waitTilCompletion()V

    .line 322
    invoke-virtual {v0}, Lorg/eclipse/jetty/client/webdav/WebdavSupportedExchange;->isWebdavSupported()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 326
    sget-object v2, Lorg/eclipse/jetty/client/webdav/WebdavListener;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v2, v0}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    return v1
.end method

.method private makeCollection(Ljava/lang/String;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 283
    new-instance v0, Lorg/eclipse/jetty/client/webdav/MkcolExchange;

    invoke-direct {v0}, Lorg/eclipse/jetty/client/webdav/MkcolExchange;-><init>()V

    .line 284
    iget-object v1, p0, Lorg/eclipse/jetty/client/webdav/WebdavListener;->_exchange:Lorg/eclipse/jetty/client/HttpExchange;

    invoke-virtual {v1}, Lorg/eclipse/jetty/client/HttpExchange;->getAddress()Lorg/eclipse/jetty/client/Address;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/client/webdav/MkcolExchange;->setAddress(Lorg/eclipse/jetty/client/Address;)V

    .line 285
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MKCOL "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " HTTP/1.1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/client/webdav/MkcolExchange;->setMethod(Ljava/lang/String;)V

    .line 286
    iget-object v1, p0, Lorg/eclipse/jetty/client/webdav/WebdavListener;->_exchange:Lorg/eclipse/jetty/client/HttpExchange;

    invoke-virtual {v1}, Lorg/eclipse/jetty/client/HttpExchange;->getScheme()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/client/webdav/MkcolExchange;->setScheme(Lorg/eclipse/jetty/io/Buffer;)V

    .line 287
    new-instance v1, Lorg/eclipse/jetty/client/security/SecurityListener;

    iget-object v2, p0, Lorg/eclipse/jetty/client/webdav/WebdavListener;->_destination:Lorg/eclipse/jetty/client/HttpDestination;

    invoke-direct {v1, v2, v0}, Lorg/eclipse/jetty/client/security/SecurityListener;-><init>(Lorg/eclipse/jetty/client/HttpDestination;Lorg/eclipse/jetty/client/HttpExchange;)V

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/client/webdav/MkcolExchange;->setEventListener(Lorg/eclipse/jetty/client/HttpEventListener;)V

    const/4 v1, 0x0

    .line 288
    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/client/webdav/MkcolExchange;->setConfigureListeners(Z)V

    .line 289
    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/client/webdav/MkcolExchange;->setRequestURI(Ljava/lang/String;)V

    .line 291
    iget-object p1, p0, Lorg/eclipse/jetty/client/webdav/WebdavListener;->_destination:Lorg/eclipse/jetty/client/HttpDestination;

    invoke-virtual {p1, v0}, Lorg/eclipse/jetty/client/HttpDestination;->send(Lorg/eclipse/jetty/client/HttpExchange;)V

    .line 295
    :try_start_0
    invoke-virtual {v0}, Lorg/eclipse/jetty/client/webdav/MkcolExchange;->waitForDone()I

    .line 297
    invoke-virtual {v0}, Lorg/eclipse/jetty/client/webdav/MkcolExchange;->exists()Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 301
    sget-object v0, Lorg/eclipse/jetty/client/webdav/WebdavListener;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v0, p1}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    return v1
.end method

.method private resolveCollectionIssues()Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 220
    iget-object v0, p0, Lorg/eclipse/jetty/client/webdav/WebdavListener;->_exchange:Lorg/eclipse/jetty/client/HttpExchange;

    invoke-virtual {v0}, Lorg/eclipse/jetty/client/HttpExchange;->getURI()Ljava/lang/String;

    move-result-object v0

    .line 221
    iget-object v1, p0, Lorg/eclipse/jetty/client/webdav/WebdavListener;->_exchange:Lorg/eclipse/jetty/client/HttpExchange;

    invoke-virtual {v1}, Lorg/eclipse/jetty/client/HttpExchange;->getURI()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 222
    array-length v2, v1

    .line 225
    invoke-static {v0}, Lorg/eclipse/jetty/util/URIUtil;->parentPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-eqz v0, :cond_0

    .line 226
    invoke-direct {p0, v0}, Lorg/eclipse/jetty/client/webdav/WebdavListener;->checkExists(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    add-int/lit8 v4, v4, 0x1

    .line 229
    invoke-static {v0}, Lorg/eclipse/jetty/util/URIUtil;->parentPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 233
    :cond_0
    invoke-direct {p0}, Lorg/eclipse/jetty/client/webdav/WebdavListener;->checkWebdavSupported()Z

    move-result v5

    if-eqz v5, :cond_2

    :goto_1
    const/4 v3, 0x1

    if-lez v4, :cond_1

    .line 237
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-int v6, v2, v4

    sub-int/2addr v6, v3

    aget-object v3, v1, v6

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/eclipse/jetty/client/webdav/WebdavListener;->makeCollection(Ljava/lang/String;)Z

    .line 238
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v0, v1, v6

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    :cond_1
    return v3

    :cond_2
    return v3
.end method


# virtual methods
.method public onRequestComplete()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 163
    iput-boolean v0, p0, Lorg/eclipse/jetty/client/webdav/WebdavListener;->_requestComplete:Z

    .line 164
    iget-boolean v1, p0, Lorg/eclipse/jetty/client/webdav/WebdavListener;->_needIntercept:Z

    if-eqz v1, :cond_3

    .line 166
    iget-boolean v1, p0, Lorg/eclipse/jetty/client/webdav/WebdavListener;->_requestComplete:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lorg/eclipse/jetty/client/webdav/WebdavListener;->_responseComplete:Z

    if-eqz v1, :cond_1

    .line 171
    :try_start_0
    invoke-direct {p0}, Lorg/eclipse/jetty/client/webdav/WebdavListener;->resolveCollectionIssues()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 173
    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/client/webdav/WebdavListener;->setDelegatingRequests(Z)V

    .line 174
    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/client/webdav/WebdavListener;->setDelegatingResponses(Z)V

    .line 175
    iput-boolean v2, p0, Lorg/eclipse/jetty/client/webdav/WebdavListener;->_requestComplete:Z

    .line 176
    iput-boolean v2, p0, Lorg/eclipse/jetty/client/webdav/WebdavListener;->_responseComplete:Z

    .line 177
    iget-object v0, p0, Lorg/eclipse/jetty/client/webdav/WebdavListener;->_destination:Lorg/eclipse/jetty/client/HttpDestination;

    iget-object v1, p0, Lorg/eclipse/jetty/client/webdav/WebdavListener;->_exchange:Lorg/eclipse/jetty/client/HttpExchange;

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/client/HttpDestination;->resend(Lorg/eclipse/jetty/client/HttpExchange;)V

    goto :goto_0

    .line 182
    :cond_0
    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/client/webdav/WebdavListener;->setDelegatingRequests(Z)V

    .line 183
    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/client/webdav/WebdavListener;->setDelegatingResponses(Z)V

    .line 184
    invoke-super {p0}, Lorg/eclipse/jetty/client/HttpEventListenerWrapper;->onRequestComplete()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 189
    :catch_0
    sget-object v0, Lorg/eclipse/jetty/client/webdav/WebdavListener;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v1, "WebdavListener:Complete:IOException: might not be dealing with dav server, delegate"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 190
    invoke-super {p0}, Lorg/eclipse/jetty/client/HttpEventListenerWrapper;->onRequestComplete()V

    goto :goto_0

    .line 195
    :cond_1
    sget-object v0, Lorg/eclipse/jetty/client/webdav/WebdavListener;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v0}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 196
    sget-object v0, Lorg/eclipse/jetty/client/webdav/WebdavListener;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v1, "WebdavListener:Not ready, calling super"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 197
    :cond_2
    invoke-super {p0}, Lorg/eclipse/jetty/client/HttpEventListenerWrapper;->onRequestComplete()V

    goto :goto_0

    .line 202
    :cond_3
    invoke-super {p0}, Lorg/eclipse/jetty/client/HttpEventListenerWrapper;->onRequestComplete()V

    :goto_0
    return-void
.end method

.method public onResponseComplete()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 114
    iput-boolean v0, p0, Lorg/eclipse/jetty/client/webdav/WebdavListener;->_responseComplete:Z

    .line 115
    iget-boolean v1, p0, Lorg/eclipse/jetty/client/webdav/WebdavListener;->_needIntercept:Z

    if-eqz v1, :cond_3

    .line 117
    iget-boolean v1, p0, Lorg/eclipse/jetty/client/webdav/WebdavListener;->_requestComplete:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lorg/eclipse/jetty/client/webdav/WebdavListener;->_responseComplete:Z

    if-eqz v1, :cond_1

    .line 122
    :try_start_0
    invoke-direct {p0}, Lorg/eclipse/jetty/client/webdav/WebdavListener;->resolveCollectionIssues()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 124
    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/client/webdav/WebdavListener;->setDelegatingRequests(Z)V

    .line 125
    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/client/webdav/WebdavListener;->setDelegatingResponses(Z)V

    .line 126
    iput-boolean v2, p0, Lorg/eclipse/jetty/client/webdav/WebdavListener;->_requestComplete:Z

    .line 127
    iput-boolean v2, p0, Lorg/eclipse/jetty/client/webdav/WebdavListener;->_responseComplete:Z

    .line 128
    iget-object v0, p0, Lorg/eclipse/jetty/client/webdav/WebdavListener;->_destination:Lorg/eclipse/jetty/client/HttpDestination;

    iget-object v1, p0, Lorg/eclipse/jetty/client/webdav/WebdavListener;->_exchange:Lorg/eclipse/jetty/client/HttpExchange;

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/client/HttpDestination;->resend(Lorg/eclipse/jetty/client/HttpExchange;)V

    goto :goto_0

    .line 133
    :cond_0
    invoke-virtual {p0, v2}, Lorg/eclipse/jetty/client/webdav/WebdavListener;->setDelegationResult(Z)V

    .line 134
    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/client/webdav/WebdavListener;->setDelegatingRequests(Z)V

    .line 135
    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/client/webdav/WebdavListener;->setDelegatingResponses(Z)V

    .line 136
    invoke-super {p0}, Lorg/eclipse/jetty/client/HttpEventListenerWrapper;->onResponseComplete()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 141
    :catch_0
    sget-object v0, Lorg/eclipse/jetty/client/webdav/WebdavListener;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v1, "WebdavListener:Complete:IOException: might not be dealing with dav server, delegate"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 142
    invoke-super {p0}, Lorg/eclipse/jetty/client/HttpEventListenerWrapper;->onResponseComplete()V

    goto :goto_0

    .line 147
    :cond_1
    sget-object v0, Lorg/eclipse/jetty/client/webdav/WebdavListener;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v0}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 148
    sget-object v0, Lorg/eclipse/jetty/client/webdav/WebdavListener;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v1, "WebdavListener:Not ready, calling super"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 149
    :cond_2
    invoke-super {p0}, Lorg/eclipse/jetty/client/HttpEventListenerWrapper;->onResponseComplete()V

    goto :goto_0

    .line 154
    :cond_3
    invoke-super {p0}, Lorg/eclipse/jetty/client/HttpEventListenerWrapper;->onResponseComplete()V

    :goto_0
    return-void
.end method

.method public onResponseStatus(Lorg/eclipse/jetty/io/Buffer;ILorg/eclipse/jetty/io/Buffer;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 71
    iget-boolean v0, p0, Lorg/eclipse/jetty/client/webdav/WebdavListener;->_webdavEnabled:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 73
    iput-boolean v1, p0, Lorg/eclipse/jetty/client/webdav/WebdavListener;->_needIntercept:Z

    .line 74
    invoke-super {p0, p1, p2, p3}, Lorg/eclipse/jetty/client/HttpEventListenerWrapper;->onResponseStatus(Lorg/eclipse/jetty/io/Buffer;ILorg/eclipse/jetty/io/Buffer;)V

    return-void

    .line 78
    :cond_0
    sget-object v0, Lorg/eclipse/jetty/client/webdav/WebdavListener;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v0}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 79
    sget-object v0, Lorg/eclipse/jetty/client/webdav/WebdavListener;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WebdavListener:Response Status: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    invoke-interface {v0, v2, v3}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    const/16 v0, 0x193

    const/4 v2, 0x1

    if-eq p2, v0, :cond_3

    const/16 v0, 0x199

    if-ne p2, v0, :cond_2

    goto :goto_0

    .line 103
    :cond_2
    iput-boolean v1, p0, Lorg/eclipse/jetty/client/webdav/WebdavListener;->_needIntercept:Z

    .line 104
    invoke-virtual {p0, v2}, Lorg/eclipse/jetty/client/webdav/WebdavListener;->setDelegatingResponses(Z)V

    .line 105
    invoke-virtual {p0, v2}, Lorg/eclipse/jetty/client/webdav/WebdavListener;->setDelegatingRequests(Z)V

    goto :goto_1

    .line 85
    :cond_3
    :goto_0
    iget-boolean v0, p0, Lorg/eclipse/jetty/client/webdav/WebdavListener;->_webdavEnabled:Z

    if-eqz v0, :cond_5

    .line 87
    sget-object v0, Lorg/eclipse/jetty/client/webdav/WebdavListener;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v0}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 88
    sget-object v0, Lorg/eclipse/jetty/client/webdav/WebdavListener;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v3, "WebdavListener:Response Status: dav enabled, taking a stab at resolving put issue"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-interface {v0, v3, v4}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 89
    :cond_4
    invoke-virtual {p0, v1}, Lorg/eclipse/jetty/client/webdav/WebdavListener;->setDelegatingResponses(Z)V

    .line 90
    iput-boolean v2, p0, Lorg/eclipse/jetty/client/webdav/WebdavListener;->_needIntercept:Z

    goto :goto_1

    .line 94
    :cond_5
    sget-object v0, Lorg/eclipse/jetty/client/webdav/WebdavListener;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v0}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 95
    sget-object v0, Lorg/eclipse/jetty/client/webdav/WebdavListener;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v3, "WebdavListener:Response Status: Webdav Disabled"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-interface {v0, v3, v4}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 96
    :cond_6
    invoke-virtual {p0, v2}, Lorg/eclipse/jetty/client/webdav/WebdavListener;->setDelegatingResponses(Z)V

    .line 97
    invoke-virtual {p0, v2}, Lorg/eclipse/jetty/client/webdav/WebdavListener;->setDelegatingRequests(Z)V

    .line 98
    iput-boolean v1, p0, Lorg/eclipse/jetty/client/webdav/WebdavListener;->_needIntercept:Z

    .line 108
    :goto_1
    invoke-super {p0, p1, p2, p3}, Lorg/eclipse/jetty/client/HttpEventListenerWrapper;->onResponseStatus(Lorg/eclipse/jetty/io/Buffer;ILorg/eclipse/jetty/io/Buffer;)V

    return-void
.end method
