.class public final Lcom/google/android/exoplayer2/source/dash/h$c;
.super Ljava/lang/Object;
.source "PlayerEmsgHandler.java"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/dash/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/exoplayer2/source/dash/h;

.field private final b:Lcom/google/android/exoplayer2/source/s;

.field private final c:Lcom/google/android/exoplayer2/m;

.field private final d:Lcom/google/android/exoplayer2/metadata/c;


# direct methods
.method constructor <init>(Lcom/google/android/exoplayer2/source/dash/h;Lcom/google/android/exoplayer2/source/s;)V
    .locals 0

    .line 314
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/h$c;->a:Lcom/google/android/exoplayer2/source/dash/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 315
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/dash/h$c;->b:Lcom/google/android/exoplayer2/source/s;

    .line 317
    new-instance p1, Lcom/google/android/exoplayer2/m;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/m;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/h$c;->c:Lcom/google/android/exoplayer2/m;

    .line 318
    new-instance p1, Lcom/google/android/exoplayer2/metadata/c;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/metadata/c;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/h$c;->d:Lcom/google/android/exoplayer2/metadata/c;

    return-void
.end method

.method private a(JJ)V
    .locals 1

    .line 430
    new-instance v0, Lcom/google/android/exoplayer2/source/dash/h$a;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/source/dash/h$a;-><init>(JJ)V

    .line 432
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/dash/h$c;->a:Lcom/google/android/exoplayer2/source/dash/h;

    invoke-static {p1}, Lcom/google/android/exoplayer2/source/dash/h;->b(Lcom/google/android/exoplayer2/source/dash/h;)Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/exoplayer2/source/dash/h$c;->a:Lcom/google/android/exoplayer2/source/dash/h;

    invoke-static {p2}, Lcom/google/android/exoplayer2/source/dash/h;->b(Lcom/google/android/exoplayer2/source/dash/h;)Landroid/os/Handler;

    move-result-object p2

    const/4 p3, 0x2

    invoke-virtual {p2, p3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private a(JLcom/google/android/exoplayer2/metadata/emsg/EventMessage;)V
    .locals 5

    .line 412
    invoke-static {p3}, Lcom/google/android/exoplayer2/source/dash/h;->a(Lcom/google/android/exoplayer2/metadata/emsg/EventMessage;)J

    move-result-wide v0

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-void

    .line 417
    :cond_0
    invoke-static {p3}, Lcom/google/android/exoplayer2/source/dash/h;->b(Lcom/google/android/exoplayer2/metadata/emsg/EventMessage;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 418
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/dash/h$c;->d()V

    goto :goto_0

    .line 420
    :cond_1
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/google/android/exoplayer2/source/dash/h$c;->a(JJ)V

    :goto_0
    return-void
.end method

.method private b()V
    .locals 5

    .line 385
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/h$c;->b:Lcom/google/android/exoplayer2/source/s;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/s;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 386
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/dash/h$c;->c()Lcom/google/android/exoplayer2/metadata/c;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 390
    :cond_1
    iget-wide v1, v0, Lcom/google/android/exoplayer2/metadata/c;->c:J

    .line 391
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/dash/h$c;->a:Lcom/google/android/exoplayer2/source/dash/h;

    invoke-static {v3}, Lcom/google/android/exoplayer2/source/dash/h;->a(Lcom/google/android/exoplayer2/source/dash/h;)Lcom/google/android/exoplayer2/metadata/emsg/a;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/google/android/exoplayer2/metadata/emsg/a;->a(Lcom/google/android/exoplayer2/metadata/c;)Lcom/google/android/exoplayer2/metadata/Metadata;

    move-result-object v0

    const/4 v3, 0x0

    .line 392
    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/metadata/Metadata;->a(I)Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/metadata/emsg/EventMessage;

    .line 393
    iget-object v3, v0, Lcom/google/android/exoplayer2/metadata/emsg/EventMessage;->a:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/android/exoplayer2/metadata/emsg/EventMessage;->b:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/android/exoplayer2/source/dash/h;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 394
    invoke-direct {p0, v1, v2, v0}, Lcom/google/android/exoplayer2/source/dash/h$c;->a(JLcom/google/android/exoplayer2/metadata/emsg/EventMessage;)V

    goto :goto_0

    .line 397
    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/h$c;->b:Lcom/google/android/exoplayer2/source/s;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/s;->l()V

    return-void
.end method

.method private c()Lcom/google/android/exoplayer2/metadata/c;
    .locals 8
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 402
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/h$c;->d:Lcom/google/android/exoplayer2/metadata/c;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/metadata/c;->a()V

    .line 403
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/dash/h$c;->b:Lcom/google/android/exoplayer2/source/s;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/dash/h$c;->c:Lcom/google/android/exoplayer2/m;

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/dash/h$c;->d:Lcom/google/android/exoplayer2/metadata/c;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    invoke-virtual/range {v1 .. v7}, Lcom/google/android/exoplayer2/source/s;->a(Lcom/google/android/exoplayer2/m;Lcom/google/android/exoplayer2/b/e;ZZJ)I

    move-result v0

    const/4 v1, -0x4

    if-ne v0, v1, :cond_0

    .line 405
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/h$c;->d:Lcom/google/android/exoplayer2/metadata/c;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/metadata/c;->h()V

    .line 406
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/h$c;->d:Lcom/google/android/exoplayer2/metadata/c;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private d()V
    .locals 3

    .line 425
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/h$c;->a:Lcom/google/android/exoplayer2/source/dash/h;

    invoke-static {v0}, Lcom/google/android/exoplayer2/source/dash/h;->b(Lcom/google/android/exoplayer2/source/dash/h;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/dash/h$c;->a:Lcom/google/android/exoplayer2/source/dash/h;

    invoke-static {v1}, Lcom/google/android/exoplayer2/source/dash/h;->b(Lcom/google/android/exoplayer2/source/dash/h;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/exoplayer2/extractor/f;IZ)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 329
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/h$c;->b:Lcom/google/android/exoplayer2/source/s;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/source/s;->a(Lcom/google/android/exoplayer2/extractor/f;IZ)I

    move-result p1

    return p1
.end method

.method public a()V
    .locals 1

    .line 379
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/h$c;->b:Lcom/google/android/exoplayer2/source/s;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/s;->a()V

    return-void
.end method

.method public a(JIIILcom/google/android/exoplayer2/extractor/o$a;)V
    .locals 7

    .line 340
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/h$c;->b:Lcom/google/android/exoplayer2/source/s;

    move-wide v1, p1

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/exoplayer2/source/s;->a(JIIILcom/google/android/exoplayer2/extractor/o$a;)V

    .line 341
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/dash/h$c;->b()V

    return-void
.end method

.method public a(Lcom/google/android/exoplayer2/Format;)V
    .locals 1

    .line 323
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/h$c;->b:Lcom/google/android/exoplayer2/source/s;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/source/s;->a(Lcom/google/android/exoplayer2/Format;)V

    return-void
.end method

.method public a(Lcom/google/android/exoplayer2/source/a/c;)V
    .locals 1

    .line 362
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/h$c;->a:Lcom/google/android/exoplayer2/source/dash/h;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/source/dash/h;->b(Lcom/google/android/exoplayer2/source/a/c;)V

    return-void
.end method

.method public a(Lcom/google/android/exoplayer2/util/o;I)V
    .locals 1

    .line 334
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/h$c;->b:Lcom/google/android/exoplayer2/source/s;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/source/s;->a(Lcom/google/android/exoplayer2/util/o;I)V

    return-void
.end method

.method public a(J)Z
    .locals 1

    .line 352
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/h$c;->a:Lcom/google/android/exoplayer2/source/dash/h;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/source/dash/h;->a(J)Z

    move-result p1

    return p1
.end method

.method public b(Lcom/google/android/exoplayer2/source/a/c;)Z
    .locals 1

    .line 374
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/h$c;->a:Lcom/google/android/exoplayer2/source/dash/h;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/source/dash/h;->a(Lcom/google/android/exoplayer2/source/a/c;)Z

    move-result p1

    return p1
.end method
