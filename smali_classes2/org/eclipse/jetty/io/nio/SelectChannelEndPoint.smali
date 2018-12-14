.class public Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;
.super Lorg/eclipse/jetty/io/nio/ChannelEndPoint;
.source "SelectChannelEndPoint.java"

# interfaces
.implements Lorg/eclipse/jetty/io/AsyncEndPoint;
.implements Lorg/eclipse/jetty/io/ConnectedEndPoint;


# static fields
.field public static final LOG:Lorg/eclipse/jetty/util/log/Logger;

.field private static final STATE_ASYNC:I = 0x2

.field private static final STATE_DISPATCHED:I = 0x1

.field private static final STATE_NEEDS_DISPATCH:I = -0x1

.field private static final STATE_UNDISPATCHED:I


# instance fields
.field private final WORK_AROUND_JVM_BUG_6346658:Z

.field private volatile _checkIdle:Z

.field private volatile _connection:Lorg/eclipse/jetty/io/nio/AsyncConnection;

.field private final _handler:Ljava/lang/Runnable;

.field private volatile _idleTimestamp:J

.field private _interestOps:I

.field private _ishut:Z

.field private _key:Ljava/nio/channels/SelectionKey;

.field private final _manager:Lorg/eclipse/jetty/io/nio/SelectorManager;

.field private _onIdle:Z

.field private _open:Z

.field private _readBlocked:Z

.field private final _selectSet:Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;

.field private _state:I

.field private volatile _writable:Z

