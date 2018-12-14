.class public final Lcom/google/android/exoplayer2/upstream/r;
.super Ljava/lang/Object;
.source "TeeDataSource.java"

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/f;


# instance fields
.field private final a:Lcom/google/android/exoplayer2/upstream/f;

.field private final b:Lcom/google/android/exoplayer2/upstream/e;

.field private c:Z

.field private d:J


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/f;Lcom/google/android/exoplayer2/upstream/e;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/upstream/f;

    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/r;->a:Lcom/google/android/exoplayer2/upstream/f;

    .line 40
    invoke-static {p2}, Lcom/google/android/exoplayer2/util/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/upstream/e;

    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/r;->b:Lcom/google/android/exoplayer2/upstream/e;

    return-void
.end method


# virtual methods
.method public a([BII)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 67
    iget-wide v0, p0, Lcom/google/android/exoplayer2/upstream/r;->d:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 p1, -0x1

    return p1

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/r;->a:Lcom/google/android/exoplayer2/upstream/f;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/upstream/f;->a([BII)I

    move-result p3

    if-lez p3, :cond_1

    .line 73
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/r;->b:Lcom/google/android/exoplayer2/upstream/e;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/upstream/e;->a([BII)V

    .line 74
    iget-wide p1, p0, Lcom/google/android/exoplayer2/upstream/r;->d:J

    const-wide/16 v0, -0x1

    cmp-long v2, p1, v0

    if-eqz v2, :cond_1

    .line 75
    iget-wide p1, p0, Lcom/google/android/exoplayer2/upstream/r;->d:J

    int-to-long v0, p3

    sub-long v2, p1, v0

    iput-wide v2, p0, Lcom/google/android/exoplayer2/upstream/r;->d:J

    :cond_1
    return p3
.end method

.method public a(Lcom/google/android/exoplayer2/upstream/h;)J
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 45
    iget-object v2, v0, Lcom/google/android/exoplayer2/upstream/r;->a:Lcom/google/android/exoplayer2/upstream/f;

    invoke-interface {v2, v1}, Lcom/google/android/exoplayer2/upstream/f;->a(Lcom/google/android/exoplayer2/upstream/h;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/google/android/exoplayer2/upstream/r;->d:J

    .line 46
    iget-wide v2, v0, Lcom/google/android/exoplayer2/upstream/r;->d:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    return-wide v4

    .line 49
    :cond_0
    iget-wide v2, v1, Lcom/google/android/exoplayer2/upstream/h;->e:J

    const-wide/16 v4, -0x1

    cmp-long v6, v2, v4

    if-nez v6, :cond_1

    iget-wide v2, v0, Lcom/google/android/exoplayer2/upstream/r;->d:J

    cmp-long v6, v2, v4

    if-eqz v6, :cond_1

    .line 51
    new-instance v2, Lcom/google/android/exoplayer2/upstream/h;

    iget-object v8, v1, Lcom/google/android/exoplayer2/upstream/h;->a:Landroid/net/Uri;

    iget-wide v9, v1, Lcom/google/android/exoplayer2/upstream/h;->c:J

    iget-wide v11, v1, Lcom/google/android/exoplayer2/upstream/h;->d:J

    iget-wide v13, v0, Lcom/google/android/exoplayer2/upstream/r;->d:J

    iget-object v15, v1, Lcom/google/android/exoplayer2/upstream/h;->f:Ljava/lang/String;

    iget v1, v1, Lcom/google/android/exoplayer2/upstream/h;->g:I

    move-object v7, v2

    move/from16 v16, v1

    invoke-direct/range {v7 .. v16}, Lcom/google/android/exoplayer2/upstream/h;-><init>(Landroid/net/Uri;JJJLjava/lang/String;I)V

    move-object v1, v2

    :cond_1
    const/4 v2, 0x1

    .line 60
    iput-boolean v2, v0, Lcom/google/android/exoplayer2/upstream/r;->c:Z

    .line 61
    iget-object v2, v0, Lcom/google/android/exoplayer2/upstream/r;->b:Lcom/google/android/exoplayer2/upstream/e;

    invoke-interface {v2, v1}, Lcom/google/android/exoplayer2/upstream/e;->a(Lcom/google/android/exoplayer2/upstream/h;)V

    .line 62
    iget-wide v1, v0, Lcom/google/android/exoplayer2/upstream/r;->d:J

    return-wide v1
.end method

.method public a()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 89
    :try_start_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/r;->a:Lcom/google/android/exoplayer2/upstream/f;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/upstream/f;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/upstream/r;->c:Z

    if-eqz v1, :cond_0

    .line 92
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/r;->c:Z

    .line 93
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/r;->b:Lcom/google/android/exoplayer2/upstream/e;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/upstream/e;->a()V

    :cond_0
    return-void

    :catchall_0
    move-exception v1

    .line 91
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/upstream/r;->c:Z

    if-eqz v2, :cond_1

    .line 92
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/r;->c:Z

    .line 93
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/r;->b:Lcom/google/android/exoplayer2/upstream/e;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/upstream/e;->a()V

    :cond_1
    throw v1
.end method

.method public b()Landroid/net/Uri;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/r;->a:Lcom/google/android/exoplayer2/upstream/f;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/upstream/f;->b()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method
