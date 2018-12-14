.class public Lorg/eclipse/jetty/client/AsyncHttpConnection;
.super Lorg/eclipse/jetty/client/AbstractHttpConnection;
.source "AsyncHttpConnection.java"

# interfaces
.implements Lorg/eclipse/jetty/io/nio/AsyncConnection;


# static fields
.field private static final LOG:Lorg/eclipse/jetty/util/log/Logger;


# instance fields
.field private final _asyncEndp:Lorg/eclipse/jetty/io/AsyncEndPoint;

.field private _requestComplete:Z

.field private _requestContentChunk:Lorg/eclipse/jetty/io/Buffer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    const-class v0, Lorg/eclipse/jetty/client/AsyncHttpConnection;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    return-void
.end method

.method constructor <init>(Lorg/eclipse/jetty/io/Buffers;Lorg/eclipse/jetty/io/Buffers;Lorg/eclipse/jetty/io/EndPoint;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1, p2, p3}, Lorg/eclipse/jetty/client/AbstractHttpConnection;-><init>(Lorg/eclipse/jetty/io/Buffers;Lorg/eclipse/jetty/io/Buffers;Lorg/eclipse/jetty/io/EndPoint;)V

    .line 50
    check-cast p3, Lorg/eclipse/jetty/io/AsyncEndPoint;

    iput-object p3, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_asyncEndp:Lorg/eclipse/jetty/io/AsyncEndPoint;

    return-void
.end method


