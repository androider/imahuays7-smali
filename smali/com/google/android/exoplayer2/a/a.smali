.class public Lcom/google/android/exoplayer2/a/a;
.super Ljava/lang/Object;
.source "AnalyticsCollector.java"

# interfaces
.implements Lcom/google/android/exoplayer2/audio/d;
.implements Lcom/google/android/exoplayer2/drm/c;
.implements Lcom/google/android/exoplayer2/metadata/d;
.implements Lcom/google/android/exoplayer2/source/p;
.implements Lcom/google/android/exoplayer2/upstream/c$a;
.implements Lcom/google/android/exoplayer2/v$b;
.implements Lcom/google/android/exoplayer2/video/f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/a/a$c;,
        Lcom/google/android/exoplayer2/a/a$b;,
        Lcom/google/android/exoplayer2/a/a$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lcom/google/android/exoplayer2/a/b;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/google/android/exoplayer2/util/c;

.field private final c:Lcom/google/android/exoplayer2/ad$b;

.field private final d:Lcom/google/android/exoplayer2/a/a$b;

.field private e:Lcom/google/android/exoplayer2/v;
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/MonotonicNonNull;
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/google/android/exoplayer2/v;Lcom/google/android/exoplayer2/util/c;)V
    .locals 0
    .param p1    # Lcom/google/android/exoplayer2/v;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    iput-object p1, p0, Lcom/google/android/exoplayer2/a/a;->e:Lcom/google/android/exoplayer2/v;

    .line 98
    invoke-static {p2}, Lcom/google/android/exoplayer2/util/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/util/c;

    iput-object p1, p0, Lcom/google/android/exoplayer2/a/a;->b:Lcom/google/android/exoplayer2/util/c;

    .line 99
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/a/a;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 100
    new-instance p1, Lcom/google/android/exoplayer2/a/a$b;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/a/a$b;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/a/a;->d:Lcom/google/android/exoplayer2/a/a$b;

    .line 101
    new-instance p1, Lcom/google/android/exoplayer2/ad$b;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/ad$b;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/a/a;->c:Lcom/google/android/exoplayer2/ad$b;

    return-void
.end method

.method private a(Lcom/google/android/exoplayer2/a/a$c;)Lcom/google/android/exoplayer2/a/b$a;
    .locals 1
    .param p1    # Lcom/google/android/exoplayer2/a/a$c;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    .line 600
    iget-object p1, p0, Lcom/google/android/exoplayer2/a/a;->e:Lcom/google/android/exoplayer2/v;

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/v;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/v;->k()I

    move-result p1

    .line 601
    iget-object v0, p0, Lcom/google/android/exoplayer2/a/a;->d:Lcom/google/android/exoplayer2/a/a$b;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/a/a$b;->a(I)Lcom/google/android/exoplayer2/source/o$a;

    move-result-object v0

    .line 602
    invoke-virtual {p0, p1, v0}, Lcom/google/android/exoplayer2/a/a;->a(ILcom/google/android/exoplayer2/source/o$a;)Lcom/google/android/exoplayer2/a/b$a;

    move-result-object p1

    return-object p1

    .line 604
    :cond_0
    iget v0, p1, Lcom/google/android/exoplayer2/a/a$c;->a:I

    iget-object p1, p1, Lcom/google/android/exoplayer2/a/a$c;->b:Lcom/google/android/exoplayer2/source/o$a;

    invoke-virtual {p0, v0, p1}, Lcom/google/android/exoplayer2/a/a;->a(ILcom/google/android/exoplayer2/source/o$a;)Lcom/google/android/exoplayer2/a/b$a;

    move-result-object p1

    return-object p1
.end method

.method private c()Lcom/google/android/exoplayer2/a/b$a;
    .locals 1

    .line 608
    iget-object v0, p0, Lcom/google/android/exoplayer2/a/a;->d:Lcom/google/android/exoplayer2/a/a$b;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/a/a$b;->b()Lcom/google/android/exoplayer2/a/a$c;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/a/a;->a(Lcom/google/android/exoplayer2/a/a$c;)Lcom/google/android/exoplayer2/a/b$a;

    move-result-object v0

    return-object v0
.end method

.method private d()Lcom/google/android/exoplayer2/a/b$a;
    .locals 1

    .line 612
    iget-object v0, p0, Lcom/google/android/exoplayer2/a/a;->d:Lcom/google/android/exoplayer2/a/a$b;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/a/a$b;->a()Lcom/google/android/exoplayer2/a/a$c;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/a/a;->a(Lcom/google/android/exoplayer2/a/a$c;)Lcom/google/android/exoplayer2/a/b$a;

    move-result-object v0

    return-object v0
.end method

