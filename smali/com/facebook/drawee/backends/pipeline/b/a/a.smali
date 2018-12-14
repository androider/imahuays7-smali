.class public Lcom/facebook/drawee/backends/pipeline/b/a/a;
.super Lcom/facebook/drawee/controller/b;
.source "ImagePerfControllerListener.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/drawee/controller/b<",
        "Lcom/facebook/imagepipeline/g/f;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/facebook/common/time/b;

.field private final b:Lcom/facebook/drawee/backends/pipeline/b/h;

.field private final c:Lcom/facebook/drawee/backends/pipeline/b/g;


# direct methods
.method public constructor <init>(Lcom/facebook/common/time/b;Lcom/facebook/drawee/backends/pipeline/b/h;Lcom/facebook/drawee/backends/pipeline/b/g;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/facebook/drawee/controller/b;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/facebook/drawee/backends/pipeline/b/a/a;->a:Lcom/facebook/common/time/b;

    .line 29
    iput-object p2, p0, Lcom/facebook/drawee/backends/pipeline/b/a/a;->b:Lcom/facebook/drawee/backends/pipeline/b/h;

    .line 30
    iput-object p3, p0, Lcom/facebook/drawee/backends/pipeline/b/a/a;->c:Lcom/facebook/drawee/backends/pipeline/b/g;

    return-void
.end method

.method private b(J)V
    .locals 2

    .line 109
    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/b/a/a;->b:Lcom/facebook/drawee/backends/pipeline/b/h;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/facebook/drawee/backends/pipeline/b/h;->b(Z)V

    .line 110
    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/b/a/a;->b:Lcom/facebook/drawee/backends/pipeline/b/h;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/drawee/backends/pipeline/b/h;->i(J)V

    .line 112
    iget-object p1, p0, Lcom/facebook/drawee/backends/pipeline/b/a/a;->c:Lcom/facebook/drawee/backends/pipeline/b/g;

    iget-object p2, p0, Lcom/facebook/drawee/backends/pipeline/b/a/a;->b:Lcom/facebook/drawee/backends/pipeline/b/h;

    const/4 v0, 0x2

    invoke-virtual {p1, p2, v0}, Lcom/facebook/drawee/backends/pipeline/b/g;->b(Lcom/facebook/drawee/backends/pipeline/b/h;I)V

    return-void
.end method


# virtual methods
.method public a(J)V
    .locals 2

    .line 100
    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/b/a/a;->b:Lcom/facebook/drawee/backends/pipeline/b/h;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/facebook/drawee/backends/pipeline/b/h;->b(Z)V

    .line 101
    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/b/a/a;->b:Lcom/facebook/drawee/backends/pipeline/b/h;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/drawee/backends/pipeline/b/h;->h(J)V

    .line 103
    iget-object p1, p0, Lcom/facebook/drawee/backends/pipeline/b/a/a;->c:Lcom/facebook/drawee/backends/pipeline/b/g;

    iget-object p2, p0, Lcom/facebook/drawee/backends/pipeline/b/a/a;->b:Lcom/facebook/drawee/backends/pipeline/b/h;

    invoke-virtual {p1, p2, v1}, Lcom/facebook/drawee/backends/pipeline/b/g;->b(Lcom/facebook/drawee/backends/pipeline/b/h;I)V

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/facebook/imagepipeline/g/f;)V
    .locals 3
    .param p2    # Lcom/facebook/imagepipeline/g/f;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 47
    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/b/a/a;->a:Lcom/facebook/common/time/b;

    invoke-interface {v0}, Lcom/facebook/common/time/b;->now()J

    move-result-wide v0

    .line 49
    iget-object v2, p0, Lcom/facebook/drawee/backends/pipeline/b/a/a;->b:Lcom/facebook/drawee/backends/pipeline/b/h;

    invoke-virtual {v2, v0, v1}, Lcom/facebook/drawee/backends/pipeline/b/h;->b(J)V

    .line 50
    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/b/a/a;->b:Lcom/facebook/drawee/backends/pipeline/b/h;

    invoke-virtual {v0, p1}, Lcom/facebook/drawee/backends/pipeline/b/h;->a(Ljava/lang/String;)V

    .line 51
    iget-object p1, p0, Lcom/facebook/drawee/backends/pipeline/b/a/a;->b:Lcom/facebook/drawee/backends/pipeline/b/h;

    invoke-virtual {p1, p2}, Lcom/facebook/drawee/backends/pipeline/b/h;->a(Lcom/facebook/imagepipeline/g/f;)V

    .line 53
    iget-object p1, p0, Lcom/facebook/drawee/backends/pipeline/b/a/a;->c:Lcom/facebook/drawee/backends/pipeline/b/g;

    iget-object p2, p0, Lcom/facebook/drawee/backends/pipeline/b/a/a;->b:Lcom/facebook/drawee/backends/pipeline/b/h;

    const/4 v0, 0x2

    invoke-virtual {p1, p2, v0}, Lcom/facebook/drawee/backends/pipeline/b/g;->a(Lcom/facebook/drawee/backends/pipeline/b/h;I)V

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/facebook/imagepipeline/g/f;Landroid/graphics/drawable/Animatable;)V
    .locals 2
    .param p2    # Lcom/facebook/imagepipeline/g/f;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/drawable/Animatable;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 59
    iget-object p3, p0, Lcom/facebook/drawee/backends/pipeline/b/a/a;->a:Lcom/facebook/common/time/b;

    invoke-interface {p3}, Lcom/facebook/common/time/b;->now()J

    move-result-wide v0

    .line 61
    iget-object p3, p0, Lcom/facebook/drawee/backends/pipeline/b/a/a;->b:Lcom/facebook/drawee/backends/pipeline/b/h;

    invoke-virtual {p3, v0, v1}, Lcom/facebook/drawee/backends/pipeline/b/h;->c(J)V

    .line 62
    iget-object p3, p0, Lcom/facebook/drawee/backends/pipeline/b/a/a;->b:Lcom/facebook/drawee/backends/pipeline/b/h;

    invoke-virtual {p3, v0, v1}, Lcom/facebook/drawee/backends/pipeline/b/h;->g(J)V

    .line 63
    iget-object p3, p0, Lcom/facebook/drawee/backends/pipeline/b/a/a;->b:Lcom/facebook/drawee/backends/pipeline/b/h;

    invoke-virtual {p3, p1}, Lcom/facebook/drawee/backends/pipeline/b/h;->a(Ljava/lang/String;)V

    .line 64
    iget-object p1, p0, Lcom/facebook/drawee/backends/pipeline/b/a/a;->b:Lcom/facebook/drawee/backends/pipeline/b/h;

    invoke-virtual {p1, p2}, Lcom/facebook/drawee/backends/pipeline/b/h;->a(Lcom/facebook/imagepipeline/g/f;)V

    .line 66
    iget-object p1, p0, Lcom/facebook/drawee/backends/pipeline/b/a/a;->c:Lcom/facebook/drawee/backends/pipeline/b/g;

    iget-object p2, p0, Lcom/facebook/drawee/backends/pipeline/b/a/a;->b:Lcom/facebook/drawee/backends/pipeline/b/h;

    const/4 p3, 0x3

    invoke-virtual {p1, p2, p3}, Lcom/facebook/drawee/backends/pipeline/b/g;->a(Lcom/facebook/drawee/backends/pipeline/b/h;I)V

    return-void
