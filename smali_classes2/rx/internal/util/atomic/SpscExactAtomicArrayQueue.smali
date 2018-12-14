.class public final Lrx/internal/util/atomic/SpscExactAtomicArrayQueue;
.super Ljava/util/concurrent/atomic/AtomicReferenceArray;
.source "SpscExactAtomicArrayQueue.java"

# interfaces
.implements Ljava/util/Queue;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReferenceArray<",
        "TT;>;",
        "Ljava/util/Queue<",
        "TT;>;"
    }
.end annotation


# static fields
.field static final e:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicLongFieldUpdater<",
            "Lrx/internal/util/atomic/SpscExactAtomicArrayQueue;",
            ">;"
        }
    .end annotation
.end field

.field static final f:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicLongFieldUpdater<",
            "Lrx/internal/util/atomic/SpscExactAtomicArrayQueue;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x5631d997036b8b85L


# instance fields
.field final a:I

.field final b:I

.field volatile c:J

.field volatile d:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 39
    const-class v0, Lrx/internal/util/atomic/SpscExactAtomicArrayQueue;

    const-string v1, "c"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v0

    sput-object v0, Lrx/internal/util/atomic/SpscExactAtomicArrayQueue;->e:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 42
    const-class v0, Lrx/internal/util/atomic/SpscExactAtomicArrayQueue;

    const-string v1, "d"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v0

    sput-object v0, Lrx/internal/util/atomic/SpscExactAtomicArrayQueue;->f:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .line 46
    invoke-static {p1}, Lrx/internal/util/a/f;->a(I)I

    move-result v0

    invoke-direct {p0, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>(I)V

    .line 47
    invoke-virtual {p0}, Lrx/internal/util/atomic/SpscExactAtomicArrayQueue;->length()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    .line 48
    iput v1, p0, Lrx/internal/util/atomic/SpscExactAtomicArrayQueue;->a:I

    sub-int/2addr v0, p1

    .line 49
    iput v0, p0, Lrx/internal/util/atomic/SpscExactAtomicArrayQueue;->b:I

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 156
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TT;>;)Z"
        }
    .end annotation

    .line 141
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public clear()V
    .locals 1

    .line 89
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lrx/internal/util/atomic/SpscExactAtomicArrayQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lrx/internal/util/atomic/SpscExactAtomicArrayQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 0

    .line 111
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 136
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public element()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 166
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public isEmpty()Z
    .locals 5

    .line 93
    iget-wide v0, p0, Lrx/internal/util/atomic/SpscExactAtomicArrayQueue;->c:J

    iget-wide v2, p0, Lrx/internal/util/atomic/SpscExactAtomicArrayQueue;->d:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    .line 116
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public offer(Ljava/lang/Object;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 56
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 59
    :cond_0
    iget-wide v0, p0, Lrx/internal/util/atomic/SpscExactAtomicArrayQueue;->c:J

    .line 60
    iget v2, p0, Lrx/internal/util/atomic/SpscExactAtomicArrayQueue;->a:I

    .line 62
    iget v3, p0, Lrx/internal/util/atomic/SpscExactAtomicArrayQueue;->b:I

    int-to-long v3, v3

    add-long v5, v0, v3

    long-to-int v3, v5

    and-int/2addr v3, v2

    .line 63
    invoke-virtual {p0, v3}, Lrx/internal/util/atomic/SpscExactAtomicArrayQueue;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    long-to-int v3, v0

    and-int/2addr v2, v3

    .line 67
    sget-object v3, Lrx/internal/util/atomic/SpscExactAtomicArrayQueue;->e:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    const-wide/16 v4, 0x1

    add-long v6, v0, v4

    invoke-virtual {v3, p0, v6, v7}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->lazySet(Ljava/lang/Object;J)V

    .line 68
    invoke-virtual {p0, v2, p1}, Lrx/internal/util/atomic/SpscExactAtomicArrayQueue;->lazySet(ILjava/lang/Object;)V

    const/4 p1, 0x1

    return p1
.end method

.method public peek()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 85
    iget-wide v0, p0, Lrx/internal/util/atomic/SpscExactAtomicArrayQueue;->d:J

    long-to-int v0, v0

    iget v1, p0, Lrx/internal/util/atomic/SpscExactAtomicArrayQueue;->a:I

    and-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lrx/internal/util/atomic/SpscExactAtomicArrayQueue;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public poll()Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 73
    iget-wide v0, p0, Lrx/internal/util/atomic/SpscExactAtomicArrayQueue;->d:J

    long-to-int v2, v0

    .line 74
    iget v3, p0, Lrx/internal/util/atomic/SpscExactAtomicArrayQueue;->a:I

    and-int/2addr v2, v3

    .line 75
    invoke-virtual {p0, v2}, Lrx/internal/util/atomic/SpscExactAtomicArrayQueue;->get(I)Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    return-object v4

    .line 79
    :cond_0
    sget-object v5, Lrx/internal/util/atomic/SpscExactAtomicArrayQueue;->f:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    const-wide/16 v6, 0x1

    add-long v8, v0, v6

    invoke-virtual {v5, p0, v8, v9}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->lazySet(Ljava/lang/Object;J)V

    .line 80
    invoke-virtual {p0, v2, v4}, Lrx/internal/util/atomic/SpscExactAtomicArrayQueue;->lazySet(ILjava/lang/Object;)V

    return-object v3
.end method

.method public remove()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 161
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 0

    .line 131
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 146
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 151
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public size()I
    .locals 7

    .line 98
    iget-wide v0, p0, Lrx/internal/util/atomic/SpscExactAtomicArrayQueue;->d:J

    .line 100
    :goto_0
    iget-wide v2, p0, Lrx/internal/util/atomic/SpscExactAtomicArrayQueue;->c:J

    .line 101
    iget-wide v4, p0, Lrx/internal/util/atomic/SpscExactAtomicArrayQueue;->d:J

    cmp-long v6, v0, v4

    if-nez v6, :cond_0

    sub-long v0, v2, v4

    long-to-int v0, v0

    return v0

    :cond_0
    move-wide v0, v4

    goto :goto_0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    .line 121
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([TE;)[TE;"
        }
    .end annotation

    .line 126
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method
