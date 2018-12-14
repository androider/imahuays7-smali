.class public abstract Lcom/google/android/exoplayer2/source/dash/a/i;
.super Ljava/lang/Object;
.source "SegmentBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/dash/a/i$d;,
        Lcom/google/android/exoplayer2/source/dash/a/i$c;,
        Lcom/google/android/exoplayer2/source/dash/a/i$b;,
        Lcom/google/android/exoplayer2/source/dash/a/i$a;,
        Lcom/google/android/exoplayer2/source/dash/a/i$e;
    }
.end annotation


# instance fields
.field final a:Lcom/google/android/exoplayer2/source/dash/a/g;

.field final b:J

.field final c:J


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/dash/a/g;JJ)V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/a/i;->a:Lcom/google/android/exoplayer2/source/dash/a/g;

    .line 41
    iput-wide p2, p0, Lcom/google/android/exoplayer2/source/dash/a/i;->b:J

    .line 42
    iput-wide p4, p0, Lcom/google/android/exoplayer2/source/dash/a/i;->c:J

    return-void
.end method


# virtual methods
.method public a()J
    .locals 6

    .line 60
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/dash/a/i;->c:J

    iget-wide v4, p0, Lcom/google/android/exoplayer2/source/dash/a/i;->b:J

    const-wide/32 v2, 0xf4240

    invoke-static/range {v0 .. v5}, Lcom/google/android/exoplayer2/util/aa;->d(JJJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public a(Lcom/google/android/exoplayer2/source/dash/a/h;)Lcom/google/android/exoplayer2/source/dash/a/g;
    .locals 0

    .line 53
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/dash/a/i;->a:Lcom/google/android/exoplayer2/source/dash/a/g;

    return-object p1
.end method
