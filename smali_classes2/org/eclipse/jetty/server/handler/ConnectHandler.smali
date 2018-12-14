.class public Lorg/eclipse/jetty/server/handler/ConnectHandler;
.super Lorg/eclipse/jetty/server/handler/HandlerWrapper;
.source "ConnectHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jetty/server/handler/ConnectHandler$ClientToProxyConnection;,
        Lorg/eclipse/jetty/server/handler/ConnectHandler$ProxyToServerConnection;,
        Lorg/eclipse/jetty/server/handler/ConnectHandler$Manager;
    }
.end annotation


# static fields
.field private static final LOG:Lorg/eclipse/jetty/util/log/Logger;


# instance fields
.field private _black:Lorg/eclipse/jetty/util/HostMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/eclipse/jetty/util/HostMap<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private volatile _connectTimeout:I

.field private volatile _privateThreadPool:Z

.field private final _selectorManager:Lorg/eclipse/jetty/io/nio/SelectorManager;

.field private volatile _threadPool:Lorg/eclipse/jetty/util/thread/ThreadPool;

.field private _white:Lorg/eclipse/jetty/util/HostMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/eclipse/jetty/util/HostMap<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private volatile _writeTimeout:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 66
    const-class v0, Lorg/eclipse/jetty/server/handler/ConnectHandler;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/server/handler/ConnectHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 77
    invoke-direct {p0, v0}, Lorg/eclipse/jetty/server/handler/ConnectHandler;-><init>(Lorg/eclipse/jetty/server/Handler;)V

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jetty/server/Handler;)V
    .locals 2

    .line 86
    invoke-direct {p0}, Lorg/eclipse/jetty/server/handler/HandlerWrapper;-><init>()V

    .line 67
    new-instance v0, Lorg/eclipse/jetty/server/handler/ConnectHandler$Manager;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/eclipse/jetty/server/handler/ConnectHandler$Manager;-><init>(Lorg/eclipse/jetty/server/handler/ConnectHandler;Lorg/eclipse/jetty/server/handler/ConnectHandler$1;)V

    iput-object v0, p0, Lorg/eclipse/jetty/server/handler/ConnectHandler;->_selectorManager:Lorg/eclipse/jetty/io/nio/SelectorManager;

    const/16 v0, 0x1388

    .line 68
    iput v0, p0, Lorg/eclipse/jetty/server/handler/ConnectHandler;->_connectTimeout:I

    const/16 v0, 0x7530

    .line 69
    iput v0, p0, Lorg/eclipse/jetty/server/handler/ConnectHandler;->_writeTimeout:I

    .line 72
    new-instance v0, Lorg/eclipse/jetty/util/HostMap;

    invoke-direct {v0}, Lorg/eclipse/jetty/util/HostMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/server/handler/ConnectHandler;->_white:Lorg/eclipse/jetty/util/HostMap;

    .line 73
    new-instance v0, Lorg/eclipse/jetty/util/HostMap;

    invoke-direct {v0}, Lorg/eclipse/jetty/util/HostMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/server/handler/ConnectHandler;->_black:Lorg/eclipse/jetty/util/HostMap;

    .line 87
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/server/handler/ConnectHandler;->setHandler(Lorg/eclipse/jetty/server/Handler;)V

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jetty/server/Handler;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2

    .line 91
    invoke-direct {p0}, Lorg/eclipse/jetty/server/handler/HandlerWrapper;-><init>()V

    .line 67
    new-instance v0, Lorg/eclipse/jetty/server/handler/ConnectHandler$Manager;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/eclipse/jetty/server/handler/ConnectHandler$Manager;-><init>(Lorg/eclipse/jetty/server/handler/ConnectHandler;Lorg/eclipse/jetty/server/handler/ConnectHandler$1;)V

    iput-object v0, p0, Lorg/eclipse/jetty/server/handler/ConnectHandler;->_selectorManager:Lorg/eclipse/jetty/io/nio/SelectorManager;

    const/16 v0, 0x1388

    .line 68
    iput v0, p0, Lorg/eclipse/jetty/server/handler/ConnectHandler;->_connectTimeout:I

    const/16 v0, 0x7530

    .line 69
    iput v0, p0, Lorg/eclipse/jetty/server/handler/ConnectHandler;->_writeTimeout:I

    .line 72
    new-instance v0, Lorg/eclipse/jetty/util/HostMap;

    invoke-direct {v0}, Lorg/eclipse/jetty/util/HostMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/server/handler/ConnectHandler;->_white:Lorg/eclipse/jetty/util/HostMap;

    .line 73
    new-instance v0, Lorg/eclipse/jetty/util/HostMap;

    invoke-direct {v0}, Lorg/eclipse/jetty/util/HostMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/server/handler/ConnectHandler;->_black:Lorg/eclipse/jetty/util/HostMap;

    .line 92
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/server/handler/ConnectHandler;->setHandler(Lorg/eclipse/jetty/server/Handler;)V

    .line 93
    iget-object p1, p0, Lorg/eclipse/jetty/server/handler/ConnectHandler;->_white:Lorg/eclipse/jetty/util/HostMap;

    invoke-virtual {p0, p2, p1}, Lorg/eclipse/jetty/server/handler/ConnectHandler;->set([Ljava/lang/String;Lorg/eclipse/jetty/util/HostMap;)V

    .line 94
    iget-object p1, p0, Lorg/eclipse/jetty/server/handler/ConnectHandler;->_black:Lorg/eclipse/jetty/util/HostMap;

    invoke-virtual {p0, p3, p1}, Lorg/eclipse/jetty/server/handler/ConnectHandler;->set([Ljava/lang/String;Lorg/eclipse/jetty/util/HostMap;)V

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 82
    invoke-direct {p0, v0, p1, p2}, Lorg/eclipse/jetty/server/handler/ConnectHandler;-><init>(Lorg/eclipse/jetty/server/Handler;[Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lorg/eclipse/jetty/server/handler/ConnectHandler;)I
    .locals 0

    .line 64
    iget p0, p0, Lorg/eclipse/jetty/server/handler/ConnectHandler;->_writeTimeout:I

    return p0
.end method

.method static synthetic access$200(Lorg/eclipse/jetty/server/handler/ConnectHandler;)Lorg/eclipse/jetty/util/thread/ThreadPool;
    .locals 0

    .line 64
    iget-object p0, p0, Lorg/eclipse/jetty/server/handler/ConnectHandler;->_threadPool:Lorg/eclipse/jetty/util/thread/ThreadPool;

    return-object p0
.end method

.method static synthetic access$300()Lorg/eclipse/jetty/util/log/Logger;
    .locals 1

    .line 64
    sget-object v0, Lorg/eclipse/jetty/server/handler/ConnectHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    return-object v0
.end method

.method static synthetic access$500(Lorg/eclipse/jetty/server/handler/ConnectHandler;Ljava/nio/channels/SocketChannel;Lorg/eclipse/jetty/server/handler/ConnectHandler$ProxyToServerConnection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 64
    invoke-direct {p0, p1, p2}, Lorg/eclipse/jetty/server/handler/ConnectHandler;->register(Ljava/nio/channels/SocketChannel;Lorg/eclipse/jetty/server/handler/ConnectHandler$ProxyToServerConnection;)V

    return-void
.end method

.method private add(Ljava/lang/String;Lorg/eclipse/jetty/util/HostMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/eclipse/jetty/util/HostMap<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 973
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 975
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 976
    invoke-virtual {p2, p1}, Lorg/eclipse/jetty/util/HostMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 978
    invoke-virtual {p2, p1, p1}, Lorg/eclipse/jetty/util/HostMap;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private connectToServer(Ljavax/servlet/http/HttpServletRequest;Ljava/lang/String;I)Ljava/nio/channels/SocketChannel;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 356
    invoke-virtual {p0, p1, p2, p3}, Lorg/eclipse/jetty/server/handler/ConnectHandler;->connect(Ljavax/servlet/http/HttpServletRequest;Ljava/lang/String;I)Ljava/nio/channels/SocketChannel;

    move-result-object p1

    const/4 p2, 0x0

    .line 357
    invoke-virtual {p1, p2}, Ljava/nio/channels/SocketChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    return-object p1
.end method

.method private prepareConnections(Ljava/util/concurrent/ConcurrentMap;Ljava/nio/channels/SocketChannel;Lorg/eclipse/jetty/io/Buffer;)Lorg/eclipse/jetty/server/handler/ConnectHandler$ClientToProxyConnection;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/nio/channels/SocketChannel;",
            "Lorg/eclipse/jetty/io/Buffer;",
            ")",
            "Lorg/eclipse/jetty/server/handler/ConnectHandler$ClientToProxyConnection;"
        }
    .end annotation

    .line 319
    invoke-static {}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getCurrentConnection()Lorg/eclipse/jetty/server/AbstractHttpConnection;

    move-result-object v0

    .line 320
    invoke-virtual {p0, p1, p3}, Lorg/eclipse/jetty/server/handler/ConnectHandler;->newProxyToServerConnection(Ljava/util/concurrent/ConcurrentMap;Lorg/eclipse/jetty/io/Buffer;)Lorg/eclipse/jetty/server/handler/ConnectHandler$ProxyToServerConnection;

    move-result-object p3

    .line 321
    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getEndPoint()Lorg/eclipse/jetty/io/EndPoint;

    move-result-object v4

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getTimeStamp()J

    move-result-wide v5

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v1 .. v6}, Lorg/eclipse/jetty/server/handler/ConnectHandler;->newClientToProxyConnection(Ljava/util/concurrent/ConcurrentMap;Ljava/nio/channels/SocketChannel;Lorg/eclipse/jetty/io/EndPoint;J)Lorg/eclipse/jetty/server/handler/ConnectHandler$ClientToProxyConnection;

    move-result-object p1

    .line 322
    invoke-virtual {p1, p3}, Lorg/eclipse/jetty/server/handler/ConnectHandler$ClientToProxyConnection;->setConnection(Lorg/eclipse/jetty/server/handler/ConnectHandler$ProxyToServerConnection;)V

    .line 323
    invoke-virtual {p3, p1}, Lorg/eclipse/jetty/server/handler/ConnectHandler$ProxyToServerConnection;->setConnection(Lorg/eclipse/jetty/server/handler/ConnectHandler$ClientToProxyConnection;)V

    return-object p1
.end method

.method private register(Ljava/nio/channels/SocketChannel;Lorg/eclipse/jetty/server/handler/ConnectHandler$ProxyToServerConnection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 418
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ConnectHandler;->_selectorManager:Lorg/eclipse/jetty/io/nio/SelectorManager;

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jetty/io/nio/SelectorManager;->register(Ljava/nio/channels/SocketChannel;Ljava/lang/Object;)V

    .line 419
    iget p1, p0, Lorg/eclipse/jetty/server/handler/ConnectHandler;->_connectTimeout:I

    int-to-long v0, p1

    invoke-virtual {p2, v0, v1}, Lorg/eclipse/jetty/server/handler/ConnectHandler$ProxyToServerConnection;->waitReady(J)V

    return-void
.end method

.method private upgradeConnection(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;Lorg/eclipse/jetty/io/Connection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "org.eclipse.jetty.io.Connection"

    .line 411
    invoke-interface {p1, v0, p3}, Ljavax/servlet/http/HttpServletRequest;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    const/16 p1, 0x65

    .line 412
    invoke-interface {p2, p1}, Ljavax/servlet/http/HttpServletResponse;->setStatus(I)V

    .line 413
    sget-object p1, Lorg/eclipse/jetty/server/handler/ConnectHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string p2, "Upgraded connection to {}"

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    invoke-interface {p1, p2, v0}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public addBlack(Ljava/lang/String;)V
    .locals 1

    .line 921
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ConnectHandler;->_black:Lorg/eclipse/jetty/util/HostMap;

    invoke-direct {p0, p1, v0}, Lorg/eclipse/jetty/server/handler/ConnectHandler;->add(Ljava/lang/String;Lorg/eclipse/jetty/util/HostMap;)V

    return-void
.end method

.method public addWhite(Ljava/lang/String;)V
    .locals 1

    .line 911
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ConnectHandler;->_white:Lorg/eclipse/jetty/util/HostMap;

    invoke-direct {p0, p1, v0}, Lorg/eclipse/jetty/server/handler/ConnectHandler;->add(Ljava/lang/String;Lorg/eclipse/jetty/util/HostMap;)V

    return-void
.end method

.method protected connect(Ljavax/servlet/http/HttpServletRequest;Ljava/lang/String;I)Ljava/nio/channels/SocketChannel;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 372
    invoke-static {}, Ljava/nio/channels/SocketChannel;->open()Ljava/nio/channels/SocketChannel;

    move-result-object p1

    if-nez p1, :cond_0

    .line 376
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unable to connect to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ":"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 382
    :cond_0
    :try_start_0
    sget-object v0, Lorg/eclipse/jetty/server/handler/ConnectHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v1, "Establishing connection to {}:{}"

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v3, v6

    invoke-interface {v0, v1, v3}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 383
    invoke-virtual {p1}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    .line 384
    invoke-virtual {p1}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v0

    new-instance v1, Ljava/net/InetSocketAddress;

    invoke-direct {v1, p2, p3}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/ConnectHandler;->getConnectTimeout()I

    move-result v3

    invoke-virtual {v0, v1, v3}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 385
    sget-object v0, Lorg/eclipse/jetty/server/handler/ConnectHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v1, "Established connection to {}:{}"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p2, v2, v4

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    .line 390
    sget-object v1, Lorg/eclipse/jetty/server/handler/ConnectHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to establish connection to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ":"

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v1, p2, v0}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 393
    :try_start_1
    invoke-virtual {p1}, Ljava/nio/channels/SocketChannel;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 397
    sget-object p2, Lorg/eclipse/jetty/server/handler/ConnectHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {p2, p1}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    .line 399
    :goto_0
    throw v0
.end method

.method protected doStart()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 164
    invoke-super {p0}, Lorg/eclipse/jetty/server/handler/HandlerWrapper;->doStart()V

    .line 166
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ConnectHandler;->_threadPool:Lorg/eclipse/jetty/util/thread/ThreadPool;

    if-nez v0, :cond_0

    .line 168
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/ConnectHandler;->getServer()Lorg/eclipse/jetty/server/Server;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/Server;->getThreadPool()Lorg/eclipse/jetty/util/thread/ThreadPool;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/server/handler/ConnectHandler;->_threadPool:Lorg/eclipse/jetty/util/thread/ThreadPool;

    const/4 v0, 0x0

    .line 169
    iput-boolean v0, p0, Lorg/eclipse/jetty/server/handler/ConnectHandler;->_privateThreadPool:Z

    .line 171
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ConnectHandler;->_threadPool:Lorg/eclipse/jetty/util/thread/ThreadPool;

    instance-of v0, v0, Lorg/eclipse/jetty/util/component/LifeCycle;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ConnectHandler;->_threadPool:Lorg/eclipse/jetty/util/thread/ThreadPool;

    check-cast v0, Lorg/eclipse/jetty/util/component/LifeCycle;

    invoke-interface {v0}, Lorg/eclipse/jetty/util/component/LifeCycle;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1

    .line 172
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ConnectHandler;->_threadPool:Lorg/eclipse/jetty/util/thread/ThreadPool;

    check-cast v0, Lorg/eclipse/jetty/util/component/LifeCycle;

    invoke-interface {v0}, Lorg/eclipse/jetty/util/component/LifeCycle;->start()V

    .line 174
    :cond_1
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ConnectHandler;->_selectorManager:Lorg/eclipse/jetty/io/nio/SelectorManager;

    invoke-virtual {v0}, Lorg/eclipse/jetty/io/nio/SelectorManager;->start()V

    return-void
.end method

.method protected doStop()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 180
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ConnectHandler;->_selectorManager:Lorg/eclipse/jetty/io/nio/SelectorManager;

    invoke-virtual {v0}, Lorg/eclipse/jetty/io/nio/SelectorManager;->stop()V

    .line 182
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ConnectHandler;->_threadPool:Lorg/eclipse/jetty/util/thread/ThreadPool;

    .line 183
    iget-boolean v1, p0, Lorg/eclipse/jetty/server/handler/ConnectHandler;->_privateThreadPool:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/eclipse/jetty/server/handler/ConnectHandler;->_threadPool:Lorg/eclipse/jetty/util/thread/ThreadPool;

    if-eqz v1, :cond_0

    instance-of v1, v0, Lorg/eclipse/jetty/util/component/LifeCycle;

    if-eqz v1, :cond_0

    .line 184
    check-cast v0, Lorg/eclipse/jetty/util/component/LifeCycle;

    invoke-interface {v0}, Lorg/eclipse/jetty/util/component/LifeCycle;->stop()V

    .line 186
    :cond_0
    invoke-super {p0}, Lorg/eclipse/jetty/server/handler/HandlerWrapper;->doStop()V

    return-void
.end method

.method public dump(Ljava/lang/Appendable;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1015
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/server/handler/ConnectHandler;->dumpThis(Ljava/lang/Appendable;)V

    .line 1016
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/handler/ConnectHandler;->_privateThreadPool:Z

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    .line 1017
    new-array v0, v1, [Ljava/util/Collection;

    new-array v1, v2, [Ljava/lang/Object;

    iget-object v5, p0, Lorg/eclipse/jetty/server/handler/ConnectHandler;->_threadPool:Lorg/eclipse/jetty/util/thread/ThreadPool;

    aput-object v5, v1, v4

    iget-object v5, p0, Lorg/eclipse/jetty/server/handler/ConnectHandler;->_selectorManager:Lorg/eclipse/jetty/io/nio/SelectorManager;

    aput-object v5, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/ConnectHandler;->getHandlers()[Lorg/eclipse/jetty/server/Handler;

    move-result-object v1

    invoke-static {v1}, Lorg/eclipse/jetty/util/TypeUtil;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/ConnectHandler;->getBeans()Ljava/util/Collection;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-static {p1, p2, v0}, Lorg/eclipse/jetty/server/handler/ConnectHandler;->dump(Ljava/lang/Appendable;Ljava/lang/String;[Ljava/util/Collection;)V

    goto :goto_0

    .line 1019
    :cond_0
    new-array v0, v1, [Ljava/util/Collection;

    new-array v1, v3, [Lorg/eclipse/jetty/io/nio/SelectorManager;

    iget-object v5, p0, Lorg/eclipse/jetty/server/handler/ConnectHandler;->_selectorManager:Lorg/eclipse/jetty/io/nio/SelectorManager;

    aput-object v5, v1, v4

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/ConnectHandler;->getHandlers()[Lorg/eclipse/jetty/server/Handler;

    move-result-object v1

    invoke-static {v1}, Lorg/eclipse/jetty/util/TypeUtil;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/ConnectHandler;->getBeans()Ljava/util/Collection;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-static {p1, p2, v0}, Lorg/eclipse/jetty/server/handler/ConnectHandler;->dump(Ljava/lang/Appendable;Ljava/lang/String;[Ljava/util/Collection;)V

    :goto_0
    return-void
.end method

.method public getConnectTimeout()I
    .locals 1

    .line 102
    iget v0, p0, Lorg/eclipse/jetty/server/handler/ConnectHandler;->_connectTimeout:I

    return v0
.end method

.method public getThreadPool()Lorg/eclipse/jetty/util/thread/ThreadPool;
    .locals 1

    .line 147
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ConnectHandler;->_threadPool:Lorg/eclipse/jetty/util/thread/ThreadPool;

    return-object v0
.end method

.method public getWriteTimeout()I
    .locals 1

    .line 118
    iget v0, p0, Lorg/eclipse/jetty/server/handler/ConnectHandler;->_writeTimeout:I

    return v0
.end method

.method public handle(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/ServletException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "CONNECT"

    .line 192
    invoke-interface {p3}, Ljavax/servlet/http/HttpServletRequest;->getMethod()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 194
    sget-object p1, Lorg/eclipse/jetty/server/handler/ConnectHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v0, "CONNECT request for {}"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {p3}, Ljavax/servlet/http/HttpServletRequest;->getRequestURI()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-interface {p1, v0, v1}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 197
    :try_start_0
    invoke-interface {p3}, Ljavax/servlet/http/HttpServletRequest;->getRequestURI()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2, p3, p4, p1}, Lorg/eclipse/jetty/server/handler/ConnectHandler;->handleConnect(Lorg/eclipse/jetty/server/Request;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 201
    sget-object p3, Lorg/eclipse/jetty/server/handler/ConnectHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ConnectHandler "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lorg/eclipse/jetty/server/Request;->getUri()Lorg/eclipse/jetty/http/HttpURI;

    move-result-object p2

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " "

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array p4, v3, [Ljava/lang/Object;

    invoke-interface {p3, p2, p4}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 202
    sget-object p2, Lorg/eclipse/jetty/server/handler/ConnectHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {p2, p1}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 207
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lorg/eclipse/jetty/server/handler/HandlerWrapper;->handle(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V

    :goto_0
    return-void
.end method

.method protected handleAuthentication(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;Ljava/lang/String;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/ServletException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p1, 0x1

    return p1
.end method

.method protected handleConnect(Lorg/eclipse/jetty/server/Request;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/ServletException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 225
    invoke-virtual {p0, p2, p3, p4}, Lorg/eclipse/jetty/server/handler/ConnectHandler;->handleAuthentication(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x50

    const/16 v1, 0x3a

    .line 231
    invoke-virtual {p4, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lez v1, :cond_1

    .line 234
    invoke-virtual {p4, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    add-int/2addr v1, v2

    .line 235
    invoke-virtual {p4, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p4

    move-object v5, v0

    move v0, p4

    move-object p4, v5

    .line 238
    :cond_1
    invoke-virtual {p0, p4}, Lorg/eclipse/jetty/server/handler/ConnectHandler;->validateDestination(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 240
    sget-object p2, Lorg/eclipse/jetty/server/handler/ConnectHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ProxyHandler: Forbidden destination "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    new-array v0, v3, [Ljava/lang/Object;

    invoke-interface {p2, p4, v0}, Lorg/eclipse/jetty/util/log/Logger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 p2, 0x193

    .line 241
    invoke-interface {p3, p2}, Ljavax/servlet/http/HttpServletResponse;->setStatus(I)V

    .line 242
    invoke-virtual {p1, v2}, Lorg/eclipse/jetty/server/Request;->setHandled(Z)V

    return-void

    :cond_2
    const/16 v1, 0x1f4

    .line 250
    :try_start_0
    invoke-direct {p0, p2, p4, v0}, Lorg/eclipse/jetty/server/handler/ConnectHandler;->connectToServer(Ljavax/servlet/http/HttpServletRequest;Ljava/lang/String;I)Ljava/nio/channels/SocketChannel;

    move-result-object p4
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 279
    invoke-static {}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getCurrentConnection()Lorg/eclipse/jetty/server/AbstractHttpConnection;

    move-result-object v0

    .line 280
    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getParser()Lorg/eclipse/jetty/http/Parser;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jetty/http/HttpParser;

    invoke-virtual {v1}, Lorg/eclipse/jetty/http/HttpParser;->getHeaderBuffer()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v1

    .line 281
    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getParser()Lorg/eclipse/jetty/http/Parser;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/http/HttpParser;

    invoke-virtual {v0}, Lorg/eclipse/jetty/http/HttpParser;->getBodyBuffer()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v0

    if-nez v1, :cond_3

    const/4 v4, 0x0

    goto :goto_0

    .line 282
    :cond_3
    invoke-interface {v1}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v4

    :goto_0
    if-nez v0, :cond_4

    goto :goto_1

    .line 283
    :cond_4
    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v3

    :goto_1
    add-int/2addr v4, v3

    const/4 v3, 0x0

    if-lez v4, :cond_6

    .line 287
    new-instance v3, Lorg/eclipse/jetty/io/nio/IndirectNIOBuffer;

    invoke-direct {v3, v4}, Lorg/eclipse/jetty/io/nio/IndirectNIOBuffer;-><init>(I)V

    if-eqz v1, :cond_5

    .line 290
    invoke-virtual {v3, v1}, Lorg/eclipse/jetty/io/nio/IndirectNIOBuffer;->put(Lorg/eclipse/jetty/io/Buffer;)I

    .line 291
    invoke-interface {v1}, Lorg/eclipse/jetty/io/Buffer;->clear()V

    :cond_5
    if-eqz v0, :cond_6

    .line 295
    invoke-virtual {v3, v0}, Lorg/eclipse/jetty/io/nio/IndirectNIOBuffer;->put(Lorg/eclipse/jetty/io/Buffer;)I

    .line 296
    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->clear()V

    .line 300
    :cond_6
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 301
    invoke-virtual {p0, p2, v0}, Lorg/eclipse/jetty/server/handler/ConnectHandler;->prepareContext(Ljavax/servlet/http/HttpServletRequest;Ljava/util/concurrent/ConcurrentMap;)V

    .line 303
    invoke-direct {p0, v0, p4, v3}, Lorg/eclipse/jetty/server/handler/ConnectHandler;->prepareConnections(Ljava/util/concurrent/ConcurrentMap;Ljava/nio/channels/SocketChannel;Lorg/eclipse/jetty/io/Buffer;)Lorg/eclipse/jetty/server/handler/ConnectHandler$ClientToProxyConnection;

    move-result-object p4

    const/16 v0, 0xc8

    .line 306
    invoke-interface {p3, v0}, Ljavax/servlet/http/HttpServletResponse;->setStatus(I)V

    .line 309
    invoke-virtual {p1}, Lorg/eclipse/jetty/server/Request;->getConnection()Lorg/eclipse/jetty/server/AbstractHttpConnection;

    move-result-object p1

    invoke-virtual {p1}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getGenerator()Lorg/eclipse/jetty/http/Generator;

    move-result-object p1

    invoke-interface {p1, v2}, Lorg/eclipse/jetty/http/Generator;->setPersistent(Z)V

    .line 312
    invoke-interface {p3}, Ljavax/servlet/http/HttpServletResponse;->getOutputStream()Ljavax/servlet/ServletOutputStream;

    move-result-object p1

    invoke-virtual {p1}, Ljavax/servlet/ServletOutputStream;->close()V

    .line 314
    invoke-direct {p0, p2, p3, p4}, Lorg/eclipse/jetty/server/handler/ConnectHandler;->upgradeConnection(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;Lorg/eclipse/jetty/io/Connection;)V

    return-void

    :catch_0
    move-exception p2

    .line 268
    sget-object p4, Lorg/eclipse/jetty/server/handler/ConnectHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ConnectHandler: IOException"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array v0, v3, [Ljava/lang/Object;

    invoke-interface {p4, p2, v0}, Lorg/eclipse/jetty/util/log/Logger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 269
    invoke-interface {p3, v1}, Ljavax/servlet/http/HttpServletResponse;->setStatus(I)V

    .line 270
    invoke-virtual {p1, v2}, Lorg/eclipse/jetty/server/Request;->setHandled(Z)V

    return-void

    :catch_1
    move-exception p2

    .line 261
    sget-object p4, Lorg/eclipse/jetty/server/handler/ConnectHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ConnectHandler: SocketTimeoutException"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/net/SocketTimeoutException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array v0, v3, [Ljava/lang/Object;

    invoke-interface {p4, p2, v0}, Lorg/eclipse/jetty/util/log/Logger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 p2, 0x1f8

    .line 262
    invoke-interface {p3, p2}, Ljavax/servlet/http/HttpServletResponse;->setStatus(I)V

    .line 263
    invoke-virtual {p1, v2}, Lorg/eclipse/jetty/server/Request;->setHandled(Z)V

    return-void

    :catch_2
    move-exception p2

    .line 254
    sget-object p4, Lorg/eclipse/jetty/server/handler/ConnectHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ConnectHandler: SocketException "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/net/SocketException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array v0, v3, [Ljava/lang/Object;

    invoke-interface {p4, p2, v0}, Lorg/eclipse/jetty/util/log/Logger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 255
    invoke-interface {p3, v1}, Ljavax/servlet/http/HttpServletResponse;->setStatus(I)V

    .line 256
    invoke-virtual {p1, v2}, Lorg/eclipse/jetty/server/Request;->setHandled(Z)V

    return-void
.end method

.method protected newClientToProxyConnection(Ljava/util/concurrent/ConcurrentMap;Ljava/nio/channels/SocketChannel;Lorg/eclipse/jetty/io/EndPoint;J)Lorg/eclipse/jetty/server/handler/ConnectHandler$ClientToProxyConnection;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/nio/channels/SocketChannel;",
            "Lorg/eclipse/jetty/io/EndPoint;",
            "J)",
            "Lorg/eclipse/jetty/server/handler/ConnectHandler$ClientToProxyConnection;"
        }
    .end annotation

    .line 345
    new-instance v7, Lorg/eclipse/jetty/server/handler/ConnectHandler$ClientToProxyConnection;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-wide v5, p4

    invoke-direct/range {v0 .. v6}, Lorg/eclipse/jetty/server/handler/ConnectHandler$ClientToProxyConnection;-><init>(Lorg/eclipse/jetty/server/handler/ConnectHandler;Ljava/util/concurrent/ConcurrentMap;Ljava/nio/channels/SocketChannel;Lorg/eclipse/jetty/io/EndPoint;J)V

    return-object v7
.end method

.method protected newProxyToServerConnection(Ljava/util/concurrent/ConcurrentMap;Lorg/eclipse/jetty/io/Buffer;)Lorg/eclipse/jetty/server/handler/ConnectHandler$ProxyToServerConnection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lorg/eclipse/jetty/io/Buffer;",
            ")",
            "Lorg/eclipse/jetty/server/handler/ConnectHandler$ProxyToServerConnection;"
        }
    .end annotation

    .line 350
    new-instance v0, Lorg/eclipse/jetty/server/handler/ConnectHandler$ProxyToServerConnection;

    invoke-direct {v0, p0, p1, p2}, Lorg/eclipse/jetty/server/handler/ConnectHandler$ProxyToServerConnection;-><init>(Lorg/eclipse/jetty/server/handler/ConnectHandler;Ljava/util/concurrent/ConcurrentMap;Lorg/eclipse/jetty/io/Buffer;)V

    return-object v0
.end method

.method protected prepareContext(Ljavax/servlet/http/HttpServletRequest;Ljava/util/concurrent/ConcurrentMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/servlet/http/HttpServletRequest;",
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method protected read(Lorg/eclipse/jetty/io/EndPoint;Lorg/eclipse/jetty/io/Buffer;Ljava/util/concurrent/ConcurrentMap;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/eclipse/jetty/io/EndPoint;",
            "Lorg/eclipse/jetty/io/Buffer;",
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 434
    invoke-interface {p1, p2}, Lorg/eclipse/jetty/io/EndPoint;->fill(Lorg/eclipse/jetty/io/Buffer;)I

    move-result p1

    return p1
.end method

.method protected set([Ljava/lang/String;Lorg/eclipse/jetty/util/HostMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Lorg/eclipse/jetty/util/HostMap<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 953
    invoke-virtual {p2}, Lorg/eclipse/jetty/util/HostMap;->clear()V

    if-eqz p1, :cond_0

    .line 955
    array-length v0, p1

    if-lez v0, :cond_0

    .line 957
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 959
    invoke-direct {p0, v2, p2}, Lorg/eclipse/jetty/server/handler/ConnectHandler;->add(Ljava/lang/String;Lorg/eclipse/jetty/util/HostMap;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setBlack([Ljava/lang/String;)V
    .locals 1

    .line 941
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ConnectHandler;->_black:Lorg/eclipse/jetty/util/HostMap;

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jetty/server/handler/ConnectHandler;->set([Ljava/lang/String;Lorg/eclipse/jetty/util/HostMap;)V

    return-void
.end method

.method public setConnectTimeout(I)V
    .locals 0

    .line 110
    iput p1, p0, Lorg/eclipse/jetty/server/handler/ConnectHandler;->_connectTimeout:I

    return-void
.end method

.method public setServer(Lorg/eclipse/jetty/server/Server;)V
    .locals 7

    .line 132
    invoke-super {p0, p1}, Lorg/eclipse/jetty/server/handler/HandlerWrapper;->setServer(Lorg/eclipse/jetty/server/Server;)V

    .line 134
    invoke-virtual {p1}, Lorg/eclipse/jetty/server/Server;->getContainer()Lorg/eclipse/jetty/util/component/Container;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jetty/server/handler/ConnectHandler;->_selectorManager:Lorg/eclipse/jetty/io/nio/SelectorManager;

    const-string v2, "selectManager"

    const/4 v3, 0x0

    invoke-virtual {v0, p0, v3, v1, v2}, Lorg/eclipse/jetty/util/component/Container;->update(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 136
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/handler/ConnectHandler;->_privateThreadPool:Z

    if-eqz v0, :cond_0

    .line 137
    invoke-virtual {p1}, Lorg/eclipse/jetty/server/Server;->getContainer()Lorg/eclipse/jetty/util/component/Container;

    move-result-object v1

    const/4 v3, 0x0

    iget-boolean p1, p0, Lorg/eclipse/jetty/server/handler/ConnectHandler;->_privateThreadPool:Z

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const-string v5, "threadpool"

    const/4 v6, 0x1

    move-object v2, p0

    invoke-virtual/range {v1 .. v6}, Lorg/eclipse/jetty/util/component/Container;->update(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Z)V

    goto :goto_0

    .line 139
    :cond_0
    invoke-virtual {p1}, Lorg/eclipse/jetty/server/Server;->getThreadPool()Lorg/eclipse/jetty/util/thread/ThreadPool;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jetty/server/handler/ConnectHandler;->_threadPool:Lorg/eclipse/jetty/util/thread/ThreadPool;

    :goto_0
    return-void
.end method

.method public setThreadPool(Lorg/eclipse/jetty/util/thread/ThreadPool;)V
    .locals 7

    .line 155
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/ConnectHandler;->getServer()Lorg/eclipse/jetty/server/Server;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 156
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/ConnectHandler;->getServer()Lorg/eclipse/jetty/server/Server;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/Server;->getContainer()Lorg/eclipse/jetty/util/component/Container;

    move-result-object v1

    iget-boolean v0, p0, Lorg/eclipse/jetty/server/handler/ConnectHandler;->_privateThreadPool:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ConnectHandler;->_threadPool:Lorg/eclipse/jetty/util/thread/ThreadPool;

    :goto_0
    move-object v3, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    const-string v5, "threadpool"

    const/4 v6, 0x1

    move-object v2, p0

    move-object v4, p1

    invoke-virtual/range {v1 .. v6}, Lorg/eclipse/jetty/util/component/Container;->update(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Z)V

    :cond_1
    if-eqz p1, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    .line 157
    :goto_2
    iput-boolean v0, p0, Lorg/eclipse/jetty/server/handler/ConnectHandler;->_privateThreadPool:Z

    .line 158
    iput-object p1, p0, Lorg/eclipse/jetty/server/handler/ConnectHandler;->_threadPool:Lorg/eclipse/jetty/util/thread/ThreadPool;

    return-void
.end method

.method public setWhite([Ljava/lang/String;)V
    .locals 1

    .line 931
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ConnectHandler;->_white:Lorg/eclipse/jetty/util/HostMap;

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jetty/server/handler/ConnectHandler;->set([Ljava/lang/String;Lorg/eclipse/jetty/util/HostMap;)V

    return-void
.end method

.method public setWriteTimeout(I)V
    .locals 0

    .line 126
    iput p1, p0, Lorg/eclipse/jetty/server/handler/ConnectHandler;->_writeTimeout:I

    return-void
.end method

.method public validateDestination(Ljava/lang/String;)Z
    .locals 2

    .line 991
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ConnectHandler;->_white:Lorg/eclipse/jetty/util/HostMap;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/HostMap;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    .line 993
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ConnectHandler;->_white:Lorg/eclipse/jetty/util/HostMap;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/util/HostMap;->getLazyMatches(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    return v1

    .line 1000
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ConnectHandler;->_black:Lorg/eclipse/jetty/util/HostMap;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/HostMap;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 1002
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ConnectHandler;->_black:Lorg/eclipse/jetty/util/HostMap;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/util/HostMap;->getLazyMatches(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    return v1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method protected write(Lorg/eclipse/jetty/io/EndPoint;Lorg/eclipse/jetty/io/Buffer;Ljava/util/concurrent/ConcurrentMap;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/eclipse/jetty/io/EndPoint;",
            "Lorg/eclipse/jetty/io/Buffer;",
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p3, 0x0

    if-nez p2, :cond_0

    return p3

    .line 451
    :cond_0
    invoke-interface {p2}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v0

    .line 452
    sget-object v1, Lorg/eclipse/jetty/server/handler/ConnectHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v1}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 453
    :goto_0
    invoke-interface {p1, p2}, Lorg/eclipse/jetty/io/EndPoint;->flush(Lorg/eclipse/jetty/io/Buffer;)I

    move-result v2

    if-eqz v1, :cond_2

    .line 455
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 458
    :cond_2
    :goto_1
    invoke-interface {p2}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v2

    if-lez v2, :cond_4

    invoke-interface {p1}, Lorg/eclipse/jetty/io/EndPoint;->isOutputShutdown()Z

    move-result v2

    if-nez v2, :cond_4

    .line 460
    invoke-interface {p1}, Lorg/eclipse/jetty/io/EndPoint;->isBlocking()Z

    move-result v2

    if-nez v2, :cond_3

    .line 462
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/ConnectHandler;->getWriteTimeout()I

    move-result v2

    int-to-long v2, v2

    invoke-interface {p1, v2, v3}, Lorg/eclipse/jetty/io/EndPoint;->blockWritable(J)Z

    move-result v2

    if-nez v2, :cond_3

    .line 464
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Write timeout"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 466
    :cond_3
    invoke-interface {p1, p2}, Lorg/eclipse/jetty/io/EndPoint;->flush(Lorg/eclipse/jetty/io/Buffer;)I

    move-result v2

    if-eqz v1, :cond_2

    const-string v3, "+"

    .line 468
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 471
    :cond_4
    sget-object v2, Lorg/eclipse/jetty/server/handler/ConnectHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v3, "Written {}/{} bytes {}"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, p3

    const/4 p3, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, p3

    const/4 p3, 0x2

    aput-object p1, v4, p3

    invoke-interface {v2, v3, v4}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 472
    invoke-interface {p2}, Lorg/eclipse/jetty/io/Buffer;->compact()V

    return v0
.end method
