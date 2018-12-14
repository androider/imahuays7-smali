.class public final Lcom/google/android/exoplayer2/upstream/cache/m;
.super Ljava/lang/Object;
.source "LeastRecentlyUsedCacheEvictor.java"

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/cache/d;
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/exoplayer2/upstream/cache/d;",
        "Ljava/util/Comparator<",
        "Lcom/google/android/exoplayer2/upstream/cache/e;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:J

.field private final b:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet<",
            "Lcom/google/android/exoplayer2/upstream/cache/e;",
            ">;"
        }
    .end annotation
.end field

.field private c:J


# direct methods
.method public constructor <init>(J)V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-wide p1, p0, Lcom/google/android/exoplayer2/upstream/cache/m;->a:J

    .line 34
    new-instance p1, Ljava/util/TreeSet;

    invoke-direct {p1, p0}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/cache/m;->b:Ljava/util/TreeSet;

    return-void
.end method

.method private a(Lcom/google/android/exoplayer2/upstream/cache/Cache;J)V
    .locals 5

    .line 77
    :catch_0
    :goto_0
    iget-wide v0, p0, Lcom/google/android/exoplayer2/upstream/cache/m;->c:J

    add-long v2, v0, p2

    iget-wide v0, p0, Lcom/google/android/exoplayer2/upstream/cache/m;->a:J

    cmp-long v4, v2, v0

    if-lez v4, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/m;->b:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 79
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/m;->b:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/upstream/cache/e;

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/upstream/cache/Cache;->b(Lcom/google/android/exoplayer2/upstream/cache/e;)V
    :try_end_0
    .catch Lcom/google/android/exoplayer2/upstream/cache/Cache$CacheException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/exoplayer2/upstream/cache/e;Lcom/google/android/exoplayer2/upstream/cache/e;)I
    .locals 6

    .line 68
    iget-wide v0, p1, Lcom/google/android/exoplayer2/upstream/cache/e;->f:J

    iget-wide v2, p2, Lcom/google/android/exoplayer2/upstream/cache/e;->f:J

    sub-long v4, v0, v2

    const-wide/16 v0, 0x0

    cmp-long v2, v4, v0

    if-nez v2, :cond_0

    .line 71
    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/upstream/cache/e;->a(Lcom/google/android/exoplayer2/upstream/cache/e;)I

    move-result p1

    return p1

    .line 73
    :cond_0
    iget-wide v0, p1, Lcom/google/android/exoplayer2/upstream/cache/e;->f:J

    iget-wide p1, p2, Lcom/google/android/exoplayer2/upstream/cache/e;->f:J

    cmp-long v2, v0, p1

    if-gez v2, :cond_1

    const/4 p1, -0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    :goto_0
    return p1
.end method

.method public a()V
    .locals 0

    return-void
.end method

.method public a(Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/cache/e;)V
    .locals 6

    .line 49
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/m;->b:Ljava/util/TreeSet;

    invoke-virtual {v0, p2}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 50
    iget-wide v0, p0, Lcom/google/android/exoplayer2/upstream/cache/m;->c:J

    iget-wide v2, p2, Lcom/google/android/exoplayer2/upstream/cache/e;->c:J

    add-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/android/exoplayer2/upstream/cache/m;->c:J

    const-wide/16 v0, 0x0

    .line 51
    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/exoplayer2/upstream/cache/m;->a(Lcom/google/android/exoplayer2/upstream/cache/Cache;J)V

    return-void
.end method

.method public a(Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/cache/e;Lcom/google/android/exoplayer2/upstream/cache/e;)V
    .locals 0

    .line 62
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/upstream/cache/m;->b(Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/cache/e;)V

    .line 63
    invoke-virtual {p0, p1, p3}, Lcom/google/android/exoplayer2/upstream/cache/m;->a(Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/cache/e;)V

    return-void
.end method

.method public a(Lcom/google/android/exoplayer2/upstream/cache/Cache;Ljava/lang/String;JJ)V
    .locals 0

    .line 44
    invoke-direct {p0, p1, p5, p6}, Lcom/google/android/exoplayer2/upstream/cache/m;->a(Lcom/google/android/exoplayer2/upstream/cache/Cache;J)V

    return-void
.end method

.method public b(Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/cache/e;)V
    .locals 4

    .line 56
    iget-object p1, p0, Lcom/google/android/exoplayer2/upstream/cache/m;->b:Ljava/util/TreeSet;

    invoke-virtual {p1, p2}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    .line 57
    iget-wide v0, p0, Lcom/google/android/exoplayer2/upstream/cache/m;->c:J

    iget-wide p1, p2, Lcom/google/android/exoplayer2/upstream/cache/e;->c:J

    sub-long v2, v0, p1

    iput-wide v2, p0, Lcom/google/android/exoplayer2/upstream/cache/m;->c:J

    return-void
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 25
    check-cast p1, Lcom/google/android/exoplayer2/upstream/cache/e;

    check-cast p2, Lcom/google/android/exoplayer2/upstream/cache/e;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/upstream/cache/m;->a(Lcom/google/android/exoplayer2/upstream/cache/e;Lcom/google/android/exoplayer2/upstream/cache/e;)I

    move-result p1

    return p1
.end method
