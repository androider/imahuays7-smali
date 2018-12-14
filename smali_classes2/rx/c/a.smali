.class public Lrx/c/a;
.super Lrx/e;
.source "SafeSubscriber.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/e<",
        "TT;>;"
    }
.end annotation


# instance fields
.field a:Z

.field private final b:Lrx/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/e<",
            "-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/e;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/e<",
            "-TT;>;)V"
        }
    .end annotation

    .line 70
    invoke-direct {p0, p1}, Lrx/e;-><init>(Lrx/e;)V

    const/4 v0, 0x0

    .line 67
    iput-boolean v0, p0, Lrx/c/a;->a:Z

    .line 71
    iput-object p1, p0, Lrx/c/a;->b:Lrx/e;

    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/Throwable;)V
    .locals 9

    .line 157
    invoke-static {p1}, Lrx/internal/util/b;->a(Ljava/lang/Throwable;)V

    .line 159
    :try_start_0
    iget-object v0, p0, Lrx/c/a;->b:Lrx/e;

    invoke-virtual {v0, p1}, Lrx/e;->onError(Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 199
    :try_start_1
    invoke-virtual {p0}, Lrx/c/a;->unsubscribe()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 201
    invoke-static {p1}, Lrx/internal/util/b;->a(Ljava/lang/Throwable;)V

    .line 202
    new-instance v0, Lrx/exceptions/OnErrorFailedException;

    invoke-direct {v0, p1}, Lrx/exceptions/OnErrorFailedException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception v0

    .line 161
    instance-of v1, v0, Lrx/exceptions/OnErrorNotImplementedException;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-eqz v1, :cond_0

    .line 174
    :try_start_2
    invoke-virtual {p0}, Lrx/c/a;->unsubscribe()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    .line 179
    check-cast v0, Lrx/exceptions/OnErrorNotImplementedException;

    throw v0

    :catch_2
    move-exception v0

    .line 176
    invoke-static {v0}, Lrx/internal/util/b;->a(Ljava/lang/Throwable;)V

    .line 177
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v5, "Observer.onError not implemented and error while unsubscribing."

    new-instance v6, Lrx/exceptions/CompositeException;

    new-array v4, v4, [Ljava/lang/Throwable;

    aput-object p1, v4, v3

    aput-object v0, v4, v2

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v6, p1}, Lrx/exceptions/CompositeException;-><init>(Ljava/util/Collection;)V

    invoke-direct {v1, v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 186
    :cond_0
    invoke-static {v0}, Lrx/internal/util/b;->a(Ljava/lang/Throwable;)V

    .line 188
    :try_start_3
    invoke-virtual {p0}, Lrx/c/a;->unsubscribe()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3

    .line 194
    new-instance v1, Lrx/exceptions/OnErrorFailedException;

    const-string v5, "Error occurred when trying to propagate error to Observer.onError"

    new-instance v6, Lrx/exceptions/CompositeException;

    new-array v4, v4, [Ljava/lang/Throwable;

    aput-object p1, v4, v3

    aput-object v0, v4, v2

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v6, p1}, Lrx/exceptions/CompositeException;-><init>(Ljava/util/Collection;)V

    invoke-direct {v1, v5, v6}, Lrx/exceptions/OnErrorFailedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_3
    move-exception v1

    .line 190
    invoke-static {v1}, Lrx/internal/util/b;->a(Ljava/lang/Throwable;)V

    .line 191
    new-instance v5, Lrx/exceptions/OnErrorFailedException;

    const-string v6, "Error occurred when trying to propagate error to Observer.onError and during unsubscription."

    new-instance v7, Lrx/exceptions/CompositeException;

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Throwable;

    aput-object p1, v8, v3

    aput-object v0, v8, v2

    aput-object v1, v8, v4

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v7, p1}, Lrx/exceptions/CompositeException;-><init>(Ljava/util/Collection;)V

    invoke-direct {v5, v6, v7}, Lrx/exceptions/OnErrorFailedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5
.end method

.method public onCompleted()V
    .locals 3

    .line 81
    iget-boolean v0, p0, Lrx/c/a;->a:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 82
    iput-boolean v0, p0, Lrx/c/a;->a:Z

    .line 84
    :try_start_0
    iget-object v0, p0, Lrx/c/a;->b:Lrx/e;

    invoke-virtual {v0}, Lrx/e;->onCompleted()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    :try_start_1
    invoke-virtual {p0}, Lrx/c/a;->unsubscribe()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 97
    invoke-static {v0}, Lrx/internal/util/b;->a(Ljava/lang/Throwable;)V

    .line 98
    new-instance v1, Lrx/exceptions/UnsubscribeFailedException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lrx/exceptions/UnsubscribeFailedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 88
    :try_start_2
    invoke-static {v0}, Lrx/exceptions/a;->a(Ljava/lang/Throwable;)V

    .line 89
    invoke-static {v0}, Lrx/internal/util/b;->a(Ljava/lang/Throwable;)V

    .line 90
    new-instance v1, Lrx/exceptions/OnCompletedFailedException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lrx/exceptions/OnCompletedFailedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 95
    :goto_0
    :try_start_3
    invoke-virtual {p0}, Lrx/c/a;->unsubscribe()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    .line 98
    throw v0

    :catch_2
    move-exception v0

    .line 97
    invoke-static {v0}, Lrx/internal/util/b;->a(Ljava/lang/Throwable;)V

    .line 98
    new-instance v1, Lrx/exceptions/UnsubscribeFailedException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lrx/exceptions/UnsubscribeFailedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    :goto_1
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 117
    invoke-static {p1}, Lrx/exceptions/a;->a(Ljava/lang/Throwable;)V

    .line 118
    iget-boolean v0, p0, Lrx/c/a;->a:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 119
    iput-boolean v0, p0, Lrx/c/a;->a:Z

    .line 120
    invoke-virtual {p0, p1}, Lrx/c/a;->a(Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 138
    :try_start_0
    iget-boolean v0, p0, Lrx/c/a;->a:Z

    if-nez v0, :cond_0

    .line 139
    iget-object v0, p0, Lrx/c/a;->b:Lrx/e;

    invoke-virtual {v0, p1}, Lrx/e;->onNext(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 144
    invoke-static {p1}, Lrx/exceptions/a;->a(Ljava/lang/Throwable;)V

    .line 146
    invoke-virtual {p0, p1}, Lrx/c/a;->onError(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method
