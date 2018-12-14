.class public Lorg/eclipse/jetty/server/AsyncContinuation;
.super Ljava/lang/Object;
.source "AsyncContinuation.java"

# interfaces
.implements Ljavax/servlet/AsyncContext;
.implements Lorg/eclipse/jetty/continuation/Continuation;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;,
        Lorg/eclipse/jetty/server/AsyncContinuation$AsyncTimeout;
    }
.end annotation


# static fields
.field private static final DEFAULT_TIMEOUT:J = 0x7530L

.field private static final LOG:Lorg/eclipse/jetty/util/log/Logger;

.field private static final __ASYNCSTARTED:I = 0x2

.field private static final __ASYNCWAIT:I = 0x4

.field private static final __COMPLETED:I = 0x9

.field private static final __COMPLETING:I = 0x7

.field private static final __DISPATCHED:I = 0x1

.field private static final __IDLE:I = 0x0

.field private static final __REDISPATCH:I = 0x5

.field private static final __REDISPATCHED:I = 0x6

.field private static final __REDISPATCHING:I = 0x3

.field private static final __UNCOMPLETED:I = 0x8

.field private static final __exception:Lorg/eclipse/jetty/continuation/ContinuationThrowable;


# instance fields
.field private _asyncListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljavax/servlet/AsyncListener;",
            ">;"
        }
    .end annotation
.end field

.field protected _connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

.field private volatile _continuation:Z

.field private _continuationListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/eclipse/jetty/continuation/ContinuationListener;",
            ">;"
        }
    .end annotation
.end field

.field private _event:Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;

.field private volatile _expireAt:J

.field private _expired:Z

.field private _initial:Z

.field private _lastAsyncListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljavax/servlet/AsyncListener;",
            ">;"
        }
    .end annotation
.end field

.field private volatile _responseWrapped:Z

.field private _resumed:Z

.field private _state:I

.field private _timeoutMs:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 54
    const-class v0, Lorg/eclipse/jetty/server/AsyncContinuation;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/server/AsyncContinuation;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    .line 58
    new-instance v0, Lorg/eclipse/jetty/continuation/ContinuationThrowable;

    invoke-direct {v0}, Lorg/eclipse/jetty/continuation/ContinuationThrowable;-><init>()V

    sput-object v0, Lorg/eclipse/jetty/server/AsyncContinuation;->__exception:Lorg/eclipse/jetty/continuation/ContinuationThrowable;

    return-void
.end method

.method protected constructor <init>()V
    .locals 2

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x7530

    .line 96
    iput-wide v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_timeoutMs:J

    const/4 v0, 0x0

    .line 104
    iput v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_state:I

    const/4 v0, 0x1

    .line 105
    iput-boolean v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_initial:Z

    return-void
.end method

