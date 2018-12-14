.class public final Lcom/google/android/exoplayer2/source/dash/c;
.super Lcom/google/android/exoplayer2/source/b;
.source "DashMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/dash/c$f;,
        Lcom/google/android/exoplayer2/source/dash/c$d;,
        Lcom/google/android/exoplayer2/source/dash/c$i;,
        Lcom/google/android/exoplayer2/source/dash/c$h;,
        Lcom/google/android/exoplayer2/source/dash/c$e;,
        Lcom/google/android/exoplayer2/source/dash/c$b;,
        Lcom/google/android/exoplayer2/source/dash/c$a;,
        Lcom/google/android/exoplayer2/source/dash/c$g;,
        Lcom/google/android/exoplayer2/source/dash/c$c;
    }
.end annotation


# instance fields
.field private A:J

.field private B:I

.field private C:J

.field private D:Z

.field private E:I

.field private final a:Z

.field private final b:Lcom/google/android/exoplayer2/upstream/f$a;

.field private final c:Lcom/google/android/exoplayer2/source/dash/a$a;

.field private final d:Lcom/google/android/exoplayer2/source/f;

.field private final e:I

.field private final f:J

.field private final g:Lcom/google/android/exoplayer2/source/p$a;

.field private final h:Lcom/google/android/exoplayer2/upstream/q$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/upstream/q$a<",
            "+",
            "Lcom/google/android/exoplayer2/source/dash/a/b;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Lcom/google/android/exoplayer2/source/dash/c$e;

.field private final j:Ljava/lang/Object;

.field private final k:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/google/android/exoplayer2/source/dash/b;",
            ">;"
        }
    .end annotation
.end field

.field private final l:Ljava/lang/Runnable;

.field private final m:Ljava/lang/Runnable;

.field private final n:Lcom/google/android/exoplayer2/source/dash/h$b;

.field private final o:Lcom/google/android/exoplayer2/upstream/p;

.field private final p:Ljava/lang/Object;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private q:Lcom/google/android/exoplayer2/upstream/f;

.field private r:Lcom/google/android/exoplayer2/upstream/Loader;

.field private s:Ljava/io/IOException;

.field private t:Landroid/os/Handler;

.field private u:Landroid/net/Uri;

.field private v:Landroid/net/Uri;

.field private w:Lcom/google/android/exoplayer2/source/dash/a/b;

.field private x:Z

.field private y:J

