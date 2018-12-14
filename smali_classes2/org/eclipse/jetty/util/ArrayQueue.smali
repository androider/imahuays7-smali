.class public Lorg/eclipse/jetty/util/ArrayQueue;
.super Ljava/util/AbstractList;
.source "ArrayQueue.java"

# interfaces
.implements Ljava/util/Queue;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractList<",
        "TE;>;",
        "Ljava/util/Queue<",
        "TE;>;"
    }
.end annotation


# static fields
.field public static final DEFAULT_CAPACITY:I = 0x40

.field public static final DEFAULT_GROWTH:I = 0x20


# instance fields
.field protected _elements:[Ljava/lang/Object;

.field protected final _growCapacity:I

.field protected final _lock:Ljava/lang/Object;

.field protected _nextE:I

.field protected _nextSlot:I

.field protected _size:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/16 v0, 0x40

    const/4 v1, -0x1

    .line 49
    invoke-direct {p0, v0, v1}, Lorg/eclipse/jetty/util/ArrayQueue;-><init>(II)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/4 v0, -0x1

    .line 55
    invoke-direct {p0, p1, v0}, Lorg/eclipse/jetty/util/ArrayQueue;-><init>(II)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    const/4 v0, 0x0

    .line 61
    invoke-direct {p0, p1, p2, v0}, Lorg/eclipse/jetty/util/ArrayQueue;-><init>(IILjava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(IILjava/lang/Object;)V
    .locals 0

    .line 66
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    if-nez p3, :cond_0

    move-object p3, p0

    .line 67
    :cond_0
    iput-object p3, p0, Lorg/eclipse/jetty/util/ArrayQueue;->_lock:Ljava/lang/Object;

    .line 68
    iput p2, p0, Lorg/eclipse/jetty/util/ArrayQueue;->_growCapacity:I

    .line 69
    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Lorg/eclipse/jetty/util/ArrayQueue;->_elements:[Ljava/lang/Object;

    return-void
.end method

.method private at(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 140
    iget-object v0, p0, Lorg/eclipse/jetty/util/ArrayQueue;->_elements:[Ljava/lang/Object;

    aget-object p1, v0, p1

    return-object p1
.end method

.method private dequeue()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 168
    iget v0, p0, Lorg/eclipse/jetty/util/ArrayQueue;->_nextE:I

    invoke-direct {p0, v0}, Lorg/eclipse/jetty/util/ArrayQueue;->at(I)Ljava/lang/Object;

    move-result-object v0

    .line 169
    iget-object v1, p0, Lorg/eclipse/jetty/util/ArrayQueue;->_elements:[Ljava/lang/Object;

    iget v2, p0, Lorg/eclipse/jetty/util/ArrayQueue;->_nextE:I

    const/4 v3, 0x0

    aput-object v3, v1, v2

    .line 170
    iget v1, p0, Lorg/eclipse/jetty/util/ArrayQueue;->_size:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/eclipse/jetty/util/ArrayQueue;->_size:I

    .line 171
    iget v1, p0, Lorg/eclipse/jetty/util/ArrayQueue;->_nextE:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/eclipse/jetty/util/ArrayQueue;->_nextE:I

    iget-object v2, p0, Lorg/eclipse/jetty/util/ArrayQueue;->_elements:[Ljava/lang/Object;

    array-length v2, v2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    .line 172
    iput v1, p0, Lorg/eclipse/jetty/util/ArrayQueue;->_nextE:I

    :cond_0
    return-object v0
.end method

.method private enqueue(Ljava/lang/Object;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 102
    iget v0, p0, Lorg/eclipse/jetty/util/ArrayQueue;->_size:I

    iget-object v1, p0, Lorg/eclipse/jetty/util/ArrayQueue;->_elements:[Ljava/lang/Object;

    array-length v1, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jetty/util/ArrayQueue;->grow()Z

    move-result v0

    if-nez v0, :cond_0

    return v2

    .line 105
    :cond_0
    iget v0, p0, Lorg/eclipse/jetty/util/ArrayQueue;->_size:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/eclipse/jetty/util/ArrayQueue;->_size:I

    .line 106
    iget-object v0, p0, Lorg/eclipse/jetty/util/ArrayQueue;->_elements:[Ljava/lang/Object;

    iget v3, p0, Lorg/eclipse/jetty/util/ArrayQueue;->_nextSlot:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/eclipse/jetty/util/ArrayQueue;->_nextSlot:I

    aput-object p1, v0, v3

    .line 107
    iget p1, p0, Lorg/eclipse/jetty/util/ArrayQueue;->_nextSlot:I

    iget-object v0, p0, Lorg/eclipse/jetty/util/ArrayQueue;->_elements:[Ljava/lang/Object;

    array-length v0, v0

    if-ne p1, v0, :cond_1

    .line 108
    iput v2, p0, Lorg/eclipse/jetty/util/ArrayQueue;->_nextSlot:I

    :cond_1
    return v1
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .line 308
    iget-object v0, p0, Lorg/eclipse/jetty/util/ArrayQueue;->_lock:Ljava/lang/Object;

    monitor-enter v0

    if-ltz p1, :cond_7

    .line 310
    :try_start_0
    iget v1, p0, Lorg/eclipse/jetty/util/ArrayQueue;->_size:I

    if-le p1, v1, :cond_0

    goto/16 :goto_1

    .line 313
    :cond_0
    iget v1, p0, Lorg/eclipse/jetty/util/ArrayQueue;->_size:I

    iget-object v2, p0, Lorg/eclipse/jetty/util/ArrayQueue;->_elements:[Ljava/lang/Object;

    array-length v2, v2

    if-ne v1, v2, :cond_1

    invoke-virtual {p0}, Lorg/eclipse/jetty/util/ArrayQueue;->grow()Z

    move-result v1

    if-nez v1, :cond_1

    .line 314
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Full"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 316
    :cond_1
    iget v1, p0, Lorg/eclipse/jetty/util/ArrayQueue;->_size:I

    if-ne p1, v1, :cond_2

    .line 318
    invoke-virtual {p0, p2}, Lorg/eclipse/jetty/util/ArrayQueue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 322
    :cond_2
    iget v1, p0, Lorg/eclipse/jetty/util/ArrayQueue;->_nextE:I

    add-int/2addr v1, p1

    .line 323
    iget-object p1, p0, Lorg/eclipse/jetty/util/ArrayQueue;->_elements:[Ljava/lang/Object;

    array-length p1, p1

    if-lt v1, p1, :cond_3

    .line 324
    iget-object p1, p0, Lorg/eclipse/jetty/util/ArrayQueue;->_elements:[Ljava/lang/Object;

    array-length p1, p1

    sub-int/2addr v1, p1

    .line 326
    :cond_3
    iget p1, p0, Lorg/eclipse/jetty/util/ArrayQueue;->_size:I

    const/4 v2, 0x1

    add-int/2addr p1, v2

    iput p1, p0, Lorg/eclipse/jetty/util/ArrayQueue;->_size:I

    .line 327
    iget p1, p0, Lorg/eclipse/jetty/util/ArrayQueue;->_nextSlot:I

    add-int/2addr p1, v2

    iput p1, p0, Lorg/eclipse/jetty/util/ArrayQueue;->_nextSlot:I

    .line 328
    iget p1, p0, Lorg/eclipse/jetty/util/ArrayQueue;->_nextSlot:I

    iget-object v3, p0, Lorg/eclipse/jetty/util/ArrayQueue;->_elements:[Ljava/lang/Object;

    array-length v3, v3

    const/4 v4, 0x0

    if-ne p1, v3, :cond_4

    .line 329
    iput v4, p0, Lorg/eclipse/jetty/util/ArrayQueue;->_nextSlot:I

    .line 331
    :cond_4
    iget p1, p0, Lorg/eclipse/jetty/util/ArrayQueue;->_nextSlot:I

    if-ge v1, p1, :cond_5

    .line 337
    iget-object p1, p0, Lorg/eclipse/jetty/util/ArrayQueue;->_elements:[Ljava/lang/Object;

    iget-object v2, p0, Lorg/eclipse/jetty/util/ArrayQueue;->_elements:[Ljava/lang/Object;

    add-int/lit8 v3, v1, 0x1

    iget v4, p0, Lorg/eclipse/jetty/util/ArrayQueue;->_nextSlot:I

    sub-int/2addr v4, v1

    invoke-static {p1, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 338
    iget-object p1, p0, Lorg/eclipse/jetty/util/ArrayQueue;->_elements:[Ljava/lang/Object;

    aput-object p2, p1, v1

    goto :goto_0

    .line 344
    :cond_5
    iget p1, p0, Lorg/eclipse/jetty/util/ArrayQueue;->_nextSlot:I

    if-lez p1, :cond_6

    .line 346
    iget-object p1, p0, Lorg/eclipse/jetty/util/ArrayQueue;->_elements:[Ljava/lang/Object;

    iget-object v3, p0, Lorg/eclipse/jetty/util/ArrayQueue;->_elements:[Ljava/lang/Object;

    iget v5, p0, Lorg/eclipse/jetty/util/ArrayQueue;->_nextSlot:I

    invoke-static {p1, v4, v3, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 347
    iget-object p1, p0, Lorg/eclipse/jetty/util/ArrayQueue;->_elements:[Ljava/lang/Object;

    iget-object v3, p0, Lorg/eclipse/jetty/util/ArrayQueue;->_elements:[Ljava/lang/Object;

    iget-object v5, p0, Lorg/eclipse/jetty/util/ArrayQueue;->_elements:[Ljava/lang/Object;

    array-length v5, v5

    sub-int/2addr v5, v2

    aget-object v3, v3, v5

    aput-object v3, p1, v4

    .line 350
    :cond_6
    iget-object p1, p0, Lorg/eclipse/jetty/util/ArrayQueue;->_elements:[Ljava/lang/Object;

    iget-object v3, p0, Lorg/eclipse/jetty/util/ArrayQueue;->_elements:[Ljava/lang/Object;

    add-int/lit8 v4, v1, 0x1

    iget-object v5, p0, Lorg/eclipse/jetty/util/ArrayQueue;->_elements:[Ljava/lang/Object;

    array-length v5, v5

    sub-int/2addr v5, v1

    sub-int/2addr v5, v2

    invoke-static {p1, v1, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 351
    iget-object p1, p0, Lorg/eclipse/jetty/util/ArrayQueue;->_elements:[Ljava/lang/Object;

    aput-object p2, p1, v1

    .line 354
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 311
    :cond_7
    :goto_1
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "!(0<"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "<="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lorg/eclipse/jetty/util/ArrayQueue;->_size:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 354
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public add(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 85
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/util/ArrayQueue;->offer(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 86
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Full"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public addUnsafe(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 122
    invoke-direct {p0, p1}, Lorg/eclipse/jetty/util/ArrayQueue;->enqueue(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 123
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Full"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    return-void
.end method

.method public clear()V
    .locals 2

    .line 191
    iget-object v0, p0, Lorg/eclipse/jetty/util/ArrayQueue;->_lock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 193
    :try_start_0
    iput v1, p0, Lorg/eclipse/jetty/util/ArrayQueue;->_size:I

    .line 194
    iput v1, p0, Lorg/eclipse/jetty/util/ArrayQueue;->_nextE:I

    .line 195
    iput v1, p0, Lorg/eclipse/jetty/util/ArrayQueue;->_nextSlot:I

    .line 196
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public element()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 129
    iget-object v0, p0, Lorg/eclipse/jetty/util/ArrayQueue;->_lock:Ljava/lang/Object;

    monitor-enter v0

    .line 131
    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/ArrayQueue;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 132
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 133
    :cond_0
    iget v1, p0, Lorg/eclipse/jetty/util/ArrayQueue;->_nextE:I

    invoke-direct {p0, v1}, Lorg/eclipse/jetty/util/ArrayQueue;->at(I)Ljava/lang/Object;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 134
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public get(I)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 223
    iget-object v0, p0, Lorg/eclipse/jetty/util/ArrayQueue;->_lock:Ljava/lang/Object;

    monitor-enter v0

    if-ltz p1, :cond_1

    .line 225
    :try_start_0
    iget v1, p0, Lorg/eclipse/jetty/util/ArrayQueue;->_size:I

    if-lt p1, v1, :cond_0

    goto :goto_0

    .line 227
    :cond_0
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/util/ArrayQueue;->getUnsafe(I)Ljava/lang/Object;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 226
    :cond_1
    :goto_0
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "!(0<"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "<="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lorg/eclipse/jetty/util/ArrayQueue;->_size:I

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 228
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getCapacity()I
    .locals 2

    .line 75
    iget-object v0, p0, Lorg/eclipse/jetty/util/ArrayQueue;->_lock:Ljava/lang/Object;

    monitor-enter v0

    .line 77
    :try_start_0
    iget-object v1, p0, Lorg/eclipse/jetty/util/ArrayQueue;->_elements:[Ljava/lang/Object;

    array-length v1, v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 78
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getUnsafe(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 241
    iget v0, p0, Lorg/eclipse/jetty/util/ArrayQueue;->_nextE:I

    add-int/2addr v0, p1

    iget-object p1, p0, Lorg/eclipse/jetty/util/ArrayQueue;->_elements:[Ljava/lang/Object;

    array-length p1, p1

    rem-int/2addr v0, p1

    .line 242
    invoke-direct {p0, v0}, Lorg/eclipse/jetty/util/ArrayQueue;->at(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected grow()Z
    .locals 6

    .line 360
    iget-object v0, p0, Lorg/eclipse/jetty/util/ArrayQueue;->_lock:Ljava/lang/Object;

    monitor-enter v0

    .line 362
    :try_start_0
    iget v1, p0, Lorg/eclipse/jetty/util/ArrayQueue;->_growCapacity:I

    const/4 v2, 0x0

    if-gtz v1, :cond_0

    .line 363
    monitor-exit v0

    return v2

    .line 365
    :cond_0
    iget-object v1, p0, Lorg/eclipse/jetty/util/ArrayQueue;->_elements:[Ljava/lang/Object;

    array-length v1, v1

    iget v3, p0, Lorg/eclipse/jetty/util/ArrayQueue;->_growCapacity:I

    add-int/2addr v1, v3

    new-array v1, v1, [Ljava/lang/Object;

    .line 367
    iget-object v3, p0, Lorg/eclipse/jetty/util/ArrayQueue;->_elements:[Ljava/lang/Object;

    array-length v3, v3

    iget v4, p0, Lorg/eclipse/jetty/util/ArrayQueue;->_nextE:I

    sub-int/2addr v3, v4

    if-lez v3, :cond_1

    .line 369
    iget-object v4, p0, Lorg/eclipse/jetty/util/ArrayQueue;->_elements:[Ljava/lang/Object;

    iget v5, p0, Lorg/eclipse/jetty/util/ArrayQueue;->_nextE:I

    invoke-static {v4, v5, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 370
    :cond_1
    iget v4, p0, Lorg/eclipse/jetty/util/ArrayQueue;->_nextE:I

    if-eqz v4, :cond_2

    .line 371
    iget-object v4, p0, Lorg/eclipse/jetty/util/ArrayQueue;->_elements:[Ljava/lang/Object;

    iget v5, p0, Lorg/eclipse/jetty/util/ArrayQueue;->_nextSlot:I

    invoke-static {v4, v2, v1, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 373
    :cond_2
    iput-object v1, p0, Lorg/eclipse/jetty/util/ArrayQueue;->_elements:[Ljava/lang/Object;

    .line 374
    iput v2, p0, Lorg/eclipse/jetty/util/ArrayQueue;->_nextE:I

    .line 375
    iget v1, p0, Lorg/eclipse/jetty/util/ArrayQueue;->_size:I

    iput v1, p0, Lorg/eclipse/jetty/util/ArrayQueue;->_nextSlot:I

    const/4 v1, 0x1

    .line 376
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 377
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isEmpty()Z
    .locals 2

    .line 203
    iget-object v0, p0, Lorg/eclipse/jetty/util/ArrayQueue;->_lock:Ljava/lang/Object;

    monitor-enter v0

    .line 205
    :try_start_0
    iget v1, p0, Lorg/eclipse/jetty/util/ArrayQueue;->_size:I

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 206
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public offer(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 93
    iget-object v0, p0, Lorg/eclipse/jetty/util/ArrayQueue;->_lock:Ljava/lang/Object;

    monitor-enter v0

    .line 95
    :try_start_0
    invoke-direct {p0, p1}, Lorg/eclipse/jetty/util/ArrayQueue;->enqueue(Ljava/lang/Object;)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 96
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public peek()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 146
    iget-object v0, p0, Lorg/eclipse/jetty/util/ArrayQueue;->_lock:Ljava/lang/Object;

    monitor-enter v0

    .line 148
    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/ArrayQueue;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 149
    monitor-exit v0

    return-object v1

    .line 150
    :cond_0
    iget v1, p0, Lorg/eclipse/jetty/util/ArrayQueue;->_nextE:I

    invoke-direct {p0, v1}, Lorg/eclipse/jetty/util/ArrayQueue;->at(I)Ljava/lang/Object;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 151
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public poll()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 157
    iget-object v0, p0, Lorg/eclipse/jetty/util/ArrayQueue;->_lock:Ljava/lang/Object;

    monitor-enter v0

    .line 159
    :try_start_0
    iget v1, p0, Lorg/eclipse/jetty/util/ArrayQueue;->_size:I

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 160
    monitor-exit v0

    return-object v1

    .line 161
    :cond_0
    invoke-direct {p0}, Lorg/eclipse/jetty/util/ArrayQueue;->dequeue()Ljava/lang/Object;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 162
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public remove()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 179
    iget-object v0, p0, Lorg/eclipse/jetty/util/ArrayQueue;->_lock:Ljava/lang/Object;

    monitor-enter v0

    .line 181
    :try_start_0
    iget v1, p0, Lorg/eclipse/jetty/util/ArrayQueue;->_size:I

    if-nez v1, :cond_0

    .line 182
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 183
    :cond_0
    invoke-direct {p0}, Lorg/eclipse/jetty/util/ArrayQueue;->dequeue()Ljava/lang/Object;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 184
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 249
    iget-object v0, p0, Lorg/eclipse/jetty/util/ArrayQueue;->_lock:Ljava/lang/Object;

    monitor-enter v0

    if-ltz p1, :cond_3

    .line 251
    :try_start_0
    iget v1, p0, Lorg/eclipse/jetty/util/ArrayQueue;->_size:I

    if-lt p1, v1, :cond_0

    goto :goto_2

    .line 254
    :cond_0
    iget v1, p0, Lorg/eclipse/jetty/util/ArrayQueue;->_nextE:I

    add-int/2addr v1, p1

    iget-object p1, p0, Lorg/eclipse/jetty/util/ArrayQueue;->_elements:[Ljava/lang/Object;

    array-length p1, p1

    rem-int/2addr v1, p1

    .line 255
    invoke-direct {p0, v1}, Lorg/eclipse/jetty/util/ArrayQueue;->at(I)Ljava/lang/Object;

    move-result-object p1

    .line 257
    iget v2, p0, Lorg/eclipse/jetty/util/ArrayQueue;->_nextSlot:I

    const/4 v3, 0x1

    if-ge v1, v2, :cond_1

    .line 261
    iget-object v2, p0, Lorg/eclipse/jetty/util/ArrayQueue;->_elements:[Ljava/lang/Object;

    add-int/lit8 v4, v1, 0x1

    iget-object v5, p0, Lorg/eclipse/jetty/util/ArrayQueue;->_elements:[Ljava/lang/Object;

    iget v6, p0, Lorg/eclipse/jetty/util/ArrayQueue;->_nextSlot:I

    sub-int/2addr v6, v1

    invoke-static {v2, v4, v5, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 262
    iget v1, p0, Lorg/eclipse/jetty/util/ArrayQueue;->_nextSlot:I

    sub-int/2addr v1, v3

    iput v1, p0, Lorg/eclipse/jetty/util/ArrayQueue;->_nextSlot:I

    .line 263
    iget v1, p0, Lorg/eclipse/jetty/util/ArrayQueue;->_size:I

    sub-int/2addr v1, v3

    iput v1, p0, Lorg/eclipse/jetty/util/ArrayQueue;->_size:I

    goto :goto_1

    .line 269
    :cond_1
    iget-object v2, p0, Lorg/eclipse/jetty/util/ArrayQueue;->_elements:[Ljava/lang/Object;

    add-int/lit8 v4, v1, 0x1

    iget-object v5, p0, Lorg/eclipse/jetty/util/ArrayQueue;->_elements:[Ljava/lang/Object;

    iget-object v6, p0, Lorg/eclipse/jetty/util/ArrayQueue;->_elements:[Ljava/lang/Object;

    array-length v6, v6

    sub-int/2addr v6, v1

    sub-int/2addr v6, v3

    invoke-static {v2, v4, v5, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 270
    iget v1, p0, Lorg/eclipse/jetty/util/ArrayQueue;->_nextSlot:I

    if-lez v1, :cond_2

    .line 272
    iget-object v1, p0, Lorg/eclipse/jetty/util/ArrayQueue;->_elements:[Ljava/lang/Object;

    iget-object v2, p0, Lorg/eclipse/jetty/util/ArrayQueue;->_elements:[Ljava/lang/Object;

    array-length v2, v2

    sub-int/2addr v2, v3

    iget-object v4, p0, Lorg/eclipse/jetty/util/ArrayQueue;->_elements:[Ljava/lang/Object;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    aput-object v4, v1, v2

    .line 273
    iget-object v1, p0, Lorg/eclipse/jetty/util/ArrayQueue;->_elements:[Ljava/lang/Object;

    iget-object v2, p0, Lorg/eclipse/jetty/util/ArrayQueue;->_elements:[Ljava/lang/Object;

    iget v4, p0, Lorg/eclipse/jetty/util/ArrayQueue;->_nextSlot:I

    sub-int/2addr v4, v3

    invoke-static {v1, v3, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 274
    iget v1, p0, Lorg/eclipse/jetty/util/ArrayQueue;->_nextSlot:I

    sub-int/2addr v1, v3

    iput v1, p0, Lorg/eclipse/jetty/util/ArrayQueue;->_nextSlot:I

    goto :goto_0

    .line 277
    :cond_2
    iget-object v1, p0, Lorg/eclipse/jetty/util/ArrayQueue;->_elements:[Ljava/lang/Object;

    array-length v1, v1

    sub-int/2addr v1, v3

    iput v1, p0, Lorg/eclipse/jetty/util/ArrayQueue;->_nextSlot:I

    .line 279
    :goto_0
    iget v1, p0, Lorg/eclipse/jetty/util/ArrayQueue;->_size:I

    sub-int/2addr v1, v3

    iput v1, p0, Lorg/eclipse/jetty/util/ArrayQueue;->_size:I

    .line 282
    :goto_1
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_3

    .line 252
    :cond_3
    :goto_2
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "!(0<"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "<="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lorg/eclipse/jetty/util/ArrayQueue;->_size:I

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 283
    :goto_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    .line 290
    iget-object v0, p0, Lorg/eclipse/jetty/util/ArrayQueue;->_lock:Ljava/lang/Object;

    monitor-enter v0

    if-ltz p1, :cond_2

    .line 292
    :try_start_0
    iget v1, p0, Lorg/eclipse/jetty/util/ArrayQueue;->_size:I

    if-lt p1, v1, :cond_0

    goto :goto_0

    .line 295
    :cond_0
    iget v1, p0, Lorg/eclipse/jetty/util/ArrayQueue;->_nextE:I

    add-int/2addr v1, p1

    .line 296
    iget-object p1, p0, Lorg/eclipse/jetty/util/ArrayQueue;->_elements:[Ljava/lang/Object;

    array-length p1, p1

    if-lt v1, p1, :cond_1

    .line 297
    iget-object p1, p0, Lorg/eclipse/jetty/util/ArrayQueue;->_elements:[Ljava/lang/Object;

    array-length p1, p1

    sub-int/2addr v1, p1

    .line 298
    :cond_1
    invoke-direct {p0, v1}, Lorg/eclipse/jetty/util/ArrayQueue;->at(I)Ljava/lang/Object;

    move-result-object p1

    .line 299
    iget-object v2, p0, Lorg/eclipse/jetty/util/ArrayQueue;->_elements:[Ljava/lang/Object;

    aput-object p2, v2, v1

    .line 300
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 293
    :cond_2
    :goto_0
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "!(0<"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "<="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lorg/eclipse/jetty/util/ArrayQueue;->_size:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 301
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public size()I
    .locals 2

    .line 213
    iget-object v0, p0, Lorg/eclipse/jetty/util/ArrayQueue;->_lock:Ljava/lang/Object;

    monitor-enter v0

    .line 215
    :try_start_0
    iget v1, p0, Lorg/eclipse/jetty/util/ArrayQueue;->_size:I

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 216
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