.method private doSuspend(Ljavax/servlet/ServletContext;Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;)V
    .locals 2

    .line 352
    monitor-enter p0

    .line 354
    :try_start_0
    iget v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_state:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    .line 377
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/AsyncContinuation;->getStatusString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    const/4 v0, 0x0

    .line 358
    iput-boolean v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_resumed:Z

    .line 359
    iput-boolean v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_expired:Z

    .line 361
    iget-object v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_event:Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_event:Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;->getSuppliedRequest()Ljavax/servlet/ServletRequest;

    move-result-object v0

    if-ne p2, v0, :cond_2

    iget-object v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_event:Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;->getSuppliedResponse()Ljavax/servlet/ServletResponse;

    move-result-object v0

    if-ne p3, v0, :cond_2

    iget-object v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_event:Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;->getServletContext()Ljavax/servlet/ServletContext;

    move-result-object v0

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 365
    :cond_1
    iget-object p1, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_event:Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;->access$002(Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;Ljavax/servlet/ServletContext;)Ljavax/servlet/ServletContext;

    .line 366
    iget-object p1, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_event:Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;

    invoke-static {p1, p2}, Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;->access$102(Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    .line 362
    :cond_2
    :goto_0
    new-instance v0, Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;-><init>(Lorg/eclipse/jetty/server/AsyncContinuation;Ljavax/servlet/ServletContext;Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;)V

    iput-object v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_event:Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;

    :goto_1
    const/4 p1, 0x2

    .line 368
    iput p1, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_state:I

    .line 369
    iget-object p1, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_lastAsyncListeners:Ljava/util/List;

    .line 370
    iget-object p2, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_asyncListeners:Ljava/util/List;

    iput-object p2, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_lastAsyncListeners:Ljava/util/List;

    .line 371
    iput-object p1, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_asyncListeners:Ljava/util/List;

    .line 372
    iget-object p1, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_asyncListeners:Ljava/util/List;

    if-eqz p1, :cond_3

    .line 373
    iget-object p1, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_asyncListeners:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 379
    :cond_3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 381
    iget-object p1, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_lastAsyncListeners:Ljava/util/List;

    if-eqz p1, :cond_4

    .line 383
    iget-object p1, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_lastAsyncListeners:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljavax/servlet/AsyncListener;

    .line 387
    :try_start_1
    iget-object p3, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_event:Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;

    invoke-interface {p2, p3}, Ljavax/servlet/AsyncListener;->onStartAsync(Ljavax/servlet/AsyncEvent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception p2

    .line 391
    sget-object p3, Lorg/eclipse/jetty/server/AsyncContinuation;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {p3, p2}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_4
    return-void

    :catchall_0
    move-exception p1

    .line 379
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method


# virtual methods
.method public addContinuationListener(Lorg/eclipse/jetty/continuation/ContinuationListener;)V
    .locals 1

    .line 143
    monitor-enter p0

    .line 145
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_continuationListeners:Ljava/util/List;

    if-nez v0, :cond_0

    .line 146
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_continuationListeners:Ljava/util/List;

    .line 147
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_continuationListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

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

.method public addListener(Ljavax/servlet/AsyncListener;)V
    .locals 1

    .line 120
    monitor-enter p0

    .line 122
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_asyncListeners:Ljava/util/List;

    if-nez v0, :cond_0

    .line 123
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_asyncListeners:Ljava/util/List;

    .line 124
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_asyncListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public addListener(Ljavax/servlet/AsyncListener;Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;)V
    .locals 0

    .line 131
    monitor-enter p0

    .line 134
    :try_start_0
    iget-object p2, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_asyncListeners:Ljava/util/List;

    if-nez p2, :cond_0

    .line 135
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_asyncListeners:Ljava/util/List;

    .line 136
    :cond_0
    iget-object p2, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_asyncListeners:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 137
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public cancel()V
    .locals 1

    .line 694
    monitor-enter p0

    .line 696
    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/AsyncContinuation;->cancelTimeout()V

    const/4 v0, 0x0

    .line 697
    iput-object v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_continuationListeners:Ljava/util/List;

    .line 698
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected cancelTimeout()V
    .locals 2

    .line 752
    iget-object v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getEndPoint()Lorg/eclipse/jetty/io/EndPoint;

    move-result-object v0

    .line 753
    invoke-interface {v0}, Lorg/eclipse/jetty/io/EndPoint;->isBlocking()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 755
    monitor-enter p0

    const-wide/16 v0, 0x0

    .line 757
    :try_start_0
    iput-wide v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_expireAt:J

    .line 758
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 759
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 763
    :cond_0
    iget-object v1, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_event:Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;

    if-eqz v1, :cond_1

    .line 766
    check-cast v0, Lorg/eclipse/jetty/io/AsyncEndPoint;

    invoke-static {v1}, Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;->access$200(Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;)Lorg/eclipse/jetty/util/thread/Timeout$Task;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/eclipse/jetty/io/AsyncEndPoint;->cancelTimeout(Lorg/eclipse/jetty/util/thread/Timeout$Task;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public complete()V
    .locals 3

    .line 561
    monitor-enter p0

    .line 563
    :try_start_0
    iget v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_state:I

    const/4 v1, 0x4

    const/4 v2, 0x7

    if-eq v0, v1, :cond_1

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    .line 579
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/AsyncContinuation;->getStatusString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 570
    :pswitch_0
    iput v2, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_state:I

    .line 571
    monitor-exit p0

    return-void

    .line 567
    :cond_0
    :pswitch_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/AsyncContinuation;->getStatusString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 574
    :cond_1
    iput v2, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_state:I

    .line 575
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_expired:Z

    xor-int/lit8 v0, v0, 0x1

    .line 581
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    .line 585
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/AsyncContinuation;->cancelTimeout()V

    .line 586
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/AsyncContinuation;->scheduleDispatch()V

    :cond_2
    return-void

    :catchall_0
    move-exception v0

    .line 581
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public createListener(Ljava/lang/Class;)Ljavax/servlet/AsyncListener;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljavax/servlet/AsyncListener;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/ServletException;
        }
    .end annotation

    .line 597
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavax/servlet/AsyncListener;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 601
    new-instance v0, Ljavax/servlet/ServletException;

    invoke-direct {v0, p1}, Ljavax/servlet/ServletException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public dispatch()V
    .locals 3

    .line 454
    monitor-enter p0

    .line 456
    :try_start_0
    iget v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_state:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v1, :cond_1

    packed-switch v0, :pswitch_data_0

    .line 473
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/AsyncContinuation;->getStatusString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 470
    :pswitch_0
    monitor-exit p0

    return-void

    .line 464
    :pswitch_1
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_expired:Z

    xor-int/2addr v0, v2

    const/4 v1, 0x5

    .line 465
    iput v1, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_state:I

    .line 466
    iput-boolean v2, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_resumed:Z

    .line 475
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 479
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/AsyncContinuation;->cancelTimeout()V

    .line 480
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/AsyncContinuation;->scheduleDispatch()V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x3

    .line 459
    :try_start_1
    iput v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_state:I

    .line 460
    iput-boolean v2, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_resumed:Z

    .line 461
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 475
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public dispatch(Ljava/lang/String;)V
    .locals 1

    .line 849
    iget-object v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_event:Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;

    invoke-static {v0, p1}, Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;->access$102(Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;Ljava/lang/String;)Ljava/lang/String;

    .line 850
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/AsyncContinuation;->dispatch()V

    return-void
.end method

.method public dispatch(Ljavax/servlet/ServletContext;Ljava/lang/String;)V
    .locals 1

    .line 841
    iget-object v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_event:Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;

    invoke-static {v0, p1}, Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;->access$002(Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;Ljavax/servlet/ServletContext;)Ljavax/servlet/ServletContext;

    .line 842
    iget-object p1, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_event:Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;

    invoke-static {p1, p2}, Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;->access$102(Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;Ljava/lang/String;)Ljava/lang/String;

    .line 843
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/AsyncContinuation;->dispatch()V

    return-void
.end method

.method protected doComplete(Ljava/lang/Throwable;)V
    .locals 6

    .line 614
    monitor-enter p0

    .line 616
    :try_start_0
    iget v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_state:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 627
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/AsyncContinuation;->getStatusString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    const/16 v0, 0x9

    .line 619
    iput v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_state:I

    .line 620
    iget-object v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_continuationListeners:Ljava/util/List;

    .line 621
    iget-object v1, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_asyncListeners:Ljava/util/List;

    .line 629
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_2

    .line 633
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/servlet/AsyncListener;

    if-eqz p1, :cond_1

    .line 639
    :try_start_1
    iget-object v3, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_event:Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;

    invoke-virtual {v3}, Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;->getSuppliedRequest()Ljavax/servlet/ServletRequest;

    move-result-object v3

    const-string v4, "javax.servlet.error.exception"

    invoke-interface {v3, v4, p1}, Ljavax/servlet/ServletRequest;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 640
    iget-object v3, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_event:Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;

    invoke-virtual {v3}, Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;->getSuppliedRequest()Ljavax/servlet/ServletRequest;

    move-result-object v3

    const-string v4, "javax.servlet.error.message"

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljavax/servlet/ServletRequest;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 641
    iget-object v3, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_event:Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;

    invoke-interface {v2, v3}, Ljavax/servlet/AsyncListener;->onError(Ljavax/servlet/AsyncEvent;)V

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_1

    .line 644
    :cond_1
    iget-object v3, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_event:Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;

    invoke-interface {v2, v3}, Ljavax/servlet/AsyncListener;->onComplete(Ljavax/servlet/AsyncEvent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 648
    :goto_1
    sget-object v3, Lorg/eclipse/jetty/server/AsyncContinuation;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v3, v2}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_3

    .line 654
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/continuation/ContinuationListener;

    .line 658
    :try_start_2
    invoke-interface {v0, p0}, Lorg/eclipse/jetty/continuation/ContinuationListener;->onComplete(Lorg/eclipse/jetty/continuation/Continuation;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    .line 662
    sget-object v1, Lorg/eclipse/jetty/server/AsyncContinuation;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v1, v0}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_3
    return-void

    :catchall_0
    move-exception p1

    .line 629
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method protected expired()V
    .locals 6

    .line 489
    monitor-enter p0

    .line 491
    :try_start_0
    iget v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_state:I

    const/4 v1, 0x4

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    if-eq v0, v1, :cond_0

    .line 501
    monitor-exit p0

    return-void

    .line 495
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_continuationListeners:Ljava/util/List;

    .line 496
    iget-object v3, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_asyncListeners:Ljava/util/List;

    const/4 v4, 0x1

    .line 503
    iput-boolean v4, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_expired:Z

    .line 504
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v3, :cond_1

    .line 508
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavax/servlet/AsyncListener;

    .line 512
    :try_start_1
    iget-object v5, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_event:Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;

    invoke-interface {v4, v5}, Ljavax/servlet/AsyncListener;->onTimeout(Ljavax/servlet/AsyncEvent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    .line 516
    sget-object v5, Lorg/eclipse/jetty/server/AsyncContinuation;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v5, v4}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    .line 522
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/eclipse/jetty/continuation/ContinuationListener;

    .line 526
    :try_start_2
    invoke-interface {v3, p0}, Lorg/eclipse/jetty/continuation/ContinuationListener;->onTimeout(Lorg/eclipse/jetty/continuation/Continuation;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v3

    .line 530
    sget-object v4, Lorg/eclipse/jetty/server/AsyncContinuation;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v4, v3}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 535
    :cond_2
    monitor-enter p0

    .line 537
    :try_start_3
    iget v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_state:I

    if-eq v0, v2, :cond_3

    if-eq v0, v1, :cond_3

    .line 545
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_continuation:Z

    if-nez v0, :cond_4

    const/4 v0, 0x0

    .line 546
    iput-boolean v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_expired:Z

    goto :goto_2

    .line 541
    :cond_3
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/AsyncContinuation;->dispatch()V

    .line 548
    :cond_4
    :goto_2
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 550
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/AsyncContinuation;->scheduleDispatch()V

    return-void

    :catchall_0
    move-exception v0

    .line 548
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    .line 504
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v0
.end method

.method public getAsyncEventState()Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;
    .locals 1

    .line 172
    monitor-enter p0

    .line 174
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_event:Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 175
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getAttribute(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 1008
    iget-object v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getRequest()Lorg/eclipse/jetty/server/Request;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/server/Request;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getBaseRequest()Lorg/eclipse/jetty/server/Request;
    .locals 1

    .line 856
    iget-object v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getRequest()Lorg/eclipse/jetty/server/Request;

    move-result-object v0

    return-object v0
.end method

.method public getContextHandler()Lorg/eclipse/jetty/server/handler/ContextHandler;
    .locals 1

    .line 903
    iget-object v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_event:Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;

    if-eqz v0, :cond_0

    .line 905
    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;->getServletContext()Ljavax/servlet/ServletContext;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->getContextHandler()Lorg/eclipse/jetty/server/handler/ContextHandler;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRequest()Ljavax/servlet/ServletRequest;
    .locals 1

    .line 862
    iget-object v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_event:Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;

    if-eqz v0, :cond_0

    .line 863
    iget-object v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_event:Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;->getSuppliedRequest()Ljavax/servlet/ServletRequest;

    move-result-object v0

    return-object v0

    .line 864
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getRequest()Lorg/eclipse/jetty/server/Request;

    move-result-object v0

    return-object v0
.end method

.method public getResponse()Ljavax/servlet/ServletResponse;
    .locals 1

    .line 870
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_responseWrapped:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_event:Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_event:Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;->getSuppliedResponse()Ljavax/servlet/ServletResponse;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 871
    iget-object v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_event:Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;->getSuppliedResponse()Ljavax/servlet/ServletResponse;

    move-result-object v0

    return-object v0

    .line 872
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getResponse()Lorg/eclipse/jetty/server/Response;

    move-result-object v0

    return-object v0
.end method

.method public getServletResponse()Ljavax/servlet/ServletResponse;
    .locals 1

    .line 997
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_responseWrapped:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_event:Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_event:Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;->getSuppliedResponse()Ljavax/servlet/ServletResponse;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 998
    iget-object v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_event:Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;->getSuppliedResponse()Ljavax/servlet/ServletResponse;

    move-result-object v0

    return-object v0

    .line 999
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getResponse()Lorg/eclipse/jetty/server/Response;

    move-result-object v0

    return-object v0
.end method

.method public getStatusString()Ljava/lang/String;
    .locals 3

    .line 280
    monitor-enter p0

    .line 282
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_state:I

    if-nez v1, :cond_0

    const-string v1, "IDLE"

    goto :goto_0

    :cond_0
    iget v1, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_state:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    const-string v1, "DISPATCHED"

    goto :goto_0

    :cond_1
    iget v1, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_state:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    const-string v1, "ASYNCSTARTED"

    goto :goto_0

    :cond_2
    iget v1, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_state:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3

    const-string v1, "ASYNCWAIT"

    goto :goto_0

    :cond_3
    iget v1, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_state:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_4

    const-string v1, "REDISPATCHING"

    goto :goto_0

    :cond_4
    iget v1, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_state:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_5

    const-string v1, "REDISPATCH"

    goto :goto_0

    :cond_5
    iget v1, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_state:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_6

    const-string v1, "REDISPATCHED"

    goto :goto_0

    :cond_6
    iget v1, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_state:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_7

    const-string v1, "COMPLETING"

    goto :goto_0

    :cond_7
    iget v1, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_state:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_8

    const-string v1, "UNCOMPLETED"

    goto :goto_0

    :cond_8
    iget v1, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_state:I

    const/16 v2, 0x9

    if-ne v1, v2, :cond_9

    const-string v1, "COMPLETE"

    goto :goto_0

    :cond_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UNKNOWN?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_state:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_initial:Z

    if-eqz v1, :cond_a

    const-string v1, ",initial"

    goto :goto_1

    :cond_a
    const-string v1, ""

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_resumed:Z

    if-eqz v1, :cond_b

    const-string v1, ",resumed"

    goto :goto_2

    :cond_b
    const-string v1, ""

    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_expired:Z

    if-eqz v1, :cond_c

    const-string v1, ",expired"

    goto :goto_3

    :cond_c
    const-string v1, ""

    :goto_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 297
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getTimeout()J
    .locals 2

    .line 163
    monitor-enter p0

    .line 165
    :try_start_0
    iget-wide v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_timeoutMs:J

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    .line 166
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected handling()Z
    .locals 4

    .line 306
    monitor-enter p0

    const/4 v0, 0x0

    .line 308
    :try_start_0
    iput-boolean v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_continuation:Z

    .line 309
    iput-boolean v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_responseWrapped:Z

    .line 311
    iget v1, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_state:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    const/4 v3, 0x7

    if-eq v1, v3, :cond_0

    packed-switch v1, :pswitch_data_0

    .line 339
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/AsyncContinuation;->getStatusString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const/4 v0, 0x6

    .line 335
    iput v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_state:I

    .line 336
    monitor-exit p0

    return v2

    .line 332
    :pswitch_1
    monitor-exit p0

    return v0

    :cond_0
    const/16 v1, 0x8

    .line 328
    iput v1, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_state:I

    .line 329
    monitor-exit p0

    return v0

    .line 314
    :cond_1
    iput-boolean v2, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_initial:Z

    .line 315
    iput v2, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_state:I

    .line 316
    iget-object v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_lastAsyncListeners:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 317
    iget-object v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_lastAsyncListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 318
    :cond_2
    iget-object v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_asyncListeners:Ljava/util/List;

    if-eqz v0, :cond_3

    .line 319
    iget-object v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_asyncListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_0

    .line 322
    :cond_3
    iget-object v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_lastAsyncListeners:Ljava/util/List;

    iput-object v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_asyncListeners:Ljava/util/List;

    const/4 v0, 0x0

    .line 323
    iput-object v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_lastAsyncListeners:Ljava/util/List;

    .line 325
    :goto_0
    monitor-exit p0

    return v2

    :catchall_0
    move-exception v0

    .line 341
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public hasOriginalRequestAndResponse()Z
    .locals 2

    .line 894
    monitor-enter p0

    .line 896
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_event:Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_event:Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;->getSuppliedRequest()Ljavax/servlet/ServletRequest;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    iget-object v1, v1, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_request:Lorg/eclipse/jetty/server/Request;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_event:Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;->getSuppliedResponse()Ljavax/servlet/ServletResponse;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    iget-object v1, v1, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_response:Lorg/eclipse/jetty/server/Response;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    .line 897
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isAsync()Z
    .locals 1

    .line 822
    monitor-enter p0

    .line 824
    :try_start_0
    iget v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_state:I

    sparse-switch v0, :sswitch_data_0

    const/4 v0, 0x1

    .line 833
    monitor-exit p0

    goto :goto_0

    :sswitch_0
    const/4 v0, 0x0

    .line 830
    monitor-exit p0

    return v0

    :goto_0
    return v0

    :catchall_0
    move-exception v0

    .line 835
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_0
        0x8 -> :sswitch_0
        0x9 -> :sswitch_0
    .end sparse-switch
.end method

.method public isAsyncStarted()Z
    .locals 1

    .line 802
    monitor-enter p0

    .line 804
    :try_start_0
    iget v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_state:I

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    .line 813
    monitor-exit p0

    goto :goto_0

    :pswitch_0
    const/4 v0, 0x1

    .line 810
    monitor-exit p0

    return v0

    :goto_0
    return v0

    :catchall_0
    move-exception v0

    .line 815
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public isComplete()Z
    .locals 2

    .line 792
    monitor-enter p0

    .line 794
    :try_start_0
    iget v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_state:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    .line 795
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isCompleting()Z
    .locals 2

    .line 774
    monitor-enter p0

    .line 776
    :try_start_0
    iget v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_state:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    .line 777
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isContinuation()Z
    .locals 1

    .line 206
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_continuation:Z

    return v0
.end method

.method public isDispatchable()Z
    .locals 2

    .line 251
    monitor-enter p0

    .line 253
    :try_start_0
    iget v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_state:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    .line 262
    monitor-exit p0

    return v0

    :cond_0
    :pswitch_0
    const/4 v0, 0x1

    .line 259
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    .line 264
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public isExpired()Z
    .locals 1

    .line 927
    monitor-enter p0

    .line 929
    :try_start_0
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_expired:Z

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    .line 930
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isInitial()Z
    .locals 1

    .line 198
    monitor-enter p0

    .line 200
    :try_start_0
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_initial:Z

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    .line 201
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isResponseWrapped()Z
    .locals 1

    .line 189
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_responseWrapped:Z

    return v0
.end method

.method public isResumed()Z
    .locals 1

    .line 916
    monitor-enter p0

    .line 918
    :try_start_0
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_resumed:Z

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    .line 919
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isSuspended()Z
    .locals 2

    .line 215
    monitor-enter p0

    .line 217
    :try_start_0
    iget v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_state:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    .line 226
    monitor-exit p0

    return v0

    :cond_0
    :pswitch_0
    const/4 v0, 0x1

    .line 223
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    .line 228
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public isSuspending()Z
    .locals 2

    .line 234
    monitor-enter p0

    .line 236
    :try_start_0
    iget v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_state:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    .line 243
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x1

    .line 240
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    .line 245
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method isUncompleted()Z
    .locals 2

    .line 783
    monitor-enter p0

    .line 785
    :try_start_0
    iget v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_state:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    .line 786
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected recycle()V
    .locals 3

    .line 671
    monitor-enter p0

    .line 673
    :try_start_0
    iget v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_state:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v2, 0x6

    if-eq v0, v2, :cond_0

    const/4 v0, 0x0

    .line 679
    iput v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_state:I

    .line 681
    iput-boolean v1, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_initial:Z

    .line 682
    iput-boolean v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_resumed:Z

    .line 683
    iput-boolean v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_expired:Z

    .line 684
    iput-boolean v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_responseWrapped:Z

    .line 685
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/AsyncContinuation;->cancelTimeout()V

    const-wide/16 v0, 0x7530

    .line 686
    iput-wide v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_timeoutMs:J

    const/4 v0, 0x0

    .line 687
    iput-object v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_continuationListeners:Ljava/util/List;

    .line 688
    monitor-exit p0

    return-void

    .line 677
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/AsyncContinuation;->getStatusString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    .line 688
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public removeAttribute(Ljava/lang/String;)V
    .locals 1

    .line 1017
    iget-object v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getRequest()Lorg/eclipse/jetty/server/Request;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/server/Request;->removeAttribute(Ljava/lang/String;)V

    return-void
.end method

.method public resume()V
    .locals 0

    .line 939
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/AsyncContinuation;->dispatch()V

    return-void
.end method

.method protected scheduleDispatch()V
    .locals 2

    .line 704
    iget-object v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getEndPoint()Lorg/eclipse/jetty/io/EndPoint;

    move-result-object v0

    .line 705
    invoke-interface {v0}, Lorg/eclipse/jetty/io/EndPoint;->isBlocking()Z

    move-result v1

    if-nez v1, :cond_0

    .line 707
    check-cast v0, Lorg/eclipse/jetty/io/AsyncEndPoint;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/AsyncEndPoint;->asyncDispatch()V

    :cond_0
    return-void
.end method

.method protected scheduleTimeout()V
    .locals 9

    .line 714
    iget-object v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getEndPoint()Lorg/eclipse/jetty/io/EndPoint;

    move-result-object v0

    .line 715
    iget-wide v1, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_timeoutMs:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_3

    .line 717
    invoke-interface {v0}, Lorg/eclipse/jetty/io/EndPoint;->isBlocking()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 719
    monitor-enter p0

    .line 721
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v5, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_timeoutMs:J

    const/4 v2, 0x0

    add-long v7, v0, v5

    iput-wide v7, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_expireAt:J

    .line 722
    iget-wide v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_timeoutMs:J

    .line 723
    :goto_0
    iget-wide v5, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_expireAt:J

    cmp-long v2, v5, v3

    if-lez v2, :cond_0

    cmp-long v2, v0, v3

    if-lez v2, :cond_0

    iget-object v2, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v2}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getServer()Lorg/eclipse/jetty/server/Server;

    move-result-object v2

    invoke-virtual {v2}, Lorg/eclipse/jetty/server/Server;->isRunning()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    .line 727
    :try_start_1
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 731
    :try_start_2
    sget-object v1, Lorg/eclipse/jetty/server/AsyncContinuation;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v1, v0}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    .line 733
    :goto_1
    iget-wide v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_expireAt:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const/4 v2, 0x0

    sub-long v7, v0, v5

    move-wide v0, v7

    goto :goto_0

    .line 736
    :cond_0
    iget-wide v5, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_expireAt:J

    cmp-long v2, v5, v3

    if-lez v2, :cond_1

    cmp-long v2, v0, v3

    if-gtz v2, :cond_1

    iget-object v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getServer()Lorg/eclipse/jetty/server/Server;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/Server;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 738
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/AsyncContinuation;->expired()V

    .line 740
    :cond_1
    monitor-exit p0

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 744
    :cond_2
    check-cast v0, Lorg/eclipse/jetty/io/AsyncEndPoint;

    iget-object v1, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_event:Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;

    invoke-static {v1}, Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;->access$200(Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;)Lorg/eclipse/jetty/util/thread/Timeout$Task;

    move-result-object v1

    iget-wide v2, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_timeoutMs:J

    invoke-interface {v0, v1, v2, v3}, Lorg/eclipse/jetty/io/AsyncEndPoint;->scheduleTimeout(Lorg/eclipse/jetty/util/thread/Timeout$Task;J)V

    :cond_3
    :goto_2
    return-void
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 1026
    iget-object v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getRequest()Lorg/eclipse/jetty/server/Request;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jetty/server/Request;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method protected setConnection(Lorg/eclipse/jetty/server/AbstractHttpConnection;)V
    .locals 0

    .line 111
    monitor-enter p0

    .line 113
    :try_start_0
    iput-object p1, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    .line 114
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setTimeout(J)V
    .locals 0

    .line 154
    monitor-enter p0

    .line 156
    :try_start_0
    iput-wide p1, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_timeoutMs:J

    .line 157
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public start(Ljava/lang/Runnable;)V
    .locals 3

    .line 878
    iget-object v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_event:Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;

    if-eqz v0, :cond_0

    .line 881
    iget-object v1, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v1}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getServer()Lorg/eclipse/jetty/server/Server;

    move-result-object v1

    invoke-virtual {v1}, Lorg/eclipse/jetty/server/Server;->getThreadPool()Lorg/eclipse/jetty/util/thread/ThreadPool;

    move-result-object v1

    new-instance v2, Lorg/eclipse/jetty/server/AsyncContinuation$1;

    invoke-direct {v2, p0, v0, p1}, Lorg/eclipse/jetty/server/AsyncContinuation$1;-><init>(Lorg/eclipse/jetty/server/AsyncContinuation;Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;Ljava/lang/Runnable;)V

    invoke-interface {v1, v2}, Lorg/eclipse/jetty/util/thread/ThreadPool;->dispatch(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method protected startAsync()V
    .locals 3

    const/4 v0, 0x0

    .line 963
    iput-boolean v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_responseWrapped:Z

    .line 964
    iput-boolean v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_continuation:Z

    .line 965
    iget-object v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getRequest()Lorg/eclipse/jetty/server/Request;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/Request;->getServletContext()Ljavax/servlet/ServletContext;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v1}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getRequest()Lorg/eclipse/jetty/server/Request;

    move-result-object v1

    iget-object v2, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v2}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getResponse()Lorg/eclipse/jetty/server/Response;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lorg/eclipse/jetty/server/AsyncContinuation;->doSuspend(Ljavax/servlet/ServletContext;Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;)V

    return-void
