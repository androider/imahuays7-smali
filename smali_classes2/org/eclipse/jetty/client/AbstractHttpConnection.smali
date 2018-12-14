.class public abstract Lorg/eclipse/jetty/client/AbstractHttpConnection;
.super Lorg/eclipse/jetty/io/AbstractConnection;
.source "AbstractHttpConnection.java"

# interfaces
.implements Lorg/eclipse/jetty/util/component/Dumpable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jetty/client/AbstractHttpConnection$NonFinalResponseListener;,
        Lorg/eclipse/jetty/client/AbstractHttpConnection$ConnectionIdleTask;,
        Lorg/eclipse/jetty/client/AbstractHttpConnection$Handler;
    }
.end annotation


# static fields
.field private static final LOG:Lorg/eclipse/jetty/util/log/Logger;


# instance fields
.field protected _connectionHeader:Lorg/eclipse/jetty/io/Buffer;

.field protected _destination:Lorg/eclipse/jetty/client/HttpDestination;

.field protected volatile _exchange:Lorg/eclipse/jetty/client/HttpExchange;

.field protected _generator:Lorg/eclipse/jetty/http/HttpGenerator;

.field protected _http11:Z

.field private _idle:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final _idleTimeout:Lorg/eclipse/jetty/util/thread/Timeout$Task;

.field protected _parser:Lorg/eclipse/jetty/http/HttpParser;

.field protected _pipeline:Lorg/eclipse/jetty/client/HttpExchange;

.field protected _reserved:Z

.field protected _status:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 55
    const-class v0, Lorg/eclipse/jetty/client/AbstractHttpConnection;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/client/AbstractHttpConnection;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    return-void
.end method

.method constructor <init>(Lorg/eclipse/jetty/io/Buffers;Lorg/eclipse/jetty/io/Buffers;Lorg/eclipse/jetty/io/EndPoint;)V
    .locals 3

    .line 74
    invoke-direct {p0, p3}, Lorg/eclipse/jetty/io/AbstractConnection;-><init>(Lorg/eclipse/jetty/io/EndPoint;)V

    const/4 v0, 0x1

    .line 60
    iput-boolean v0, p0, Lorg/eclipse/jetty/client/AbstractHttpConnection;->_http11:Z

    .line 68
    new-instance v0, Lorg/eclipse/jetty/client/AbstractHttpConnection$ConnectionIdleTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/eclipse/jetty/client/AbstractHttpConnection$ConnectionIdleTask;-><init>(Lorg/eclipse/jetty/client/AbstractHttpConnection;Lorg/eclipse/jetty/client/AbstractHttpConnection$1;)V

    iput-object v0, p0, Lorg/eclipse/jetty/client/AbstractHttpConnection;->_idleTimeout:Lorg/eclipse/jetty/util/thread/Timeout$Task;

    .line 69
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lorg/eclipse/jetty/client/AbstractHttpConnection;->_idle:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 76
    new-instance v0, Lorg/eclipse/jetty/http/HttpGenerator;

    invoke-direct {v0, p1, p3}, Lorg/eclipse/jetty/http/HttpGenerator;-><init>(Lorg/eclipse/jetty/io/Buffers;Lorg/eclipse/jetty/io/EndPoint;)V

    iput-object v0, p0, Lorg/eclipse/jetty/client/AbstractHttpConnection;->_generator:Lorg/eclipse/jetty/http/HttpGenerator;

    .line 77
    new-instance p1, Lorg/eclipse/jetty/http/HttpParser;

    new-instance v0, Lorg/eclipse/jetty/client/AbstractHttpConnection$Handler;

    invoke-direct {v0, p0, v1}, Lorg/eclipse/jetty/client/AbstractHttpConnection$Handler;-><init>(Lorg/eclipse/jetty/client/AbstractHttpConnection;Lorg/eclipse/jetty/client/AbstractHttpConnection$1;)V

    invoke-direct {p1, p2, p3, v0}, Lorg/eclipse/jetty/http/HttpParser;-><init>(Lorg/eclipse/jetty/io/Buffers;Lorg/eclipse/jetty/io/EndPoint;Lorg/eclipse/jetty/http/HttpParser$EventHandler;)V

    iput-object p1, p0, Lorg/eclipse/jetty/client/AbstractHttpConnection;->_parser:Lorg/eclipse/jetty/http/HttpParser;

    return-void