# virtual methods
.method public handle()Lorg/eclipse/jetty/io/Connection;
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    move-object v3, p0

    const/4 v2, 0x1

    const/4 v4, 0x0

    :goto_0
    const/4 v5, 0x2

    if-eqz v2, :cond_2c

    if-ne v3, p0, :cond_2c

    .line 71
    :try_start_0
    sget-object v6, Lorg/eclipse/jetty/client/AsyncHttpConnection;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v7, "while open={} more={} progress={}"

    const/4 v8, 0x3

    new-array v9, v8, [Ljava/lang/Object;

    iget-object v10, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v10}, Lorg/eclipse/jetty/io/EndPoint;->isOpen()Z

    move-result v10

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    aput-object v10, v9, v0

    iget-object v10, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_parser:Lorg/eclipse/jetty/http/HttpParser;

    invoke-virtual {v10}, Lorg/eclipse/jetty/http/HttpParser;->isMoreInBuffer()Z

    move-result v10

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    aput-object v10, v9, v1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v9, v5

    invoke-interface {v6, v7, v9}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 74
    iget-object v2, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_exchange:Lorg/eclipse/jetty/client/HttpExchange;

    .line 76
    sget-object v6, Lorg/eclipse/jetty/client/AsyncHttpConnection;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v7, "exchange {} on {}"

    new-array v9, v5, [Ljava/lang/Object;

    aput-object v2, v9, v0

    aput-object p0, v9, v1

    invoke-interface {v6, v7, v9}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_8

    const/16 v6, 0x65

    const/4 v7, 0x4

    const/4 v9, 0x0

    .line 81
    :try_start_1
    iget-object v10, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_generator:Lorg/eclipse/jetty/http/HttpGenerator;

    invoke-virtual {v10}, Lorg/eclipse/jetty/http/HttpGenerator;->isCommitted()Z

    move-result v10

    if-nez v10, :cond_0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lorg/eclipse/jetty/client/HttpExchange;->getStatus()I

    move-result v10

    if-ne v10, v5, :cond_0

    .line 83
    sget-object v10, Lorg/eclipse/jetty/client/AsyncHttpConnection;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v11, "commit {}"

    new-array v12, v1, [Ljava/lang/Object;

    aput-object v2, v12, v0

    invoke-interface {v10, v11, v12}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 85
    :try_start_2
    invoke-virtual {p0}, Lorg/eclipse/jetty/client/AsyncHttpConnection;->commitRequest()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v10, 0x1

    goto :goto_1

    :catchall_0
    move-exception v10

    move-object v11, v10

    const/4 v10, 0x1

    goto/16 :goto_f

    :catch_0
    move-exception v10

    move-object v11, v10

    const/4 v10, 0x1

    goto/16 :goto_b

    :cond_0
    const/4 v10, 0x0

    .line 89
    :goto_1
    :try_start_3
    iget-object v11, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_generator:Lorg/eclipse/jetty/http/HttpGenerator;

    invoke-virtual {v11}, Lorg/eclipse/jetty/http/HttpGenerator;->isCommitted()Z

    move-result v11

    if-eqz v11, :cond_6

    iget-object v11, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_generator:Lorg/eclipse/jetty/http/HttpGenerator;

    invoke-virtual {v11}, Lorg/eclipse/jetty/http/HttpGenerator;->isComplete()Z

    move-result v11

    if-nez v11, :cond_6

    .line 91
    iget-object v11, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_generator:Lorg/eclipse/jetty/http/HttpGenerator;

    invoke-virtual {v11}, Lorg/eclipse/jetty/http/HttpGenerator;->flushBuffer()I

    move-result v11

    if-lez v11, :cond_1

    .line 93
    sget-object v11, Lorg/eclipse/jetty/client/AsyncHttpConnection;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v12, "flushed"

    new-array v13, v0, [Ljava/lang/Object;

    invoke-interface {v11, v12, v13}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v10, 0x1

    .line 98
    :cond_1
    iget-object v11, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_generator:Lorg/eclipse/jetty/http/HttpGenerator;

    invoke-virtual {v11, v5}, Lorg/eclipse/jetty/http/HttpGenerator;->isState(I)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 101
    iget-object v11, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_requestContentChunk:Lorg/eclipse/jetty/io/Buffer;

    if-nez v11, :cond_2

    .line 102
    invoke-virtual {v2, v9}, Lorg/eclipse/jetty/client/HttpExchange;->getRequestContentChunk(Lorg/eclipse/jetty/io/Buffer;)Lorg/eclipse/jetty/io/Buffer;

    move-result-object v11

    iput-object v11, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_requestContentChunk:Lorg/eclipse/jetty/io/Buffer;

    .line 104
    :cond_2
    iget-object v11, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_requestContentChunk:Lorg/eclipse/jetty/io/Buffer;

    if-nez v11, :cond_4

    .line 106
    sget-object v11, Lorg/eclipse/jetty/client/AsyncHttpConnection;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v12, "complete {}"

    new-array v13, v1, [Ljava/lang/Object;

    aput-object v2, v13, v0

    invoke-interface {v11, v12, v13}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_6

    .line 108
    :try_start_4
    iget-object v10, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_generator:Lorg/eclipse/jetty/http/HttpGenerator;

    invoke-virtual {v10}, Lorg/eclipse/jetty/http/HttpGenerator;->complete()V

    .line 109
    invoke-virtual {v2}, Lorg/eclipse/jetty/client/HttpExchange;->getStatus()I

    move-result v10

    if-ge v10, v7, :cond_3

    .line 110
    invoke-virtual {v2, v7}, Lorg/eclipse/jetty/client/HttpExchange;->setStatus(I)Z
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_3
    :goto_2
    const/4 v10, 0x1

    goto :goto_4

    .line 112
    :cond_4
    :try_start_5
    iget-object v11, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_generator:Lorg/eclipse/jetty/http/HttpGenerator;

    invoke-virtual {v11}, Lorg/eclipse/jetty/http/HttpGenerator;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_6

    .line 114
    sget-object v11, Lorg/eclipse/jetty/client/AsyncHttpConnection;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v12, "addChunk"

    new-array v13, v0, [Ljava/lang/Object;

    invoke-interface {v11, v12, v13}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_6

    .line 116
    :try_start_6
    iget-object v10, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_requestContentChunk:Lorg/eclipse/jetty/io/Buffer;

    .line 117
    invoke-virtual {v2, v9}, Lorg/eclipse/jetty/client/HttpExchange;->getRequestContentChunk(Lorg/eclipse/jetty/io/Buffer;)Lorg/eclipse/jetty/io/Buffer;

    move-result-object v11

    iput-object v11, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_requestContentChunk:Lorg/eclipse/jetty/io/Buffer;

    .line 118
    iget-object v11, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_generator:Lorg/eclipse/jetty/http/HttpGenerator;

    iget-object v12, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_requestContentChunk:Lorg/eclipse/jetty/io/Buffer;

    if-nez v12, :cond_5

    const/4 v12, 0x1

    goto :goto_3

    :cond_5
    const/4 v12, 0x0

    :goto_3
    invoke-virtual {v11, v10, v12}, Lorg/eclipse/jetty/http/HttpGenerator;->addContent(Lorg/eclipse/jetty/io/Buffer;Z)V

    .line 119
    iget-object v10, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_requestContentChunk:Lorg/eclipse/jetty/io/Buffer;

    if-nez v10, :cond_3

    .line 120
    invoke-virtual {v2, v7}, Lorg/eclipse/jetty/client/HttpExchange;->setStatus(I)Z
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2

    .line 126
    :cond_6
    :goto_4
    :try_start_7
    iget-object v11, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_generator:Lorg/eclipse/jetty/http/HttpGenerator;

    invoke-virtual {v11}, Lorg/eclipse/jetty/http/HttpGenerator;->isComplete()Z

    move-result v11

    if-eqz v11, :cond_7

    iget-boolean v11, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_requestComplete:Z

    if-nez v11, :cond_7

    .line 128
    sget-object v11, Lorg/eclipse/jetty/client/AsyncHttpConnection;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v12, "requestComplete {}"

    new-array v13, v1, [Ljava/lang/Object;

    aput-object v2, v13, v0

    invoke-interface {v11, v12, v13}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    .line 130
    :try_start_8
    iput-boolean v1, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_requestComplete:Z

    .line 131
    invoke-virtual {v2}, Lorg/eclipse/jetty/client/HttpExchange;->getEventListener()Lorg/eclipse/jetty/client/HttpEventListener;

    move-result-object v10

    invoke-interface {v10}, Lorg/eclipse/jetty/client/HttpEventListener;->onRequestComplete()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    const/4 v10, 0x1

    .line 135
    :cond_7
    :try_start_9
    iget-object v11, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_parser:Lorg/eclipse/jetty/http/HttpParser;

    invoke-virtual {v11}, Lorg/eclipse/jetty/http/HttpParser;->isComplete()Z

    move-result v11

    if-nez v11, :cond_8

    iget-object v11, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_parser:Lorg/eclipse/jetty/http/HttpParser;

    invoke-virtual {v11}, Lorg/eclipse/jetty/http/HttpParser;->parseAvailable()Z

    move-result v11

    if-eqz v11, :cond_8

    .line 137
    sget-object v11, Lorg/eclipse/jetty/client/AsyncHttpConnection;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v12, "parsed {}"

    new-array v13, v1, [Ljava/lang/Object;

    aput-object v2, v13, v0

    invoke-interface {v11, v12, v13}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v10, 0x1

    .line 142
    :cond_8
    iget-object v11, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v11}, Lorg/eclipse/jetty/io/EndPoint;->flush()V

    .line 145
    iget-object v11, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_asyncEndp:Lorg/eclipse/jetty/io/AsyncEndPoint;

    invoke-interface {v11}, Lorg/eclipse/jetty/io/AsyncEndPoint;->hasProgressed()Z

    move-result v11

    if-eqz v11, :cond_9

    .line 147
    sget-object v11, Lorg/eclipse/jetty/client/AsyncHttpConnection;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v12, "hasProgressed {}"

    new-array v13, v1, [Ljava/lang/Object;

    aput-object v2, v13, v0

    invoke-interface {v11, v12, v13}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    const/4 v10, 0x1

    .line 185
    :cond_9
    :try_start_a
    sget-object v11, Lorg/eclipse/jetty/client/AsyncHttpConnection;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v12, "finally {} on {} progress={} {}"

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v2, v7, v0

    aput-object p0, v7, v1

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v7, v5

    iget-object v2, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    aput-object v2, v7, v8

    invoke-interface {v11, v12, v7}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez v4, :cond_b

    .line 187
    iget-object v2, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_generator:Lorg/eclipse/jetty/http/HttpGenerator;

    invoke-virtual {v2}, Lorg/eclipse/jetty/http/HttpGenerator;->isComplete()Z

    move-result v2

    if-eqz v2, :cond_a

    iget-object v2, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_parser:Lorg/eclipse/jetty/http/HttpParser;

    invoke-virtual {v2}, Lorg/eclipse/jetty/http/HttpParser;->isComplete()Z

    move-result v2

    if-eqz v2, :cond_a

    goto :goto_5

    :cond_a
    const/4 v2, 0x0

    goto :goto_6

    :cond_b
    :goto_5
    const/4 v2, 0x1

    :goto_6
    if-eqz v2, :cond_15

    if-nez v4, :cond_c

    .line 191
    iget-object v2, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_parser:Lorg/eclipse/jetty/http/HttpParser;

    invoke-virtual {v2}, Lorg/eclipse/jetty/http/HttpParser;->isPersistent()Z

    move-result v2

    if-eqz v2, :cond_c

    iget-object v2, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_generator:Lorg/eclipse/jetty/http/HttpGenerator;

    invoke-virtual {v2}, Lorg/eclipse/jetty/http/HttpGenerator;->isPersistent()Z

    move-result v2

    if-eqz v2, :cond_c

    const/4 v2, 0x1

    goto :goto_7

    :cond_c
    const/4 v2, 0x0

    .line 192
    :goto_7
    iget-object v7, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_generator:Lorg/eclipse/jetty/http/HttpGenerator;

    invoke-virtual {v7, v2}, Lorg/eclipse/jetty/http/HttpGenerator;->setPersistent(Z)V

    .line 193
    invoke-virtual {p0}, Lorg/eclipse/jetty/client/AsyncHttpConnection;->reset()V

    if-eqz v2, :cond_d

    .line 195
    iget-object v7, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    iget-object v8, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_destination:Lorg/eclipse/jetty/client/HttpDestination;

    invoke-virtual {v8}, Lorg/eclipse/jetty/client/HttpDestination;->getHttpClient()Lorg/eclipse/jetty/client/HttpClient;

    move-result-object v8

    invoke-virtual {v8}, Lorg/eclipse/jetty/client/HttpClient;->getIdleTimeout()J

    move-result-wide v11

    long-to-int v8, v11

    invoke-interface {v7, v8}, Lorg/eclipse/jetty/io/EndPoint;->setMaxIdleTime(I)V

    .line 197
    :cond_d
    monitor-enter p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_8

    .line 199
    :try_start_b
    iget-object v7, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_exchange:Lorg/eclipse/jetty/client/HttpExchange;

    .line 200
    iput-object v9, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_exchange:Lorg/eclipse/jetty/client/HttpExchange;

    if-eqz v7, :cond_e

    .line 205
    iget-object v8, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_destination:Lorg/eclipse/jetty/client/HttpDestination;

    invoke-virtual {v8}, Lorg/eclipse/jetty/client/HttpDestination;->getHttpClient()Lorg/eclipse/jetty/client/HttpClient;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/eclipse/jetty/client/HttpExchange;->cancelTimeout(Lorg/eclipse/jetty/client/HttpClient;)V

    .line 211
    :cond_e
    iget v8, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_status:I

    if-ne v8, v6, :cond_10

    .line 213
    iget-object v6, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-virtual {v7, v6}, Lorg/eclipse/jetty/client/HttpExchange;->onSwitchProtocol(Lorg/eclipse/jetty/io/EndPoint;)Lorg/eclipse/jetty/io/Connection;

    move-result-object v6

    if-eqz v6, :cond_10

    .line 217
    iget-object v3, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_pipeline:Lorg/eclipse/jetty/client/HttpExchange;

    if-eqz v3, :cond_f

    .line 219
    iget-object v3, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_destination:Lorg/eclipse/jetty/client/HttpDestination;

    iget-object v7, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_pipeline:Lorg/eclipse/jetty/client/HttpExchange;

    invoke-virtual {v3, v7}, Lorg/eclipse/jetty/client/HttpDestination;->send(Lorg/eclipse/jetty/client/HttpExchange;)V

    .line 221
    :cond_f
    iput-object v9, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_pipeline:Lorg/eclipse/jetty/client/HttpExchange;

    move-object v3, v6

    .line 228
    :cond_10
    iget-object v6, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_pipeline:Lorg/eclipse/jetty/client/HttpExchange;

    if-eqz v6, :cond_13

    if-eqz v2, :cond_12

    if-eq v3, p0, :cond_11

    goto :goto_8

    .line 233
    :cond_11
    iget-object v6, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_pipeline:Lorg/eclipse/jetty/client/HttpExchange;

    iput-object v6, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_exchange:Lorg/eclipse/jetty/client/HttpExchange;

    goto :goto_9

    .line 231
    :cond_12
    :goto_8
    iget-object v6, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_destination:Lorg/eclipse/jetty/client/HttpDestination;

    iget-object v7, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_pipeline:Lorg/eclipse/jetty/client/HttpExchange;

    invoke-virtual {v6, v7}, Lorg/eclipse/jetty/client/HttpDestination;->send(Lorg/eclipse/jetty/client/HttpExchange;)V

    .line 234
    :goto_9
    iput-object v9, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_pipeline:Lorg/eclipse/jetty/client/HttpExchange;

    .line 237
    :cond_13
    iget-object v6, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_exchange:Lorg/eclipse/jetty/client/HttpExchange;

    if-nez v6, :cond_14

    invoke-virtual {p0}, Lorg/eclipse/jetty/client/AsyncHttpConnection;->isReserved()Z

    move-result v6

    if-nez v6, :cond_14

    .line 238
    iget-object v6, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_destination:Lorg/eclipse/jetty/client/HttpDestination;

    xor-int/lit8 v2, v2, 0x1

    invoke-virtual {v6, p0, v2}, Lorg/eclipse/jetty/client/HttpDestination;->returnConnection(Lorg/eclipse/jetty/client/AbstractHttpConnection;Z)V

    .line 239
    :cond_14
    monitor-exit p0

    goto :goto_a

    :catchall_1
    move-exception v2

    monitor-exit p0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    :try_start_c
    throw v2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_8

    :cond_15
    :goto_a
    move v2, v10

    goto/16 :goto_0

    :catch_1
    move-exception v11

    goto :goto_b

    :catchall_2
    move-exception v10

    move-object v11, v10

    const/4 v10, 0x0

    goto/16 :goto_f

    :catch_2
    move-exception v10

    move-object v11, v10

    const/4 v10, 0x0

    .line 153
    :goto_b
    :try_start_d
    sget-object v12, Lorg/eclipse/jetty/client/AsyncHttpConnection;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Failure on "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_exchange:Lorg/eclipse/jetty/client/HttpExchange;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v12, v13, v11}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    .line 157
    :try_start_e
    monitor-enter p0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    if-eqz v2, :cond_1c

    .line 163
    :try_start_f
    invoke-virtual {v2}, Lorg/eclipse/jetty/client/HttpExchange;->getStatus()I

    move-result v4

    const/16 v12, 0xa

    if-eq v4, v12, :cond_16

    invoke-virtual {v2}, Lorg/eclipse/jetty/client/HttpExchange;->getStatus()I

    move-result v4

    const/16 v12, 0xb

    if-eq v4, v12, :cond_16

    invoke-virtual {v2}, Lorg/eclipse/jetty/client/HttpExchange;->isDone()Z

    move-result v4

    if-nez v4, :cond_16

    const/16 v4, 0x9

    .line 167
    invoke-virtual {v2, v4}, Lorg/eclipse/jetty/client/HttpExchange;->setStatus(I)Z

    move-result v4

    if-eqz v4, :cond_16

    .line 168
    invoke-virtual {v2}, Lorg/eclipse/jetty/client/HttpExchange;->getEventListener()Lorg/eclipse/jetty/client/HttpEventListener;

    move-result-object v4

    invoke-interface {v4, v11}, Lorg/eclipse/jetty/client/HttpEventListener;->onException(Ljava/lang/Throwable;)V

    .line 181
    :cond_16
    monitor-exit p0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    .line 185
    :try_start_10
    sget-object v4, Lorg/eclipse/jetty/client/AsyncHttpConnection;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v11, "finally {} on {} progress={} {}"

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v2, v7, v0

    aput-object p0, v7, v1

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v7, v5

    iget-object v2, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    aput-object v2, v7, v8

    invoke-interface {v4, v11, v7}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 192
    iget-object v2, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_generator:Lorg/eclipse/jetty/http/HttpGenerator;

    invoke-virtual {v2, v0}, Lorg/eclipse/jetty/http/HttpGenerator;->setPersistent(Z)V

    .line 193
    invoke-virtual {p0}, Lorg/eclipse/jetty/client/AsyncHttpConnection;->reset()V

    .line 197
    monitor-enter p0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_8

    .line 199
    :try_start_11
    iget-object v2, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_exchange:Lorg/eclipse/jetty/client/HttpExchange;

    .line 200
    iput-object v9, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_exchange:Lorg/eclipse/jetty/client/HttpExchange;

    if-eqz v2, :cond_17

    .line 205
    iget-object v4, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_destination:Lorg/eclipse/jetty/client/HttpDestination;

    invoke-virtual {v4}, Lorg/eclipse/jetty/client/HttpDestination;->getHttpClient()Lorg/eclipse/jetty/client/HttpClient;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/eclipse/jetty/client/HttpExchange;->cancelTimeout(Lorg/eclipse/jetty/client/HttpClient;)V

    .line 211
    :cond_17
    iget v4, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_status:I

    if-ne v4, v6, :cond_19

    .line 213
    iget-object v4, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-virtual {v2, v4}, Lorg/eclipse/jetty/client/HttpExchange;->onSwitchProtocol(Lorg/eclipse/jetty/io/EndPoint;)Lorg/eclipse/jetty/io/Connection;

    move-result-object v2

    if-eqz v2, :cond_19

    .line 217
    iget-object v3, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_pipeline:Lorg/eclipse/jetty/client/HttpExchange;

    if-eqz v3, :cond_18

    .line 219
    iget-object v3, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_destination:Lorg/eclipse/jetty/client/HttpDestination;

    iget-object v4, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_pipeline:Lorg/eclipse/jetty/client/HttpExchange;

    invoke-virtual {v3, v4}, Lorg/eclipse/jetty/client/HttpDestination;->send(Lorg/eclipse/jetty/client/HttpExchange;)V

    .line 221
    :cond_18
    iput-object v9, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_pipeline:Lorg/eclipse/jetty/client/HttpExchange;

    goto :goto_c

    :cond_19
    move-object v2, v3

    .line 228
    :goto_c
    iget-object v3, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_pipeline:Lorg/eclipse/jetty/client/HttpExchange;

    if-eqz v3, :cond_1a

    .line 231
    iget-object v3, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_destination:Lorg/eclipse/jetty/client/HttpDestination;

    iget-object v4, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_pipeline:Lorg/eclipse/jetty/client/HttpExchange;

    invoke-virtual {v3, v4}, Lorg/eclipse/jetty/client/HttpDestination;->send(Lorg/eclipse/jetty/client/HttpExchange;)V

    .line 234
    iput-object v9, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_pipeline:Lorg/eclipse/jetty/client/HttpExchange;

    .line 237
    :cond_1a
    iget-object v3, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_exchange:Lorg/eclipse/jetty/client/HttpExchange;

    if-nez v3, :cond_1b

    invoke-virtual {p0}, Lorg/eclipse/jetty/client/AsyncHttpConnection;->isReserved()Z

    move-result v3

    if-nez v3, :cond_1b

    .line 238
    iget-object v3, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_destination:Lorg/eclipse/jetty/client/HttpDestination;

    invoke-virtual {v3, p0, v1}, Lorg/eclipse/jetty/client/HttpDestination;->returnConnection(Lorg/eclipse/jetty/client/AbstractHttpConnection;Z)V

    .line 239
    :cond_1b
    monitor-exit p0

    goto :goto_d

    :catchall_3
    move-exception v2

    monitor-exit p0
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    :try_start_12
    throw v2
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_8

    :goto_d
    move-object v3, v2

    move v2, v10

    const/4 v4, 0x1

    goto/16 :goto_0

    :catchall_4
    move-exception v4

    goto :goto_e

    .line 173
    :cond_1c
    :try_start_13
    instance-of v4, v11, Ljava/io/IOException;

    if-eqz v4, :cond_1d

    .line 174
    check-cast v11, Ljava/io/IOException;

    throw v11

    .line 175
    :cond_1d
    instance-of v4, v11, Ljava/lang/Error;

    if-eqz v4, :cond_1e

    .line 176
    check-cast v11, Ljava/lang/Error;

    throw v11

    .line 177
    :cond_1e
    instance-of v4, v11, Ljava/lang/RuntimeException;

    if-eqz v4, :cond_1f

    .line 178
    check-cast v11, Ljava/lang/RuntimeException;

    throw v11

    .line 179
    :cond_1f
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v11}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 181
    :goto_e
    monitor-exit p0
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_4

    :try_start_14
    throw v4
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_5

    :catchall_5
    move-exception v4

    move-object v11, v4

    const/4 v4, 0x1

    goto :goto_f

    :catchall_6
    move-exception v11

    .line 185
    :goto_f
    :try_start_15
    sget-object v12, Lorg/eclipse/jetty/client/AsyncHttpConnection;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v13, "finally {} on {} progress={} {}"

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v2, v7, v0

    aput-object p0, v7, v1

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v7, v5

    iget-object v2, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    aput-object v2, v7, v8

    invoke-interface {v12, v13, v7}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez v4, :cond_21

    .line 187
    iget-object v2, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_generator:Lorg/eclipse/jetty/http/HttpGenerator;

    invoke-virtual {v2}, Lorg/eclipse/jetty/http/HttpGenerator;->isComplete()Z

    move-result v2

    if-eqz v2, :cond_20

    iget-object v2, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_parser:Lorg/eclipse/jetty/http/HttpParser;

    invoke-virtual {v2}, Lorg/eclipse/jetty/http/HttpParser;->isComplete()Z

    move-result v2

    if-eqz v2, :cond_20

    goto :goto_10

    :cond_20
    const/4 v2, 0x0

    goto :goto_11

    :cond_21
    :goto_10
    const/4 v2, 0x1

    :goto_11
    if-eqz v2, :cond_2b

    if-nez v4, :cond_22

    .line 191
    iget-object v2, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_parser:Lorg/eclipse/jetty/http/HttpParser;

    invoke-virtual {v2}, Lorg/eclipse/jetty/http/HttpParser;->isPersistent()Z

    move-result v2

    if-eqz v2, :cond_22

    iget-object v2, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_generator:Lorg/eclipse/jetty/http/HttpGenerator;

    invoke-virtual {v2}, Lorg/eclipse/jetty/http/HttpGenerator;->isPersistent()Z

    move-result v2

    if-eqz v2, :cond_22

    const/4 v2, 0x1

    goto :goto_12

    :cond_22
    const/4 v2, 0x0

    .line 192
    :goto_12
    iget-object v4, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_generator:Lorg/eclipse/jetty/http/HttpGenerator;

    invoke-virtual {v4, v2}, Lorg/eclipse/jetty/http/HttpGenerator;->setPersistent(Z)V

    .line 193
    invoke-virtual {p0}, Lorg/eclipse/jetty/client/AsyncHttpConnection;->reset()V

    if-eqz v2, :cond_23

    .line 195
    iget-object v4, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    iget-object v7, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_destination:Lorg/eclipse/jetty/client/HttpDestination;

    invoke-virtual {v7}, Lorg/eclipse/jetty/client/HttpDestination;->getHttpClient()Lorg/eclipse/jetty/client/HttpClient;

    move-result-object v7

    invoke-virtual {v7}, Lorg/eclipse/jetty/client/HttpClient;->getIdleTimeout()J

    move-result-wide v7

    long-to-int v7, v7

    invoke-interface {v4, v7}, Lorg/eclipse/jetty/io/EndPoint;->setMaxIdleTime(I)V

    .line 197
    :cond_23
    monitor-enter p0
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_8

    .line 199
    :try_start_16
    iget-object v4, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_exchange:Lorg/eclipse/jetty/client/HttpExchange;

    .line 200
    iput-object v9, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_exchange:Lorg/eclipse/jetty/client/HttpExchange;

    if-eqz v4, :cond_24

    .line 205
    iget-object v7, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_destination:Lorg/eclipse/jetty/client/HttpDestination;

    invoke-virtual {v7}, Lorg/eclipse/jetty/client/HttpDestination;->getHttpClient()Lorg/eclipse/jetty/client/HttpClient;

    move-result-object v7

    invoke-virtual {v4, v7}, Lorg/eclipse/jetty/client/HttpExchange;->cancelTimeout(Lorg/eclipse/jetty/client/HttpClient;)V

    .line 211
    :cond_24
    iget v7, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_status:I

    if-ne v7, v6, :cond_26

    .line 213
    iget-object v6, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-virtual {v4, v6}, Lorg/eclipse/jetty/client/HttpExchange;->onSwitchProtocol(Lorg/eclipse/jetty/io/EndPoint;)Lorg/eclipse/jetty/io/Connection;

    move-result-object v4

    if-eqz v4, :cond_26

    .line 217
    iget-object v3, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_pipeline:Lorg/eclipse/jetty/client/HttpExchange;

    if-eqz v3, :cond_25

    .line 219
    iget-object v3, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_destination:Lorg/eclipse/jetty/client/HttpDestination;

    iget-object v6, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_pipeline:Lorg/eclipse/jetty/client/HttpExchange;

    invoke-virtual {v3, v6}, Lorg/eclipse/jetty/client/HttpDestination;->send(Lorg/eclipse/jetty/client/HttpExchange;)V

    .line 221
    :cond_25
    iput-object v9, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_pipeline:Lorg/eclipse/jetty/client/HttpExchange;

    move-object v3, v4

    .line 228
    :cond_26
    iget-object v4, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_pipeline:Lorg/eclipse/jetty/client/HttpExchange;

    if-eqz v4, :cond_29

    if-eqz v2, :cond_28

    if-eq v3, p0, :cond_27

    goto :goto_13

    .line 233
    :cond_27
    iget-object v3, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_pipeline:Lorg/eclipse/jetty/client/HttpExchange;

    iput-object v3, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_exchange:Lorg/eclipse/jetty/client/HttpExchange;

    goto :goto_14

    .line 231
    :cond_28
    :goto_13
    iget-object v3, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_destination:Lorg/eclipse/jetty/client/HttpDestination;

    iget-object v4, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_pipeline:Lorg/eclipse/jetty/client/HttpExchange;

    invoke-virtual {v3, v4}, Lorg/eclipse/jetty/client/HttpDestination;->send(Lorg/eclipse/jetty/client/HttpExchange;)V

    .line 234
    :goto_14
    iput-object v9, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_pipeline:Lorg/eclipse/jetty/client/HttpExchange;

    .line 237
    :cond_29
    iget-object v3, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_exchange:Lorg/eclipse/jetty/client/HttpExchange;

    if-nez v3, :cond_2a

    invoke-virtual {p0}, Lorg/eclipse/jetty/client/AsyncHttpConnection;->isReserved()Z

    move-result v3

    if-nez v3, :cond_2a

    .line 238
    iget-object v3, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_destination:Lorg/eclipse/jetty/client/HttpDestination;

    xor-int/2addr v2, v1

    invoke-virtual {v3, p0, v2}, Lorg/eclipse/jetty/client/HttpDestination;->returnConnection(Lorg/eclipse/jetty/client/AbstractHttpConnection;Z)V

    .line 239
    :cond_2a
    monitor-exit p0

    goto :goto_15

    :catchall_7
    move-exception v2

    monitor-exit p0
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_7

    :try_start_17
    throw v2

    .line 242
    :cond_2b
    :goto_15
    throw v11
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_8

    :catchall_8
    move-exception v2

    .line 247
    iget-object v3, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_parser:Lorg/eclipse/jetty/http/HttpParser;

    invoke-virtual {v3}, Lorg/eclipse/jetty/http/HttpParser;->returnBuffers()V

    .line 248
    iget-object v3, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_generator:Lorg/eclipse/jetty/http/HttpGenerator;

    invoke-virtual {v3}, Lorg/eclipse/jetty/http/HttpGenerator;->returnBuffers()V

    .line 249
    sget-object v3, Lorg/eclipse/jetty/client/AsyncHttpConnection;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v4, "unhandle {} on {}"

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_exchange:Lorg/eclipse/jetty/client/HttpExchange;

    aput-object v6, v5, v0

    iget-object v0, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    aput-object v0, v5, v1

    invoke-interface {v3, v4, v5}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v2

    .line 247
    :cond_2c
    iget-object v2, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_parser:Lorg/eclipse/jetty/http/HttpParser;

    invoke-virtual {v2}, Lorg/eclipse/jetty/http/HttpParser;->returnBuffers()V

    .line 248
    iget-object v2, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_generator:Lorg/eclipse/jetty/http/HttpGenerator;

    invoke-virtual {v2}, Lorg/eclipse/jetty/http/HttpGenerator;->returnBuffers()V

    .line 249
    sget-object v2, Lorg/eclipse/jetty/client/AsyncHttpConnection;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v4, "unhandle {} on {}"

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_exchange:Lorg/eclipse/jetty/client/HttpExchange;

    aput-object v6, v5, v0

    iget-object v0, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    aput-object v0, v5, v1

    invoke-interface {v2, v4, v5}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v3
.end method

.method public onInputShutdown()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 257
    iget-object v0, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_generator:Lorg/eclipse/jetty/http/HttpGenerator;

    invoke-virtual {v0}, Lorg/eclipse/jetty/http/HttpGenerator;->isIdle()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 258
    iget-object v0, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/EndPoint;->shutdownOutput()V

    :cond_0
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

    .line 55
    iput-boolean v0, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_requestComplete:Z

    .line 56
    invoke-super {p0}, Lorg/eclipse/jetty/client/AbstractHttpConnection;->reset()V

    return-void
.end method

.method public send(Lorg/eclipse/jetty/client/HttpExchange;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 264
    invoke-super {p0, p1}, Lorg/eclipse/jetty/client/AbstractHttpConnection;->send(Lorg/eclipse/jetty/client/HttpExchange;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 266
    iget-object v0, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_asyncEndp:Lorg/eclipse/jetty/io/AsyncEndPoint;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/AsyncEndPoint;->asyncDispatch()V

    :cond_0
    return p1
.end method
