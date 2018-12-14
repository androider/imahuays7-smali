.class public Lorg/eclipse/jetty/client/HttpClient;
.super Lorg/eclipse/jetty/util/component/AggregateLifeCycle;
.source "HttpClient.java"

# interfaces
.implements Lorg/eclipse/jetty/http/HttpBuffers;
.implements Lorg/eclipse/jetty/util/Attributes;
.implements Lorg/eclipse/jetty/util/component/Dumpable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jetty/client/HttpClient$LocalQueuedThreadPool;,
        Lorg/eclipse/jetty/client/HttpClient$Connector;
    }
.end annotation


# static fields
.field public static final CONNECTOR_SELECT_CHANNEL:I = 0x2

.field public static final CONNECTOR_SOCKET:I


# instance fields
.field private _attributes:Lorg/eclipse/jetty/util/AttributesMap;

.field private final _buffers:Lorg/eclipse/jetty/http/HttpBuffersImpl;

.field private _connectBlocking:Z

.field private _connectTimeout:I

.field _connector:Lorg/eclipse/jetty/client/HttpClient$Connector;

.field private _connectorType:I

.field private _destinations:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Lorg/eclipse/jetty/client/Address;",
            "Lorg/eclipse/jetty/client/HttpDestination;",
            ">;"
        }
    .end annotation
.end field

.field private _idleTimeout:J

.field private _idleTimeoutQ:Lorg/eclipse/jetty/util/thread/Timeout;

.field private _maxConnectionsPerAddress:I

.field private _maxQueueSizePerAddress:I

.field private _maxRedirects:I

.field private _maxRetries:I

.field private _noProxy:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private _proxy:Lorg/eclipse/jetty/client/Address;

.field private _proxyAuthentication:Lorg/eclipse/jetty/client/security/Authentication;

.field private _realmResolver:Lorg/eclipse/jetty/client/security/RealmResolver;

.field private _registeredListeners:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final _sslContextFactory:Lorg/eclipse/jetty/util/ssl/SslContextFactory;

.field _threadPool:Lorg/eclipse/jetty/util/thread/ThreadPool;

.field private _timeout:J

.field private _timeoutQ:Lorg/eclipse/jetty/util/thread/Timeout;

