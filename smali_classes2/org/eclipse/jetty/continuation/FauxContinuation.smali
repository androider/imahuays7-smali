.class Lorg/eclipse/jetty/continuation/FauxContinuation;
.super Ljava/lang/Object;
.source "FauxContinuation.java"

# interfaces
.implements Lorg/eclipse/jetty/continuation/ContinuationFilter$FilteredContinuation;


# static fields
.field private static final __COMPLETE:I = 0x7

.field private static final __COMPLETING:I = 0x4

.field private static final __HANDLING:I = 0x1

.field private static final __RESUMING:I = 0x3

.field private static final __SUSPENDED:I = 0x5

.field private static final __SUSPENDING:I = 0x2

.field private static final __UNSUSPENDING:I = 0x6

.field private static final __exception:Lorg/eclipse/jetty/continuation/ContinuationThrowable;


# instance fields
.field private _initial:Z

.field private _listeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/eclipse/jetty/continuation/ContinuationListener;",
            ">;"
        }
    .end annotation
.end field

.field private final _request:Ljavax/servlet/ServletRequest;

.field private _response:Ljavax/servlet/ServletResponse;

.field private _responseWrapped:Z

.field private _resumed:Z

.field private _state:I

.field private _timeout:Z

.field private _timeoutMs:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    new-instance v0, Lorg/eclipse/jetty/continuation/ContinuationThrowable;

    invoke-direct {v0}, Lorg/eclipse/jetty/continuation/ContinuationThrowable;-><init>()V

    sput-object v0, Lorg/eclipse/jetty/continuation/FauxContinuation;->__exception:Lorg/eclipse/jetty/continuation/ContinuationThrowable;

    return-void
.end method

.method constructor <init>(Ljavax/servlet/ServletRequest;)V
    .locals 2

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 54
    iput v0, p0, Lorg/eclipse/jetty/continuation/FauxContinuation;->_state:I

    .line 55
    iput-boolean v0, p0, Lorg/eclipse/jetty/continuation/FauxContinuation;->_initial:Z

    const/4 v0, 0x0

    .line 56
    iput-boolean v0, p0, Lorg/eclipse/jetty/continuation/FauxContinuation;->_resumed:Z

    .line 57
    iput-boolean v0, p0, Lorg/eclipse/jetty/continuation/FauxContinuation;->_timeout:Z

    .line 58
    iput-boolean v0, p0, Lorg/eclipse/jetty/continuation/FauxContinuation;->_responseWrapped:Z

    const-wide/16 v0, 0x7530

    .line 59
    iput-wide v0, p0, Lorg/eclipse/jetty/continuation/FauxContinuation;->_timeoutMs:J

    .line 65
    iput-object p1, p0, Lorg/eclipse/jetty/continuation/FauxContinuation;->_request:Ljavax/servlet/ServletRequest;

    return-void
.end method

.method private fauxResume()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 429
    iput-wide v0, p0, Lorg/eclipse/jetty/continuation/FauxContinuation;->_timeoutMs:J

    .line 430
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    return-void
.end method

.method private fauxSuspend()V
    .locals 9

    .line 408
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/eclipse/jetty/continuation/FauxContinuation;->_timeoutMs:J

    add-long v4, v0, v2

    .line 409
    iget-wide v0, p0, Lorg/eclipse/jetty/continuation/FauxContinuation;->_timeoutMs:J

    .line 410
    :goto_0
    iget-wide v2, p0, Lorg/eclipse/jetty/continuation/FauxContinuation;->_timeoutMs:J

    const-wide/16 v6, 0x0

    cmp-long v8, v2, v6

    if-lez v8, :cond_0

    cmp-long v2, v0, v6

    if-lez v2, :cond_0

    .line 414
    :try_start_0
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 420
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long v2, v4, v0

    move-wide v0, v2

    goto :goto_0

    .line 423
    :catch_0
    :cond_0
    iget-wide v2, p0, Lorg/eclipse/jetty/continuation/FauxContinuation;->_timeoutMs:J

    cmp-long v4, v2, v6

    if-lez v4, :cond_1

    cmp-long v2, v0, v6

    if-gtz v2, :cond_1

    .line 424
    invoke-virtual {p0}, Lorg/eclipse/jetty/continuation/FauxContinuation;->expire()V

    :cond_1
    return-void
.end method


