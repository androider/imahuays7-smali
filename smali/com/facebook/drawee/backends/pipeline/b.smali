.class public Lcom/facebook/drawee/backends/pipeline/b;
.super Ljava/lang/Object;
.source "DraweeConfig.java"


# instance fields
.field private final a:Lcom/facebook/common/internal/ImmutableList;
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

.field private final b:Lcom/facebook/drawee/backends/pipeline/g;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final c:Lcom/facebook/common/internal/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/internal/j<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# virtual methods
.method public a()Lcom/facebook/common/internal/ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/common/internal/ImmutableList<",
            "Lcom/facebook/imagepipeline/f/a;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 41
    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/b;->a:Lcom/facebook/common/internal/ImmutableList;

    return-object v0
.end method

.method public b()Lcom/facebook/drawee/backends/pipeline/g;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 46
    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/b;->b:Lcom/facebook/drawee/backends/pipeline/g;

    return-object v0
.end method

.method public c()Lcom/facebook/common/internal/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/common/internal/j<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 54
    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/b;->c:Lcom/facebook/common/internal/j;

    return-object v0
.end method
