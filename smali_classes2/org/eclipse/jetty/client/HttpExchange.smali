.class public Lorg/eclipse/jetty/client/HttpExchange;
.super Ljava/lang/Object;
.source "HttpExchange.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jetty/client/HttpExchange$ContentExchange;,
        Lorg/eclipse/jetty/client/HttpExchange$CachedExchange;,
        Lorg/eclipse/jetty/client/HttpExchange$Listener;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field static final LOG:Lorg/eclipse/jetty/util/log/Logger;

.field public static final STATUS_CANCELLED:I = 0xb

.field public static final STATUS_CANCELLING:I = 0xa

.field public static final STATUS_COMPLETED:I = 0x7

.field public static final STATUS_EXCEPTED:I = 0x9

.field public static final STATUS_EXPIRED:I = 0x8

.field public static final STATUS_PARSING_CONTENT:I = 0x6

.field public static final STATUS_PARSING_HEADERS:I = 0x5

.field public static final STATUS_SENDING_REQUEST:I = 0x3

.field public static final STATUS_START:I = 0x0

.field public static final STATUS_WAITING_FOR_COMMIT:I = 0x2

.field public static final STATUS_WAITING_FOR_CONNECTION:I = 0x1

.field public static final STATUS_WAITING_FOR_RESPONSE:I = 0x4


# instance fields
.field private _address:Lorg/eclipse/jetty/client/Address;

.field private _configureListeners:Z

.field private volatile _connection:Lorg/eclipse/jetty/client/AbstractHttpConnection;

.field private _lastState:I

.field private _lastStateChange:J

.field private _lastStatePeriod:I

.field private _listener:Lorg/eclipse/jetty/client/HttpEventListener;

.field private _localAddress:Lorg/eclipse/jetty/client/Address;

.field private _method:Ljava/lang/String;

.field _onDone:Z

.field _onRequestCompleteDone:Z

.field _onResponseCompleteDone:Z

.field private _requestContent:Lorg/eclipse/jetty/io/Buffer;

.field private _requestContentSource:Ljava/io/InputStream;

.field private final _requestFields:Lorg/eclipse/jetty/http/HttpFields;

.field private _retryStatus:Z

.field private _scheme:Lorg/eclipse/jetty/io/Buffer;

.field private _sent:J

.field private _status:Ljava/util/concurrent/atomic/AtomicInteger;

.field private _timeout:J

.field private volatile _timeoutTask:Lorg/eclipse/jetty/util/thread/Timeout$Task;

.field private _uri:Ljava/lang/String;

.field private _version:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 80
    const-class v0, Lorg/eclipse/jetty/client/HttpExchange;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/client/HttpExchange;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "GET"

    .line 96
    iput-object v0, p0, Lorg/eclipse/jetty/client/HttpExchange;->_method:Ljava/lang/String;

    .line 97
    sget-object v0, Lorg/eclipse/jetty/http/HttpSchemes;->HTTP_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    iput-object v0, p0, Lorg/eclipse/jetty/client/HttpExchange;->_scheme:Lorg/eclipse/jetty/io/Buffer;

    const/16 v0, 0xb

    .line 99
    iput v0, p0, Lorg/eclipse/jetty/client/HttpExchange;->_version:I

    .line 101
    new-instance v0, Lorg/eclipse/jetty/http/HttpFields;

    invoke-direct {v0}, Lorg/eclipse/jetty/http/HttpFields;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/client/HttpExchange;->_requestFields:Lorg/eclipse/jetty/http/HttpFields;

    .line 105
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lorg/eclipse/jetty/client/HttpExchange;->_status:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 106
    iput-boolean v1, p0, Lorg/eclipse/jetty/client/HttpExchange;->_retryStatus:Z

    const/4 v0, 0x1

    .line 108
    iput-boolean v0, p0, Lorg/eclipse/jetty/client/HttpExchange;->_configureListeners:Z

    .line 109
    new-instance v0, Lorg/eclipse/jetty/client/HttpExchange$Listener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/eclipse/jetty/client/HttpExchange$Listener;-><init>(Lorg/eclipse/jetty/client/HttpExchange;Lorg/eclipse/jetty/client/HttpExchange$1;)V

    iput-object v0, p0, Lorg/eclipse/jetty/client/HttpExchange;->_listener:Lorg/eclipse/jetty/client/HttpEventListener;

    .line 112
    iput-object v1, p0, Lorg/eclipse/jetty/client/HttpExchange;->_localAddress:Lorg/eclipse/jetty/client/Address;

    const-wide/16 v0, -0x1

    .line 115
    iput-wide v0, p0, Lorg/eclipse/jetty/client/HttpExchange;->_timeout:J

    .line 117
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/eclipse/jetty/client/HttpExchange;->_lastStateChange:J

    .line 118
    iput-wide v0, p0, Lorg/eclipse/jetty/client/HttpExchange;->_sent:J

    const/4 v0, -0x1

    .line 119
    iput v0, p0, Lorg/eclipse/jetty/client/HttpExchange;->_lastState:I

    .line 120
    iput v0, p0, Lorg/eclipse/jetty/client/HttpExchange;->_lastStatePeriod:I

    return-void
.end method

