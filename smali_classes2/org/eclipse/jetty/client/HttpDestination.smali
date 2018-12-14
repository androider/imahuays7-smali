.class public Lorg/eclipse/jetty/client/HttpDestination;
.super Ljava/lang/Object;
.source "HttpDestination.java"

# interfaces
.implements Lorg/eclipse/jetty/util/component/Dumpable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jetty/client/HttpDestination$ConnectExchange;
    }
.end annotation


# static fields
.field private static final LOG:Lorg/eclipse/jetty/util/log/Logger;


# instance fields
.field private final _address:Lorg/eclipse/jetty/client/Address;

.field private _authorizations:Lorg/eclipse/jetty/http/PathMap;

.field private final _client:Lorg/eclipse/jetty/client/HttpClient;

.field private final _connections:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/eclipse/jetty/client/AbstractHttpConnection;",
            ">;"
        }
    .end annotation
.end field

.field private _cookies:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/eclipse/jetty/http/HttpCookie;",
            ">;"
        }
    .end annotation
.end field

.field private final _exchanges:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/eclipse/jetty/client/HttpExchange;",
            ">;"
        }
    .end annotation
.end field

.field private final _hostHeader:Lorg/eclipse/jetty/io/ByteArrayBuffer;

.field private final _idleConnections:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/eclipse/jetty/client/AbstractHttpConnection;",
            ">;"
        }
    .end annotation
.end field

.field private volatile _maxConnections:I

.field private volatile _maxQueueSize:I

.field private _pendingConnections:I

.field private _pendingReservedConnections:I

.field private volatile _proxy:Lorg/eclipse/jetty/client/Address;

.field private _proxyAuthentication:Lorg/eclipse/jetty/client/security/Authentication;

.field private final _reservedConnections:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final _ssl:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 53
    const-class v0, Lorg/eclipse/jetty/client/HttpDestination;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/client/HttpDestination;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    return-void
.end method

.method constructor <init>(Lorg/eclipse/jetty/client/HttpClient;Lorg/eclipse/jetty/client/Address;Z)V
    .locals 3

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/client/HttpDestination;->_exchanges:Ljava/util/List;

    .line 56
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/client/HttpDestination;->_connections:Ljava/util/List;

    .line 57
    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 v1, 0xa

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(IZ)V

    iput-object v0, p0, Lorg/eclipse/jetty/client/HttpDestination;->_reservedConnections:Ljava/util/concurrent/BlockingQueue;

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/client/HttpDestination;->_idleConnections:Ljava/util/List;

    const/4 v0, 0x0

    .line 65
    iput v0, p0, Lorg/eclipse/jetty/client/HttpDestination;->_pendingConnections:I

    .line 66
    iput v0, p0, Lorg/eclipse/jetty/client/HttpDestination;->_pendingReservedConnections:I

    .line 74
    iput-object p1, p0, Lorg/eclipse/jetty/client/HttpDestination;->_client:Lorg/eclipse/jetty/client/HttpClient;

    .line 75
    iput-object p2, p0, Lorg/eclipse/jetty/client/HttpDestination;->_address:Lorg/eclipse/jetty/client/Address;

    .line 76
    iput-boolean p3, p0, Lorg/eclipse/jetty/client/HttpDestination;->_ssl:Z

    .line 77
    iget-object p1, p0, Lorg/eclipse/jetty/client/HttpDestination;->_client:Lorg/eclipse/jetty/client/HttpClient;

    invoke-virtual {p1}, Lorg/eclipse/jetty/client/HttpClient;->getMaxConnectionsPerAddress()I

    move-result p1

    iput p1, p0, Lorg/eclipse/jetty/client/HttpDestination;->_maxConnections:I

    .line 78
    iget-object p1, p0, Lorg/eclipse/jetty/client/HttpDestination;->_client:Lorg/eclipse/jetty/client/HttpClient;

    invoke-virtual {p1}, Lorg/eclipse/jetty/client/HttpClient;->getMaxQueueSizePerAddress()I

    move-result p1

    iput p1, p0, Lorg/eclipse/jetty/client/HttpDestination;->_maxQueueSize:I

    .line 79
    invoke-virtual {p2}, Lorg/eclipse/jetty/client/Address;->getHost()Ljava/lang/String;

    move-result-object p1

    .line 80
    invoke-virtual {p2}, Lorg/eclipse/jetty/client/Address;->getPort()I

    move-result p3

    iget-boolean v0, p0, Lorg/eclipse/jetty/client/HttpDestination;->_ssl:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x1bb

    goto :goto_0

    :cond_0
    const/16 v0, 0x50

    :goto_0
    if-eq p3, v0, :cond_1

    .line 81
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lorg/eclipse/jetty/client/Address;->getPort()I

    move-result p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 82
    :cond_1
    new-instance p2, Lorg/eclipse/jetty/io/ByteArrayBuffer;

    invoke-direct {p2, p1}, Lorg/eclipse/jetty/io/ByteArrayBuffer;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lorg/eclipse/jetty/client/HttpDestination;->_hostHeader:Lorg/eclipse/jetty/io/ByteArrayBuffer;

    return-void
