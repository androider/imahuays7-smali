.class public Lorg/eclipse/jetty/server/AsyncHttpConnection;
.super Lorg/eclipse/jetty/server/AbstractHttpConnection;
.source "AsyncHttpConnection.java"

# interfaces
.implements Lorg/eclipse/jetty/io/nio/AsyncConnection;


# static fields
.field private static final LOG:Lorg/eclipse/jetty/util/log/Logger;

.field private static final NO_PROGRESS_CLOSE:I

.field private static final NO_PROGRESS_INFO:I


# instance fields
.field private final _asyncEndp:Lorg/eclipse/jetty/io/AsyncEndPoint;

.field private _readInterested:Z

.field private _total_no_progress:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "org.mortbay.jetty.NO_PROGRESS_INFO"

    const/16 v1, 0x64

    .line 40
    invoke-static {v0, v1}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->NO_PROGRESS_INFO:I

    const-string v0, "org.mortbay.jetty.NO_PROGRESS_CLOSE"

    const/16 v1, 0xc8

    .line 41
    invoke-static {v0, v1}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->NO_PROGRESS_CLOSE:I

    .line 43
    const-class v0, Lorg/eclipse/jetty/server/AsyncHttpConnection;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jetty/server/Connector;Lorg/eclipse/jetty/io/EndPoint;Lorg/eclipse/jetty/server/Server;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1, p2, p3}, Lorg/eclipse/jetty/server/AbstractHttpConnection;-><init>(Lorg/eclipse/jetty/server/Connector;Lorg/eclipse/jetty/io/EndPoint;Lorg/eclipse/jetty/server/Server;)V

    const/4 p1, 0x1

    .line 46
    iput-boolean p1, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_readInterested:Z

    .line 51
    check-cast p2, Lorg/eclipse/jetty/io/AsyncEndPoint;

    iput-object p2, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_asyncEndp:Lorg/eclipse/jetty/io/AsyncEndPoint;

    return-void
.end method


