.class public Lcom/facebook/imagepipeline/d/g;
.super Ljava/lang/Object;
.source "ImagePipeline.java"


# annotations
.annotation build Ljavax/annotation/concurrent/ThreadSafe;
.end annotation


# static fields
.field private static final a:Ljava/util/concurrent/CancellationException;


# instance fields
.field private final b:Lcom/facebook/imagepipeline/d/m;

.field private final c:Lcom/facebook/imagepipeline/h/c;

.field private final d:Lcom/facebook/common/internal/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/internal/j<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lcom/facebook/imagepipeline/c/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/c/p<",
            "Lcom/facebook/cache/common/b;",
            "Lcom/facebook/imagepipeline/g/c;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Lcom/facebook/imagepipeline/c/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/c/p<",
            "Lcom/facebook/cache/common/b;",
            "Lcom/facebook/common/memory/PooledByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Lcom/facebook/imagepipeline/c/e;

.field private final h:Lcom/facebook/imagepipeline/c/e;

.field private final i:Lcom/facebook/imagepipeline/c/f;

.field private final j:Lcom/facebook/imagepipeline/k/at;

.field private final k:Lcom/facebook/common/internal/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/internal/j<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private l:Ljava/util/concurrent/atomic/AtomicLong;

.field private final m:Lcom/facebook/common/internal/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/internal/j<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 51
    new-instance v0, Ljava/util/concurrent/CancellationException;

    const-string v1, "Prefetching is not enabled"

    invoke-direct {v0, v1}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/facebook/imagepipeline/d/g;->a:Ljava/util/concurrent/CancellationException;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/imagepipeline/d/m;Ljava/util/Set;Lcom/facebook/common/internal/j;Lcom/facebook/imagepipeline/c/p;Lcom/facebook/imagepipeline/c/p;Lcom/facebook/imagepipeline/c/e;Lcom/facebook/imagepipeline/c/e;Lcom/facebook/imagepipeline/c/f;Lcom/facebook/imagepipeline/k/at;Lcom/facebook/common/internal/j;Lcom/facebook/common/internal/j;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/d/m;",
            "Ljava/util/Set<",
            "Lcom/facebook/imagepipeline/h/c;",
            ">;",
            "Lcom/facebook/common/internal/j<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/facebook/imagepipeline/c/p<",
            "Lcom/facebook/cache/common/b;",
            "Lcom/facebook/imagepipeline/g/c;",
            ">;",
            "Lcom/facebook/imagepipeline/c/p<",
            "Lcom/facebook/cache/common/b;",
            "Lcom/facebook/common/memory/PooledByteBuffer;",
            ">;",
            "Lcom/facebook/imagepipeline/c/e;",
            "Lcom/facebook/imagepipeline/c/e;",
            "Lcom/facebook/imagepipeline/c/f;",
            "Lcom/facebook/imagepipeline/k/at;",
            "Lcom/facebook/common/internal/j<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/facebook/common/internal/j<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lcom/facebook/imagepipeline/d/g;->l:Ljava/util/concurrent/atomic/AtomicLong;

    .line 80
    iput-object p1, p0, Lcom/facebook/imagepipeline/d/g;->b:Lcom/facebook/imagepipeline/d/m;

    .line 81
    new-instance p1, Lcom/facebook/imagepipeline/h/b;

    invoke-direct {p1, p2}, Lcom/facebook/imagepipeline/h/b;-><init>(Ljava/util/Set;)V

    iput-object p1, p0, Lcom/facebook/imagepipeline/d/g;->c:Lcom/facebook/imagepipeline/h/c;

    .line 82
    iput-object p3, p0, Lcom/facebook/imagepipeline/d/g;->d:Lcom/facebook/common/internal/j;

    .line 83
    iput-object p4, p0, Lcom/facebook/imagepipeline/d/g;->e:Lcom/facebook/imagepipeline/c/p;

    .line 84
    iput-object p5, p0, Lcom/facebook/imagepipeline/d/g;->f:Lcom/facebook/imagepipeline/c/p;

    .line 85
    iput-object p6, p0, Lcom/facebook/imagepipeline/d/g;->g:Lcom/facebook/imagepipeline/c/e;

    .line 86
    iput-object p7, p0, Lcom/facebook/imagepipeline/d/g;->h:Lcom/facebook/imagepipeline/c/e;

    .line 87
    iput-object p8, p0, Lcom/facebook/imagepipeline/d/g;->i:Lcom/facebook/imagepipeline/c/f;

    .line 88
    iput-object p9, p0, Lcom/facebook/imagepipeline/d/g;->j:Lcom/facebook/imagepipeline/k/at;

    .line 89
    iput-object p10, p0, Lcom/facebook/imagepipeline/d/g;->k:Lcom/facebook/common/internal/j;

    .line 90
    iput-object p11, p0, Lcom/facebook/imagepipeline/d/g;->m:Lcom/facebook/common/internal/j;

    return-void
.end method