.end method

.method protected startAsync(Ljavax/servlet/ServletContext;Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;)V
    .locals 1

    .line 949
    monitor-enter p0

    .line 951
    :try_start_0
    instance-of v0, p3, Lorg/eclipse/jetty/server/Response;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_responseWrapped:Z

    .line 952
    invoke-direct {p0, p1, p2, p3}, Lorg/eclipse/jetty/server/AsyncContinuation;->doSuspend(Ljavax/servlet/ServletContext;Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;)V

    .line 953
    instance-of p1, p2, Ljavax/servlet/http/HttpServletRequest;

    if-eqz p1, :cond_1

    .line 955
    iget-object p1, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_event:Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;

    move-object p3, p2

    check-cast p3, Ljavax/servlet/http/HttpServletRequest;

    invoke-interface {p3}, Ljavax/servlet/http/HttpServletRequest;->getServletPath()Ljava/lang/String;

    move-result-object p3

    check-cast p2, Ljavax/servlet/http/HttpServletRequest;

    invoke-interface {p2}, Ljavax/servlet/http/HttpServletRequest;->getPathInfo()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Lorg/eclipse/jetty/util/URIUtil;->addPaths(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;->access$102(Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;Ljava/lang/String;)Ljava/lang/String;

    .line 957
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

.method public suspend()V
    .locals 3

    const/4 v0, 0x0

    .line 986
    iput-boolean v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_responseWrapped:Z

    const/4 v0, 0x1

    .line 987
    iput-boolean v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_continuation:Z

    .line 988
    iget-object v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getRequest()Lorg/eclipse/jetty/server/Request;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/Request;->getServletContext()Ljavax/servlet/ServletContext;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v1}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getRequest()Lorg/eclipse/jetty/server/Request;

    move-result-object v1

    iget-object v2, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v2}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getResponse()Lorg/eclipse/jetty/server/Response;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lorg/eclipse/jetty/server/AsyncContinuation;->doSuspend(Ljavax/servlet/ServletContext;Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;)V

    return-void