.method private e()Lcom/google/android/exoplayer2/a/b$a;
    .locals 1

    .line 616
    iget-object v0, p0, Lcom/google/android/exoplayer2/a/a;->d:Lcom/google/android/exoplayer2/a/a$b;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/a/a$b;->c()Lcom/google/android/exoplayer2/a/a$c;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/a/a;->a(Lcom/google/android/exoplayer2/a/a$c;)Lcom/google/android/exoplayer2/a/b$a;

    move-result-object v0

    return-object v0
.end method

.method private f()Lcom/google/android/exoplayer2/a/b$a;
    .locals 1

    .line 620
    iget-object v0, p0, Lcom/google/android/exoplayer2/a/a;->d:Lcom/google/android/exoplayer2/a/a$b;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/a/a$b;->d()Lcom/google/android/exoplayer2/a/a$c;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/a/a;->a(Lcom/google/android/exoplayer2/a/a$c;)Lcom/google/android/exoplayer2/a/b$a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected a(ILcom/google/android/exoplayer2/source/o$a;)Lcom/google/android/exoplayer2/a/b$a;
    .locals 13
    .param p2    # Lcom/google/android/exoplayer2/source/o$a;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 561
    iget-object v0, p0, Lcom/google/android/exoplayer2/a/a;->e:Lcom/google/android/exoplayer2/v;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 562
    iget-object v0, p0, Lcom/google/android/exoplayer2/a/a;->b:Lcom/google/android/exoplayer2/util/c;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/util/c;->a()J

    move-result-wide v2

    .line 563
    iget-object v0, p0, Lcom/google/android/exoplayer2/a/a;->e:Lcom/google/android/exoplayer2/v;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/v;->y()Lcom/google/android/exoplayer2/ad;

    move-result-object v4

    .line 565
    iget-object v0, p0, Lcom/google/android/exoplayer2/a/a;->e:Lcom/google/android/exoplayer2/v;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/v;->k()I

    move-result v0

    const-wide/16 v5, 0x0

    if-ne p1, v0, :cond_1

    if-eqz p2, :cond_0

    .line 566
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/source/o$a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 568
    iget-object v0, p0, Lcom/google/android/exoplayer2/a/a;->e:Lcom/google/android/exoplayer2/v;

    .line 569
    invoke-interface {v0}, Lcom/google/android/exoplayer2/v;->s()I

    move-result v0

    iget v1, p2, Lcom/google/android/exoplayer2/source/o$a;->b:I

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/google/android/exoplayer2/a/a;->e:Lcom/google/android/exoplayer2/v;

    .line 570
    invoke-interface {v0}, Lcom/google/android/exoplayer2/v;->t()I

    move-result v0

    iget v1, p2, Lcom/google/android/exoplayer2/source/o$a;->c:I

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/google/android/exoplayer2/a/a;->e:Lcom/google/android/exoplayer2/v;

    .line 571
    invoke-interface {v0}, Lcom/google/android/exoplayer2/v;->o()J

    move-result-wide v5

    goto :goto_1

    .line 575
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/a/a;->e:Lcom/google/android/exoplayer2/v;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/v;->u()J

    move-result-wide v0

    :goto_0
    move-wide v7, v0

    goto :goto_2

    .line 577
    :cond_1
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/ad;->b()I

    move-result v0

    if-ge p1, v0, :cond_3

    if-eqz p2, :cond_2

    .line 578
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/source/o$a;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 584
    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/a/a;->c:Lcom/google/android/exoplayer2/ad$b;

    invoke-virtual {v4, p1, v0}, Lcom/google/android/exoplayer2/ad;->a(ILcom/google/android/exoplayer2/ad$b;)Lcom/google/android/exoplayer2/ad$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ad$b;->a()J

    move-result-wide v0

    goto :goto_0

    :cond_3
    :goto_1
    move-wide v7, v5

    .line 587
    :goto_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/a/a;->e:Lcom/google/android/exoplayer2/v;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/v;->p()J

    move-result-wide v0

    iget-object v5, p0, Lcom/google/android/exoplayer2/a/a;->e:Lcom/google/android/exoplayer2/v;

    invoke-interface {v5}, Lcom/google/android/exoplayer2/v;->u()J

    move-result-wide v5

    sub-long v11, v0, v5

    .line 588
    new-instance v0, Lcom/google/android/exoplayer2/a/b$a;

    iget-object v1, p0, Lcom/google/android/exoplayer2/a/a;->e:Lcom/google/android/exoplayer2/v;

    .line 594
    invoke-interface {v1}, Lcom/google/android/exoplayer2/v;->o()J

    move-result-wide v9

    move-object v1, v0

    move v5, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v12}, Lcom/google/android/exoplayer2/a/b$a;-><init>(JLcom/google/android/exoplayer2/ad;ILcom/google/android/exoplayer2/source/o$a;JJJ)V

    return-object v0
