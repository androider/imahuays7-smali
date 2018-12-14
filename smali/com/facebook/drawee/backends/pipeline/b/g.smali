.class public Lcom/facebook/drawee/backends/pipeline/b/g;
.super Lcom/facebook/imagepipeline/h/a;
.source "ImagePerfMonitor.java"


# instance fields
.field private final a:Lcom/facebook/drawee/backends/pipeline/d;

.field private final b:Lcom/facebook/common/time/b;

.field private final c:Lcom/facebook/drawee/backends/pipeline/b/h;

.field private d:Lcom/facebook/drawee/backends/pipeline/b/c;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private e:Lcom/facebook/drawee/backends/pipeline/b/b;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private f:Lcom/facebook/drawee/backends/pipeline/b/a/c;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private g:Lcom/facebook/drawee/backends/pipeline/b/a/a;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private h:Lcom/facebook/imagepipeline/h/b;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/drawee/backends/pipeline/b/f;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private j:Z


# direct methods
.method public constructor <init>(Lcom/facebook/common/time/b;Lcom/facebook/drawee/backends/pipeline/d;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/facebook/imagepipeline/h/a;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/facebook/drawee/backends/pipeline/b/g;->b:Lcom/facebook/common/time/b;

    .line 41
    iput-object p2, p0, Lcom/facebook/drawee/backends/pipeline/b/g;->a:Lcom/facebook/drawee/backends/pipeline/d;

    .line 42
    new-instance p1, Lcom/facebook/drawee/backends/pipeline/b/h;

    invoke-direct {p1}, Lcom/facebook/drawee/backends/pipeline/b/h;-><init>()V

    iput-object p1, p0, Lcom/facebook/drawee/backends/pipeline/b/g;->c:Lcom/facebook/drawee/backends/pipeline/b/h;

    return-void
.end method

.method private d()V
    .locals 4

    .line 130
    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/b/g;->g:Lcom/facebook/drawee/backends/pipeline/b/a/a;

    if-nez v0, :cond_0

    .line 131
    new-instance v0, Lcom/facebook/drawee/backends/pipeline/b/a/a;

    iget-object v1, p0, Lcom/facebook/drawee/backends/pipeline/b/g;->b:Lcom/facebook/common/time/b;

    iget-object v2, p0, Lcom/facebook/drawee/backends/pipeline/b/g;->c:Lcom/facebook/drawee/backends/pipeline/b/h;

    invoke-direct {v0, v1, v2, p0}, Lcom/facebook/drawee/backends/pipeline/b/a/a;-><init>(Lcom/facebook/common/time/b;Lcom/facebook/drawee/backends/pipeline/b/h;Lcom/facebook/drawee/backends/pipeline/b/g;)V

    iput-object v0, p0, Lcom/facebook/drawee/backends/pipeline/b/g;->g:Lcom/facebook/drawee/backends/pipeline/b/a/a;

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/b/g;->f:Lcom/facebook/drawee/backends/pipeline/b/a/c;

    if-nez v0, :cond_1

    .line 135
    new-instance v0, Lcom/facebook/drawee/backends/pipeline/b/a/c;

    iget-object v1, p0, Lcom/facebook/drawee/backends/pipeline/b/g;->b:Lcom/facebook/common/time/b;

    iget-object v2, p0, Lcom/facebook/drawee/backends/pipeline/b/g;->c:Lcom/facebook/drawee/backends/pipeline/b/h;

    invoke-direct {v0, v1, v2}, Lcom/facebook/drawee/backends/pipeline/b/a/c;-><init>(Lcom/facebook/common/time/b;Lcom/facebook/drawee/backends/pipeline/b/h;)V

    iput-object v0, p0, Lcom/facebook/drawee/backends/pipeline/b/g;->f:Lcom/facebook/drawee/backends/pipeline/b/a/c;

    .line 137
    :cond_1
    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/b/g;->e:Lcom/facebook/drawee/backends/pipeline/b/b;

    if-nez v0, :cond_2

    .line 138
    new-instance v0, Lcom/facebook/drawee/backends/pipeline/b/a/b;

    iget-object v1, p0, Lcom/facebook/drawee/backends/pipeline/b/g;->c:Lcom/facebook/drawee/backends/pipeline/b/h;

    invoke-direct {v0, v1, p0}, Lcom/facebook/drawee/backends/pipeline/b/a/b;-><init>(Lcom/facebook/drawee/backends/pipeline/b/h;Lcom/facebook/drawee/backends/pipeline/b/g;)V

    iput-object v0, p0, Lcom/facebook/drawee/backends/pipeline/b/g;->e:Lcom/facebook/drawee/backends/pipeline/b/b;

    .line 140
    :cond_2
    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/b/g;->d:Lcom/facebook/drawee/backends/pipeline/b/c;

    if-nez v0, :cond_3

    .line 141
    new-instance v0, Lcom/facebook/drawee/backends/pipeline/b/c;

    iget-object v1, p0, Lcom/facebook/drawee/backends/pipeline/b/g;->a:Lcom/facebook/drawee/backends/pipeline/d;

    .line 142
    invoke-virtual {v1}, Lcom/facebook/drawee/backends/pipeline/d;->g()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/drawee/backends/pipeline/b/g;->e:Lcom/facebook/drawee/backends/pipeline/b/b;

    invoke-direct {v0, v1, v2}, Lcom/facebook/drawee/backends/pipeline/b/c;-><init>(Ljava/lang/String;Lcom/facebook/drawee/backends/pipeline/b/b;)V

    iput-object v0, p0, Lcom/facebook/drawee/backends/pipeline/b/g;->d:Lcom/facebook/drawee/backends/pipeline/b/c;

    goto :goto_0

    .line 145
    :cond_3
    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/b/g;->d:Lcom/facebook/drawee/backends/pipeline/b/c;

    iget-object v1, p0, Lcom/facebook/drawee/backends/pipeline/b/g;->a:Lcom/facebook/drawee/backends/pipeline/d;

    invoke-virtual {v1}, Lcom/facebook/drawee/backends/pipeline/d;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/drawee/backends/pipeline/b/c;->a(Ljava/lang/String;)V

    .line 147
    :goto_0
    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/b/g;->h:Lcom/facebook/imagepipeline/h/b;

    if-nez v0, :cond_4

    .line 148
    new-instance v0, Lcom/facebook/imagepipeline/h/b;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/facebook/imagepipeline/h/c;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/facebook/drawee/backends/pipeline/b/g;->f:Lcom/facebook/drawee/backends/pipeline/b/a/c;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/facebook/drawee/backends/pipeline/b/g;->d:Lcom/facebook/drawee/backends/pipeline/b/c;

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Lcom/facebook/imagepipeline/h/b;-><init>([Lcom/facebook/imagepipeline/h/c;)V

    iput-object v0, p0, Lcom/facebook/drawee/backends/pipeline/b/g;->h:Lcom/facebook/imagepipeline/h/b;

    :cond_4
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/b/g;->i:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/b/g;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_0
    return-void
.end method

.method public a(Lcom/facebook/drawee/backends/pipeline/b/f;)V
    .locals 1
    .param p1    # Lcom/facebook/drawee/backends/pipeline/b/f;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    return-void

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/b/g;->i:Ljava/util/List;

    if-nez v0, :cond_1

    .line 76
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/facebook/drawee/backends/pipeline/b/g;->i:Ljava/util/List;

    .line 78
    :cond_1
    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/b/g;->i:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Lcom/facebook/drawee/backends/pipeline/b/h;I)V
    .locals 2

    .line 95
    invoke-virtual {p1, p2}, Lcom/facebook/drawee/backends/pipeline/b/h;->a(I)V

    .line 96
    iget-boolean v0, p0, Lcom/facebook/drawee/backends/pipeline/b/g;->j:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/b/g;->i:Ljava/util/List;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/b/g;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x3

    if-ne p2, v0, :cond_1

    .line 100
    invoke-virtual {p0}, Lcom/facebook/drawee/backends/pipeline/b/g;->b()V

    .line 102
    :cond_1
    invoke-virtual {p1}, Lcom/facebook/drawee/backends/pipeline/b/h;->c()Lcom/facebook/drawee/backends/pipeline/b/e;

    move-result-object p1

    .line 103
    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/b/g;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/drawee/backends/pipeline/b/f;

    .line 104
    invoke-interface {v1, p1, p2}, Lcom/facebook/drawee/backends/pipeline/b/f;->a(Lcom/facebook/drawee/backends/pipeline/b/e;I)V

    goto :goto_0

    :cond_2
    return-void

    :cond_3
    :goto_1
    return-void
.end method

.method public a(Z)V
    .locals 1

    .line 46
    iput-boolean p1, p0, Lcom/facebook/drawee/backends/pipeline/b/g;->j:Z

    if-eqz p1, :cond_2

    .line 48
    invoke-direct {p0}, Lcom/facebook/drawee/backends/pipeline/b/g;->d()V

    .line 49
    iget-object p1, p0, Lcom/facebook/drawee/backends/pipeline/b/g;->e:Lcom/facebook/drawee/backends/pipeline/b/b;

    if-eqz p1, :cond_0

    .line 50
    iget-object p1, p0, Lcom/facebook/drawee/backends/pipeline/b/g;->a:Lcom/facebook/drawee/backends/pipeline/d;

    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/b/g;->e:Lcom/facebook/drawee/backends/pipeline/b/b;

    invoke-virtual {p1, v0}, Lcom/facebook/drawee/backends/pipeline/d;->a(Lcom/facebook/drawee/backends/pipeline/b/b;)V

    .line 52
    :cond_0
    iget-object p1, p0, Lcom/facebook/drawee/backends/pipeline/b/g;->g:Lcom/facebook/drawee/backends/pipeline/b/a/a;

    if-eqz p1, :cond_1

    .line 53
    iget-object p1, p0, Lcom/facebook/drawee/backends/pipeline/b/g;->a:Lcom/facebook/drawee/backends/pipeline/d;

    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/b/g;->g:Lcom/facebook/drawee/backends/pipeline/b/a/a;

    invoke-virtual {p1, v0}, Lcom/facebook/drawee/backends/pipeline/d;->a(Lcom/facebook/drawee/controller/c;)V

    .line 55
    :cond_1
    iget-object p1, p0, Lcom/facebook/drawee/backends/pipeline/b/g;->h:Lcom/facebook/imagepipeline/h/b;

    if-eqz p1, :cond_5

    .line 56
    iget-object p1, p0, Lcom/facebook/drawee/backends/pipeline/b/g;->a:Lcom/facebook/drawee/backends/pipeline/d;

    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/b/g;->h:Lcom/facebook/imagepipeline/h/b;

    invoke-virtual {p1, v0}, Lcom/facebook/drawee/backends/pipeline/d;->a(Lcom/facebook/imagepipeline/h/c;)V

    goto :goto_0

    .line 59
    :cond_2
    iget-object p1, p0, Lcom/facebook/drawee/backends/pipeline/b/g;->e:Lcom/facebook/drawee/backends/pipeline/b/b;

    if-eqz p1, :cond_3

    .line 60
    iget-object p1, p0, Lcom/facebook/drawee/backends/pipeline/b/g;->a:Lcom/facebook/drawee/backends/pipeline/d;

    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/b/g;->e:Lcom/facebook/drawee/backends/pipeline/b/b;

    invoke-virtual {p1, v0}, Lcom/facebook/drawee/backends/pipeline/d;->b(Lcom/facebook/drawee/backends/pipeline/b/b;)V

    .line 62
    :cond_3
    iget-object p1, p0, Lcom/facebook/drawee/backends/pipeline/b/g;->g:Lcom/facebook/drawee/backends/pipeline/b/a/a;

    if-eqz p1, :cond_4

    .line 63
    iget-object p1, p0, Lcom/facebook/drawee/backends/pipeline/b/g;->a:Lcom/facebook/drawee/backends/pipeline/d;

    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/b/g;->g:Lcom/facebook/drawee/backends/pipeline/b/a/a;

    invoke-virtual {p1, v0}, Lcom/facebook/drawee/backends/pipeline/d;->b(Lcom/facebook/drawee/controller/c;)V

    .line 65
    :cond_4
    iget-object p1, p0, Lcom/facebook/drawee/backends/pipeline/b/g;->h:Lcom/facebook/imagepipeline/h/b;

    if-eqz p1, :cond_5

    .line 66
    iget-object p1, p0, Lcom/facebook/drawee/backends/pipeline/b/g;->a:Lcom/facebook/drawee/backends/pipeline/d;

    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/b/g;->h:Lcom/facebook/imagepipeline/h/b;

    invoke-virtual {p1, v0}, Lcom/facebook/drawee/backends/pipeline/d;->b(Lcom/facebook/imagepipeline/h/c;)V

    :cond_5
    :goto_0
    return-void
.end method

.method public b()V
    .locals 3

    .line 121
    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/b/g;->a:Lcom/facebook/drawee/backends/pipeline/d;

    invoke-virtual {v0}, Lcom/facebook/drawee/backends/pipeline/d;->k()Lcom/facebook/drawee/c/b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 122
    invoke-interface {v0}, Lcom/facebook/drawee/c/b;->a()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 123
    invoke-interface {v0}, Lcom/facebook/drawee/c/b;->a()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 124
    iget-object v1, p0, Lcom/facebook/drawee/backends/pipeline/b/g;->c:Lcom/facebook/drawee/backends/pipeline/b/h;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/facebook/drawee/backends/pipeline/b/h;->c(I)V

    .line 125
    iget-object v1, p0, Lcom/facebook/drawee/backends/pipeline/b/g;->c:Lcom/facebook/drawee/backends/pipeline/b/h;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/facebook/drawee/backends/pipeline/b/h;->d(I)V

    :cond_0
    return-void
.end method

.method public b(Lcom/facebook/drawee/backends/pipeline/b/h;I)V
    .locals 2

    .line 110
    iget-boolean v0, p0, Lcom/facebook/drawee/backends/pipeline/b/g;->j:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/b/g;->i:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/b/g;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 114
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/drawee/backends/pipeline/b/h;->c()Lcom/facebook/drawee/backends/pipeline/b/e;

    move-result-object p1

    .line 115
    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/b/g;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/drawee/backends/pipeline/b/f;

    .line 116
    invoke-interface {v1, p1, p2}, Lcom/facebook/drawee/backends/pipeline/b/f;->b(Lcom/facebook/drawee/backends/pipeline/b/e;I)V

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    :goto_1
    return-void
.end method

.method public c()V
    .locals 1

    .line 154
    invoke-virtual {p0}, Lcom/facebook/drawee/backends/pipeline/b/g;->a()V

    const/4 v0, 0x0

    .line 155
    invoke-virtual {p0, v0}, Lcom/facebook/drawee/backends/pipeline/b/g;->a(Z)V

    .line 156
    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/b/g;->c:Lcom/facebook/drawee/backends/pipeline/b/h;

    invoke-virtual {v0}, Lcom/facebook/drawee/backends/pipeline/b/h;->a()V

    return-void
.end method
