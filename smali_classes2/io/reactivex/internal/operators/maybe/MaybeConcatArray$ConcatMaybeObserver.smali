.class final Lio/reactivex/internal/operators/maybe/MaybeConcatArray$ConcatMaybeObserver;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "MaybeConcatArray.java"

# interfaces
.implements Lio/reactivex/MaybeObserver;
.implements Lorg/a/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/maybe/MaybeConcatArray;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ConcatMaybeObserver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "Lio/reactivex/MaybeObserver<",
        "TT;>;",
        "Lorg/a/d;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x30dc8174e7c3966aL


# instance fields
.field final actual:Lorg/a/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/a/c<",
            "-TT;>;"
        }
    .end annotation
.end field

.field final current:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final disposables:Lio/reactivex/internal/disposables/SequentialDisposable;

.field index:I

.field produced:J

.field final requested:Ljava/util/concurrent/atomic/AtomicLong;

.field final sources:[Lio/reactivex/MaybeSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lio/reactivex/MaybeSource<",
            "+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/a/c;[Lio/reactivex/MaybeSource;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/a/c<",
            "-TT;>;[",
            "Lio/reactivex/MaybeSource<",
            "+TT;>;)V"
        }
    .end annotation

    .line 66
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 67
    iput-object p1, p0, Lio/reactivex/internal/operators/maybe/MaybeConcatArray$ConcatMaybeObserver;->actual:Lorg/a/c;

    .line 68
    iput-object p2, p0, Lio/reactivex/internal/operators/maybe/MaybeConcatArray$ConcatMaybeObserver;->sources:[Lio/reactivex/MaybeSource;

    .line 69
    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/maybe/MaybeConcatArray$ConcatMaybeObserver;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    .line 70
    new-instance p1, Lio/reactivex/internal/disposables/SequentialDisposable;

    invoke-direct {p1}, Lio/reactivex/internal/disposables/SequentialDisposable;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/maybe/MaybeConcatArray$ConcatMaybeObserver;->disposables:Lio/reactivex/internal/disposables/SequentialDisposable;

    .line 71
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object p2, Lio/reactivex/internal/util/NotificationLite;->COMPLETE:Lio/reactivex/internal/util/NotificationLite;

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lio/reactivex/internal/operators/maybe/MaybeConcatArray$ConcatMaybeObserver;->current:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 84
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeConcatArray$ConcatMaybeObserver;->disposables:Lio/reactivex/internal/disposables/SequentialDisposable;

    invoke-virtual {v0}, Lio/reactivex/internal/disposables/SequentialDisposable;->dispose()V

    return-void
.end method

.method drain()V
    .locals 13

    .line 111
    invoke-virtual {p0}, Lio/reactivex/internal/operators/maybe/MaybeConcatArray$ConcatMaybeObserver;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 115
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeConcatArray$ConcatMaybeObserver;->current:Ljava/util/concurrent/atomic/AtomicReference;

    .line 116
    iget-object v1, p0, Lio/reactivex/internal/operators/maybe/MaybeConcatArray$ConcatMaybeObserver;->actual:Lorg/a/c;

    .line 117
    iget-object v2, p0, Lio/reactivex/internal/operators/maybe/MaybeConcatArray$ConcatMaybeObserver;->disposables:Lio/reactivex/internal/disposables/SequentialDisposable;

    .line 120
    :cond_1
    invoke-interface {v2}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    .line 121
    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    return-void

    .line 125
    :cond_2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 129
    sget-object v5, Lio/reactivex/internal/util/NotificationLite;->COMPLETE:Lio/reactivex/internal/util/NotificationLite;

    const/4 v6, 0x1

    if-eq v3, v5, :cond_4

    .line 130
    iget-wide v7, p0, Lio/reactivex/internal/operators/maybe/MaybeConcatArray$ConcatMaybeObserver;->produced:J

    .line 131
    iget-object v5, p0, Lio/reactivex/internal/operators/maybe/MaybeConcatArray$ConcatMaybeObserver;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v9

    cmp-long v5, v7, v9

    if-eqz v5, :cond_3

    const-wide/16 v9, 0x1

    add-long v11, v7, v9

    .line 132
    iput-wide v11, p0, Lio/reactivex/internal/operators/maybe/MaybeConcatArray$ConcatMaybeObserver;->produced:J

    .line 133
    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    .line 136
    invoke-interface {v1, v3}, Lorg/a/c;->onNext(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    const/4 v6, 0x0

    goto :goto_0

    .line 142
    :cond_4
    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    :goto_0
    if-eqz v6, :cond_6

    .line 145
    invoke-interface {v2}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result v3

    if-nez v3, :cond_6

    .line 146
    iget v3, p0, Lio/reactivex/internal/operators/maybe/MaybeConcatArray$ConcatMaybeObserver;->index:I

    .line 147
    iget-object v4, p0, Lio/reactivex/internal/operators/maybe/MaybeConcatArray$ConcatMaybeObserver;->sources:[Lio/reactivex/MaybeSource;

    array-length v4, v4

    if-ne v3, v4, :cond_5

    .line 148
    invoke-interface {v1}, Lorg/a/c;->onComplete()V

    return-void

    :cond_5
    add-int/lit8 v4, v3, 0x1

    .line 151
    iput v4, p0, Lio/reactivex/internal/operators/maybe/MaybeConcatArray$ConcatMaybeObserver;->index:I

    .line 153
    iget-object v4, p0, Lio/reactivex/internal/operators/maybe/MaybeConcatArray$ConcatMaybeObserver;->sources:[Lio/reactivex/MaybeSource;

    aget-object v3, v4, v3

    invoke-interface {v3, p0}, Lio/reactivex/MaybeSource;->subscribe(Lio/reactivex/MaybeObserver;)V

    .line 157
    :cond_6
    invoke-virtual {p0}, Lio/reactivex/internal/operators/maybe/MaybeConcatArray$ConcatMaybeObserver;->decrementAndGet()I

    move-result v3

    if-nez v3, :cond_1

    return-void
.end method

.method public onComplete()V
    .locals 2

    .line 105
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeConcatArray$ConcatMaybeObserver;->current:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lio/reactivex/internal/util/NotificationLite;->COMPLETE:Lio/reactivex/internal/util/NotificationLite;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    .line 106
    invoke-virtual {p0}, Lio/reactivex/internal/operators/maybe/MaybeConcatArray$ConcatMaybeObserver;->drain()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 100
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeConcatArray$ConcatMaybeObserver;->actual:Lorg/a/c;

    invoke-interface {v0, p1}, Lorg/a/c;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 1

    .line 89
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeConcatArray$ConcatMaybeObserver;->disposables:Lio/reactivex/internal/disposables/SequentialDisposable;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/disposables/SequentialDisposable;->replace(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 94
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeConcatArray$ConcatMaybeObserver;->current:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    .line 95
    invoke-virtual {p0}, Lio/reactivex/internal/operators/maybe/MaybeConcatArray$ConcatMaybeObserver;->drain()V

    return-void
.end method

.method public request(J)V
    .locals 1

    .line 76
    invoke-static {p1, p2}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeConcatArray$ConcatMaybeObserver;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v0, p1, p2}, Lio/reactivex/internal/util/BackpressureHelper;->add(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 78
    invoke-virtual {p0}, Lio/reactivex/internal/operators/maybe/MaybeConcatArray$ConcatMaybeObserver;->drain()V

    :cond_0
    return-void
.end method