.method private abort()V
    .locals 2

    .line 796
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpExchange;->_connection:Lorg/eclipse/jetty/client/AbstractHttpConnection;

    if-eqz v0, :cond_0

    .line 803
    :try_start_0
    invoke-virtual {v0}, Lorg/eclipse/jetty/client/AbstractHttpConnection;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 811
    :goto_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/client/HttpExchange;->disassociate()Lorg/eclipse/jetty/client/AbstractHttpConnection;

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 807
    :try_start_1
    sget-object v1, Lorg/eclipse/jetty/client/HttpExchange;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v1, v0}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 811
    :goto_1
    invoke-virtual {p0}, Lorg/eclipse/jetty/client/HttpExchange;->disassociate()Lorg/eclipse/jetty/client/AbstractHttpConnection;

    throw v0

    :cond_0
    :goto_2
    return-void
.end method

.method static synthetic access$100(Lorg/eclipse/jetty/client/HttpExchange;)V
    .locals 0

    .line 78
    invoke-direct {p0}, Lorg/eclipse/jetty/client/HttpExchange;->done()V

    return-void
.end method

.method private done()V
    .locals 1

    .line 786
    monitor-enter p0

    .line 788
    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/client/HttpExchange;->disassociate()Lorg/eclipse/jetty/client/AbstractHttpConnection;

    const/4 v0, 0x1

    .line 789
    iput-boolean v0, p0, Lorg/eclipse/jetty/client/HttpExchange;->_onDone:Z

    .line 790
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 791
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private setStatusExpired(II)Z
    .locals 1

    .line 383
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpExchange;->_status:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p2, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 384
    invoke-virtual {p0}, Lorg/eclipse/jetty/client/HttpExchange;->getEventListener()Lorg/eclipse/jetty/client/HttpEventListener;

    move-result-object p2

    invoke-interface {p2}, Lorg/eclipse/jetty/client/HttpEventListener;->onExpire()V

    :cond_0
    return p1
.end method

