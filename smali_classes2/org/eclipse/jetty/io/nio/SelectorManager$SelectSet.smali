.class public Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;
.super Ljava/lang/Object;
.source "SelectorManager.java"

# interfaces
.implements Lorg/eclipse/jetty/util/component/Dumpable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jetty/io/nio/SelectorManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SelectSet"
.end annotation


# instance fields
.field private _busySelects:I

.field private final _changes:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private _endPoints:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private volatile _idleTick:J

.field private _monitorNext:J

.field private _paused:Z

.field private _pausing:Z

.field private volatile _selecting:Ljava/lang/Thread;

.field private volatile _selector:Ljava/nio/channels/Selector;

.field private final _setID:I

.field private final _timeout:Lorg/eclipse/jetty/util/thread/Timeout;

.field final synthetic this$0:Lorg/eclipse/jetty/io/nio/SelectorManager;


# direct methods
.method constructor <init>(Lorg/eclipse/jetty/io/nio/SelectorManager;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 408
    iput-object p1, p0, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->this$0:Lorg/eclipse/jetty/io/nio/SelectorManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 394
    new-instance p1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->_changes:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 404
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->_endPoints:Ljava/util/concurrent/ConcurrentMap;

    .line 409
    iput p2, p0, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->_setID:I

    .line 411
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->_idleTick:J

    .line 412
    new-instance p1, Lorg/eclipse/jetty/util/thread/Timeout;

    invoke-direct {p1, p0}, Lorg/eclipse/jetty/util/thread/Timeout;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->_timeout:Lorg/eclipse/jetty/util/thread/Timeout;

    .line 413
    iget-object p1, p0, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->_timeout:Lorg/eclipse/jetty/util/thread/Timeout;

    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/eclipse/jetty/util/thread/Timeout;->setDuration(J)V

    .line 416
    invoke-static {}, Ljava/nio/channels/Selector;->open()Ljava/nio/channels/Selector;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->_selector:Ljava/nio/channels/Selector;

    .line 417
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    invoke-static {}, Lorg/eclipse/jetty/io/nio/SelectorManager;->access$100()I

    move-result v0

    int-to-long v0, v0

    add-long v2, p1, v0

    iput-wide v2, p0, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->_monitorNext:J

    return-void
.end method

.method static synthetic access$800(Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;)Ljava/util/concurrent/ConcurrentMap;
    .locals 0

    .line 389
    iget-object p0, p0, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->_endPoints:Ljava/util/concurrent/ConcurrentMap;

    return-object p0
.end method

.method static synthetic access$900(Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;)V
    .locals 0

    .line 389
    invoke-direct {p0}, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->renewSelector()V

    return-void
.end method

.method private createEndPoint(Ljava/nio/channels/SocketChannel;Ljava/nio/channels/SelectionKey;)Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 841
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->this$0:Lorg/eclipse/jetty/io/nio/SelectorManager;

    invoke-virtual {v0, p1, p0, p2}, Lorg/eclipse/jetty/io/nio/SelectorManager;->newEndPoint(Ljava/nio/channels/SocketChannel;Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;Ljava/nio/channels/SelectionKey;)Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;

    move-result-object p1

    .line 842
    sget-object p2, Lorg/eclipse/jetty/io/nio/SelectorManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v0, "created {}"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-interface {p2, v0, v1}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 843
    iget-object p2, p0, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->this$0:Lorg/eclipse/jetty/io/nio/SelectorManager;

    invoke-virtual {p2, p1}, Lorg/eclipse/jetty/io/nio/SelectorManager;->endPointOpened(Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;)V

    .line 844
    iget-object p2, p0, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->_endPoints:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p2, p1, p0}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method private renewSelector()V
    .locals 4

    .line 754
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 756
    :try_start_1
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->_selector:Ljava/nio/channels/Selector;

    if-nez v0, :cond_0

    .line 758
    monitor-exit p0

    return-void

    .line 759
    :cond_0
    invoke-static {}, Ljava/nio/channels/Selector;->open()Ljava/nio/channels/Selector;

    move-result-object v1

    .line 760
    invoke-virtual {v0}, Ljava/nio/channels/Selector;->keys()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/nio/channels/SelectionKey;

    .line 762
    invoke-virtual {v2}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Ljava/nio/channels/SelectionKey;->interestOps()I

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    .line 765
    :cond_2
    invoke-virtual {v2}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v3

    .line 766
    invoke-virtual {v2}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_3

    .line 769
    invoke-virtual {p0, v3}, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->addChange(Ljava/lang/Object;)V

    goto :goto_0

    .line 771
    :cond_3
    invoke-virtual {p0, v3, v2}, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->addChange(Ljava/nio/channels/SelectableChannel;Ljava/lang/Object;)V

    goto :goto_0

    .line 773
    :cond_4
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->_selector:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->close()V

    .line 774
    iput-object v1, p0, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->_selector:Ljava/nio/channels/Selector;

    .line 775
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    .line 779
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "recreating selector"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public addChange(Ljava/lang/Object;)V
    .locals 1

    .line 423
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->_changes:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addChange(Ljava/nio/channels/SelectableChannel;Ljava/lang/Object;)V
    .locals 1

    if-nez p2, :cond_0

    .line 430
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->addChange(Ljava/lang/Object;)V

    goto :goto_0

    .line 431
    :cond_0
    instance-of v0, p2, Lorg/eclipse/jetty/io/EndPoint;

    if-eqz v0, :cond_1

    .line 432
    invoke-virtual {p0, p2}, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->addChange(Ljava/lang/Object;)V

    goto :goto_0

    .line 434
    :cond_1
    new-instance v0, Lorg/eclipse/jetty/io/nio/SelectorManager$ChannelAndAttachment;

    invoke-direct {v0, p1, p2}, Lorg/eclipse/jetty/io/nio/SelectorManager$ChannelAndAttachment;-><init>(Ljava/nio/channels/SelectableChannel;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->addChange(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public cancelTimeout(Lorg/eclipse/jetty/util/thread/Timeout$Task;)V
    .locals 0

    .line 812
    invoke-virtual {p1}, Lorg/eclipse/jetty/util/thread/Timeout$Task;->cancel()V

    return-void
.end method

.method public destroyEndPoint(Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;)V
    .locals 4

    .line 851
    sget-object v0, Lorg/eclipse/jetty/io/nio/SelectorManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v1, "destroyEndPoint {}"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 852
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->_endPoints:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 853
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->this$0:Lorg/eclipse/jetty/io/nio/SelectorManager;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/io/nio/SelectorManager;->endPointClosed(Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;)V

    return-void
.end method

.method public doSelect()V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 447
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    iput-object v1, p0, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->_selecting:Ljava/lang/Thread;

    .line 448
    iget-object v1, p0, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->_selector:Ljava/nio/channels/Selector;
    :try_end_0
    .catch Ljava/nio/channels/ClosedSelectorException; {:try_start_0 .. :try_end_0} :catch_e
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_0 .. :try_end_0} :catch_d
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v1, :cond_0

    .line 744
    iput-object v0, p0, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->_selecting:Ljava/lang/Thread;

    return-void

    .line 455
    :cond_0
    :try_start_1
    iget-object v2, p0, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->_changes:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v2

    :goto_0
    add-int/lit8 v3, v2, -0x1

    const/4 v4, 0x1

    if-lez v2, :cond_9

    .line 456
    iget-object v2, p0, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->_changes:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v2
    :try_end_1
    .catch Ljava/nio/channels/ClosedSelectorException; {:try_start_1 .. :try_end_1} :catch_e
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_1 .. :try_end_1} :catch_d
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v2, :cond_9

    .line 463
    :try_start_2
    instance-of v5, v2, Lorg/eclipse/jetty/io/EndPoint;

    if-eqz v5, :cond_1

    .line 466
    check-cast v2, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;

    .line 467
    invoke-virtual {v2}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->getChannel()Ljava/nio/channels/ByteChannel;

    move-result-object v4
    :try_end_2
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/nio/channels/ClosedSelectorException; {:try_start_2 .. :try_end_2} :catch_e
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 468
    :try_start_3
    invoke-virtual {v2}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->doUpdateKey()V
    :try_end_3
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/nio/channels/ClosedSelectorException; {:try_start_3 .. :try_end_3} :catch_e
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/16 :goto_3

    :catch_0
    move-exception v2

    move-object v5, v4

    goto/16 :goto_1

    .line 470
    :cond_1
    :try_start_4
    instance-of v5, v2, Lorg/eclipse/jetty/io/nio/SelectorManager$ChannelAndAttachment;

    if-eqz v5, :cond_3

    .line 473
    check-cast v2, Lorg/eclipse/jetty/io/nio/SelectorManager$ChannelAndAttachment;

    .line 474
    iget-object v5, v2, Lorg/eclipse/jetty/io/nio/SelectorManager$ChannelAndAttachment;->_channel:Ljava/nio/channels/SelectableChannel;
    :try_end_4
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/nio/channels/ClosedSelectorException; {:try_start_4 .. :try_end_4} :catch_e
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 476
    :try_start_5
    iget-object v2, v2, Lorg/eclipse/jetty/io/nio/SelectorManager$ChannelAndAttachment;->_attachment:Ljava/lang/Object;

    .line 478
    instance-of v6, v5, Ljava/nio/channels/SocketChannel;

    if-eqz v6, :cond_2

    move-object v6, v5

    check-cast v6, Ljava/nio/channels/SocketChannel;

    invoke-virtual {v6}, Ljava/nio/channels/SocketChannel;->isConnected()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 480
    invoke-virtual {v5, v1, v4, v2}, Ljava/nio/channels/SelectableChannel;->register(Ljava/nio/channels/Selector;ILjava/lang/Object;)Ljava/nio/channels/SelectionKey;

    move-result-object v2

    .line 481
    move-object v4, v5

    check-cast v4, Ljava/nio/channels/SocketChannel;

    invoke-direct {p0, v4, v2}, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->createEndPoint(Ljava/nio/channels/SocketChannel;Ljava/nio/channels/SelectionKey;)Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;

    move-result-object v4

    .line 482
    invoke-virtual {v2, v4}, Ljava/nio/channels/SelectionKey;->attach(Ljava/lang/Object;)Ljava/lang/Object;

    .line 483
    invoke-virtual {v4}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->schedule()V

    goto/16 :goto_3

    .line 485
    :cond_2
    invoke-virtual {v5}, Ljava/nio/channels/SelectableChannel;->isOpen()Z

    move-result v4

    if-eqz v4, :cond_8

    const/16 v4, 0x8

    .line 487
    invoke-virtual {v5, v1, v4, v2}, Ljava/nio/channels/SelectableChannel;->register(Ljava/nio/channels/Selector;ILjava/lang/Object;)Ljava/nio/channels/SelectionKey;
    :try_end_5
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/nio/channels/ClosedSelectorException; {:try_start_5 .. :try_end_5} :catch_e
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto/16 :goto_3

    :catch_1
    move-exception v2

    goto :goto_1

    .line 490
    :cond_3
    :try_start_6
    instance-of v5, v2, Ljava/nio/channels/SocketChannel;

    if-eqz v5, :cond_4

    .line 493
    check-cast v2, Ljava/nio/channels/SocketChannel;
    :try_end_6
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/nio/channels/ClosedSelectorException; {:try_start_6 .. :try_end_6} :catch_e
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 495
    :try_start_7
    invoke-virtual {v2, v1, v4, v0}, Ljava/nio/channels/SocketChannel;->register(Ljava/nio/channels/Selector;ILjava/lang/Object;)Ljava/nio/channels/SelectionKey;

    move-result-object v4

    .line 496
    invoke-direct {p0, v2, v4}, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->createEndPoint(Ljava/nio/channels/SocketChannel;Ljava/nio/channels/SelectionKey;)Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;

    move-result-object v5

    .line 497
    invoke-virtual {v4, v5}, Ljava/nio/channels/SelectionKey;->attach(Ljava/lang/Object;)Ljava/lang/Object;

    .line 498
    invoke-virtual {v5}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->schedule()V
    :try_end_7
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/nio/channels/ClosedSelectorException; {:try_start_7 .. :try_end_7} :catch_e
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_3

    :catch_2
    move-exception v4

    move-object v5, v2

    move-object v2, v4

    goto :goto_1

    .line 500
    :cond_4
    :try_start_8
    instance-of v4, v2, Lorg/eclipse/jetty/io/nio/SelectorManager$ChangeTask;

    if-eqz v4, :cond_5

    .line 502
    check-cast v2, Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    goto :goto_3

    .line 504
    :cond_5
    instance-of v4, v2, Ljava/lang/Runnable;

    if-eqz v4, :cond_6

    .line 506
    iget-object v4, p0, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->this$0:Lorg/eclipse/jetty/io/nio/SelectorManager;

    check-cast v2, Ljava/lang/Runnable;

    invoke-virtual {v4, v2}, Lorg/eclipse/jetty/io/nio/SelectorManager;->dispatch(Ljava/lang/Runnable;)Z

    goto :goto_3

    .line 509
    :cond_6
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_8
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_8 .. :try_end_8} :catch_5
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/nio/channels/ClosedSelectorException; {:try_start_8 .. :try_end_8} :catch_e
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :catch_3
    move-exception v2

    move-object v5, v0

    .line 517
    :goto_1
    :try_start_9
    iget-object v4, p0, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->this$0:Lorg/eclipse/jetty/io/nio/SelectorManager;

    invoke-virtual {v4}, Lorg/eclipse/jetty/io/nio/SelectorManager;->isRunning()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 518
    sget-object v4, Lorg/eclipse/jetty/io/nio/SelectorManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v4, v2}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 520
    :cond_7
    sget-object v4, Lorg/eclipse/jetty/io/nio/SelectorManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v4, v2}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/Throwable;)V
    :try_end_9
    .catch Ljava/nio/channels/ClosedSelectorException; {:try_start_9 .. :try_end_9} :catch_e
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_9 .. :try_end_9} :catch_d
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :goto_2
    if-eqz v5, :cond_8

    .line 525
    :try_start_a
    invoke-interface {v5}, Ljava/nio/channels/Channel;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4
    .catch Ljava/nio/channels/ClosedSelectorException; {:try_start_a .. :try_end_a} :catch_e
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_a .. :try_end_a} :catch_d
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto :goto_3

    :catch_4
    move-exception v2

    .line 529
    :try_start_b
    sget-object v4, Lorg/eclipse/jetty/io/nio/SelectorManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v4, v2}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/Throwable;)V

    goto :goto_3

    :catch_5
    move-exception v2

    .line 513
    sget-object v4, Lorg/eclipse/jetty/io/nio/SelectorManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v4, v2}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    :cond_8
    :goto_3
    move v2, v3

    goto/16 :goto_0

    .line 536
    :cond_9
    invoke-virtual {v1}, Ljava/nio/channels/Selector;->selectNow()I

    move-result v2

    .line 538
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const/4 v3, 0x0

    const-wide/16 v7, 0x0

    if-nez v2, :cond_d

    .line 541
    invoke-virtual {v1}, Ljava/nio/channels/Selector;->selectedKeys()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 544
    iget-boolean v2, p0, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->_pausing:Z
    :try_end_b
    .catch Ljava/nio/channels/ClosedSelectorException; {:try_start_b .. :try_end_b} :catch_e
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_b .. :try_end_b} :catch_d
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    if-eqz v2, :cond_a

    .line 548
    :try_start_c
    invoke-static {}, Lorg/eclipse/jetty/io/nio/SelectorManager;->access$200()I

    move-result v2

    int-to-long v5, v2

    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_c
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_c} :catch_6
    .catch Ljava/nio/channels/ClosedSelectorException; {:try_start_c .. :try_end_c} :catch_e
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_c .. :try_end_c} :catch_d
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    goto :goto_4

    :catch_6
    move-exception v2

    .line 552
    :try_start_d
    sget-object v5, Lorg/eclipse/jetty/io/nio/SelectorManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v5, v2}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    .line 554
    :goto_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 558
    :cond_a
    iget-object v2, p0, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->_timeout:Lorg/eclipse/jetty/util/thread/Timeout;

    invoke-virtual {v2, v5, v6}, Lorg/eclipse/jetty/util/thread/Timeout;->setNow(J)V

    .line 559
    iget-object v2, p0, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->_timeout:Lorg/eclipse/jetty/util/thread/Timeout;

    invoke-virtual {v2}, Lorg/eclipse/jetty/util/thread/Timeout;->getTimeToNext()J

    move-result-wide v9

    .line 561
    iget-object v2, p0, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->_changes:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v2

    if-nez v2, :cond_b

    invoke-static {}, Lorg/eclipse/jetty/io/nio/SelectorManager;->access$300()I

    move-result v2

    int-to-long v11, v2

    goto :goto_5

    :cond_b
    move-wide v11, v7

    :goto_5
    cmp-long v2, v11, v7

    if-lez v2, :cond_c

    cmp-long v2, v9, v7

    if-ltz v2, :cond_c

    cmp-long v2, v11, v9

    if-lez v2, :cond_c

    goto :goto_6

    :cond_c
    move-wide v9, v11

    :goto_6
    cmp-long v2, v9, v7

    if-lez v2, :cond_d

    .line 569
    invoke-virtual {v1, v9, v10}, Ljava/nio/channels/Selector;->select(J)I

    .line 570
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 571
    iget-object v2, p0, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->_timeout:Lorg/eclipse/jetty/util/thread/Timeout;

    invoke-virtual {v2, v9, v10}, Lorg/eclipse/jetty/util/thread/Timeout;->setNow(J)V

    .line 575
    invoke-static {}, Lorg/eclipse/jetty/io/nio/SelectorManager;->access$100()I

    move-result v2

    if-lez v2, :cond_d

    sub-long v11, v9, v5

    const-wide/16 v5, 0x1

    cmp-long v2, v11, v5

    if-gtz v2, :cond_d

    .line 578
    iget v2, p0, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->_busySelects:I

    add-int/2addr v2, v4

    iput v2, p0, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->_busySelects:I

    invoke-static {}, Lorg/eclipse/jetty/io/nio/SelectorManager;->access$400()I

    move-result v5

    if-le v2, v5, :cond_d

    .line 581
    iput-boolean v4, p0, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->_pausing:Z

    .line 584
    iget-boolean v2, p0, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->_paused:Z

    if-nez v2, :cond_d

    .line 587
    iput-boolean v4, p0, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->_paused:Z

    .line 588
    sget-object v2, Lorg/eclipse/jetty/io/nio/SelectorManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v5, "Selector {} is too busy, pausing!"

    new-array v6, v4, [Ljava/lang/Object;

    aput-object p0, v6, v3

    invoke-interface {v2, v5, v6}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 596
    :cond_d
    iget-object v2, p0, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->_selector:Ljava/nio/channels/Selector;

    if-eqz v2, :cond_1c

    invoke-virtual {v1}, Ljava/nio/channels/Selector;->isOpen()Z

    move-result v2

    if-nez v2, :cond_e

    goto/16 :goto_f

    .line 600
    :cond_e
    invoke-virtual {v1}, Ljava/nio/channels/Selector;->selectedKeys()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_f
    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_17

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/nio/channels/SelectionKey;
    :try_end_d
    .catch Ljava/nio/channels/ClosedSelectorException; {:try_start_d .. :try_end_d} :catch_e
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_d .. :try_end_d} :catch_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 606
    :try_start_e
    invoke-virtual {v5}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v6

    if-nez v6, :cond_10

    .line 608
    invoke-virtual {v5}, Ljava/nio/channels/SelectionKey;->cancel()V

    .line 609
    invoke-virtual {v5}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;

    if-eqz v6, :cond_f

    .line 611
    invoke-virtual {v6}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->doUpdateKey()V

    goto :goto_7

    .line 615
    :cond_10
    invoke-virtual {v5}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    move-result-object v6

    .line 616
    instance-of v9, v6, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;

    if-eqz v9, :cond_12

    .line 618
    invoke-virtual {v5}, Ljava/nio/channels/SelectionKey;->isReadable()Z

    move-result v9

    if-nez v9, :cond_11

    invoke-virtual {v5}, Ljava/nio/channels/SelectionKey;->isWritable()Z

    move-result v9

    if-eqz v9, :cond_f

    .line 619
    :cond_11
    check-cast v6, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;

    invoke-virtual {v6}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->schedule()V

    goto :goto_7

    .line 621
    :cond_12
    invoke-virtual {v5}, Ljava/nio/channels/SelectionKey;->isConnectable()Z

    move-result v9

    if-eqz v9, :cond_14

    .line 624
    invoke-virtual {v5}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v9

    check-cast v9, Ljava/nio/channels/SocketChannel;
    :try_end_e
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_e .. :try_end_e} :catch_c
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_a
    .catch Ljava/nio/channels/ClosedSelectorException; {:try_start_e .. :try_end_e} :catch_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    .line 628
    :try_start_f
    invoke-virtual {v9}, Ljava/nio/channels/SocketChannel;->finishConnect()Z

    move-result v10
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_8
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    if-eqz v10, :cond_13

    .line 638
    :try_start_10
    invoke-virtual {v5, v4}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;

    .line 639
    invoke-direct {p0, v9, v5}, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->createEndPoint(Ljava/nio/channels/SocketChannel;Ljava/nio/channels/SelectionKey;)Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;

    move-result-object v6

    .line 640
    invoke-virtual {v5, v6}, Ljava/nio/channels/SelectionKey;->attach(Ljava/lang/Object;)Ljava/lang/Object;

    .line 641
    invoke-virtual {v6}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->schedule()V

    goto :goto_7

    :catch_7
    move-exception v6

    goto :goto_a

    .line 645
    :cond_13
    :goto_8
    invoke-virtual {v5}, Ljava/nio/channels/SelectionKey;->cancel()V
    :try_end_10
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_10 .. :try_end_10} :catch_c
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_7
    .catch Ljava/nio/channels/ClosedSelectorException; {:try_start_10 .. :try_end_10} :catch_e
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    goto :goto_7

    :catchall_0
    move-exception v6

    goto :goto_9

    :catch_8
    move-exception v10

    .line 632
    :try_start_11
    iget-object v11, p0, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->this$0:Lorg/eclipse/jetty/io/nio/SelectorManager;

    invoke-virtual {v11, v9, v10, v6}, Lorg/eclipse/jetty/io/nio/SelectorManager;->connectionFailed(Ljava/nio/channels/SocketChannel;Ljava/lang/Throwable;Ljava/lang/Object;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    goto :goto_8

    .line 645
    :goto_9
    :try_start_12
    invoke-virtual {v5}, Ljava/nio/channels/SelectionKey;->cancel()V

    throw v6
    :try_end_12
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_12 .. :try_end_12} :catch_c
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_7
    .catch Ljava/nio/channels/ClosedSelectorException; {:try_start_12 .. :try_end_12} :catch_e
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    .line 652
    :cond_14
    :try_start_13
    invoke-virtual {v5}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v6

    check-cast v6, Ljava/nio/channels/SocketChannel;
    :try_end_13
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_13 .. :try_end_13} :catch_c
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_a
    .catch Ljava/nio/channels/ClosedSelectorException; {:try_start_13 .. :try_end_13} :catch_e
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    .line 653
    :try_start_14
    invoke-direct {p0, v6, v5}, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->createEndPoint(Ljava/nio/channels/SocketChannel;Ljava/nio/channels/SelectionKey;)Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;

    move-result-object v9

    .line 654
    invoke-virtual {v5, v9}, Ljava/nio/channels/SelectionKey;->attach(Ljava/lang/Object;)Ljava/lang/Object;

    .line 655
    invoke-virtual {v5}, Ljava/nio/channels/SelectionKey;->isReadable()Z

    move-result v10

    if-eqz v10, :cond_f

    .line 656
    invoke-virtual {v9}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->schedule()V
    :try_end_14
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_14 .. :try_end_14} :catch_c
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_9
    .catch Ljava/nio/channels/ClosedSelectorException; {:try_start_14 .. :try_end_14} :catch_e
    .catchall {:try_start_14 .. :try_end_14} :catchall_1

    goto/16 :goto_7

    :catch_9
    move-exception v9

    move-object v13, v9

    move-object v9, v6

    move-object v6, v13

    goto :goto_a

    :catch_a
    move-exception v6

    move-object v9, v0

    .line 666
    :goto_a
    :try_start_15
    iget-object v10, p0, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->this$0:Lorg/eclipse/jetty/io/nio/SelectorManager;

    invoke-virtual {v10}, Lorg/eclipse/jetty/io/nio/SelectorManager;->isRunning()Z

    move-result v10

    if-eqz v10, :cond_15

    .line 667
    sget-object v10, Lorg/eclipse/jetty/io/nio/SelectorManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v10, v6}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/Throwable;)V

    goto :goto_b

    .line 669
    :cond_15
    sget-object v10, Lorg/eclipse/jetty/io/nio/SelectorManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v10, v6}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V
    :try_end_15
    .catch Ljava/nio/channels/ClosedSelectorException; {:try_start_15 .. :try_end_15} :catch_e
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_15 .. :try_end_15} :catch_d
    .catchall {:try_start_15 .. :try_end_15} :catchall_1

    :goto_b
    if-eqz v9, :cond_16

    .line 674
    :try_start_16
    invoke-virtual {v9}, Ljava/nio/channels/SocketChannel;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_b
    .catch Ljava/nio/channels/ClosedSelectorException; {:try_start_16 .. :try_end_16} :catch_e
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_16 .. :try_end_16} :catch_d
    .catchall {:try_start_16 .. :try_end_16} :catchall_1

    goto :goto_c

    :catch_b
    move-exception v6

    .line 678
    :try_start_17
    sget-object v9, Lorg/eclipse/jetty/io/nio/SelectorManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v9, v6}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/Throwable;)V

    :cond_16
    :goto_c
    if-eqz v5, :cond_f

    .line 681
    invoke-virtual {v5}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v6

    instance-of v6, v6, Ljava/nio/channels/ServerSocketChannel;

    if-nez v6, :cond_f

    invoke-virtual {v5}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v6

    if-eqz v6, :cond_f

    .line 682
    invoke-virtual {v5}, Ljava/nio/channels/SelectionKey;->cancel()V

    goto/16 :goto_7

    :catch_c
    move-exception v5

    .line 662
    sget-object v6, Lorg/eclipse/jetty/io/nio/SelectorManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v6, v5}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    goto/16 :goto_7

    .line 687
    :cond_17
    invoke-virtual {v1}, Ljava/nio/channels/Selector;->selectedKeys()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 689
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 690
    iget-object v2, p0, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->_timeout:Lorg/eclipse/jetty/util/thread/Timeout;

    invoke-virtual {v2, v4, v5}, Lorg/eclipse/jetty/util/thread/Timeout;->setNow(J)V

    .line 691
    iget-object v2, p0, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->_timeout:Lorg/eclipse/jetty/util/thread/Timeout;

    invoke-virtual {v2}, Lorg/eclipse/jetty/util/thread/Timeout;->expired()Lorg/eclipse/jetty/util/thread/Timeout$Task;

    move-result-object v2

    :goto_d
    if-eqz v2, :cond_19

    .line 694
    instance-of v6, v2, Ljava/lang/Runnable;

    if-eqz v6, :cond_18

    .line 695
    iget-object v6, p0, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->this$0:Lorg/eclipse/jetty/io/nio/SelectorManager;

    check-cast v2, Ljava/lang/Runnable;

    invoke-virtual {v6, v2}, Lorg/eclipse/jetty/io/nio/SelectorManager;->dispatch(Ljava/lang/Runnable;)Z

    .line 696
    :cond_18
    iget-object v2, p0, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->_timeout:Lorg/eclipse/jetty/util/thread/Timeout;

    invoke-virtual {v2}, Lorg/eclipse/jetty/util/thread/Timeout;->expired()Lorg/eclipse/jetty/util/thread/Timeout$Task;

    move-result-object v2

    goto :goto_d

    .line 700
    :cond_19
    iget-wide v9, p0, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->_idleTick:J

    const/4 v2, 0x0

    sub-long v11, v4, v9

    invoke-static {}, Lorg/eclipse/jetty/io/nio/SelectorManager;->access$300()I

    move-result v2

    int-to-long v9, v2

    cmp-long v2, v11, v9

    if-lez v2, :cond_1b

    .line 702
    iput-wide v4, p0, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->_idleTick:J

    .line 704
    iget-object v2, p0, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->this$0:Lorg/eclipse/jetty/io/nio/SelectorManager;

    invoke-static {v2}, Lorg/eclipse/jetty/io/nio/SelectorManager;->access$500(Lorg/eclipse/jetty/io/nio/SelectorManager;)J

    move-result-wide v9

    cmp-long v2, v9, v7

    if-lez v2, :cond_1a

    invoke-virtual {v1}, Ljava/nio/channels/Selector;->keys()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    int-to-long v1, v1

    iget-object v6, p0, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->this$0:Lorg/eclipse/jetty/io/nio/SelectorManager;

    invoke-static {v6}, Lorg/eclipse/jetty/io/nio/SelectorManager;->access$500(Lorg/eclipse/jetty/io/nio/SelectorManager;)J

    move-result-wide v6

    cmp-long v8, v1, v6

    if-lez v8, :cond_1a

    iget-object v1, p0, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->this$0:Lorg/eclipse/jetty/io/nio/SelectorManager;

    invoke-static {v1}, Lorg/eclipse/jetty/io/nio/SelectorManager;->access$600(Lorg/eclipse/jetty/io/nio/SelectorManager;)I

    move-result v1

    int-to-long v1, v1

    add-long v6, v4, v1

    iget-object v1, p0, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->this$0:Lorg/eclipse/jetty/io/nio/SelectorManager;

    invoke-static {v1}, Lorg/eclipse/jetty/io/nio/SelectorManager;->access$700(Lorg/eclipse/jetty/io/nio/SelectorManager;)I

    move-result v1

    int-to-long v1, v1

    sub-long v8, v6, v1

    goto :goto_e

    :cond_1a
    move-wide v8, v4

    .line 708
    :goto_e
    iget-object v1, p0, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->this$0:Lorg/eclipse/jetty/io/nio/SelectorManager;

    new-instance v2, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet$1;

    invoke-direct {v2, p0, v8, v9}, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet$1;-><init>(Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;J)V

    invoke-virtual {v1, v2}, Lorg/eclipse/jetty/io/nio/SelectorManager;->dispatch(Ljava/lang/Runnable;)Z

    .line 723
    :cond_1b
    invoke-static {}, Lorg/eclipse/jetty/io/nio/SelectorManager;->access$100()I

    move-result v1

    if-lez v1, :cond_1d

    iget-wide v1, p0, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->_monitorNext:J

    cmp-long v6, v4, v1

    if-lez v6, :cond_1d

    .line 725
    iput v3, p0, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->_busySelects:I

    .line 726
    iput-boolean v3, p0, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->_pausing:Z

    .line 727
    invoke-static {}, Lorg/eclipse/jetty/io/nio/SelectorManager;->access$100()I

    move-result v1

    int-to-long v1, v1

    add-long v6, v4, v1

    iput-wide v6, p0, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->_monitorNext:J
    :try_end_17
    .catch Ljava/nio/channels/ClosedSelectorException; {:try_start_17 .. :try_end_17} :catch_e
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_17 .. :try_end_17} :catch_d
    .catchall {:try_start_17 .. :try_end_17} :catchall_1

    goto :goto_10

    .line 744
    :cond_1c
    :goto_f
    iput-object v0, p0, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->_selecting:Ljava/lang/Thread;

    return-void

    :catchall_1
    move-exception v1

    goto :goto_12

    :catch_d
    move-exception v1

    .line 740
    :try_start_18
    sget-object v2, Lorg/eclipse/jetty/io/nio/SelectorManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v2, v1}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_1

    .line 744
    :cond_1d
    :goto_10
    iput-object v0, p0, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->_selecting:Ljava/lang/Thread;

    goto :goto_11

    :catch_e
    move-exception v1

    .line 733
    :try_start_19
    iget-object v2, p0, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->this$0:Lorg/eclipse/jetty/io/nio/SelectorManager;

    invoke-virtual {v2}, Lorg/eclipse/jetty/io/nio/SelectorManager;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 734
    sget-object v2, Lorg/eclipse/jetty/io/nio/SelectorManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v2, v1}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/Throwable;)V

    goto :goto_10

    .line 736
    :cond_1e
    sget-object v2, Lorg/eclipse/jetty/io/nio/SelectorManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v2, v1}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_1

    goto :goto_10

    :goto_11
    return-void

    .line 744
    :goto_12
    iput-object v0, p0, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->_selecting:Ljava/lang/Thread;

    throw v1
