.class Lcom/facebook/imagepipeline/k/aj$b$1;
.super Lcom/facebook/imagepipeline/k/e;
.source "PostprocessorProducer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/imagepipeline/k/aj$b;-><init>(Lcom/facebook/imagepipeline/k/aj;Lcom/facebook/imagepipeline/k/aj$a;Lcom/facebook/imagepipeline/request/c;Lcom/facebook/imagepipeline/k/al;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/imagepipeline/k/aj;

.field final synthetic b:Lcom/facebook/imagepipeline/k/aj$b;


# direct methods
.method constructor <init>(Lcom/facebook/imagepipeline/k/aj$b;Lcom/facebook/imagepipeline/k/aj;)V
    .locals 0

    .line 347
    iput-object p1, p0, Lcom/facebook/imagepipeline/k/aj$b$1;->b:Lcom/facebook/imagepipeline/k/aj$b;

    iput-object p2, p0, Lcom/facebook/imagepipeline/k/aj$b$1;->a:Lcom/facebook/imagepipeline/k/aj;

    invoke-direct {p0}, Lcom/facebook/imagepipeline/k/e;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 350
    iget-object v0, p0, Lcom/facebook/imagepipeline/k/aj$b$1;->b:Lcom/facebook/imagepipeline/k/aj$b;

    invoke-static {v0}, Lcom/facebook/imagepipeline/k/aj$b;->a(Lcom/facebook/imagepipeline/k/aj$b;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 351
    iget-object v0, p0, Lcom/facebook/imagepipeline/k/aj$b$1;->b:Lcom/facebook/imagepipeline/k/aj$b;

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/k/aj$b;->d()Lcom/facebook/imagepipeline/k/k;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/imagepipeline/k/k;->b()V

    :cond_0
    return-void
.end method
