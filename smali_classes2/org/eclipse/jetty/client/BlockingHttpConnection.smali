.class public Lorg/eclipse/jetty/client/BlockingHttpConnection;
.super Lorg/eclipse/jetty/client/AbstractHttpConnection;
.source "BlockingHttpConnection.java"


# static fields
.field private static final LOG:Lorg/eclipse/jetty/util/log/Logger;


# instance fields
.field private _expired:Z

.field private _requestComplete:Z

.field private _requestContentChunk:Lorg/eclipse/jetty/io/Buffer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 39
    const-class v0, Lorg/eclipse/jetty/client/BlockingHttpConnection;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    return-void
.end method

.method constructor <init>(Lorg/eclipse/jetty/io/Buffers;Lorg/eclipse/jetty/io/Buffers;Lorg/eclipse/jetty/io/EndPoint;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2, p3}, Lorg/eclipse/jetty/client/AbstractHttpConnection;-><init>(Lorg/eclipse/jetty/io/Buffers;Lorg/eclipse/jetty/io/Buffers;Lorg/eclipse/jetty/io/EndPoint;)V

    const/4 p1, 0x0

    .line 43
    iput-boolean p1, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_expired:Z

    return-void
.end method


# virtual methods
.method protected exchangeExpired(Lorg/eclipse/jetty/client/HttpExchange;)V
    .locals 0

    .line 61
    monitor-enter p0

    .line 63
    :try_start_0
    invoke-super {p0, p1}, Lorg/eclipse/jetty/client/AbstractHttpConnection;->exchangeExpired(Lorg/eclipse/jetty/client/HttpExchange;)V

    const/4 p1, 0x1

    .line 64
    iput-boolean p1, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_expired:Z

    .line 65
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 66
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public handle()Lorg/eclipse/jetty/io/Connection;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    move-object v1, p0

    const/4 v2, 0x0

    .line 111
    :cond_0
    :goto_0
    :try_start_0
    iget-object v3, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v3}, Lorg/eclipse/jetty/io/EndPoint;->isOpen()Z

    move-result v3

    if-eqz v3, :cond_2c

    if-ne v1, p0, :cond_2c

    .line 113
    sget-object v3, Lorg/eclipse/jetty/client/BlockingHttpConnection;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v4, "open={} more={}"

    const/4 v5, 0x2

    new-array v6, v5, [Ljava/lang/Object;

    iget-object v7, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v7}, Lorg/eclipse/jetty/io/EndPoint;->isOpen()Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v6, v0

    iget-object v7, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_parser:Lorg/eclipse/jetty/http/HttpParser;

    invoke-virtual {v7}, Lorg/eclipse/jetty/http/HttpParser;->isMoreInBuffer()Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    const/4 v8, 0x1

    aput-object v7, v6, v8

    invoke-interface {v3, v4, v6}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 116
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_7

    .line 118
    :try_start_1
    iget-object v3, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_exchange:Lorg/eclipse/jetty/client/HttpExchange;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_6

    :cond_1
    if-nez v3, :cond_2

    .line 123
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    .line 124
    iget-object v3, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_exchange:Lorg/eclipse/jetty/client/HttpExchange;

    .line 125
    iget-boolean v4, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_expired:Z

    if-eqz v4, :cond_1

    .line 128
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_6

    .line 134
    :catch_0
    :try_start_3
    new-instance v0, Ljava/io/InterruptedIOException;

    invoke-direct {v0}, Ljava/io/InterruptedIOException;-><init>()V

    throw v0

    .line 137
    :cond_2
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_6

    .line 138
    :try_start_4
    sget-object v4, Lorg/eclipse/jetty/client/BlockingHttpConnection;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v6, "exchange {}"

    new-array v7, v8, [Ljava/lang/Object;

    aput-object v3, v7, v0

    invoke-interface {v4, v6, v7}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_7

    const/16 v4, 0x65

    const/4 v6, 0x0

    .line 143
    :try_start_5
    iget-object v7, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_generator:Lorg/eclipse/jetty/http/HttpGenerator;

    invoke-virtual {v7}, Lorg/eclipse/jetty/http/HttpGenerator;->isCommitted()Z

    move-result v7

    if-nez v7, :cond_3

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lorg/eclipse/jetty/client/HttpExchange;->getStatus()I

    move-result v7

    if-ne v7, v5, :cond_3

    .line 145
    sget-object v7, Lorg/eclipse/jetty/client/BlockingHttpConnection;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v9, "commit"

    new-array v10, v0, [Ljava/lang/Object;

    invoke-interface {v7, v9, v10}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 146
    invoke-virtual {p0}, Lorg/eclipse/jetty/client/BlockingHttpConnection;->commitRequest()V

    .line 150
    :cond_3
    :goto_1
    iget-object v7, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_generator:Lorg/eclipse/jetty/http/HttpGenerator;

    invoke-virtual {v7}, Lorg/eclipse/jetty/http/HttpGenerator;->isCommitted()Z

    move-result v7

    if-eqz v7, :cond_8

    iget-object v7, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_generator:Lorg/eclipse/jetty/http/HttpGenerator;

    invoke-virtual {v7}, Lorg/eclipse/jetty/http/HttpGenerator;->isComplete()Z

    move-result v7

    if-nez v7, :cond_8

    .line 152
    iget-object v7, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_generator:Lorg/eclipse/jetty/http/HttpGenerator;

    invoke-virtual {v7}, Lorg/eclipse/jetty/http/HttpGenerator;->flushBuffer()I

    move-result v7

    if-lez v7, :cond_4

    .line 154
    sget-object v7, Lorg/eclipse/jetty/client/BlockingHttpConnection;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v9, "flushed"

    new-array v10, v0, [Ljava/lang/Object;

    invoke-interface {v7, v9, v10}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 158
    :cond_4
    iget-object v7, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_generator:Lorg/eclipse/jetty/http/HttpGenerator;

    invoke-virtual {v7, v5}, Lorg/eclipse/jetty/http/HttpGenerator;->isState(I)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 161
    iget-object v7, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_requestContentChunk:Lorg/eclipse/jetty/io/Buffer;

    if-nez v7, :cond_5

    .line 162
    invoke-virtual {v3, v6}, Lorg/eclipse/jetty/client/HttpExchange;->getRequestContentChunk(Lorg/eclipse/jetty/io/Buffer;)Lorg/eclipse/jetty/io/Buffer;

    move-result-object v7

    iput-object v7, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_requestContentChunk:Lorg/eclipse/jetty/io/Buffer;

    .line 164
    :cond_5
    iget-object v7, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_requestContentChunk:Lorg/eclipse/jetty/io/Buffer;

    if-nez v7, :cond_6

    .line 166
    sget-object v7, Lorg/eclipse/jetty/client/BlockingHttpConnection;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v9, "complete"

    new-array v10, v0, [Ljava/lang/Object;

    invoke-interface {v7, v9, v10}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 167
    iget-object v7, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_generator:Lorg/eclipse/jetty/http/HttpGenerator;

    invoke-virtual {v7}, Lorg/eclipse/jetty/http/HttpGenerator;->complete()V

    goto :goto_1

    .line 169
    :cond_6
    iget-object v7, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_generator:Lorg/eclipse/jetty/http/HttpGenerator;

    invoke-virtual {v7}, Lorg/eclipse/jetty/http/HttpGenerator;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 171
    sget-object v7, Lorg/eclipse/jetty/client/BlockingHttpConnection;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v9, "addChunk"

    new-array v10, v0, [Ljava/lang/Object;

    invoke-interface {v7, v9, v10}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 172
    iget-object v7, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_requestContentChunk:Lorg/eclipse/jetty/io/Buffer;

    .line 173
    invoke-virtual {v3, v6}, Lorg/eclipse/jetty/client/HttpExchange;->getRequestContentChunk(Lorg/eclipse/jetty/io/Buffer;)Lorg/eclipse/jetty/io/Buffer;

    move-result-object v9

    iput-object v9, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_requestContentChunk:Lorg/eclipse/jetty/io/Buffer;

    .line 174
    iget-object v9, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_generator:Lorg/eclipse/jetty/http/HttpGenerator;

    iget-object v10, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_requestContentChunk:Lorg/eclipse/jetty/io/Buffer;

    if-nez v10, :cond_7

    const/4 v10, 0x1

    goto :goto_2

    :cond_7
    const/4 v10, 0x0

    :goto_2
    invoke-virtual {v9, v7, v10}, Lorg/eclipse/jetty/http/HttpGenerator;->addContent(Lorg/eclipse/jetty/io/Buffer;Z)V

    .line 175
    iget-object v7, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_requestContentChunk:Lorg/eclipse/jetty/io/Buffer;

    if-nez v7, :cond_3

    const/4 v7, 0x4

    .line 176
    invoke-virtual {v3, v7}, Lorg/eclipse/jetty/client/HttpExchange;->setStatus(I)Z

    goto :goto_1

    .line 182
    :cond_8
    iget-object v7, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_generator:Lorg/eclipse/jetty/http/HttpGenerator;

    invoke-virtual {v7}, Lorg/eclipse/jetty/http/HttpGenerator;->isComplete()Z

    move-result v7

    if-eqz v7, :cond_9

    iget-boolean v7, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_requestComplete:Z

    if-nez v7, :cond_9

    .line 184
    sget-object v7, Lorg/eclipse/jetty/client/BlockingHttpConnection;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v9, "requestComplete"

    new-array v10, v0, [Ljava/lang/Object;

    invoke-interface {v7, v9, v10}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 185
    iput-boolean v8, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_requestComplete:Z

    .line 186
    invoke-virtual {v3}, Lorg/eclipse/jetty/client/HttpExchange;->getEventListener()Lorg/eclipse/jetty/client/HttpEventListener;

    move-result-object v7

    invoke-interface {v7}, Lorg/eclipse/jetty/client/HttpEventListener;->onRequestComplete()V

    .line 190
    :cond_9
    iget-object v7, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_parser:Lorg/eclipse/jetty/http/HttpParser;

    invoke-virtual {v7}, Lorg/eclipse/jetty/http/HttpParser;->isComplete()Z

    move-result v7

    if-nez v7, :cond_a

    iget-object v7, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_parser:Lorg/eclipse/jetty/http/HttpParser;

    invoke-virtual {v7}, Lorg/eclipse/jetty/http/HttpParser;->parseAvailable()Z

    move-result v7

    if-eqz v7, :cond_a

    .line 192
    sget-object v7, Lorg/eclipse/jetty/client/BlockingHttpConnection;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v9, "parsed"

    new-array v10, v0, [Ljava/lang/Object;

    invoke-interface {v7, v9, v10}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 196
    :cond_a
    iget-object v7, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v7}, Lorg/eclipse/jetty/io/EndPoint;->flush()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 232
    :try_start_6
    sget-object v3, Lorg/eclipse/jetty/client/BlockingHttpConnection;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v7, "{} {}"

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v9, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_generator:Lorg/eclipse/jetty/http/HttpGenerator;

    aput-object v9, v5, v0

    iget-object v9, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_parser:Lorg/eclipse/jetty/http/HttpParser;

    aput-object v9, v5, v8

    invoke-interface {v3, v7, v5}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 233
    sget-object v3, Lorg/eclipse/jetty/client/BlockingHttpConnection;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v5, "{}"

    new-array v7, v8, [Ljava/lang/Object;

    iget-object v9, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    aput-object v9, v7, v0

    invoke-interface {v3, v5, v7}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez v2, :cond_c

    .line 235
    iget-object v3, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_generator:Lorg/eclipse/jetty/http/HttpGenerator;

    invoke-virtual {v3}, Lorg/eclipse/jetty/http/HttpGenerator;->isComplete()Z

    move-result v3

    if-eqz v3, :cond_b

    iget-object v3, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_parser:Lorg/eclipse/jetty/http/HttpParser;

    invoke-virtual {v3}, Lorg/eclipse/jetty/http/HttpParser;->isComplete()Z

    move-result v3

    if-eqz v3, :cond_b

    goto :goto_3

    :cond_b
    const/4 v3, 0x0

    goto :goto_4

    :cond_c
    :goto_3
    const/4 v3, 0x1

    :goto_4
    if-eqz v3, :cond_0

    if-nez v2, :cond_d

    .line 239
    iget-object v3, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_parser:Lorg/eclipse/jetty/http/HttpParser;

    invoke-virtual {v3}, Lorg/eclipse/jetty/http/HttpParser;->isPersistent()Z

    move-result v3

    if-eqz v3, :cond_d

    iget-object v3, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_generator:Lorg/eclipse/jetty/http/HttpGenerator;

    invoke-virtual {v3}, Lorg/eclipse/jetty/http/HttpGenerator;->isPersistent()Z

    move-result v3

    if-eqz v3, :cond_d

    goto :goto_5

    :cond_d
    const/4 v8, 0x0

    .line 240
    :goto_5
    iget-object v3, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_generator:Lorg/eclipse/jetty/http/HttpGenerator;

    invoke-virtual {v3, v8}, Lorg/eclipse/jetty/http/HttpGenerator;->setPersistent(Z)V

    .line 241
    invoke-virtual {p0}, Lorg/eclipse/jetty/client/BlockingHttpConnection;->reset()V

    if-eqz v8, :cond_e

    .line 243
    iget-object v3, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    iget-object v5, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_destination:Lorg/eclipse/jetty/client/HttpDestination;

    invoke-virtual {v5}, Lorg/eclipse/jetty/client/HttpDestination;->getHttpClient()Lorg/eclipse/jetty/client/HttpClient;

    move-result-object v5

    invoke-virtual {v5}, Lorg/eclipse/jetty/client/HttpClient;->getIdleTimeout()J

    move-result-wide v9

    long-to-int v5, v9

    invoke-interface {v3, v5}, Lorg/eclipse/jetty/io/EndPoint;->setMaxIdleTime(I)V

    .line 245
    :cond_e
    monitor-enter p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_7

    .line 247
    :try_start_7
    iget-object v3, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_exchange:Lorg/eclipse/jetty/client/HttpExchange;

    .line 248
    iput-object v6, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_exchange:Lorg/eclipse/jetty/client/HttpExchange;

    if-eqz v3, :cond_f

    .line 253
    iget-object v5, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_destination:Lorg/eclipse/jetty/client/HttpDestination;

    invoke-virtual {v5}, Lorg/eclipse/jetty/client/HttpDestination;->getHttpClient()Lorg/eclipse/jetty/client/HttpClient;

    move-result-object v5

    invoke-virtual {v3, v5}, Lorg/eclipse/jetty/client/HttpExchange;->cancelTimeout(Lorg/eclipse/jetty/client/HttpClient;)V

    .line 259
    :cond_f
    iget v5, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_status:I

    if-ne v5, v4, :cond_11

    .line 261
    iget-object v1, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-virtual {v3, v1}, Lorg/eclipse/jetty/client/HttpExchange;->onSwitchProtocol(Lorg/eclipse/jetty/io/EndPoint;)Lorg/eclipse/jetty/io/Connection;

    move-result-object v1

    .line 266
    iput-object v6, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_pipeline:Lorg/eclipse/jetty/client/HttpExchange;

    .line 267
    iget-object v3, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_pipeline:Lorg/eclipse/jetty/client/HttpExchange;

    if-eqz v3, :cond_10

    .line 268
    iget-object v3, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_destination:Lorg/eclipse/jetty/client/HttpDestination;

    iget-object v4, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_pipeline:Lorg/eclipse/jetty/client/HttpExchange;

    invoke-virtual {v3, v4}, Lorg/eclipse/jetty/client/HttpDestination;->send(Lorg/eclipse/jetty/client/HttpExchange;)V

    .line 269
    :cond_10
    iput-object v6, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_pipeline:Lorg/eclipse/jetty/client/HttpExchange;

    .line 276
    :cond_11
    iget-object v3, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_pipeline:Lorg/eclipse/jetty/client/HttpExchange;

    if-eqz v3, :cond_14

    if-eqz v8, :cond_13

    if-eq v1, p0, :cond_12

    goto :goto_6

    .line 281
    :cond_12
    iget-object v3, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_pipeline:Lorg/eclipse/jetty/client/HttpExchange;

    iput-object v3, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_exchange:Lorg/eclipse/jetty/client/HttpExchange;

    goto :goto_7

    .line 279
    :cond_13
    :goto_6
    iget-object v3, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_destination:Lorg/eclipse/jetty/client/HttpDestination;

    iget-object v4, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_pipeline:Lorg/eclipse/jetty/client/HttpExchange;

    invoke-virtual {v3, v4}, Lorg/eclipse/jetty/client/HttpDestination;->send(Lorg/eclipse/jetty/client/HttpExchange;)V

    .line 282
    :goto_7
    iput-object v6, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_pipeline:Lorg/eclipse/jetty/client/HttpExchange;

    .line 285
    :cond_14
    iget-object v3, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_exchange:Lorg/eclipse/jetty/client/HttpExchange;

    if-nez v3, :cond_15

    invoke-virtual {p0}, Lorg/eclipse/jetty/client/BlockingHttpConnection;->isReserved()Z

    move-result v3

    if-nez v3, :cond_15

    .line 286
    iget-object v3, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_destination:Lorg/eclipse/jetty/client/HttpDestination;

    xor-int/lit8 v4, v8, 0x1

    invoke-virtual {v3, p0, v4}, Lorg/eclipse/jetty/client/HttpDestination;->returnConnection(Lorg/eclipse/jetty/client/AbstractHttpConnection;Z)V

    .line 287
    :cond_15
    monitor-exit p0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_7

    :catchall_1
    move-exception v3

    goto/16 :goto_a

    :catch_1
    move-exception v7

    .line 200
    :try_start_9
    sget-object v9, Lorg/eclipse/jetty/client/BlockingHttpConnection;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failure on "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_exchange:Lorg/eclipse/jetty/client/HttpExchange;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10, v7}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 204
    :try_start_a
    monitor-enter p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    if-eqz v3, :cond_1c

    .line 210
    :try_start_b
    invoke-virtual {v3}, Lorg/eclipse/jetty/client/HttpExchange;->getStatus()I

    move-result v2

    const/16 v9, 0xa

    if-eq v2, v9, :cond_16

    invoke-virtual {v3}, Lorg/eclipse/jetty/client/HttpExchange;->getStatus()I

    move-result v2

    const/16 v9, 0xb

    if-eq v2, v9, :cond_16

    invoke-virtual {v3}, Lorg/eclipse/jetty/client/HttpExchange;->isDone()Z

    move-result v2

    if-nez v2, :cond_16

    const/16 v2, 0x9

    .line 214
    invoke-virtual {v3, v2}, Lorg/eclipse/jetty/client/HttpExchange;->setStatus(I)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 215
    invoke-virtual {v3}, Lorg/eclipse/jetty/client/HttpExchange;->getEventListener()Lorg/eclipse/jetty/client/HttpEventListener;

    move-result-object v2

    invoke-interface {v2, v7}, Lorg/eclipse/jetty/client/HttpEventListener;->onException(Ljava/lang/Throwable;)V

    .line 228
    :cond_16
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 232
    :try_start_c
    sget-object v2, Lorg/eclipse/jetty/client/BlockingHttpConnection;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v3, "{} {}"

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v7, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_generator:Lorg/eclipse/jetty/http/HttpGenerator;

    aput-object v7, v5, v0

    iget-object v7, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_parser:Lorg/eclipse/jetty/http/HttpParser;

    aput-object v7, v5, v8

    invoke-interface {v2, v3, v5}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 233
    sget-object v2, Lorg/eclipse/jetty/client/BlockingHttpConnection;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v3, "{}"

    new-array v5, v8, [Ljava/lang/Object;

    iget-object v7, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    aput-object v7, v5, v0

    invoke-interface {v2, v3, v5}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 240
    iget-object v2, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_generator:Lorg/eclipse/jetty/http/HttpGenerator;

    invoke-virtual {v2, v0}, Lorg/eclipse/jetty/http/HttpGenerator;->setPersistent(Z)V

    .line 241
    invoke-virtual {p0}, Lorg/eclipse/jetty/client/BlockingHttpConnection;->reset()V

    .line 245
    monitor-enter p0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_7

    .line 247
    :try_start_d
    iget-object v2, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_exchange:Lorg/eclipse/jetty/client/HttpExchange;

    .line 248
    iput-object v6, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_exchange:Lorg/eclipse/jetty/client/HttpExchange;

    if-eqz v2, :cond_17

    .line 253
    iget-object v3, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_destination:Lorg/eclipse/jetty/client/HttpDestination;

    invoke-virtual {v3}, Lorg/eclipse/jetty/client/HttpDestination;->getHttpClient()Lorg/eclipse/jetty/client/HttpClient;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/eclipse/jetty/client/HttpExchange;->cancelTimeout(Lorg/eclipse/jetty/client/HttpClient;)V

    .line 259
    :cond_17
    iget v3, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_status:I

    if-ne v3, v4, :cond_19

    .line 261
    iget-object v1, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-virtual {v2, v1}, Lorg/eclipse/jetty/client/HttpExchange;->onSwitchProtocol(Lorg/eclipse/jetty/io/EndPoint;)Lorg/eclipse/jetty/io/Connection;

    move-result-object v1

    .line 266
    iput-object v6, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_pipeline:Lorg/eclipse/jetty/client/HttpExchange;

    .line 267
    iget-object v2, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_pipeline:Lorg/eclipse/jetty/client/HttpExchange;

    if-eqz v2, :cond_18

    .line 268
    iget-object v2, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_destination:Lorg/eclipse/jetty/client/HttpDestination;

    iget-object v3, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_pipeline:Lorg/eclipse/jetty/client/HttpExchange;

    invoke-virtual {v2, v3}, Lorg/eclipse/jetty/client/HttpDestination;->send(Lorg/eclipse/jetty/client/HttpExchange;)V

    .line 269
    :cond_18
    iput-object v6, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_pipeline:Lorg/eclipse/jetty/client/HttpExchange;

    .line 276
    :cond_19
    iget-object v2, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_pipeline:Lorg/eclipse/jetty/client/HttpExchange;

    if-eqz v2, :cond_1a

    .line 279
    iget-object v2, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_destination:Lorg/eclipse/jetty/client/HttpDestination;

    iget-object v3, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_pipeline:Lorg/eclipse/jetty/client/HttpExchange;

    invoke-virtual {v2, v3}, Lorg/eclipse/jetty/client/HttpDestination;->send(Lorg/eclipse/jetty/client/HttpExchange;)V

    .line 282
    iput-object v6, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_pipeline:Lorg/eclipse/jetty/client/HttpExchange;

    .line 285
    :cond_1a
    iget-object v2, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_exchange:Lorg/eclipse/jetty/client/HttpExchange;

    if-nez v2, :cond_1b

    invoke-virtual {p0}, Lorg/eclipse/jetty/client/BlockingHttpConnection;->isReserved()Z

    move-result v2

    if-nez v2, :cond_1b

    .line 286
    iget-object v2, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_destination:Lorg/eclipse/jetty/client/HttpDestination;

    invoke-virtual {v2, p0, v8}, Lorg/eclipse/jetty/client/HttpDestination;->returnConnection(Lorg/eclipse/jetty/client/AbstractHttpConnection;Z)V

    .line 287
    :cond_1b
    monitor-exit p0

    goto :goto_8

    :catchall_2
    move-exception v0

    monitor-exit p0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    :try_start_e
    throw v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_7

    :goto_8
    const/4 v2, 0x1

    goto/16 :goto_0

    :catchall_3
    move-exception v2

    goto :goto_9

    .line 220
    :cond_1c
    :try_start_f
    instance-of v2, v7, Ljava/io/IOException;

    if-eqz v2, :cond_1d

    .line 221
    check-cast v7, Ljava/io/IOException;

    throw v7

    .line 222
    :cond_1d
    instance-of v2, v7, Ljava/lang/Error;

    if-eqz v2, :cond_1e

    .line 223
    check-cast v7, Ljava/lang/Error;

    throw v7

    .line 224
    :cond_1e
    instance-of v2, v7, Ljava/lang/RuntimeException;

    if-eqz v2, :cond_1f

    .line 225
    check-cast v7, Ljava/lang/RuntimeException;

    throw v7

    .line 226
    :cond_1f
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 228
    :goto_9
    monitor-exit p0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    :try_start_10
    throw v2
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    :catchall_4
    move-exception v3

    const/4 v2, 0x1

    .line 232
    :goto_a
    :try_start_11
    sget-object v7, Lorg/eclipse/jetty/client/BlockingHttpConnection;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v9, "{} {}"

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v10, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_generator:Lorg/eclipse/jetty/http/HttpGenerator;

    aput-object v10, v5, v0

    iget-object v10, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_parser:Lorg/eclipse/jetty/http/HttpParser;

    aput-object v10, v5, v8

    invoke-interface {v7, v9, v5}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 233
    sget-object v5, Lorg/eclipse/jetty/client/BlockingHttpConnection;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v7, "{}"

    new-array v9, v8, [Ljava/lang/Object;

    iget-object v10, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    aput-object v10, v9, v0

    invoke-interface {v5, v7, v9}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez v2, :cond_21

    .line 235
    iget-object v5, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_generator:Lorg/eclipse/jetty/http/HttpGenerator;

    invoke-virtual {v5}, Lorg/eclipse/jetty/http/HttpGenerator;->isComplete()Z

    move-result v5

    if-eqz v5, :cond_20

    iget-object v5, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_parser:Lorg/eclipse/jetty/http/HttpParser;

    invoke-virtual {v5}, Lorg/eclipse/jetty/http/HttpParser;->isComplete()Z

    move-result v5

    if-eqz v5, :cond_20

    goto :goto_b

    :cond_20
    const/4 v5, 0x0

    goto :goto_c

    :cond_21
    :goto_b
    const/4 v5, 0x1

    :goto_c
    if-eqz v5, :cond_2b

    if-nez v2, :cond_22

    .line 239
    iget-object v2, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_parser:Lorg/eclipse/jetty/http/HttpParser;

    invoke-virtual {v2}, Lorg/eclipse/jetty/http/HttpParser;->isPersistent()Z

    move-result v2

    if-eqz v2, :cond_22

    iget-object v2, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_generator:Lorg/eclipse/jetty/http/HttpGenerator;

    invoke-virtual {v2}, Lorg/eclipse/jetty/http/HttpGenerator;->isPersistent()Z

    move-result v2

    if-eqz v2, :cond_22

    const/4 v0, 0x1

    .line 240
    :cond_22
    iget-object v2, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_generator:Lorg/eclipse/jetty/http/HttpGenerator;

    invoke-virtual {v2, v0}, Lorg/eclipse/jetty/http/HttpGenerator;->setPersistent(Z)V

    .line 241
    invoke-virtual {p0}, Lorg/eclipse/jetty/client/BlockingHttpConnection;->reset()V

    if-eqz v0, :cond_23

    .line 243
    iget-object v2, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    iget-object v5, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_destination:Lorg/eclipse/jetty/client/HttpDestination;

    invoke-virtual {v5}, Lorg/eclipse/jetty/client/HttpDestination;->getHttpClient()Lorg/eclipse/jetty/client/HttpClient;

    move-result-object v5

    invoke-virtual {v5}, Lorg/eclipse/jetty/client/HttpClient;->getIdleTimeout()J

    move-result-wide v9

    long-to-int v5, v9

    invoke-interface {v2, v5}, Lorg/eclipse/jetty/io/EndPoint;->setMaxIdleTime(I)V

    .line 245
    :cond_23
    monitor-enter p0
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_7

    .line 247
    :try_start_12
    iget-object v2, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_exchange:Lorg/eclipse/jetty/client/HttpExchange;

    .line 248
    iput-object v6, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_exchange:Lorg/eclipse/jetty/client/HttpExchange;

    if-eqz v2, :cond_24

    .line 253
    iget-object v5, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_destination:Lorg/eclipse/jetty/client/HttpDestination;

    invoke-virtual {v5}, Lorg/eclipse/jetty/client/HttpDestination;->getHttpClient()Lorg/eclipse/jetty/client/HttpClient;

    move-result-object v5

    invoke-virtual {v2, v5}, Lorg/eclipse/jetty/client/HttpExchange;->cancelTimeout(Lorg/eclipse/jetty/client/HttpClient;)V

    .line 259
    :cond_24
    iget v5, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_status:I

    if-ne v5, v4, :cond_26

    .line 261
    iget-object v1, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-virtual {v2, v1}, Lorg/eclipse/jetty/client/HttpExchange;->onSwitchProtocol(Lorg/eclipse/jetty/io/EndPoint;)Lorg/eclipse/jetty/io/Connection;

    move-result-object v1

    .line 266
    iput-object v6, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_pipeline:Lorg/eclipse/jetty/client/HttpExchange;

    .line 267
    iget-object v2, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_pipeline:Lorg/eclipse/jetty/client/HttpExchange;

    if-eqz v2, :cond_25

    .line 268
    iget-object v2, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_destination:Lorg/eclipse/jetty/client/HttpDestination;

    iget-object v4, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_pipeline:Lorg/eclipse/jetty/client/HttpExchange;

    invoke-virtual {v2, v4}, Lorg/eclipse/jetty/client/HttpDestination;->send(Lorg/eclipse/jetty/client/HttpExchange;)V

    .line 269
    :cond_25
    iput-object v6, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_pipeline:Lorg/eclipse/jetty/client/HttpExchange;

    .line 276
    :cond_26
    iget-object v2, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_pipeline:Lorg/eclipse/jetty/client/HttpExchange;

    if-eqz v2, :cond_29

    if-eqz v0, :cond_28

    if-eq v1, p0, :cond_27

    goto :goto_d

    .line 281
    :cond_27
    iget-object v1, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_pipeline:Lorg/eclipse/jetty/client/HttpExchange;

    iput-object v1, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_exchange:Lorg/eclipse/jetty/client/HttpExchange;

    goto :goto_e

    .line 279
    :cond_28
    :goto_d
    iget-object v1, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_destination:Lorg/eclipse/jetty/client/HttpDestination;

    iget-object v2, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_pipeline:Lorg/eclipse/jetty/client/HttpExchange;

    invoke-virtual {v1, v2}, Lorg/eclipse/jetty/client/HttpDestination;->send(Lorg/eclipse/jetty/client/HttpExchange;)V

    .line 282
    :goto_e
    iput-object v6, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_pipeline:Lorg/eclipse/jetty/client/HttpExchange;

    .line 285
    :cond_29
    iget-object v1, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_exchange:Lorg/eclipse/jetty/client/HttpExchange;

    if-nez v1, :cond_2a

    invoke-virtual {p0}, Lorg/eclipse/jetty/client/BlockingHttpConnection;->isReserved()Z

    move-result v1

    if-nez v1, :cond_2a

    .line 286
    iget-object v1, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_destination:Lorg/eclipse/jetty/client/HttpDestination;

    xor-int/2addr v0, v8

    invoke-virtual {v1, p0, v0}, Lorg/eclipse/jetty/client/HttpDestination;->returnConnection(Lorg/eclipse/jetty/client/AbstractHttpConnection;Z)V

    .line 287
    :cond_2a
    monitor-exit p0

    goto :goto_f

    :catchall_5
    move-exception v0

    monitor-exit p0
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_5

    :try_start_13
    throw v0

    .line 289
    :cond_2b
    :goto_f
    throw v3
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_7

    :catchall_6
    move-exception v0

    .line 137
    :try_start_14
    monitor-exit p0
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_6

    :try_start_15
    throw v0
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_7

    .line 294
    :cond_2c
    iget-object v0, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_parser:Lorg/eclipse/jetty/http/HttpParser;

    invoke-virtual {v0}, Lorg/eclipse/jetty/http/HttpParser;->returnBuffers()V

    .line 295
    iget-object v0, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_generator:Lorg/eclipse/jetty/http/HttpGenerator;

    invoke-virtual {v0}, Lorg/eclipse/jetty/http/HttpGenerator;->returnBuffers()V

    return-object v1

    :catchall_7
    move-exception v0

    .line 294
    iget-object v1, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_parser:Lorg/eclipse/jetty/http/HttpParser;

    invoke-virtual {v1}, Lorg/eclipse/jetty/http/HttpParser;->returnBuffers()V

    .line 295
    iget-object v1, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_generator:Lorg/eclipse/jetty/http/HttpGenerator;

    invoke-virtual {v1}, Lorg/eclipse/jetty/http/HttpGenerator;->returnBuffers()V

    throw v0
.end method

.method public onIdleExpired(J)V
    .locals 4

    .line 76
    :try_start_0
    sget-object v0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v1, "onIdleExpired {}ms {} {}"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v2, v3

    const/4 p1, 0x1

    aput-object p0, v2, p1

    const/4 p2, 0x2

    iget-object v3, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    aput-object v3, v2, p2

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 77
    iput-boolean p1, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_expired:Z

    .line 78
    iget-object p1, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {p1}, Lorg/eclipse/jetty/io/EndPoint;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 82
    sget-object p2, Lorg/eclipse/jetty/client/BlockingHttpConnection;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {p2, p1}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    .line 86
    :try_start_1
    iget-object p1, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {p1}, Lorg/eclipse/jetty/io/EndPoint;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 90
    sget-object p2, Lorg/eclipse/jetty/client/BlockingHttpConnection;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {p2, p1}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    .line 94
    :goto_0
    monitor-enter p0

    .line 96
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 97
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method protected reset()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 52
    iput-boolean v0, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_requestComplete:Z

    .line 53
    iput-boolean v0, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_expired:Z

    .line 54
    invoke-super {p0}, Lorg/eclipse/jetty/client/AbstractHttpConnection;->reset()V

    return-void
.end method

.method public send(Lorg/eclipse/jetty/client/HttpExchange;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 304
    invoke-super {p0, p1}, Lorg/eclipse/jetty/client/AbstractHttpConnection;->send(Lorg/eclipse/jetty/client/HttpExchange;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 307
    monitor-enter p0

    .line 309
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 310
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    :goto_0
    return p1
.end method