.end method

.method public dump()Ljava/lang/String;
    .locals 1

    .line 922
    invoke-static {p0}, Lorg/eclipse/jetty/util/component/AggregateLifeCycle;->dump(Lorg/eclipse/jetty/util/component/Dumpable;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public dump(Ljava/lang/Appendable;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 928
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object v0

    const-string v1, " id="

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object v0

    iget v1, p0, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->_setID:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object v0

    const-string v1, "\n"

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 930
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->_selecting:Ljava/lang/Thread;

    const-string v1, "not selecting"

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 933
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    :goto_0
    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 936
    array-length v3, v0

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_2

    aget-object v5, v0, v4

    .line 937
    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "org.eclipse.jetty."

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    move-object v1, v5

    goto :goto_2

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 944
    :cond_2
    :goto_2
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->_selector:Ljava/nio/channels/Selector;

    if-eqz v0, :cond_3

    .line 947
    new-instance v3, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->keys()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 948
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 950
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 952
    new-instance v4, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet$3;

    invoke-direct {v4, p0, v3, v0}, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet$3;-><init>(Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;Ljava/util/ArrayList;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {p0, v4}, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->addChange(Ljava/lang/Object;)V

    const-wide/16 v4, 0x5

    .line 963
    :try_start_0
    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v4, v5, v6}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 967
    sget-object v4, Lorg/eclipse/jetty/io/nio/SelectorManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v4, v0}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    .line 970
    :goto_3
    new-array v0, v1, [Ljava/util/Collection;

    aput-object v3, v0, v2

    invoke-static {p1, p2, v0}, Lorg/eclipse/jetty/util/component/AggregateLifeCycle;->dump(Ljava/lang/Appendable;Ljava/lang/String;[Ljava/util/Collection;)V

    :cond_3
    return-void
.end method

.method public dumpKeyState(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 977
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->_selector:Ljava/nio/channels/Selector;

    .line 978
    invoke-virtual {v0}, Ljava/nio/channels/Selector;->keys()Ljava/util/Set;

    move-result-object v1

    .line 979
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " keys="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 980
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/channels/SelectionKey;

    .line 982
    invoke-virtual {v1}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 983
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " iOps="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/nio/channels/SelectionKey;->interestOps()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " rOps="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/nio/channels/SelectionKey;->readyOps()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 985
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " iOps=-1 rOps=-1"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public getManager()Lorg/eclipse/jetty/io/nio/SelectorManager;
    .locals 1

    .line 786
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->this$0:Lorg/eclipse/jetty/io/nio/SelectorManager;

    return-object v0
.end method

.method public getNow()J
    .locals 2

    .line 792
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->_timeout:Lorg/eclipse/jetty/util/thread/Timeout;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/thread/Timeout;->getNow()J

    move-result-wide v0

    return-wide v0
.end method

.method getSelector()Ljava/nio/channels/Selector;
    .locals 1

    .line 859
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->_selector:Ljava/nio/channels/Selector;

    return-object v0
.end method

.method public scheduleTimeout(Lorg/eclipse/jetty/util/thread/Timeout$Task;J)V
    .locals 1

    .line 804
    instance-of v0, p1, Ljava/lang/Runnable;

    if-nez v0, :cond_0

    .line 805
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "!Runnable"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 806
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->_timeout:Lorg/eclipse/jetty/util/thread/Timeout;

    invoke-virtual {v0, p1, p2, p3}, Lorg/eclipse/jetty/util/thread/Timeout;->schedule(Lorg/eclipse/jetty/util/thread/Timeout$Task;J)V

    return-void
.end method

.method stop()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x64

    if-ge v0, v1, :cond_0

    .line 869
    :try_start_0
    iget-object v1, p0, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->_selecting:Ljava/lang/Thread;

    if-eqz v1, :cond_0

    .line 871
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->wakeup()V

    const-wide/16 v1, 0xa

    .line 872
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 877
    sget-object v1, Lorg/eclipse/jetty/io/nio/SelectorManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v1, v0}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    .line 881
    :cond_0
    monitor-enter p0

    .line 883
    :try_start_1
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->_selector:Ljava/nio/channels/Selector;

    .line 884
    invoke-virtual {v0}, Ljava/nio/channels/Selector;->keys()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/channels/SelectionKey;

    if-nez v1, :cond_2

    goto :goto_1

    .line 888
    :cond_2
    invoke-virtual {v1}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    move-result-object v1

    .line 889
    instance-of v2, v1, Lorg/eclipse/jetty/io/EndPoint;

    if-eqz v2, :cond_1

    .line 891
    check-cast v1, Lorg/eclipse/jetty/io/EndPoint;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 894
    :try_start_2
    invoke-interface {v1}, Lorg/eclipse/jetty/io/EndPoint;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_1
    move-exception v1

    .line 898
    :try_start_3
    sget-object v2, Lorg/eclipse/jetty/io/nio/SelectorManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v2, v1}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 904
    :cond_3
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->_timeout:Lorg/eclipse/jetty/util/thread/Timeout;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/thread/Timeout;->cancelAll()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 907
    :try_start_4
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->_selector:Ljava/nio/channels/Selector;

    if-eqz v0, :cond_4

    .line 909
    invoke-virtual {v0}, Ljava/nio/channels/Selector;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    :catch_2
    move-exception v0

    .line 913
    :try_start_5
    sget-object v1, Lorg/eclipse/jetty/io/nio/SelectorManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v1, v0}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    :cond_4
    :goto_2
    const/4 v0, 0x0

    .line 915
    iput-object v0, p0, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->_selector:Ljava/nio/channels/Selector;

    .line 916
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 992
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->_selector:Ljava/nio/channels/Selector;

    const-string v1, "%s keys=%d selected=%d"

    const/4 v2, 0x3

    .line 993
    new-array v2, v2, [Ljava/lang/Object;

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, -0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->isOpen()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->keys()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v4

    goto :goto_0

    :cond_0
    const/4 v4, -0x1

    :goto_0
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v2, v5

    const/4 v4, 0x2

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->isOpen()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->selectedKeys()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v3

    :cond_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public wakeup()V
    .locals 1

    .line 820
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->_selector:Ljava/nio/channels/Selector;

    if-eqz v0, :cond_0

    .line 822
    invoke-virtual {v0}, Ljava/nio/channels/Selector;->wakeup()Ljava/nio/channels/Selector;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 826
    :catch_0
    new-instance v0, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet$2;

    invoke-direct {v0, p0}, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet$2;-><init>(Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;)V

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->addChange(Ljava/lang/Object;)V

    .line 834
    invoke-direct {p0}, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->renewSelector()V

    :cond_0
    :goto_0
    return-void
.end method
