.class public Lorg/eclipse/jetty/util/BlockingArrayQueue;
.super Ljava/util/AbstractList;
.source "BlockingArrayQueue.java"

# interfaces
.implements Ljava/util/concurrent/BlockingQueue;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractList<",
        "TE;>;",
        "Ljava/util/concurrent/BlockingQueue<",
        "TE;>;"
    }
.end annotation


# instance fields
.field public final DEFAULT_CAPACITY:I

.field public final DEFAULT_GROWTH:I

.field private volatile _capacity:I

.field private _elements:[Ljava/lang/Object;

.field private final _growCapacity:I

.field private _head:I

.field private final _headLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private final _limit:I

.field private final _notEmpty:Ljava/util/concurrent/locks/Condition;

.field private final _size:Ljava/util/concurrent/atomic/AtomicInteger;

.field private _space0:J

.field private _space1:J

.field private _space2:J

.field private _space3:J

.field private _space4:J

.field private _space5:J

.field private _space6:J

.field private _space7:J

.field private _tail:I

.field private final _tailLock:Ljava/util/concurrent/locks/ReentrantLock;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 83
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    const/16 v0, 0x80

    .line 50
    iput v0, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->DEFAULT_CAPACITY:I

    const/16 v1, 0x40

    .line 51
    iput v1, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->DEFAULT_GROWTH:I

    .line 53
    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v2, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_size:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 59
    new-instance v2, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v2}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v2, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_headLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 60
    iget-object v2, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_headLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v2

    iput-object v2, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_notEmpty:Ljava/util/concurrent/locks/Condition;

    .line 74
    new-instance v2, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v2}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v2, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_tailLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 84
    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_elements:[Ljava/lang/Object;

    .line 85
    iput v1, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_growCapacity:I

    .line 86
    iget-object v0, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_elements:[Ljava/lang/Object;

    array-length v0, v0

    iput v0, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_capacity:I

    const v0, 0x7fffffff

    .line 87
    iput v0, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_limit:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 95
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    const/16 v0, 0x80

    .line 50
    iput v0, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->DEFAULT_CAPACITY:I

    const/16 v0, 0x40

    .line 51
    iput v0, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->DEFAULT_GROWTH:I

    .line 53
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_size:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 59
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_headLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 60
    iget-object v0, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_headLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_notEmpty:Ljava/util/concurrent/locks/Condition;

    .line 74
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_tailLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 96
    new-array v0, p1, [Ljava/lang/Object;

    iput-object v0, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_elements:[Ljava/lang/Object;

    .line 97
    iget-object v0, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_elements:[Ljava/lang/Object;

    array-length v0, v0

    iput v0, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_capacity:I

    const/4 v0, -0x1

    .line 98
    iput v0, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_growCapacity:I

    .line 99
    iput p1, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_limit:I

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    .line 108
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    const/16 v0, 0x80

    .line 50
    iput v0, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->DEFAULT_CAPACITY:I

    const/16 v0, 0x40

    .line 51
    iput v0, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->DEFAULT_GROWTH:I

    .line 53
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_size:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 59
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_headLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 60
    iget-object v0, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_headLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_notEmpty:Ljava/util/concurrent/locks/Condition;

    .line 74
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_tailLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 109
    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_elements:[Ljava/lang/Object;

    .line 110
    iget-object p1, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_elements:[Ljava/lang/Object;

    array-length p1, p1

    iput p1, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_capacity:I

    .line 111
    iput p2, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_growCapacity:I

    const p1, 0x7fffffff

    .line 112
    iput p1, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_limit:I

    return-void
.end method

.method public constructor <init>(III)V
    .locals 1

    .line 122
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    const/16 v0, 0x80

    .line 50
    iput v0, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->DEFAULT_CAPACITY:I

    const/16 v0, 0x40

    .line 51
    iput v0, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->DEFAULT_GROWTH:I

    .line 53
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_size:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 59
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_headLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 60
    iget-object v0, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_headLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_notEmpty:Ljava/util/concurrent/locks/Condition;

    .line 74
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_tailLock:Ljava/util/concurrent/locks/ReentrantLock;

    if-le p1, p3, :cond_0

    .line 124
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 126
    :cond_0
    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_elements:[Ljava/lang/Object;

    .line 127
    iget-object p1, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_elements:[Ljava/lang/Object;

    array-length p1, p1

    iput p1, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_capacity:I

    .line 128
    iput p2, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_growCapacity:I

    .line 129
    iput p3, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_limit:I

    return-void
.end method

.method private grow()Z
    .locals 7

    .line 600
    iget v0, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_growCapacity:I

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    return v1

    .line 603
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_tailLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 606
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_headLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 609
    :try_start_1
    iget v0, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_head:I

    .line 610
    iget v2, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_tail:I

    .line 613
    iget v3, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_capacity:I

    iget v4, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_growCapacity:I

    add-int/2addr v3, v4

    new-array v3, v3, [Ljava/lang/Object;

    if-ge v0, v2, :cond_1

    sub-int/2addr v2, v0

    .line 618
    iget-object v4, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_elements:[Ljava/lang/Object;

    invoke-static {v4, v0, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    :cond_1
    if-gt v0, v2, :cond_3

    .line 620
    iget-object v4, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_size:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    if-lez v4, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    .line 622
    :cond_3
    :goto_0
    iget v4, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_capacity:I

    add-int/2addr v4, v2

    sub-int/2addr v4, v0

    .line 623
    iget v5, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_capacity:I

    sub-int/2addr v5, v0

    .line 624
    iget-object v6, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_elements:[Ljava/lang/Object;

    invoke-static {v6, v0, v3, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 625
    iget-object v0, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_elements:[Ljava/lang/Object;

    invoke-static {v0, v1, v3, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v2, v4

    .line 632
    :goto_1
    iput-object v3, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_elements:[Ljava/lang/Object;

    .line 633
    iget-object v0, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_elements:[Ljava/lang/Object;

    array-length v0, v0

    iput v0, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_capacity:I

    .line 634
    iput v1, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_head:I

    .line 635
    iput v2, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_tail:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x1

    .line 640
    :try_start_2
    iget-object v1, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_headLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 645
    iget-object v1, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_tailLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v0

    :catchall_0
    move-exception v0

    .line 640
    :try_start_3
    iget-object v1, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_headLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    .line 645
    iget-object v1, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_tailLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 538
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 540
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_tailLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 543
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_headLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-ltz p1, :cond_7

    .line 547
    :try_start_1
    iget-object v0, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_size:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-le p1, v0, :cond_1

    goto/16 :goto_1

    .line 550
    :cond_1
    iget-object v0, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_size:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-ne p1, v0, :cond_2

    .line 552
    invoke-virtual {p0, p2}, Lorg/eclipse/jetty/util/BlockingArrayQueue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 556
    :cond_2
    iget v0, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_tail:I

    iget v1, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_head:I

    if-ne v0, v1, :cond_3

    .line 557
    invoke-direct {p0}, Lorg/eclipse/jetty/util/BlockingArrayQueue;->grow()Z

    move-result v0

    if-nez v0, :cond_3

    .line 558
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "full"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 560
    :cond_3
    iget v0, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_head:I

    add-int/2addr v0, p1

    .line 561
    iget p1, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_capacity:I

    if-lt v0, p1, :cond_4

    .line 562
    iget p1, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_capacity:I

    sub-int/2addr v0, p1

    .line 564
    :cond_4
    iget-object p1, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_size:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 565
    iget p1, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_tail:I

    const/4 v1, 0x1

    add-int/2addr p1, v1

    iget v2, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_capacity:I

    rem-int/2addr p1, v2

    iput p1, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_tail:I

    .line 568
    iget p1, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_tail:I

    if-ge v0, p1, :cond_5

    .line 570
    iget-object p1, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_elements:[Ljava/lang/Object;

    iget-object v1, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_elements:[Ljava/lang/Object;

    add-int/lit8 v2, v0, 0x1

    iget v3, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_tail:I

    sub-int/2addr v3, v0

    invoke-static {p1, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 571
    iget-object p1, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_elements:[Ljava/lang/Object;

    aput-object p2, p1, v0

    goto :goto_0

    .line 575
    :cond_5
    iget p1, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_tail:I

    if-lez p1, :cond_6

    .line 577
    iget-object p1, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_elements:[Ljava/lang/Object;

    iget-object v2, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_elements:[Ljava/lang/Object;

    iget v3, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_tail:I

    const/4 v4, 0x0

    invoke-static {p1, v4, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 578
    iget-object p1, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_elements:[Ljava/lang/Object;

    iget-object v2, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_elements:[Ljava/lang/Object;

    iget v3, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_capacity:I

    sub-int/2addr v3, v1

    aget-object v2, v2, v3

    aput-object v2, p1, v4

    .line 581
    :cond_6
    iget-object p1, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_elements:[Ljava/lang/Object;

    iget-object v2, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_elements:[Ljava/lang/Object;

    add-int/lit8 v3, v0, 0x1

    iget v4, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_capacity:I

    sub-int/2addr v4, v0

    sub-int/2addr v4, v1

    invoke-static {p1, v0, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 582
    iget-object p1, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_elements:[Ljava/lang/Object;

    aput-object p2, p1, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 588
    :goto_0
    :try_start_2
    iget-object p1, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_headLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 593
    iget-object p1, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_tailLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 548
    :cond_7
    :goto_1
    :try_start_3
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "!(0<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "<="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_size:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 588
    :goto_2
    :try_start_4
    iget-object p2, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_headLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p1

    .line 593
    iget-object p2, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_tailLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public add(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 148
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/util/BlockingArrayQueue;->offer(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public clear()V
    .locals 2

    .line 379
    iget-object v0, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_tailLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 382
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_headLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v0, 0x0

    .line 385
    :try_start_1
    iput v0, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_head:I

    .line 386
    iput v0, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_tail:I

    .line 387
    iget-object v1, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_size:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 391
    :try_start_2
    iget-object v0, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_headLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 396
    iget-object v0, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_tailLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    .line 391
    :try_start_3
    iget-object v1, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_headLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    .line 396
    iget-object v1, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_tailLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public drainTo(Ljava/util/Collection;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "-TE;>;)I"
        }
    .end annotation

    .line 653
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public drainTo(Ljava/util/Collection;I)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "-TE;>;I)I"
        }
    .end annotation

    .line 659
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public element()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 154
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/BlockingArrayQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 156
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_0
    return-object v0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 419
    iget-object v0, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_tailLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 422
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_headLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-ltz p1, :cond_2

    .line 425
    :try_start_1
    iget-object v0, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_size:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 427
    :cond_0
    iget v0, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_head:I

    add-int/2addr v0, p1

    .line 428
    iget p1, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_capacity:I

    if-lt v0, p1, :cond_1

    .line 429
    iget p1, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_capacity:I

    sub-int/2addr v0, p1

    .line 430
    :cond_1
    iget-object p1, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_elements:[Ljava/lang/Object;

    aget-object p1, p1, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 434
    :try_start_2
    iget-object v0, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_headLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 439
    iget-object v0, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_tailLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 426
    :cond_2
    :goto_0
    :try_start_3
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "!(0<"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "<="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_size:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 434
    :goto_1
    :try_start_4
    iget-object v0, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_headLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p1

    .line 439
    iget-object v0, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_tailLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public getCapacity()I
    .locals 1

    .line 135
    iget v0, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_capacity:I

    return v0
.end method

.method public getLimit()I
    .locals 1

    .line 141
    iget v0, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_limit:I

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 404
    iget-object v0, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_size:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public offer(Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 186
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 189
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_tailLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 192
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_size:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    iget v1, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_limit:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v2, 0x0

    if-lt v0, v1, :cond_1

    .line 219
    :goto_0
    iget-object p1, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_tailLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v2

    .line 196
    :cond_1
    :try_start_1
    iget-object v0, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_size:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    iget v1, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_capacity:I

    if-ne v0, v1, :cond_3

    .line 198
    iget-object v0, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_headLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 201
    :try_start_2
    invoke-direct {p0}, Lorg/eclipse/jetty/util/BlockingArrayQueue;->grow()Z

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v0, :cond_2

    .line 206
    :try_start_3
    iget-object p1, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_headLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_headLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_1

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_headLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1

    .line 211
    :cond_3
    :goto_1
    iget-object v0, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_elements:[Ljava/lang/Object;

    iget v1, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_tail:I

    aput-object p1, v0, v1

    .line 212
    iget p1, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_tail:I

    const/4 v0, 0x1

    add-int/2addr p1, v0

    iget v1, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_capacity:I

    rem-int/2addr p1, v1

    iput p1, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_tail:I

    .line 214
    iget-object p1, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_size:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-nez p1, :cond_4

    const/4 v2, 0x1

    .line 219
    :cond_4
    iget-object p1, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_tailLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    if-eqz v2, :cond_5

    .line 224
    iget-object p1, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_headLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 227
    :try_start_4
    iget-object p1, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_notEmpty:Ljava/util/concurrent/locks/Condition;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 231
    iget-object p1, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_headLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_2

    :catchall_1
    move-exception p1

    iget-object v0, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_headLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1

    :cond_5
    :goto_2
    return v0

    :catchall_2
    move-exception p1

    .line 219
    iget-object v0, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_tailLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public offer(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 665
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public peek()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 164
    iget-object v0, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_size:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 168
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_headLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 171
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_size:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-lez v0, :cond_1

    .line 172
    iget-object v0, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_elements:[Ljava/lang/Object;

    iget v1, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_head:I

    aget-object v1, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 176
    :cond_1
    iget-object v0, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_headLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v1

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_headLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public poll()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 243
    iget-object v0, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_size:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 247
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_headLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 250
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_size:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-lez v0, :cond_2

    .line 252
    iget v0, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_head:I

    .line 253
    iget-object v2, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_elements:[Ljava/lang/Object;

    aget-object v2, v2, v0

    .line 254
    iget-object v3, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_elements:[Ljava/lang/Object;

    aput-object v1, v3, v0

    add-int/lit8 v0, v0, 0x1

    .line 255
    iget v1, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_capacity:I

    rem-int/2addr v0, v1

    iput v0, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_head:I

    .line 257
    iget-object v0, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_size:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-lez v0, :cond_1

    .line 258
    iget-object v0, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_notEmpty:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    move-object v1, v2

    .line 263
    :cond_2
    iget-object v0, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_headLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v1

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_headLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 331
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide p1

    .line 333
    iget-object p3, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_headLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p3}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    .line 338
    :goto_0
    :try_start_0
    iget-object p3, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_size:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p3
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    if-nez p3, :cond_1

    const-wide/16 v1, 0x0

    cmp-long p3, p1, v1

    if-gtz p3, :cond_0

    .line 360
    iget-object p1, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_headLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v0

    .line 342
    :cond_0
    :try_start_1
    iget-object p3, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_notEmpty:Ljava/util/concurrent/locks/Condition;

    invoke-interface {p3, p1, p2}, Ljava/util/concurrent/locks/Condition;->awaitNanos(J)J

    move-result-wide p1
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 351
    :cond_1
    :try_start_2
    iget-object p1, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_elements:[Ljava/lang/Object;

    iget p2, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_head:I

    aget-object p1, p1, p2

    .line 352
    iget-object p2, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_elements:[Ljava/lang/Object;

    iget p3, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_head:I

    aput-object v0, p2, p3

    .line 353
    iget p2, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_head:I

    add-int/lit8 p2, p2, 0x1

    iget p3, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_capacity:I

    rem-int/2addr p2, p3

    iput p2, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_head:I

    .line 355
    iget-object p2, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_size:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result p2

    if-lez p2, :cond_2

    .line 356
    iget-object p2, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_notEmpty:Ljava/util/concurrent/locks/Condition;

    invoke-interface {p2}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 360
    :cond_2
    iget-object p2, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_headLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 347
    :try_start_3
    iget-object p2, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_notEmpty:Ljava/util/concurrent/locks/Condition;

    invoke-interface {p2}, Ljava/util/concurrent/locks/Condition;->signal()V

    .line 348
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 360
    :goto_1
    iget-object p2, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_headLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public put(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 671
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/util/BlockingArrayQueue;->add(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 672
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "full"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    return-void
.end method

.method public remainingCapacity()I
    .locals 2

    .line 678
    iget-object v0, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_tailLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 681
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_headLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 684
    :try_start_1
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/BlockingArrayQueue;->getCapacity()I

    move-result v0

    invoke-virtual {p0}, Lorg/eclipse/jetty/util/BlockingArrayQueue;->size()I

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sub-int/2addr v0, v1

    .line 688
    :try_start_2
    iget-object v1, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_headLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 693
    iget-object v1, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_tailLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v0

    :catchall_0
    move-exception v0

    .line 688
    :try_start_3
    iget-object v1, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_headLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    .line 693
    iget-object v1, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_tailLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public remove()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 369
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/BlockingArrayQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 371
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_0
    return-object v0
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 447
    iget-object v0, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_tailLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 450
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_headLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-ltz p1, :cond_4

    .line 454
    :try_start_1
    iget-object v0, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_size:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_2

    .line 457
    :cond_0
    iget v0, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_head:I

    add-int/2addr v0, p1

    .line 458
    iget p1, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_capacity:I

    if-lt v0, p1, :cond_1

    .line 459
    iget p1, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_capacity:I

    sub-int/2addr v0, p1

    .line 461
    :cond_1
    iget-object p1, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_elements:[Ljava/lang/Object;

    aget-object p1, p1, v0

    .line 463
    iget v1, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_tail:I

    const/4 v2, 0x1

    if-ge v0, v1, :cond_2

    .line 465
    iget-object v1, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_elements:[Ljava/lang/Object;

    add-int/lit8 v3, v0, 0x1

    iget-object v4, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_elements:[Ljava/lang/Object;

    iget v5, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_tail:I

    sub-int/2addr v5, v0

    invoke-static {v1, v3, v4, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 466
    iget v0, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_tail:I

    sub-int/2addr v0, v2

    iput v0, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_tail:I

    .line 467
    iget-object v0, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_size:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    goto :goto_1

    .line 471
    :cond_2
    iget-object v1, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_elements:[Ljava/lang/Object;

    add-int/lit8 v3, v0, 0x1

    iget-object v4, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_elements:[Ljava/lang/Object;

    iget v5, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_capacity:I

    sub-int/2addr v5, v0

    sub-int/2addr v5, v2

    invoke-static {v1, v3, v4, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 472
    iget v0, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_tail:I

    if-lez v0, :cond_3

    .line 474
    iget-object v0, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_elements:[Ljava/lang/Object;

    iget v1, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_capacity:I

    iget-object v3, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_elements:[Ljava/lang/Object;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    aput-object v3, v0, v1

    .line 475
    iget-object v0, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_elements:[Ljava/lang/Object;

    iget-object v1, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_elements:[Ljava/lang/Object;

    iget v3, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_tail:I

    sub-int/2addr v3, v2

    invoke-static {v0, v2, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 476
    iget v0, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_tail:I

    sub-int/2addr v0, v2

    iput v0, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_tail:I

    goto :goto_0

    .line 479
    :cond_3
    iget v0, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_capacity:I

    sub-int/2addr v0, v2

    iput v0, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_tail:I

    .line 481
    :goto_0
    iget-object v0, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_size:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 488
    :goto_1
    :try_start_2
    iget-object v0, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_headLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 493
    iget-object v0, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_tailLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_3

    .line 455
    :cond_4
    :goto_2
    :try_start_3
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "!(0<"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "<="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_size:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 488
    :goto_3
    :try_start_4
    iget-object v0, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_headLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p1

    .line 493
    iget-object v0, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_tailLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 502
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 504
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_tailLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 507
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_headLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-ltz p1, :cond_3

    .line 511
    :try_start_1
    iget-object v0, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_size:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-lt p1, v0, :cond_1

    goto :goto_0

    .line 514
    :cond_1
    iget v0, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_head:I

    add-int/2addr v0, p1

    .line 515
    iget p1, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_capacity:I

    if-lt v0, p1, :cond_2

    .line 516
    iget p1, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_capacity:I

    sub-int/2addr v0, p1

    .line 518
    :cond_2
    iget-object p1, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_elements:[Ljava/lang/Object;

    aget-object p1, p1, v0

    .line 519
    iget-object v1, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_elements:[Ljava/lang/Object;

    aput-object p2, v1, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 524
    :try_start_2
    iget-object p2, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_headLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 529
    iget-object p2, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_tailLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 512
    :cond_3
    :goto_0
    :try_start_3
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "!(0<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "<="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_size:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 524
    :goto_1
    :try_start_4
    iget-object p2, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_headLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p1

    .line 529
    iget-object p2, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_tailLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public size()I
    .locals 1

    .line 411
    iget-object v0, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_size:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method sumOfSpace()J
    .locals 8

    .line 702
    iget-wide v0, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_space0:J

    const-wide/16 v2, 0x1

    add-long v4, v0, v2

    iput-wide v4, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_space0:J

    iget-wide v4, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_space1:J

    add-long v6, v4, v2

    iput-wide v6, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_space1:J

    add-long v6, v0, v4

    iget-wide v0, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_space2:J

    add-long v4, v0, v2

    iput-wide v4, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_space2:J

    add-long v4, v6, v0

    iget-wide v0, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_space3:J

    add-long v6, v0, v2

    iput-wide v6, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_space3:J

    add-long v6, v4, v0

    iget-wide v0, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_space4:J

    add-long v4, v0, v2

    iput-wide v4, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_space4:J

    add-long v4, v6, v0

    iget-wide v0, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_space5:J

    add-long v6, v0, v2

    iput-wide v6, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_space5:J

    add-long v6, v4, v0

    iget-wide v0, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_space6:J

    add-long v4, v0, v2

    iput-wide v4, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_space6:J

    add-long v4, v6, v0

    iget-wide v0, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_space7:J

    add-long v6, v0, v2

    iput-wide v6, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_space7:J

    add-long v2, v4, v0

    return-wide v2
.end method

.method public take()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 280
    iget-object v0, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_headLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    .line 285
    :goto_0
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_size:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-nez v0, :cond_0

    .line 287
    iget-object v0, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_notEmpty:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 296
    :cond_0
    :try_start_1
    iget v0, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_head:I

    .line 297
    iget-object v1, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_elements:[Ljava/lang/Object;

    aget-object v1, v1, v0

    .line 298
    iget-object v2, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_elements:[Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    .line 299
    iget v2, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_capacity:I

    rem-int/2addr v0, v2

    iput v0, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_head:I

    .line 301
    iget-object v0, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_size:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-lez v0, :cond_1

    .line 302
    iget-object v0, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_notEmpty:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 306
    :cond_1
    iget-object v0, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_headLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v1

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 292
    :try_start_2
    iget-object v1, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_notEmpty:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->signal()V

    .line 293
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 306
    :goto_1
    iget-object v1, p0, Lorg/eclipse/jetty/util/BlockingArrayQueue;->_headLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method
