.class Lcom/facebook/imagepipeline/k/ap$a$2;
.super Lcom/facebook/imagepipeline/k/e;
.source "ResizeAndRotateProducer.java"


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

.field final synthetic b:Lcom/facebook/imagepipeline/k/k;

.field final synthetic c:Lcom/facebook/imagepipeline/k/ap$a;


# direct methods
.method constructor <init>(Lcom/facebook/imagepipeline/k/ap$a;Lcom/facebook/imagepipeline/k/ap;Lcom/facebook/imagepipeline/k/k;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/facebook/imagepipeline/k/ap$a$2;->c:Lcom/facebook/imagepipeline/k/ap$a;

    iput-object p2, p0, Lcom/facebook/imagepipeline/k/ap$a$2;->a:Lcom/facebook/imagepipeline/k/ap;

    iput-object p3, p0, Lcom/facebook/imagepipeline/k/ap$a$2;->b:Lcom/facebook/imagepipeline/k/k;

    invoke-direct {p0}, Lcom/facebook/imagepipeline/k/e;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 127
    iget-object v0, p0, Lcom/facebook/imagepipeline/k/ap$a$2;->c:Lcom/facebook/imagepipeline/k/ap$a;

    invoke-static {v0}, Lcom/facebook/imagepipeline/k/ap$a;->d(Lcom/facebook/imagepipeline/k/ap$a;)Lcom/facebook/imagepipeline/k/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/k/v;->a()V

    .line 128
    iget-object v0, p0, Lcom/facebook/imagepipeline/k/ap$a$2;->c:Lcom/facebook/imagepipeline/k/ap$a;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/facebook/imagepipeline/k/ap$a;->a(Lcom/facebook/imagepipeline/k/ap$a;Z)Z

    .line 130
    iget-object v0, p0, Lcom/facebook/imagepipeline/k/ap$a$2;->b:Lcom/facebook/imagepipeline/k/k;

    invoke-interface {v0}, Lcom/facebook/imagepipeline/k/k;->b()V

    return-void
.end method

.method public c()V
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/facebook/imagepipeline/k/ap$a$2;->c:Lcom/facebook/imagepipeline/k/ap$a;

    invoke-static {v0}, Lcom/facebook/imagepipeline/k/ap$a;->c(Lcom/facebook/imagepipeline/k/ap$a;)Lcom/facebook/imagepipeline/k/al;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/imagepipeline/k/al;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/facebook/imagepipeline/k/ap$a$2;->c:Lcom/facebook/imagepipeline/k/ap$a;

    invoke-static {v0}, Lcom/facebook/imagepipeline/k/ap$a;->d(Lcom/facebook/imagepipeline/k/ap$a;)Lcom/facebook/imagepipeline/k/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/k/v;->b()Z

    :cond_0
    return-void
.end method
