.class final Lio/reactivex/subjects/SerializedSubject;
.super Lio/reactivex/subjects/Subject;
.source "SerializedSubject.java"

# interfaces
.implements Lio/reactivex/internal/util/AppendOnlyLinkedArrayList$NonThrowingPredicate;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/subjects/Subject<",
        "TT;>;",
        "Lio/reactivex/internal/util/AppendOnlyLinkedArrayList$NonThrowingPredicate<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final actual:Lio/reactivex/subjects/Subject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/subjects/Subject<",
            "TT;>;"
        }
    .end annotation
.end field

.field volatile done:Z

.field emitting:Z

.field queue:Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/util/AppendOnlyLinkedArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/reactivex/subjects/Subject;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/subjects/Subject<",
            "TT;>;)V"
        }
    .end annotation

    .line 43
    invoke-direct {p0}, Lio/reactivex/subjects/Subject;-><init>()V

    .line 44
    iput-object p1, p0, Lio/reactivex/subjects/SerializedSubject;->actual:Lio/reactivex/subjects/Subject;

    return-void
.end method


# virtual methods
.method emitLoop()V
    .locals 2

    .line 169
    :goto_0
    monitor-enter p0

    .line 170
    :try_start_0
    iget-object v0, p0, Lio/reactivex/subjects/SerializedSubject;->queue:Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 172
    iput-boolean v0, p0, Lio/reactivex/subjects/SerializedSubject;->emitting:Z

    .line 173
    monitor-exit p0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 175
    iput-object v1, p0, Lio/reactivex/subjects/SerializedSubject;->queue:Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;

    .line 176
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 177
    invoke-virtual {v0, p0}, Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;->forEachWhile(Lio/reactivex/internal/util/AppendOnlyLinkedArrayList$NonThrowingPredicate;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 176
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getThrowable()Ljava/lang/Throwable;
    .locals 1
    .annotation build Lio/reactivex/annotations/Nullable;
    .end annotation

    .line 199
    iget-object v0, p0, Lio/reactivex/subjects/SerializedSubject;->actual:Lio/reactivex/subjects/Subject;

    invoke-virtual {v0}, Lio/reactivex/subjects/Subject;->getThrowable()Ljava/lang/Throwable;

    move-result-object v0

    return-object v0
.end method

.method public hasComplete()Z
    .locals 1

    .line 204
    iget-object v0, p0, Lio/reactivex/subjects/SerializedSubject;->actual:Lio/reactivex/subjects/Subject;

    invoke-virtual {v0}, Lio/reactivex/subjects/Subject;->hasComplete()Z

    move-result v0

    return v0
.end method

.method public hasObservers()Z
    .locals 1

    .line 188
    iget-object v0, p0, Lio/reactivex/subjects/SerializedSubject;->actual:Lio/reactivex/subjects/Subject;

    invoke-virtual {v0}, Lio/reactivex/subjects/Subject;->hasObservers()Z

    move-result v0

    return v0
.end method

.method public hasThrowable()Z
    .locals 1

    .line 193
    iget-object v0, p0, Lio/reactivex/subjects/SerializedSubject;->actual:Lio/reactivex/subjects/Subject;

    invoke-virtual {v0}, Lio/reactivex/subjects/Subject;->hasThrowable()Z

    move-result v0

    return v0
.end method

.method public onComplete()V
    .locals 2

    .line 143
    iget-boolean v0, p0, Lio/reactivex/subjects/SerializedSubject;->done:Z

    if-eqz v0, :cond_0

    return-void

    .line 146
    :cond_0
    monitor-enter p0

    .line 147
    :try_start_0
    iget-boolean v0, p0, Lio/reactivex/subjects/SerializedSubject;->done:Z

    if-eqz v0, :cond_1

    .line 148
    monitor-exit p0

    return-void

    :cond_1
    const/4 v0, 0x1

    .line 150
    iput-boolean v0, p0, Lio/reactivex/subjects/SerializedSubject;->done:Z

    .line 151
    iget-boolean v1, p0, Lio/reactivex/subjects/SerializedSubject;->emitting:Z

    if-eqz v1, :cond_3

    .line 152
    iget-object v0, p0, Lio/reactivex/subjects/SerializedSubject;->queue:Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;

    if-nez v0, :cond_2

    .line 154
    new-instance v0, Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;-><init>(I)V

    .line 155
    iput-object v0, p0, Lio/reactivex/subjects/SerializedSubject;->queue:Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;

    .line 157
    :cond_2
    invoke-static {}, Lio/reactivex/internal/util/NotificationLite;->complete()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;->add(Ljava/lang/Object;)V

    .line 158
    monitor-exit p0

    return-void

    .line 160
    :cond_3
    iput-boolean v0, p0, Lio/reactivex/subjects/SerializedSubject;->emitting:Z

    .line 161
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 162
    iget-object v0, p0, Lio/reactivex/subjects/SerializedSubject;->actual:Lio/reactivex/subjects/Subject;

    invoke-virtual {v0}, Lio/reactivex/subjects/Subject;->onComplete()V

    return-void

    :catchall_0
    move-exception v0

    .line 161
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    .line 111
    iget-boolean v0, p0, Lio/reactivex/subjects/SerializedSubject;->done:Z

    if-eqz v0, :cond_0

    .line 112
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 116
    :cond_0
    monitor-enter p0

    .line 117
    :try_start_0
    iget-boolean v0, p0, Lio/reactivex/subjects/SerializedSubject;->done:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    .line 120
    :cond_1
    iput-boolean v1, p0, Lio/reactivex/subjects/SerializedSubject;->done:Z

    .line 121
    iget-boolean v0, p0, Lio/reactivex/subjects/SerializedSubject;->emitting:Z

    if-eqz v0, :cond_3

    .line 122
    iget-object v0, p0, Lio/reactivex/subjects/SerializedSubject;->queue:Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;

    if-nez v0, :cond_2

    .line 124
    new-instance v0, Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;-><init>(I)V

    .line 125
    iput-object v0, p0, Lio/reactivex/subjects/SerializedSubject;->queue:Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;

    .line 127
    :cond_2
    invoke-static {p1}, Lio/reactivex/internal/util/NotificationLite;->error(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;->setFirst(Ljava/lang/Object;)V

    .line 128
    monitor-exit p0

    return-void

    :cond_3
    const/4 v0, 0x0

    .line 131
    iput-boolean v1, p0, Lio/reactivex/subjects/SerializedSubject;->emitting:Z

    .line 133
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_4

    .line 135
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 138
    :cond_4
    iget-object v0, p0, Lio/reactivex/subjects/SerializedSubject;->actual:Lio/reactivex/subjects/Subject;

    invoke-virtual {v0, p1}, Lio/reactivex/subjects/Subject;->onError(Ljava/lang/Throwable;)V

    return-void

    :catchall_0
    move-exception p1

    .line 133
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 87
    iget-boolean v0, p0, Lio/reactivex/subjects/SerializedSubject;->done:Z

    if-eqz v0, :cond_0

    return-void

    .line 90
    :cond_0
    monitor-enter p0

    .line 91
    :try_start_0
    iget-boolean v0, p0, Lio/reactivex/subjects/SerializedSubject;->done:Z

    if-eqz v0, :cond_1

    .line 92
    monitor-exit p0

    return-void

    .line 94
    :cond_1
    iget-boolean v0, p0, Lio/reactivex/subjects/SerializedSubject;->emitting:Z

    if-eqz v0, :cond_3

    .line 95
    iget-object v0, p0, Lio/reactivex/subjects/SerializedSubject;->queue:Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;

    if-nez v0, :cond_2

    .line 97
    new-instance v0, Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;-><init>(I)V

    .line 98
    iput-object v0, p0, Lio/reactivex/subjects/SerializedSubject;->queue:Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;

    .line 100
    :cond_2
    invoke-static {p1}, Lio/reactivex/internal/util/NotificationLite;->next(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;->add(Ljava/lang/Object;)V

    .line 101
    monitor-exit p0

    return-void

    :cond_3
    const/4 v0, 0x1

    .line 103
    iput-boolean v0, p0, Lio/reactivex/subjects/SerializedSubject;->emitting:Z

    .line 104
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    iget-object v0, p0, Lio/reactivex/subjects/SerializedSubject;->actual:Lio/reactivex/subjects/Subject;

    invoke-virtual {v0, p1}, Lio/reactivex/subjects/Subject;->onNext(Ljava/lang/Object;)V

    .line 106
    invoke-virtual {p0}, Lio/reactivex/subjects/SerializedSubject;->emitLoop()V

    return-void

    :catchall_0
    move-exception p1

    .line 104
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 2

    .line 56
    iget-boolean v0, p0, Lio/reactivex/subjects/SerializedSubject;->done:Z

    const/4 v1, 0x1

    if-nez v0, :cond_3

    .line 57
    monitor-enter p0

    .line 58
    :try_start_0
    iget-boolean v0, p0, Lio/reactivex/subjects/SerializedSubject;->done:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 61
    :cond_0
    iget-boolean v0, p0, Lio/reactivex/subjects/SerializedSubject;->emitting:Z

    if-eqz v0, :cond_2

    .line 62
    iget-object v0, p0, Lio/reactivex/subjects/SerializedSubject;->queue:Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;

    if-nez v0, :cond_1

    .line 64
    new-instance v0, Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;-><init>(I)V

    .line 65
    iput-object v0, p0, Lio/reactivex/subjects/SerializedSubject;->queue:Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;

    .line 67
    :cond_1
    invoke-static {p1}, Lio/reactivex/internal/util/NotificationLite;->disposable(Lio/reactivex/disposables/Disposable;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;->add(Ljava/lang/Object;)V

    .line 68
    monitor-exit p0

    return-void

    .line 70
    :cond_2
    iput-boolean v1, p0, Lio/reactivex/subjects/SerializedSubject;->emitting:Z

    const/4 v1, 0x0

    .line 73
    :goto_0
    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_3
    :goto_1
    if-eqz v1, :cond_4

    .line 78
    invoke-interface {p1}, Lio/reactivex/disposables/Disposable;->dispose()V

    goto :goto_2

    .line 80
    :cond_4
    iget-object v0, p0, Lio/reactivex/subjects/SerializedSubject;->actual:Lio/reactivex/subjects/Subject;

    invoke-virtual {v0, p1}, Lio/reactivex/subjects/Subject;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    .line 81
    invoke-virtual {p0}, Lio/reactivex/subjects/SerializedSubject;->emitLoop()V

    :goto_2
    return-void
.end method

.method protected subscribeActual(Lio/reactivex/Observer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer<",
            "-TT;>;)V"
        }
    .end annotation

    .line 49
    iget-object v0, p0, Lio/reactivex/subjects/SerializedSubject;->actual:Lio/reactivex/subjects/Subject;

    invoke-virtual {v0, p1}, Lio/reactivex/subjects/Subject;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public test(Ljava/lang/Object;)Z
    .locals 1

    .line 183
    iget-object v0, p0, Lio/reactivex/subjects/SerializedSubject;->actual:Lio/reactivex/subjects/Subject;

    invoke-static {p1, v0}, Lio/reactivex/internal/util/NotificationLite;->acceptFull(Ljava/lang/Object;Lio/reactivex/Observer;)Z

    move-result p1

    return p1
.end method
