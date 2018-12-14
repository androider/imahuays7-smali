.class public abstract Lcom/facebook/imagepipeline/e/a;
.super Lcom/facebook/b/a;
.source "AbstractProducerToDataSourceAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/facebook/b/a<",
        "TT;>;"
    }
.end annotation

.annotation build Ljavax/annotation/concurrent/ThreadSafe;
.end annotation


# instance fields
.field private final a:Lcom/facebook/imagepipeline/k/aq;

.field private final b:Lcom/facebook/imagepipeline/h/c;


# direct methods
.method protected constructor <init>(Lcom/facebook/imagepipeline/k/ak;Lcom/facebook/imagepipeline/k/aq;Lcom/facebook/imagepipeline/h/c;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/k/ak<",
            "TT;>;",
            "Lcom/facebook/imagepipeline/k/aq;",
            "Lcom/facebook/imagepipeline/h/c;",
            ")V"
        }
    .end annotation

    .line 38
    invoke-direct {p0}, Lcom/facebook/b/a;-><init>()V

    .line 39
    invoke-static {}, Lcom/facebook/imagepipeline/l/b;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "AbstractProducerToDataSourceAdapter()"

    .line 40
    invoke-static {v0}, Lcom/facebook/imagepipeline/l/b;->a(Ljava/lang/String;)V

    .line 42
    :cond_0
    iput-object p2, p0, Lcom/facebook/imagepipeline/e/a;->a:Lcom/facebook/imagepipeline/k/aq;

    .line 43
    iput-object p3, p0, Lcom/facebook/imagepipeline/e/a;->b:Lcom/facebook/imagepipeline/h/c;

    .line 44
    invoke-static {}, Lcom/facebook/imagepipeline/l/b;->b()Z

    move-result p3

    if-eqz p3, :cond_1

    const-string p3, "AbstractProducerToDataSourceAdapter()->onRequestStart"

    .line 45
    invoke-static {p3}, Lcom/facebook/imagepipeline/l/b;->a(Ljava/lang/String;)V

    .line 47
    :cond_1
    iget-object p3, p0, Lcom/facebook/imagepipeline/e/a;->b:Lcom/facebook/imagepipeline/h/c;

    .line 48
    invoke-virtual {p2}, Lcom/facebook/imagepipeline/k/aq;->a()Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/imagepipeline/e/a;->a:Lcom/facebook/imagepipeline/k/aq;

    .line 49
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/k/aq;->d()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/imagepipeline/e/a;->a:Lcom/facebook/imagepipeline/k/aq;

    .line 50
    invoke-virtual {v2}, Lcom/facebook/imagepipeline/k/aq;->b()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/imagepipeline/e/a;->a:Lcom/facebook/imagepipeline/k/aq;

    .line 51
    invoke-virtual {v3}, Lcom/facebook/imagepipeline/k/aq;->f()Z

    move-result v3

    .line 47
    invoke-interface {p3, v0, v1, v2, v3}, Lcom/facebook/imagepipeline/h/c;->a(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 52
    invoke-static {}, Lcom/facebook/imagepipeline/l/b;->b()Z

    move-result p3

    if-eqz p3, :cond_2

    .line 53
    invoke-static {}, Lcom/facebook/imagepipeline/l/b;->a()V

    .line 55
    :cond_2
    invoke-static {}, Lcom/facebook/imagepipeline/l/b;->b()Z

    move-result p3

    if-eqz p3, :cond_3

    const-string p3, "AbstractProducerToDataSourceAdapter()->produceResult"

    .line 56
    invoke-static {p3}, Lcom/facebook/imagepipeline/l/b;->a(Ljava/lang/String;)V

    .line 58
    :cond_3
    invoke-direct {p0}, Lcom/facebook/imagepipeline/e/a;->k()Lcom/facebook/imagepipeline/k/k;

    move-result-object p3

    invoke-interface {p1, p3, p2}, Lcom/facebook/imagepipeline/k/ak;->a(Lcom/facebook/imagepipeline/k/k;Lcom/facebook/imagepipeline/k/al;)V

    .line 59
    invoke-static {}, Lcom/facebook/imagepipeline/l/b;->b()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 60
    invoke-static {}, Lcom/facebook/imagepipeline/l/b;->a()V

    .line 62
    :cond_4
    invoke-static {}, Lcom/facebook/imagepipeline/l/b;->b()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 63
    invoke-static {}, Lcom/facebook/imagepipeline/l/b;->a()V

    :cond_5
    return-void
.end method

.method static synthetic a(Lcom/facebook/imagepipeline/e/a;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/facebook/imagepipeline/e/a;->l()V

    return-void
.end method

.method static synthetic a(Lcom/facebook/imagepipeline/e/a;Ljava/lang/Throwable;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/e/a;->b(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/imagepipeline/e/a;F)Z
    .locals 0

    .line 29
    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/e/a;->a(F)Z

    move-result p0

    return p0
.end method

.method private b(Ljava/lang/Throwable;)V
    .locals 4

    .line 104
    invoke-super {p0, p1}, Lcom/facebook/b/a;->a(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/facebook/imagepipeline/e/a;->b:Lcom/facebook/imagepipeline/h/c;

    iget-object v1, p0, Lcom/facebook/imagepipeline/e/a;->a:Lcom/facebook/imagepipeline/k/aq;

    .line 106
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/k/aq;->a()Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/imagepipeline/e/a;->a:Lcom/facebook/imagepipeline/k/aq;

    .line 107
    invoke-virtual {v2}, Lcom/facebook/imagepipeline/k/aq;->b()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/imagepipeline/e/a;->a:Lcom/facebook/imagepipeline/k/aq;

    .line 109
    invoke-virtual {v3}, Lcom/facebook/imagepipeline/k/aq;->f()Z

    move-result v3

    .line 105
    invoke-interface {v0, v1, v2, p1, v3}, Lcom/facebook/imagepipeline/h/c;->a(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    :cond_0
    return-void
.end method

.method private k()Lcom/facebook/imagepipeline/k/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/imagepipeline/k/k<",
            "TT;>;"
        }
    .end annotation

    .line 68
    new-instance v0, Lcom/facebook/imagepipeline/e/a$1;

    invoke-direct {v0, p0}, Lcom/facebook/imagepipeline/e/a$1;-><init>(Lcom/facebook/imagepipeline/e/a;)V

    return-object v0
.end method

.method private declared-synchronized l()V
    .locals 1

    monitor-enter p0

    .line 114
    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/e/a;->a()Z

    move-result v0

    invoke-static {v0}, Lcom/facebook/common/internal/g;->b(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 113
    monitor-exit p0

    throw v0
.end method


# virtual methods
.method protected a(Ljava/lang/Object;I)V
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation

    .line 92
    invoke-static {p2}, Lcom/facebook/imagepipeline/k/b;->a(I)Z

    move-result p2

    .line 93
    invoke-super {p0, p1, p2}, Lcom/facebook/b/a;->a(Ljava/lang/Object;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 95
    iget-object p1, p0, Lcom/facebook/imagepipeline/e/a;->b:Lcom/facebook/imagepipeline/h/c;

    iget-object p2, p0, Lcom/facebook/imagepipeline/e/a;->a:Lcom/facebook/imagepipeline/k/aq;

    .line 96
    invoke-virtual {p2}, Lcom/facebook/imagepipeline/k/aq;->a()Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object p2

    iget-object v0, p0, Lcom/facebook/imagepipeline/e/a;->a:Lcom/facebook/imagepipeline/k/aq;

    .line 97
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/k/aq;->b()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/imagepipeline/e/a;->a:Lcom/facebook/imagepipeline/k/aq;

    .line 98
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/k/aq;->f()Z

    move-result v1

    .line 95
    invoke-interface {p1, p2, v0, v1}, Lcom/facebook/imagepipeline/h/c;->a(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public h()Z
    .locals 2

    .line 124
    invoke-super {p0}, Lcom/facebook/b/a;->h()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 127
    :cond_0
    invoke-super {p0}, Lcom/facebook/b/a;->b()Z

    move-result v0

    if-nez v0, :cond_1

    .line 128
    iget-object v0, p0, Lcom/facebook/imagepipeline/e/a;->b:Lcom/facebook/imagepipeline/h/c;

    iget-object v1, p0, Lcom/facebook/imagepipeline/e/a;->a:Lcom/facebook/imagepipeline/k/aq;

    invoke-virtual {v1}, Lcom/facebook/imagepipeline/k/aq;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/facebook/imagepipeline/h/c;->a_(Ljava/lang/String;)V

    .line 129
    iget-object v0, p0, Lcom/facebook/imagepipeline/e/a;->a:Lcom/facebook/imagepipeline/k/aq;

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/k/aq;->i()V

    :cond_1
    const/4 v0, 0x1

    return v0
.end method
