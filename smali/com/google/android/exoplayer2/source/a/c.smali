.class public abstract Lcom/google/android/exoplayer2/source/a/c;
.super Ljava/lang/Object;
.source "Chunk.java"

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/Loader$c;


# instance fields
.field public final b:Lcom/google/android/exoplayer2/upstream/h;

.field public final c:I

.field public final d:Lcom/google/android/exoplayer2/Format;

.field public final e:I

.field public final f:Ljava/lang/Object;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public final g:J

.field public final h:J

.field protected final i:Lcom/google/android/exoplayer2/upstream/f;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/f;Lcom/google/android/exoplayer2/upstream/h;ILcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJ)V
    .locals 0
    .param p6    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/upstream/f;

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/a/c;->i:Lcom/google/android/exoplayer2/upstream/f;

    .line 89
    invoke-static {p2}, Lcom/google/android/exoplayer2/util/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/upstream/h;

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/a/c;->b:Lcom/google/android/exoplayer2/upstream/h;

    .line 90
    iput p3, p0, Lcom/google/android/exoplayer2/source/a/c;->c:I

    .line 91
    iput-object p4, p0, Lcom/google/android/exoplayer2/source/a/c;->d:Lcom/google/android/exoplayer2/Format;

    .line 92
    iput p5, p0, Lcom/google/android/exoplayer2/source/a/c;->e:I

    .line 93
    iput-object p6, p0, Lcom/google/android/exoplayer2/source/a/c;->f:Ljava/lang/Object;

    .line 94
    iput-wide p7, p0, Lcom/google/android/exoplayer2/source/a/c;->g:J

    .line 95
    iput-wide p9, p0, Lcom/google/android/exoplayer2/source/a/c;->h:J

    return-void
.end method


# virtual methods
.method public final d()J
    .locals 6

    .line 102
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/a/c;->h:J

    iget-wide v2, p0, Lcom/google/android/exoplayer2/source/a/c;->g:J

    sub-long v4, v0, v2

    return-wide v4
.end method

.method public abstract e()J
.end method
