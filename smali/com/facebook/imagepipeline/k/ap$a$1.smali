.class Lcom/facebook/imagepipeline/k/ap$a$1;
.super Ljava/lang/Object;
.source "ResizeAndRotateProducer.java"

# interfaces
.implements Lcom/facebook/imagepipeline/k/v$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/imagepipeline/k/ap$a;-><init>(Lcom/facebook/imagepipeline/k/ap;Lcom/facebook/imagepipeline/k/k;Lcom/facebook/imagepipeline/k/al;ZLcom/facebook/imagepipeline/m/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/imagepipeline/k/ap;

.field final synthetic b:Lcom/facebook/imagepipeline/k/ap$a;


# direct methods
.method constructor <init>(Lcom/facebook/imagepipeline/k/ap$a;Lcom/facebook/imagepipeline/k/ap;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/facebook/imagepipeline/k/ap$a$1;->b:Lcom/facebook/imagepipeline/k/ap$a;

    iput-object p2, p0, Lcom/facebook/imagepipeline/k/ap$a$1;->a:Lcom/facebook/imagepipeline/k/ap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/imagepipeline/g/e;I)V
    .locals 4

    .line 106
    iget-object v0, p0, Lcom/facebook/imagepipeline/k/ap$a$1;->b:Lcom/facebook/imagepipeline/k/ap$a;

    iget-object v1, p0, Lcom/facebook/imagepipeline/k/ap$a$1;->b:Lcom/facebook/imagepipeline/k/ap$a;

    .line 110
    invoke-static {v1}, Lcom/facebook/imagepipeline/k/ap$a;->b(Lcom/facebook/imagepipeline/k/ap$a;)Lcom/facebook/imagepipeline/m/c;

    move-result-object v1

    .line 111
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/g/e;->e()Lcom/facebook/d/c;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/imagepipeline/k/ap$a$1;->b:Lcom/facebook/imagepipeline/k/ap$a;

    invoke-static {v3}, Lcom/facebook/imagepipeline/k/ap$a;->a(Lcom/facebook/imagepipeline/k/ap$a;)Z

    move-result v3

    .line 110
    invoke-interface {v1, v2, v3}, Lcom/facebook/imagepipeline/m/c;->a(Lcom/facebook/d/c;Z)Lcom/facebook/imagepipeline/m/b;

    move-result-object v1

    .line 109
    invoke-static {v1}, Lcom/facebook/common/internal/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/imagepipeline/m/b;

    .line 106
    invoke-static {v0, p1, p2, v1}, Lcom/facebook/imagepipeline/k/ap$a;->a(Lcom/facebook/imagepipeline/k/ap$a;Lcom/facebook/imagepipeline/g/e;ILcom/facebook/imagepipeline/m/b;)V

    return-void
.end method