.method public static toState(I)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const-string p0, "UNKNOWN"

    goto :goto_0

    :pswitch_0
    const-string p0, "CANCELLED"

    goto :goto_0

    :pswitch_1
    const-string p0, "CANCELLING"

    goto :goto_0

    :pswitch_2
    const-string p0, "EXCEPTED"

    goto :goto_0

    :pswitch_3
    const-string p0, "EXPIRED"

    goto :goto_0

    :pswitch_4
    const-string p0, "COMPLETED"

    goto :goto_0

    :pswitch_5
    const-string p0, "CONTENT"

    goto :goto_0

    :pswitch_6
    const-string p0, "HEADERS"

    goto :goto_0

    :pswitch_7
    const-string p0, "WAITING"

    goto :goto_0

    :pswitch_8
    const-string p0, "SENDING"

    goto :goto_0

    :pswitch_9
    const-string p0, "CONNECTED"

    goto :goto_0

    :pswitch_a
    const-string p0, "CONNECTING"

    goto :goto_0

    :pswitch_b
    const-string p0, "START"

    :goto_0
    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public addRequestHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 639
    invoke-virtual {p0}, Lorg/eclipse/jetty/client/HttpExchange;->getRequestFields()Lorg/eclipse/jetty/http/HttpFields;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jetty/http/HttpFields;->add(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public addRequestHeader(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)V
    .locals 1

    .line 652
    invoke-virtual {p0}, Lorg/eclipse/jetty/client/HttpExchange;->getRequestFields()Lorg/eclipse/jetty/http/HttpFields;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jetty/http/HttpFields;->add(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)V

    return-void
.end method

.method associate(Lorg/eclipse/jetty/client/AbstractHttpConnection;)V
    .locals 3

    .line 818
    invoke-virtual {p1}, Lorg/eclipse/jetty/client/AbstractHttpConnection;->getEndPoint()Lorg/eclipse/jetty/io/EndPoint;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/jetty/io/EndPoint;->getLocalAddr()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 819
    new-instance v0, Lorg/eclipse/jetty/client/Address;

    invoke-virtual {p1}, Lorg/eclipse/jetty/client/AbstractHttpConnection;->getEndPoint()Lorg/eclipse/jetty/io/EndPoint;

    move-result-object v1

    invoke-interface {v1}, Lorg/eclipse/jetty/io/EndPoint;->getLocalAddr()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/eclipse/jetty/client/AbstractHttpConnection;->getEndPoint()Lorg/eclipse/jetty/io/EndPoint;

    move-result-object v2

    invoke-interface {v2}, Lorg/eclipse/jetty/io/EndPoint;->getLocalPort()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lorg/eclipse/jetty/client/Address;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lorg/eclipse/jetty/client/HttpExchange;->_localAddress:Lorg/eclipse/jetty/client/Address;

    .line 821
    :cond_0
    iput-object p1, p0, Lorg/eclipse/jetty/client/HttpExchange;->_connection:Lorg/eclipse/jetty/client/AbstractHttpConnection;

    .line 822
    invoke-virtual {p0}, Lorg/eclipse/jetty/client/HttpExchange;->getStatus()I

    move-result p1

    const/16 v0, 0xa

    if-ne p1, v0, :cond_1

    .line 823
    invoke-direct {p0}, Lorg/eclipse/jetty/client/HttpExchange;->abort()V

    :cond_1
    return-void
.end method

.method public cancel()V
    .locals 1

    const/16 v0, 0xa

    .line 780
    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/client/HttpExchange;->setStatus(I)Z

    .line 781
    invoke-direct {p0}, Lorg/eclipse/jetty/client/HttpExchange;->abort()V

    return-void
.end method

.method protected cancelTimeout(Lorg/eclipse/jetty/client/HttpClient;)V
    .locals 1

    .line 1084
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpExchange;->_timeoutTask:Lorg/eclipse/jetty/util/thread/Timeout$Task;

    if-eqz v0, :cond_0

    .line 1086
    invoke-virtual {p1, v0}, Lorg/eclipse/jetty/client/HttpClient;->cancel(Lorg/eclipse/jetty/util/thread/Timeout$Task;)V

    :cond_0
    const/4 p1, 0x0

    .line 1087
    iput-object p1, p0, Lorg/eclipse/jetty/client/HttpExchange;->_timeoutTask:Lorg/eclipse/jetty/util/thread/Timeout$Task;

    return-void
.end method

.method public configureListeners()Z
    .locals 1

    .line 1049
    iget-boolean v0, p0, Lorg/eclipse/jetty/client/HttpExchange;->_configureListeners:Z

    return v0
.end method

.method disassociate()Lorg/eclipse/jetty/client/AbstractHttpConnection;
    .locals 3

    .line 833
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpExchange;->_connection:Lorg/eclipse/jetty/client/AbstractHttpConnection;

    const/4 v1, 0x0

    .line 834
    iput-object v1, p0, Lorg/eclipse/jetty/client/HttpExchange;->_connection:Lorg/eclipse/jetty/client/AbstractHttpConnection;

    .line 835
    invoke-virtual {p0}, Lorg/eclipse/jetty/client/HttpExchange;->getStatus()I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_0

    const/16 v1, 0xb

    .line 836
    invoke-virtual {p0, v1}, Lorg/eclipse/jetty/client/HttpExchange;->setStatus(I)Z

    :cond_0
    return-object v0
.end method

.method protected expire(Lorg/eclipse/jetty/client/HttpDestination;)V
    .locals 3

    .line 128
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpExchange;->_connection:Lorg/eclipse/jetty/client/AbstractHttpConnection;

    .line 129
    invoke-virtual {p0}, Lorg/eclipse/jetty/client/HttpExchange;->getStatus()I

    move-result v1

    const/4 v2, 0x7

    if-ge v1, v2, :cond_0

    const/16 v1, 0x8

    .line 130
    invoke-virtual {p0, v1}, Lorg/eclipse/jetty/client/HttpExchange;->setStatus(I)Z

    .line 131
    :cond_0
    invoke-virtual {p1, p0}, Lorg/eclipse/jetty/client/HttpDestination;->exchangeExpired(Lorg/eclipse/jetty/client/HttpExchange;)V

    if-eqz v0, :cond_1

    .line 133
    invoke-virtual {v0, p0}, Lorg/eclipse/jetty/client/AbstractHttpConnection;->exchangeExpired(Lorg/eclipse/jetty/client/HttpExchange;)V

    :cond_1
    return-void
.end method

.method public getAddress()Lorg/eclipse/jetty/client/Address;
    .locals 1

    .line 448
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpExchange;->_address:Lorg/eclipse/jetty/client/Address;

    return-object v0
.end method

.method public getEventListener()Lorg/eclipse/jetty/client/HttpEventListener;
    .locals 1

    .line 407
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpExchange;->_listener:Lorg/eclipse/jetty/client/HttpEventListener;

    return-object v0
.end method

.method public getLocalAddress()Lorg/eclipse/jetty/client/Address;
    .locals 1

    .line 460
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpExchange;->_localAddress:Lorg/eclipse/jetty/client/Address;

    return-object v0
.end method

.method public getMethod()Ljava/lang/String;
    .locals 1

    .line 542
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpExchange;->_method:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestContent()Lorg/eclipse/jetty/io/Buffer;
    .locals 1

    .line 752
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpExchange;->_requestContent:Lorg/eclipse/jetty/io/Buffer;

    return-object v0
.end method

.method public getRequestContentChunk(Lorg/eclipse/jetty/io/Buffer;)Lorg/eclipse/jetty/io/Buffer;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 728
    monitor-enter p0

    .line 730
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpExchange;->_requestContentSource:Ljava/io/InputStream;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    .line 733
    new-instance p1, Lorg/eclipse/jetty/io/ByteArrayBuffer;

    const/16 v0, 0x2000

    invoke-direct {p1, v0}, Lorg/eclipse/jetty/io/ByteArrayBuffer;-><init>(I)V

    .line 735
    :cond_0
    invoke-interface {p1}, Lorg/eclipse/jetty/io/Buffer;->space()I

    move-result v0

    .line 736
    iget-object v1, p0, Lorg/eclipse/jetty/client/HttpExchange;->_requestContentSource:Ljava/io/InputStream;

    invoke-interface {p1}, Lorg/eclipse/jetty/io/Buffer;->array()[B

    move-result-object v2

    invoke-interface {p1}, Lorg/eclipse/jetty/io/Buffer;->putIndex()I

    move-result v3

    invoke-virtual {v1, v2, v3, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    if-ltz v0, :cond_1

    .line 739
    invoke-interface {p1}, Lorg/eclipse/jetty/io/Buffer;->putIndex()I

    move-result v1

    add-int/2addr v1, v0

    invoke-interface {p1, v1}, Lorg/eclipse/jetty/io/Buffer;->setPutIndex(I)V

    .line 740
    monitor-exit p0

    return-object p1

    :cond_1
    const/4 p1, 0x0

    .line 743
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    .line 744
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getRequestContentSource()Ljava/io/InputStream;
    .locals 1

    .line 723
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpExchange;->_requestContentSource:Ljava/io/InputStream;

    return-object v0
.end method

.method public getRequestFields()Lorg/eclipse/jetty/http/HttpFields;
    .locals 1

    .line 695
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpExchange;->_requestFields:Lorg/eclipse/jetty/http/HttpFields;

    return-object v0
.end method

.method public getRequestURI()Ljava/lang/String;
    .locals 1

    .line 561
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpExchange;->_uri:Ljava/lang/String;

    return-object v0
.end method

.method public getRetryStatus()Z
    .locals 1

    .line 760
    iget-boolean v0, p0, Lorg/eclipse/jetty/client/HttpExchange;->_retryStatus:Z

    return v0
.end method

.method public getScheme()Lorg/eclipse/jetty/io/Buffer;
    .locals 1

    .line 494
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpExchange;->_scheme:Lorg/eclipse/jetty/io/Buffer;

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .line 138
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpExchange;->_status:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public getTimeout()J
    .locals 2

    .line 422
    iget-wide v0, p0, Lorg/eclipse/jetty/client/HttpExchange;->_timeout:J

    return-wide v0
.end method

.method public getURI()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 553
    invoke-virtual {p0}, Lorg/eclipse/jetty/client/HttpExchange;->getRequestURI()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .line 525
    iget v0, p0, Lorg/eclipse/jetty/client/HttpExchange;->_version:I

    return v0
.end method

.method isAssociated()Z
    .locals 1

    .line 828
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpExchange;->_connection:Lorg/eclipse/jetty/client/AbstractHttpConnection;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isDone()Z
    .locals 1

    .line 390
    monitor-enter p0

    .line 392
    :try_start_0
    iget-boolean v0, p0, Lorg/eclipse/jetty/client/HttpExchange;->_onDone:Z

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    .line 393
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isDone(I)Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 402
    invoke-virtual {p0}, Lorg/eclipse/jetty/client/HttpExchange;->isDone()Z

    move-result p1

    return p1
.end method

.method protected onConnectionFailed(Ljava/lang/Throwable;)V
    .locals 3

    .line 999
    sget-object v0, Lorg/eclipse/jetty/client/HttpExchange;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CONNECTION FAILED "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method protected onException(Ljava/lang/Throwable;)V
    .locals 3

    .line 1010
    sget-object v0, Lorg/eclipse/jetty/client/HttpExchange;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EXCEPTION "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method protected onExpire()V
    .locals 3

    .line 1018
    sget-object v0, Lorg/eclipse/jetty/client/HttpExchange;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EXPIRED "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method protected onRequestCommitted()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method protected onRequestComplete()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method protected onResponseComplete()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method protected onResponseContent(Lorg/eclipse/jetty/io/Buffer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method protected onResponseHeader(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method protected onResponseHeaderComplete()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method protected onResponseStatus(Lorg/eclipse/jetty/io/Buffer;ILorg/eclipse/jetty/io/Buffer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method protected onRetry()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1029
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpExchange;->_requestContentSource:Ljava/io/InputStream;

    if-eqz v0, :cond_1

    .line 1031
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpExchange;->_requestContentSource:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 1033
    iput-object v0, p0, Lorg/eclipse/jetty/client/HttpExchange;->_requestContent:Lorg/eclipse/jetty/io/Buffer;

    .line 1034
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpExchange;->_requestContentSource:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V

    goto :goto_0

    .line 1038
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Unsupported retry attempt"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method protected onSwitchProtocol(Lorg/eclipse/jetty/io/EndPoint;)Lorg/eclipse/jetty/io/Connection;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public reset()V
    .locals 1

    .line 179
    monitor-enter p0

    const/4 v0, 0x0

    .line 181
    :try_start_0
    iput-object v0, p0, Lorg/eclipse/jetty/client/HttpExchange;->_timeoutTask:Lorg/eclipse/jetty/util/thread/Timeout$Task;

    const/4 v0, 0x0

    .line 182
    iput-boolean v0, p0, Lorg/eclipse/jetty/client/HttpExchange;->_onRequestCompleteDone:Z

    .line 183
    iput-boolean v0, p0, Lorg/eclipse/jetty/client/HttpExchange;->_onResponseCompleteDone:Z

    .line 184
    iput-boolean v0, p0, Lorg/eclipse/jetty/client/HttpExchange;->_onDone:Z

    .line 185
    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/client/HttpExchange;->setStatus(I)Z

    .line 186
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected scheduleTimeout(Lorg/eclipse/jetty/client/HttpDestination;)V
    .locals 5

    .line 1065
    new-instance v0, Lorg/eclipse/jetty/client/HttpExchange$1;

    invoke-direct {v0, p0, p1}, Lorg/eclipse/jetty/client/HttpExchange$1;-><init>(Lorg/eclipse/jetty/client/HttpExchange;Lorg/eclipse/jetty/client/HttpDestination;)V

    iput-object v0, p0, Lorg/eclipse/jetty/client/HttpExchange;->_timeoutTask:Lorg/eclipse/jetty/util/thread/Timeout$Task;

    .line 1074
    invoke-virtual {p1}, Lorg/eclipse/jetty/client/HttpDestination;->getHttpClient()Lorg/eclipse/jetty/client/HttpClient;

    move-result-object p1

    .line 1075
    invoke-virtual {p0}, Lorg/eclipse/jetty/client/HttpExchange;->getTimeout()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 1077
    iget-object v2, p0, Lorg/eclipse/jetty/client/HttpExchange;->_timeoutTask:Lorg/eclipse/jetty/util/thread/Timeout$Task;

    invoke-virtual {p1, v2, v0, v1}, Lorg/eclipse/jetty/client/HttpClient;->schedule(Lorg/eclipse/jetty/util/thread/Timeout$Task;J)V

    goto :goto_0

    .line 1079
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpExchange;->_timeoutTask:Lorg/eclipse/jetty/util/thread/Timeout$Task;

    invoke-virtual {p1, v0}, Lorg/eclipse/jetty/client/HttpClient;->schedule(Lorg/eclipse/jetty/util/thread/Timeout$Task;)V

    :goto_0
    return-void
.end method

.method public setAddress(Lorg/eclipse/jetty/client/Address;)V
    .locals 0

    .line 440
    iput-object p1, p0, Lorg/eclipse/jetty/client/HttpExchange;->_address:Lorg/eclipse/jetty/client/Address;

    return-void
.end method

.method public setConfigureListeners(Z)V
    .locals 0

    .line 1058
    iput-boolean p1, p0, Lorg/eclipse/jetty/client/HttpExchange;->_configureListeners:Z

    return-void
.end method

.method public setEventListener(Lorg/eclipse/jetty/client/HttpEventListener;)V
    .locals 0

    .line 412
    iput-object p1, p0, Lorg/eclipse/jetty/client/HttpExchange;->_listener:Lorg/eclipse/jetty/client/HttpEventListener;

    return-void
.end method

.method public setMethod(Ljava/lang/String;)V
    .locals 0

    .line 534
    iput-object p1, p0, Lorg/eclipse/jetty/client/HttpExchange;->_method:Ljava/lang/String;

    return-void
.end method

.method public setRequestContent(Lorg/eclipse/jetty/io/Buffer;)V
    .locals 0

    .line 704
    iput-object p1, p0, Lorg/eclipse/jetty/client/HttpExchange;->_requestContent:Lorg/eclipse/jetty/io/Buffer;

    return-void
.end method

.method public setRequestContentSource(Ljava/io/InputStream;)V
    .locals 1

    .line 713
    iput-object p1, p0, Lorg/eclipse/jetty/client/HttpExchange;->_requestContentSource:Ljava/io/InputStream;

    .line 714
    iget-object p1, p0, Lorg/eclipse/jetty/client/HttpExchange;->_requestContentSource:Ljava/io/InputStream;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/eclipse/jetty/client/HttpExchange;->_requestContentSource:Ljava/io/InputStream;

    invoke-virtual {p1}, Ljava/io/InputStream;->markSupported()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 715
    iget-object p1, p0, Lorg/eclipse/jetty/client/HttpExchange;->_requestContentSource:Ljava/io/InputStream;

    const v0, 0x7fffffff

    invoke-virtual {p1, v0}, Ljava/io/InputStream;->mark(I)V

    :cond_0
    return-void
.end method

.method public setRequestContentType(Ljava/lang/String;)V
    .locals 2

    .line 687
    invoke-virtual {p0}, Lorg/eclipse/jetty/client/HttpExchange;->getRequestFields()Lorg/eclipse/jetty/http/HttpFields;

    move-result-object v0

    sget-object v1, Lorg/eclipse/jetty/http/HttpHeaders;->CONTENT_TYPE_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    invoke-virtual {v0, v1, p1}, Lorg/eclipse/jetty/http/HttpFields;->put(Lorg/eclipse/jetty/io/Buffer;Ljava/lang/String;)V

    return-void
.end method

.method public setRequestHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 665
    invoke-virtual {p0}, Lorg/eclipse/jetty/client/HttpExchange;->getRequestFields()Lorg/eclipse/jetty/http/HttpFields;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jetty/http/HttpFields;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setRequestHeader(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)V
    .locals 1

    .line 678
    invoke-virtual {p0}, Lorg/eclipse/jetty/client/HttpExchange;->getRequestFields()Lorg/eclipse/jetty/http/HttpFields;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jetty/http/HttpFields;->put(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)V

    return-void
.end method

.method public setRequestURI(Ljava/lang/String;)V
    .locals 0

    .line 597
    iput-object p1, p0, Lorg/eclipse/jetty/client/HttpExchange;->_uri:Ljava/lang/String;

    return-void
.end method

.method public setRetryStatus(Z)V
    .locals 0

    .line 769
    iput-boolean p1, p0, Lorg/eclipse/jetty/client/HttpExchange;->_retryStatus:Z

    return-void
.end method

.method public setScheme(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_2

    const-string v0, "http"

    .line 480
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 481
    sget-object p1, Lorg/eclipse/jetty/http/HttpSchemes;->HTTP_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/client/HttpExchange;->setScheme(Lorg/eclipse/jetty/io/Buffer;)V

    goto :goto_0

    :cond_0
    const-string v0, "https"

    .line 482
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 483
    sget-object p1, Lorg/eclipse/jetty/http/HttpSchemes;->HTTPS_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/client/HttpExchange;->setScheme(Lorg/eclipse/jetty/io/Buffer;)V

    goto :goto_0

    .line 485
    :cond_1
    new-instance v0, Lorg/eclipse/jetty/io/ByteArrayBuffer;

    invoke-direct {v0, p1}, Lorg/eclipse/jetty/io/ByteArrayBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/client/HttpExchange;->setScheme(Lorg/eclipse/jetty/io/Buffer;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setScheme(Lorg/eclipse/jetty/io/Buffer;)V
    .locals 0

    .line 469
    iput-object p1, p0, Lorg/eclipse/jetty/client/HttpExchange;->_scheme:Lorg/eclipse/jetty/io/Buffer;

    return-void
.end method

.method setStatus(I)Z
    .locals 9

    const/4 v0, 0x0

    .line 199
    :try_start_0
    iget-object v1, p0, Lorg/eclipse/jetty/client/HttpExchange;->_status:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, p1, :cond_0

    .line 203
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 204
    iget-wide v5, p0, Lorg/eclipse/jetty/client/HttpExchange;->_lastStateChange:J

    const/4 v7, 0x0

    sub-long v7, v3, v5

    long-to-int v5, v7

    iput v5, p0, Lorg/eclipse/jetty/client/HttpExchange;->_lastStatePeriod:I

    .line 205
    iput v1, p0, Lorg/eclipse/jetty/client/HttpExchange;->_lastState:I

    .line 206
    iput-wide v3, p0, Lorg/eclipse/jetty/client/HttpExchange;->_lastStateChange:J

    if-ne p1, v2, :cond_0

    .line 208
    iget-wide v3, p0, Lorg/eclipse/jetty/client/HttpExchange;->_lastStateChange:J

    iput-wide v3, p0, Lorg/eclipse/jetty/client/HttpExchange;->_sent:J

    :cond_0
    const/4 v3, 0x2

    const/4 v4, 0x4

    const/4 v5, 0x1

    packed-switch v1, :pswitch_data_0

    .line 366
    new-instance v2, Ljava/lang/AssertionError;

    goto/16 :goto_4

    :pswitch_0
    const/16 v2, 0x9

    if-eq p1, v2, :cond_1

    const/16 v2, 0xb

    if-eq p1, v2, :cond_1

    goto :goto_0

    .line 336
    :cond_1
    iget-object v2, p0, Lorg/eclipse/jetty/client/HttpExchange;->_status:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2, v1, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v2, :cond_a

    .line 337
    :try_start_1
    invoke-direct {p0}, Lorg/eclipse/jetty/client/HttpExchange;->done()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    :pswitch_1
    if-eqz p1, :cond_3

    const/4 v2, 0x7

    if-eq p1, v2, :cond_2

    :goto_0
    :pswitch_2
    const/4 v2, 0x0

    const/4 v4, 0x1

    goto/16 :goto_3

    .line 356
    :cond_2
    :try_start_2
    invoke-direct {p0}, Lorg/eclipse/jetty/client/HttpExchange;->done()V

    goto :goto_0

    .line 351
    :cond_3
    iget-object v2, p0, Lorg/eclipse/jetty/client/HttpExchange;->_status:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2, v1, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v2

    goto/16 :goto_2

    :pswitch_3
    if-eqz p1, :cond_4

    if-eq p1, v4, :cond_4

    packed-switch p1, :pswitch_data_1

    :goto_1
    const/4 v2, 0x0

    goto/16 :goto_2

    .line 322
    :cond_4
    :pswitch_4
    iget-object v2, p0, Lorg/eclipse/jetty/client/HttpExchange;->_status:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2, v1, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v2

    goto/16 :goto_2

    :pswitch_5
    packed-switch p1, :pswitch_data_2

    goto :goto_1

    .line 309
    :pswitch_6
    iget-object v2, p0, Lorg/eclipse/jetty/client/HttpExchange;->_status:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2, v1, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v2

    goto/16 :goto_2

    .line 312
    :pswitch_7
    invoke-direct {p0, p1, v1}, Lorg/eclipse/jetty/client/HttpExchange;->setStatusExpired(II)Z

    move-result v2

    goto/16 :goto_2

    .line 304
    :pswitch_8
    iget-object v2, p0, Lorg/eclipse/jetty/client/HttpExchange;->_status:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2, v1, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v2
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    if-eqz v2, :cond_a

    .line 305
    :try_start_3
    invoke-virtual {p0}, Lorg/eclipse/jetty/client/HttpExchange;->getEventListener()Lorg/eclipse/jetty/client/HttpEventListener;

    move-result-object v4

    invoke-interface {v4}, Lorg/eclipse/jetty/client/HttpEventListener;->onResponseComplete()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_2

    :pswitch_9
    const/4 v2, 0x6

    if-eq p1, v2, :cond_5

    packed-switch p1, :pswitch_data_3

    goto :goto_1

    .line 293
    :pswitch_a
    :try_start_4
    iget-object v2, p0, Lorg/eclipse/jetty/client/HttpExchange;->_status:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2, v1, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v2

    goto/16 :goto_2

    .line 296
    :pswitch_b
    invoke-direct {p0, p1, v1}, Lorg/eclipse/jetty/client/HttpExchange;->setStatusExpired(II)Z

    move-result v2

    goto/16 :goto_2

    .line 288
    :cond_5
    iget-object v2, p0, Lorg/eclipse/jetty/client/HttpExchange;->_status:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2, v1, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v2
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    if-eqz v2, :cond_a

    .line 289
    :try_start_5
    invoke-virtual {p0}, Lorg/eclipse/jetty/client/HttpExchange;->getEventListener()Lorg/eclipse/jetty/client/HttpEventListener;

    move-result-object v4

    invoke-interface {v4}, Lorg/eclipse/jetty/client/HttpEventListener;->onResponseHeaderComplete()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_2

    :pswitch_c
    const/4 v2, 0x5

    if-eq p1, v2, :cond_6

    packed-switch p1, :pswitch_data_4

    goto :goto_1

    .line 280
    :pswitch_d
    :try_start_6
    invoke-direct {p0, p1, v1}, Lorg/eclipse/jetty/client/HttpExchange;->setStatusExpired(II)Z

    move-result v2

    goto/16 :goto_2

    .line 277
    :cond_6
    :pswitch_e
    iget-object v2, p0, Lorg/eclipse/jetty/client/HttpExchange;->_status:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2, v1, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v2

    goto :goto_2

    :pswitch_f
    if-eq p1, v4, :cond_7

    packed-switch p1, :pswitch_data_5

    goto :goto_1

    .line 264
    :pswitch_10
    iget-object v2, p0, Lorg/eclipse/jetty/client/HttpExchange;->_status:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2, v1, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v2

    goto :goto_2

    .line 267
    :pswitch_11
    invoke-direct {p0, p1, v1}, Lorg/eclipse/jetty/client/HttpExchange;->setStatusExpired(II)Z

    move-result v2

    goto :goto_2

    .line 259
    :cond_7
    iget-object v2, p0, Lorg/eclipse/jetty/client/HttpExchange;->_status:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2, v1, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v2
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    if-eqz v2, :cond_a

    .line 260
    :try_start_7
    invoke-virtual {p0}, Lorg/eclipse/jetty/client/HttpExchange;->getEventListener()Lorg/eclipse/jetty/client/HttpEventListener;

    move-result-object v4

    invoke-interface {v4}, Lorg/eclipse/jetty/client/HttpEventListener;->onRequestCommitted()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    goto :goto_2

    :pswitch_12
    if-eq p1, v2, :cond_8

    packed-switch p1, :pswitch_data_6

    goto/16 :goto_1

    .line 251
    :pswitch_13
    :try_start_8
    invoke-direct {p0, p1, v1}, Lorg/eclipse/jetty/client/HttpExchange;->setStatusExpired(II)Z

    move-result v2

    goto :goto_2

    .line 248
    :cond_8
    :pswitch_14
    iget-object v2, p0, Lorg/eclipse/jetty/client/HttpExchange;->_status:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2, v1, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v2

    goto :goto_2

    :pswitch_15
    if-eq p1, v3, :cond_9

    packed-switch p1, :pswitch_data_7

    goto/16 :goto_1

    .line 238
    :pswitch_16
    invoke-direct {p0, p1, v1}, Lorg/eclipse/jetty/client/HttpExchange;->setStatusExpired(II)Z

    move-result v2

    goto :goto_2

    .line 235
    :cond_9
    :pswitch_17
    iget-object v2, p0, Lorg/eclipse/jetty/client/HttpExchange;->_status:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2, v1, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v2

    goto :goto_2

    :pswitch_18
    packed-switch p1, :pswitch_data_8

    packed-switch p1, :pswitch_data_9

    goto/16 :goto_1

    .line 225
    :pswitch_19
    invoke-direct {p0, p1, v1}, Lorg/eclipse/jetty/client/HttpExchange;->setStatusExpired(II)Z

    move-result v2

    goto :goto_2

    .line 222
    :pswitch_1a
    iget-object v2, p0, Lorg/eclipse/jetty/client/HttpExchange;->_status:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2, v1, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v2
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    :cond_a
    :goto_2
    const/4 v4, 0x0

    :goto_3
    if-nez v2, :cond_b

    if-nez v4, :cond_b

    .line 370
    :try_start_9
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Lorg/eclipse/jetty/client/HttpExchange;->toState(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " => "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lorg/eclipse/jetty/client/HttpExchange;->toState(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 371
    :cond_b
    sget-object v1, Lorg/eclipse/jetty/client/HttpExchange;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v4, "setStatus {} {}"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v0

    aput-object p0, v3, v5

    invoke-interface {v1, v4, v3}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0

    goto :goto_6

    :catch_0
    move-exception p1

    goto :goto_5

    .line 366
    :goto_4
    :try_start_a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " => "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1

    :catch_1
    move-exception p1

    const/4 v2, 0x0

    .line 375
    :goto_5
    sget-object v0, Lorg/eclipse/jetty/client/HttpExchange;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v0, p1}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/Throwable;)V

    :goto_6
    return v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_18
        :pswitch_15
        :pswitch_12
        :pswitch_f
        :pswitch_c
        :pswitch_9
        :pswitch_5
        :pswitch_3
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x8
        :pswitch_2
        :pswitch_4
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x7
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_6
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x8
        :pswitch_b
        :pswitch_a
        :pswitch_a
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x8
        :pswitch_d
        :pswitch_e
        :pswitch_e
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x8
        :pswitch_11
        :pswitch_10
        :pswitch_10
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x8
        :pswitch_13
        :pswitch_14
        :pswitch_14
    .end packed-switch

    :pswitch_data_7
    .packed-switch 0x8
        :pswitch_16
        :pswitch_17
        :pswitch_17
    .end packed-switch

    :pswitch_data_8
    .packed-switch 0x0
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
    .end packed-switch

    :pswitch_data_9
    .packed-switch 0x8
        :pswitch_19
        :pswitch_1a
        :pswitch_1a
    .end packed-switch
.end method

.method public setTimeout(J)V
    .locals 0

    .line 417
    iput-wide p1, p0, Lorg/eclipse/jetty/client/HttpExchange;->_timeout:J

    return-void
.end method

.method public setURI(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 575
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/client/HttpExchange;->setRequestURI(Ljava/lang/String;)V

    return-void
.end method

.method public setURI(Ljava/net/URI;)V
    .locals 5

    .line 607
    invoke-virtual {p1}, Ljava/net/URI;->isAbsolute()Z

    move-result v0

    if-nez v0, :cond_0

    .line 608
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "!Absolute URI: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 610
    :cond_0
    invoke-virtual {p1}, Ljava/net/URI;->isOpaque()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 611
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Opaque URI: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 613
    :cond_1
    sget-object v0, Lorg/eclipse/jetty/client/HttpExchange;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v0}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 614
    sget-object v0, Lorg/eclipse/jetty/client/HttpExchange;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v1, "URI = {}"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/net/URI;->toASCIIString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 616
    :cond_2
    invoke-virtual {p1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 617
    invoke-virtual {p1}, Ljava/net/URI;->getPort()I

    move-result v1

    if-gtz v1, :cond_4

    const-string v1, "https"

    .line 619
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0x1bb

    goto :goto_0

    :cond_3
    const/16 v1, 0x50

    .line 621
    :cond_4
    :goto_0
    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/client/HttpExchange;->setScheme(Ljava/lang/String;)V

    .line 622
    new-instance v0, Lorg/eclipse/jetty/client/Address;

    invoke-virtual {p1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Lorg/eclipse/jetty/client/Address;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/client/HttpExchange;->setAddress(Lorg/eclipse/jetty/client/Address;)V

    .line 624
    new-instance v0, Lorg/eclipse/jetty/http/HttpURI;

    invoke-direct {v0, p1}, Lorg/eclipse/jetty/http/HttpURI;-><init>(Ljava/net/URI;)V

    .line 625
    invoke-virtual {v0}, Lorg/eclipse/jetty/http/HttpURI;->getCompletePath()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_5

    const-string p1, "/"

    .line 626
    :cond_5
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/client/HttpExchange;->setRequestURI(Ljava/lang/String;)V

    return-void
.end method

.method public setURL(Ljava/lang/String;)V
    .locals 0

    .line 431
    invoke-static {p1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/client/HttpExchange;->setURI(Ljava/net/URI;)V

    return-void
.end method

.method public setVersion(I)V
    .locals 0

    .line 503
    iput p1, p0, Lorg/eclipse/jetty/client/HttpExchange;->_version:I

    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 1

    .line 512
    sget-object v0, Lorg/eclipse/jetty/http/HttpVersions;->CACHE:Lorg/eclipse/jetty/io/BufferCache;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/io/BufferCache;->get(Ljava/lang/String;)Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    move-result-object p1

    if-nez p1, :cond_0

    const/16 p1, 0xa

    .line 514
    iput p1, p0, Lorg/eclipse/jetty/client/HttpExchange;->_version:I

    goto :goto_0

    .line 516
    :cond_0
    invoke-virtual {p1}, Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;->getOrdinal()I

    move-result p1

    iput p1, p0, Lorg/eclipse/jetty/client/HttpExchange;->_version:I

    :goto_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 17

    move-object/from16 v0, p0

    .line 890
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jetty/client/HttpExchange;->getStatus()I

    move-result v1

    invoke-static {v1}, Lorg/eclipse/jetty/client/HttpExchange;->toState(I)Ljava/lang/String;

    move-result-object v1

    .line 891
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 892
    iget-wide v4, v0, Lorg/eclipse/jetty/client/HttpExchange;->_lastStateChange:J

    sub-long v6, v2, v4

    .line 893
    iget v4, v0, Lorg/eclipse/jetty/client/HttpExchange;->_lastState:I

    const/4 v8, 0x6

    const/4 v9, 0x5

    const/4 v10, 0x4

    const/4 v11, 0x2

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x3

    if-ltz v4, :cond_0

    const-string v4, "%s@%x=%s//%s%s#%s(%dms)->%s(%dms)"

    const/16 v15, 0x9

    new-array v15, v15, [Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v15, v13

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v15, v12

    iget-object v5, v0, Lorg/eclipse/jetty/client/HttpExchange;->_method:Ljava/lang/String;

    aput-object v5, v15, v11

    iget-object v5, v0, Lorg/eclipse/jetty/client/HttpExchange;->_address:Lorg/eclipse/jetty/client/Address;

    aput-object v5, v15, v14

    iget-object v5, v0, Lorg/eclipse/jetty/client/HttpExchange;->_uri:Ljava/lang/String;

    aput-object v5, v15, v10

    iget v5, v0, Lorg/eclipse/jetty/client/HttpExchange;->_lastState:I

    invoke-static {v5}, Lorg/eclipse/jetty/client/HttpExchange;->toState(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v15, v9

    iget v5, v0, Lorg/eclipse/jetty/client/HttpExchange;->_lastStatePeriod:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v15, v8

    const/4 v5, 0x7

    aput-object v1, v15, v5

    const/16 v1, 0x8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v15, v1

    invoke-static {v4, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v5, 0x7

    const-string v4, "%s@%x=%s//%s%s#%s(%dms)"

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v5, v13

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->hashCode()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v5, v12

    iget-object v12, v0, Lorg/eclipse/jetty/client/HttpExchange;->_method:Ljava/lang/String;

    aput-object v12, v5, v11

    iget-object v11, v0, Lorg/eclipse/jetty/client/HttpExchange;->_address:Lorg/eclipse/jetty/client/Address;

    aput-object v11, v5, v14

    iget-object v11, v0, Lorg/eclipse/jetty/client/HttpExchange;->_uri:Ljava/lang/String;

    aput-object v11, v5, v10

    aput-object v1, v5, v9

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 896
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jetty/client/HttpExchange;->getStatus()I

    move-result v4

    if-lt v4, v14, :cond_1

    iget-wide v4, v0, Lorg/eclipse/jetty/client/HttpExchange;->_sent:J

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-lez v8, :cond_1

    .line 897
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "sent="

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, v0, Lorg/eclipse/jetty/client/HttpExchange;->_sent:J

    sub-long v7, v2, v5

    invoke-virtual {v4, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "ms"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_1
    return-object v1
.end method

.method public waitForDone()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 167
    monitor-enter p0

    .line 169
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/client/HttpExchange;->isDone()Z

    move-result v0

    if-nez v0, :cond_0

    .line 170
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    goto :goto_0

    .line 171
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpExchange;->_status:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    .line 172
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public waitForStatus(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 151
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method
