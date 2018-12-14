.class public Lcom/facebook/imagepipeline/e/b;
.super Lcom/facebook/imagepipeline/e/a;
.source "CloseableProducerToDataSourceAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/facebook/imagepipeline/e/a<",
        "Lcom/facebook/common/references/a<",
        "TT;>;>;"
    }
.end annotation

.annotation build Ljavax/annotation/concurrent/ThreadSafe;
.end annotation


# direct methods
.method private constructor <init>(Lcom/facebook/imagepipeline/k/ak;Lcom/facebook/imagepipeline/k/aq;Lcom/facebook/imagepipeline/h/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/k/ak<",
            "Lcom/facebook/common/references/a<",
            "TT;>;>;",
            "Lcom/facebook/imagepipeline/k/aq;",
            "Lcom/facebook/imagepipeline/h/c;",
            ")V"
        }
    .end annotation

    .line 47
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/imagepipeline/e/a;-><init>(Lcom/facebook/imagepipeline/k/ak;Lcom/facebook/imagepipeline/k/aq;Lcom/facebook/imagepipeline/h/c;)V

    return-void
.end method

.method public static a(Lcom/facebook/imagepipeline/k/ak;Lcom/facebook/imagepipeline/k/aq;Lcom/facebook/imagepipeline/h/c;)Lcom/facebook/b/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/facebook/imagepipeline/k/ak<",
            "Lcom/facebook/common/references/a<",
            "TT;>;>;",
            "Lcom/facebook/imagepipeline/k/aq;",
            "Lcom/facebook/imagepipeline/h/c;",
            ")",
            "Lcom/facebook/b/c<",
            "Lcom/facebook/common/references/a<",
            "TT;>;>;"
        }
    .end annotation

    .line 32
    invoke-static {}, Lcom/facebook/imagepipeline/l/b;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "CloseableProducerToDataSourceAdapter#create"

    .line 33
    invoke-static {v0}, Lcom/facebook/imagepipeline/l/b;->a(Ljava/lang/String;)V

    .line 35
    :cond_0
    new-instance v0, Lcom/facebook/imagepipeline/e/b;

    invoke-direct {v0, p0, p1, p2}, Lcom/facebook/imagepipeline/e/b;-><init>(Lcom/facebook/imagepipeline/k/ak;Lcom/facebook/imagepipeline/k/aq;Lcom/facebook/imagepipeline/h/c;)V

    .line 37
    invoke-static {}, Lcom/facebook/imagepipeline/l/b;->b()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 38
    invoke-static {}, Lcom/facebook/imagepipeline/l/b;->a()V

    :cond_1
    return-object v0
.end method


# virtual methods
.method protected a(Lcom/facebook/common/references/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/references/a<",
            "TT;>;)V"
        }
    .end annotation

    .line 58
    invoke-static {p1}, Lcom/facebook/common/references/a;->c(Lcom/facebook/common/references/a;)V

    return-void
.end method

.method protected a(Lcom/facebook/common/references/a;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/references/a<",
            "TT;>;I)V"
        }
    .end annotation

    .line 63
    invoke-static {p1}, Lcom/facebook/common/references/a;->b(Lcom/facebook/common/references/a;)Lcom/facebook/common/references/a;

    move-result-object p1

    invoke-super {p0, p1, p2}, Lcom/facebook/imagepipeline/e/a;->a(Ljava/lang/Object;I)V

    return-void
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 24
    check-cast p1, Lcom/facebook/common/references/a;

    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/e/b;->a(Lcom/facebook/common/references/a;)V

    return-void
.end method

.method protected bridge synthetic a(Ljava/lang/Object;I)V
    .locals 0

    .line 24
    check-cast p1, Lcom/facebook/common/references/a;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/imagepipeline/e/b;->a(Lcom/facebook/common/references/a;I)V

    return-void
.end method

.method public synthetic d()Ljava/lang/Object;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 24
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/e/b;->k()Lcom/facebook/common/references/a;

    move-result-object v0

    return-object v0
.end method

.method public k()Lcom/facebook/common/references/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/common/references/a<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 53
    invoke-super {p0}, Lcom/facebook/imagepipeline/e/a;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/common/references/a;

    invoke-static {v0}, Lcom/facebook/common/references/a;->b(Lcom/facebook/common/references/a;)Lcom/facebook/common/references/a;

    move-result-object v0

    return-object v0
.end method
