.class public Lcom/facebook/imagepipeline/c/o;
.super Ljava/lang/Object;
.source "InstrumentedMemoryCache.java"

# interfaces
.implements Lcom/facebook/imagepipeline/c/p;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/facebook/imagepipeline/c/p<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/facebook/imagepipeline/c/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/c/p<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private final b:Lcom/facebook/imagepipeline/c/r;


# direct methods
.method public constructor <init>(Lcom/facebook/imagepipeline/c/p;Lcom/facebook/imagepipeline/c/r;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/c/p<",
            "TK;TV;>;",
            "Lcom/facebook/imagepipeline/c/r;",
            ")V"
        }
    .end annotation

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/facebook/imagepipeline/c/o;->a:Lcom/facebook/imagepipeline/c/p;

    .line 20
    iput-object p2, p0, Lcom/facebook/imagepipeline/c/o;->b:Lcom/facebook/imagepipeline/c/r;

    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/common/internal/h;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/internal/h<",
            "TK;>;)I"
        }
    .end annotation

    .line 42
    iget-object v0, p0, Lcom/facebook/imagepipeline/c/o;->a:Lcom/facebook/imagepipeline/c/p;

    invoke-interface {v0, p1}, Lcom/facebook/imagepipeline/c/p;->a(Lcom/facebook/common/internal/h;)I

    move-result p1

    return p1
.end method

.method public a(Ljava/lang/Object;)Lcom/facebook/common/references/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Lcom/facebook/common/references/a<",
            "TV;>;"
        }
    .end annotation

    .line 25
    iget-object v0, p0, Lcom/facebook/imagepipeline/c/o;->a:Lcom/facebook/imagepipeline/c/p;

    invoke-interface {v0, p1}, Lcom/facebook/imagepipeline/c/p;->a(Ljava/lang/Object;)Lcom/facebook/common/references/a;

    move-result-object v0

    if-nez v0, :cond_0

    .line 27
    iget-object p1, p0, Lcom/facebook/imagepipeline/c/o;->b:Lcom/facebook/imagepipeline/c/r;

    invoke-interface {p1}, Lcom/facebook/imagepipeline/c/r;->a()V

    goto :goto_0

    .line 29
    :cond_0
    iget-object v1, p0, Lcom/facebook/imagepipeline/c/o;->b:Lcom/facebook/imagepipeline/c/r;

    invoke-interface {v1, p1}, Lcom/facebook/imagepipeline/c/r;->a(Ljava/lang/Object;)V

    :goto_0
    return-object v0
.end method

.method public a(Ljava/lang/Object;Lcom/facebook/common/references/a;)Lcom/facebook/common/references/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Lcom/facebook/common/references/a<",
            "TV;>;)",
            "Lcom/facebook/common/references/a<",
            "TV;>;"
        }
    .end annotation

    .line 36
    iget-object v0, p0, Lcom/facebook/imagepipeline/c/o;->b:Lcom/facebook/imagepipeline/c/r;

    invoke-interface {v0}, Lcom/facebook/imagepipeline/c/r;->b()V

    .line 37
    iget-object v0, p0, Lcom/facebook/imagepipeline/c/o;->a:Lcom/facebook/imagepipeline/c/p;

    invoke-interface {v0, p1, p2}, Lcom/facebook/imagepipeline/c/p;->a(Ljava/lang/Object;Lcom/facebook/common/references/a;)Lcom/facebook/common/references/a;

    move-result-object p1

    return-object p1
.end method
