.class public Lcom/facebook/imagepipeline/k/aj;
.super Ljava/lang/Object;
.source "PostprocessorProducer.java"

# interfaces
.implements Lcom/facebook/imagepipeline/k/ak;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/imagepipeline/k/aj$b;,
        Lcom/facebook/imagepipeline/k/aj$c;,
        Lcom/facebook/imagepipeline/k/aj$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/imagepipeline/k/ak<",
        "Lcom/facebook/common/references/a<",
        "Lcom/facebook/imagepipeline/g/c;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/facebook/imagepipeline/k/ak;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/k/ak<",
            "Lcom/facebook/common/references/a<",
            "Lcom/facebook/imagepipeline/g/c;",
            ">;>;"
        }
    .end annotation
.end field

.field private final b:Lcom/facebook/imagepipeline/b/f;

.field private final c:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Lcom/facebook/imagepipeline/k/ak;Lcom/facebook/imagepipeline/b/f;Ljava/util/concurrent/Executor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/k/ak<",
            "Lcom/facebook/common/references/a<",
            "Lcom/facebook/imagepipeline/g/c;",
            ">;>;",
            "Lcom/facebook/imagepipeline/b/f;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    invoke-static {p1}, Lcom/facebook/common/internal/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/facebook/imagepipeline/k/ak;

    iput-object p1, p0, Lcom/facebook/imagepipeline/k/aj;->a:Lcom/facebook/imagepipeline/k/ak;

    .line 46
    iput-object p2, p0, Lcom/facebook/imagepipeline/k/aj;->b:Lcom/facebook/imagepipeline/b/f;

    .line 47
    invoke-static {p3}, Lcom/facebook/common/internal/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/Executor;

    iput-object p1, p0, Lcom/facebook/imagepipeline/k/aj;->c:Ljava/util/concurrent/Executor;

    return-void
.end method

.method static synthetic a(Lcom/facebook/imagepipeline/k/aj;)Ljava/util/concurrent/Executor;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/facebook/imagepipeline/k/aj;->c:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method static synthetic b(Lcom/facebook/imagepipeline/k/aj;)Lcom/facebook/imagepipeline/b/f;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/facebook/imagepipeline/k/aj;->b:Lcom/facebook/imagepipeline/b/f;

    return-object p0
.end method


# virtual methods
.method public a(Lcom/facebook/imagepipeline/k/k;Lcom/facebook/imagepipeline/k/al;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/k/k<",
            "Lcom/facebook/common/references/a<",
            "Lcom/facebook/imagepipeline/g/c;",
            ">;>;",
            "Lcom/facebook/imagepipeline/k/al;",
            ")V"
        }
    .end annotation

    .line 54
    invoke-interface {p2}, Lcom/facebook/imagepipeline/k/al;->c()Lcom/facebook/imagepipeline/k/an;

    move-result-object v3

    .line 55
    invoke-interface {p2}, Lcom/facebook/imagepipeline/k/al;->a()Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/request/ImageRequest;->q()Lcom/facebook/imagepipeline/request/b;

    move-result-object v7

    .line 56
    new-instance v8, Lcom/facebook/imagepipeline/k/aj$a;

    .line 57
    invoke-interface {p2}, Lcom/facebook/imagepipeline/k/al;->b()Ljava/lang/String;

    move-result-object v4

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move-object v5, v7

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/facebook/imagepipeline/k/aj$a;-><init>(Lcom/facebook/imagepipeline/k/aj;Lcom/facebook/imagepipeline/k/k;Lcom/facebook/imagepipeline/k/an;Ljava/lang/String;Lcom/facebook/imagepipeline/request/b;Lcom/facebook/imagepipeline/k/al;)V

    .line 59
    instance-of v0, v7, Lcom/facebook/imagepipeline/request/c;

    if-eqz v0, :cond_0

    .line 60
    new-instance v6, Lcom/facebook/imagepipeline/k/aj$b;

    move-object v3, v7

    check-cast v3, Lcom/facebook/imagepipeline/request/c;

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p0

    move-object v2, v8

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/facebook/imagepipeline/k/aj$b;-><init>(Lcom/facebook/imagepipeline/k/aj;Lcom/facebook/imagepipeline/k/aj$a;Lcom/facebook/imagepipeline/request/c;Lcom/facebook/imagepipeline/k/al;Lcom/facebook/imagepipeline/k/aj$1;)V

    goto :goto_0

    .line 65
    :cond_0
    new-instance v6, Lcom/facebook/imagepipeline/k/aj$c;

    const/4 v0, 0x0

    invoke-direct {v6, p0, v8, v0}, Lcom/facebook/imagepipeline/k/aj$c;-><init>(Lcom/facebook/imagepipeline/k/aj;Lcom/facebook/imagepipeline/k/aj$a;Lcom/facebook/imagepipeline/k/aj$1;)V

    .line 67
    :goto_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/k/aj;->a:Lcom/facebook/imagepipeline/k/ak;

    invoke-interface {v0, v6, p2}, Lcom/facebook/imagepipeline/k/ak;->a(Lcom/facebook/imagepipeline/k/k;Lcom/facebook/imagepipeline/k/al;)V

    return-void
.end method