# virtual methods
.method public addContinuationListener(Lorg/eclipse/jetty/continuation/ContinuationListener;)V
    .locals 1

    .line 460
    iget-object v0, p0, Lorg/eclipse/jetty/continuation/FauxContinuation;->_listeners:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 461
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/continuation/FauxContinuation;->_listeners:Ljava/util/ArrayList;

    .line 462
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/continuation/FauxContinuation;->_listeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public complete()V
    .locals 2

    .line 230
    monitor-enter p0

    .line 232
    :try_start_0
    iget v0, p0, Lorg/eclipse/jetty/continuation/FauxContinuation;->_state:I

    const/4 v1, 0x4

    packed-switch v0, :pswitch_data_0

    .line 256
    new-instance v0, Ljava/lang/IllegalStateException;

    goto :goto_1

    .line 253
    :pswitch_0
    monitor-exit p0

    return-void

    .line 248
    :pswitch_1
    iput v1, p0, Lorg/eclipse/jetty/continuation/FauxContinuation;->_state:I

    .line 249
    invoke-direct {p0}, Lorg/eclipse/jetty/continuation/FauxContinuation;->fauxResume()V

    goto :goto_0

    .line 245
    :pswitch_2
    monitor-exit p0

    return-void

    .line 238
    :pswitch_3
    iput v1, p0, Lorg/eclipse/jetty/continuation/FauxContinuation;->_state:I

    .line 258
    :goto_0
    :pswitch_4
    monitor-exit p0

    return-void

    .line 235
    :pswitch_5
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Lorg/eclipse/jetty/continuation/FauxContinuation;->getStatusString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 256
    :goto_1
    invoke-virtual {p0}, Lorg/eclipse/jetty/continuation/FauxContinuation;->getStatusString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    .line 258
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public enter(Ljavax/servlet/ServletResponse;)Z
    .locals 0

    .line 267
    iput-object p1, p0, Lorg/eclipse/jetty/continuation/FauxContinuation;->_response:Ljavax/servlet/ServletResponse;

    const/4 p1, 0x1

    return p1
.end method