.end method

.method static synthetic access$000(Lorg/eclipse/jetty/client/HttpDestination;)Ljava/util/List;
    .locals 0

    .line 51
    iget-object p0, p0, Lorg/eclipse/jetty/client/HttpDestination;->_exchanges:Ljava/util/List;

    return-object p0
.end method

.method private getConnection(J)Lorg/eclipse/jetty/client/AbstractHttpConnection;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_3

    .line 178
    invoke-virtual {p0}, Lorg/eclipse/jetty/client/HttpDestination;->getIdleConnection()Lorg/eclipse/jetty/client/AbstractHttpConnection;

    move-result-object v0

    if-nez v0, :cond_3

    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    if-lez v3, :cond_3

    const/4 v1, 0x0

    .line 181
    monitor-enter p0

    .line 183
    :try_start_0
    iget-object v2, p0, Lorg/eclipse/jetty/client/HttpDestination;->_connections:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iget v3, p0, Lorg/eclipse/jetty/client/HttpDestination;->_pendingConnections:I

    add-int/2addr v2, v3

    .line 184
    iget v3, p0, Lorg/eclipse/jetty/client/HttpDestination;->_maxConnections:I

    const/4 v4, 0x1

    if-ge v2, v3, :cond_0

    .line 186
    iget v1, p0, Lorg/eclipse/jetty/client/HttpDestination;->_pendingReservedConnections:I

    add-int/2addr v1, v4

    iput v1, p0, Lorg/eclipse/jetty/client/HttpDestination;->_pendingReservedConnections:I

    const/4 v1, 0x1

    .line 189
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_2

    .line 193
    invoke-virtual {p0}, Lorg/eclipse/jetty/client/HttpDestination;->startNewConnection()V

    .line 196
    :try_start_1
    iget-object v1, p0, Lorg/eclipse/jetty/client/HttpDestination;->_reservedConnections:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v1

    .line 197
    instance-of v2, v1, Lorg/eclipse/jetty/client/AbstractHttpConnection;

    if-eqz v2, :cond_1

    .line 199
    check-cast v1, Lorg/eclipse/jetty/client/AbstractHttpConnection;

    move-object v0, v1

    goto :goto_0

    .line 202
    :cond_1
    check-cast v1, Ljava/io/IOException;

    throw v1
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception v1

    .line 206
    sget-object v2, Lorg/eclipse/jetty/client/HttpDestination;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v2, v1}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 213
    :cond_2
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    const-wide/16 v1, 0xc8

    .line 214
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    const/4 v3, 0x0

    sub-long v3, p1, v1

    move-wide p1, v3

    goto :goto_0

    :catch_1
    move-exception v1

    .line 219
    sget-object v2, Lorg/eclipse/jetty/client/HttpDestination;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v2, v1}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 189
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1

    :cond_3
    return-object v0
.end method