.field private z:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "goog.exo.dash"

    .line 66
    invoke-static {v0}, Lcom/google/android/exoplayer2/l;->a(Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/exoplayer2/source/dash/a/b;Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/f$a;Lcom/google/android/exoplayer2/upstream/q$a;Lcom/google/android/exoplayer2/source/dash/a$a;Lcom/google/android/exoplayer2/source/f;IJLjava/lang/Object;)V
    .locals 0
    .param p10    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/source/dash/a/b;",
            "Landroid/net/Uri;",
            "Lcom/google/android/exoplayer2/upstream/f$a;",
            "Lcom/google/android/exoplayer2/upstream/q$a<",
            "+",
            "Lcom/google/android/exoplayer2/source/dash/a/b;",
            ">;",
            "Lcom/google/android/exoplayer2/source/dash/a$a;",
            "Lcom/google/android/exoplayer2/source/f;",
            "IJ",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 490
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/b;-><init>()V

    .line 491
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/dash/c;->u:Landroid/net/Uri;

    .line 492
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/c;->w:Lcom/google/android/exoplayer2/source/dash/a/b;

    .line 493
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/dash/c;->v:Landroid/net/Uri;

    .line 494
    iput-object p3, p0, Lcom/google/android/exoplayer2/source/dash/c;->b:Lcom/google/android/exoplayer2/upstream/f$a;

    .line 495
    iput-object p4, p0, Lcom/google/android/exoplayer2/source/dash/c;->h:Lcom/google/android/exoplayer2/upstream/q$a;

    .line 496
    iput-object p5, p0, Lcom/google/android/exoplayer2/source/dash/c;->c:Lcom/google/android/exoplayer2/source/dash/a$a;

    .line 497
    iput p7, p0, Lcom/google/android/exoplayer2/source/dash/c;->e:I

    .line 498
    iput-wide p8, p0, Lcom/google/android/exoplayer2/source/dash/c;->f:J

    .line 499
    iput-object p6, p0, Lcom/google/android/exoplayer2/source/dash/c;->d:Lcom/google/android/exoplayer2/source/f;

    .line 500
    iput-object p10, p0, Lcom/google/android/exoplayer2/source/dash/c;->p:Ljava/lang/Object;

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    .line 501
    :goto_0
    iput-boolean p3, p0, Lcom/google/android/exoplayer2/source/dash/c;->a:Z

    const/4 p3, 0x0

    .line 502
    invoke-virtual {p0, p3}, Lcom/google/android/exoplayer2/source/dash/c;->a(Lcom/google/android/exoplayer2/source/o$a;)Lcom/google/android/exoplayer2/source/p$a;

    move-result-object p4

    iput-object p4, p0, Lcom/google/android/exoplayer2/source/dash/c;->g:Lcom/google/android/exoplayer2/source/p$a;

    .line 503
    new-instance p4, Ljava/lang/Object;

    invoke-direct {p4}, Ljava/lang/Object;-><init>()V

    iput-object p4, p0, Lcom/google/android/exoplayer2/source/dash/c;->j:Ljava/lang/Object;

    .line 504
    new-instance p4, Landroid/util/SparseArray;

    invoke-direct {p4}, Landroid/util/SparseArray;-><init>()V

    iput-object p4, p0, Lcom/google/android/exoplayer2/source/dash/c;->k:Landroid/util/SparseArray;

    .line 505
    new-instance p4, Lcom/google/android/exoplayer2/source/dash/c$b;

    invoke-direct {p4, p0, p3}, Lcom/google/android/exoplayer2/source/dash/c$b;-><init>(Lcom/google/android/exoplayer2/source/dash/c;Lcom/google/android/exoplayer2/source/dash/c$1;)V

    iput-object p4, p0, Lcom/google/android/exoplayer2/source/dash/c;->n:Lcom/google/android/exoplayer2/source/dash/h$b;

    const-wide p4, -0x7fffffffffffffffL    # -4.9E-324

    .line 506
    iput-wide p4, p0, Lcom/google/android/exoplayer2/source/dash/c;->C:J

    .line 507
    iget-boolean p4, p0, Lcom/google/android/exoplayer2/source/dash/c;->a:Z

    if-eqz p4, :cond_1

    .line 508
    iget-boolean p1, p1, Lcom/google/android/exoplayer2/source/dash/a/b;->d:Z

    xor-int/2addr p1, p2

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->b(Z)V

    .line 509
    iput-object p3, p0, Lcom/google/android/exoplayer2/source/dash/c;->i:Lcom/google/android/exoplayer2/source/dash/c$e;

    .line 510
    iput-object p3, p0, Lcom/google/android/exoplayer2/source/dash/c;->l:Ljava/lang/Runnable;

    .line 511
    iput-object p3, p0, Lcom/google/android/exoplayer2/source/dash/c;->m:Ljava/lang/Runnable;

    .line 512
    new-instance p1, Lcom/google/android/exoplayer2/upstream/p$a;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/upstream/p$a;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/c;->o:Lcom/google/android/exoplayer2/upstream/p;

    goto :goto_1

    .line 514
    :cond_1
    new-instance p1, Lcom/google/android/exoplayer2/source/dash/c$e;

    invoke-direct {p1, p0, p3}, Lcom/google/android/exoplayer2/source/dash/c$e;-><init>(Lcom/google/android/exoplayer2/source/dash/c;Lcom/google/android/exoplayer2/source/dash/c$1;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/c;->i:Lcom/google/android/exoplayer2/source/dash/c$e;

    .line 515
    new-instance p1, Lcom/google/android/exoplayer2/source/dash/c$f;

    invoke-direct {p1, p0}, Lcom/google/android/exoplayer2/source/dash/c$f;-><init>(Lcom/google/android/exoplayer2/source/dash/c;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/c;->o:Lcom/google/android/exoplayer2/upstream/p;

    .line 516
    new-instance p1, Lcom/google/android/exoplayer2/source/dash/c$1;

    invoke-direct {p1, p0}, Lcom/google/android/exoplayer2/source/dash/c$1;-><init>(Lcom/google/android/exoplayer2/source/dash/c;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/c;->l:Ljava/lang/Runnable;

    .line 522
    new-instance p1, Lcom/google/android/exoplayer2/source/dash/c$2;

    invoke-direct {p1, p0}, Lcom/google/android/exoplayer2/source/dash/c$2;-><init>(Lcom/google/android/exoplayer2/source/dash/c;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/c;->m:Ljava/lang/Runnable;

    :goto_1
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/source/dash/a/b;Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/f$a;Lcom/google/android/exoplayer2/upstream/q$a;Lcom/google/android/exoplayer2/source/dash/a$a;Lcom/google/android/exoplayer2/source/f;IJLjava/lang/Object;Lcom/google/android/exoplayer2/source/dash/c$1;)V
    .locals 0

    .line 63
    invoke-direct/range {p0 .. p10}, Lcom/google/android/exoplayer2/source/dash/c;-><init>(Lcom/google/android/exoplayer2/source/dash/a/b;Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/f$a;Lcom/google/android/exoplayer2/upstream/q$a;Lcom/google/android/exoplayer2/source/dash/a$a;Lcom/google/android/exoplayer2/source/f;IJLjava/lang/Object;)V

    return-void
.end method

.method private a(Lcom/google/android/exoplayer2/source/dash/a/l;)V
    .locals 2

    .line 779
    iget-object v0, p1, Lcom/google/android/exoplayer2/source/dash/a/l;->a:Ljava/lang/String;

    const-string v1, "urn:mpeg:dash:utc:direct:2014"

    .line 780
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/aa;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "urn:mpeg:dash:utc:direct:2012"

    .line 781
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/aa;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    :cond_0
    const-string v1, "urn:mpeg:dash:utc:http-iso:2014"

    .line 783
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/aa;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "urn:mpeg:dash:utc:http-iso:2012"

    .line 784
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/aa;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    const-string v1, "urn:mpeg:dash:utc:http-xsdate:2014"

    .line 786
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/aa;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "urn:mpeg:dash:utc:http-xsdate:2012"

    .line 787
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/aa;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 791
    :cond_2
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Unsupported UTC timing scheme"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/dash/c;->a(Ljava/io/IOException;)V

    goto :goto_3

    .line 788
    :cond_3
    :goto_0
    new-instance v0, Lcom/google/android/exoplayer2/source/dash/c$i;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/source/dash/c$i;-><init>(Lcom/google/android/exoplayer2/source/dash/c$1;)V

    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/source/dash/c;->a(Lcom/google/android/exoplayer2/source/dash/a/l;Lcom/google/android/exoplayer2/upstream/q$a;)V

    goto :goto_3

    .line 785
    :cond_4
    :goto_1
    new-instance v0, Lcom/google/android/exoplayer2/source/dash/c$d;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/source/dash/c$d;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/source/dash/c;->a(Lcom/google/android/exoplayer2/source/dash/a/l;Lcom/google/android/exoplayer2/upstream/q$a;)V

    goto :goto_3

    .line 782
    :cond_5
    :goto_2
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/dash/c;->b(Lcom/google/android/exoplayer2/source/dash/a/l;)V

    :goto_3
    return-void
.end method

.method private a(Lcom/google/android/exoplayer2/source/dash/a/l;Lcom/google/android/exoplayer2/upstream/q$a;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/source/dash/a/l;",
            "Lcom/google/android/exoplayer2/upstream/q$a<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 806
    new-instance v0, Lcom/google/android/exoplayer2/upstream/q;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/dash/c;->q:Lcom/google/android/exoplayer2/upstream/f;

    iget-object p1, p1, Lcom/google/android/exoplayer2/source/dash/a/l;->b:Ljava/lang/String;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const/4 v2, 0x5

    invoke-direct {v0, v1, p1, v2, p2}, Lcom/google/android/exoplayer2/upstream/q;-><init>(Lcom/google/android/exoplayer2/upstream/f;Landroid/net/Uri;ILcom/google/android/exoplayer2/upstream/q$a;)V

    new-instance p1, Lcom/google/android/exoplayer2/source/dash/c$h;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/google/android/exoplayer2/source/dash/c$h;-><init>(Lcom/google/android/exoplayer2/source/dash/c;Lcom/google/android/exoplayer2/source/dash/c$1;)V

    const/4 p2, 0x1

    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/exoplayer2/source/dash/c;->a(Lcom/google/android/exoplayer2/upstream/q;Lcom/google/android/exoplayer2/upstream/Loader$a;I)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/exoplayer2/source/dash/c;)V
    .locals 0

    .line 63
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/dash/c;->e()V

    return-void
.end method

.method static synthetic a(Lcom/google/android/exoplayer2/source/dash/c;Z)V
    .locals 0

    .line 63
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/dash/c;->a(Z)V

    return-void
.end method

.method private a(Lcom/google/android/exoplayer2/upstream/q;Lcom/google/android/exoplayer2/upstream/Loader$a;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/exoplayer2/upstream/q<",
            "TT;>;",
            "Lcom/google/android/exoplayer2/upstream/Loader$a<",
            "Lcom/google/android/exoplayer2/upstream/q<",
            "TT;>;>;I)V"
        }
    .end annotation

    .line 956
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/c;->r:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/upstream/Loader;->a(Lcom/google/android/exoplayer2/upstream/Loader$c;Lcom/google/android/exoplayer2/upstream/Loader$a;I)J

    move-result-wide p2

    .line 957
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/c;->g:Lcom/google/android/exoplayer2/source/p$a;

    iget-object v1, p1, Lcom/google/android/exoplayer2/upstream/q;->a:Lcom/google/android/exoplayer2/upstream/h;

    iget p1, p1, Lcom/google/android/exoplayer2/upstream/q;->b:I

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/google/android/exoplayer2/source/p$a;->a(Lcom/google/android/exoplayer2/upstream/h;IJ)V

    return-void
.end method

.method private a(Ljava/io/IOException;)V
    .locals 2

    const-string v0, "DashMediaSource"

    const-string v1, "Failed to resolve UtcTiming element."

    .line 816
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, 0x1

    .line 818
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/dash/c;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 28

    move-object/from16 v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 823
    :goto_0
    iget-object v3, v0, Lcom/google/android/exoplayer2/source/dash/c;->k:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 824
    iget-object v3, v0, Lcom/google/android/exoplayer2/source/dash/c;->k:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 825
    iget v4, v0, Lcom/google/android/exoplayer2/source/dash/c;->E:I

    if-lt v3, v4, :cond_0

    .line 826
    iget-object v4, v0, Lcom/google/android/exoplayer2/source/dash/c;->k:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/exoplayer2/source/dash/b;

    iget-object v5, v0, Lcom/google/android/exoplayer2/source/dash/c;->w:Lcom/google/android/exoplayer2/source/dash/a/b;

    iget v6, v0, Lcom/google/android/exoplayer2/source/dash/c;->E:I

    sub-int/2addr v3, v6

    invoke-virtual {v4, v5, v3}, Lcom/google/android/exoplayer2/source/dash/b;->a(Lcom/google/android/exoplayer2/source/dash/a/b;I)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 833
    :cond_1
    iget-object v2, v0, Lcom/google/android/exoplayer2/source/dash/c;->w:Lcom/google/android/exoplayer2/source/dash/a/b;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/source/dash/a/b;->a()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    .line 834
    iget-object v4, v0, Lcom/google/android/exoplayer2/source/dash/c;->w:Lcom/google/android/exoplayer2/source/dash/a/b;

    invoke-virtual {v4, v1}, Lcom/google/android/exoplayer2/source/dash/a/b;->a(I)Lcom/google/android/exoplayer2/source/dash/a/f;

    move-result-object v4

    iget-object v5, v0, Lcom/google/android/exoplayer2/source/dash/c;->w:Lcom/google/android/exoplayer2/source/dash/a/b;

    .line 835
    invoke-virtual {v5, v1}, Lcom/google/android/exoplayer2/source/dash/a/b;->c(I)J

    move-result-wide v5

    .line 834
    invoke-static {v4, v5, v6}, Lcom/google/android/exoplayer2/source/dash/c$g;->a(Lcom/google/android/exoplayer2/source/dash/a/f;J)Lcom/google/android/exoplayer2/source/dash/c$g;

    move-result-object v4

    .line 836
    iget-object v5, v0, Lcom/google/android/exoplayer2/source/dash/c;->w:Lcom/google/android/exoplayer2/source/dash/a/b;

    .line 837
    invoke-virtual {v5, v2}, Lcom/google/android/exoplayer2/source/dash/a/b;->a(I)Lcom/google/android/exoplayer2/source/dash/a/f;

    move-result-object v5

    iget-object v6, v0, Lcom/google/android/exoplayer2/source/dash/c;->w:Lcom/google/android/exoplayer2/source/dash/a/b;

    invoke-virtual {v6, v2}, Lcom/google/android/exoplayer2/source/dash/a/b;->c(I)J

    move-result-wide v6

    .line 836
    invoke-static {v5, v6, v7}, Lcom/google/android/exoplayer2/source/dash/c$g;->a(Lcom/google/android/exoplayer2/source/dash/a/f;J)Lcom/google/android/exoplayer2/source/dash/c$g;

    move-result-object v5

    .line 839
    iget-wide v6, v4, Lcom/google/android/exoplayer2/source/dash/c$g;->b:J

    .line 840
    iget-wide v8, v5, Lcom/google/android/exoplayer2/source/dash/c$g;->c:J

    .line 841
    iget-object v4, v0, Lcom/google/android/exoplayer2/source/dash/c;->w:Lcom/google/android/exoplayer2/source/dash/a/b;

    iget-boolean v4, v4, Lcom/google/android/exoplayer2/source/dash/a/b;->d:Z

    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    const-wide/16 v12, 0x0

    if-eqz v4, :cond_5

    iget-boolean v4, v5, Lcom/google/android/exoplayer2/source/dash/c$g;->a:Z

    if-nez v4, :cond_5

    .line 844
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/source/dash/c;->g()J

    move-result-wide v4

    iget-object v14, v0, Lcom/google/android/exoplayer2/source/dash/c;->w:Lcom/google/android/exoplayer2/source/dash/a/b;

    iget-wide v14, v14, Lcom/google/android/exoplayer2/source/dash/a/b;->a:J

    invoke-static {v14, v15}, Lcom/google/android/exoplayer2/b;->b(J)J

    move-result-wide v14

    sub-long v16, v4, v14

    .line 845
    iget-object v4, v0, Lcom/google/android/exoplayer2/source/dash/c;->w:Lcom/google/android/exoplayer2/source/dash/a/b;

    .line 846
    invoke-virtual {v4, v2}, Lcom/google/android/exoplayer2/source/dash/a/b;->a(I)Lcom/google/android/exoplayer2/source/dash/a/f;

    move-result-object v4

    iget-wide v4, v4, Lcom/google/android/exoplayer2/source/dash/a/f;->b:J

    invoke-static {v4, v5}, Lcom/google/android/exoplayer2/b;->b(J)J

    move-result-wide v4

    sub-long v14, v16, v4

    .line 847
    invoke-static {v14, v15, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    .line 848
    iget-object v4, v0, Lcom/google/android/exoplayer2/source/dash/c;->w:Lcom/google/android/exoplayer2/source/dash/a/b;

    iget-wide v4, v4, Lcom/google/android/exoplayer2/source/dash/a/b;->f:J

    cmp-long v14, v4, v10

    if-eqz v14, :cond_4

    .line 849
    iget-object v4, v0, Lcom/google/android/exoplayer2/source/dash/c;->w:Lcom/google/android/exoplayer2/source/dash/a/b;

    iget-wide v4, v4, Lcom/google/android/exoplayer2/source/dash/a/b;->f:J

    invoke-static {v4, v5}, Lcom/google/android/exoplayer2/b;->b(J)J

    move-result-wide v4

    sub-long v14, v8, v4

    :goto_1
    cmp-long v4, v14, v12

    if-gez v4, :cond_2

    if-lez v2, :cond_2

    .line 853
    iget-object v4, v0, Lcom/google/android/exoplayer2/source/dash/c;->w:Lcom/google/android/exoplayer2/source/dash/a/b;

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v4, v2}, Lcom/google/android/exoplayer2/source/dash/a/b;->c(I)J

    move-result-wide v4

    add-long v16, v14, v4

    move-wide/from16 v14, v16

    goto :goto_1

    :cond_2
    if-nez v2, :cond_3

    .line 856
    invoke-static {v6, v7, v14, v15}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    :goto_2
    move-wide v6, v4

    goto :goto_3

    .line 860
    :cond_3
    iget-object v2, v0, Lcom/google/android/exoplayer2/source/dash/c;->w:Lcom/google/android/exoplayer2/source/dash/a/b;

    invoke-virtual {v2, v1}, Lcom/google/android/exoplayer2/source/dash/a/b;->c(I)J

    move-result-wide v4

    goto :goto_2

    :cond_4
    :goto_3
    const/4 v2, 0x1

    goto :goto_4

    :cond_5
    const/4 v2, 0x0

    :goto_4
    const/4 v4, 0x0

    sub-long v4, v8, v6

    move-wide/from16 v22, v4

    const/4 v4, 0x0

    .line 866
    :goto_5
    iget-object v5, v0, Lcom/google/android/exoplayer2/source/dash/c;->w:Lcom/google/android/exoplayer2/source/dash/a/b;

    invoke-virtual {v5}, Lcom/google/android/exoplayer2/source/dash/a/b;->a()I

    move-result v5

    sub-int/2addr v5, v3

    if-ge v4, v5, :cond_6

    .line 867
    iget-object v5, v0, Lcom/google/android/exoplayer2/source/dash/c;->w:Lcom/google/android/exoplayer2/source/dash/a/b;

    invoke-virtual {v5, v4}, Lcom/google/android/exoplayer2/source/dash/a/b;->c(I)J

    move-result-wide v8

    add-long v14, v22, v8

    add-int/lit8 v4, v4, 0x1

    move-wide/from16 v22, v14

    goto :goto_5

    .line 870
    :cond_6
    iget-object v3, v0, Lcom/google/android/exoplayer2/source/dash/c;->w:Lcom/google/android/exoplayer2/source/dash/a/b;

    iget-boolean v3, v3, Lcom/google/android/exoplayer2/source/dash/a/b;->d:Z

    if-eqz v3, :cond_a

    .line 871
    iget-wide v3, v0, Lcom/google/android/exoplayer2/source/dash/c;->f:J

    const-wide/16 v8, -0x1

    cmp-long v5, v3, v8

    if-nez v5, :cond_8

    .line 873
    iget-object v3, v0, Lcom/google/android/exoplayer2/source/dash/c;->w:Lcom/google/android/exoplayer2/source/dash/a/b;

    iget-wide v3, v3, Lcom/google/android/exoplayer2/source/dash/a/b;->g:J

    cmp-long v5, v3, v10

    if-eqz v5, :cond_7

    iget-object v3, v0, Lcom/google/android/exoplayer2/source/dash/c;->w:Lcom/google/android/exoplayer2/source/dash/a/b;

    iget-wide v3, v3, Lcom/google/android/exoplayer2/source/dash/a/b;->g:J

    goto :goto_6

    :cond_7
    const-wide/16 v3, 0x7530

    .line 877
    :cond_8
    :goto_6
    invoke-static {v3, v4}, Lcom/google/android/exoplayer2/b;->b(J)J

    move-result-wide v3

    sub-long v8, v22, v3

    const-wide/32 v3, 0x4c4b40

    cmp-long v5, v8, v3

    if-gez v5, :cond_9

    const-wide/16 v8, 0x2

    .line 882
    div-long v8, v22, v8

    invoke-static {v3, v4, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    move-wide/from16 v24, v3

    goto :goto_7

    :cond_9
    move-wide/from16 v24, v8

    goto :goto_7

    :cond_a
    move-wide/from16 v24, v12

    .line 886
    :goto_7
    iget-object v3, v0, Lcom/google/android/exoplayer2/source/dash/c;->w:Lcom/google/android/exoplayer2/source/dash/a/b;

    iget-wide v3, v3, Lcom/google/android/exoplayer2/source/dash/a/b;->a:J

    iget-object v5, v0, Lcom/google/android/exoplayer2/source/dash/c;->w:Lcom/google/android/exoplayer2/source/dash/a/b;

    .line 887
    invoke-virtual {v5, v1}, Lcom/google/android/exoplayer2/source/dash/a/b;->a(I)Lcom/google/android/exoplayer2/source/dash/a/f;

    move-result-object v1

    iget-wide v8, v1, Lcom/google/android/exoplayer2/source/dash/a/f;->b:J

    add-long v14, v3, v8

    invoke-static {v6, v7}, Lcom/google/android/exoplayer2/b;->a(J)J

    move-result-wide v3

    add-long v17, v14, v3

    .line 888
    new-instance v1, Lcom/google/android/exoplayer2/source/dash/c$a;

    iget-object v3, v0, Lcom/google/android/exoplayer2/source/dash/c;->w:Lcom/google/android/exoplayer2/source/dash/a/b;

    iget-wide v3, v3, Lcom/google/android/exoplayer2/source/dash/a/b;->a:J

    iget v5, v0, Lcom/google/android/exoplayer2/source/dash/c;->E:I

    iget-object v8, v0, Lcom/google/android/exoplayer2/source/dash/c;->w:Lcom/google/android/exoplayer2/source/dash/a/b;

    iget-object v9, v0, Lcom/google/android/exoplayer2/source/dash/c;->p:Ljava/lang/Object;

    move-object v14, v1

    move-wide v15, v3

    move/from16 v19, v5

    move-wide/from16 v20, v6

    move-object/from16 v26, v8

    move-object/from16 v27, v9

    invoke-direct/range {v14 .. v27}, Lcom/google/android/exoplayer2/source/dash/c$a;-><init>(JJIJJJLcom/google/android/exoplayer2/source/dash/a/b;Ljava/lang/Object;)V

    .line 898
    iget-object v3, v0, Lcom/google/android/exoplayer2/source/dash/c;->w:Lcom/google/android/exoplayer2/source/dash/a/b;

    invoke-virtual {v0, v1, v3}, Lcom/google/android/exoplayer2/source/dash/c;->a(Lcom/google/android/exoplayer2/ad;Ljava/lang/Object;)V

    .line 900
    iget-boolean v1, v0, Lcom/google/android/exoplayer2/source/dash/c;->a:Z

    if-nez v1, :cond_e

    .line 902
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/dash/c;->t:Landroid/os/Handler;

    iget-object v3, v0, Lcom/google/android/exoplayer2/source/dash/c;->m:Ljava/lang/Runnable;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const-wide/16 v3, 0x1388

    if-eqz v2, :cond_b

    .line 905
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/dash/c;->t:Landroid/os/Handler;

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/dash/c;->m:Ljava/lang/Runnable;

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 907
    :cond_b
    iget-boolean v1, v0, Lcom/google/android/exoplayer2/source/dash/c;->x:Z

    if-eqz v1, :cond_c

    .line 908
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/source/dash/c;->e()V

    goto :goto_8

    :cond_c
    if-eqz p1, :cond_e

    .line 909
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/dash/c;->w:Lcom/google/android/exoplayer2/source/dash/a/b;

    iget-boolean v1, v1, Lcom/google/android/exoplayer2/source/dash/a/b;->d:Z

    if-eqz v1, :cond_e

    iget-object v1, v0, Lcom/google/android/exoplayer2/source/dash/c;->w:Lcom/google/android/exoplayer2/source/dash/a/b;

    iget-wide v1, v1, Lcom/google/android/exoplayer2/source/dash/a/b;->e:J

    cmp-long v5, v1, v10

    if-eqz v5, :cond_e

    .line 913
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/dash/c;->w:Lcom/google/android/exoplayer2/source/dash/a/b;

    iget-wide v1, v1, Lcom/google/android/exoplayer2/source/dash/a/b;->e:J

    cmp-long v5, v1, v12

    if-nez v5, :cond_d

    move-wide v1, v3

    .line 921
    :cond_d
    iget-wide v3, v0, Lcom/google/android/exoplayer2/source/dash/c;->y:J

    add-long v5, v3, v1

    .line 923
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    sub-long v3, v5, v1

    invoke-static {v12, v13, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    .line 924
    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer2/source/dash/c;->c(J)V

    :cond_e
    :goto_8
    return-void
.end method

.method static synthetic b(Lcom/google/android/exoplayer2/source/dash/c;)Lcom/google/android/exoplayer2/upstream/Loader;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/google/android/exoplayer2/source/dash/c;->r:Lcom/google/android/exoplayer2/upstream/Loader;

    return-object p0
.end method

.method private b(J)V
    .locals 0

    .line 811
    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/dash/c;->A:J

    const/4 p1, 0x1

    .line 812
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/dash/c;->a(Z)V

    return-void
.end method

.method private b(Lcom/google/android/exoplayer2/source/dash/a/l;)V
    .locals 6

    .line 797
    :try_start_0
    iget-object p1, p1, Lcom/google/android/exoplayer2/source/dash/a/l;->b:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/aa;->g(Ljava/lang/String;)J

    move-result-wide v0

    .line 798
    iget-wide v2, p0, Lcom/google/android/exoplayer2/source/dash/c;->z:J

    const/4 p1, 0x0

    sub-long v4, v0, v2

    invoke-direct {p0, v4, v5}, Lcom/google/android/exoplayer2/source/dash/c;->b(J)V
    :try_end_0
    .catch Lcom/google/android/exoplayer2/ParserException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 800
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/dash/c;->a(Ljava/io/IOException;)V

    :goto_0
    return-void
.end method

.method static synthetic c(Lcom/google/android/exoplayer2/source/dash/c;)Ljava/io/IOException;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/google/android/exoplayer2/source/dash/c;->s:Ljava/io/IOException;

    return-object p0
.end method

.method private c(J)V
    .locals 2

    .line 930
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/c;->t:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/dash/c;->l:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private e()V
    .locals 5

    .line 934
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/c;->t:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/dash/c;->l:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 935
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/c;->r:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/Loader;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 936
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/dash/c;->x:Z

    return-void

    .line 940
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/c;->j:Ljava/lang/Object;

    monitor-enter v0

    .line 941
    :try_start_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/dash/c;->v:Landroid/net/Uri;

    .line 942
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    .line 943
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/dash/c;->x:Z

    .line 944
    new-instance v0, Lcom/google/android/exoplayer2/upstream/q;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/dash/c;->q:Lcom/google/android/exoplayer2/upstream/f;

    const/4 v3, 0x4

    iget-object v4, p0, Lcom/google/android/exoplayer2/source/dash/c;->h:Lcom/google/android/exoplayer2/upstream/q$a;

    invoke-direct {v0, v2, v1, v3, v4}, Lcom/google/android/exoplayer2/upstream/q;-><init>(Lcom/google/android/exoplayer2/upstream/f;Landroid/net/Uri;ILcom/google/android/exoplayer2/upstream/q$a;)V

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/dash/c;->i:Lcom/google/android/exoplayer2/source/dash/c$e;

    iget v2, p0, Lcom/google/android/exoplayer2/source/dash/c;->e:I

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/exoplayer2/source/dash/c;->a(Lcom/google/android/exoplayer2/upstream/q;Lcom/google/android/exoplayer2/upstream/Loader$a;I)V

    return-void

    :catchall_0
    move-exception v1

    .line 942
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private f()J
    .locals 2

    .line 951
    iget v0, p0, Lcom/google/android/exoplayer2/source/dash/c;->B:I

    add-int/lit8 v0, v0, -0x1

    mul-int/lit16 v0, v0, 0x3e8

    const/16 v1, 0x1388

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method private g()J
    .locals 6

    .line 961
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/dash/c;->A:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 962
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/exoplayer2/source/dash/c;->A:J

    add-long v4, v0, v2

    invoke-static {v4, v5}, Lcom/google/android/exoplayer2/b;->b(J)J

    move-result-wide v0

    return-wide v0

    .line 964
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/b;->b(J)J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method a(Lcom/google/android/exoplayer2/upstream/q;JJLjava/io/IOException;)I
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/upstream/q<",
            "Lcom/google/android/exoplayer2/source/dash/a/b;",
            ">;JJ",
            "Ljava/io/IOException;",
            ")I"
        }
    .end annotation

    move-object v0, p1

    move-object/from16 v9, p6

    .line 725
    instance-of v11, v9, Lcom/google/android/exoplayer2/ParserException;

    move-object v12, p0

    .line 726
    iget-object v1, v12, Lcom/google/android/exoplayer2/source/dash/c;->g:Lcom/google/android/exoplayer2/source/p$a;

    iget-object v2, v0, Lcom/google/android/exoplayer2/upstream/q;->a:Lcom/google/android/exoplayer2/upstream/h;

    iget v3, v0, Lcom/google/android/exoplayer2/upstream/q;->b:I

    .line 731
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/q;->d()J

    move-result-wide v7

    move-object v0, v1

    move-object v1, v2

    move v2, v3

    move-wide v3, p2

    move-wide/from16 v5, p4

    move v10, v11

    .line 726
    invoke-virtual/range {v0 .. v10}, Lcom/google/android/exoplayer2/source/p$a;->a(Lcom/google/android/exoplayer2/upstream/h;IJJJLjava/io/IOException;Z)V

    if-eqz v11, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public a(Lcom/google/android/exoplayer2/source/o$a;Lcom/google/android/exoplayer2/upstream/b;)Lcom/google/android/exoplayer2/source/n;
    .locals 13

    .line 564
    iget v3, p1, Lcom/google/android/exoplayer2/source/o$a;->a:I

    .line 565
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/c;->w:Lcom/google/android/exoplayer2/source/dash/a/b;

    .line 566
    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/source/dash/a/b;->a(I)Lcom/google/android/exoplayer2/source/dash/a/f;

    move-result-object v0

    iget-wide v0, v0, Lcom/google/android/exoplayer2/source/dash/a/f;->b:J

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/exoplayer2/source/dash/c;->a(Lcom/google/android/exoplayer2/source/o$a;J)Lcom/google/android/exoplayer2/source/p$a;

    move-result-object v6

    .line 567
    new-instance p1, Lcom/google/android/exoplayer2/source/dash/b;

    iget v0, p0, Lcom/google/android/exoplayer2/source/dash/c;->E:I

    add-int v1, v0, v3

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/dash/c;->w:Lcom/google/android/exoplayer2/source/dash/a/b;

    iget-object v4, p0, Lcom/google/android/exoplayer2/source/dash/c;->c:Lcom/google/android/exoplayer2/source/dash/a$a;

    iget v5, p0, Lcom/google/android/exoplayer2/source/dash/c;->e:I

    iget-wide v7, p0, Lcom/google/android/exoplayer2/source/dash/c;->A:J

    iget-object v9, p0, Lcom/google/android/exoplayer2/source/dash/c;->o:Lcom/google/android/exoplayer2/upstream/p;

    iget-object v11, p0, Lcom/google/android/exoplayer2/source/dash/c;->d:Lcom/google/android/exoplayer2/source/f;

    iget-object v12, p0, Lcom/google/android/exoplayer2/source/dash/c;->n:Lcom/google/android/exoplayer2/source/dash/h$b;

    move-object v0, p1

    move-object v10, p2

    invoke-direct/range {v0 .. v12}, Lcom/google/android/exoplayer2/source/dash/b;-><init>(ILcom/google/android/exoplayer2/source/dash/a/b;ILcom/google/android/exoplayer2/source/dash/a$a;ILcom/google/android/exoplayer2/source/p$a;JLcom/google/android/exoplayer2/upstream/p;Lcom/google/android/exoplayer2/upstream/b;Lcom/google/android/exoplayer2/source/f;Lcom/google/android/exoplayer2/source/dash/h$b;)V

    .line 580
    iget-object p2, p0, Lcom/google/android/exoplayer2/source/dash/c;->k:Landroid/util/SparseArray;

    iget v0, p1, Lcom/google/android/exoplayer2/source/dash/b;->a:I

    invoke-virtual {p2, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-object p1
.end method

.method public a()V
    .locals 5

    const/4 v0, 0x0

    .line 593
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/dash/c;->x:Z

    const/4 v1, 0x0

    .line 594
    iput-object v1, p0, Lcom/google/android/exoplayer2/source/dash/c;->q:Lcom/google/android/exoplayer2/upstream/f;

    .line 595
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/dash/c;->r:Lcom/google/android/exoplayer2/upstream/Loader;

    if-eqz v2, :cond_0

    .line 596
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/dash/c;->r:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/upstream/Loader;->d()V

    .line 597
    iput-object v1, p0, Lcom/google/android/exoplayer2/source/dash/c;->r:Lcom/google/android/exoplayer2/upstream/Loader;

    :cond_0
    const-wide/16 v2, 0x0

    .line 599
    iput-wide v2, p0, Lcom/google/android/exoplayer2/source/dash/c;->y:J

    .line 600
    iput-wide v2, p0, Lcom/google/android/exoplayer2/source/dash/c;->z:J

    .line 601
    iget-boolean v4, p0, Lcom/google/android/exoplayer2/source/dash/c;->a:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/google/android/exoplayer2/source/dash/c;->w:Lcom/google/android/exoplayer2/source/dash/a/b;

    goto :goto_0

    :cond_1
    move-object v4, v1

    :goto_0
    iput-object v4, p0, Lcom/google/android/exoplayer2/source/dash/c;->w:Lcom/google/android/exoplayer2/source/dash/a/b;

    .line 602
    iget-object v4, p0, Lcom/google/android/exoplayer2/source/dash/c;->u:Landroid/net/Uri;

    iput-object v4, p0, Lcom/google/android/exoplayer2/source/dash/c;->v:Landroid/net/Uri;

    .line 603
    iput-object v1, p0, Lcom/google/android/exoplayer2/source/dash/c;->s:Ljava/io/IOException;

    .line 604
    iget-object v4, p0, Lcom/google/android/exoplayer2/source/dash/c;->t:Landroid/os/Handler;

    if-eqz v4, :cond_2

    .line 605
    iget-object v4, p0, Lcom/google/android/exoplayer2/source/dash/c;->t:Landroid/os/Handler;

    invoke-virtual {v4, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 606
    iput-object v1, p0, Lcom/google/android/exoplayer2/source/dash/c;->t:Landroid/os/Handler;

    .line 608
    :cond_2
    iput-wide v2, p0, Lcom/google/android/exoplayer2/source/dash/c;->A:J

    .line 609
    iput v0, p0, Lcom/google/android/exoplayer2/source/dash/c;->B:I

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 610
    iput-wide v1, p0, Lcom/google/android/exoplayer2/source/dash/c;->C:J

    .line 611
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/dash/c;->D:Z

    .line 612
    iput v0, p0, Lcom/google/android/exoplayer2/source/dash/c;->E:I

    .line 613
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/c;->k:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    return-void
.end method

.method a(J)V
    .locals 5

    .line 628
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/dash/c;->C:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/dash/c;->C:J

    cmp-long v2, v0, p1

    if-gez v2, :cond_1

    .line 630
    :cond_0
    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/dash/c;->C:J

    :cond_1
    return-void
.end method

.method public a(Lcom/google/android/exoplayer2/h;Z)V
    .locals 0

    .line 547
    iget-boolean p1, p0, Lcom/google/android/exoplayer2/source/dash/c;->a:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 548
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/dash/c;->a(Z)V

    goto :goto_0

    .line 550
    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/dash/c;->b:Lcom/google/android/exoplayer2/upstream/f$a;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/upstream/f$a;->a()Lcom/google/android/exoplayer2/upstream/f;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/c;->q:Lcom/google/android/exoplayer2/upstream/f;

    .line 551
    new-instance p1, Lcom/google/android/exoplayer2/upstream/Loader;

    const-string p2, "Loader:DashMediaSource"

    invoke-direct {p1, p2}, Lcom/google/android/exoplayer2/upstream/Loader;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/c;->r:Lcom/google/android/exoplayer2/upstream/Loader;

    .line 552
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/c;->t:Landroid/os/Handler;

    .line 553
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/dash/c;->e()V

    :goto_0
    return-void
.end method

.method public a(Lcom/google/android/exoplayer2/source/n;)V
    .locals 1

    .line 586
    check-cast p1, Lcom/google/android/exoplayer2/source/dash/b;

    .line 587
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/source/dash/b;->f()V

    .line 588
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/c;->k:Landroid/util/SparseArray;

    iget p1, p1, Lcom/google/android/exoplayer2/source/dash/b;->a:I

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    return-void
.end method

.method a(Lcom/google/android/exoplayer2/upstream/q;JJ)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/upstream/q<",
            "Lcom/google/android/exoplayer2/source/dash/a/b;",
            ">;JJ)V"
        }
    .end annotation

    .line 638
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/c;->g:Lcom/google/android/exoplayer2/source/p$a;

    iget-object v1, p1, Lcom/google/android/exoplayer2/upstream/q;->a:Lcom/google/android/exoplayer2/upstream/h;

    iget v2, p1, Lcom/google/android/exoplayer2/upstream/q;->b:I

    .line 643
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/upstream/q;->d()J

    move-result-wide v7

    move-wide v3, p2

    move-wide v5, p4

    .line 638
    invoke-virtual/range {v0 .. v8}, Lcom/google/android/exoplayer2/source/p$a;->a(Lcom/google/android/exoplayer2/upstream/h;IJJJ)V

    .line 644
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/upstream/q;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/dash/a/b;

    .line 646
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/dash/c;->w:Lcom/google/android/exoplayer2/source/dash/a/b;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/dash/c;->w:Lcom/google/android/exoplayer2/source/dash/a/b;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/source/dash/a/b;->a()I

    move-result v1

    .line 648
    :goto_0
    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/source/dash/a/b;->a(I)Lcom/google/android/exoplayer2/source/dash/a/f;

    move-result-object v3

    iget-wide v3, v3, Lcom/google/android/exoplayer2/source/dash/a/f;->b:J

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v1, :cond_1

    .line 649
    iget-object v6, p0, Lcom/google/android/exoplayer2/source/dash/c;->w:Lcom/google/android/exoplayer2/source/dash/a/b;

    .line 650
    invoke-virtual {v6, v5}, Lcom/google/android/exoplayer2/source/dash/a/b;->a(I)Lcom/google/android/exoplayer2/source/dash/a/f;

    move-result-object v6

    iget-wide v6, v6, Lcom/google/android/exoplayer2/source/dash/a/f;->b:J

    cmp-long v8, v6, v3

    if-gez v8, :cond_1

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 654
    :cond_1
    iget-boolean v3, v0, Lcom/google/android/exoplayer2/source/dash/a/b;->d:Z

    const/4 v4, 0x1

    if-eqz v3, :cond_7

    sub-int v3, v1, v5

    .line 656
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/dash/a/b;->a()I

    move-result v6

    if-le v3, v6, :cond_2

    const-string v3, "DashMediaSource"

    const-string v6, "Loaded out of sync manifest"

    .line 662
    invoke-static {v3, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    const/4 v3, 0x1

    goto :goto_4

    .line 664
    :cond_2
    iget-boolean v3, p0, Lcom/google/android/exoplayer2/source/dash/c;->D:Z

    if-nez v3, :cond_4

    iget-wide v6, p0, Lcom/google/android/exoplayer2/source/dash/c;->C:J

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v3, v6, v8

    if-eqz v3, :cond_3

    iget-wide v6, v0, Lcom/google/android/exoplayer2/source/dash/a/b;->h:J

    const-wide/16 v8, 0x3e8

    mul-long v6, v6, v8

    iget-wide v8, p0, Lcom/google/android/exoplayer2/source/dash/c;->C:J

    cmp-long v3, v6, v8

    if-gtz v3, :cond_3

    goto :goto_3

    :cond_3
    const/4 v3, 0x0

    goto :goto_4

    :cond_4
    :goto_3
    const-string v3, "DashMediaSource"

    .line 670
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Loaded stale dynamic manifest: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, v0, Lcom/google/android/exoplayer2/source/dash/a/b;->h:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, p0, Lcom/google/android/exoplayer2/source/dash/c;->D:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, p0, Lcom/google/android/exoplayer2/source/dash/c;->C:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :goto_4
    if-eqz v3, :cond_6

    .line 682
    iget p1, p0, Lcom/google/android/exoplayer2/source/dash/c;->B:I

    add-int/lit8 p2, p1, 0x1

    iput p2, p0, Lcom/google/android/exoplayer2/source/dash/c;->B:I

    iget p2, p0, Lcom/google/android/exoplayer2/source/dash/c;->e:I

    if-ge p1, p2, :cond_5

    .line 683
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/dash/c;->f()J

    move-result-wide p1

    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/source/dash/c;->c(J)V

    goto :goto_5

    .line 685
    :cond_5
    new-instance p1, Lcom/google/android/exoplayer2/source/dash/DashManifestStaleException;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/source/dash/DashManifestStaleException;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/c;->s:Ljava/io/IOException;

    :goto_5
    return-void

    .line 689
    :cond_6
    iput v2, p0, Lcom/google/android/exoplayer2/source/dash/c;->B:I

    .line 693
    :cond_7
    iput-object v0, p0, Lcom/google/android/exoplayer2/source/dash/c;->w:Lcom/google/android/exoplayer2/source/dash/a/b;

    .line 694
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/dash/c;->x:Z

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/dash/c;->w:Lcom/google/android/exoplayer2/source/dash/a/b;

    iget-boolean v2, v2, Lcom/google/android/exoplayer2/source/dash/a/b;->d:Z

    and-int/2addr v0, v2

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/dash/c;->x:Z

    sub-long v2, p2, p4

    .line 695
    iput-wide v2, p0, Lcom/google/android/exoplayer2/source/dash/c;->y:J

    .line 696
    iput-wide p2, p0, Lcom/google/android/exoplayer2/source/dash/c;->z:J

    .line 697
    iget-object p2, p0, Lcom/google/android/exoplayer2/source/dash/c;->w:Lcom/google/android/exoplayer2/source/dash/a/b;

    iget-object p2, p2, Lcom/google/android/exoplayer2/source/dash/a/b;->j:Landroid/net/Uri;

    if-eqz p2, :cond_9

    .line 698
    iget-object p2, p0, Lcom/google/android/exoplayer2/source/dash/c;->j:Ljava/lang/Object;

    monitor-enter p2

    .line 701
    :try_start_0
    iget-object p1, p1, Lcom/google/android/exoplayer2/upstream/q;->a:Lcom/google/android/exoplayer2/upstream/h;

    iget-object p1, p1, Lcom/google/android/exoplayer2/upstream/h;->a:Landroid/net/Uri;

    iget-object p3, p0, Lcom/google/android/exoplayer2/source/dash/c;->v:Landroid/net/Uri;

    if-ne p1, p3, :cond_8

    .line 702
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/dash/c;->w:Lcom/google/android/exoplayer2/source/dash/a/b;

    iget-object p1, p1, Lcom/google/android/exoplayer2/source/dash/a/b;->j:Landroid/net/Uri;

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/c;->v:Landroid/net/Uri;

    .line 704
    :cond_8
    monitor-exit p2

    goto :goto_6

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_9
    :goto_6
    if-nez v1, :cond_b

    .line 708
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/dash/c;->w:Lcom/google/android/exoplayer2/source/dash/a/b;

    iget-object p1, p1, Lcom/google/android/exoplayer2/source/dash/a/b;->i:Lcom/google/android/exoplayer2/source/dash/a/l;

    if-eqz p1, :cond_a

    .line 709
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/dash/c;->w:Lcom/google/android/exoplayer2/source/dash/a/b;

    iget-object p1, p1, Lcom/google/android/exoplayer2/source/dash/a/b;->i:Lcom/google/android/exoplayer2/source/dash/a/l;

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/dash/c;->a(Lcom/google/android/exoplayer2/source/dash/a/l;)V

    goto :goto_7

    .line 711
    :cond_a
    invoke-direct {p0, v4}, Lcom/google/android/exoplayer2/source/dash/c;->a(Z)V

    goto :goto_7

    .line 714
    :cond_b
    iget p1, p0, Lcom/google/android/exoplayer2/source/dash/c;->E:I

    add-int/2addr p1, v5

    iput p1, p0, Lcom/google/android/exoplayer2/source/dash/c;->E:I

    .line 715
    invoke-direct {p0, v4}, Lcom/google/android/exoplayer2/source/dash/c;->a(Z)V

    :goto_7
    return-void
.end method

.method b(Lcom/google/android/exoplayer2/upstream/q;JJLjava/io/IOException;)I
    .locals 12
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

    move-object v0, p0

    move-object v1, p1

    .line 754
    iget-object v2, v0, Lcom/google/android/exoplayer2/source/dash/c;->g:Lcom/google/android/exoplayer2/source/p$a;

    iget-object v3, v1, Lcom/google/android/exoplayer2/upstream/q;->a:Lcom/google/android/exoplayer2/upstream/h;

    iget v4, v1, Lcom/google/android/exoplayer2/upstream/q;->b:I

    .line 759
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/upstream/q;->d()J

    move-result-wide v8

    const/4 v11, 0x1

    move-object v1, v2

    move-object v2, v3

    move v3, v4

    move-wide v4, p2

    move-wide/from16 v6, p4

    move-object/from16 v10, p6

    .line 754
    invoke-virtual/range {v1 .. v11}, Lcom/google/android/exoplayer2/source/p$a;->a(Lcom/google/android/exoplayer2/upstream/h;IJJJLjava/io/IOException;Z)V

    move-object/from16 v1, p6

    .line 762
    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/source/dash/c;->a(Ljava/io/IOException;)V

    const/4 v1, 0x2

    return v1
.end method

.method public b()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 559
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/c;->o:Lcom/google/android/exoplayer2/upstream/p;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/upstream/p;->a()V

    return-void
.end method

.method b(Lcom/google/android/exoplayer2/upstream/q;JJ)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/upstream/q<",
            "Ljava/lang/Long;",
            ">;JJ)V"
        }
    .end annotation

    .line 739
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/c;->g:Lcom/google/android/exoplayer2/source/p$a;

    iget-object v1, p1, Lcom/google/android/exoplayer2/upstream/q;->a:Lcom/google/android/exoplayer2/upstream/h;

    iget v2, p1, Lcom/google/android/exoplayer2/upstream/q;->b:I

    .line 744
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/upstream/q;->d()J

    move-result-wide v7

    move-wide v3, p2

    move-wide v5, p4

    .line 739
    invoke-virtual/range {v0 .. v8}, Lcom/google/android/exoplayer2/source/p$a;->a(Lcom/google/android/exoplayer2/upstream/h;IJJJ)V

    .line 745
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/upstream/q;->c()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p4

    sub-long v0, p4, p2

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/source/dash/c;->b(J)V

    return-void
.end method

.method c()V
    .locals 2

    .line 619
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/c;->t:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/dash/c;->m:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 620
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/dash/c;->e()V

    return-void
.end method

.method c(Lcom/google/android/exoplayer2/upstream/q;JJ)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/upstream/q<",
            "*>;JJ)V"
        }
    .end annotation

    .line 768
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/c;->g:Lcom/google/android/exoplayer2/source/p$a;

    iget-object v1, p1, Lcom/google/android/exoplayer2/upstream/q;->a:Lcom/google/android/exoplayer2/upstream/h;

    iget v2, p1, Lcom/google/android/exoplayer2/upstream/q;->b:I

    .line 773
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/upstream/q;->d()J

    move-result-wide v7

    move-wide v3, p2

    move-wide v5, p4

    .line 768
    invoke-virtual/range {v0 .. v8}, Lcom/google/android/exoplayer2/source/p$a;->b(Lcom/google/android/exoplayer2/upstream/h;IJJJ)V

    return-void
.end method

.method d()V
    .locals 1

    const/4 v0, 0x1

    .line 624
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/dash/c;->D:Z

    return-void
.end method
