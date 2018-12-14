.class public Lcom/facebook/drawee/backends/pipeline/g;
.super Ljava/lang/Object;
.source "PipelineDraweeControllerFactory.java"


# instance fields
.field private a:Landroid/content/res/Resources;

.field private b:Lcom/facebook/drawee/components/a;

.field private c:Lcom/facebook/imagepipeline/f/a;

.field private d:Ljava/util/concurrent/Executor;

.field private e:Lcom/facebook/imagepipeline/c/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/c/p<",
            "Lcom/facebook/cache/common/b;",
            "Lcom/facebook/imagepipeline/g/c;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/facebook/common/internal/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/internal/ImmutableList<",
            "Lcom/facebook/imagepipeline/f/a;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private g:Lcom/facebook/common/internal/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/internal/j<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/drawee/backends/pipeline/d;
    .locals 7

    .line 50
    iget-object v1, p0, Lcom/facebook/drawee/backends/pipeline/g;->a:Landroid/content/res/Resources;

    iget-object v2, p0, Lcom/facebook/drawee/backends/pipeline/g;->b:Lcom/facebook/drawee/components/a;

    iget-object v3, p0, Lcom/facebook/drawee/backends/pipeline/g;->c:Lcom/facebook/imagepipeline/f/a;

    iget-object v4, p0, Lcom/facebook/drawee/backends/pipeline/g;->d:Ljava/util/concurrent/Executor;

    iget-object v5, p0, Lcom/facebook/drawee/backends/pipeline/g;->e:Lcom/facebook/imagepipeline/c/p;

    iget-object v6, p0, Lcom/facebook/drawee/backends/pipeline/g;->f:Lcom/facebook/common/internal/ImmutableList;

    move-object v0, p0

    .line 51
    invoke-virtual/range {v0 .. v6}, Lcom/facebook/drawee/backends/pipeline/g;->a(Landroid/content/res/Resources;Lcom/facebook/drawee/components/a;Lcom/facebook/imagepipeline/f/a;Ljava/util/concurrent/Executor;Lcom/facebook/imagepipeline/c/p;Lcom/facebook/common/internal/ImmutableList;)Lcom/facebook/drawee/backends/pipeline/d;

    move-result-object v0

    .line 58
    iget-object v1, p0, Lcom/facebook/drawee/backends/pipeline/g;->g:Lcom/facebook/common/internal/j;

    if-eqz v1, :cond_0

    .line 59
    iget-object v1, p0, Lcom/facebook/drawee/backends/pipeline/g;->g:Lcom/facebook/common/internal/j;

    invoke-interface {v1}, Lcom/facebook/common/internal/j;->b()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/facebook/drawee/backends/pipeline/d;->a(Z)V

    :cond_0
    return-object v0
.end method

.method protected a(Landroid/content/res/Resources;Lcom/facebook/drawee/components/a;Lcom/facebook/imagepipeline/f/a;Ljava/util/concurrent/Executor;Lcom/facebook/imagepipeline/c/p;Lcom/facebook/common/internal/ImmutableList;)Lcom/facebook/drawee/backends/pipeline/d;
    .locals 8
    .param p6    # Lcom/facebook/common/internal/ImmutableList;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "Lcom/facebook/drawee/components/a;",
            "Lcom/facebook/imagepipeline/f/a;",
            "Ljava/util/concurrent/Executor;",
            "Lcom/facebook/imagepipeline/c/p<",
            "Lcom/facebook/cache/common/b;",
            "Lcom/facebook/imagepipeline/g/c;",
            ">;",
            "Lcom/facebook/common/internal/ImmutableList<",
            "Lcom/facebook/imagepipeline/f/a;",
            ">;)",
            "Lcom/facebook/drawee/backends/pipeline/d;"
        }
    .end annotation

    .line 71
    new-instance v7, Lcom/facebook/drawee/backends/pipeline/d;

    move-object v0, v7

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/facebook/drawee/backends/pipeline/d;-><init>(Landroid/content/res/Resources;Lcom/facebook/drawee/components/a;Lcom/facebook/imagepipeline/f/a;Ljava/util/concurrent/Executor;Lcom/facebook/imagepipeline/c/p;Lcom/facebook/common/internal/ImmutableList;)V

    return-object v7
.end method

.method public a(Landroid/content/res/Resources;Lcom/facebook/drawee/components/a;Lcom/facebook/imagepipeline/f/a;Ljava/util/concurrent/Executor;Lcom/facebook/imagepipeline/c/p;Lcom/facebook/common/internal/ImmutableList;Lcom/facebook/common/internal/j;)V
    .locals 0
    .param p6    # Lcom/facebook/common/internal/ImmutableList;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # Lcom/facebook/common/internal/j;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "Lcom/facebook/drawee/components/a;",
            "Lcom/facebook/imagepipeline/f/a;",
            "Ljava/util/concurrent/Executor;",
            "Lcom/facebook/imagepipeline/c/p<",
            "Lcom/facebook/cache/common/b;",
            "Lcom/facebook/imagepipeline/g/c;",
            ">;",
            "Lcom/facebook/common/internal/ImmutableList<",
            "Lcom/facebook/imagepipeline/f/a;",
            ">;",
            "Lcom/facebook/common/internal/j<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 40
    iput-object p1, p0, Lcom/facebook/drawee/backends/pipeline/g;->a:Landroid/content/res/Resources;

    .line 41
    iput-object p2, p0, Lcom/facebook/drawee/backends/pipeline/g;->b:Lcom/facebook/drawee/components/a;

    .line 42
    iput-object p3, p0, Lcom/facebook/drawee/backends/pipeline/g;->c:Lcom/facebook/imagepipeline/f/a;

    .line 43
    iput-object p4, p0, Lcom/facebook/drawee/backends/pipeline/g;->d:Ljava/util/concurrent/Executor;

    .line 44
    iput-object p5, p0, Lcom/facebook/drawee/backends/pipeline/g;->e:Lcom/facebook/imagepipeline/c/p;

    .line 45
    iput-object p6, p0, Lcom/facebook/drawee/backends/pipeline/g;->f:Lcom/facebook/common/internal/ImmutableList;

    .line 46
    iput-object p7, p0, Lcom/facebook/drawee/backends/pipeline/g;->g:Lcom/facebook/common/internal/j;

    return-void
.end method
