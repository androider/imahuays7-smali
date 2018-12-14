.class public Lcom/facebook/imagepipeline/k/au;
.super Ljava/lang/Object;
.source "ThrottlingProducer.java"

# interfaces
.implements Lcom/facebook/imagepipeline/k/ak;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/imagepipeline/k/au$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/facebook/imagepipeline/k/ak<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/facebook/imagepipeline/k/ak;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/k/ak<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final b:I

.field private c:I
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private final d:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Landroid/util/Pair<",
            "Lcom/facebook/imagepipeline/k/k<",
            "TT;>;",
            "Lcom/facebook/imagepipeline/k/al;",
            ">;>;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private final e:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(ILjava/util/concurrent/Executor;Lcom/facebook/imagepipeline/k/ak;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/concurrent/Executor;",
            "Lcom/facebook/imagepipeline/k/ak<",
            "TT;>;)V"
        }
    .end annotation

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput p1, p0, Lcom/facebook/imagepipeline/k/au;->b:I

    .line 38
    invoke-static {p2}, Lcom/facebook/common/internal/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/Executor;

    iput-object p1, p0, Lcom/facebook/imagepipeline/k/au;->e:Ljava/util/concurrent/Executor;

    .line 39
    invoke-static {p3}, Lcom/facebook/common/internal/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/facebook/imagepipeline/k/ak;

    iput-object p1, p0, Lcom/facebook/imagepipeline/k/au;->a:Lcom/facebook/imagepipeline/k/ak;

    .line 40
    new-instance p1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object p1, p0, Lcom/facebook/imagepipeline/k/au;->d:Ljava/util/concurrent/ConcurrentLinkedQueue;

    const/4 p1, 0x0

    .line 41
    iput p1, p0, Lcom/facebook/imagepipeline/k/au;->c:I

    return-void
.end method

.method static synthetic a(Lcom/facebook/imagepipeline/k/au;)Ljava/util/concurrent/ConcurrentLinkedQueue;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/facebook/imagepipeline/k/au;->d:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-object p0
.end method

.method static synthetic b(Lcom/facebook/imagepipeline/k/au;)I
    .locals 2

    .line 20
    iget v0, p0, Lcom/facebook/imagepipeline/k/au;->c:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/facebook/imagepipeline/k/au;->c:I

    return v0
.end method

.method static synthetic c(Lcom/facebook/imagepipeline/k/au;)Ljava/util/concurrent/Executor;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/facebook/imagepipeline/k/au;->e:Ljava/util/concurrent/Executor;

    return-object p0
.end method


# virtual methods
.method public a(Lcom/facebook/imagepipeline/k/k;Lcom/facebook/imagepipeline/k/al;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/k/k<",
            "TT;>;",
            "Lcom/facebook/imagepipeline/k/al;",
            ")V"
        }
    .end annotation

    .line 46
    invoke-interface {p2}, Lcom/facebook/imagepipeline/k/al;->c()Lcom/facebook/imagepipeline/k/an;

    move-result-object v0

    .line 47
    invoke-interface {p2}, Lcom/facebook/imagepipeline/k/al;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ThrottlingProducer"

    invoke-interface {v0, v1, v2}, Lcom/facebook/imagepipeline/k/an;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    monitor-enter p0

    .line 51
    :try_start_0
    iget v0, p0, Lcom/facebook/imagepipeline/k/au;->c:I

    iget v1, p0, Lcom/facebook/imagepipeline/k/au;->b:I

    const/4 v2, 0x1

    if-lt v0, v1, :cond_0

    .line 52
    iget-object v0, p0, Lcom/facebook/imagepipeline/k/au;->d:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 55
    :cond_0
    iget v0, p0, Lcom/facebook/imagepipeline/k/au;->c:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/facebook/imagepipeline/k/au;->c:I

    const/4 v2, 0x0

    .line 58
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    .line 61
    invoke-virtual {p0, p1, p2}, Lcom/facebook/imagepipeline/k/au;->b(Lcom/facebook/imagepipeline/k/k;Lcom/facebook/imagepipeline/k/al;)V

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    .line 58
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method b(Lcom/facebook/imagepipeline/k/k;Lcom/facebook/imagepipeline/k/al;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/k/k<",
            "TT;>;",
            "Lcom/facebook/imagepipeline/k/al;",
            ")V"
        }
    .end annotation

    .line 66
    invoke-interface {p2}, Lcom/facebook/imagepipeline/k/al;->c()Lcom/facebook/imagepipeline/k/an;

    move-result-object v0

    .line 67
    invoke-interface {p2}, Lcom/facebook/imagepipeline/k/al;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ThrottlingProducer"

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/facebook/imagepipeline/k/an;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 68
    iget-object v0, p0, Lcom/facebook/imagepipeline/k/au;->a:Lcom/facebook/imagepipeline/k/ak;

    new-instance v1, Lcom/facebook/imagepipeline/k/au$a;

    invoke-direct {v1, p0, p1, v3}, Lcom/facebook/imagepipeline/k/au$a;-><init>(Lcom/facebook/imagepipeline/k/au;Lcom/facebook/imagepipeline/k/k;Lcom/facebook/imagepipeline/k/au$1;)V

    invoke-interface {v0, v1, p2}, Lcom/facebook/imagepipeline/k/ak;->a(Lcom/facebook/imagepipeline/k/k;Lcom/facebook/imagepipeline/k/al;)V

    return-void
.end method