# virtual methods
.method public addAuthorization(Ljava/lang/String;Lorg/eclipse/jetty/client/security/Authentication;)V
    .locals 1

    .line 143
    monitor-enter p0

    .line 145
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpDestination;->_authorizations:Lorg/eclipse/jetty/http/PathMap;

    if-nez v0, :cond_0

    .line 146
    new-instance v0, Lorg/eclipse/jetty/http/PathMap;

    invoke-direct {v0}, Lorg/eclipse/jetty/http/PathMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/client/HttpDestination;->_authorizations:Lorg/eclipse/jetty/http/PathMap;

    .line 147
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpDestination;->_authorizations:Lorg/eclipse/jetty/http/PathMap;

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jetty/http/PathMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public addCookie(Lorg/eclipse/jetty/http/HttpCookie;)V
    .locals 1

    .line 155
    monitor-enter p0

    .line 157
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpDestination;->_cookies:Ljava/util/List;

    if-nez v0, :cond_0

    .line 158
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/client/HttpDestination;->_cookies:Ljava/util/List;

    .line 159
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpDestination;->_cookies:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 160
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 649
    monitor-enter p0

    .line 651
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpDestination;->_connections:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jetty/client/AbstractHttpConnection;

    .line 653
    invoke-virtual {v1}, Lorg/eclipse/jetty/client/AbstractHttpConnection;->close()V

    goto :goto_0

    .line 655
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected doSend(Lorg/eclipse/jetty/client/HttpExchange;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 518
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpDestination;->_cookies:Ljava/util/List;

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 521
    iget-object v1, p0, Lorg/eclipse/jetty/client/HttpDestination;->_cookies:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/jetty/http/HttpCookie;

    if-nez v0, :cond_0

    .line 524
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_1

    :cond_0
    const-string v3, "; "

    .line 526
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 527
    :goto_1
    invoke-virtual {v2}, Lorg/eclipse/jetty/http/HttpCookie;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "="

    .line 528
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 529
    invoke-virtual {v2}, Lorg/eclipse/jetty/http/HttpCookie;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    const-string v1, "Cookie"

    .line 532
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lorg/eclipse/jetty/client/HttpExchange;->addRequestHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 536
    :cond_2
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpDestination;->_authorizations:Lorg/eclipse/jetty/http/PathMap;

    if-eqz v0, :cond_3

    .line 538
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpDestination;->_authorizations:Lorg/eclipse/jetty/http/PathMap;

    invoke-virtual {p1}, Lorg/eclipse/jetty/client/HttpExchange;->getRequestURI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/http/PathMap;->match(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/client/security/Authentication;

    if-eqz v0, :cond_3

    .line 540
    invoke-interface {v0, p1}, Lorg/eclipse/jetty/client/security/Authentication;->setCredentials(Lorg/eclipse/jetty/client/HttpExchange;)V

    .line 545
    :cond_3
    invoke-virtual {p1, p0}, Lorg/eclipse/jetty/client/HttpExchange;->scheduleTimeout(Lorg/eclipse/jetty/client/HttpDestination;)V

    .line 547
    invoke-virtual {p0}, Lorg/eclipse/jetty/client/HttpDestination;->getIdleConnection()Lorg/eclipse/jetty/client/AbstractHttpConnection;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 550
    invoke-virtual {p0, v0, p1}, Lorg/eclipse/jetty/client/HttpDestination;->send(Lorg/eclipse/jetty/client/AbstractHttpConnection;Lorg/eclipse/jetty/client/HttpExchange;)V

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    .line 555
    monitor-enter p0

    .line 557
    :try_start_0
    iget-object v1, p0, Lorg/eclipse/jetty/client/HttpDestination;->_exchanges:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget v2, p0, Lorg/eclipse/jetty/client/HttpDestination;->_maxQueueSize:I

    if-ne v1, v2, :cond_5

    .line 558
    new-instance p1, Ljava/util/concurrent/RejectedExecutionException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Queue full for address "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/eclipse/jetty/client/HttpDestination;->_address:Lorg/eclipse/jetty/client/Address;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/util/concurrent/RejectedExecutionException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 560
    :cond_5
    iget-object v1, p0, Lorg/eclipse/jetty/client/HttpDestination;->_exchanges:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 561
    iget-object p1, p0, Lorg/eclipse/jetty/client/HttpDestination;->_connections:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iget v1, p0, Lorg/eclipse/jetty/client/HttpDestination;->_pendingConnections:I

    add-int/2addr p1, v1

    iget v1, p0, Lorg/eclipse/jetty/client/HttpDestination;->_maxConnections:I

    if-ge p1, v1, :cond_6

    const/4 v0, 0x1

    .line 563
    :cond_6
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_7

    .line 566
    invoke-virtual {p0}, Lorg/eclipse/jetty/client/HttpDestination;->startNewConnection()V

    :cond_7
    :goto_2
    return-void

    :catchall_0
    move-exception p1

    .line 563
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public dump()Ljava/lang/String;
    .locals 1

    .line 660
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

    .line 665
    monitor-enter p0

    .line 667
    :try_start_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    const-string v0, "idle="

    .line 668
    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 669
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpDestination;->_idleConnections:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    const-string v0, " pending="

    .line 670
    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 671
    iget v0, p0, Lorg/eclipse/jetty/client/HttpDestination;->_pendingConnections:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    const-string v0, "\n"

    .line 672
    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    const/4 v0, 0x1

    .line 673
    new-array v0, v0, [Ljava/util/Collection;

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/eclipse/jetty/client/HttpDestination;->_connections:Ljava/util/List;

    aput-object v2, v0, v1

    invoke-static {p1, p2, v0}, Lorg/eclipse/jetty/util/component/AggregateLifeCycle;->dump(Ljava/lang/Appendable;Ljava/lang/String;[Ljava/util/Collection;)V

    .line 674
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

    .line 574
    monitor-enter p0

    .line 576
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpDestination;->_exchanges:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 577
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getAddress()Lorg/eclipse/jetty/client/Address;
    .locals 1

    .line 92
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpDestination;->_address:Lorg/eclipse/jetty/client/Address;

    return-object v0
.end method

.method public getConnections()I
    .locals 1

    .line 127
    monitor-enter p0

    .line 129
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpDestination;->_connections:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    .line 130
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getHostHeader()Lorg/eclipse/jetty/io/Buffer;
    .locals 1

    .line 102
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpDestination;->_hostHeader:Lorg/eclipse/jetty/io/ByteArrayBuffer;

    return-object v0
.end method

.method public getHttpClient()Lorg/eclipse/jetty/client/HttpClient;
    .locals 1

    .line 87
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpDestination;->_client:Lorg/eclipse/jetty/client/HttpClient;

    return-object v0
.end method

.method public getIdleConnection()Lorg/eclipse/jetty/client/AbstractHttpConnection;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    move-object v1, v0

    .line 239
    :cond_0
    monitor-enter p0

    if-eqz v1, :cond_1

    .line 243
    :try_start_0
    iget-object v2, p0, Lorg/eclipse/jetty/client/HttpDestination;->_connections:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 244
    invoke-virtual {v1}, Lorg/eclipse/jetty/client/AbstractHttpConnection;->close()V

    move-object v1, v0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 247
    :cond_1
    :goto_0
    iget-object v2, p0, Lorg/eclipse/jetty/client/HttpDestination;->_idleConnections:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 248
    iget-object v1, p0, Lorg/eclipse/jetty/client/HttpDestination;->_idleConnections:Ljava/util/List;

    iget-object v2, p0, Lorg/eclipse/jetty/client/HttpDestination;->_idleConnections:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jetty/client/AbstractHttpConnection;

    .line 249
    :cond_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_3

    return-object v0

    .line 258
    :cond_3
    invoke-virtual {v1}, Lorg/eclipse/jetty/client/AbstractHttpConnection;->cancelIdleTimeout()Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    .line 249
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getIdleConnections()I
    .locals 1

    .line 135
    monitor-enter p0

    .line 137
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpDestination;->_idleConnections:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    .line 138
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getMaxConnections()I
    .locals 1

    .line 107
    iget v0, p0, Lorg/eclipse/jetty/client/HttpDestination;->_maxConnections:I

    return v0
.end method

.method public getMaxQueueSize()I
    .locals 1

    .line 117
    iget v0, p0, Lorg/eclipse/jetty/client/HttpDestination;->_maxQueueSize:I

    return v0
.end method

.method public getProxy()Lorg/eclipse/jetty/client/Address;
    .locals 1

    .line 629
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpDestination;->_proxy:Lorg/eclipse/jetty/client/Address;

    return-object v0
.end method

.method public getProxyAuthentication()Lorg/eclipse/jetty/client/security/Authentication;
    .locals 1

    .line 634
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpDestination;->_proxyAuthentication:Lorg/eclipse/jetty/client/security/Authentication;

    return-object v0
.end method

.method public isProxied()Z
    .locals 1

    .line 644
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpDestination;->_proxy:Lorg/eclipse/jetty/client/Address;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSecure()Z
    .locals 1

    .line 97
    iget-boolean v0, p0, Lorg/eclipse/jetty/client/HttpDestination;->_ssl:Z

    return v0
.end method

.method public onConnectionFailed(Ljava/lang/Throwable;)V
    .locals 5

    .line 289
    monitor-enter p0

    .line 291
    :try_start_0
    iget v0, p0, Lorg/eclipse/jetty/client/HttpDestination;->_pendingConnections:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/eclipse/jetty/client/HttpDestination;->_pendingConnections:I

    .line 292
    iget v0, p0, Lorg/eclipse/jetty/client/HttpDestination;->_pendingReservedConnections:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-lez v0, :cond_0

    .line 295
    iget v0, p0, Lorg/eclipse/jetty/client/HttpDestination;->_pendingReservedConnections:I

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/eclipse/jetty/client/HttpDestination;->_pendingReservedConnections:I

    move-object v3, p1

    goto :goto_0

    .line 297
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpDestination;->_exchanges:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 299
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpDestination;->_exchanges:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/client/HttpExchange;

    const/16 v4, 0x9

    .line 300
    invoke-virtual {v0, v4}, Lorg/eclipse/jetty/client/HttpExchange;->setStatus(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 301
    invoke-virtual {v0}, Lorg/eclipse/jetty/client/HttpExchange;->getEventListener()Lorg/eclipse/jetty/client/HttpEventListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/eclipse/jetty/client/HttpEventListener;->onConnectionFailed(Ljava/lang/Throwable;)V

    .line 305
    :cond_1
    iget-object p1, p0, Lorg/eclipse/jetty/client/HttpDestination;->_exchanges:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lorg/eclipse/jetty/client/HttpDestination;->_client:Lorg/eclipse/jetty/client/HttpClient;

    invoke-virtual {p1}, Lorg/eclipse/jetty/client/HttpClient;->isStarted()Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 v2, 0x1

    .line 308
    :cond_2
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_3

    .line 311
    invoke-virtual {p0}, Lorg/eclipse/jetty/client/HttpDestination;->startNewConnection()V

    :cond_3
    if-eqz v3, :cond_4

    .line 317
    :try_start_1
    iget-object p1, p0, Lorg/eclipse/jetty/client/HttpDestination;->_reservedConnections:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {p1, v3}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 321
    sget-object v0, Lorg/eclipse/jetty/client/HttpDestination;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v0, p1}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    :cond_4
    :goto_1
    return-void

    :catchall_0
    move-exception p1

    .line 308
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public onException(Ljava/lang/Throwable;)V
    .locals 2

    .line 328
    monitor-enter p0

    .line 330
    :try_start_0
    iget v0, p0, Lorg/eclipse/jetty/client/HttpDestination;->_pendingConnections:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/eclipse/jetty/client/HttpDestination;->_pendingConnections:I

    .line 331
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpDestination;->_exchanges:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 333
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpDestination;->_exchanges:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/client/HttpExchange;

    const/16 v1, 0x9

    .line 334
    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/client/HttpExchange;->setStatus(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 335
    invoke-virtual {v0}, Lorg/eclipse/jetty/client/HttpExchange;->getEventListener()Lorg/eclipse/jetty/client/HttpEventListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/eclipse/jetty/client/HttpEventListener;->onException(Ljava/lang/Throwable;)V

    .line 337
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onNewConnection(Lorg/eclipse/jetty/client/AbstractHttpConnection;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 344
    monitor-enter p0

    .line 346
    :try_start_0
    iget v0, p0, Lorg/eclipse/jetty/client/HttpDestination;->_pendingConnections:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/eclipse/jetty/client/HttpDestination;->_pendingConnections:I

    .line 347
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpDestination;->_connections:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 349
    iget v0, p0, Lorg/eclipse/jetty/client/HttpDestination;->_pendingReservedConnections:I

    if-lez v0, :cond_0

    .line 352
    iget v0, p0, Lorg/eclipse/jetty/client/HttpDestination;->_pendingReservedConnections:I

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/eclipse/jetty/client/HttpDestination;->_pendingReservedConnections:I

    goto :goto_1

    .line 357
    :cond_0
    invoke-virtual {p1}, Lorg/eclipse/jetty/client/AbstractHttpConnection;->getEndPoint()Lorg/eclipse/jetty/io/EndPoint;

    move-result-object v0

    .line 358
    invoke-virtual {p0}, Lorg/eclipse/jetty/client/HttpDestination;->isProxied()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    instance-of v2, v0, Lorg/eclipse/jetty/client/SelectConnector$UpgradableEndPoint;

    if-eqz v2, :cond_1

    .line 360
    check-cast v0, Lorg/eclipse/jetty/client/SelectConnector$UpgradableEndPoint;

    .line 361
    new-instance v2, Lorg/eclipse/jetty/client/HttpDestination$ConnectExchange;

    invoke-virtual {p0}, Lorg/eclipse/jetty/client/HttpDestination;->getAddress()Lorg/eclipse/jetty/client/Address;

    move-result-object v4

    invoke-direct {v2, p0, v4, v0}, Lorg/eclipse/jetty/client/HttpDestination$ConnectExchange;-><init>(Lorg/eclipse/jetty/client/HttpDestination;Lorg/eclipse/jetty/client/Address;Lorg/eclipse/jetty/client/SelectConnector$UpgradableEndPoint;)V

    .line 362
    invoke-virtual {p0}, Lorg/eclipse/jetty/client/HttpDestination;->getProxy()Lorg/eclipse/jetty/client/Address;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/eclipse/jetty/client/HttpDestination$ConnectExchange;->setAddress(Lorg/eclipse/jetty/client/Address;)V

    .line 363
    sget-object v0, Lorg/eclipse/jetty/client/HttpDestination;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v4, "Establishing tunnel to {} via {}"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/eclipse/jetty/client/HttpDestination;->getAddress()Lorg/eclipse/jetty/client/Address;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-virtual {p0}, Lorg/eclipse/jetty/client/HttpDestination;->getProxy()Lorg/eclipse/jetty/client/Address;

    move-result-object v3

    aput-object v3, v5, v1

    invoke-interface {v0, v4, v5}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 364
    invoke-virtual {p0, p1, v2}, Lorg/eclipse/jetty/client/HttpDestination;->send(Lorg/eclipse/jetty/client/AbstractHttpConnection;Lorg/eclipse/jetty/client/HttpExchange;)V

    goto :goto_0

    .line 369
    :cond_1
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpDestination;->_exchanges:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 371
    sget-object v0, Lorg/eclipse/jetty/client/HttpDestination;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v2, "No exchanges for new connection {}"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v3

    invoke-interface {v0, v2, v1}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 372
    invoke-virtual {p1}, Lorg/eclipse/jetty/client/AbstractHttpConnection;->setIdleTimeout()V

    .line 373
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpDestination;->_idleConnections:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 377
    :cond_2
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpDestination;->_exchanges:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/client/HttpExchange;

    .line 378
    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jetty/client/HttpDestination;->send(Lorg/eclipse/jetty/client/AbstractHttpConnection;Lorg/eclipse/jetty/client/HttpExchange;)V

    :goto_0
    const/4 p1, 0x0

    .line 382
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_3

    .line 388
    :try_start_1
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpDestination;->_reservedConnections:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 392
    sget-object v0, Lorg/eclipse/jetty/client/HttpDestination;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v0, p1}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    :cond_3
    :goto_2
    return-void

    :catchall_0
    move-exception p1

    .line 382
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public resend(Lorg/eclipse/jetty/client/HttpExchange;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 509
    invoke-virtual {p1}, Lorg/eclipse/jetty/client/HttpExchange;->getEventListener()Lorg/eclipse/jetty/client/HttpEventListener;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/jetty/client/HttpEventListener;->onRetry()V

    .line 510
    invoke-virtual {p1}, Lorg/eclipse/jetty/client/HttpExchange;->reset()V

    .line 511
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/client/HttpDestination;->doSend(Lorg/eclipse/jetty/client/HttpExchange;)V

    return-void
.end method

.method public reserveConnection(J)Lorg/eclipse/jetty/client/AbstractHttpConnection;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 228
    invoke-direct {p0, p1, p2}, Lorg/eclipse/jetty/client/HttpDestination;->getConnection(J)Lorg/eclipse/jetty/client/AbstractHttpConnection;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x1

    .line 230
    invoke-virtual {p1, p2}, Lorg/eclipse/jetty/client/AbstractHttpConnection;->setReserved(Z)V

    :cond_0
    return-object p1
.end method

.method public returnConnection(Lorg/eclipse/jetty/client/AbstractHttpConnection;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 399
    invoke-virtual {p1}, Lorg/eclipse/jetty/client/AbstractHttpConnection;->isReserved()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 400
    invoke-virtual {p1, v1}, Lorg/eclipse/jetty/client/AbstractHttpConnection;->setReserved(Z)V

    :cond_0
    if-eqz p2, :cond_1

    .line 406
    :try_start_0
    invoke-virtual {p1}, Lorg/eclipse/jetty/client/AbstractHttpConnection;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 410
    sget-object v2, Lorg/eclipse/jetty/client/HttpDestination;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v2, v0}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    .line 414
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpDestination;->_client:Lorg/eclipse/jetty/client/HttpClient;

    invoke-virtual {v0}, Lorg/eclipse/jetty/client/HttpClient;->isStarted()Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    if-nez p2, :cond_4

    .line 417
    invoke-virtual {p1}, Lorg/eclipse/jetty/client/AbstractHttpConnection;->getEndPoint()Lorg/eclipse/jetty/io/EndPoint;

    move-result-object p2

    invoke-interface {p2}, Lorg/eclipse/jetty/io/EndPoint;->isOpen()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 419
    monitor-enter p0

    .line 421
    :try_start_1
    iget-object p2, p0, Lorg/eclipse/jetty/client/HttpDestination;->_exchanges:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-nez p2, :cond_3

    .line 423
    invoke-virtual {p1}, Lorg/eclipse/jetty/client/AbstractHttpConnection;->setIdleTimeout()V

    .line 424
    iget-object p2, p0, Lorg/eclipse/jetty/client/HttpDestination;->_idleConnections:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 428
    :cond_3
    iget-object p2, p0, Lorg/eclipse/jetty/client/HttpDestination;->_exchanges:Ljava/util/List;

    invoke-interface {p2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/eclipse/jetty/client/HttpExchange;

    .line 429
    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jetty/client/HttpDestination;->send(Lorg/eclipse/jetty/client/AbstractHttpConnection;Lorg/eclipse/jetty/client/HttpExchange;)V

    .line 431
    :goto_1
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 432
    monitor-exit p0

    goto :goto_2

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 437
    :cond_4
    monitor-enter p0

    .line 439
    :try_start_2
    iget-object p2, p0, Lorg/eclipse/jetty/client/HttpDestination;->_connections:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 440
    iget-object p1, p0, Lorg/eclipse/jetty/client/HttpDestination;->_exchanges:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    .line 442
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz p1, :cond_5

    .line 445
    invoke-virtual {p0}, Lorg/eclipse/jetty/client/HttpDestination;->startNewConnection()V

    :cond_5
    :goto_2
    return-void

    :catchall_1
    move-exception p1

    .line 442
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method

.method public returnIdleConnection(Lorg/eclipse/jetty/client/AbstractHttpConnection;)V
    .locals 2

    .line 452
    invoke-virtual {p1}, Lorg/eclipse/jetty/client/AbstractHttpConnection;->getEndPoint()Lorg/eclipse/jetty/io/EndPoint;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/eclipse/jetty/client/AbstractHttpConnection;->getEndPoint()Lorg/eclipse/jetty/io/EndPoint;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/jetty/io/EndPoint;->getMaxIdleTime()I

    move-result v0

    int-to-long v0, v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, -0x1

    .line 453
    :goto_0
    invoke-virtual {p1, v0, v1}, Lorg/eclipse/jetty/client/AbstractHttpConnection;->onIdleExpired(J)V

    const/4 v0, 0x0

    .line 456
    monitor-enter p0

    .line 458
    :try_start_0
    iget-object v1, p0, Lorg/eclipse/jetty/client/HttpDestination;->_idleConnections:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 459
    iget-object v1, p0, Lorg/eclipse/jetty/client/HttpDestination;->_connections:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 461
    iget-object p1, p0, Lorg/eclipse/jetty/client/HttpDestination;->_exchanges:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lorg/eclipse/jetty/client/HttpDestination;->_client:Lorg/eclipse/jetty/client/HttpClient;

    invoke-virtual {p1}, Lorg/eclipse/jetty/client/HttpClient;->isStarted()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    .line 463
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    .line 466
    invoke-virtual {p0}, Lorg/eclipse/jetty/client/HttpDestination;->startNewConnection()V

    :cond_2
    return-void

    :catchall_0
    move-exception p1

    .line 463
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method protected send(Lorg/eclipse/jetty/client/AbstractHttpConnection;Lorg/eclipse/jetty/client/HttpExchange;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 582
    monitor-enter p0

    .line 586
    :try_start_0
    invoke-virtual {p1, p2}, Lorg/eclipse/jetty/client/AbstractHttpConnection;->send(Lorg/eclipse/jetty/client/HttpExchange;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 588
    invoke-virtual {p2}, Lorg/eclipse/jetty/client/HttpExchange;->getStatus()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    .line 589
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpDestination;->_exchanges:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 590
    :cond_0
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/client/HttpDestination;->returnIdleConnection(Lorg/eclipse/jetty/client/AbstractHttpConnection;)V

    .line 592
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public send(Lorg/eclipse/jetty/client/HttpExchange;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 471
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpDestination;->_client:Lorg/eclipse/jetty/client/HttpClient;

    invoke-virtual {v0}, Lorg/eclipse/jetty/client/HttpClient;->getRegisteredListeners()Ljava/util/LinkedList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 476
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v1

    :goto_0
    if-lez v1, :cond_0

    add-int/lit8 v2, v1, -0x1

    .line 478
    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 481
    :try_start_0
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const/4 v4, 0x2

    .line 482
    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Lorg/eclipse/jetty/client/HttpDestination;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const-class v6, Lorg/eclipse/jetty/client/HttpExchange;

    const/4 v8, 0x1

    aput-object v6, v5, v8

    invoke-virtual {v3, v5}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    .line 483
    new-array v4, v4, [Ljava/lang/Object;

    aput-object p0, v4, v7

    aput-object p1, v4, v8

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/eclipse/jetty/client/HttpEventListener;

    .line 484
    invoke-virtual {p1, v3}, Lorg/eclipse/jetty/client/HttpExchange;->setEventListener(Lorg/eclipse/jetty/client/HttpEventListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 488
    new-instance v0, Lorg/eclipse/jetty/client/HttpDestination$1;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to instantiate registered listener for destination: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lorg/eclipse/jetty/client/HttpDestination$1;-><init>(Lorg/eclipse/jetty/client/HttpDestination;Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0

    .line 499
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpDestination;->_client:Lorg/eclipse/jetty/client/HttpClient;

    invoke-virtual {v0}, Lorg/eclipse/jetty/client/HttpClient;->hasRealms()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 501
    new-instance v0, Lorg/eclipse/jetty/client/security/SecurityListener;

    invoke-direct {v0, p0, p1}, Lorg/eclipse/jetty/client/security/SecurityListener;-><init>(Lorg/eclipse/jetty/client/HttpDestination;Lorg/eclipse/jetty/client/HttpExchange;)V

    invoke-virtual {p1, v0}, Lorg/eclipse/jetty/client/HttpExchange;->setEventListener(Lorg/eclipse/jetty/client/HttpEventListener;)V

    .line 504
    :cond_1
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/client/HttpDestination;->doSend(Lorg/eclipse/jetty/client/HttpExchange;)V

    return-void
.end method

.method public setMaxConnections(I)V
    .locals 0

    .line 112
    iput p1, p0, Lorg/eclipse/jetty/client/HttpDestination;->_maxConnections:I

    return-void
.end method

.method public setMaxQueueSize(I)V
    .locals 0

    .line 122
    iput p1, p0, Lorg/eclipse/jetty/client/HttpDestination;->_maxQueueSize:I

    return-void
.end method

.method public setProxy(Lorg/eclipse/jetty/client/Address;)V
    .locals 0

    .line 624
    iput-object p1, p0, Lorg/eclipse/jetty/client/HttpDestination;->_proxy:Lorg/eclipse/jetty/client/Address;

    return-void
.end method

.method public setProxyAuthentication(Lorg/eclipse/jetty/client/security/Authentication;)V
    .locals 0

    .line 639
    iput-object p1, p0, Lorg/eclipse/jetty/client/HttpDestination;->_proxyAuthentication:Lorg/eclipse/jetty/client/security/Authentication;

    return-void
.end method

.method protected startNewConnection()V
    .locals 2

    .line 269
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 271
    :try_start_1
    iget v0, p0, Lorg/eclipse/jetty/client/HttpDestination;->_pendingConnections:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/jetty/client/HttpDestination;->_pendingConnections:I

    .line 272
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 273
    :try_start_2
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpDestination;->_client:Lorg/eclipse/jetty/client/HttpClient;

    iget-object v0, v0, Lorg/eclipse/jetty/client/HttpClient;->_connector:Lorg/eclipse/jetty/client/HttpClient$Connector;

    if-eqz v0, :cond_0

    .line 275
    invoke-interface {v0, p0}, Lorg/eclipse/jetty/client/HttpClient$Connector;->startConnection(Lorg/eclipse/jetty/client/HttpDestination;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 272
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    .line 279
    sget-object v1, Lorg/eclipse/jetty/client/HttpDestination;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v1, v0}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/Throwable;)V

    .line 280
    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/client/HttpDestination;->onConnectionFailed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public declared-synchronized toDetailString()Ljava/lang/String;
    .locals 5

    monitor-enter p0

    .line 603
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 604
    invoke-virtual {p0}, Lorg/eclipse/jetty/client/HttpDestination;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0xa

    .line 605
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 606
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 608
    :try_start_1
    iget-object v2, p0, Lorg/eclipse/jetty/client/HttpDestination;->_connections:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/eclipse/jetty/client/AbstractHttpConnection;

    .line 610
    invoke-virtual {v3}, Lorg/eclipse/jetty/client/AbstractHttpConnection;->toDetailString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 611
    iget-object v4, p0, Lorg/eclipse/jetty/client/HttpDestination;->_idleConnections:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, " IDLE"

    .line 612
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 613
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 615
    :cond_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    const-string v2, "--"

    .line 616
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 617
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 619
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 615
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    .line 602
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized toString()Ljava/lang/String;
    .locals 4

    monitor-enter p0

    :try_start_0
    const-string v0, "HttpDestination@%x//%s:%d(%d/%d,%d,%d/%d)%n"

    const/16 v1, 0x8

    .line 598
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lorg/eclipse/jetty/client/HttpDestination;->_address:Lorg/eclipse/jetty/client/Address;

    invoke-virtual {v3}, Lorg/eclipse/jetty/client/Address;->getHost()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lorg/eclipse/jetty/client/HttpDestination;->_address:Lorg/eclipse/jetty/client/Address;

    invoke-virtual {v3}, Lorg/eclipse/jetty/client/Address;->getPort()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lorg/eclipse/jetty/client/HttpDestination;->_connections:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget v3, p0, Lorg/eclipse/jetty/client/HttpDestination;->_maxConnections:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    iget-object v3, p0, Lorg/eclipse/jetty/client/HttpDestination;->_idleConnections:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x6

    iget-object v3, p0, Lorg/eclipse/jetty/client/HttpDestination;->_exchanges:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x7

    iget v3, p0, Lorg/eclipse/jetty/client/HttpDestination;->_maxQueueSize:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