.method private a(Lcom/facebook/imagepipeline/k/ak;Lcom/facebook/imagepipeline/request/ImageRequest;Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;Ljava/lang/Object;Lcom/facebook/imagepipeline/h/c;)Lcom/facebook/b/c;
    .locals 10
    .param p5    # Lcom/facebook/imagepipeline/h/c;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/facebook/imagepipeline/k/ak<",
            "Lcom/facebook/common/references/a<",
            "TT;>;>;",
            "Lcom/facebook/imagepipeline/request/ImageRequest;",
            "Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;",
            "Ljava/lang/Object;",
            "Lcom/facebook/imagepipeline/h/c;",
            ")",
            "Lcom/facebook/b/c<",
            "Lcom/facebook/common/references/a<",
            "TT;>;>;"
        }
    .end annotation

    .line 671
    invoke-static {}, Lcom/facebook/imagepipeline/l/b;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ImagePipeline#submitFetchRequest"

    .line 672
    invoke-static {v0}, Lcom/facebook/imagepipeline/l/b;->a(Ljava/lang/String;)V

    .line 675
    :cond_0
    invoke-direct {p0, p2, p5}, Lcom/facebook/imagepipeline/d/g;->a(Lcom/facebook/imagepipeline/request/ImageRequest;Lcom/facebook/imagepipeline/h/c;)Lcom/facebook/imagepipeline/h/c;

    move-result-object p5

    .line 680
    :try_start_0
    invoke-virtual {p2}, Lcom/facebook/imagepipeline/request/ImageRequest;->m()Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

    move-result-object v0

    .line 679
    invoke-static {v0, p3}, Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;->getMax(Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;)Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

    move-result-object v6

    .line 681
    new-instance p3, Lcom/facebook/imagepipeline/k/aq;

    .line 684
    invoke-direct {p0}, Lcom/facebook/imagepipeline/d/g;->d()Ljava/lang/String;

    move-result-object v3

    const/4 v7, 0x0

    .line 689
    invoke-virtual {p2}, Lcom/facebook/imagepipeline/request/ImageRequest;->j()Z

    move-result v0

    if-nez v0, :cond_2

    .line 690
    invoke-virtual {p2}, Lcom/facebook/imagepipeline/request/ImageRequest;->b()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/common/util/d;->b(Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    const/4 v8, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    const/4 v8, 0x1

    .line 691
    :goto_1
    invoke-virtual {p2}, Lcom/facebook/imagepipeline/request/ImageRequest;->l()Lcom/facebook/imagepipeline/common/Priority;

    move-result-object v9

    move-object v1, p3

    move-object v2, p2

    move-object v4, p5

    move-object v5, p4

    invoke-direct/range {v1 .. v9}, Lcom/facebook/imagepipeline/k/aq;-><init>(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/String;Lcom/facebook/imagepipeline/k/an;Ljava/lang/Object;Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;ZZLcom/facebook/imagepipeline/common/Priority;)V

    .line 692
    invoke-static {p1, p3, p5}, Lcom/facebook/imagepipeline/e/b;->a(Lcom/facebook/imagepipeline/k/ak;Lcom/facebook/imagepipeline/k/aq;Lcom/facebook/imagepipeline/h/c;)Lcom/facebook/b/c;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 697
    invoke-static {}, Lcom/facebook/imagepipeline/l/b;->b()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 698
    invoke-static {}, Lcom/facebook/imagepipeline/l/b;->a()V

    :cond_3
    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 695
    :try_start_1
    invoke-static {p1}, Lcom/facebook/b/d;->a(Ljava/lang/Throwable;)Lcom/facebook/b/c;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 697
    invoke-static {}, Lcom/facebook/imagepipeline/l/b;->b()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 698
    invoke-static {}, Lcom/facebook/imagepipeline/l/b;->a()V

    :cond_4
    return-object p1

    .line 697
    :goto_2
    invoke-static {}, Lcom/facebook/imagepipeline/l/b;->b()Z

    move-result p2

    if-eqz p2, :cond_5

    .line 698
    invoke-static {}, Lcom/facebook/imagepipeline/l/b;->a()V

    .line 700
    :cond_5
    throw p1
.end method

.method private a(Lcom/facebook/imagepipeline/request/ImageRequest;Lcom/facebook/imagepipeline/h/c;)Lcom/facebook/imagepipeline/h/c;
    .locals 6
    .param p2    # Lcom/facebook/imagepipeline/h/c;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-nez p2, :cond_1

    .line 737
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequest;->r()Lcom/facebook/imagepipeline/h/c;

    move-result-object p2

    if-nez p2, :cond_0

    .line 738
    iget-object p1, p0, Lcom/facebook/imagepipeline/d/g;->c:Lcom/facebook/imagepipeline/h/c;

    return-object p1

    .line 740
    :cond_0
    new-instance p2, Lcom/facebook/imagepipeline/h/b;

    new-array v2, v2, [Lcom/facebook/imagepipeline/h/c;

    iget-object v3, p0, Lcom/facebook/imagepipeline/d/g;->c:Lcom/facebook/imagepipeline/h/c;

    aput-object v3, v2, v1

    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequest;->r()Lcom/facebook/imagepipeline/h/c;

    move-result-object p1

    aput-object p1, v2, v0

    invoke-direct {p2, v2}, Lcom/facebook/imagepipeline/h/b;-><init>([Lcom/facebook/imagepipeline/h/c;)V

    return-object p2

    .line 742
    :cond_1
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequest;->r()Lcom/facebook/imagepipeline/h/c;

    move-result-object v3

    if-nez v3, :cond_2

    .line 743
    new-instance p1, Lcom/facebook/imagepipeline/h/b;

    new-array v2, v2, [Lcom/facebook/imagepipeline/h/c;

    iget-object v3, p0, Lcom/facebook/imagepipeline/d/g;->c:Lcom/facebook/imagepipeline/h/c;

    aput-object v3, v2, v1

    aput-object p2, v2, v0

    invoke-direct {p1, v2}, Lcom/facebook/imagepipeline/h/b;-><init>([Lcom/facebook/imagepipeline/h/c;)V

    return-object p1

    .line 745
    :cond_2
    new-instance v3, Lcom/facebook/imagepipeline/h/b;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/facebook/imagepipeline/h/c;

    iget-object v5, p0, Lcom/facebook/imagepipeline/d/g;->c:Lcom/facebook/imagepipeline/h/c;

    aput-object v5, v4, v1

    aput-object p2, v4, v0

    .line 746
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequest;->r()Lcom/facebook/imagepipeline/h/c;

    move-result-object p1

    aput-object p1, v4, v2

    invoke-direct {v3, v4}, Lcom/facebook/imagepipeline/h/b;-><init>([Lcom/facebook/imagepipeline/h/c;)V

    return-object v3
.end method

.method private d()Ljava/lang/String;
    .locals 2

    .line 99
    iget-object v0, p0, Lcom/facebook/imagepipeline/d/g;->l:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;Lcom/facebook/imagepipeline/h/c;)Lcom/facebook/b/c;
    .locals 7
    .param p4    # Lcom/facebook/imagepipeline/h/c;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/request/ImageRequest;",
            "Ljava/lang/Object;",
            "Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;",
            "Lcom/facebook/imagepipeline/h/c;",
            ")",
            "Lcom/facebook/b/c<",
            "Lcom/facebook/common/references/a<",
            "Lcom/facebook/imagepipeline/g/c;",
            ">;>;"
        }
    .end annotation

    .line 268
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/d/g;->b:Lcom/facebook/imagepipeline/d/m;

    .line 269
    invoke-virtual {v0, p1}, Lcom/facebook/imagepipeline/d/m;->a(Lcom/facebook/imagepipeline/request/ImageRequest;)Lcom/facebook/imagepipeline/k/ak;

    move-result-object v2

    move-object v1, p0

    move-object v3, p1

    move-object v4, p3

    move-object v5, p2

    move-object v6, p4

    .line 270
    invoke-direct/range {v1 .. v6}, Lcom/facebook/imagepipeline/d/g;->a(Lcom/facebook/imagepipeline/k/ak;Lcom/facebook/imagepipeline/request/ImageRequest;Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;Ljava/lang/Object;Lcom/facebook/imagepipeline/h/c;)Lcom/facebook/b/c;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 277
    invoke-static {p1}, Lcom/facebook/b/d;->a(Ljava/lang/Throwable;)Lcom/facebook/b/c;

    move-result-object p1

    return-object p1
.end method

.method public a()V
    .locals 2

    .line 463
    new-instance v0, Lcom/facebook/imagepipeline/d/g$1;

    invoke-direct {v0, p0}, Lcom/facebook/imagepipeline/d/g$1;-><init>(Lcom/facebook/imagepipeline/d/g;)V

    .line 470
    iget-object v1, p0, Lcom/facebook/imagepipeline/d/g;->e:Lcom/facebook/imagepipeline/c/p;

    invoke-interface {v1, v0}, Lcom/facebook/imagepipeline/c/p;->a(Lcom/facebook/common/internal/h;)I

    .line 471
    iget-object v1, p0, Lcom/facebook/imagepipeline/d/g;->f:Lcom/facebook/imagepipeline/c/p;

    invoke-interface {v1, v0}, Lcom/facebook/imagepipeline/c/p;->a(Lcom/facebook/common/internal/h;)I

    return-void
.end method

.method public b()Lcom/facebook/imagepipeline/c/p;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/imagepipeline/c/p<",
            "Lcom/facebook/cache/common/b;",
            "Lcom/facebook/imagepipeline/g/c;",
            ">;"
        }
    .end annotation

    .line 508
    iget-object v0, p0, Lcom/facebook/imagepipeline/d/g;->e:Lcom/facebook/imagepipeline/c/p;

    return-object v0
.end method

.method public c()Lcom/facebook/imagepipeline/c/f;
    .locals 1

    .line 779
    iget-object v0, p0, Lcom/facebook/imagepipeline/d/g;->i:Lcom/facebook/imagepipeline/c/f;

    return-object v0
.end method