.field private _writeBlocked:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "org.eclipse.jetty.io.nio"

    .line 44
    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/String;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/nio/channels/SocketChannel;Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;Ljava/nio/channels/SelectionKey;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 96
    invoke-direct {p0, p1, p4}, Lorg/eclipse/jetty/io/nio/ChannelEndPoint;-><init>(Ljava/nio/channels/ByteChannel;I)V

    const-string p1, "os.name"

    .line 46
    invoke-static {p1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget-object p4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, p4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    const-string p4, "win"

    invoke-virtual {p1, p4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    iput-boolean p1, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->WORK_AROUND_JVM_BUG_6346658:Z

    .line 50
    new-instance p1, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint$1;

    invoke-direct {p1, p0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint$1;-><init>(Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;)V

    iput-object p1, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_handler:Ljava/lang/Runnable;

    const/4 p1, 0x1

    .line 75
    iput-boolean p1, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_writable:Z

    .line 98
    invoke-virtual {p2}, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->getManager()Lorg/eclipse/jetty/io/nio/SelectorManager;

    move-result-object p4

    iput-object p4, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_manager:Lorg/eclipse/jetty/io/nio/SelectorManager;

    .line 99
    iput-object p2, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_selectSet:Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;

    const/4 p2, 0x0

    .line 100
    iput p2, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_state:I

    .line 101
    iput-boolean p2, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_onIdle:Z

    .line 102
    iput-boolean p1, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_open:Z

    .line 103
    iput-object p3, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_key:Ljava/nio/channels/SelectionKey;

    .line 105
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->setCheckForIdle(Z)V

    return-void
.end method

.method private updateKey()V
    .locals 6

    .line 552
    monitor-enter p0

    .line 555
    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->getChannel()Ljava/nio/channels/ByteChannel;

    move-result-object v0

    invoke-interface {v0}, Ljava/nio/channels/ByteChannel;->isOpen()Z

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_6

    .line 557
    iget-boolean v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_readBlocked:Z

    if-nez v0, :cond_1

    iget v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_state:I

    if-ge v0, v3, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_connection:Lorg/eclipse/jetty/io/nio/AsyncConnection;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/nio/AsyncConnection;->isSuspended()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 558
    :goto_1
    iget-boolean v4, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_writeBlocked:Z

    if-nez v4, :cond_3

    iget v4, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_state:I

    if-ge v4, v3, :cond_2

    iget-boolean v4, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_writable:Z

    if-nez v4, :cond_2

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    const/4 v4, 0x1

    .line 560
    :goto_3
    iget-object v5, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_socket:Ljava/net/Socket;

    invoke-virtual {v5}, Ljava/net/Socket;->isInputShutdown()Z

    move-result v5

    if-nez v5, :cond_4

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    goto :goto_4

    :cond_4
    const/4 v0, 0x0

    :goto_4
    iget-object v5, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_socket:Ljava/net/Socket;

    invoke-virtual {v5}, Ljava/net/Socket;->isOutputShutdown()Z

    move-result v5

    if-nez v5, :cond_5

    if-eqz v4, :cond_5

    const/4 v4, 0x4

    goto :goto_5

    :cond_5
    const/4 v4, 0x0

    :goto_5
    or-int/2addr v0, v4

    iput v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_interestOps:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 565
    :try_start_1
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_key:Ljava/nio/channels/SelectionKey;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_key:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_key:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->interestOps()I

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v1, v0

    goto :goto_6

    :catch_0
    move-exception v0

    const/4 v4, 0x0

    .line 569
    :try_start_2
    iput-object v4, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_key:Ljava/nio/channels/SelectionKey;

    .line 570
    sget-object v4, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v4, v0}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    .line 573
    :cond_6
    :goto_6
    iget v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_interestOps:I

    if-eq v0, v1, :cond_7

    const/4 v2, 0x1

    .line 574
    :cond_7
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_8

    .line 578
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_selectSet:Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;

    invoke-virtual {v0, p0}, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->addChange(Ljava/lang/Object;)V

    .line 579
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_selectSet:Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;

    invoke-virtual {v0}, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->wakeup()V

    :cond_8
    return-void

    :catchall_0
    move-exception v0

    .line 574
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method


# virtual methods
.method public asyncDispatch()V
    .locals 1

    .line 207
    monitor-enter p0

    .line 209
    :try_start_0
    iget v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_state:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/4 v0, 0x2

    .line 218
    iput v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_state:I

    goto :goto_0

    .line 213
    :pswitch_1
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->dispatch()V

    .line 221
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public blockReadable(J)Z
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 430
    monitor-enter p0

    .line 432
    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->isInputShutdown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 433
    new-instance p1, Lorg/eclipse/jetty/io/EofException;

    invoke-direct {p1}, Lorg/eclipse/jetty/io/EofException;-><init>()V

    throw p1

    .line 435
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_selectSet:Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;

    invoke-virtual {v0}, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->getNow()J

    move-result-wide v0

    const/4 v2, 0x0

    add-long v2, v0, p1

    .line 437
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->isCheckForIdle()Z

    move-result v4

    const/4 v5, 0x1

    .line 438
    invoke-virtual {p0, v5}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->setCheckForIdle(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v6, 0x0

    .line 441
    :try_start_1
    iput-boolean v5, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_readBlocked:Z

    .line 442
    :cond_1
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->isInputShutdown()Z

    move-result v7

    if-nez v7, :cond_3

    iget-boolean v7, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_readBlocked:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v7, :cond_3

    const-wide/16 v7, 0x0

    .line 446
    :try_start_2
    invoke-direct {p0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->updateKey()V

    cmp-long v9, p1, v7

    if-lez v9, :cond_2

    sub-long v9, v2, v0

    goto :goto_0

    :cond_2
    const-wide/16 v9, 0x2710

    .line 447
    :goto_0
    invoke-virtual {p0, v9, v10}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 455
    :try_start_3
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_selectSet:Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;

    :goto_1
    invoke-virtual {v0}, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->getNow()J

    move-result-wide v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception v0

    .line 451
    :try_start_4
    sget-object v1, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v1, v0}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 455
    :try_start_5
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_selectSet:Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;

    goto :goto_1

    .line 458
    :goto_2
    iget-boolean v9, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_readBlocked:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v9, :cond_1

    cmp-long v9, p1, v7

    if-lez v9, :cond_1

    cmp-long v7, v0, v2

    if-ltz v7, :cond_1

    .line 464
    :try_start_6
    iput-boolean v6, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_readBlocked:Z

    .line 465
    invoke-virtual {p0, v4}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->setCheckForIdle(Z)V

    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    return v6

    .line 455
    :goto_3
    :try_start_7
    iget-object p2, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_selectSet:Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;

    invoke-virtual {p2}, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->getNow()J

    throw p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 464
    :cond_3
    :try_start_8
    iput-boolean v6, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_readBlocked:Z

    .line 465
    invoke-virtual {p0, v4}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->setCheckForIdle(Z)V

    .line 467
    monitor-exit p0

    return v5

    :catchall_1
    move-exception p1

    .line 464
    iput-boolean v6, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_readBlocked:Z

    .line 465
    invoke-virtual {p0, v4}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->setCheckForIdle(Z)V

    throw p1

    :catchall_2
    move-exception p1

    .line 467
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    throw p1
.end method

.method public blockWritable(J)Z
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 478
    monitor-enter p0

    .line 480
    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->isOutputShutdown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 481
    new-instance p1, Lorg/eclipse/jetty/io/EofException;

    invoke-direct {p1}, Lorg/eclipse/jetty/io/EofException;-><init>()V

    throw p1

    .line 483
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_selectSet:Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;

    invoke-virtual {v0}, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->getNow()J

    move-result-wide v0

    const/4 v2, 0x0

    add-long v2, v0, p1

    .line 485
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->isCheckForIdle()Z

    move-result v4

    const/4 v5, 0x1

    .line 486
    invoke-virtual {p0, v5}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->setCheckForIdle(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v6, 0x0

    .line 489
    :try_start_1
    iput-boolean v5, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_writeBlocked:Z

    .line 490
    :cond_1
    iget-boolean v7, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_writeBlocked:Z

    if-eqz v7, :cond_3

    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->isOutputShutdown()Z

    move-result v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v7, :cond_3

    const-wide/16 v7, 0x0

    .line 494
    :try_start_2
    invoke-direct {p0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->updateKey()V

    cmp-long v9, p1, v7

    if-lez v9, :cond_2

    sub-long v9, v2, v0

    goto :goto_0

    :cond_2
    const-wide/16 v9, 0x2710

    .line 495
    :goto_0
    invoke-virtual {p0, v9, v10}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 503
    :try_start_3
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_selectSet:Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;

    :goto_1
    invoke-virtual {v0}, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->getNow()J

    move-result-wide v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception v0

    .line 499
    :try_start_4
    sget-object v1, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v1, v0}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 503
    :try_start_5
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_selectSet:Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;

    goto :goto_1

    .line 505
    :goto_2
    iget-boolean v9, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_writeBlocked:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v9, :cond_1

    cmp-long v9, p1, v7

    if-lez v9, :cond_1

    cmp-long v7, v0, v2

    if-ltz v7, :cond_1

    .line 511
    :try_start_6
    iput-boolean v6, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_writeBlocked:Z

    .line 512
    invoke-virtual {p0, v4}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->setCheckForIdle(Z)V

    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    return v6

    .line 503
    :goto_3
    :try_start_7
    iget-object p2, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_selectSet:Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;

    invoke-virtual {p2}, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->getNow()J

    throw p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 511
    :cond_3
    :try_start_8
    iput-boolean v6, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_writeBlocked:Z

    .line 512
    invoke-virtual {p0, v4}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->setCheckForIdle(Z)V

    .line 514
    monitor-exit p0

    return v5

    :catchall_1
    move-exception p1

    .line 511
    iput-boolean v6, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_writeBlocked:Z

    .line 512
    invoke-virtual {p0, v4}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->setCheckForIdle(Z)V

    throw p1

    :catchall_2
    move-exception p1

    .line 514
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    throw p1
.end method

.method public cancelTimeout(Lorg/eclipse/jetty/util/thread/Timeout$Task;)V
    .locals 1

    .line 276
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->getSelectSet()Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->cancelTimeout(Lorg/eclipse/jetty/util/thread/Timeout$Task;)V

    return-void
.end method

.method public checkIdleTimestamp(J)V
    .locals 4

    .line 312
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->isCheckForIdle()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_maxIdleTime:I

    if-lez v0, :cond_0

    .line 314
    iget-wide v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_idleTimestamp:J

    sub-long v2, p1, v0

    .line 316
    iget p1, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_maxIdleTime:I

    int-to-long p1, p1

    cmp-long v0, v2, p1

    if-lez v0, :cond_0

    const/4 p1, 0x0

    .line 319
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->setCheckForIdle(Z)V

    .line 320
    iget-object p1, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_manager:Lorg/eclipse/jetty/io/nio/SelectorManager;

    new-instance p2, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint$2;

    invoke-direct {p2, p0, v2, v3}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint$2;-><init>(Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;J)V

    invoke-virtual {p1, p2}, Lorg/eclipse/jetty/io/nio/SelectorManager;->dispatch(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 752
    iget-boolean v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->WORK_AROUND_JVM_BUG_6346658:Z

    if-eqz v0, :cond_0

    .line 756
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_key:Ljava/nio/channels/SelectionKey;

    if-eqz v0, :cond_0

    .line 758
    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->cancel()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 762
    sget-object v1, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v1, v0}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    .line 768
    :cond_0
    :goto_0
    :try_start_1
    invoke-super {p0}, Lorg/eclipse/jetty/io/nio/ChannelEndPoint;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 776
    :goto_1
    invoke-direct {p0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->updateKey()V

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    .line 772
    :try_start_2
    sget-object v1, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v1, v0}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :goto_2
    return-void

    .line 776
    :goto_3
    invoke-direct {p0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->updateKey()V

    throw v0
.end method

.method public dispatch()V
    .locals 3

    .line 227
    monitor-enter p0

    .line 229
    :try_start_0
    iget v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_state:I

    if-gtz v0, :cond_1

    .line 231
    iget-boolean v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_onIdle:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    .line 232
    iput v1, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_state:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 235
    iput v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_state:I

    .line 236
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_manager:Lorg/eclipse/jetty/io/nio/SelectorManager;

    iget-object v2, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_handler:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Lorg/eclipse/jetty/io/nio/SelectorManager;->dispatch(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 239
    iput v1, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_state:I

    .line 240
    sget-object v0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Dispatched Failed! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_manager:Lorg/eclipse/jetty/io/nio/SelectorManager;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 241
    invoke-direct {p0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->updateKey()V

    .line 245
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method doUpdateKey()V
    .locals 5

    .line 590
    monitor-enter p0

    .line 592
    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->getChannel()Ljava/nio/channels/ByteChannel;

    move-result-object v0

    invoke-interface {v0}, Ljava/nio/channels/ByteChannel;->isOpen()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_7

    .line 594
    iget v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_interestOps:I

    if-lez v0, :cond_5

    .line 596
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_key:Ljava/nio/channels/SelectionKey;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_key:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 628
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_key:Ljava/nio/channels/SelectionKey;

    iget v1, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_interestOps:I

    invoke-virtual {v0, v1}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;

    goto/16 :goto_1

    .line 598
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->getChannel()Ljava/nio/channels/ByteChannel;

    move-result-object v0

    check-cast v0, Ljava/nio/channels/SelectableChannel;

    .line 599
    invoke-virtual {v0}, Ljava/nio/channels/SelectableChannel;->isRegistered()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 601
    invoke-direct {p0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->updateKey()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_1

    .line 607
    :cond_2
    :try_start_1
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->getChannel()Ljava/nio/channels/ByteChannel;

    move-result-object v0

    check-cast v0, Ljava/nio/channels/SelectableChannel;

    iget-object v3, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_selectSet:Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;

    invoke-virtual {v3}, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->getSelector()Ljava/nio/channels/Selector;

    move-result-object v3

    iget v4, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_interestOps:I

    invoke-virtual {v0, v3, v4, p0}, Ljava/nio/channels/SelectableChannel;->register(Ljava/nio/channels/Selector;ILjava/lang/Object;)Ljava/nio/channels/SelectionKey;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_key:Ljava/nio/channels/SelectionKey;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 611
    :try_start_2
    sget-object v3, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v3, v0}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    .line 612
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_key:Ljava/nio/channels/SelectionKey;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_key:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 614
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_key:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->cancel()V

    .line 617
    :cond_3
    iget-boolean v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_open:Z

    if-eqz v0, :cond_4

    .line 619
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_selectSet:Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;

    invoke-virtual {v0, p0}, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->destroyEndPoint(Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;)V

    .line 621
    :cond_4
    iput-boolean v2, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_open:Z

    .line 622
    iput-object v1, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_key:Ljava/nio/channels/SelectionKey;

    goto :goto_1

    .line 633
    :cond_5
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_key:Ljava/nio/channels/SelectionKey;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_key:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 634
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_key:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v0, v2}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;

    goto :goto_1

    .line 636
    :cond_6
    iput-object v1, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_key:Ljava/nio/channels/SelectionKey;

    goto :goto_1

    .line 641
    :cond_7
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_key:Ljava/nio/channels/SelectionKey;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_key:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 642
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_key:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->cancel()V

    .line 644
    :cond_8
    iget-boolean v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_open:Z

    if-eqz v0, :cond_9

    .line 646
    iput-boolean v2, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_open:Z

    .line 647
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_selectSet:Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;

    invoke-virtual {v0, p0}, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->destroyEndPoint(Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;)V

    .line 649
    :cond_9
    iput-object v1, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_key:Ljava/nio/channels/SelectionKey;

    .line 651
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public fill(Lorg/eclipse/jetty/io/Buffer;)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 366
    invoke-super {p0, p1}, Lorg/eclipse/jetty/io/nio/ChannelEndPoint;->fill(Lorg/eclipse/jetty/io/Buffer;)I

    move-result p1

    if-lez p1, :cond_0

    .line 368
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->notIdle()V

    :cond_0
    return p1
.end method

.method public flush(Lorg/eclipse/jetty/io/Buffer;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 402
    invoke-super {p0, p1}, Lorg/eclipse/jetty/io/nio/ChannelEndPoint;->flush(Lorg/eclipse/jetty/io/Buffer;)I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    .line 405
    invoke-interface {p1}, Lorg/eclipse/jetty/io/Buffer;->hasContent()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 407
    monitor-enter p0

    const/4 p1, 0x0

    .line 409
    :try_start_0
    iput-boolean p1, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_writable:Z

    .line 410
    iget p1, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_state:I

    if-ge p1, v1, :cond_0

    .line 411
    invoke-direct {p0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->updateKey()V

    .line 412
    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    if-lez v0, :cond_2

    .line 416
    iput-boolean v1, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_writable:Z

    .line 417
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->notIdle()V

    :cond_2
    :goto_0
    return v0
.end method

.method public flush(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 376
    invoke-super {p0, p1, p2, p3}, Lorg/eclipse/jetty/io/nio/ChannelEndPoint;->flush(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_4

    if-eqz p1, :cond_0

    .line 379
    invoke-interface {p1}, Lorg/eclipse/jetty/io/Buffer;->hasContent()Z

    move-result p1

    if-nez p1, :cond_2

    :cond_0
    if-eqz p2, :cond_1

    invoke-interface {p2}, Lorg/eclipse/jetty/io/Buffer;->hasContent()Z

    move-result p1

    if-nez p1, :cond_2

    :cond_1
    if-eqz p3, :cond_4

    invoke-interface {p3}, Lorg/eclipse/jetty/io/Buffer;->hasContent()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 381
    :cond_2
    monitor-enter p0

    const/4 p1, 0x0

    .line 383
    :try_start_0
    iput-boolean p1, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_writable:Z

    .line 384
    iget p1, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_state:I

    if-ge p1, v1, :cond_3

    .line 385
    invoke-direct {p0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->updateKey()V

    .line 386
    :cond_3
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_4
    if-lez v0, :cond_5

    .line 390
    iput-boolean v1, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_writable:Z

    .line 391
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->notIdle()V

    :cond_5
    :goto_0
    return v0
.end method

.method public getConnection()Lorg/eclipse/jetty/io/Connection;
    .locals 1

    .line 126
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_connection:Lorg/eclipse/jetty/io/nio/AsyncConnection;

    return-object v0
.end method

.method public getIdleTimestamp()J
    .locals 2

    .line 141
    iget-wide v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_idleTimestamp:J

    return-wide v0
.end method

.method public getSelectManager()Lorg/eclipse/jetty/io/nio/SelectorManager;
    .locals 1

    .line 120
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_manager:Lorg/eclipse/jetty/io/nio/SelectorManager;

    return-object v0
.end method

.method public getSelectSet()Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;
    .locals 1

    .line 826
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_selectSet:Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;

    return-object v0
.end method

.method public getSelectionKey()Ljava/nio/channels/SelectionKey;
    .locals 1

    .line 111
    monitor-enter p0

    .line 113
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_key:Ljava/nio/channels/SelectionKey;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 114
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected handle()V
    .locals 8

    const/4 v0, 0x1

    const/4 v1, 0x1

    :goto_0
    const/4 v2, 0x0

    if-eqz v1, :cond_4

    .line 668
    :goto_1
    :try_start_0
    iget-object v3, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_connection:Lorg/eclipse/jetty/io/nio/AsyncConnection;

    invoke-interface {v3}, Lorg/eclipse/jetty/io/nio/AsyncConnection;->handle()Lorg/eclipse/jetty/io/Connection;

    move-result-object v3

    check-cast v3, Lorg/eclipse/jetty/io/nio/AsyncConnection;

    .line 669
    iget-object v4, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_connection:Lorg/eclipse/jetty/io/nio/AsyncConnection;

    if-eq v3, v4, :cond_0

    .line 671
    sget-object v4, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v5, "{} replaced {}"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v3, v6, v2

    iget-object v7, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_connection:Lorg/eclipse/jetty/io/nio/AsyncConnection;

    aput-object v7, v6, v0

    invoke-interface {v4, v5, v6}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 672
    iget-object v4, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_connection:Lorg/eclipse/jetty/io/nio/AsyncConnection;

    .line 673
    iput-object v3, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_connection:Lorg/eclipse/jetty/io/nio/AsyncConnection;

    .line 674
    iget-object v3, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_manager:Lorg/eclipse/jetty/io/nio/SelectorManager;

    invoke-virtual {v3, p0, v4}, Lorg/eclipse/jetty/io/nio/SelectorManager;->endPointUpgraded(Lorg/eclipse/jetty/io/ConnectedEndPoint;Lorg/eclipse/jetty/io/Connection;)V
    :try_end_0
    .catch Ljava/nio/channels/ClosedChannelException; {:try_start_0 .. :try_end_0} :catch_e
    .catch Lorg/eclipse/jetty/io/EofException; {:try_start_0 .. :try_end_0} :catch_a
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto :goto_1

    .line 704
    :cond_0
    :try_start_1
    iget-boolean v3, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_ishut:Z

    if-nez v3, :cond_1

    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->isInputShutdown()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->isOpen()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 706
    iput-boolean v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_ishut:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_7

    .line 709
    :try_start_2
    iget-object v3, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_connection:Lorg/eclipse/jetty/io/nio/AsyncConnection;

    invoke-interface {v3}, Lorg/eclipse/jetty/io/nio/AsyncConnection;->onInputShutdown()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 719
    :goto_2
    :try_start_3
    invoke-direct {p0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->updateKey()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_7

    goto :goto_7

    :catchall_0
    move-exception v3

    goto :goto_3

    :catch_0
    move-exception v3

    .line 713
    :try_start_4
    sget-object v4, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v5, "onInputShutdown failed"

    invoke-interface {v4, v5, v3}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 714
    :try_start_5
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    :catch_1
    move-exception v3

    .line 715
    :try_start_6
    sget-object v4, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v4, v3}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2

    .line 719
    :goto_3
    :try_start_7
    invoke-direct {p0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->updateKey()V

    throw v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    :catchall_1
    move-exception v3

    goto/16 :goto_11

    :catch_2
    move-exception v3

    .line 698
    :try_start_8
    sget-object v4, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v5, "handle failed"

    invoke-interface {v4, v5, v3}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 699
    :try_start_9
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_4

    :catch_3
    move-exception v3

    .line 700
    :try_start_a
    sget-object v4, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v4, v3}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 704
    :goto_4
    :try_start_b
    iget-boolean v3, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_ishut:Z

    if-nez v3, :cond_1

    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->isInputShutdown()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->isOpen()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 706
    iput-boolean v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_ishut:Z
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    .line 709
    :try_start_c
    iget-object v3, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_connection:Lorg/eclipse/jetty/io/nio/AsyncConnection;

    invoke-interface {v3}, Lorg/eclipse/jetty/io/nio/AsyncConnection;->onInputShutdown()V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_4
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 719
    :goto_5
    :try_start_d
    invoke-direct {p0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->updateKey()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_7

    goto :goto_7

    :catchall_2
    move-exception v3

    goto :goto_6

    :catch_4
    move-exception v3

    .line 713
    :try_start_e
    sget-object v4, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v5, "onInputShutdown failed"

    invoke-interface {v4, v5, v3}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    .line 714
    :try_start_f
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_5
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    goto :goto_5

    :catch_5
    move-exception v3

    .line 715
    :try_start_10
    sget-object v4, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v4, v3}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    goto :goto_5

    .line 719
    :goto_6
    :try_start_11
    invoke-direct {p0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->updateKey()V

    throw v3

    .line 722
    :cond_1
    :goto_7
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->undispatch()Z

    move-result v3
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_7

    goto/16 :goto_10

    :catch_6
    move-exception v3

    .line 692
    :try_start_12
    sget-object v4, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-virtual {v3}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v5, v2, [Ljava/lang/Object;

    invoke-interface {v4, v3, v5}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    .line 693
    :try_start_13
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_7
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    goto :goto_8

    :catch_7
    move-exception v3

    .line 694
    :try_start_14
    sget-object v4, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v4, v3}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_1

    .line 704
    :goto_8
    :try_start_15
    iget-boolean v3, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_ishut:Z

    if-nez v3, :cond_1

    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->isInputShutdown()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->isOpen()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 706
    iput-boolean v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_ishut:Z
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_7

    .line 709
    :try_start_16
    iget-object v3, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_connection:Lorg/eclipse/jetty/io/nio/AsyncConnection;

    invoke-interface {v3}, Lorg/eclipse/jetty/io/nio/AsyncConnection;->onInputShutdown()V
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_16} :catch_8
    .catchall {:try_start_16 .. :try_end_16} :catchall_3

    .line 719
    :goto_9
    :try_start_17
    invoke-direct {p0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->updateKey()V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_7

    goto :goto_7

    :catchall_3
    move-exception v3

    goto :goto_a

    :catch_8
    move-exception v3

    .line 713
    :try_start_18
    sget-object v4, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v5, "onInputShutdown failed"

    invoke-interface {v4, v5, v3}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_3

    .line 714
    :try_start_19
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->close()V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_9
    .catchall {:try_start_19 .. :try_end_19} :catchall_3

    goto :goto_9

    :catch_9
    move-exception v3

    .line 715
    :try_start_1a
    sget-object v4, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v4, v3}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_3

    goto :goto_9

    .line 719
    :goto_a
    :try_start_1b
    invoke-direct {p0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->updateKey()V

    throw v3
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_7

    :catch_a
    move-exception v3

    .line 686
    :try_start_1c
    sget-object v4, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v5, "EOF"

    invoke-interface {v4, v5, v3}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_1

    .line 687
    :try_start_1d
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->close()V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_1d} :catch_b
    .catchall {:try_start_1d .. :try_end_1d} :catchall_1

    goto :goto_b

    :catch_b
    move-exception v3

    .line 688
    :try_start_1e
    sget-object v4, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v4, v3}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_1

    .line 704
    :goto_b
    :try_start_1f
    iget-boolean v3, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_ishut:Z

    if-nez v3, :cond_1

    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->isInputShutdown()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->isOpen()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 706
    iput-boolean v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_ishut:Z
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_7

    .line 709
    :try_start_20
    iget-object v3, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_connection:Lorg/eclipse/jetty/io/nio/AsyncConnection;

    invoke-interface {v3}, Lorg/eclipse/jetty/io/nio/AsyncConnection;->onInputShutdown()V
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_20 .. :try_end_20} :catch_c
    .catchall {:try_start_20 .. :try_end_20} :catchall_4

    .line 719
    :goto_c
    :try_start_21
    invoke-direct {p0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->updateKey()V
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_7

    goto :goto_7

    :catchall_4
    move-exception v3

    goto :goto_d

    :catch_c
    move-exception v3

    .line 713
    :try_start_22
    sget-object v4, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v5, "onInputShutdown failed"

    invoke-interface {v4, v5, v3}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_4

    .line 714
    :try_start_23
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->close()V
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_23} :catch_d
    .catchall {:try_start_23 .. :try_end_23} :catchall_4

    goto :goto_c

    :catch_d
    move-exception v3

    .line 715
    :try_start_24
    sget-object v4, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v4, v3}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_4

    goto :goto_c

    .line 719
    :goto_d
    :try_start_25
    invoke-direct {p0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->updateKey()V

    throw v3
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_7

    :catch_e
    move-exception v3

    .line 682
    :try_start_26
    sget-object v4, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v4, v3}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_1

    .line 704
    :try_start_27
    iget-boolean v3, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_ishut:Z

    if-nez v3, :cond_1

    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->isInputShutdown()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->isOpen()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 706
    iput-boolean v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_ishut:Z
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_7

    .line 709
    :try_start_28
    iget-object v3, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_connection:Lorg/eclipse/jetty/io/nio/AsyncConnection;

    invoke-interface {v3}, Lorg/eclipse/jetty/io/nio/AsyncConnection;->onInputShutdown()V
    :try_end_28
    .catch Ljava/lang/Throwable; {:try_start_28 .. :try_end_28} :catch_f
    .catchall {:try_start_28 .. :try_end_28} :catchall_5

    .line 719
    :goto_e
    :try_start_29
    invoke-direct {p0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->updateKey()V
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_7

    goto/16 :goto_7

    :catchall_5
    move-exception v3

    goto :goto_f

    :catch_f
    move-exception v3

    .line 713
    :try_start_2a
    sget-object v4, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v5, "onInputShutdown failed"

    invoke-interface {v4, v5, v3}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_5

    .line 714
    :try_start_2b
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->close()V
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_2b} :catch_10
    .catchall {:try_start_2b .. :try_end_2b} :catchall_5

    goto :goto_e

    :catch_10
    move-exception v3

    .line 715
    :try_start_2c
    sget-object v4, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v4, v3}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_5

    goto :goto_e

    .line 719
    :goto_f
    :try_start_2d
    invoke-direct {p0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->updateKey()V

    throw v3

    :goto_10
    xor-int/lit8 v1, v3, 0x1

    goto/16 :goto_0

    .line 704
    :goto_11
    iget-boolean v4, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_ishut:Z

    if-nez v4, :cond_2

    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->isInputShutdown()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->isOpen()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 706
    iput-boolean v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_ishut:Z
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_7

    .line 709
    :try_start_2e
    iget-object v4, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_connection:Lorg/eclipse/jetty/io/nio/AsyncConnection;

    invoke-interface {v4}, Lorg/eclipse/jetty/io/nio/AsyncConnection;->onInputShutdown()V
    :try_end_2e
    .catch Ljava/lang/Throwable; {:try_start_2e .. :try_end_2e} :catch_11
    .catchall {:try_start_2e .. :try_end_2e} :catchall_6

    .line 719
    :goto_12
    :try_start_2f
    invoke-direct {p0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->updateKey()V
    :try_end_2f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_7

    goto :goto_14

    :catchall_6
    move-exception v3

    goto :goto_13

    :catch_11
    move-exception v4

    .line 713
    :try_start_30
    sget-object v5, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v6, "onInputShutdown failed"

    invoke-interface {v5, v6, v4}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_30
    .catchall {:try_start_30 .. :try_end_30} :catchall_6

    .line 714
    :try_start_31
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->close()V
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_31} :catch_12
    .catchall {:try_start_31 .. :try_end_31} :catchall_6

    goto :goto_12

    :catch_12
    move-exception v4

    .line 715
    :try_start_32
    sget-object v5, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v5, v4}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V
    :try_end_32
    .catchall {:try_start_32 .. :try_end_32} :catchall_6

    goto :goto_12

    .line 719
    :goto_13
    :try_start_33
    invoke-direct {p0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->updateKey()V

    throw v3

    .line 722
    :cond_2
    :goto_14
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->undispatch()Z

    move-result v4

    xor-int/lit8 v1, v4, 0x1

    throw v3
    :try_end_33
    .catchall {:try_start_33 .. :try_end_33} :catchall_7

    :catchall_7
    move-exception v3

    if-eqz v1, :cond_3

    .line 730
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->undispatch()Z

    move-result v1

    :goto_15
    xor-int/2addr v1, v0

    if-eqz v1, :cond_3

    .line 733
    sget-object v1, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v4, "SCEP.run() finally DISPATCHED"

    new-array v5, v2, [Ljava/lang/Object;

    invoke-interface {v1, v4, v5}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 734
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->undispatch()Z

    move-result v1

    goto :goto_15

    :cond_3
    throw v3

    :cond_4
    if-eqz v1, :cond_5

    .line 730
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->undispatch()Z

    move-result v1

    :goto_16
    xor-int/2addr v1, v0

    if-eqz v1, :cond_5

    .line 733
    sget-object v1, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v3, "SCEP.run() finally DISPATCHED"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-interface {v1, v3, v4}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 734
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->undispatch()Z

    move-result v1

    goto :goto_16

    :cond_5
    return-void
.end method

.method public hasProgressed()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isCheckForIdle()Z
    .locals 1

    .line 300
    iget-boolean v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_checkIdle:Z

    return v0
.end method

.method public isWritable()Z
    .locals 1

    .line 534
    iget-boolean v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_writable:Z

    return v0
.end method

.method protected notIdle()V
    .locals 2

    .line 306
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_idleTimestamp:J

    return-void
.end method

.method public onIdleExpired(J)V
    .locals 8

    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 343
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v2, 0x1

    .line 345
    :try_start_1
    iput-boolean v2, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_onIdle:Z

    .line 346
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 348
    :try_start_2
    iget v2, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_maxIdleTime:I

    if-lez v2, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_idleTimestamp:J

    const/4 v6, 0x0

    sub-long v6, v2, v4

    iget v2, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_maxIdleTime:I

    int-to-long v2, v2

    cmp-long v4, v6, v2

    if-lez v4, :cond_0

    .line 349
    iget-object v2, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_connection:Lorg/eclipse/jetty/io/nio/AsyncConnection;

    invoke-interface {v2, p1, p2}, Lorg/eclipse/jetty/io/nio/AsyncConnection;->onIdleExpired(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 353
    :cond_0
    monitor-enter p0

    .line 355
    :try_start_3
    iput-boolean v1, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_onIdle:Z

    .line 356
    iget p1, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_state:I

    if-ne p1, v0, :cond_1

    .line 357
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->dispatch()V

    .line 358
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    .line 346
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_2
    move-exception p1

    .line 353
    monitor-enter p0

    .line 355
    :try_start_6
    iput-boolean v1, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_onIdle:Z

    .line 356
    iget p2, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_state:I

    if-ne p2, v0, :cond_2

    .line 357
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->dispatch()V

    .line 358
    :cond_2
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw p1

    :catchall_3
    move-exception p1

    :try_start_7
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw p1
.end method

.method public schedule()V
    .locals 4

    .line 150
    monitor-enter p0

    .line 153
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_key:Ljava/nio/channels/SelectionKey;

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_key:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 162
    :cond_0
    iget-boolean v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_readBlocked:Z

    const/4 v2, 0x1

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_writeBlocked:Z

    if-eqz v0, :cond_1

    goto :goto_1

    .line 181
    :cond_1
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_key:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->readyOps()I

    move-result v0

    const/4 v3, 0x4

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_key:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->interestOps()I

    move-result v0

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_2

    .line 184
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_key:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->interestOps()I

    move-result v0

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_interestOps:I

    .line 185
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_key:Ljava/nio/channels/SelectionKey;

    iget v3, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_interestOps:I

    invoke-virtual {v0, v3}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;

    .line 186
    iput-boolean v2, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_writable:Z

    .line 190
    :cond_2
    iget v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_state:I

    if-lt v0, v2, :cond_3

    .line 191
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_key:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v0, v1}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;

    goto :goto_0

    .line 195
    :cond_3
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->dispatch()V

    .line 196
    iget v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_state:I

    if-lt v0, v2, :cond_4

    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_selectSet:Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;

    invoke-virtual {v0}, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->getManager()Lorg/eclipse/jetty/io/nio/SelectorManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jetty/io/nio/SelectorManager;->isDeferringInterestedOps0()Z

    move-result v0

    if-nez v0, :cond_4

    .line 198
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_key:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v0, v1}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;

    .line 201
    :cond_4
    :goto_0
    monitor-exit p0

    return-void

    .line 165
    :cond_5
    :goto_1
    iget-boolean v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_readBlocked:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_key:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->isReadable()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 166
    iput-boolean v1, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_readBlocked:Z

    .line 167
    :cond_6
    iget-boolean v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_writeBlocked:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_key:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->isWritable()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 168
    iput-boolean v1, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_writeBlocked:Z

    .line 171
    :cond_7
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 174
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_key:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v0, v1}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;

    .line 175
    iget v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_state:I

    if-ge v0, v2, :cond_8

    .line 176
    invoke-direct {p0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->updateKey()V

    .line 177
    :cond_8
    monitor-exit p0

    return-void

    .line 155
    :cond_9
    :goto_2
    iput-boolean v1, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_readBlocked:Z

    .line 156
    iput-boolean v1, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_writeBlocked:Z

    .line 157
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 158
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 201
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public scheduleTimeout(Lorg/eclipse/jetty/util/thread/Timeout$Task;J)V
    .locals 1

    .line 282
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->getSelectSet()Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->scheduleTimeout(Lorg/eclipse/jetty/util/thread/Timeout$Task;J)V

    return-void
.end method

.method public scheduleWrite()V
    .locals 4

    .line 524
    iget-boolean v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_writable:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 525
    sget-object v0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v2, "Required scheduleWrite {}"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v1

    invoke-interface {v0, v2, v3}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 527
    :cond_0
    iput-boolean v1, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_writable:Z

    .line 528
    invoke-direct {p0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->updateKey()V

    return-void
.end method

.method public setCheckForIdle(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 290
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_idleTimestamp:J

    const/4 p1, 0x1

    .line 291
    iput-boolean p1, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_checkIdle:Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 294
    iput-boolean p1, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_checkIdle:Z

    :goto_0
    return-void
.end method

.method public setConnection(Lorg/eclipse/jetty/io/Connection;)V
    .locals 1

    .line 132
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_connection:Lorg/eclipse/jetty/io/nio/AsyncConnection;

    .line 133
    check-cast p1, Lorg/eclipse/jetty/io/nio/AsyncConnection;

    iput-object p1, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_connection:Lorg/eclipse/jetty/io/nio/AsyncConnection;

    if-eqz v0, :cond_0

    .line 134
    iget-object p1, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_connection:Lorg/eclipse/jetty/io/nio/AsyncConnection;

    if-eq v0, p1, :cond_0

    .line 135
    iget-object p1, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_manager:Lorg/eclipse/jetty/io/nio/SelectorManager;

    invoke-virtual {p1, p0, v0}, Lorg/eclipse/jetty/io/nio/SelectorManager;->endPointUpgraded(Lorg/eclipse/jetty/io/ConnectedEndPoint;Lorg/eclipse/jetty/io/Connection;)V

    :cond_0
    return-void
.end method

.method public setMaxIdleTime(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 837
    iput p1, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_maxIdleTime:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 787
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_key:Ljava/nio/channels/SelectionKey;

    const-string v1, ""

    if-eqz v0, :cond_2

    .line 791
    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 793
    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->isReadable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 794
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "r"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 795
    :cond_0
    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->isWritable()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 796
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "w"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 800
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 805
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_3
    :goto_0
    const-string v0, "SCEP@%x{l(%s)<->r(%s),s=%d,open=%b,ishut=%b,oshut=%b,rb=%b,wb=%b,w=%b,i=%d%s}-{%s}"

    const/16 v2, 0xd

    .line 807
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_socket:Ljava/net/Socket;

    invoke-virtual {v4}, Ljava/net/Socket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_socket:Ljava/net/Socket;

    invoke-virtual {v4}, Ljava/net/Socket;->getLocalSocketAddress()Ljava/net/SocketAddress;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget v4, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_state:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->isOpen()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x5

    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->isInputShutdown()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x6

    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->isOutputShutdown()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x7

    iget-boolean v4, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_readBlocked:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0x8

    iget-boolean v4, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_writeBlocked:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0x9

    iget-boolean v4, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_writable:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0xa

    iget v4, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_interestOps:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0xb

    aput-object v1, v2, v3

    const/16 v1, 0xc

    iget-object v3, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_connection:Lorg/eclipse/jetty/io/nio/AsyncConnection;

    aput-object v3, v2, v1

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected undispatch()Z
    .locals 4

    .line 257
    monitor-enter p0

    .line 259
    :try_start_0
    iget v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_state:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_0

    .line 266
    iput v3, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_state:I

    .line 267
    invoke-direct {p0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->updateKey()V

    .line 268
    monitor-exit p0

    return v2

    .line 262
    :cond_0
    iput v2, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->_state:I

    .line 263
    monitor-exit p0

    return v3

    :catchall_0
    move-exception v0

    .line 270
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
