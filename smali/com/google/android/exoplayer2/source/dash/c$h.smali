.class final Lcom/google/android/exoplayer2/source/dash/c$h;
.super Ljava/lang/Object;
.source "DashMediaSource.java"

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/Loader$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/dash/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "h"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/exoplayer2/upstream/Loader$a<",
        "Lcom/google/android/exoplayer2/upstream/q<",
        "Ljava/lang/Long;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/exoplayer2/source/dash/c;


# direct methods
.method private constructor <init>(Lcom/google/android/exoplayer2/source/dash/c;)V
    .locals 0

    .line 1185
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/c$h;->a:Lcom/google/android/exoplayer2/source/dash/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/source/dash/c;Lcom/google/android/exoplayer2/source/dash/c$1;)V
    .locals 0

    .line 1185
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/dash/c$h;-><init>(Lcom/google/android/exoplayer2/source/dash/c;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcom/google/android/exoplayer2/upstream/Loader$c;JJLjava/io/IOException;)I
    .locals 7

    .line 1185
    move-object v1, p1

    check-cast v1, Lcom/google/android/exoplayer2/upstream/q;

    move-object v0, p0

    move-wide v2, p2

    move-wide v4, p4

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/exoplayer2/source/dash/c$h;->a(Lcom/google/android/exoplayer2/upstream/q;JJLjava/io/IOException;)I

    move-result p1

    return p1
.end method

.method public a(Lcom/google/android/exoplayer2/upstream/q;JJLjava/io/IOException;)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/upstream/q<",
            "Ljava/lang/Long;",
            ">;JJ",
            "Ljava/io/IOException;",
            ")I"
        }
    .end annotation

    .line 1205
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/c$h;->a:Lcom/google/android/exoplayer2/source/dash/c;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/exoplayer2/source/dash/c;->b(Lcom/google/android/exoplayer2/upstream/q;JJLjava/io/IOException;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic a(Lcom/google/android/exoplayer2/upstream/Loader$c;JJ)V
    .locals 6

    .line 1185
    move-object v1, p1

    check-cast v1, Lcom/google/android/exoplayer2/upstream/q;

    move-object v0, p0

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/exoplayer2/source/dash/c$h;->a(Lcom/google/android/exoplayer2/upstream/q;JJ)V

    return-void
.end method

.method public bridge synthetic a(Lcom/google/android/exoplayer2/upstream/Loader$c;JJZ)V
    .locals 7

    .line 1185
    move-object v1, p1

    check-cast v1, Lcom/google/android/exoplayer2/upstream/q;

    move-object v0, p0

    move-wide v2, p2

    move-wide v4, p4

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/exoplayer2/source/dash/c$h;->a(Lcom/google/android/exoplayer2/upstream/q;JJZ)V

    return-void
.end method

.method public a(Lcom/google/android/exoplayer2/upstream/q;JJ)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/upstream/q<",
            "Ljava/lang/Long;",
            ">;JJ)V"
        }
    .end annotation

    .line 1190
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/c$h;->a:Lcom/google/android/exoplayer2/source/dash/c;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/exoplayer2/source/dash/c;->b(Lcom/google/android/exoplayer2/upstream/q;JJ)V

    return-void
.end method

.method public a(Lcom/google/android/exoplayer2/upstream/q;JJZ)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/upstream/q<",
            "Ljava/lang/Long;",
            ">;JJZ)V"
        }
    .end annotation

    .line 1196
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/c$h;->a:Lcom/google/android/exoplayer2/source/dash/c;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/exoplayer2/source/dash/c;->c(Lcom/google/android/exoplayer2/upstream/q;JJ)V

    return-void
.end method
