.class public Lcom/facebook/drawee/backends/pipeline/f;
.super Ljava/lang/Object;
.source "PipelineDraweeControllerBuilderSupplier.java"

# interfaces
.implements Lcom/facebook/common/internal/j;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/common/internal/j<",
        "Lcom/facebook/drawee/backends/pipeline/e;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/facebook/imagepipeline/d/g;

.field private final c:Lcom/facebook/drawee/backends/pipeline/g;

.field private final d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/facebook/drawee/controller/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/facebook/drawee/backends/pipeline/b;)V
    .locals 1
    .param p2    # Lcom/facebook/drawee/backends/pipeline/b;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 35
    invoke-static {}, Lcom/facebook/imagepipeline/d/j;->a()Lcom/facebook/imagepipeline/d/j;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lcom/facebook/drawee/backends/pipeline/f;-><init>(Landroid/content/Context;Lcom/facebook/imagepipeline/d/j;Lcom/facebook/drawee/backends/pipeline/b;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/facebook/imagepipeline/d/j;Lcom/facebook/drawee/backends/pipeline/b;)V
    .locals 1
    .param p3    # Lcom/facebook/drawee/backends/pipeline/b;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 42
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/facebook/drawee/backends/pipeline/f;-><init>(Landroid/content/Context;Lcom/facebook/imagepipeline/d/j;Ljava/util/Set;Lcom/facebook/drawee/backends/pipeline/b;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/facebook/imagepipeline/d/j;Ljava/util/Set;Lcom/facebook/drawee/backends/pipeline/b;)V
    .locals 9
    .param p4    # Lcom/facebook/drawee/backends/pipeline/b;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/facebook/imagepipeline/d/j;",
            "Ljava/util/Set<",
            "Lcom/facebook/drawee/controller/c;",
            ">;",
            "Lcom/facebook/drawee/backends/pipeline/b;",
            ")V"
        }
    .end annotation

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/facebook/drawee/backends/pipeline/f;->a:Landroid/content/Context;

    .line 51
    invoke-virtual {p2}, Lcom/facebook/imagepipeline/d/j;->h()Lcom/facebook/imagepipeline/d/g;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/drawee/backends/pipeline/f;->b:Lcom/facebook/imagepipeline/d/g;

    if-eqz p4, :cond_0

    .line 53
    invoke-virtual {p4}, Lcom/facebook/drawee/backends/pipeline/b;->b()Lcom/facebook/drawee/backends/pipeline/g;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 54
    invoke-virtual {p4}, Lcom/facebook/drawee/backends/pipeline/b;->b()Lcom/facebook/drawee/backends/pipeline/g;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/drawee/backends/pipeline/f;->c:Lcom/facebook/drawee/backends/pipeline/g;

    goto :goto_0

    .line 56
    :cond_0
    new-instance v0, Lcom/facebook/drawee/backends/pipeline/g;

    invoke-direct {v0}, Lcom/facebook/drawee/backends/pipeline/g;-><init>()V

    iput-object v0, p0, Lcom/facebook/drawee/backends/pipeline/f;->c:Lcom/facebook/drawee/backends/pipeline/g;

    .line 58
    :goto_0
    iget-object v1, p0, Lcom/facebook/drawee/backends/pipeline/f;->c:Lcom/facebook/drawee/backends/pipeline/g;

    .line 59
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 60
    invoke-static {}, Lcom/facebook/drawee/components/a;->a()Lcom/facebook/drawee/components/a;

    move-result-object v3

    .line 61
    invoke-virtual {p2, p1}, Lcom/facebook/imagepipeline/d/j;->b(Landroid/content/Context;)Lcom/facebook/imagepipeline/f/a;

    move-result-object v4

    .line 62
    invoke-static {}, Lcom/facebook/common/b/i;->b()Lcom/facebook/common/b/i;

    move-result-object v5

    iget-object p1, p0, Lcom/facebook/drawee/backends/pipeline/f;->b:Lcom/facebook/imagepipeline/d/g;

    .line 63
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/d/g;->b()Lcom/facebook/imagepipeline/c/p;

    move-result-object v6

    const/4 p1, 0x0

    if-eqz p4, :cond_1

    .line 65
    invoke-virtual {p4}, Lcom/facebook/drawee/backends/pipeline/b;->a()Lcom/facebook/common/internal/ImmutableList;

    move-result-object p2

    move-object v7, p2

    goto :goto_1

    :cond_1
    move-object v7, p1

    :goto_1
    if-eqz p4, :cond_2

    .line 68
    invoke-virtual {p4}, Lcom/facebook/drawee/backends/pipeline/b;->c()Lcom/facebook/common/internal/j;

    move-result-object p1

    :cond_2
    move-object v8, p1

    .line 58
    invoke-virtual/range {v1 .. v8}, Lcom/facebook/drawee/backends/pipeline/g;->a(Landroid/content/res/Resources;Lcom/facebook/drawee/components/a;Lcom/facebook/imagepipeline/f/a;Ljava/util/concurrent/Executor;Lcom/facebook/imagepipeline/c/p;Lcom/facebook/common/internal/ImmutableList;Lcom/facebook/common/internal/j;)V

    .line 70
    iput-object p3, p0, Lcom/facebook/drawee/backends/pipeline/f;->d:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/drawee/backends/pipeline/e;
    .locals 5

    .line 75
    new-instance v0, Lcom/facebook/drawee/backends/pipeline/e;

    iget-object v1, p0, Lcom/facebook/drawee/backends/pipeline/f;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/facebook/drawee/backends/pipeline/f;->c:Lcom/facebook/drawee/backends/pipeline/g;

    iget-object v3, p0, Lcom/facebook/drawee/backends/pipeline/f;->b:Lcom/facebook/imagepipeline/d/g;

    iget-object v4, p0, Lcom/facebook/drawee/backends/pipeline/f;->d:Ljava/util/Set;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/facebook/drawee/backends/pipeline/e;-><init>(Landroid/content/Context;Lcom/facebook/drawee/backends/pipeline/g;Lcom/facebook/imagepipeline/d/g;Ljava/util/Set;)V

    return-object v0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .line 20
    invoke-virtual {p0}, Lcom/facebook/drawee/backends/pipeline/f;->a()Lcom/facebook/drawee/backends/pipeline/e;

    move-result-object v0

    return-object v0
.end method
