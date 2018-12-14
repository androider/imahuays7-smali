.class public Lorg/eclipse/jetty/server/handler/StatisticsHandler;
.super Lorg/eclipse/jetty/server/handler/HandlerWrapper;
.source "StatisticsHandler.java"


# instance fields
.field private final _dispatchedStats:Lorg/eclipse/jetty/util/statistic/CounterStatistic;

.field private final _dispatchedTimeStats:Lorg/eclipse/jetty/util/statistic/SampleStatistic;

.field private final _expires:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final _onCompletion:Lorg/eclipse/jetty/continuation/ContinuationListener;

.field private final _requestStats:Lorg/eclipse/jetty/util/statistic/CounterStatistic;

.field private final _requestTimeStats:Lorg/eclipse/jetty/util/statistic/SampleStatistic;

.field private final _responses1xx:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final _responses2xx:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final _responses3xx:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final _responses4xx:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final _responses5xx:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final _responsesTotalBytes:Ljava/util/concurrent/atomic/AtomicLong;

.field private final _resumes:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final _statsStartedAt:Ljava/util/concurrent/atomic/AtomicLong;

.field private final _suspendStats:Lorg/eclipse/jetty/util/statistic/CounterStatistic;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Lorg/eclipse/jetty/server/handler/HandlerWrapper;-><init>()V

    .line 39
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/server/handler/StatisticsHandler;->_statsStartedAt:Ljava/util/concurrent/atomic/AtomicLong;

    .line 41
    new-instance v0, Lorg/eclipse/jetty/util/statistic/CounterStatistic;

    invoke-direct {v0}, Lorg/eclipse/jetty/util/statistic/CounterStatistic;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/server/handler/StatisticsHandler;->_requestStats:Lorg/eclipse/jetty/util/statistic/CounterStatistic;

    .line 42
    new-instance v0, Lorg/eclipse/jetty/util/statistic/SampleStatistic;

    invoke-direct {v0}, Lorg/eclipse/jetty/util/statistic/SampleStatistic;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/server/handler/StatisticsHandler;->_requestTimeStats:Lorg/eclipse/jetty/util/statistic/SampleStatistic;

    .line 43
    new-instance v0, Lorg/eclipse/jetty/util/statistic/CounterStatistic;

    invoke-direct {v0}, Lorg/eclipse/jetty/util/statistic/CounterStatistic;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/server/handler/StatisticsHandler;->_dispatchedStats:Lorg/eclipse/jetty/util/statistic/CounterStatistic;

    .line 44
    new-instance v0, Lorg/eclipse/jetty/util/statistic/SampleStatistic;

    invoke-direct {v0}, Lorg/eclipse/jetty/util/statistic/SampleStatistic;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/server/handler/StatisticsHandler;->_dispatchedTimeStats:Lorg/eclipse/jetty/util/statistic/SampleStatistic;

    .line 45
    new-instance v0, Lorg/eclipse/jetty/util/statistic/CounterStatistic;

    invoke-direct {v0}, Lorg/eclipse/jetty/util/statistic/CounterStatistic;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/server/handler/StatisticsHandler;->_suspendStats:Lorg/eclipse/jetty/util/statistic/CounterStatistic;

    .line 47
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/server/handler/StatisticsHandler;->_resumes:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 48
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/server/handler/StatisticsHandler;->_expires:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 50
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/server/handler/StatisticsHandler;->_responses1xx:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 51
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/server/handler/StatisticsHandler;->_responses2xx:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 52
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/server/handler/StatisticsHandler;->_responses3xx:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 53
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/server/handler/StatisticsHandler;->_responses4xx:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 54
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/server/handler/StatisticsHandler;->_responses5xx:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 55
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/server/handler/StatisticsHandler;->_responsesTotalBytes:Ljava/util/concurrent/atomic/AtomicLong;

    .line 57
    new-instance v0, Lorg/eclipse/jetty/server/handler/StatisticsHandler$1;

    invoke-direct {v0, p0}, Lorg/eclipse/jetty/server/handler/StatisticsHandler$1;-><init>(Lorg/eclipse/jetty/server/handler/StatisticsHandler;)V

    iput-object v0, p0, Lorg/eclipse/jetty/server/handler/StatisticsHandler;->_onCompletion:Lorg/eclipse/jetty/continuation/ContinuationListener;

    return-void