.end method

.method static synthetic access$200()Lorg/eclipse/jetty/util/log/Logger;
    .locals 1

    .line 53
    sget-object v0, Lorg/eclipse/jetty/client/AbstractHttpConnection;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    return-object v0
.end method

.method static synthetic access$300(Lorg/eclipse/jetty/client/AbstractHttpConnection;)Lorg/eclipse/jetty/io/EndPoint;
    .locals 0

    .line 53
    iget-object p0, p0, Lorg/eclipse/jetty/client/AbstractHttpConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    return-object p0
.end method

.method static synthetic access$400(Lorg/eclipse/jetty/client/AbstractHttpConnection;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 53
    iget-object p0, p0, Lorg/eclipse/jetty/client/AbstractHttpConnection;->_idle:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method private adjustIdleTimeout()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 139
    iget-object v0, p0, Lorg/eclipse/jetty/client/AbstractHttpConnection;->_exchange:Lorg/eclipse/jetty/client/HttpExchange;

    invoke-virtual {v0}, Lorg/eclipse/jetty/client/HttpExchange;->getTimeout()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    .line 141
    iget-object v0, p0, Lorg/eclipse/jetty/client/AbstractHttpConnection;->_destination:Lorg/eclipse/jetty/client/HttpDestination;

    invoke-virtual {v0}, Lorg/eclipse/jetty/client/HttpDestination;->getHttpClient()Lorg/eclipse/jetty/client/HttpClient;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jetty/client/HttpClient;->getTimeout()J

    move-result-wide v0

    .line 143
    :cond_0
    iget-object v4, p0, Lorg/eclipse/jetty/client/AbstractHttpConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v4}, Lorg/eclipse/jetty/io/EndPoint;->getMaxIdleTime()I

    move-result v4

    int-to-long v4, v4

    cmp-long v6, v0, v2

    if-lez v6, :cond_1

    cmp-long v2, v0, v4

    if-lez v2, :cond_1

    .line 150
    iget-object v2, p0, Lorg/eclipse/jetty/client/AbstractHttpConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    long-to-int v0, v0

    mul-int/lit8 v0, v0, 0x2

    invoke-interface {v2, v0}, Lorg/eclipse/jetty/io/EndPoint;->setMaxIdleTime(I)V

    :cond_1
    return-void
.end method