.field private _useDirectBuffers:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 130
    new-instance v0, Lorg/eclipse/jetty/util/ssl/SslContextFactory;

    invoke-direct {v0}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;-><init>()V

    invoke-direct {p0, v0}, Lorg/eclipse/jetty/client/HttpClient;-><init>(Lorg/eclipse/jetty/util/ssl/SslContextFactory;)V

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jetty/util/ssl/SslContextFactory;)V
    .locals 2

    .line 135
    invoke-direct {p0}, Lorg/eclipse/jetty/util/component/AggregateLifeCycle;-><init>()V

    const/4 v0, 0x2

    .line 79
    iput v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_connectorType:I

    const/4 v0, 0x1

    .line 80
    iput-boolean v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_useDirectBuffers:Z

    .line 81
    iput-boolean v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_connectBlocking:Z

    const v0, 0x7fffffff

    .line 82
    iput v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_maxConnectionsPerAddress:I

    .line 83
    iput v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_maxQueueSizePerAddress:I

    .line 84
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_destinations:Ljava/util/concurrent/ConcurrentMap;

    const-wide/16 v0, 0x4e20

    .line 87
    iput-wide v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_idleTimeout:J

    const-wide/32 v0, 0x4e200

    .line 88
    iput-wide v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_timeout:J

    const v0, 0x124f8

    .line 89
    iput v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_connectTimeout:I

    .line 90
    new-instance v0, Lorg/eclipse/jetty/util/thread/Timeout;

    invoke-direct {v0}, Lorg/eclipse/jetty/util/thread/Timeout;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_timeoutQ:Lorg/eclipse/jetty/util/thread/Timeout;

    .line 91
    new-instance v0, Lorg/eclipse/jetty/util/thread/Timeout;

    invoke-direct {v0}, Lorg/eclipse/jetty/util/thread/Timeout;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_idleTimeoutQ:Lorg/eclipse/jetty/util/thread/Timeout;

    const/4 v0, 0x3

    .line 95
    iput v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_maxRetries:I

    const/16 v0, 0x14

    .line 96
    iput v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_maxRedirects:I

    .line 103
    new-instance v0, Lorg/eclipse/jetty/util/AttributesMap;

    invoke-direct {v0}, Lorg/eclipse/jetty/util/AttributesMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_attributes:Lorg/eclipse/jetty/util/AttributesMap;

    .line 105
    new-instance v0, Lorg/eclipse/jetty/http/HttpBuffersImpl;

    invoke-direct {v0}, Lorg/eclipse/jetty/http/HttpBuffersImpl;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_buffers:Lorg/eclipse/jetty/http/HttpBuffersImpl;

    .line 136
    iput-object p1, p0, Lorg/eclipse/jetty/client/HttpClient;->_sslContextFactory:Lorg/eclipse/jetty/util/ssl/SslContextFactory;

    .line 137
    iget-object p1, p0, Lorg/eclipse/jetty/client/HttpClient;->_sslContextFactory:Lorg/eclipse/jetty/util/ssl/SslContextFactory;

    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/client/HttpClient;->addBean(Ljava/lang/Object;)Z

    .line 138
    iget-object p1, p0, Lorg/eclipse/jetty/client/HttpClient;->_buffers:Lorg/eclipse/jetty/http/HttpBuffersImpl;

    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/client/HttpClient;->addBean(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic access$100(Lorg/eclipse/jetty/client/HttpClient;)Lorg/eclipse/jetty/util/thread/Timeout;
    .locals 0

    .line 74
    iget-object p0, p0, Lorg/eclipse/jetty/client/HttpClient;->_timeoutQ:Lorg/eclipse/jetty/util/thread/Timeout;

    return-object p0
.end method

.method static synthetic access$200(Lorg/eclipse/jetty/client/HttpClient;)Lorg/eclipse/jetty/util/thread/Timeout;
    .locals 0

    .line 74
    iget-object p0, p0, Lorg/eclipse/jetty/client/HttpClient;->_idleTimeoutQ:Lorg/eclipse/jetty/util/thread/Timeout;

    return-object p0
.end method

.method private setBufferTypes()V
    .locals 2

    .line 110
    iget v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_connectorType:I

    if-nez v0, :cond_0

    .line 112
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_buffers:Lorg/eclipse/jetty/http/HttpBuffersImpl;

    sget-object v1, Lorg/eclipse/jetty/io/Buffers$Type;->BYTE_ARRAY:Lorg/eclipse/jetty/io/Buffers$Type;

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/http/HttpBuffersImpl;->setRequestBufferType(Lorg/eclipse/jetty/io/Buffers$Type;)V

    .line 113
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_buffers:Lorg/eclipse/jetty/http/HttpBuffersImpl;

    sget-object v1, Lorg/eclipse/jetty/io/Buffers$Type;->BYTE_ARRAY:Lorg/eclipse/jetty/io/Buffers$Type;

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/http/HttpBuffersImpl;->setRequestHeaderType(Lorg/eclipse/jetty/io/Buffers$Type;)V

    .line 114
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_buffers:Lorg/eclipse/jetty/http/HttpBuffersImpl;

    sget-object v1, Lorg/eclipse/jetty/io/Buffers$Type;->BYTE_ARRAY:Lorg/eclipse/jetty/io/Buffers$Type;

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/http/HttpBuffersImpl;->setResponseBufferType(Lorg/eclipse/jetty/io/Buffers$Type;)V

    .line 115
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_buffers:Lorg/eclipse/jetty/http/HttpBuffersImpl;

    sget-object v1, Lorg/eclipse/jetty/io/Buffers$Type;->BYTE_ARRAY:Lorg/eclipse/jetty/io/Buffers$Type;

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/http/HttpBuffersImpl;->setResponseHeaderType(Lorg/eclipse/jetty/io/Buffers$Type;)V

    goto :goto_2

    .line 119
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_buffers:Lorg/eclipse/jetty/http/HttpBuffersImpl;

    sget-object v1, Lorg/eclipse/jetty/io/Buffers$Type;->DIRECT:Lorg/eclipse/jetty/io/Buffers$Type;

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/http/HttpBuffersImpl;->setRequestBufferType(Lorg/eclipse/jetty/io/Buffers$Type;)V

    .line 120
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_buffers:Lorg/eclipse/jetty/http/HttpBuffersImpl;

    iget-boolean v1, p0, Lorg/eclipse/jetty/client/HttpClient;->_useDirectBuffers:Z

    if-eqz v1, :cond_1

    sget-object v1, Lorg/eclipse/jetty/io/Buffers$Type;->DIRECT:Lorg/eclipse/jetty/io/Buffers$Type;

    goto :goto_0

    :cond_1
    sget-object v1, Lorg/eclipse/jetty/io/Buffers$Type;->INDIRECT:Lorg/eclipse/jetty/io/Buffers$Type;

    :goto_0
    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/http/HttpBuffersImpl;->setRequestHeaderType(Lorg/eclipse/jetty/io/Buffers$Type;)V

    .line 121
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_buffers:Lorg/eclipse/jetty/http/HttpBuffersImpl;

    sget-object v1, Lorg/eclipse/jetty/io/Buffers$Type;->DIRECT:Lorg/eclipse/jetty/io/Buffers$Type;

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/http/HttpBuffersImpl;->setResponseBufferType(Lorg/eclipse/jetty/io/Buffers$Type;)V

    .line 122
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_buffers:Lorg/eclipse/jetty/http/HttpBuffersImpl;

    iget-boolean v1, p0, Lorg/eclipse/jetty/client/HttpClient;->_useDirectBuffers:Z

    if-eqz v1, :cond_2

    sget-object v1, Lorg/eclipse/jetty/io/Buffers$Type;->DIRECT:Lorg/eclipse/jetty/io/Buffers$Type;

    goto :goto_1

    :cond_2
    sget-object v1, Lorg/eclipse/jetty/io/Buffers$Type;->INDIRECT:Lorg/eclipse/jetty/io/Buffers$Type;

    :goto_1
    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/http/HttpBuffersImpl;->setResponseHeaderType(Lorg/eclipse/jetty/io/Buffers$Type;)V

    :goto_2
    return-void
.end method


# virtual methods
.method public cancel(Lorg/eclipse/jetty/util/thread/Timeout$Task;)V
    .locals 0

    .line 282
    invoke-virtual {p1}, Lorg/eclipse/jetty/util/thread/Timeout$Task;->cancel()V

    return-void
.end method

.method public clearAttributes()V
    .locals 1

    .line 235
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_attributes:Lorg/eclipse/jetty/util/AttributesMap;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/AttributesMap;->clearAttributes()V

    return-void
.end method

.method protected doStart()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 408
    invoke-direct {p0}, Lorg/eclipse/jetty/client/HttpClient;->setBufferTypes()V

    .line 410
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_timeoutQ:Lorg/eclipse/jetty/util/thread/Timeout;

    iget-wide v1, p0, Lorg/eclipse/jetty/client/HttpClient;->_timeout:J

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jetty/util/thread/Timeout;->setDuration(J)V

    .line 411
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_timeoutQ:Lorg/eclipse/jetty/util/thread/Timeout;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/thread/Timeout;->setNow()J

    .line 412
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_idleTimeoutQ:Lorg/eclipse/jetty/util/thread/Timeout;

    iget-wide v1, p0, Lorg/eclipse/jetty/client/HttpClient;->_idleTimeout:J

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jetty/util/thread/Timeout;->setDuration(J)V

    .line 413
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_idleTimeoutQ:Lorg/eclipse/jetty/util/thread/Timeout;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/thread/Timeout;->setNow()J

    .line 415
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_threadPool:Lorg/eclipse/jetty/util/thread/ThreadPool;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 417
    new-instance v0, Lorg/eclipse/jetty/client/HttpClient$LocalQueuedThreadPool;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lorg/eclipse/jetty/client/HttpClient$LocalQueuedThreadPool;-><init>(Lorg/eclipse/jetty/client/HttpClient$1;)V

    const/16 v2, 0x10

    .line 418
    invoke-virtual {v0, v2}, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->setMaxThreads(I)V

    .line 419
    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->setDaemon(Z)V

    const-string v2, "HttpClient"

    .line 420
    invoke-virtual {v0, v2}, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->setName(Ljava/lang/String;)V

    .line 421
    iput-object v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_threadPool:Lorg/eclipse/jetty/util/thread/ThreadPool;

    .line 422
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_threadPool:Lorg/eclipse/jetty/util/thread/ThreadPool;

    invoke-virtual {p0, v0, v1}, Lorg/eclipse/jetty/client/HttpClient;->addBean(Ljava/lang/Object;Z)Z

    .line 425
    :cond_0
    iget v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_connectorType:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    new-instance v0, Lorg/eclipse/jetty/client/SelectConnector;

    invoke-direct {v0, p0}, Lorg/eclipse/jetty/client/SelectConnector;-><init>(Lorg/eclipse/jetty/client/HttpClient;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lorg/eclipse/jetty/client/SocketConnector;

    invoke-direct {v0, p0}, Lorg/eclipse/jetty/client/SocketConnector;-><init>(Lorg/eclipse/jetty/client/HttpClient;)V

    :goto_0
    check-cast v0, Lorg/eclipse/jetty/client/HttpClient$Connector;

    iput-object v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_connector:Lorg/eclipse/jetty/client/HttpClient$Connector;

    .line 426
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_connector:Lorg/eclipse/jetty/client/HttpClient$Connector;

    invoke-virtual {p0, v0, v1}, Lorg/eclipse/jetty/client/HttpClient;->addBean(Ljava/lang/Object;Z)Z

    .line 428
    invoke-super {p0}, Lorg/eclipse/jetty/util/component/AggregateLifeCycle;->doStart()V

    .line 430
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_threadPool:Lorg/eclipse/jetty/util/thread/ThreadPool;

    new-instance v1, Lorg/eclipse/jetty/client/HttpClient$1;

    invoke-direct {v1, p0}, Lorg/eclipse/jetty/client/HttpClient$1;-><init>(Lorg/eclipse/jetty/client/HttpClient;)V

    invoke-interface {v0, v1}, Lorg/eclipse/jetty/util/thread/ThreadPool;->dispatch(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected doStop()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 454
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_destinations:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jetty/client/HttpDestination;

    .line 455
    invoke-virtual {v1}, Lorg/eclipse/jetty/client/HttpDestination;->close()V

    goto :goto_0

    .line 457
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_timeoutQ:Lorg/eclipse/jetty/util/thread/Timeout;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/thread/Timeout;->cancelAll()V

    .line 458
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_idleTimeoutQ:Lorg/eclipse/jetty/util/thread/Timeout;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/thread/Timeout;->cancelAll()V

    .line 460
    invoke-super {p0}, Lorg/eclipse/jetty/util/component/AggregateLifeCycle;->doStop()V

    .line 462
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_threadPool:Lorg/eclipse/jetty/util/thread/ThreadPool;

    instance-of v0, v0, Lorg/eclipse/jetty/client/HttpClient$LocalQueuedThreadPool;

    if-eqz v0, :cond_1

    .line 464
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_threadPool:Lorg/eclipse/jetty/util/thread/ThreadPool;

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/client/HttpClient;->removeBean(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    .line 465
    iput-object v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_threadPool:Lorg/eclipse/jetty/util/thread/ThreadPool;

    .line 468
    :cond_1
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_connector:Lorg/eclipse/jetty/client/HttpClient$Connector;

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/client/HttpClient;->removeBean(Ljava/lang/Object;)Z

    return-void
.end method

.method public getAttribute(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 198
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_attributes:Lorg/eclipse/jetty/util/AttributesMap;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/util/AttributesMap;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getAttributeNames()Ljava/util/Enumeration;
    .locals 1

    .line 207
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_attributes:Lorg/eclipse/jetty/util/AttributesMap;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/AttributesMap;->getAttributeNames()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getConnectTimeout()I
    .locals 1

    .line 562
    iget v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_connectTimeout:I

    return v0
.end method

.method public getConnectorType()I
    .locals 1

    .line 372
    iget v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_connectorType:I

    return v0
.end method

.method public getDestination(Lorg/eclipse/jetty/client/Address;Z)Lorg/eclipse/jetty/client/HttpDestination;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    .line 242
    new-instance p1, Ljava/net/UnknownHostException;

    const-string p2, "Remote socket address cannot be null."

    invoke-direct {p1, p2}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 244
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_destinations:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/client/HttpDestination;

    if-nez v0, :cond_3

    .line 247
    new-instance v0, Lorg/eclipse/jetty/client/HttpDestination;

    invoke-direct {v0, p0, p1, p2}, Lorg/eclipse/jetty/client/HttpDestination;-><init>(Lorg/eclipse/jetty/client/HttpClient;Lorg/eclipse/jetty/client/Address;Z)V

    .line 248
    iget-object p2, p0, Lorg/eclipse/jetty/client/HttpClient;->_proxy:Lorg/eclipse/jetty/client/Address;

    if-eqz p2, :cond_2

    iget-object p2, p0, Lorg/eclipse/jetty/client/HttpClient;->_noProxy:Ljava/util/Set;

    if-eqz p2, :cond_1

    iget-object p2, p0, Lorg/eclipse/jetty/client/HttpClient;->_noProxy:Ljava/util/Set;

    invoke-virtual {p1}, Lorg/eclipse/jetty/client/Address;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 250
    :cond_1
    iget-object p2, p0, Lorg/eclipse/jetty/client/HttpClient;->_proxy:Lorg/eclipse/jetty/client/Address;

    invoke-virtual {v0, p2}, Lorg/eclipse/jetty/client/HttpDestination;->setProxy(Lorg/eclipse/jetty/client/Address;)V

    .line 251
    iget-object p2, p0, Lorg/eclipse/jetty/client/HttpClient;->_proxyAuthentication:Lorg/eclipse/jetty/client/security/Authentication;

    if-eqz p2, :cond_2

    .line 252
    iget-object p2, p0, Lorg/eclipse/jetty/client/HttpClient;->_proxyAuthentication:Lorg/eclipse/jetty/client/security/Authentication;

    invoke-virtual {v0, p2}, Lorg/eclipse/jetty/client/HttpDestination;->setProxyAuthentication(Lorg/eclipse/jetty/client/security/Authentication;)V

    .line 254
    :cond_2
    iget-object p2, p0, Lorg/eclipse/jetty/client/HttpClient;->_destinations:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p2, p1, v0}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jetty/client/HttpDestination;

    if-eqz p1, :cond_3

    move-object v0, p1

    :cond_3
    return-object v0
.end method

.method public getIdleTimeout()J
    .locals 2

    .line 504
    iget-wide v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_idleTimeout:J

    return-wide v0
.end method

.method public getKeyManagerAlgorithm()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 837
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_sslContextFactory:Lorg/eclipse/jetty/util/ssl/SslContextFactory;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->getSslKeyManagerFactoryAlgorithm()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getKeyStoreInputStream()Ljava/io/InputStream;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 775
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_sslContextFactory:Lorg/eclipse/jetty/util/ssl/SslContextFactory;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->getKeyStoreInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getKeyStoreLocation()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 762
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_sslContextFactory:Lorg/eclipse/jetty/util/ssl/SslContextFactory;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->getKeyStorePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getKeyStoreType()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 809
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_sslContextFactory:Lorg/eclipse/jetty/util/ssl/SslContextFactory;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->getKeyStoreType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMaxBuffers()I
    .locals 1

    .line 727
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_buffers:Lorg/eclipse/jetty/http/HttpBuffersImpl;

    invoke-virtual {v0}, Lorg/eclipse/jetty/http/HttpBuffersImpl;->getMaxBuffers()I

    move-result v0

    return v0
.end method

.method public getMaxConnectionsPerAddress()I
    .locals 1

    .line 385
    iget v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_maxConnectionsPerAddress:I

    return v0
.end method

.method public getMaxQueueSizePerAddress()I
    .locals 1

    .line 396
    iget v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_maxQueueSizePerAddress:I

    return v0
.end method

.method public getNoProxy()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 607
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_noProxy:Ljava/util/Set;

    return-object v0
.end method

.method public getProtocol()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 865
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_sslContextFactory:Lorg/eclipse/jetty/util/ssl/SslContextFactory;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->getProtocol()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProvider()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 879
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_sslContextFactory:Lorg/eclipse/jetty/util/ssl/SslContextFactory;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->getProvider()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProxy()Lorg/eclipse/jetty/client/Address;
    .locals 1

    .line 577
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_proxy:Lorg/eclipse/jetty/client/Address;

    return-object v0
.end method

.method public getProxyAuthentication()Lorg/eclipse/jetty/client/security/Authentication;
    .locals 1

    .line 589
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_proxyAuthentication:Lorg/eclipse/jetty/client/security/Authentication;

    return-object v0
.end method

.method public getRealmResolver()Lorg/eclipse/jetty/client/security/RealmResolver;
    .locals 1

    .line 314
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_realmResolver:Lorg/eclipse/jetty/client/security/RealmResolver;

    return-object v0
.end method

.method public getRegisteredListeners()Ljava/util/LinkedList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 348
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_registeredListeners:Ljava/util/LinkedList;

    return-object v0
.end method

.method public getRequestBufferSize()I
    .locals 1

    .line 642
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_buffers:Lorg/eclipse/jetty/http/HttpBuffersImpl;

    invoke-virtual {v0}, Lorg/eclipse/jetty/http/HttpBuffersImpl;->getRequestBufferSize()I

    move-result v0

    return v0
.end method

.method public getRequestBufferType()Lorg/eclipse/jetty/io/Buffers$Type;
    .locals 1

    .line 682
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_buffers:Lorg/eclipse/jetty/http/HttpBuffersImpl;

    invoke-virtual {v0}, Lorg/eclipse/jetty/http/HttpBuffersImpl;->getRequestBufferType()Lorg/eclipse/jetty/io/Buffers$Type;

    move-result-object v0

    return-object v0
.end method

.method public getRequestBuffers()Lorg/eclipse/jetty/io/Buffers;
    .locals 1

    .line 712
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_buffers:Lorg/eclipse/jetty/http/HttpBuffersImpl;

    invoke-virtual {v0}, Lorg/eclipse/jetty/http/HttpBuffersImpl;->getRequestBuffers()Lorg/eclipse/jetty/io/Buffers;

    move-result-object v0

    return-object v0
.end method

.method public getRequestHeaderSize()I
    .locals 1

    .line 652
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_buffers:Lorg/eclipse/jetty/http/HttpBuffersImpl;

    invoke-virtual {v0}, Lorg/eclipse/jetty/http/HttpBuffersImpl;->getRequestHeaderSize()I

    move-result v0

    return v0
.end method

.method public getRequestHeaderType()Lorg/eclipse/jetty/io/Buffers$Type;
    .locals 1

    .line 687
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_buffers:Lorg/eclipse/jetty/http/HttpBuffersImpl;

    invoke-virtual {v0}, Lorg/eclipse/jetty/http/HttpBuffersImpl;->getRequestHeaderType()Lorg/eclipse/jetty/io/Buffers$Type;

    move-result-object v0

    return-object v0
.end method

.method public getResponseBufferSize()I
    .locals 1

    .line 662
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_buffers:Lorg/eclipse/jetty/http/HttpBuffersImpl;

    invoke-virtual {v0}, Lorg/eclipse/jetty/http/HttpBuffersImpl;->getResponseBufferSize()I

    move-result v0

    return v0
.end method

.method public getResponseBufferType()Lorg/eclipse/jetty/io/Buffers$Type;
    .locals 1

    .line 692
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_buffers:Lorg/eclipse/jetty/http/HttpBuffersImpl;

    invoke-virtual {v0}, Lorg/eclipse/jetty/http/HttpBuffersImpl;->getResponseBufferType()Lorg/eclipse/jetty/io/Buffers$Type;

    move-result-object v0

    return-object v0
.end method

.method public getResponseBuffers()Lorg/eclipse/jetty/io/Buffers;
    .locals 1

    .line 717
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_buffers:Lorg/eclipse/jetty/http/HttpBuffersImpl;

    invoke-virtual {v0}, Lorg/eclipse/jetty/http/HttpBuffersImpl;->getResponseBuffers()Lorg/eclipse/jetty/io/Buffers;

    move-result-object v0

    return-object v0
.end method

.method public getResponseHeaderSize()I
    .locals 1

    .line 672
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_buffers:Lorg/eclipse/jetty/http/HttpBuffersImpl;

    invoke-virtual {v0}, Lorg/eclipse/jetty/http/HttpBuffersImpl;->getResponseHeaderSize()I

    move-result v0

    return v0
.end method

.method public getResponseHeaderType()Lorg/eclipse/jetty/io/Buffers$Type;
    .locals 1

    .line 697
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_buffers:Lorg/eclipse/jetty/http/HttpBuffersImpl;

    invoke-virtual {v0}, Lorg/eclipse/jetty/http/HttpBuffersImpl;->getResponseHeaderType()Lorg/eclipse/jetty/io/Buffers$Type;

    move-result-object v0

    return-object v0
.end method

.method protected getSSLContext()Ljavax/net/ssl/SSLContext;
    .locals 1

    .line 486
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_sslContextFactory:Lorg/eclipse/jetty/util/ssl/SslContextFactory;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->getSslContext()Ljavax/net/ssl/SSLContext;

    move-result-object v0

    return-object v0
.end method

.method public getSecureRandomAlgorithm()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 893
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_sslContextFactory:Lorg/eclipse/jetty/util/ssl/SslContextFactory;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->getSecureRandomAlgorithm()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSoTimeout()I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 524
    invoke-virtual {p0}, Lorg/eclipse/jetty/client/HttpClient;->getTimeout()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v0

    return v0
.end method

.method public getSslContextFactory()Lorg/eclipse/jetty/util/ssl/SslContextFactory;
    .locals 1

    .line 495
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_sslContextFactory:Lorg/eclipse/jetty/util/ssl/SslContextFactory;

    return-object v0
.end method

.method public getThreadPool()Lorg/eclipse/jetty/util/thread/ThreadPool;
    .locals 1

    .line 174
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_threadPool:Lorg/eclipse/jetty/util/thread/ThreadPool;

    return-object v0
.end method

.method public getTimeout()J
    .locals 2

    .line 544
    iget-wide v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_timeout:J

    return-wide v0
.end method

.method public getTrustManagerAlgorithm()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 851
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_sslContextFactory:Lorg/eclipse/jetty/util/ssl/SslContextFactory;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->getTrustManagerFactoryAlgorithm()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTrustStoreInputStream()Ljava/io/InputStream;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 748
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_sslContextFactory:Lorg/eclipse/jetty/util/ssl/SslContextFactory;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->getTrustStoreInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getTrustStoreLocation()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 734
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_sslContextFactory:Lorg/eclipse/jetty/util/ssl/SslContextFactory;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->getTrustStore()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTrustStoreType()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 823
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_sslContextFactory:Lorg/eclipse/jetty/util/ssl/SslContextFactory;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->getTrustStoreType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUseDirectBuffers()Z
    .locals 1

    .line 291
    iget-boolean v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_useDirectBuffers:Z

    return v0
.end method

.method public hasRealms()Z
    .locals 1

    .line 320
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_realmResolver:Lorg/eclipse/jetty/client/security/RealmResolver;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method public isConnectBlocking()Z
    .locals 1

    .line 147
    iget-boolean v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_connectBlocking:Z

    return v0
.end method

.method public isProxied()Z
    .locals 1

    .line 601
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_proxy:Lorg/eclipse/jetty/client/Address;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public maxRedirects()I
    .locals 1

    .line 631
    iget v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_maxRedirects:I

    return v0
.end method

.method public maxRetries()I
    .locals 1

    .line 619
    iget v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_maxRetries:I

    return v0
.end method

.method public registerListener(Ljava/lang/String;)V
    .locals 1

    .line 338
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_registeredListeners:Ljava/util/LinkedList;

    if-nez v0, :cond_0

    .line 340
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_registeredListeners:Ljava/util/LinkedList;

    .line 342
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_registeredListeners:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeAttribute(Ljava/lang/String;)V
    .locals 1

    .line 216
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_attributes:Lorg/eclipse/jetty/util/AttributesMap;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/util/AttributesMap;->removeAttribute(Ljava/lang/String;)V

    return-void
.end method

.method public schedule(Lorg/eclipse/jetty/util/thread/Timeout$Task;)V
    .locals 1

    .line 264
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_timeoutQ:Lorg/eclipse/jetty/util/thread/Timeout;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/util/thread/Timeout;->schedule(Lorg/eclipse/jetty/util/thread/Timeout$Task;)V

    return-void
.end method

.method public schedule(Lorg/eclipse/jetty/util/thread/Timeout$Task;J)V
    .locals 5

    .line 270
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_timeoutQ:Lorg/eclipse/jetty/util/thread/Timeout;

    iget-object v1, p0, Lorg/eclipse/jetty/client/HttpClient;->_timeoutQ:Lorg/eclipse/jetty/util/thread/Timeout;

    invoke-virtual {v1}, Lorg/eclipse/jetty/util/thread/Timeout;->getDuration()J

    move-result-wide v1

    sub-long v3, p2, v1

    invoke-virtual {v0, p1, v3, v4}, Lorg/eclipse/jetty/util/thread/Timeout;->schedule(Lorg/eclipse/jetty/util/thread/Timeout$Task;J)V

    return-void
.end method

.method public scheduleIdle(Lorg/eclipse/jetty/util/thread/Timeout$Task;)V
    .locals 1

    .line 276
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_idleTimeoutQ:Lorg/eclipse/jetty/util/thread/Timeout;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/util/thread/Timeout;->schedule(Lorg/eclipse/jetty/util/thread/Timeout$Task;)V

    return-void
.end method

.method public send(Lorg/eclipse/jetty/client/HttpExchange;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 162
    sget-object v0, Lorg/eclipse/jetty/http/HttpSchemes;->HTTPS_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    invoke-virtual {p1}, Lorg/eclipse/jetty/client/HttpExchange;->getScheme()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/eclipse/jetty/io/Buffer;->equalsIgnoreCase(Lorg/eclipse/jetty/io/Buffer;)Z

    move-result v0

    const/4 v1, 0x1

    .line 163
    invoke-virtual {p1, v1}, Lorg/eclipse/jetty/client/HttpExchange;->setStatus(I)Z

    .line 164
    invoke-virtual {p1}, Lorg/eclipse/jetty/client/HttpExchange;->getAddress()Lorg/eclipse/jetty/client/Address;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lorg/eclipse/jetty/client/HttpClient;->getDestination(Lorg/eclipse/jetty/client/Address;Z)Lorg/eclipse/jetty/client/HttpDestination;

    move-result-object v0

    .line 165
    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/client/HttpDestination;->send(Lorg/eclipse/jetty/client/HttpExchange;)V

    return-void
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 229
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_attributes:Lorg/eclipse/jetty/util/AttributesMap;

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jetty/util/AttributesMap;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setConnectBlocking(Z)V
    .locals 0

    .line 156
    iput-boolean p1, p0, Lorg/eclipse/jetty/client/HttpClient;->_connectBlocking:Z

    return-void
.end method

.method public setConnectTimeout(I)V
    .locals 0

    .line 571
    iput p1, p0, Lorg/eclipse/jetty/client/HttpClient;->_connectTimeout:I

    return-void
.end method

.method public setConnectorType(I)V
    .locals 0

    .line 378
    iput p1, p0, Lorg/eclipse/jetty/client/HttpClient;->_connectorType:I

    .line 379
    invoke-direct {p0}, Lorg/eclipse/jetty/client/HttpClient;->setBufferTypes()V

    return-void
.end method

.method public setIdleTimeout(J)V
    .locals 0

    .line 513
    iput-wide p1, p0, Lorg/eclipse/jetty/client/HttpClient;->_idleTimeout:J

    return-void
.end method

.method public setKeyManagerAlgorithm(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 844
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_sslContextFactory:Lorg/eclipse/jetty/util/ssl/SslContextFactory;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->setSslKeyManagerFactoryAlgorithm(Ljava/lang/String;)V

    return-void
.end method

.method public setKeyManagerPassword(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 795
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_sslContextFactory:Lorg/eclipse/jetty/util/ssl/SslContextFactory;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->setKeyManagerPassword(Ljava/lang/String;)V

    return-void
.end method

.method public setKeyStoreInputStream(Ljava/io/InputStream;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 781
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_sslContextFactory:Lorg/eclipse/jetty/util/ssl/SslContextFactory;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->setKeyStoreInputStream(Ljava/io/InputStream;)V

    return-void
.end method

.method public setKeyStoreLocation(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 769
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_sslContextFactory:Lorg/eclipse/jetty/util/ssl/SslContextFactory;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->setKeyStorePath(Ljava/lang/String;)V

    return-void
.end method

.method public setKeyStorePassword(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 788
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_sslContextFactory:Lorg/eclipse/jetty/util/ssl/SslContextFactory;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->setKeyStorePassword(Ljava/lang/String;)V

    return-void
.end method

.method public setKeyStoreType(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 816
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_sslContextFactory:Lorg/eclipse/jetty/util/ssl/SslContextFactory;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->setKeyStoreType(Ljava/lang/String;)V

    return-void
.end method

.method public setMaxBuffers(I)V
    .locals 1

    .line 722
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_buffers:Lorg/eclipse/jetty/http/HttpBuffersImpl;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/http/HttpBuffersImpl;->setMaxBuffers(I)V

    return-void
.end method

.method public setMaxConnectionsPerAddress(I)V
    .locals 0

    .line 391
    iput p1, p0, Lorg/eclipse/jetty/client/HttpClient;->_maxConnectionsPerAddress:I

    return-void
.end method

.method public setMaxQueueSizePerAddress(I)V
    .locals 0

    .line 401
    iput p1, p0, Lorg/eclipse/jetty/client/HttpClient;->_maxQueueSizePerAddress:I

    return-void
.end method

.method public setMaxRedirects(I)V
    .locals 0

    .line 637
    iput p1, p0, Lorg/eclipse/jetty/client/HttpClient;->_maxRedirects:I

    return-void
.end method

.method public setMaxRetries(I)V
    .locals 0

    .line 625
    iput p1, p0, Lorg/eclipse/jetty/client/HttpClient;->_maxRetries:I

    return-void
.end method

.method public setNoProxy(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 613
    iput-object p1, p0, Lorg/eclipse/jetty/client/HttpClient;->_noProxy:Ljava/util/Set;

    return-void
.end method

.method public setProtocol(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 872
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_sslContextFactory:Lorg/eclipse/jetty/util/ssl/SslContextFactory;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->setProtocol(Ljava/lang/String;)V

    return-void
.end method

.method public setProvider(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 886
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_sslContextFactory:Lorg/eclipse/jetty/util/ssl/SslContextFactory;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->setProvider(Ljava/lang/String;)V

    return-void
.end method

.method public setProxy(Lorg/eclipse/jetty/client/Address;)V
    .locals 0

    .line 583
    iput-object p1, p0, Lorg/eclipse/jetty/client/HttpClient;->_proxy:Lorg/eclipse/jetty/client/Address;

    return-void
.end method

.method public setProxyAuthentication(Lorg/eclipse/jetty/client/security/Authentication;)V
    .locals 0

    .line 595
    iput-object p1, p0, Lorg/eclipse/jetty/client/HttpClient;->_proxyAuthentication:Lorg/eclipse/jetty/client/security/Authentication;

    return-void
.end method

.method public setRealmResolver(Lorg/eclipse/jetty/client/security/RealmResolver;)V
    .locals 0

    .line 303
    iput-object p1, p0, Lorg/eclipse/jetty/client/HttpClient;->_realmResolver:Lorg/eclipse/jetty/client/security/RealmResolver;

    return-void
.end method

.method public setRequestBufferSize(I)V
    .locals 1

    .line 647
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_buffers:Lorg/eclipse/jetty/http/HttpBuffersImpl;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/http/HttpBuffersImpl;->setRequestBufferSize(I)V

    return-void
.end method

.method public setRequestBuffers(Lorg/eclipse/jetty/io/Buffers;)V
    .locals 1

    .line 702
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_buffers:Lorg/eclipse/jetty/http/HttpBuffersImpl;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/http/HttpBuffersImpl;->setRequestBuffers(Lorg/eclipse/jetty/io/Buffers;)V

    return-void
.end method

.method public setRequestHeaderSize(I)V
    .locals 1

    .line 657
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_buffers:Lorg/eclipse/jetty/http/HttpBuffersImpl;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/http/HttpBuffersImpl;->setRequestHeaderSize(I)V

    return-void
.end method

.method public setResponseBufferSize(I)V
    .locals 1

    .line 667
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_buffers:Lorg/eclipse/jetty/http/HttpBuffersImpl;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/http/HttpBuffersImpl;->setResponseBufferSize(I)V

    return-void
.end method

.method public setResponseBuffers(Lorg/eclipse/jetty/io/Buffers;)V
    .locals 1

    .line 707
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_buffers:Lorg/eclipse/jetty/http/HttpBuffersImpl;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/http/HttpBuffersImpl;->setResponseBuffers(Lorg/eclipse/jetty/io/Buffers;)V

    return-void
.end method

.method public setResponseHeaderSize(I)V
    .locals 1

    .line 677
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_buffers:Lorg/eclipse/jetty/http/HttpBuffersImpl;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/http/HttpBuffersImpl;->setResponseHeaderSize(I)V

    return-void
.end method

.method public setSecureRandomAlgorithm(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 900
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_sslContextFactory:Lorg/eclipse/jetty/util/ssl/SslContextFactory;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->setSecureRandomAlgorithm(Ljava/lang/String;)V

    return-void
.end method

.method public setSoTimeout(I)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    int-to-long v0, p1

    .line 535
    invoke-virtual {p0, v0, v1}, Lorg/eclipse/jetty/client/HttpClient;->setTimeout(J)V

    return-void
.end method

.method public setThreadPool(Lorg/eclipse/jetty/util/thread/ThreadPool;)V
    .locals 1

    .line 185
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_threadPool:Lorg/eclipse/jetty/util/thread/ThreadPool;

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/client/HttpClient;->removeBean(Ljava/lang/Object;)Z

    .line 186
    iput-object p1, p0, Lorg/eclipse/jetty/client/HttpClient;->_threadPool:Lorg/eclipse/jetty/util/thread/ThreadPool;

    .line 187
    iget-object p1, p0, Lorg/eclipse/jetty/client/HttpClient;->_threadPool:Lorg/eclipse/jetty/util/thread/ThreadPool;

    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/client/HttpClient;->addBean(Ljava/lang/Object;)Z

    return-void
.end method

.method public setTimeout(J)V
    .locals 0

    .line 553
    iput-wide p1, p0, Lorg/eclipse/jetty/client/HttpClient;->_timeout:J

    return-void
.end method

.method public setTrustManagerAlgorithm(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 858
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_sslContextFactory:Lorg/eclipse/jetty/util/ssl/SslContextFactory;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->setTrustManagerFactoryAlgorithm(Ljava/lang/String;)V

    return-void
.end method

.method public setTrustStoreInputStream(Ljava/io/InputStream;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 755
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_sslContextFactory:Lorg/eclipse/jetty/util/ssl/SslContextFactory;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->setTrustStoreInputStream(Ljava/io/InputStream;)V

    return-void
.end method

.method public setTrustStoreLocation(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 741
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_sslContextFactory:Lorg/eclipse/jetty/util/ssl/SslContextFactory;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->setTrustStore(Ljava/lang/String;)V

    return-void
.end method

.method public setTrustStorePassword(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 802
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_sslContextFactory:Lorg/eclipse/jetty/util/ssl/SslContextFactory;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->setTrustStorePassword(Ljava/lang/String;)V

    return-void
.end method

.method public setTrustStoreType(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 830
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_sslContextFactory:Lorg/eclipse/jetty/util/ssl/SslContextFactory;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->setTrustStoreType(Ljava/lang/String;)V

    return-void
.end method

.method public setUseDirectBuffers(Z)V
    .locals 0

    .line 362
    iput-boolean p1, p0, Lorg/eclipse/jetty/client/HttpClient;->_useDirectBuffers:Z

    .line 363
    invoke-direct {p0}, Lorg/eclipse/jetty/client/HttpClient;->setBufferTypes()V

    return-void
.end method