.end method

.method static synthetic access$000(Lorg/eclipse/jetty/server/handler/StatisticsHandler;)Lorg/eclipse/jetty/util/statistic/CounterStatistic;
    .locals 0

    .line 37
    iget-object p0, p0, Lorg/eclipse/jetty/server/handler/StatisticsHandler;->_requestStats:Lorg/eclipse/jetty/util/statistic/CounterStatistic;

    return-object p0
.end method

.method static synthetic access$100(Lorg/eclipse/jetty/server/handler/StatisticsHandler;)Lorg/eclipse/jetty/util/statistic/SampleStatistic;
    .locals 0

    .line 37
    iget-object p0, p0, Lorg/eclipse/jetty/server/handler/StatisticsHandler;->_requestTimeStats:Lorg/eclipse/jetty/util/statistic/SampleStatistic;

    return-object p0
.end method

.method static synthetic access$200(Lorg/eclipse/jetty/server/handler/StatisticsHandler;Lorg/eclipse/jetty/server/Request;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lorg/eclipse/jetty/server/handler/StatisticsHandler;->updateResponse(Lorg/eclipse/jetty/server/Request;)V

    return-void
.end method

.method static synthetic access$300(Lorg/eclipse/jetty/server/handler/StatisticsHandler;)Lorg/eclipse/jetty/util/statistic/CounterStatistic;
    .locals 0

    .line 37
    iget-object p0, p0, Lorg/eclipse/jetty/server/handler/StatisticsHandler;->_suspendStats:Lorg/eclipse/jetty/util/statistic/CounterStatistic;

    return-object p0
.end method

.method static synthetic access$400(Lorg/eclipse/jetty/server/handler/StatisticsHandler;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 0

    .line 37
    iget-object p0, p0, Lorg/eclipse/jetty/server/handler/StatisticsHandler;->_expires:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method

.method private updateResponse(Lorg/eclipse/jetty/server/Request;)V
    .locals 3

    .line 154
    invoke-virtual {p1}, Lorg/eclipse/jetty/server/Request;->getResponse()Lorg/eclipse/jetty/server/Response;

    move-result-object p1

    .line 155
    invoke-virtual {p1}, Lorg/eclipse/jetty/server/Response;->getStatus()I

    move-result v0

    div-int/lit8 v0, v0, 0x64

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 170
    :pswitch_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/StatisticsHandler;->_responses5xx:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    goto :goto_0

    .line 167
    :pswitch_1
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/StatisticsHandler;->_responses4xx:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    goto :goto_0

    .line 164
    :pswitch_2
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/StatisticsHandler;->_responses3xx:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    goto :goto_0

    .line 161
    :pswitch_3
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/StatisticsHandler;->_responses2xx:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    goto :goto_0

    .line 158
    :pswitch_4
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/StatisticsHandler;->_responses1xx:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 175
    :goto_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/StatisticsHandler;->_responsesTotalBytes:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1}, Lorg/eclipse/jetty/server/Response;->getContentCount()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method protected doStart()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 181
    invoke-super {p0}, Lorg/eclipse/jetty/server/handler/HandlerWrapper;->doStart()V

    .line 182
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/StatisticsHandler;->statsReset()V

    return-void
.end method

.method public getDispatched()I
    .locals 2

    .line 261
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/StatisticsHandler;->_dispatchedStats:Lorg/eclipse/jetty/util/statistic/CounterStatistic;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/statistic/CounterStatistic;->getTotal()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public getDispatchedActive()I
    .locals 2

    .line 271
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/StatisticsHandler;->_dispatchedStats:Lorg/eclipse/jetty/util/statistic/CounterStatistic;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/statistic/CounterStatistic;->getCurrent()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public getDispatchedActiveMax()I
    .locals 2

    .line 281
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/StatisticsHandler;->_dispatchedStats:Lorg/eclipse/jetty/util/statistic/CounterStatistic;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/statistic/CounterStatistic;->getMax()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public getDispatchedTimeMax()J
    .locals 2

    .line 290
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/StatisticsHandler;->_dispatchedTimeStats:Lorg/eclipse/jetty/util/statistic/SampleStatistic;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/statistic/SampleStatistic;->getMax()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDispatchedTimeMean()D
    .locals 2

    .line 310
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/StatisticsHandler;->_dispatchedTimeStats:Lorg/eclipse/jetty/util/statistic/SampleStatistic;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/statistic/SampleStatistic;->getMean()D

    move-result-wide v0

    return-wide v0
.end method

.method public getDispatchedTimeStdDev()D
    .locals 2

    .line 321
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/StatisticsHandler;->_dispatchedTimeStats:Lorg/eclipse/jetty/util/statistic/SampleStatistic;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/statistic/SampleStatistic;->getStdDev()D

    move-result-wide v0

    return-wide v0
.end method

.method public getDispatchedTimeTotal()J
    .locals 2

    .line 299
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/StatisticsHandler;->_dispatchedTimeStats:Lorg/eclipse/jetty/util/statistic/SampleStatistic;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/statistic/SampleStatistic;->getTotal()J

    move-result-wide v0

    return-wide v0
.end method

.method public getExpires()I
    .locals 1

    .line 368
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/StatisticsHandler;->_expires:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public getRequestTimeMax()J
    .locals 2

    .line 220
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/StatisticsHandler;->_requestTimeStats:Lorg/eclipse/jetty/util/statistic/SampleStatistic;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/statistic/SampleStatistic;->getMax()J

    move-result-wide v0

    return-wide v0
.end method

.method public getRequestTimeMean()D
    .locals 2

    .line 240
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/StatisticsHandler;->_requestTimeStats:Lorg/eclipse/jetty/util/statistic/SampleStatistic;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/statistic/SampleStatistic;->getMean()D

    move-result-wide v0

    return-wide v0
.end method

.method public getRequestTimeStdDev()D
    .locals 2

    .line 251
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/StatisticsHandler;->_requestTimeStats:Lorg/eclipse/jetty/util/statistic/SampleStatistic;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/statistic/SampleStatistic;->getStdDev()D

    move-result-wide v0

    return-wide v0
.end method

.method public getRequestTimeTotal()J
    .locals 2

    .line 229
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/StatisticsHandler;->_requestTimeStats:Lorg/eclipse/jetty/util/statistic/SampleStatistic;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/statistic/SampleStatistic;->getTotal()J

    move-result-wide v0

    return-wide v0
.end method

.method public getRequests()I
    .locals 2

    .line 193
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/StatisticsHandler;->_requestStats:Lorg/eclipse/jetty/util/statistic/CounterStatistic;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/statistic/CounterStatistic;->getTotal()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public getRequestsActive()I
    .locals 2

    .line 202
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/StatisticsHandler;->_requestStats:Lorg/eclipse/jetty/util/statistic/CounterStatistic;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/statistic/CounterStatistic;->getCurrent()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public getRequestsActiveMax()I
    .locals 2

    .line 211
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/StatisticsHandler;->_requestStats:Lorg/eclipse/jetty/util/statistic/CounterStatistic;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/statistic/CounterStatistic;->getMax()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public getResponses1xx()I
    .locals 1

    .line 377
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/StatisticsHandler;->_responses1xx:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public getResponses2xx()I
    .locals 1

    .line 386
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/StatisticsHandler;->_responses2xx:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public getResponses3xx()I
    .locals 1

    .line 395
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/StatisticsHandler;->_responses3xx:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public getResponses4xx()I
    .locals 1

    .line 404
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/StatisticsHandler;->_responses4xx:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public getResponses5xx()I
    .locals 1

    .line 413
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/StatisticsHandler;->_responses5xx:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public getResponsesBytesTotal()J
    .locals 2

    .line 429
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/StatisticsHandler;->_responsesTotalBytes:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method public getResumes()I
    .locals 1

    .line 359
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/StatisticsHandler;->_resumes:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public getStatsOnMs()J
    .locals 6

    .line 421
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lorg/eclipse/jetty/server/handler/StatisticsHandler;->_statsStartedAt:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    sub-long v4, v0, v2

    return-wide v4
.end method

.method public getSuspends()I
    .locals 2

    .line 332
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/StatisticsHandler;->_suspendStats:Lorg/eclipse/jetty/util/statistic/CounterStatistic;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/statistic/CounterStatistic;->getTotal()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public getSuspendsActive()I
    .locals 2

    .line 341
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/StatisticsHandler;->_suspendStats:Lorg/eclipse/jetty/util/statistic/CounterStatistic;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/statistic/CounterStatistic;->getCurrent()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public getSuspendsActiveMax()I
    .locals 2

    .line 350
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/StatisticsHandler;->_suspendStats:Lorg/eclipse/jetty/util/statistic/CounterStatistic;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/statistic/CounterStatistic;->getMax()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public handle(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/servlet/ServletException;
        }
    .end annotation

    .line 105
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/StatisticsHandler;->_dispatchedStats:Lorg/eclipse/jetty/util/statistic/CounterStatistic;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/statistic/CounterStatistic;->increment()V

    .line 108
    invoke-virtual {p2}, Lorg/eclipse/jetty/server/Request;->getAsyncContinuation()Lorg/eclipse/jetty/server/AsyncContinuation;

    move-result-object v0

    .line 109
    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AsyncContinuation;->isInitial()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 112
    iget-object v1, p0, Lorg/eclipse/jetty/server/handler/StatisticsHandler;->_requestStats:Lorg/eclipse/jetty/util/statistic/CounterStatistic;

    invoke-virtual {v1}, Lorg/eclipse/jetty/util/statistic/CounterStatistic;->increment()V

    .line 113
    invoke-virtual {p2}, Lorg/eclipse/jetty/server/Request;->getTimeStamp()J

    move-result-wide v1

    goto :goto_0

    .line 118
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 119
    iget-object v3, p0, Lorg/eclipse/jetty/server/handler/StatisticsHandler;->_suspendStats:Lorg/eclipse/jetty/util/statistic/CounterStatistic;

    invoke-virtual {v3}, Lorg/eclipse/jetty/util/statistic/CounterStatistic;->decrement()V

    .line 120
    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AsyncContinuation;->isResumed()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 121
    iget-object v3, p0, Lorg/eclipse/jetty/server/handler/StatisticsHandler;->_resumes:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 126
    :cond_1
    :goto_0
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Lorg/eclipse/jetty/server/handler/HandlerWrapper;->handle(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p3

    sub-long v3, p3, v1

    .line 133
    iget-object p1, p0, Lorg/eclipse/jetty/server/handler/StatisticsHandler;->_dispatchedStats:Lorg/eclipse/jetty/util/statistic/CounterStatistic;

    invoke-virtual {p1}, Lorg/eclipse/jetty/util/statistic/CounterStatistic;->decrement()V

    .line 134
    iget-object p1, p0, Lorg/eclipse/jetty/server/handler/StatisticsHandler;->_dispatchedTimeStats:Lorg/eclipse/jetty/util/statistic/SampleStatistic;

    invoke-virtual {p1, v3, v4}, Lorg/eclipse/jetty/util/statistic/SampleStatistic;->set(J)V

    .line 136
    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AsyncContinuation;->isSuspended()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 138
    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AsyncContinuation;->isInitial()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 139
    iget-object p1, p0, Lorg/eclipse/jetty/server/handler/StatisticsHandler;->_onCompletion:Lorg/eclipse/jetty/continuation/ContinuationListener;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/server/AsyncContinuation;->addContinuationListener(Lorg/eclipse/jetty/continuation/ContinuationListener;)V

    .line 140
    :cond_2
    iget-object p1, p0, Lorg/eclipse/jetty/server/handler/StatisticsHandler;->_suspendStats:Lorg/eclipse/jetty/util/statistic/CounterStatistic;

    invoke-virtual {p1}, Lorg/eclipse/jetty/util/statistic/CounterStatistic;->increment()V

    goto :goto_1

    .line 142
    :cond_3
    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AsyncContinuation;->isInitial()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 144
    iget-object p1, p0, Lorg/eclipse/jetty/server/handler/StatisticsHandler;->_requestStats:Lorg/eclipse/jetty/util/statistic/CounterStatistic;

    invoke-virtual {p1}, Lorg/eclipse/jetty/util/statistic/CounterStatistic;->decrement()V

    .line 145
    iget-object p1, p0, Lorg/eclipse/jetty/server/handler/StatisticsHandler;->_requestTimeStats:Lorg/eclipse/jetty/util/statistic/SampleStatistic;

    invoke-virtual {p1, v3, v4}, Lorg/eclipse/jetty/util/statistic/SampleStatistic;->set(J)V

    .line 146
    invoke-direct {p0, p2}, Lorg/eclipse/jetty/server/handler/StatisticsHandler;->updateResponse(Lorg/eclipse/jetty/server/Request;)V

    :cond_4
    :goto_1
    return-void

    :catchall_0
    move-exception p1

    .line 130
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p3

    sub-long v3, p3, v1

    .line 133
    iget-object p3, p0, Lorg/eclipse/jetty/server/handler/StatisticsHandler;->_dispatchedStats:Lorg/eclipse/jetty/util/statistic/CounterStatistic;

    invoke-virtual {p3}, Lorg/eclipse/jetty/util/statistic/CounterStatistic;->decrement()V

    .line 134
    iget-object p3, p0, Lorg/eclipse/jetty/server/handler/StatisticsHandler;->_dispatchedTimeStats:Lorg/eclipse/jetty/util/statistic/SampleStatistic;

    invoke-virtual {p3, v3, v4}, Lorg/eclipse/jetty/util/statistic/SampleStatistic;->set(J)V

    .line 136
    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AsyncContinuation;->isSuspended()Z

    move-result p3

    if-eqz p3, :cond_6

    .line 138
    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AsyncContinuation;->isInitial()Z

    move-result p2

    if-eqz p2, :cond_5

    .line 139
    iget-object p2, p0, Lorg/eclipse/jetty/server/handler/StatisticsHandler;->_onCompletion:Lorg/eclipse/jetty/continuation/ContinuationListener;

    invoke-virtual {v0, p2}, Lorg/eclipse/jetty/server/AsyncContinuation;->addContinuationListener(Lorg/eclipse/jetty/continuation/ContinuationListener;)V

    .line 140
    :cond_5
    iget-object p2, p0, Lorg/eclipse/jetty/server/handler/StatisticsHandler;->_suspendStats:Lorg/eclipse/jetty/util/statistic/CounterStatistic;

    invoke-virtual {p2}, Lorg/eclipse/jetty/util/statistic/CounterStatistic;->increment()V

    goto :goto_2

    .line 142
    :cond_6
    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AsyncContinuation;->isInitial()Z

    move-result p3

    if-eqz p3, :cond_7

    .line 144
    iget-object p3, p0, Lorg/eclipse/jetty/server/handler/StatisticsHandler;->_requestStats:Lorg/eclipse/jetty/util/statistic/CounterStatistic;

    invoke-virtual {p3}, Lorg/eclipse/jetty/util/statistic/CounterStatistic;->decrement()V

    .line 145
    iget-object p3, p0, Lorg/eclipse/jetty/server/handler/StatisticsHandler;->_requestTimeStats:Lorg/eclipse/jetty/util/statistic/SampleStatistic;

    invoke-virtual {p3, v3, v4}, Lorg/eclipse/jetty/util/statistic/SampleStatistic;->set(J)V

    .line 146
    invoke-direct {p0, p2}, Lorg/eclipse/jetty/server/handler/StatisticsHandler;->updateResponse(Lorg/eclipse/jetty/server/Request;)V

    .line 149
    :cond_7
    :goto_2
    throw p1
.end method

.method public statsReset()V
    .locals 3

    .line 84
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/StatisticsHandler;->_statsStartedAt:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 86
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/StatisticsHandler;->_requestStats:Lorg/eclipse/jetty/util/statistic/CounterStatistic;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/statistic/CounterStatistic;->reset()V

    .line 87
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/StatisticsHandler;->_requestTimeStats:Lorg/eclipse/jetty/util/statistic/SampleStatistic;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/statistic/SampleStatistic;->reset()V

    .line 88
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/StatisticsHandler;->_dispatchedStats:Lorg/eclipse/jetty/util/statistic/CounterStatistic;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/statistic/CounterStatistic;->reset()V

    .line 89
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/StatisticsHandler;->_dispatchedTimeStats:Lorg/eclipse/jetty/util/statistic/SampleStatistic;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/statistic/SampleStatistic;->reset()V

    .line 90
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/StatisticsHandler;->_suspendStats:Lorg/eclipse/jetty/util/statistic/CounterStatistic;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/statistic/CounterStatistic;->reset()V

    .line 92
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/StatisticsHandler;->_resumes:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 93
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/StatisticsHandler;->_expires:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 94
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/StatisticsHandler;->_responses1xx:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 95
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/StatisticsHandler;->_responses2xx:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 96
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/StatisticsHandler;->_responses3xx:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 97
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/StatisticsHandler;->_responses4xx:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 98
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/StatisticsHandler;->_responses5xx:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 99
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/StatisticsHandler;->_responsesTotalBytes:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    return-void
.end method

.method public toStatsHTML()Ljava/lang/String;
    .locals 3

    .line 434
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<h1>Statistics:</h1>\n"

    .line 436
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Statistics gathering started "

    .line 437
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/StatisticsHandler;->getStatsOnMs()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "ms ago"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "<br />\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "<h2>Requests:</h2>\n"

    .line 439
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Total requests: "

    .line 440
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/StatisticsHandler;->getRequests()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "<br />\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Active requests: "

    .line 441
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/StatisticsHandler;->getRequestsActive()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "<br />\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Max active requests: "

    .line 442
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/StatisticsHandler;->getRequestsActiveMax()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "<br />\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Total requests time: "

    .line 443
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/StatisticsHandler;->getRequestTimeTotal()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "<br />\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Mean request time: "

    .line 444
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/StatisticsHandler;->getRequestTimeMean()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, "<br />\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Max request time: "

    .line 445
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/StatisticsHandler;->getRequestTimeMax()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "<br />\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Request time standard deviation: "

    .line 446
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/StatisticsHandler;->getRequestTimeStdDev()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, "<br />\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "<h2>Dispatches:</h2>\n"

    .line 449
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Total dispatched: "

    .line 450
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/StatisticsHandler;->getDispatched()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "<br />\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Active dispatched: "

    .line 451
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/StatisticsHandler;->getDispatchedActive()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "<br />\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Max active dispatched: "

    .line 452
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/StatisticsHandler;->getDispatchedActiveMax()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "<br />\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Total dispatched time: "

    .line 453
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/StatisticsHandler;->getDispatchedTimeTotal()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "<br />\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Mean dispatched time: "

    .line 454
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/StatisticsHandler;->getDispatchedTimeMean()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, "<br />\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Max dispatched time: "

    .line 455
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/StatisticsHandler;->getDispatchedTimeMax()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "<br />\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Dispatched time standard deviation: "

    .line 456
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/StatisticsHandler;->getDispatchedTimeStdDev()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, "<br />\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Total requests suspended: "

    .line 459
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/StatisticsHandler;->getSuspends()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "<br />\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Total requests expired: "

    .line 460
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/StatisticsHandler;->getExpires()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "<br />\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Total requests resumed: "

    .line 461
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/StatisticsHandler;->getResumes()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "<br />\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "<h2>Responses:</h2>\n"

    .line 463
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "1xx responses: "

    .line 464
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/StatisticsHandler;->getResponses1xx()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "<br />\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "2xx responses: "

    .line 465
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/StatisticsHandler;->getResponses2xx()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "<br />\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "3xx responses: "

    .line 466
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/StatisticsHandler;->getResponses3xx()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "<br />\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "4xx responses: "

    .line 467
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/StatisticsHandler;->getResponses4xx()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "<br />\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "5xx responses: "

    .line 468
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/StatisticsHandler;->getResponses5xx()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "<br />\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Bytes sent total: "

    .line 469
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/StatisticsHandler;->getResponsesBytesTotal()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "<br />\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 471
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