# virtual methods
.method public handle()Lorg/eclipse/jetty/io/Connection;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 63
    :try_start_0
    invoke-static {p0}, Lorg/eclipse/jetty/server/AsyncHttpConnection;->setCurrentConnection(Lorg/eclipse/jetty/server/AbstractHttpConnection;)V

    .line 66
    iget-object v3, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_asyncEndp:Lorg/eclipse/jetty/io/AsyncEndPoint;

    invoke-interface {v3, v2}, Lorg/eclipse/jetty/io/AsyncEndPoint;->setCheckForIdle(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    move-object v4, p0

    const/4 v3, 0x1

    const/4 v5, 0x0

    :goto_0
    if-eqz v3, :cond_15

    if-ne v4, p0, :cond_15

    const/16 v3, 0x65

    .line 76
    :try_start_1
    iget-object v6, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_request:Lorg/eclipse/jetty/server/Request;

    iget-object v6, v6, Lorg/eclipse/jetty/server/Request;->_async:Lorg/eclipse/jetty/server/AsyncContinuation;

    invoke-virtual {v6}, Lorg/eclipse/jetty/server/AsyncContinuation;->isAsync()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 78
    iget-object v6, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_request:Lorg/eclipse/jetty/server/Request;

    iget-object v6, v6, Lorg/eclipse/jetty/server/Request;->_async:Lorg/eclipse/jetty/server/AsyncContinuation;

    invoke-virtual {v6}, Lorg/eclipse/jetty/server/AsyncContinuation;->isDispatchable()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 79
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/AsyncHttpConnection;->handleRequest()V

    goto :goto_1

    .line 82
    :cond_0
    iget-object v6, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_parser:Lorg/eclipse/jetty/http/Parser;

    invoke-interface {v6}, Lorg/eclipse/jetty/http/Parser;->isComplete()Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_parser:Lorg/eclipse/jetty/http/Parser;

    invoke-interface {v6}, Lorg/eclipse/jetty/http/Parser;->parseAvailable()Z

    move-result v6
    :try_end_1
    .catch Lorg/eclipse/jetty/http/HttpException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v6, :cond_1

    const/4 v6, 0x1

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v6, 0x0

    .line 86
    :goto_2
    :try_start_2
    iget-object v7, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    invoke-interface {v7}, Lorg/eclipse/jetty/http/Generator;->isCommitted()Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    invoke-interface {v7}, Lorg/eclipse/jetty/http/Generator;->isComplete()Z

    move-result v7

    if-nez v7, :cond_2

    iget-object v7, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v7}, Lorg/eclipse/jetty/io/EndPoint;->isOutputShutdown()Z

    move-result v7

    if-nez v7, :cond_2

    iget-object v7, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_request:Lorg/eclipse/jetty/server/Request;

    invoke-virtual {v7}, Lorg/eclipse/jetty/server/Request;->getAsyncContinuation()Lorg/eclipse/jetty/server/AsyncContinuation;

    move-result-object v7

    invoke-virtual {v7}, Lorg/eclipse/jetty/server/AsyncContinuation;->isAsyncStarted()Z

    move-result v7

    if-nez v7, :cond_2

    .line 87
    iget-object v7, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    invoke-interface {v7}, Lorg/eclipse/jetty/http/Generator;->flushBuffer()I

    move-result v7

    if-lez v7, :cond_2

    const/4 v6, 0x1

    .line 91
    :cond_2
    iget-object v7, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v7}, Lorg/eclipse/jetty/io/EndPoint;->flush()V

    .line 94
    iget-object v7, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_asyncEndp:Lorg/eclipse/jetty/io/AsyncEndPoint;

    invoke-interface {v7}, Lorg/eclipse/jetty/io/AsyncEndPoint;->hasProgressed()Z

    move-result v7
    :try_end_2
    .catch Lorg/eclipse/jetty/http/HttpException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v7, :cond_3

    const/4 v6, 0x1

    :cond_3
    or-int/2addr v5, v6

    .line 112
    :try_start_3
    iget-object v7, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_parser:Lorg/eclipse/jetty/http/Parser;

    invoke-interface {v7}, Lorg/eclipse/jetty/http/Parser;->isComplete()Z

    move-result v7

    .line 113
    iget-object v8, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    invoke-interface {v8}, Lorg/eclipse/jetty/http/Generator;->isComplete()Z

    move-result v8

    if-eqz v7, :cond_4

    if-eqz v8, :cond_4

    const/4 v9, 0x1

    goto :goto_3

    :cond_4
    const/4 v9, 0x0

    :goto_3
    if-eqz v7, :cond_8

    if-eqz v8, :cond_7

    .line 123
    iget-object v6, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_response:Lorg/eclipse/jetty/server/Response;

    invoke-virtual {v6}, Lorg/eclipse/jetty/server/Response;->getStatus()I

    move-result v6

    if-ne v6, v3, :cond_5

    .line 125
    iget-object v3, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_request:Lorg/eclipse/jetty/server/Request;

    const-string v6, "org.eclipse.jetty.io.Connection"

    invoke-virtual {v3, v6}, Lorg/eclipse/jetty/server/Request;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/eclipse/jetty/io/Connection;

    if-eqz v3, :cond_5

    move-object v4, v3

    .line 130
    :cond_5
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/AsyncHttpConnection;->reset()V

    .line 133
    iget-object v3, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    invoke-interface {v3}, Lorg/eclipse/jetty/http/Generator;->isPersistent()Z

    move-result v3

    if-nez v3, :cond_6

    iget-object v3, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v3}, Lorg/eclipse/jetty/io/EndPoint;->isOutputShutdown()Z

    move-result v3

    if-nez v3, :cond_6

    .line 135
    sget-object v3, Lorg/eclipse/jetty/server/AsyncHttpConnection;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v6, "Safety net oshut!!!  IF YOU SEE THIS, PLEASE RAISE BUGZILLA"

    new-array v7, v2, [Ljava/lang/Object;

    invoke-interface {v3, v6, v7}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 136
    iget-object v3, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v3}, Lorg/eclipse/jetty/io/EndPoint;->shutdownOutput()V

    :cond_6
    const/4 v6, 0x1

    goto :goto_4

    .line 144
    :cond_7
    iput-boolean v2, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_readInterested:Z

    .line 145
    sget-object v3, Lorg/eclipse/jetty/server/AsyncHttpConnection;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v7, "Disabled read interest while writing response {}"

    new-array v8, v1, [Ljava/lang/Object;

    iget-object v10, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    aput-object v10, v8, v2

    invoke-interface {v3, v7, v8}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_8
    :goto_4
    if-nez v9, :cond_9

    .line 149
    iget-object v3, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_request:Lorg/eclipse/jetty/server/Request;

    invoke-virtual {v3}, Lorg/eclipse/jetty/server/Request;->getAsyncContinuation()Lorg/eclipse/jetty/server/AsyncContinuation;

    move-result-object v3

    invoke-virtual {v3}, Lorg/eclipse/jetty/server/AsyncContinuation;->isAsyncStarted()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 153
    sget-object v3, Lorg/eclipse/jetty/server/AsyncHttpConnection;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v6, "suspended {}"

    new-array v7, v1, [Ljava/lang/Object;

    aput-object p0, v7, v2

    invoke-interface {v3, v6, v7}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    const/4 v6, 0x0

    :cond_9
    move v3, v6

    goto/16 :goto_0

    :catch_0
    move-exception v7

    goto :goto_5

    :catchall_0
    move-exception v4

    const/4 v6, 0x0

    goto/16 :goto_8

    :catch_1
    move-exception v6

    move-object v7, v6

    const/4 v6, 0x0

    .line 99
    :goto_5
    :try_start_4
    sget-object v8, Lorg/eclipse/jetty/server/AsyncHttpConnection;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v8}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v8

    if-eqz v8, :cond_a

    .line 101
    sget-object v8, Lorg/eclipse/jetty/server/AsyncHttpConnection;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "uri="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_uri:Lorg/eclipse/jetty/http/HttpURI;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-array v10, v2, [Ljava/lang/Object;

    invoke-interface {v8, v9, v10}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 102
    sget-object v8, Lorg/eclipse/jetty/server/AsyncHttpConnection;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "fields="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_requestFields:Lorg/eclipse/jetty/http/HttpFields;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-array v10, v2, [Ljava/lang/Object;

    invoke-interface {v8, v9, v10}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 103
    sget-object v8, Lorg/eclipse/jetty/server/AsyncHttpConnection;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v8, v7}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 106
    :cond_a
    :try_start_5
    iget-object v6, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    invoke-virtual {v7}, Lorg/eclipse/jetty/http/HttpException;->getStatus()I

    move-result v8

    invoke-virtual {v7}, Lorg/eclipse/jetty/http/HttpException;->getReason()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v8, v7, v0, v1}, Lorg/eclipse/jetty/http/Generator;->sendError(ILjava/lang/String;Ljava/lang/String;Z)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    or-int/lit8 v5, v5, 0x1

    .line 112
    :try_start_6
    iget-object v6, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_parser:Lorg/eclipse/jetty/http/Parser;

    invoke-interface {v6}, Lorg/eclipse/jetty/http/Parser;->isComplete()Z

    move-result v6

    .line 113
    iget-object v7, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    invoke-interface {v7}, Lorg/eclipse/jetty/http/Generator;->isComplete()Z

    move-result v7

    if-eqz v6, :cond_b

    if-eqz v7, :cond_b

    const/4 v8, 0x1

    goto :goto_6

    :cond_b
    const/4 v8, 0x0

    :goto_6
    if-eqz v6, :cond_e

    if-eqz v7, :cond_d

    .line 123
    iget-object v6, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_response:Lorg/eclipse/jetty/server/Response;

    invoke-virtual {v6}, Lorg/eclipse/jetty/server/Response;->getStatus()I

    move-result v6

    if-ne v6, v3, :cond_c

    .line 125
    iget-object v3, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_request:Lorg/eclipse/jetty/server/Request;

    const-string v6, "org.eclipse.jetty.io.Connection"

    invoke-virtual {v3, v6}, Lorg/eclipse/jetty/server/Request;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/eclipse/jetty/io/Connection;

    if-eqz v3, :cond_c

    move-object v4, v3

    .line 130
    :cond_c
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/AsyncHttpConnection;->reset()V

    .line 133
    iget-object v3, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    invoke-interface {v3}, Lorg/eclipse/jetty/http/Generator;->isPersistent()Z

    move-result v3

    if-nez v3, :cond_e

    iget-object v3, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v3}, Lorg/eclipse/jetty/io/EndPoint;->isOutputShutdown()Z

    move-result v3

    if-nez v3, :cond_e

    .line 135
    sget-object v3, Lorg/eclipse/jetty/server/AsyncHttpConnection;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v6, "Safety net oshut!!!  IF YOU SEE THIS, PLEASE RAISE BUGZILLA"

    new-array v7, v2, [Ljava/lang/Object;

    invoke-interface {v3, v6, v7}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 136
    iget-object v3, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v3}, Lorg/eclipse/jetty/io/EndPoint;->shutdownOutput()V

    goto :goto_7

    .line 144
    :cond_d
    iput-boolean v2, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_readInterested:Z

    .line 145
    sget-object v3, Lorg/eclipse/jetty/server/AsyncHttpConnection;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v6, "Disabled read interest while writing response {}"

    new-array v7, v1, [Ljava/lang/Object;

    iget-object v9, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    aput-object v9, v7, v2

    invoke-interface {v3, v6, v7}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_e
    :goto_7
    if-nez v8, :cond_f

    .line 149
    iget-object v3, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_request:Lorg/eclipse/jetty/server/Request;

    invoke-virtual {v3}, Lorg/eclipse/jetty/server/Request;->getAsyncContinuation()Lorg/eclipse/jetty/server/AsyncContinuation;

    move-result-object v3

    invoke-virtual {v3}, Lorg/eclipse/jetty/server/AsyncContinuation;->isAsyncStarted()Z

    move-result v3

    if-eqz v3, :cond_f

    .line 153
    sget-object v3, Lorg/eclipse/jetty/server/AsyncHttpConnection;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v6, "suspended {}"

    new-array v7, v1, [Ljava/lang/Object;

    aput-object p0, v7, v2

    invoke-interface {v3, v6, v7}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v3, 0x0

    goto/16 :goto_0

    :cond_f
    const/4 v3, 0x1

    goto/16 :goto_0

    :catchall_1
    move-exception v4

    const/4 v6, 0x1

    goto :goto_8

    :catchall_2
    move-exception v4

    :goto_8
    or-int/2addr v5, v6

    .line 112
    iget-object v6, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_parser:Lorg/eclipse/jetty/http/Parser;

    invoke-interface {v6}, Lorg/eclipse/jetty/http/Parser;->isComplete()Z

    move-result v6

    .line 113
    iget-object v7, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    invoke-interface {v7}, Lorg/eclipse/jetty/http/Generator;->isComplete()Z

    move-result v7

    if-eqz v6, :cond_10

    if-eqz v7, :cond_10

    const/4 v8, 0x1

    goto :goto_9

    :cond_10
    const/4 v8, 0x0

    :goto_9
    if-eqz v6, :cond_13

    if-eqz v7, :cond_12

    .line 123
    iget-object v6, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_response:Lorg/eclipse/jetty/server/Response;

    invoke-virtual {v6}, Lorg/eclipse/jetty/server/Response;->getStatus()I

    move-result v6

    if-ne v6, v3, :cond_11

    .line 125
    iget-object v3, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_request:Lorg/eclipse/jetty/server/Request;

    const-string v6, "org.eclipse.jetty.io.Connection"

    invoke-virtual {v3, v6}, Lorg/eclipse/jetty/server/Request;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/eclipse/jetty/io/Connection;

    .line 130
    :cond_11
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/AsyncHttpConnection;->reset()V

    .line 133
    iget-object v3, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    invoke-interface {v3}, Lorg/eclipse/jetty/http/Generator;->isPersistent()Z

    move-result v3

    if-nez v3, :cond_13

    iget-object v3, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v3}, Lorg/eclipse/jetty/io/EndPoint;->isOutputShutdown()Z

    move-result v3

    if-nez v3, :cond_13

    .line 135
    sget-object v3, Lorg/eclipse/jetty/server/AsyncHttpConnection;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v6, "Safety net oshut!!!  IF YOU SEE THIS, PLEASE RAISE BUGZILLA"

    new-array v7, v2, [Ljava/lang/Object;

    invoke-interface {v3, v6, v7}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 136
    iget-object v3, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v3}, Lorg/eclipse/jetty/io/EndPoint;->shutdownOutput()V

    goto :goto_a

    .line 144
    :cond_12
    iput-boolean v2, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_readInterested:Z

    .line 145
    sget-object v3, Lorg/eclipse/jetty/server/AsyncHttpConnection;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v6, "Disabled read interest while writing response {}"

    new-array v7, v1, [Ljava/lang/Object;

    iget-object v9, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    aput-object v9, v7, v2

    invoke-interface {v3, v6, v7}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_13
    :goto_a
    if-nez v8, :cond_14

    .line 149
    iget-object v3, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_request:Lorg/eclipse/jetty/server/Request;

    invoke-virtual {v3}, Lorg/eclipse/jetty/server/Request;->getAsyncContinuation()Lorg/eclipse/jetty/server/AsyncContinuation;

    move-result-object v3

    invoke-virtual {v3}, Lorg/eclipse/jetty/server/AsyncContinuation;->isAsyncStarted()Z

    move-result v3

    if-eqz v3, :cond_14

    .line 153
    sget-object v3, Lorg/eclipse/jetty/server/AsyncHttpConnection;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v6, "suspended {}"

    new-array v7, v1, [Ljava/lang/Object;

    aput-object p0, v7, v2

    invoke-interface {v3, v6, v7}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 156
    :cond_14
    throw v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :catchall_3
    move-exception v3

    goto/16 :goto_c

    .line 161
    :cond_15
    invoke-static {v0}, Lorg/eclipse/jetty/server/AsyncHttpConnection;->setCurrentConnection(Lorg/eclipse/jetty/server/AbstractHttpConnection;)V

    .line 164
    iget-object v0, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_request:Lorg/eclipse/jetty/server/Request;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/Request;->getAsyncContinuation()Lorg/eclipse/jetty/server/AsyncContinuation;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AsyncContinuation;->isAsyncStarted()Z

    move-result v0

    if-nez v0, :cond_16

    .line 167
    iget-object v0, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_parser:Lorg/eclipse/jetty/http/Parser;

    invoke-interface {v0}, Lorg/eclipse/jetty/http/Parser;->returnBuffers()V

    .line 168
    iget-object v0, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    invoke-interface {v0}, Lorg/eclipse/jetty/http/Generator;->returnBuffers()V

    .line 171
    iget-object v0, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_asyncEndp:Lorg/eclipse/jetty/io/AsyncEndPoint;

    invoke-interface {v0, v1}, Lorg/eclipse/jetty/io/AsyncEndPoint;->setCheckForIdle(Z)V

    :cond_16
    if-eqz v5, :cond_17

    .line 176
    iput v2, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_total_no_progress:I

    goto/16 :goto_b

    .line 179
    :cond_17
    iget v0, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_total_no_progress:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_total_no_progress:I

    .line 180
    sget v0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->NO_PROGRESS_INFO:I

    if-lez v0, :cond_19

    iget v0, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_total_no_progress:I

    sget v1, Lorg/eclipse/jetty/server/AsyncHttpConnection;->NO_PROGRESS_INFO:I

    rem-int/2addr v0, v1

    if-nez v0, :cond_19

    sget v0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->NO_PROGRESS_CLOSE:I

    if-lez v0, :cond_18

    iget v0, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_total_no_progress:I

    sget v1, Lorg/eclipse/jetty/server/AsyncHttpConnection;->NO_PROGRESS_CLOSE:I

    if-ge v0, v1, :cond_19

    .line 181
    :cond_18
    sget-object v0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EndPoint making no progress: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_total_no_progress:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v3}, Lorg/eclipse/jetty/util/log/Logger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 182
    :cond_19
    sget v0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->NO_PROGRESS_CLOSE:I

    if-lez v0, :cond_1a

    iget v0, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_total_no_progress:I

    sget v1, Lorg/eclipse/jetty/server/AsyncHttpConnection;->NO_PROGRESS_CLOSE:I

    if-ne v0, v1, :cond_1a

    .line 184
    sget-object v0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Closing EndPoint making no progress: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_total_no_progress:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 185
    iget-object v0, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    instance-of v0, v0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;

    if-eqz v0, :cond_1a

    .line 186
    iget-object v0, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    check-cast v0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;

    invoke-virtual {v0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->getChannel()Ljava/nio/channels/ByteChannel;

    move-result-object v0

    invoke-interface {v0}, Ljava/nio/channels/ByteChannel;->close()V

    :cond_1a
    :goto_b
    return-object v4

    :catchall_4
    move-exception v3

    const/4 v5, 0x0

    .line 161
    :goto_c
    invoke-static {v0}, Lorg/eclipse/jetty/server/AsyncHttpConnection;->setCurrentConnection(Lorg/eclipse/jetty/server/AbstractHttpConnection;)V

    .line 164
    iget-object v0, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_request:Lorg/eclipse/jetty/server/Request;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/Request;->getAsyncContinuation()Lorg/eclipse/jetty/server/AsyncContinuation;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AsyncContinuation;->isAsyncStarted()Z

    move-result v0

    if-nez v0, :cond_1b

    .line 167
    iget-object v0, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_parser:Lorg/eclipse/jetty/http/Parser;

    invoke-interface {v0}, Lorg/eclipse/jetty/http/Parser;->returnBuffers()V

    .line 168
    iget-object v0, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    invoke-interface {v0}, Lorg/eclipse/jetty/http/Generator;->returnBuffers()V

    .line 171
    iget-object v0, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_asyncEndp:Lorg/eclipse/jetty/io/AsyncEndPoint;

    invoke-interface {v0, v1}, Lorg/eclipse/jetty/io/AsyncEndPoint;->setCheckForIdle(Z)V

    :cond_1b
    if-eqz v5, :cond_1c

    .line 176
    iput v2, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_total_no_progress:I

    goto/16 :goto_d

    .line 179
    :cond_1c
    iget v0, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_total_no_progress:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_total_no_progress:I

    .line 180
    sget v0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->NO_PROGRESS_INFO:I

    if-lez v0, :cond_1e

    iget v0, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_total_no_progress:I

    sget v1, Lorg/eclipse/jetty/server/AsyncHttpConnection;->NO_PROGRESS_INFO:I

    rem-int/2addr v0, v1

    if-nez v0, :cond_1e

    sget v0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->NO_PROGRESS_CLOSE:I

    if-lez v0, :cond_1d

    iget v0, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_total_no_progress:I

    sget v1, Lorg/eclipse/jetty/server/AsyncHttpConnection;->NO_PROGRESS_CLOSE:I

    if-ge v0, v1, :cond_1e

    .line 181
    :cond_1d
    sget-object v0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EndPoint making no progress: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_total_no_progress:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v4, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v4}, Lorg/eclipse/jetty/util/log/Logger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 182
    :cond_1e
    sget v0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->NO_PROGRESS_CLOSE:I

    if-lez v0, :cond_1f

    iget v0, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_total_no_progress:I

    sget v1, Lorg/eclipse/jetty/server/AsyncHttpConnection;->NO_PROGRESS_CLOSE:I

    if-ne v0, v1, :cond_1f

    .line 184
    sget-object v0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Closing EndPoint making no progress: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_total_no_progress:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 185
    iget-object v0, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    instance-of v0, v0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;

    if-eqz v0, :cond_1f

    .line 186
    iget-object v0, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    check-cast v0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;

    invoke-virtual {v0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->getChannel()Ljava/nio/channels/ByteChannel;

    move-result-object v0

    invoke-interface {v0}, Ljava/nio/channels/ByteChannel;->close()V

    :cond_1f
    :goto_d
    throw v3
.end method

.method public isSuspended()Z
    .locals 1

    .line 218
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_readInterested:Z

    if-eqz v0, :cond_1

    invoke-super {p0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->isSuspended()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public onInputShutdown()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 196
    iget-object v0, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    invoke-interface {v0}, Lorg/eclipse/jetty/http/Generator;->isIdle()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_request:Lorg/eclipse/jetty/server/Request;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/Request;->getAsyncContinuation()Lorg/eclipse/jetty/server/AsyncContinuation;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AsyncContinuation;->isSuspended()Z

    move-result v0

    if-nez v0, :cond_0

    .line 199
    iget-object v0, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/EndPoint;->close()V

    .line 203
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_parser:Lorg/eclipse/jetty/http/Parser;

    invoke-interface {v0}, Lorg/eclipse/jetty/http/Parser;->isIdle()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 204
    iget-object v0, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_parser:Lorg/eclipse/jetty/http/Parser;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/eclipse/jetty/http/Parser;->setPersistent(Z)V

    :cond_1
    return-void
.end method

.method public reset()V
    .locals 5

    const/4 v0, 0x1

    .line 210
    iput-boolean v0, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_readInterested:Z

    .line 211
    sget-object v1, Lorg/eclipse/jetty/server/AsyncHttpConnection;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v2, "Enabled read interest {}"

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v3, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    const/4 v4, 0x0

    aput-object v3, v0, v4

    invoke-interface {v1, v2, v0}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 212
    invoke-super {p0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->reset()V

    return-void
.end method
