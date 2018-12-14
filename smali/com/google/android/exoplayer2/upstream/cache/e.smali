.class public Lcom/google/android/exoplayer2/upstream/cache/e;
.super Ljava/lang/Object;
.source "CacheSpan.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/google/android/exoplayer2/upstream/cache/e;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:J

.field public final c:J

.field public final d:Z

.field public final e:Ljava/io/File;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public final f:J


# direct methods
.method public constructor <init>(Ljava/lang/String;JJJLjava/io/File;)V
    .locals 0
    .param p8    # Ljava/io/File;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/cache/e;->a:Ljava/lang/String;

    .line 79
    iput-wide p2, p0, Lcom/google/android/exoplayer2/upstream/cache/e;->b:J

    .line 80
    iput-wide p4, p0, Lcom/google/android/exoplayer2/upstream/cache/e;->c:J

    if-eqz p8, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 81
    :goto_0
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/upstream/cache/e;->d:Z

    .line 82
    iput-object p8, p0, Lcom/google/android/exoplayer2/upstream/cache/e;->e:Ljava/io/File;

    .line 83
    iput-wide p6, p0, Lcom/google/android/exoplayer2/upstream/cache/e;->f:J

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/exoplayer2/upstream/cache/e;)I
    .locals 6
    .param p1    # Lcom/google/android/exoplayer2/upstream/cache/e;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 102
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/e;->a:Ljava/lang/String;

    iget-object v1, p1, Lcom/google/android/exoplayer2/upstream/cache/e;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/e;->a:Ljava/lang/String;

    iget-object p1, p1, Lcom/google/android/exoplayer2/upstream/cache/e;->a:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1

    .line 105
    :cond_0
    iget-wide v0, p0, Lcom/google/android/exoplayer2/upstream/cache/e;->b:J

    iget-wide v2, p1, Lcom/google/android/exoplayer2/upstream/cache/e;->b:J

    sub-long v4, v0, v2

    const-wide/16 v0, 0x0

    cmp-long p1, v4, v0

    if-nez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    cmp-long p1, v4, v0

    if-gez p1, :cond_2

    const/4 p1, -0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    :goto_0
    return p1
.end method

.method public a()Z
    .locals 5

    .line 90
    iget-wide v0, p0, Lcom/google/android/exoplayer2/upstream/cache/e;->c:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public b()Z
    .locals 1

    .line 97
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/cache/e;->d:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 26
    check-cast p1, Lcom/google/android/exoplayer2/upstream/cache/e;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/upstream/cache/e;->a(Lcom/google/android/exoplayer2/upstream/cache/e;)I

    move-result p1

    return p1
.end method