.end method

.method public suspend(Ljavax/servlet/ServletResponse;)V
    .locals 2

    const/4 v0, 0x1

    .line 975
    iput-boolean v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_continuation:Z

    .line 976
    instance-of v1, p1, Lorg/eclipse/jetty/server/Response;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_responseWrapped:Z

    .line 977
    iget-object v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getRequest()Lorg/eclipse/jetty/server/Request;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/Request;->getServletContext()Ljavax/servlet/ServletContext;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v1}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getRequest()Lorg/eclipse/jetty/server/Request;

    move-result-object v1

    invoke-direct {p0, v0, v1, p1}, Lorg/eclipse/jetty/server/AsyncContinuation;->doSuspend(Ljavax/servlet/ServletContext;Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 271
    monitor-enter p0

    .line 273
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/AsyncContinuation;->getStatusString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 274
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public undispatch()V
    .locals 2

    .line 1035
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/AsyncContinuation;->isSuspended()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1037
    sget-object v0, Lorg/eclipse/jetty/server/AsyncContinuation;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v0}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1038
    new-instance v0, Lorg/eclipse/jetty/continuation/ContinuationThrowable;

    invoke-direct {v0}, Lorg/eclipse/jetty/continuation/ContinuationThrowable;-><init>()V

    throw v0

    .line 1040
    :cond_0
    sget-object v0, Lorg/eclipse/jetty/server/AsyncContinuation;->__exception:Lorg/eclipse/jetty/continuation/ContinuationThrowable;

    throw v0

    .line 1042
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "!suspended"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected unhandle()Z
    .locals 6

    .line 407
    monitor-enter p0

    .line 409
    :try_start_0
    iget v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_state:I

    const/4 v1, 0x6

    const/16 v2, 0x8

    const/4 v3, 0x1

    const/4 v4, 0x0

    packed-switch v0, :pswitch_data_0

    .line 445
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    goto :goto_0

    .line 440
    :pswitch_1
    iput-boolean v4, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_initial:Z

    .line 441
    iput v2, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_state:I

    .line 442
    monitor-exit p0

    return v3

    .line 435
    :pswitch_2
    iput-boolean v4, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_initial:Z

    .line 436
    iput v1, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_state:I

    .line 437
    monitor-exit p0

    return v4

    .line 420
    :pswitch_3
    iput-boolean v4, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_initial:Z

    const/4 v0, 0x4

    .line 421
    iput v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_state:I

    .line 422
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/AsyncContinuation;->scheduleTimeout()V

    .line 423
    iget v5, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_state:I

    if-ne v5, v0, :cond_0

    .line 424
    monitor-exit p0

    return v3

    .line 425
    :cond_0
    iget v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_state:I

    const/4 v5, 0x7

    if-ne v0, v5, :cond_1

    .line 427
    iput v2, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_state:I

    .line 428
    monitor-exit p0

    return v3

    .line 430
    :cond_1
    iput-boolean v4, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_initial:Z

    .line 431
    iput v1, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_state:I

    .line 432
    monitor-exit p0

    return v4

    .line 413
    :pswitch_4
    iput v2, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_state:I

    .line 414
    monitor-exit p0

    return v3

    .line 417
    :pswitch_5
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/AsyncContinuation;->getStatusString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 445
    :goto_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/AsyncContinuation;->getStatusString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    .line 447
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_1
    .end packed-switch
.end method
