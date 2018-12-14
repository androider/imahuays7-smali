.class public final Lcom/google/android/exoplayer2/upstream/cache/c;
.super Ljava/lang/Object;
.source "CacheDataSourceFactory.java"

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/f$a;


# instance fields
.field private final a:Lcom/google/android/exoplayer2/upstream/cache/Cache;

.field private final b:Lcom/google/android/exoplayer2/upstream/f$a;

.field private final c:Lcom/google/android/exoplayer2/upstream/f$a;

.field private final d:Lcom/google/android/exoplayer2/upstream/e$a;

.field private final e:I

.field private final f:Lcom/google/android/exoplayer2/upstream/cache/b$a;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/f$a;I)V
    .locals 6

    const-wide/32 v4, 0x200000

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    .line 48
    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/upstream/cache/c;-><init>(Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/f$a;IJ)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/f$a;IJ)V
    .locals 7

    .line 56
    new-instance v3, Lcom/google/android/exoplayer2/upstream/o;

    invoke-direct {v3}, Lcom/google/android/exoplayer2/upstream/o;-><init>()V

    new-instance v4, Lcom/google/android/exoplayer2/upstream/cache/a;

    invoke-direct {v4, p1, p4, p5}, Lcom/google/android/exoplayer2/upstream/cache/a;-><init>(Lcom/google/android/exoplayer2/upstream/cache/Cache;J)V

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer2/upstream/cache/c;-><init>(Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/f$a;Lcom/google/android/exoplayer2/upstream/f$a;Lcom/google/android/exoplayer2/upstream/e$a;ILcom/google/android/exoplayer2/upstream/cache/b$a;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/f$a;Lcom/google/android/exoplayer2/upstream/f$a;Lcom/google/android/exoplayer2/upstream/e$a;ILcom/google/android/exoplayer2/upstream/cache/b$a;)V
    .locals 0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/cache/c;->a:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    .line 68
    iput-object p2, p0, Lcom/google/android/exoplayer2/upstream/cache/c;->b:Lcom/google/android/exoplayer2/upstream/f$a;

    .line 69
    iput-object p3, p0, Lcom/google/android/exoplayer2/upstream/cache/c;->c:Lcom/google/android/exoplayer2/upstream/f$a;

    .line 70
    iput-object p4, p0, Lcom/google/android/exoplayer2/upstream/cache/c;->d:Lcom/google/android/exoplayer2/upstream/e$a;

    .line 71
    iput p5, p0, Lcom/google/android/exoplayer2/upstream/cache/c;->e:I

    .line 72
    iput-object p6, p0, Lcom/google/android/exoplayer2/upstream/cache/c;->f:Lcom/google/android/exoplayer2/upstream/cache/b$a;

    return-void
.end method


# virtual methods
.method public synthetic a()Lcom/google/android/exoplayer2/upstream/f;
    .locals 1

    .line 27
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/upstream/cache/c;->b()Lcom/google/android/exoplayer2/upstream/cache/b;

    move-result-object v0

    return-object v0
.end method

.method public b()Lcom/google/android/exoplayer2/upstream/cache/b;
    .locals 8

    .line 77
    new-instance v7, Lcom/google/android/exoplayer2/upstream/cache/b;

    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/c;->a:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/c;->b:Lcom/google/android/exoplayer2/upstream/f$a;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/upstream/f$a;->a()Lcom/google/android/exoplayer2/upstream/f;

    move-result-object v2

    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/c;->c:Lcom/google/android/exoplayer2/upstream/f$a;

    .line 78
    invoke-interface {v0}, Lcom/google/android/exoplayer2/upstream/f$a;->a()Lcom/google/android/exoplayer2/upstream/f;

    move-result-object v3

    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/c;->d:Lcom/google/android/exoplayer2/upstream/e$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/c;->d:Lcom/google/android/exoplayer2/upstream/e$a;

    .line 79
    invoke-interface {v0}, Lcom/google/android/exoplayer2/upstream/e$a;->a()Lcom/google/android/exoplayer2/upstream/e;

    move-result-object v0

    :goto_0
    move-object v4, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    iget v5, p0, Lcom/google/android/exoplayer2/upstream/cache/c;->e:I

    iget-object v6, p0, Lcom/google/android/exoplayer2/upstream/cache/c;->f:Lcom/google/android/exoplayer2/upstream/cache/b$a;

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer2/upstream/cache/b;-><init>(Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/f;Lcom/google/android/exoplayer2/upstream/f;Lcom/google/android/exoplayer2/upstream/e;ILcom/google/android/exoplayer2/upstream/cache/b$a;)V

    return-object v7
.end method
