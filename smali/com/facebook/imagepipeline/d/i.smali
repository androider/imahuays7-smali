.class public Lcom/facebook/imagepipeline/d/i;
.super Ljava/lang/Object;
.source "ImagePipelineExperiments.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/imagepipeline/d/i$b;,
        Lcom/facebook/imagepipeline/d/i$c;,
        Lcom/facebook/imagepipeline/d/i$a;
    }
.end annotation


# instance fields
.field private final a:Z

.field private final b:Lcom/facebook/common/f/b$a;

.field private final c:Z

.field private final d:Lcom/facebook/common/f/b;

.field private final e:Z

.field private final f:Z

.field private final g:I

.field private final h:I

.field private i:Z

.field private final j:I

.field private final k:Z

.field private final l:Z

.field private final m:Lcom/facebook/imagepipeline/d/i$c;

.field private final n:Lcom/facebook/common/internal/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/internal/j<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/facebook/imagepipeline/d/i$a;)V
    .locals 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    invoke-static {p1}, Lcom/facebook/imagepipeline/d/i$a;->a(Lcom/facebook/imagepipeline/d/i$a;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/imagepipeline/d/i;->a:Z

    .line 52
    invoke-static {p1}, Lcom/facebook/imagepipeline/d/i$a;->b(Lcom/facebook/imagepipeline/d/i$a;)Lcom/facebook/common/f/b$a;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/imagepipeline/d/i;->b:Lcom/facebook/common/f/b$a;

    .line 53
    invoke-static {p1}, Lcom/facebook/imagepipeline/d/i$a;->c(Lcom/facebook/imagepipeline/d/i$a;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/imagepipeline/d/i;->c:Z

    .line 54
    invoke-static {p1}, Lcom/facebook/imagepipeline/d/i$a;->d(Lcom/facebook/imagepipeline/d/i$a;)Lcom/facebook/common/f/b;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/imagepipeline/d/i;->d:Lcom/facebook/common/f/b;

    .line 55
    invoke-static {p1}, Lcom/facebook/imagepipeline/d/i$a;->e(Lcom/facebook/imagepipeline/d/i$a;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/imagepipeline/d/i;->e:Z

    .line 56
    invoke-static {p1}, Lcom/facebook/imagepipeline/d/i$a;->f(Lcom/facebook/imagepipeline/d/i$a;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/imagepipeline/d/i;->f:Z

    .line 57
    invoke-static {p1}, Lcom/facebook/imagepipeline/d/i$a;->g(Lcom/facebook/imagepipeline/d/i$a;)I

    move-result v0

    iput v0, p0, Lcom/facebook/imagepipeline/d/i;->g:I

    .line 58
    invoke-static {p1}, Lcom/facebook/imagepipeline/d/i$a;->h(Lcom/facebook/imagepipeline/d/i$a;)I

    move-result v0

    iput v0, p0, Lcom/facebook/imagepipeline/d/i;->h:I

    .line 59
    iget-boolean v0, p1, Lcom/facebook/imagepipeline/d/i$a;->a:Z

    iput-boolean v0, p0, Lcom/facebook/imagepipeline/d/i;->i:Z

    .line 60
    invoke-static {p1}, Lcom/facebook/imagepipeline/d/i$a;->i(Lcom/facebook/imagepipeline/d/i$a;)I

    move-result v0

    iput v0, p0, Lcom/facebook/imagepipeline/d/i;->j:I

    .line 61
    invoke-static {p1}, Lcom/facebook/imagepipeline/d/i$a;->j(Lcom/facebook/imagepipeline/d/i$a;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/imagepipeline/d/i;->k:Z

    .line 62
    invoke-static {p1}, Lcom/facebook/imagepipeline/d/i$a;->k(Lcom/facebook/imagepipeline/d/i$a;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/imagepipeline/d/i;->l:Z

    .line 63
    invoke-static {p1}, Lcom/facebook/imagepipeline/d/i$a;->l(Lcom/facebook/imagepipeline/d/i$a;)Lcom/facebook/imagepipeline/d/i$c;

    move-result-object v0

    if-nez v0, :cond_0

    .line 64
    new-instance v0, Lcom/facebook/imagepipeline/d/i$b;

    invoke-direct {v0}, Lcom/facebook/imagepipeline/d/i$b;-><init>()V

    iput-object v0, p0, Lcom/facebook/imagepipeline/d/i;->m:Lcom/facebook/imagepipeline/d/i$c;

    goto :goto_0

    .line 66
    :cond_0
    invoke-static {p1}, Lcom/facebook/imagepipeline/d/i$a;->l(Lcom/facebook/imagepipeline/d/i$a;)Lcom/facebook/imagepipeline/d/i$c;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/imagepipeline/d/i;->m:Lcom/facebook/imagepipeline/d/i$c;

    .line 68
    :goto_0
    iget-object p1, p1, Lcom/facebook/imagepipeline/d/i$a;->b:Lcom/facebook/common/internal/j;

    iput-object p1, p0, Lcom/facebook/imagepipeline/d/i;->n:Lcom/facebook/common/internal/j;

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/imagepipeline/d/i$a;Lcom/facebook/imagepipeline/d/i$1;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/d/i;-><init>(Lcom/facebook/imagepipeline/d/i$a;)V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 72
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/d/i;->e:Z

    return v0
.end method

.method public b()Z
    .locals 1

    .line 76
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/d/i;->a:Z

    return v0
.end method

.method public c()Z
    .locals 1

    .line 80
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/d/i;->c:Z

    return v0
.end method

.method public d()Lcom/facebook/common/f/b$a;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/facebook/imagepipeline/d/i;->b:Lcom/facebook/common/f/b$a;

    return-object v0
.end method

.method public e()Lcom/facebook/common/f/b;
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/facebook/imagepipeline/d/i;->d:Lcom/facebook/common/f/b;

    return-object v0
.end method

.method public f()Z
    .locals 1

    .line 92
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/d/i;->f:Z

    return v0
.end method

.method public g()I
    .locals 1

    .line 96
    iget v0, p0, Lcom/facebook/imagepipeline/d/i;->g:I

    return v0
.end method

.method public h()I
    .locals 1

    .line 100
    iget v0, p0, Lcom/facebook/imagepipeline/d/i;->h:I

    return v0
.end method

.method public i()Z
    .locals 1

    .line 104
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/d/i;->k:Z

    return v0
.end method

.method public j()Z
    .locals 1

    .line 108
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/d/i;->l:Z

    return v0
.end method

.method public k()Lcom/facebook/imagepipeline/d/i$c;
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/facebook/imagepipeline/d/i;->m:Lcom/facebook/imagepipeline/d/i$c;

    return-object v0
.end method

.method public l()Z
    .locals 1

    .line 121
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/d/i;->i:Z

    return v0
.end method

.method public m()I
    .locals 1

    .line 125
    iget v0, p0, Lcom/facebook/imagepipeline/d/i;->j:I

    return v0
.end method

.method public n()Lcom/facebook/common/internal/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/common/internal/j<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 129
    iget-object v0, p0, Lcom/facebook/imagepipeline/d/i;->n:Lcom/facebook/common/internal/j;

    return-object v0
.end method