# virtual methods
.method public cancelIdleTimeout()Z
    .locals 3

    .line 420
    monitor-enter p0

    .line 422
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/client/AbstractHttpConnection;->_idle:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 424
    iget-object v0, p0, Lorg/eclipse/jetty/client/AbstractHttpConnection;->_destination:Lorg/eclipse/jetty/client/HttpDestination;

    invoke-virtual {v0}, Lorg/eclipse/jetty/client/HttpDestination;->getHttpClient()Lorg/eclipse/jetty/client/HttpClient;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jetty/client/AbstractHttpConnection;->_idleTimeout:Lorg/eclipse/jetty/util/thread/Timeout$Task;

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/client/HttpClient;->cancel(Lorg/eclipse/jetty/util/thread/Timeout$Task;)V

    .line 425
    monitor-exit p0

    return v2

    .line 427
    :cond_0
    monitor-exit p0

    return v1

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public close()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 378
    iget-object v0, p0, Lorg/eclipse/jetty/client/AbstractHttpConnection;->_exchange:Lorg/eclipse/jetty/client/HttpExchange;

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    .line 379
    invoke-virtual {v0}, Lorg/eclipse/jetty/client/HttpExchange;->isDone()Z

    move-result v2

    if-nez v2, :cond_3

    .line 381
    invoke-virtual {v0}, Lorg/eclipse/jetty/client/HttpExchange;->getStatus()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 390
    :pswitch_0
    iget-object v2, p0, Lorg/eclipse/jetty/client/AbstractHttpConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v2}, Lorg/eclipse/jetty/io/EndPoint;->isInputShutdown()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/eclipse/jetty/client/AbstractHttpConnection;->_parser:Lorg/eclipse/jetty/http/HttpParser;

    invoke-virtual {v2, v1}, Lorg/eclipse/jetty/http/HttpParser;->isState(I)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_2

    .line 393
    :cond_0
    :goto_0
    invoke-virtual {v0}, Lorg/eclipse/jetty/client/HttpExchange;->toString()Ljava/lang/String;

    move-result-object v2

    .line 394
    iget-object v3, p0, Lorg/eclipse/jetty/client/AbstractHttpConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v3}, Lorg/eclipse/jetty/io/EndPoint;->isOpen()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lorg/eclipse/jetty/client/AbstractHttpConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v3}, Lorg/eclipse/jetty/io/EndPoint;->isInputShutdown()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "half closed: "

    goto :goto_1

    :cond_1
    const-string v3, "local close: "

    goto :goto_1

    :cond_2
    const-string v3, "closed: "

    :goto_1
    const/16 v4, 0x9

    .line 395
    invoke-virtual {v0, v4}, Lorg/eclipse/jetty/client/HttpExchange;->setStatus(I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 396
    invoke-virtual {v0}, Lorg/eclipse/jetty/client/HttpExchange;->getEventListener()Lorg/eclipse/jetty/client/HttpEventListener;

    move-result-object v0

    new-instance v4, Lorg/eclipse/jetty/io/EofException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Lorg/eclipse/jetty/io/EofException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v4}, Lorg/eclipse/jetty/client/HttpEventListener;->onException(Ljava/lang/Throwable;)V

    .line 400
    :cond_3
    :goto_2
    :pswitch_1
    iget-object v0, p0, Lorg/eclipse/jetty/client/AbstractHttpConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/EndPoint;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 402
    iget-object v0, p0, Lorg/eclipse/jetty/client/AbstractHttpConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/EndPoint;->close()V

    .line 403
    iget-object v0, p0, Lorg/eclipse/jetty/client/AbstractHttpConnection;->_destination:Lorg/eclipse/jetty/client/HttpDestination;

    invoke-virtual {v0, p0, v1}, Lorg/eclipse/jetty/client/HttpDestination;->returnConnection(Lorg/eclipse/jetty/client/AbstractHttpConnection;Z)V

    :cond_4
    return-void

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method protected commitRequest()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 179
    monitor-enter p0

    const/4 v0, 0x0

    .line 181
    :try_start_0
    iput v0, p0, Lorg/eclipse/jetty/client/AbstractHttpConnection;->_status:I

    .line 182
    iget-object v1, p0, Lorg/eclipse/jetty/client/AbstractHttpConnection;->_exchange:Lorg/eclipse/jetty/client/HttpExchange;

    invoke-virtual {v1}, Lorg/eclipse/jetty/client/HttpExchange;->getStatus()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 183
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 185
    :cond_0
    iget-object v1, p0, Lorg/eclipse/jetty/client/AbstractHttpConnection;->_exchange:Lorg/eclipse/jetty/client/HttpExchange;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lorg/eclipse/jetty/client/HttpExchange;->setStatus(I)Z

    .line 186
    iget-object v1, p0, Lorg/eclipse/jetty/client/AbstractHttpConnection;->_generator:Lorg/eclipse/jetty/http/HttpGenerator;

    iget-object v2, p0, Lorg/eclipse/jetty/client/AbstractHttpConnection;->_exchange:Lorg/eclipse/jetty/client/HttpExchange;

    invoke-virtual {v2}, Lorg/eclipse/jetty/client/HttpExchange;->getVersion()I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/eclipse/jetty/http/HttpGenerator;->setVersion(I)V

    .line 188
    iget-object v1, p0, Lorg/eclipse/jetty/client/AbstractHttpConnection;->_exchange:Lorg/eclipse/jetty/client/HttpExchange;

    invoke-virtual {v1}, Lorg/eclipse/jetty/client/HttpExchange;->getMethod()Ljava/lang/String;

    move-result-object v1

    .line 189
    iget-object v2, p0, Lorg/eclipse/jetty/client/AbstractHttpConnection;->_exchange:Lorg/eclipse/jetty/client/HttpExchange;

    invoke-virtual {v2}, Lorg/eclipse/jetty/client/HttpExchange;->getRequestURI()Ljava/lang/String;

    move-result-object v2

    .line 190
    iget-object v3, p0, Lorg/eclipse/jetty/client/AbstractHttpConnection;->_destination:Lorg/eclipse/jetty/client/HttpDestination;

    invoke-virtual {v3}, Lorg/eclipse/jetty/client/HttpDestination;->isProxied()Z

    move-result v3

    if-eqz v3, :cond_6

    const-string v3, "CONNECT"

    .line 192
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 194
    iget-object v3, p0, Lorg/eclipse/jetty/client/AbstractHttpConnection;->_destination:Lorg/eclipse/jetty/client/HttpDestination;

    invoke-virtual {v3}, Lorg/eclipse/jetty/client/HttpDestination;->isSecure()Z

    move-result v3

    .line 195
    iget-object v4, p0, Lorg/eclipse/jetty/client/AbstractHttpConnection;->_destination:Lorg/eclipse/jetty/client/HttpDestination;

    invoke-virtual {v4}, Lorg/eclipse/jetty/client/HttpDestination;->getAddress()Lorg/eclipse/jetty/client/Address;

    move-result-object v4

    invoke-virtual {v4}, Lorg/eclipse/jetty/client/Address;->getHost()Ljava/lang/String;

    move-result-object v4

    .line 196
    iget-object v5, p0, Lorg/eclipse/jetty/client/AbstractHttpConnection;->_destination:Lorg/eclipse/jetty/client/HttpDestination;

    invoke-virtual {v5}, Lorg/eclipse/jetty/client/HttpDestination;->getAddress()Lorg/eclipse/jetty/client/Address;

    move-result-object v5

    invoke-virtual {v5}, Lorg/eclipse/jetty/client/Address;->getPort()I

    move-result v5

    .line 197
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v3, :cond_1

    const-string v7, "https"

    goto :goto_0

    :cond_1
    const-string v7, "http"

    .line 198
    :goto_0
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "://"

    .line 199
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v3, :cond_2

    const/16 v4, 0x1bb

    if-eq v5, v4, :cond_4

    :cond_2
    if-nez v3, :cond_3

    const/16 v3, 0x50

    if-eq v5, v3, :cond_4

    :cond_3
    const-string v3, ":"

    .line 203
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 204
    :cond_4
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 207
    :cond_5
    iget-object v3, p0, Lorg/eclipse/jetty/client/AbstractHttpConnection;->_destination:Lorg/eclipse/jetty/client/HttpDestination;

    invoke-virtual {v3}, Lorg/eclipse/jetty/client/HttpDestination;->getProxyAuthentication()Lorg/eclipse/jetty/client/security/Authentication;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 209
    iget-object v4, p0, Lorg/eclipse/jetty/client/AbstractHttpConnection;->_exchange:Lorg/eclipse/jetty/client/HttpExchange;

    invoke-interface {v3, v4}, Lorg/eclipse/jetty/client/security/Authentication;->setCredentials(Lorg/eclipse/jetty/client/HttpExchange;)V

    .line 212
    :cond_6
    iget-object v3, p0, Lorg/eclipse/jetty/client/AbstractHttpConnection;->_generator:Lorg/eclipse/jetty/http/HttpGenerator;

    invoke-virtual {v3, v1, v2}, Lorg/eclipse/jetty/http/HttpGenerator;->setRequest(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    iget-object v2, p0, Lorg/eclipse/jetty/client/AbstractHttpConnection;->_parser:Lorg/eclipse/jetty/http/HttpParser;

    const-string v3, "HEAD"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v2, v1}, Lorg/eclipse/jetty/http/HttpParser;->setHeadResponse(Z)V

    .line 215
    iget-object v1, p0, Lorg/eclipse/jetty/client/AbstractHttpConnection;->_exchange:Lorg/eclipse/jetty/client/HttpExchange;

    invoke-virtual {v1}, Lorg/eclipse/jetty/client/HttpExchange;->getRequestFields()Lorg/eclipse/jetty/http/HttpFields;

    move-result-object v1

    .line 216
    iget-object v2, p0, Lorg/eclipse/jetty/client/AbstractHttpConnection;->_exchange:Lorg/eclipse/jetty/client/HttpExchange;

    invoke-virtual {v2}, Lorg/eclipse/jetty/client/HttpExchange;->getVersion()I

    move-result v2

    const/16 v3, 0xb

    if-lt v2, v3, :cond_7

    .line 218
    sget-object v2, Lorg/eclipse/jetty/http/HttpHeaders;->HOST_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    invoke-virtual {v1, v2}, Lorg/eclipse/jetty/http/HttpFields;->containsKey(Lorg/eclipse/jetty/io/Buffer;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 219
    sget-object v2, Lorg/eclipse/jetty/http/HttpHeaders;->HOST_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    iget-object v3, p0, Lorg/eclipse/jetty/client/AbstractHttpConnection;->_destination:Lorg/eclipse/jetty/client/HttpDestination;

    invoke-virtual {v3}, Lorg/eclipse/jetty/client/HttpDestination;->getHostHeader()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/eclipse/jetty/http/HttpFields;->add(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)V

    .line 222
    :cond_7
    iget-object v2, p0, Lorg/eclipse/jetty/client/AbstractHttpConnection;->_exchange:Lorg/eclipse/jetty/client/HttpExchange;

    invoke-virtual {v2}, Lorg/eclipse/jetty/client/HttpExchange;->getRequestContent()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v2

    const/4 v3, 0x4

    const/4 v4, 0x1

    if-eqz v2, :cond_8

    const-string v5, "Content-Length"

    .line 225
    invoke-interface {v2}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {v1, v5, v6, v7}, Lorg/eclipse/jetty/http/HttpFields;->putLongField(Ljava/lang/String;J)V

    .line 226
    iget-object v5, p0, Lorg/eclipse/jetty/client/AbstractHttpConnection;->_generator:Lorg/eclipse/jetty/http/HttpGenerator;

    invoke-virtual {v5, v1, v0}, Lorg/eclipse/jetty/http/HttpGenerator;->completeHeader(Lorg/eclipse/jetty/http/HttpFields;Z)V

    .line 227
    iget-object v0, p0, Lorg/eclipse/jetty/client/AbstractHttpConnection;->_generator:Lorg/eclipse/jetty/http/HttpGenerator;

    new-instance v1, Lorg/eclipse/jetty/io/View;

    invoke-direct {v1, v2}, Lorg/eclipse/jetty/io/View;-><init>(Lorg/eclipse/jetty/io/Buffer;)V

    invoke-virtual {v0, v1, v4}, Lorg/eclipse/jetty/http/HttpGenerator;->addContent(Lorg/eclipse/jetty/io/Buffer;Z)V

    .line 228
    iget-object v0, p0, Lorg/eclipse/jetty/client/AbstractHttpConnection;->_exchange:Lorg/eclipse/jetty/client/HttpExchange;

    invoke-virtual {v0, v3}, Lorg/eclipse/jetty/client/HttpExchange;->setStatus(I)Z

    goto :goto_1

    .line 232
    :cond_8
    iget-object v2, p0, Lorg/eclipse/jetty/client/AbstractHttpConnection;->_exchange:Lorg/eclipse/jetty/client/HttpExchange;

    invoke-virtual {v2}, Lorg/eclipse/jetty/client/HttpExchange;->getRequestContentSource()Ljava/io/InputStream;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 235
    iget-object v2, p0, Lorg/eclipse/jetty/client/AbstractHttpConnection;->_generator:Lorg/eclipse/jetty/http/HttpGenerator;

    invoke-virtual {v2, v1, v0}, Lorg/eclipse/jetty/http/HttpGenerator;->completeHeader(Lorg/eclipse/jetty/http/HttpFields;Z)V

    goto :goto_1

    :cond_9
    const-string v0, "Content-Length"

    .line 239
    invoke-virtual {v1, v0}, Lorg/eclipse/jetty/http/HttpFields;->remove(Ljava/lang/String;)V

    .line 240
    iget-object v0, p0, Lorg/eclipse/jetty/client/AbstractHttpConnection;->_generator:Lorg/eclipse/jetty/http/HttpGenerator;

    invoke-virtual {v0, v1, v4}, Lorg/eclipse/jetty/http/HttpGenerator;->completeHeader(Lorg/eclipse/jetty/http/HttpFields;Z)V

    .line 241
    iget-object v0, p0, Lorg/eclipse/jetty/client/AbstractHttpConnection;->_exchange:Lorg/eclipse/jetty/client/HttpExchange;

    invoke-virtual {v0, v3}, Lorg/eclipse/jetty/client/HttpExchange;->setStatus(I)Z

    .line 244
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public dump()Ljava/lang/String;
    .locals 1

    .line 458
    invoke-static {p0}, Lorg/eclipse/jetty/util/component/AggregateLifeCycle;->dump(Lorg/eclipse/jetty/util/component/Dumpable;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public dump(Ljava/lang/Appendable;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 467
    monitor-enter p0

    .line 469
    :try_start_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object v0

    const-string v1, "\n"

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    const/4 v0, 0x1

    .line 470
    new-array v0, v0, [Ljava/util/Collection;

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/eclipse/jetty/client/AbstractHttpConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {p1, p2, v0}, Lorg/eclipse/jetty/util/component/AggregateLifeCycle;->dump(Ljava/lang/Appendable;Ljava/lang/String;[Ljava/util/Collection;)V

    .line 471
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method protected exchangeExpired(Lorg/eclipse/jetty/client/HttpExchange;)V
    .locals 1

    .line 434
    monitor-enter p0

    .line 438
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/client/AbstractHttpConnection;->_exchange:Lorg/eclipse/jetty/client/HttpExchange;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, p1, :cond_0

    .line 442
    :try_start_1
    iget-object p1, p0, Lorg/eclipse/jetty/client/AbstractHttpConnection;->_destination:Lorg/eclipse/jetty/client/HttpDestination;

    const/4 v0, 0x1

    invoke-virtual {p1, p0, v0}, Lorg/eclipse/jetty/client/HttpDestination;->returnConnection(Lorg/eclipse/jetty/client/AbstractHttpConnection;Z)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 446
    :try_start_2
    sget-object v0, Lorg/eclipse/jetty/client/AbstractHttpConnection;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v0, p1}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    .line 449
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public getDestination()Lorg/eclipse/jetty/client/HttpDestination;
    .locals 1

    .line 92
    iget-object v0, p0, Lorg/eclipse/jetty/client/AbstractHttpConnection;->_destination:Lorg/eclipse/jetty/client/HttpDestination;

    return-object v0
.end method

.method public abstract handle()Lorg/eclipse/jetty/io/Connection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public isIdle()Z
    .locals 1

    .line 159
    monitor-enter p0

    .line 161
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/client/AbstractHttpConnection;->_exchange:Lorg/eclipse/jetty/client/HttpExchange;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    .line 162
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isReserved()Z
    .locals 1

    .line 87
    iget-boolean v0, p0, Lorg/eclipse/jetty/client/AbstractHttpConnection;->_reserved:Z

    return v0
.end method

.method public isSuspended()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onClose()V
    .locals 0

    return-void
.end method

.method protected reset()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 249
    iput-object v0, p0, Lorg/eclipse/jetty/client/AbstractHttpConnection;->_connectionHeader:Lorg/eclipse/jetty/io/Buffer;

    .line 250
    iget-object v0, p0, Lorg/eclipse/jetty/client/AbstractHttpConnection;->_parser:Lorg/eclipse/jetty/http/HttpParser;

    invoke-virtual {v0}, Lorg/eclipse/jetty/http/HttpParser;->reset()V

    .line 251
    iget-object v0, p0, Lorg/eclipse/jetty/client/AbstractHttpConnection;->_generator:Lorg/eclipse/jetty/http/HttpGenerator;

    invoke-virtual {v0}, Lorg/eclipse/jetty/http/HttpGenerator;->reset()V

    const/4 v0, 0x1

    .line 252
    iput-boolean v0, p0, Lorg/eclipse/jetty/client/AbstractHttpConnection;->_http11:Z

    return-void
.end method

.method public send(Lorg/eclipse/jetty/client/HttpExchange;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 102
    sget-object v0, Lorg/eclipse/jetty/client/AbstractHttpConnection;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v1, "Send {} on {}"

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v5, 0x1

    aput-object p0, v3, v5

    invoke-interface {v0, v1, v3}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 103
    monitor-enter p0

    .line 105
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/client/AbstractHttpConnection;->_exchange:Lorg/eclipse/jetty/client/HttpExchange;

    if-eqz v0, :cond_1

    .line 107
    iget-object v0, p0, Lorg/eclipse/jetty/client/AbstractHttpConnection;->_pipeline:Lorg/eclipse/jetty/client/HttpExchange;

    if-eqz v0, :cond_0

    .line 108
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " PIPELINED!!!  _exchange="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/eclipse/jetty/client/AbstractHttpConnection;->_exchange:Lorg/eclipse/jetty/client/HttpExchange;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 109
    :cond_0
    iput-object p1, p0, Lorg/eclipse/jetty/client/AbstractHttpConnection;->_pipeline:Lorg/eclipse/jetty/client/HttpExchange;

    .line 110
    monitor-exit p0

    return v5

    .line 113
    :cond_1
    iput-object p1, p0, Lorg/eclipse/jetty/client/AbstractHttpConnection;->_exchange:Lorg/eclipse/jetty/client/HttpExchange;

    .line 114
    iget-object p1, p0, Lorg/eclipse/jetty/client/AbstractHttpConnection;->_exchange:Lorg/eclipse/jetty/client/HttpExchange;

    invoke-virtual {p1, p0}, Lorg/eclipse/jetty/client/HttpExchange;->associate(Lorg/eclipse/jetty/client/AbstractHttpConnection;)V

    .line 117
    iget-object p1, p0, Lorg/eclipse/jetty/client/AbstractHttpConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {p1}, Lorg/eclipse/jetty/io/EndPoint;->isOpen()Z

    move-result p1

    if-nez p1, :cond_2

    .line 119
    iget-object p1, p0, Lorg/eclipse/jetty/client/AbstractHttpConnection;->_exchange:Lorg/eclipse/jetty/client/HttpExchange;

    invoke-virtual {p1}, Lorg/eclipse/jetty/client/HttpExchange;->disassociate()Lorg/eclipse/jetty/client/AbstractHttpConnection;

    const/4 p1, 0x0

    .line 120
    iput-object p1, p0, Lorg/eclipse/jetty/client/AbstractHttpConnection;->_exchange:Lorg/eclipse/jetty/client/HttpExchange;

    .line 121
    monitor-exit p0

    return v4

    .line 124
    :cond_2
    iget-object p1, p0, Lorg/eclipse/jetty/client/AbstractHttpConnection;->_exchange:Lorg/eclipse/jetty/client/HttpExchange;

    invoke-virtual {p1, v2}, Lorg/eclipse/jetty/client/HttpExchange;->setStatus(I)Z

    .line 126
    invoke-direct {p0}, Lorg/eclipse/jetty/client/AbstractHttpConnection;->adjustIdleTimeout()V

    .line 128
    monitor-exit p0

    return v5

    :catchall_0
    move-exception p1

    .line 129
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setDestination(Lorg/eclipse/jetty/client/HttpDestination;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lorg/eclipse/jetty/client/AbstractHttpConnection;->_destination:Lorg/eclipse/jetty/client/HttpDestination;

    return-void
.end method

.method public setIdleTimeout()V
    .locals 3

    .line 409
    monitor-enter p0

    .line 411
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/client/AbstractHttpConnection;->_idle:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 412
    iget-object v0, p0, Lorg/eclipse/jetty/client/AbstractHttpConnection;->_destination:Lorg/eclipse/jetty/client/HttpDestination;

    invoke-virtual {v0}, Lorg/eclipse/jetty/client/HttpDestination;->getHttpClient()Lorg/eclipse/jetty/client/HttpClient;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jetty/client/AbstractHttpConnection;->_idleTimeout:Lorg/eclipse/jetty/util/thread/Timeout$Task;

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/client/HttpClient;->scheduleIdle(Lorg/eclipse/jetty/util/thread/Timeout$Task;)V

    .line 415
    monitor-exit p0

    return-void

    .line 414
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :catchall_0
    move-exception v0

    .line 415
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setReserved(Z)V
    .locals 0

    .line 82
    iput-boolean p1, p0, Lorg/eclipse/jetty/client/AbstractHttpConnection;->_reserved:Z

    return-void
.end method

.method public toDetailString()Ljava/lang/String;
    .locals 3

    .line 370
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/eclipse/jetty/client/AbstractHttpConnection;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/eclipse/jetty/client/AbstractHttpConnection;->_exchange:Lorg/eclipse/jetty/client/HttpExchange;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " idle for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/eclipse/jetty/client/AbstractHttpConnection;->_idleTimeout:Lorg/eclipse/jetty/util/thread/Timeout$Task;

    invoke-virtual {v1}, Lorg/eclipse/jetty/util/thread/Timeout$Task;->getAge()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string v0, "%s %s g=%s p=%s"

    const/4 v1, 0x4

    .line 361
    new-array v1, v1, [Ljava/lang/Object;

    invoke-super {p0}, Lorg/eclipse/jetty/io/AbstractConnection;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lorg/eclipse/jetty/client/AbstractHttpConnection;->_destination:Lorg/eclipse/jetty/client/HttpDestination;

    if-nez v2, :cond_0

    const-string v2, "?.?.?.?:??"

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lorg/eclipse/jetty/client/AbstractHttpConnection;->_destination:Lorg/eclipse/jetty/client/HttpDestination;

    invoke-virtual {v2}, Lorg/eclipse/jetty/client/HttpDestination;->getAddress()Lorg/eclipse/jetty/client/Address;

    move-result-object v2

    :goto_0
    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v2, 0x2

    iget-object v3, p0, Lorg/eclipse/jetty/client/AbstractHttpConnection;->_generator:Lorg/eclipse/jetty/http/HttpGenerator;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lorg/eclipse/jetty/client/AbstractHttpConnection;->_parser:Lorg/eclipse/jetty/http/HttpParser;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
