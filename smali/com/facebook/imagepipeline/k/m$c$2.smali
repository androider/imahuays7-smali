.class Lcom/facebook/imagepipeline/k/m$c$2;
.super Lcom/facebook/imagepipeline/k/e;
.source "DecodeProducer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/imagepipeline/k/m$c;-><init>(Lcom/facebook/imagepipeline/k/m;Lcom/facebook/imagepipeline/k/k;Lcom/facebook/imagepipeline/k/al;ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/imagepipeline/k/m;

.field final synthetic b:Z

.field final synthetic c:Lcom/facebook/imagepipeline/k/m$c;


# direct methods
.method constructor <init>(Lcom/facebook/imagepipeline/k/m$c;Lcom/facebook/imagepipeline/k/m;Z)V
    .locals 0

    .line 171
    iput-object p1, p0, Lcom/facebook/imagepipeline/k/m$c$2;->c:Lcom/facebook/imagepipeline/k/m$c;

    iput-object p2, p0, Lcom/facebook/imagepipeline/k/m$c$2;->a:Lcom/facebook/imagepipeline/k/m;

    iput-boolean p3, p0, Lcom/facebook/imagepipeline/k/m$c$2;->b:Z

    invoke-direct {p0}, Lcom/facebook/imagepipeline/k/e;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 181
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/k/m$c$2;->b:Z

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/facebook/imagepipeline/k/m$c$2;->c:Lcom/facebook/imagepipeline/k/m$c;

    invoke-static {v0}, Lcom/facebook/imagepipeline/k/m$c;->c(Lcom/facebook/imagepipeline/k/m$c;)V

    :cond_0
    return-void
.end method

.method public c()V
    .locals 1

    .line 174
    iget-object v0, p0, Lcom/facebook/imagepipeline/k/m$c$2;->c:Lcom/facebook/imagepipeline/k/m$c;

    invoke-static {v0}, Lcom/facebook/imagepipeline/k/m$c;->a(Lcom/facebook/imagepipeline/k/m$c;)Lcom/facebook/imagepipeline/k/al;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/imagepipeline/k/al;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/facebook/imagepipeline/k/m$c$2;->c:Lcom/facebook/imagepipeline/k/m$c;

    invoke-static {v0}, Lcom/facebook/imagepipeline/k/m$c;->b(Lcom/facebook/imagepipeline/k/m$c;)Lcom/facebook/imagepipeline/k/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/k/v;->b()Z

    :cond_0
    return-void
.end method