.end method

.method public onFailure(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3

    .line 71
    iget-object p2, p0, Lcom/facebook/drawee/backends/pipeline/b/a/a;->a:Lcom/facebook/common/time/b;

    invoke-interface {p2}, Lcom/facebook/common/time/b;->now()J

    move-result-wide v0

    .line 73
    iget-object p2, p0, Lcom/facebook/drawee/backends/pipeline/b/a/a;->b:Lcom/facebook/drawee/backends/pipeline/b/h;

    invoke-virtual {p2, v0, v1}, Lcom/facebook/drawee/backends/pipeline/b/h;->d(J)V

    .line 74
    iget-object p2, p0, Lcom/facebook/drawee/backends/pipeline/b/a/a;->b:Lcom/facebook/drawee/backends/pipeline/b/h;

    invoke-virtual {p2, p1}, Lcom/facebook/drawee/backends/pipeline/b/h;->a(Ljava/lang/String;)V

    .line 76
    iget-object p1, p0, Lcom/facebook/drawee/backends/pipeline/b/a/a;->c:Lcom/facebook/drawee/backends/pipeline/b/g;

    iget-object p2, p0, Lcom/facebook/drawee/backends/pipeline/b/a/a;->b:Lcom/facebook/drawee/backends/pipeline/b/h;

    const/4 v2, 0x5

    invoke-virtual {p1, p2, v2}, Lcom/facebook/drawee/backends/pipeline/b/g;->a(Lcom/facebook/drawee/backends/pipeline/b/h;I)V

    .line 78
    invoke-direct {p0, v0, v1}, Lcom/facebook/drawee/backends/pipeline/b/a/a;->b(J)V

    return-void
.end method

.method public synthetic onFinalImageSet(Ljava/lang/String;Ljava/lang/Object;Landroid/graphics/drawable/Animatable;)V
    .locals 0
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/drawable/Animatable;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 20
    check-cast p2, Lcom/facebook/imagepipeline/g/f;

    invoke-virtual {p0, p1, p2, p3}, Lcom/facebook/drawee/backends/pipeline/b/a/a;->a(Ljava/lang/String;Lcom/facebook/imagepipeline/g/f;Landroid/graphics/drawable/Animatable;)V

    return-void
.end method

.method public synthetic onIntermediateImageSet(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 20
    check-cast p2, Lcom/facebook/imagepipeline/g/f;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/drawee/backends/pipeline/b/a/a;->a(Ljava/lang/String;Lcom/facebook/imagepipeline/g/f;)V

    return-void
.end method

.method public onRelease(Ljava/lang/String;)V
    .locals 4

    .line 83
    invoke-super {p0, p1}, Lcom/facebook/drawee/controller/b;->onRelease(Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/b/a/a;->a:Lcom/facebook/common/time/b;

    invoke-interface {v0}, Lcom/facebook/common/time/b;->now()J

    move-result-wide v0

    .line 86
    iget-object v2, p0, Lcom/facebook/drawee/backends/pipeline/b/a/a;->b:Lcom/facebook/drawee/backends/pipeline/b/h;

    invoke-virtual {v2}, Lcom/facebook/drawee/backends/pipeline/b/h;->b()I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    const/4 v3, 0x5

    if-eq v2, v3, :cond_0

    .line 89
    iget-object v2, p0, Lcom/facebook/drawee/backends/pipeline/b/a/a;->b:Lcom/facebook/drawee/backends/pipeline/b/h;

    invoke-virtual {v2, v0, v1}, Lcom/facebook/drawee/backends/pipeline/b/h;->e(J)V

    .line 90
    iget-object v2, p0, Lcom/facebook/drawee/backends/pipeline/b/a/a;->b:Lcom/facebook/drawee/backends/pipeline/b/h;

    invoke-virtual {v2, p1}, Lcom/facebook/drawee/backends/pipeline/b/h;->a(Ljava/lang/String;)V

    .line 92
    iget-object p1, p0, Lcom/facebook/drawee/backends/pipeline/b/a/a;->c:Lcom/facebook/drawee/backends/pipeline/b/g;

    iget-object v2, p0, Lcom/facebook/drawee/backends/pipeline/b/a/a;->b:Lcom/facebook/drawee/backends/pipeline/b/h;

    const/4 v3, 0x4

    invoke-virtual {p1, v2, v3}, Lcom/facebook/drawee/backends/pipeline/b/g;->a(Lcom/facebook/drawee/backends/pipeline/b/h;I)V

    .line 95
    :cond_0
    invoke-direct {p0, v0, v1}, Lcom/facebook/drawee/backends/pipeline/b/a/a;->b(J)V

    return-void
.end method

.method public onSubmit(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3

    .line 35
    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/b/a/a;->a:Lcom/facebook/common/time/b;

    invoke-interface {v0}, Lcom/facebook/common/time/b;->now()J

    move-result-wide v0

    .line 37
    iget-object v2, p0, Lcom/facebook/drawee/backends/pipeline/b/a/a;->b:Lcom/facebook/drawee/backends/pipeline/b/h;

    invoke-virtual {v2, v0, v1}, Lcom/facebook/drawee/backends/pipeline/b/h;->a(J)V

    .line 38
    iget-object v2, p0, Lcom/facebook/drawee/backends/pipeline/b/a/a;->b:Lcom/facebook/drawee/backends/pipeline/b/h;

    invoke-virtual {v2, p1}, Lcom/facebook/drawee/backends/pipeline/b/h;->a(Ljava/lang/String;)V

    .line 39
    iget-object p1, p0, Lcom/facebook/drawee/backends/pipeline/b/a/a;->b:Lcom/facebook/drawee/backends/pipeline/b/h;

    invoke-virtual {p1, p2}, Lcom/facebook/drawee/backends/pipeline/b/h;->a(Ljava/lang/Object;)V

    .line 41
    iget-object p1, p0, Lcom/facebook/drawee/backends/pipeline/b/a/a;->c:Lcom/facebook/drawee/backends/pipeline/b/g;

    iget-object p2, p0, Lcom/facebook/drawee/backends/pipeline/b/a/a;->b:Lcom/facebook/drawee/backends/pipeline/b/h;

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v2}, Lcom/facebook/drawee/backends/pipeline/b/g;->a(Lcom/facebook/drawee/backends/pipeline/b/h;I)V

    .line 42
    invoke-virtual {p0, v0, v1}, Lcom/facebook/drawee/backends/pipeline/b/a/a;->a(J)V

    return-void
.end method