.method public exit()Z
    .locals 4

    .line 318
    monitor-enter p0

    .line 320
    :try_start_0
    iget v0, p0, Lorg/eclipse/jetty/continuation/FauxContinuation;->_state:I

    const/4 v1, 0x7

    const/4 v2, 0x1

    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_0

    .line 355
    new-instance v0, Ljava/lang/IllegalStateException;

    goto :goto_1

    .line 347
    :pswitch_0
    iput-boolean v3, p0, Lorg/eclipse/jetty/continuation/FauxContinuation;->_initial:Z

    .line 348
    iput v1, p0, Lorg/eclipse/jetty/continuation/FauxContinuation;->_state:I

    .line 349
    invoke-virtual {p0}, Lorg/eclipse/jetty/continuation/FauxContinuation;->onComplete()V

    .line 350
    monitor-exit p0

    return v2

    .line 342
    :pswitch_1
    iput-boolean v3, p0, Lorg/eclipse/jetty/continuation/FauxContinuation;->_initial:Z

    .line 343
    iput v2, p0, Lorg/eclipse/jetty/continuation/FauxContinuation;->_state:I

    .line 344
    monitor-exit p0

    return v3

    .line 328
    :pswitch_2
    iput-boolean v3, p0, Lorg/eclipse/jetty/continuation/FauxContinuation;->_initial:Z

    const/4 v0, 0x5

    .line 329
    iput v0, p0, Lorg/eclipse/jetty/continuation/FauxContinuation;->_state:I

    .line 330
    invoke-direct {p0}, Lorg/eclipse/jetty/continuation/FauxContinuation;->fauxSuspend()V

    .line 331
    iget v1, p0, Lorg/eclipse/jetty/continuation/FauxContinuation;->_state:I

    if-eq v1, v0, :cond_1

    iget v0, p0, Lorg/eclipse/jetty/continuation/FauxContinuation;->_state:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 337
    :cond_0
    iput-boolean v3, p0, Lorg/eclipse/jetty/continuation/FauxContinuation;->_initial:Z

    .line 338
    iput v2, p0, Lorg/eclipse/jetty/continuation/FauxContinuation;->_state:I

    .line 339
    monitor-exit p0

    return v3

    .line 333
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/continuation/FauxContinuation;->onComplete()V

    .line 334
    monitor-exit p0

    return v2

    .line 323
    :pswitch_3
    iput v1, p0, Lorg/eclipse/jetty/continuation/FauxContinuation;->_state:I

    .line 324
    invoke-virtual {p0}, Lorg/eclipse/jetty/continuation/FauxContinuation;->onComplete()V

    .line 325
    monitor-exit p0

    return v2

    .line 355
    :goto_1
    invoke-virtual {p0}, Lorg/eclipse/jetty/continuation/FauxContinuation;->getStatusString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    .line 357
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected expire()V
    .locals 2

    .line 365
    monitor-enter p0

    const/4 v0, 0x1

    .line 367
    :try_start_0
    iput-boolean v0, p0, Lorg/eclipse/jetty/continuation/FauxContinuation;->_timeout:Z

    .line 368
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 370
    invoke-virtual {p0}, Lorg/eclipse/jetty/continuation/FauxContinuation;->onTimeout()V

    .line 372
    monitor-enter p0

    .line 374
    :try_start_1
    iget v1, p0, Lorg/eclipse/jetty/continuation/FauxContinuation;->_state:I

    packed-switch v1, :pswitch_data_0

    .line 401
    new-instance v0, Ljava/lang/IllegalStateException;

    goto :goto_0

    .line 397
    :pswitch_0
    iput-boolean v0, p0, Lorg/eclipse/jetty/continuation/FauxContinuation;->_timeout:Z

    .line 398
    monitor-exit p0

    return-void

    .line 392
    :pswitch_1
    iput-boolean v0, p0, Lorg/eclipse/jetty/continuation/FauxContinuation;->_timeout:Z

    const/4 v0, 0x6

    .line 393
    iput v0, p0, Lorg/eclipse/jetty/continuation/FauxContinuation;->_state:I

    .line 403
    monitor-exit p0

    return-void

    .line 389
    :pswitch_2
    monitor-exit p0

    return-void

    .line 386
    :pswitch_3
    monitor-exit p0

    return-void

    .line 380
    :pswitch_4
    iput-boolean v0, p0, Lorg/eclipse/jetty/continuation/FauxContinuation;->_timeout:Z

    const/4 v0, 0x3

    .line 381
    iput v0, p0, Lorg/eclipse/jetty/continuation/FauxContinuation;->_state:I

    .line 382
    invoke-direct {p0}, Lorg/eclipse/jetty/continuation/FauxContinuation;->fauxResume()V

    .line 383
    monitor-exit p0

    return-void

    .line 377
    :pswitch_5
    monitor-exit p0

    return-void

    .line 401
    :goto_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/continuation/FauxContinuation;->getStatusString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    .line 403
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    .line 368
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getAttribute(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 472
    iget-object v0, p0, Lorg/eclipse/jetty/continuation/FauxContinuation;->_request:Ljavax/servlet/ServletRequest;

    invoke-interface {v0, p1}, Ljavax/servlet/ServletRequest;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getServletResponse()Ljavax/servlet/ServletResponse;
    .locals 1

    .line 277
    iget-object v0, p0, Lorg/eclipse/jetty/continuation/FauxContinuation;->_response:Ljavax/servlet/ServletResponse;

    return-object v0
.end method

.method getStatusString()Ljava/lang/String;
    .locals 3

    .line 441
    monitor-enter p0

    .line 443
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lorg/eclipse/jetty/continuation/FauxContinuation;->_state:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const-string v1, "HANDLING"

    goto :goto_0

    :cond_0
    iget v1, p0, Lorg/eclipse/jetty/continuation/FauxContinuation;->_state:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    const-string v1, "SUSPENDING"

    goto :goto_0

    :cond_1
    iget v1, p0, Lorg/eclipse/jetty/continuation/FauxContinuation;->_state:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_2

    const-string v1, "SUSPENDED"

    goto :goto_0

    :cond_2
    iget v1, p0, Lorg/eclipse/jetty/continuation/FauxContinuation;->_state:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    const-string v1, "RESUMING"

    goto :goto_0

    :cond_3
    iget v1, p0, Lorg/eclipse/jetty/continuation/FauxContinuation;->_state:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_4

    const-string v1, "UNSUSPENDING"

    goto :goto_0

    :cond_4
    iget v1, p0, Lorg/eclipse/jetty/continuation/FauxContinuation;->_state:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_5

    const-string v1, "COMPLETING"

    goto :goto_0

    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "???"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/eclipse/jetty/continuation/FauxContinuation;->_state:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lorg/eclipse/jetty/continuation/FauxContinuation;->_initial:Z

    if-eqz v1, :cond_6

    const-string v1, ",initial"

    goto :goto_1

    :cond_6
    const-string v1, ""

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lorg/eclipse/jetty/continuation/FauxContinuation;->_resumed:Z

    if-eqz v1, :cond_7

    const-string v1, ",resumed"

    goto :goto_2

    :cond_7
    const-string v1, ""

    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lorg/eclipse/jetty/continuation/FauxContinuation;->_timeout:Z

    if-eqz v1, :cond_8

    const-string v1, ",timeout"

    goto :goto_3

    :cond_8
    const-string v1, ""

    :goto_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 454
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method handling()V
    .locals 3

    .line 284
    monitor-enter p0

    const/4 v0, 0x0

    .line 286
    :try_start_0
    iput-boolean v0, p0, Lorg/eclipse/jetty/continuation/FauxContinuation;->_responseWrapped:Z

    .line 287
    iget v0, p0, Lorg/eclipse/jetty/continuation/FauxContinuation;->_state:I

    packed-switch v0, :pswitch_data_0

    .line 306
    new-instance v0, Ljava/lang/IllegalStateException;

    goto :goto_0

    .line 300
    :pswitch_0
    invoke-direct {p0}, Lorg/eclipse/jetty/continuation/FauxContinuation;->fauxResume()V

    :pswitch_1
    const/4 v0, 0x1

    .line 302
    iput v0, p0, Lorg/eclipse/jetty/continuation/FauxContinuation;->_state:I

    .line 303
    monitor-exit p0

    return-void

    .line 297
    :pswitch_2
    monitor-exit p0

    return-void

    .line 294
    :pswitch_3
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Lorg/eclipse/jetty/continuation/FauxContinuation;->getStatusString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 290
    :pswitch_4
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Lorg/eclipse/jetty/continuation/FauxContinuation;->getStatusString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 306
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/eclipse/jetty/continuation/FauxContinuation;->_state:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    .line 309
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public isExpired()Z
    .locals 1

    .line 135
    monitor-enter p0

    .line 137
    :try_start_0
    iget-boolean v0, p0, Lorg/eclipse/jetty/continuation/FauxContinuation;->_timeout:Z

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

.method public isInitial()Z
    .locals 1

    .line 96
    monitor-enter p0

    .line 98
    :try_start_0
    iget-boolean v0, p0, Lorg/eclipse/jetty/continuation/FauxContinuation;->_initial:Z

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    .line 99
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isResponseWrapped()Z
    .locals 1

    .line 90
    iget-boolean v0, p0, Lorg/eclipse/jetty/continuation/FauxContinuation;->_responseWrapped:Z

    return v0
.end method

.method public isResumed()Z
    .locals 1

    .line 105
    monitor-enter p0

    .line 107
    :try_start_0
    iget-boolean v0, p0, Lorg/eclipse/jetty/continuation/FauxContinuation;->_resumed:Z

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    .line 108
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isSuspended()Z
    .locals 2

    .line 114
    monitor-enter p0

    .line 116
    :try_start_0
    iget v0, p0, Lorg/eclipse/jetty/continuation/FauxContinuation;->_state:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 127
    monitor-exit p0

    goto :goto_0

    :pswitch_0
    const/4 v0, 0x1

    .line 124
    monitor-exit p0

    return v0

    .line 119
    :pswitch_1
    monitor-exit p0

    return v1

    :goto_0
    return v1

    :catchall_0
    move-exception v0

    .line 129
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onComplete()V
    .locals 2

    .line 71
    iget-object v0, p0, Lorg/eclipse/jetty/continuation/FauxContinuation;->_listeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lorg/eclipse/jetty/continuation/FauxContinuation;->_listeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jetty/continuation/ContinuationListener;

    .line 73
    invoke-interface {v1, p0}, Lorg/eclipse/jetty/continuation/ContinuationListener;->onComplete(Lorg/eclipse/jetty/continuation/Continuation;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onTimeout()V
    .locals 2

    .line 79
    iget-object v0, p0, Lorg/eclipse/jetty/continuation/FauxContinuation;->_listeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lorg/eclipse/jetty/continuation/FauxContinuation;->_listeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jetty/continuation/ContinuationListener;

    .line 81
    invoke-interface {v1, p0}, Lorg/eclipse/jetty/continuation/ContinuationListener;->onTimeout(Lorg/eclipse/jetty/continuation/Continuation;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public removeAttribute(Ljava/lang/String;)V
    .locals 1

    .line 481
    iget-object v0, p0, Lorg/eclipse/jetty/continuation/FauxContinuation;->_request:Ljavax/servlet/ServletRequest;

    invoke-interface {v0, p1}, Ljavax/servlet/ServletRequest;->removeAttribute(Ljava/lang/String;)V

    return-void
.end method

.method public resume()V
    .locals 2

    .line 191
    monitor-enter p0

    .line 193
    :try_start_0
    iget v0, p0, Lorg/eclipse/jetty/continuation/FauxContinuation;->_state:I

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    .line 219
    new-instance v0, Ljava/lang/IllegalStateException;

    goto :goto_0

    .line 215
    :pswitch_0
    iput-boolean v1, p0, Lorg/eclipse/jetty/continuation/FauxContinuation;->_resumed:Z

    .line 216
    monitor-exit p0

    return-void

    .line 209
    :pswitch_1
    invoke-direct {p0}, Lorg/eclipse/jetty/continuation/FauxContinuation;->fauxResume()V

    .line 210
    iput-boolean v1, p0, Lorg/eclipse/jetty/continuation/FauxContinuation;->_resumed:Z

    const/4 v0, 0x6

    .line 211
    iput v0, p0, Lorg/eclipse/jetty/continuation/FauxContinuation;->_state:I

    .line 221
    monitor-exit p0

    return-void

    .line 206
    :pswitch_2
    monitor-exit p0

    return-void

    .line 200
    :pswitch_3
    iput-boolean v1, p0, Lorg/eclipse/jetty/continuation/FauxContinuation;->_resumed:Z

    const/4 v0, 0x3

    .line 201
    iput v0, p0, Lorg/eclipse/jetty/continuation/FauxContinuation;->_state:I

    .line 202
    monitor-exit p0

    return-void

    .line 196
    :pswitch_4
    iput-boolean v1, p0, Lorg/eclipse/jetty/continuation/FauxContinuation;->_resumed:Z

    .line 197
    monitor-exit p0

    return-void

    .line 219
    :goto_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/continuation/FauxContinuation;->getStatusString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    .line 221
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 490
    iget-object v0, p0, Lorg/eclipse/jetty/continuation/FauxContinuation;->_request:Ljavax/servlet/ServletRequest;

    invoke-interface {v0, p1, p2}, Ljavax/servlet/ServletRequest;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setTimeout(J)V
    .locals 0

    .line 144
    iput-wide p1, p0, Lorg/eclipse/jetty/continuation/FauxContinuation;->_timeoutMs:J

    return-void
.end method

.method public suspend()V
    .locals 3

    .line 158
    monitor-enter p0

    .line 160
    :try_start_0
    iget v0, p0, Lorg/eclipse/jetty/continuation/FauxContinuation;->_state:I

    packed-switch v0, :pswitch_data_0

    .line 178
    new-instance v0, Ljava/lang/IllegalStateException;

    goto :goto_0

    .line 175
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Lorg/eclipse/jetty/continuation/FauxContinuation;->getStatusString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 170
    :pswitch_1
    monitor-exit p0

    return-void

    :pswitch_2
    const/4 v0, 0x0

    .line 163
    iput-boolean v0, p0, Lorg/eclipse/jetty/continuation/FauxContinuation;->_timeout:Z

    .line 164
    iput-boolean v0, p0, Lorg/eclipse/jetty/continuation/FauxContinuation;->_resumed:Z

    const/4 v0, 0x2

    .line 165
    iput v0, p0, Lorg/eclipse/jetty/continuation/FauxContinuation;->_state:I

    .line 166
    monitor-exit p0

    return-void

    .line 178
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/eclipse/jetty/continuation/FauxContinuation;->_state:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    .line 181
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public suspend(Ljavax/servlet/ServletResponse;)V
    .locals 0

    .line 150
    iput-object p1, p0, Lorg/eclipse/jetty/continuation/FauxContinuation;->_response:Ljavax/servlet/ServletResponse;

    .line 151
    instance-of p1, p1, Ljavax/servlet/ServletResponseWrapper;

    iput-boolean p1, p0, Lorg/eclipse/jetty/continuation/FauxContinuation;->_responseWrapped:Z

    .line 152
    invoke-virtual {p0}, Lorg/eclipse/jetty/continuation/FauxContinuation;->suspend()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 436
    invoke-virtual {p0}, Lorg/eclipse/jetty/continuation/FauxContinuation;->getStatusString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public undispatch()V
    .locals 2

    .line 499
    invoke-virtual {p0}, Lorg/eclipse/jetty/continuation/FauxContinuation;->isSuspended()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 501
    sget-boolean v0, Lorg/eclipse/jetty/continuation/ContinuationFilter;->__debug:Z

    if-eqz v0, :cond_0

    .line 502
    new-instance v0, Lorg/eclipse/jetty/continuation/ContinuationThrowable;

    invoke-direct {v0}, Lorg/eclipse/jetty/continuation/ContinuationThrowable;-><init>()V

    throw v0

    .line 503
    :cond_0
    sget-object v0, Lorg/eclipse/jetty/continuation/FauxContinuation;->__exception:Lorg/eclipse/jetty/continuation/ContinuationThrowable;

    throw v0

    .line 505
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "!suspended"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