.end method

.method public final a()V
    .locals 3

    .line 140
    iget-object v0, p0, Lcom/google/android/exoplayer2/a/a;->d:Lcom/google/android/exoplayer2/a/a$b;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/a/a$b;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 141
    invoke-direct {p0}, Lcom/google/android/exoplayer2/a/a;->d()Lcom/google/android/exoplayer2/a/b$a;

    move-result-object v0

    .line 142
    iget-object v1, p0, Lcom/google/android/exoplayer2/a/a;->d:Lcom/google/android/exoplayer2/a/a$b;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/a/a$b;->f()V

    .line 143
    iget-object v1, p0, Lcom/google/android/exoplayer2/a/a;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/a/b;

    .line 144
    invoke-interface {v2, v0}, Lcom/google/android/exoplayer2/a/b;->onSeekStarted(Lcom/google/android/exoplayer2/a/b$a;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a(IJJ)V
    .locals 9

    .line 512
    invoke-direct {p0}, Lcom/google/android/exoplayer2/a/a;->f()Lcom/google/android/exoplayer2/a/b$a;

    move-result-object v7

    .line 513
    iget-object v0, p0, Lcom/google/android/exoplayer2/a/a;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/a/b;

    move-object v1, v7

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    .line 514
    invoke-interface/range {v0 .. v6}, Lcom/google/android/exoplayer2/a/b;->onBandwidthEstimate(Lcom/google/android/exoplayer2/a/b$a;IJJ)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(Lcom/google/android/exoplayer2/a/b;)V
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/google/android/exoplayer2/a/a;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final b()V
    .locals 3

    .line 180
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/exoplayer2/a/a;->d:Lcom/google/android/exoplayer2/a/a$b;

    .line 181
    invoke-static {v1}, Lcom/google/android/exoplayer2/a/a$b;->a(Lcom/google/android/exoplayer2/a/a$b;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 182
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/a/a$c;

    .line 183
    iget v2, v1, Lcom/google/android/exoplayer2/a/a$c;->a:I

    iget-object v1, v1, Lcom/google/android/exoplayer2/a/a$c;->b:Lcom/google/android/exoplayer2/source/o$a;

    invoke-virtual {p0, v2, v1}, Lcom/google/android/exoplayer2/a/a;->onMediaPeriodReleased(ILcom/google/android/exoplayer2/source/o$a;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onAudioDecoderInitialized(Ljava/lang/String;JJ)V
    .locals 6

    .line 219
    invoke-direct {p0}, Lcom/google/android/exoplayer2/a/a;->e()Lcom/google/android/exoplayer2/a/b$a;

    move-result-object p2

    .line 220
    iget-object p3, p0, Lcom/google/android/exoplayer2/a/a;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p3}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/a/b;

    const/4 v2, 0x1

    move-object v1, p2

    move-object v3, p1

    move-wide v4, p4

    .line 221
    invoke-interface/range {v0 .. v5}, Lcom/google/android/exoplayer2/a/b;->onDecoderInitialized(Lcom/google/android/exoplayer2/a/b$a;ILjava/lang/String;J)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onAudioDisabled(Lcom/google/android/exoplayer2/b/d;)V
    .locals 4

    .line 247
    invoke-direct {p0}, Lcom/google/android/exoplayer2/a/a;->c()Lcom/google/android/exoplayer2/a/b$a;

    move-result-object v0

    .line 248
    iget-object v1, p0, Lcom/google/android/exoplayer2/a/a;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/a/b;

    const/4 v3, 0x1

    .line 249
    invoke-interface {v2, v0, v3, p1}, Lcom/google/android/exoplayer2/a/b;->onDecoderDisabled(Lcom/google/android/exoplayer2/a/b$a;ILcom/google/android/exoplayer2/b/d;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onAudioEnabled(Lcom/google/android/exoplayer2/b/d;)V
    .locals 4

    .line 202
    invoke-direct {p0}, Lcom/google/android/exoplayer2/a/a;->d()Lcom/google/android/exoplayer2/a/b$a;

    move-result-object v0

    .line 203
    iget-object v1, p0, Lcom/google/android/exoplayer2/a/a;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/a/b;

    const/4 v3, 0x1

    .line 204
    invoke-interface {v2, v0, v3, p1}, Lcom/google/android/exoplayer2/a/b;->onDecoderEnabled(Lcom/google/android/exoplayer2/a/b$a;ILcom/google/android/exoplayer2/b/d;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onAudioInputFormatChanged(Lcom/google/android/exoplayer2/Format;)V
    .locals 4

    .line 228
    invoke-direct {p0}, Lcom/google/android/exoplayer2/a/a;->e()Lcom/google/android/exoplayer2/a/b$a;

    move-result-object v0

    .line 229
    iget-object v1, p0, Lcom/google/android/exoplayer2/a/a;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/a/b;

    const/4 v3, 0x1

    .line 230
    invoke-interface {v2, v0, v3, p1}, Lcom/google/android/exoplayer2/a/b;->onDecoderInputFormatChanged(Lcom/google/android/exoplayer2/a/b$a;ILcom/google/android/exoplayer2/Format;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onAudioSessionId(I)V
    .locals 3

    .line 210
    invoke-direct {p0}, Lcom/google/android/exoplayer2/a/a;->e()Lcom/google/android/exoplayer2/a/b$a;

    move-result-object v0

    .line 211
    iget-object v1, p0, Lcom/google/android/exoplayer2/a/a;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/a/b;

    .line 212
    invoke-interface {v2, v0, p1}, Lcom/google/android/exoplayer2/a/b;->onAudioSessionId(Lcom/google/android/exoplayer2/a/b$a;I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onAudioSinkUnderrun(IJJ)V
    .locals 9

    .line 237
    invoke-direct {p0}, Lcom/google/android/exoplayer2/a/a;->e()Lcom/google/android/exoplayer2/a/b$a;

    move-result-object v7

    .line 238
    iget-object v0, p0, Lcom/google/android/exoplayer2/a/a;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/a/b;

    move-object v1, v7

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    .line 239
    invoke-interface/range {v0 .. v6}, Lcom/google/android/exoplayer2/a/b;->onAudioUnderrun(Lcom/google/android/exoplayer2/a/b$a;IJJ)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onDownstreamFormatChanged(ILcom/google/android/exoplayer2/source/o$a;Lcom/google/android/exoplayer2/source/p$c;)V
    .locals 1
    .param p2    # Lcom/google/android/exoplayer2/source/o$a;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 409
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/a/a;->a(ILcom/google/android/exoplayer2/source/o$a;)Lcom/google/android/exoplayer2/a/b$a;

    move-result-object p1

    .line 410
    iget-object p2, p0, Lcom/google/android/exoplayer2/a/a;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p2}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/a/b;

    .line 411
    invoke-interface {v0, p1, p3}, Lcom/google/android/exoplayer2/a/b;->onDownstreamFormatChanged(Lcom/google/android/exoplayer2/a/b$a;Lcom/google/android/exoplayer2/source/p$c;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onDrmKeysLoaded()V
    .locals 3

    .line 522
    invoke-direct {p0}, Lcom/google/android/exoplayer2/a/a;->e()Lcom/google/android/exoplayer2/a/b$a;

    move-result-object v0

    .line 523
    iget-object v1, p0, Lcom/google/android/exoplayer2/a/a;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/a/b;

    .line 524
    invoke-interface {v2, v0}, Lcom/google/android/exoplayer2/a/b;->onDrmKeysLoaded(Lcom/google/android/exoplayer2/a/b$a;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onDrmKeysRemoved()V
    .locals 3

    .line 546
    invoke-direct {p0}, Lcom/google/android/exoplayer2/a/a;->e()Lcom/google/android/exoplayer2/a/b$a;

    move-result-object v0

    .line 547
    iget-object v1, p0, Lcom/google/android/exoplayer2/a/a;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/a/b;

    .line 548
    invoke-interface {v2, v0}, Lcom/google/android/exoplayer2/a/b;->onDrmKeysRemoved(Lcom/google/android/exoplayer2/a/b$a;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onDrmKeysRestored()V
    .locals 3

    .line 538
    invoke-direct {p0}, Lcom/google/android/exoplayer2/a/a;->e()Lcom/google/android/exoplayer2/a/b$a;

    move-result-object v0

    .line 539
    iget-object v1, p0, Lcom/google/android/exoplayer2/a/a;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/a/b;

    .line 540
    invoke-interface {v2, v0}, Lcom/google/android/exoplayer2/a/b;->onDrmKeysRestored(Lcom/google/android/exoplayer2/a/b$a;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onDrmSessionManagerError(Ljava/lang/Exception;)V
    .locals 3

    .line 530
    invoke-direct {p0}, Lcom/google/android/exoplayer2/a/a;->e()Lcom/google/android/exoplayer2/a/b$a;

    move-result-object v0

    .line 531
    iget-object v1, p0, Lcom/google/android/exoplayer2/a/a;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/a/b;

    .line 532
    invoke-interface {v2, v0, p1}, Lcom/google/android/exoplayer2/a/b;->onDrmSessionManagerError(Lcom/google/android/exoplayer2/a/b$a;Ljava/lang/Exception;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onDroppedFrames(IJ)V
    .locals 3

    .line 284
    invoke-direct {p0}, Lcom/google/android/exoplayer2/a/a;->c()Lcom/google/android/exoplayer2/a/b$a;

    move-result-object v0

    .line 285
    iget-object v1, p0, Lcom/google/android/exoplayer2/a/a;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/a/b;

    .line 286
    invoke-interface {v2, v0, p1, p2, p3}, Lcom/google/android/exoplayer2/a/b;->onDroppedVideoFrames(Lcom/google/android/exoplayer2/a/b$a;IJ)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onLoadCanceled(ILcom/google/android/exoplayer2/source/o$a;Lcom/google/android/exoplayer2/source/p$b;Lcom/google/android/exoplayer2/source/p$c;)V
    .locals 1
    .param p2    # Lcom/google/android/exoplayer2/source/o$a;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 368
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/a/a;->a(ILcom/google/android/exoplayer2/source/o$a;)Lcom/google/android/exoplayer2/a/b$a;

    move-result-object p1

    .line 369
    iget-object p2, p0, Lcom/google/android/exoplayer2/a/a;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p2}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/a/b;

    .line 370
    invoke-interface {v0, p1, p3, p4}, Lcom/google/android/exoplayer2/a/b;->onLoadCanceled(Lcom/google/android/exoplayer2/a/b$a;Lcom/google/android/exoplayer2/source/p$b;Lcom/google/android/exoplayer2/source/p$c;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onLoadCompleted(ILcom/google/android/exoplayer2/source/o$a;Lcom/google/android/exoplayer2/source/p$b;Lcom/google/android/exoplayer2/source/p$c;)V
    .locals 1
    .param p2    # Lcom/google/android/exoplayer2/source/o$a;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 356
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/a/a;->a(ILcom/google/android/exoplayer2/source/o$a;)Lcom/google/android/exoplayer2/a/b$a;

    move-result-object p1

    .line 357
    iget-object p2, p0, Lcom/google/android/exoplayer2/a/a;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p2}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/a/b;

    .line 358
    invoke-interface {v0, p1, p3, p4}, Lcom/google/android/exoplayer2/a/b;->onLoadCompleted(Lcom/google/android/exoplayer2/a/b$a;Lcom/google/android/exoplayer2/source/p$b;Lcom/google/android/exoplayer2/source/p$c;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onLoadError(ILcom/google/android/exoplayer2/source/o$a;Lcom/google/android/exoplayer2/source/p$b;Lcom/google/android/exoplayer2/source/p$c;Ljava/io/IOException;Z)V
    .locals 6
    .param p2    # Lcom/google/android/exoplayer2/source/o$a;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 382
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/a/a;->a(ILcom/google/android/exoplayer2/source/o$a;)Lcom/google/android/exoplayer2/a/b$a;

    move-result-object p1

    .line 383
    iget-object p2, p0, Lcom/google/android/exoplayer2/a/a;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p2}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/a/b;

    move-object v1, p1

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move v5, p6

    .line 384
    invoke-interface/range {v0 .. v5}, Lcom/google/android/exoplayer2/a/b;->onLoadError(Lcom/google/android/exoplayer2/a/b$a;Lcom/google/android/exoplayer2/source/p$b;Lcom/google/android/exoplayer2/source/p$c;Ljava/io/IOException;Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onLoadStarted(ILcom/google/android/exoplayer2/source/o$a;Lcom/google/android/exoplayer2/source/p$b;Lcom/google/android/exoplayer2/source/p$c;)V
    .locals 1
    .param p2    # Lcom/google/android/exoplayer2/source/o$a;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 344
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/a/a;->a(ILcom/google/android/exoplayer2/source/o$a;)Lcom/google/android/exoplayer2/a/b$a;

    move-result-object p1

    .line 345
    iget-object p2, p0, Lcom/google/android/exoplayer2/a/a;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p2}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/a/b;

    .line 346
    invoke-interface {v0, p1, p3, p4}, Lcom/google/android/exoplayer2/a/b;->onLoadStarted(Lcom/google/android/exoplayer2/a/b$a;Lcom/google/android/exoplayer2/source/p$b;Lcom/google/android/exoplayer2/source/p$c;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onLoadingChanged(Z)V
    .locals 3

    .line 442
    invoke-direct {p0}, Lcom/google/android/exoplayer2/a/a;->d()Lcom/google/android/exoplayer2/a/b$a;

    move-result-object v0

    .line 443
    iget-object v1, p0, Lcom/google/android/exoplayer2/a/a;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/a/b;

    .line 444
    invoke-interface {v2, v0, p1}, Lcom/google/android/exoplayer2/a/b;->onLoadingChanged(Lcom/google/android/exoplayer2/a/b$a;Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onMediaPeriodCreated(ILcom/google/android/exoplayer2/source/o$a;)V
    .locals 1

    .line 322
    iget-object v0, p0, Lcom/google/android/exoplayer2/a/a;->d:Lcom/google/android/exoplayer2/a/a$b;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/a/a$b;->a(ILcom/google/android/exoplayer2/source/o$a;)V

    .line 323
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/a/a;->a(ILcom/google/android/exoplayer2/source/o$a;)Lcom/google/android/exoplayer2/a/b$a;

    move-result-object p1

    .line 324
    iget-object p2, p0, Lcom/google/android/exoplayer2/a/a;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p2}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/a/b;

    .line 325
    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/a/b;->onMediaPeriodCreated(Lcom/google/android/exoplayer2/a/b$a;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onMediaPeriodReleased(ILcom/google/android/exoplayer2/source/o$a;)V
    .locals 1

    .line 331
    iget-object v0, p0, Lcom/google/android/exoplayer2/a/a;->d:Lcom/google/android/exoplayer2/a/a$b;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/a/a$b;->b(ILcom/google/android/exoplayer2/source/o$a;)V

    .line 332
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/a/a;->a(ILcom/google/android/exoplayer2/source/o$a;)Lcom/google/android/exoplayer2/a/b$a;

    move-result-object p1

    .line 333
    iget-object p2, p0, Lcom/google/android/exoplayer2/a/a;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p2}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/a/b;

    .line 334
    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/a/b;->onMediaPeriodReleased(Lcom/google/android/exoplayer2/a/b$a;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onMetadata(Lcom/google/android/exoplayer2/metadata/Metadata;)V
    .locals 3

    .line 191
    invoke-direct {p0}, Lcom/google/android/exoplayer2/a/a;->d()Lcom/google/android/exoplayer2/a/b$a;

    move-result-object v0

    .line 192
    iget-object v1, p0, Lcom/google/android/exoplayer2/a/a;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/a/b;

    .line 193
    invoke-interface {v2, v0, p1}, Lcom/google/android/exoplayer2/a/b;->onMetadata(Lcom/google/android/exoplayer2/a/b$a;Lcom/google/android/exoplayer2/metadata/Metadata;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onPlaybackParametersChanged(Lcom/google/android/exoplayer2/t;)V
    .locals 3

    .line 491
    invoke-direct {p0}, Lcom/google/android/exoplayer2/a/a;->d()Lcom/google/android/exoplayer2/a/b$a;

    move-result-object v0

    .line 492
    iget-object v1, p0, Lcom/google/android/exoplayer2/a/a;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/a/b;

    .line 493
    invoke-interface {v2, v0, p1}, Lcom/google/android/exoplayer2/a/b;->onPlaybackParametersChanged(Lcom/google/android/exoplayer2/a/b$a;Lcom/google/android/exoplayer2/t;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onPlayerError(Lcom/google/android/exoplayer2/ExoPlaybackException;)V
    .locals 3

    .line 474
    invoke-direct {p0}, Lcom/google/android/exoplayer2/a/a;->d()Lcom/google/android/exoplayer2/a/b$a;

    move-result-object v0

    .line 475
    iget-object v1, p0, Lcom/google/android/exoplayer2/a/a;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/a/b;

    .line 476
    invoke-interface {v2, v0, p1}, Lcom/google/android/exoplayer2/a/b;->onPlayerError(Lcom/google/android/exoplayer2/a/b$a;Lcom/google/android/exoplayer2/ExoPlaybackException;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onPlayerStateChanged(ZI)V
    .locals 3

    .line 450
    invoke-direct {p0}, Lcom/google/android/exoplayer2/a/a;->d()Lcom/google/android/exoplayer2/a/b$a;

    move-result-object v0

    .line 451
    iget-object v1, p0, Lcom/google/android/exoplayer2/a/a;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/a/b;

    .line 452
    invoke-interface {v2, v0, p1, p2}, Lcom/google/android/exoplayer2/a/b;->onPlayerStateChanged(Lcom/google/android/exoplayer2/a/b$a;ZI)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onPositionDiscontinuity(I)V
    .locals 3

    .line 482
    iget-object v0, p0, Lcom/google/android/exoplayer2/a/a;->d:Lcom/google/android/exoplayer2/a/a$b;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/a/a$b;->b(I)V

    .line 483
    invoke-direct {p0}, Lcom/google/android/exoplayer2/a/a;->d()Lcom/google/android/exoplayer2/a/b$a;

    move-result-object v0

    .line 484
    iget-object v1, p0, Lcom/google/android/exoplayer2/a/a;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/a/b;

    .line 485
    invoke-interface {v2, v0, p1}, Lcom/google/android/exoplayer2/a/b;->onPositionDiscontinuity(Lcom/google/android/exoplayer2/a/b$a;I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onReadingStarted(ILcom/google/android/exoplayer2/source/o$a;)V
    .locals 1

    .line 390
    iget-object v0, p0, Lcom/google/android/exoplayer2/a/a;->d:Lcom/google/android/exoplayer2/a/a$b;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/a/a$b;->c(ILcom/google/android/exoplayer2/source/o$a;)V

    .line 391
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/a/a;->a(ILcom/google/android/exoplayer2/source/o$a;)Lcom/google/android/exoplayer2/a/b$a;

    move-result-object p1

    .line 392
    iget-object p2, p0, Lcom/google/android/exoplayer2/a/a;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p2}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/a/b;

    .line 393
    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/a/b;->onReadingStarted(Lcom/google/android/exoplayer2/a/b$a;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onRenderedFirstFrame(Landroid/view/Surface;)V
    .locals 3

    .line 302
    invoke-direct {p0}, Lcom/google/android/exoplayer2/a/a;->e()Lcom/google/android/exoplayer2/a/b$a;

    move-result-object v0

    .line 303
    iget-object v1, p0, Lcom/google/android/exoplayer2/a/a;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/a/b;

    .line 304
    invoke-interface {v2, v0, p1}, Lcom/google/android/exoplayer2/a/b;->onRenderedFirstFrame(Lcom/google/android/exoplayer2/a/b$a;Landroid/view/Surface;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onRepeatModeChanged(I)V
    .locals 3

    .line 458
    invoke-direct {p0}, Lcom/google/android/exoplayer2/a/a;->d()Lcom/google/android/exoplayer2/a/b$a;

    move-result-object v0

    .line 459
    iget-object v1, p0, Lcom/google/android/exoplayer2/a/a;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/a/b;

    .line 460
    invoke-interface {v2, v0, p1}, Lcom/google/android/exoplayer2/a/b;->onRepeatModeChanged(Lcom/google/android/exoplayer2/a/b$a;I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onSeekProcessed()V
    .locals 3

    .line 499
    iget-object v0, p0, Lcom/google/android/exoplayer2/a/a;->d:Lcom/google/android/exoplayer2/a/a$b;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/a/a$b;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 500
    iget-object v0, p0, Lcom/google/android/exoplayer2/a/a;->d:Lcom/google/android/exoplayer2/a/a$b;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/a/a$b;->g()V

    .line 501
    invoke-direct {p0}, Lcom/google/android/exoplayer2/a/a;->d()Lcom/google/android/exoplayer2/a/b$a;

    move-result-object v0

    .line 502
    iget-object v1, p0, Lcom/google/android/exoplayer2/a/a;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/a/b;

    .line 503
    invoke-interface {v2, v0}, Lcom/google/android/exoplayer2/a/b;->onSeekProcessed(Lcom/google/android/exoplayer2/a/b$a;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onShuffleModeEnabledChanged(Z)V
    .locals 3

    .line 466
    invoke-direct {p0}, Lcom/google/android/exoplayer2/a/a;->d()Lcom/google/android/exoplayer2/a/b$a;

    move-result-object v0

    .line 467
    iget-object v1, p0, Lcom/google/android/exoplayer2/a/a;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/a/b;

    .line 468
    invoke-interface {v2, v0, p1}, Lcom/google/android/exoplayer2/a/b;->onShuffleModeChanged(Lcom/google/android/exoplayer2/a/b$a;Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onTimelineChanged(Lcom/google/android/exoplayer2/ad;Ljava/lang/Object;I)V
    .locals 1

    .line 424
    iget-object p2, p0, Lcom/google/android/exoplayer2/a/a;->d:Lcom/google/android/exoplayer2/a/a$b;

    invoke-virtual {p2, p1}, Lcom/google/android/exoplayer2/a/a$b;->a(Lcom/google/android/exoplayer2/ad;)V

    .line 425
    invoke-direct {p0}, Lcom/google/android/exoplayer2/a/a;->d()Lcom/google/android/exoplayer2/a/b$a;

    move-result-object p1

    .line 426
    iget-object p2, p0, Lcom/google/android/exoplayer2/a/a;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p2}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/a/b;

    .line 427
    invoke-interface {v0, p1, p3}, Lcom/google/android/exoplayer2/a/b;->onTimelineChanged(Lcom/google/android/exoplayer2/a/b$a;I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onTracksChanged(Lcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/f;)V
    .locals 3

    .line 434
    invoke-direct {p0}, Lcom/google/android/exoplayer2/a/a;->d()Lcom/google/android/exoplayer2/a/b$a;

    move-result-object v0

    .line 435
    iget-object v1, p0, Lcom/google/android/exoplayer2/a/a;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/a/b;

    .line 436
    invoke-interface {v2, v0, p1, p2}, Lcom/google/android/exoplayer2/a/b;->onTracksChanged(Lcom/google/android/exoplayer2/a/b$a;Lcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/f;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onUpstreamDiscarded(ILcom/google/android/exoplayer2/source/o$a;Lcom/google/android/exoplayer2/source/p$c;)V
    .locals 1
    .param p2    # Lcom/google/android/exoplayer2/source/o$a;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 400
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/a/a;->a(ILcom/google/android/exoplayer2/source/o$a;)Lcom/google/android/exoplayer2/a/b$a;

    move-result-object p1

    .line 401
    iget-object p2, p0, Lcom/google/android/exoplayer2/a/a;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p2}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/a/b;

    .line 402
    invoke-interface {v0, p1, p3}, Lcom/google/android/exoplayer2/a/b;->onUpstreamDiscarded(Lcom/google/android/exoplayer2/a/b$a;Lcom/google/android/exoplayer2/source/p$c;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onVideoDecoderInitialized(Ljava/lang/String;JJ)V
    .locals 6

    .line 267
    invoke-direct {p0}, Lcom/google/android/exoplayer2/a/a;->e()Lcom/google/android/exoplayer2/a/b$a;

    move-result-object p2

    .line 268
    iget-object p3, p0, Lcom/google/android/exoplayer2/a/a;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p3}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/a/b;

    const/4 v2, 0x2

    move-object v1, p2

    move-object v3, p1

    move-wide v4, p4

    .line 269
    invoke-interface/range {v0 .. v5}, Lcom/google/android/exoplayer2/a/b;->onDecoderInitialized(Lcom/google/android/exoplayer2/a/b$a;ILjava/lang/String;J)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onVideoDisabled(Lcom/google/android/exoplayer2/b/d;)V
    .locals 4

    .line 312
    invoke-direct {p0}, Lcom/google/android/exoplayer2/a/a;->c()Lcom/google/android/exoplayer2/a/b$a;

    move-result-object v0

    .line 313
    iget-object v1, p0, Lcom/google/android/exoplayer2/a/a;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/a/b;

    const/4 v3, 0x2

    .line 314
    invoke-interface {v2, v0, v3, p1}, Lcom/google/android/exoplayer2/a/b;->onDecoderDisabled(Lcom/google/android/exoplayer2/a/b$a;ILcom/google/android/exoplayer2/b/d;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onVideoEnabled(Lcom/google/android/exoplayer2/b/d;)V
    .locals 4

    .line 258
    invoke-direct {p0}, Lcom/google/android/exoplayer2/a/a;->d()Lcom/google/android/exoplayer2/a/b$a;

    move-result-object v0

    .line 259
    iget-object v1, p0, Lcom/google/android/exoplayer2/a/a;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/a/b;

    const/4 v3, 0x2

    .line 260
    invoke-interface {v2, v0, v3, p1}, Lcom/google/android/exoplayer2/a/b;->onDecoderEnabled(Lcom/google/android/exoplayer2/a/b$a;ILcom/google/android/exoplayer2/b/d;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onVideoInputFormatChanged(Lcom/google/android/exoplayer2/Format;)V
    .locals 4

    .line 276
    invoke-direct {p0}, Lcom/google/android/exoplayer2/a/a;->e()Lcom/google/android/exoplayer2/a/b$a;

    move-result-object v0

    .line 277
    iget-object v1, p0, Lcom/google/android/exoplayer2/a/a;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/a/b;

    const/4 v3, 0x2

    .line 278
    invoke-interface {v2, v0, v3, p1}, Lcom/google/android/exoplayer2/a/b;->onDecoderInputFormatChanged(Lcom/google/android/exoplayer2/a/b$a;ILcom/google/android/exoplayer2/Format;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onVideoSizeChanged(IIIF)V
    .locals 8

    .line 293
    invoke-direct {p0}, Lcom/google/android/exoplayer2/a/a;->e()Lcom/google/android/exoplayer2/a/b$a;

    move-result-object v6

    .line 294
    iget-object v0, p0, Lcom/google/android/exoplayer2/a/a;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/a/b;

    move-object v1, v6

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .line 295
    invoke-interface/range {v0 .. v5}, Lcom/google/android/exoplayer2/a/b;->onVideoSizeChanged(Lcom/google/android/exoplayer2/a/b$a;IIIF)V

    goto :goto_0

    :cond_0
    return-void
.end method
