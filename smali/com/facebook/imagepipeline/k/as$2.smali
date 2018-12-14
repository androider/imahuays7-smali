.class Lcom/facebook/imagepipeline/k/as$2;
.super Lcom/facebook/imagepipeline/k/e;
.source "ThreadHandoffProducer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/imagepipeline/k/as;->a(Lcom/facebook/imagepipeline/k/k;Lcom/facebook/imagepipeline/k/al;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/imagepipeline/k/ar;

.field final synthetic b:Lcom/facebook/imagepipeline/k/as;


# direct methods
.method constructor <init>(Lcom/facebook/imagepipeline/k/as;Lcom/facebook/imagepipeline/k/ar;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/facebook/imagepipeline/k/as$2;->b:Lcom/facebook/imagepipeline/k/as;

    iput-object p2, p0, Lcom/facebook/imagepipeline/k/as$2;->a:Lcom/facebook/imagepipeline/k/ar;

    invoke-direct {p0}, Lcom/facebook/imagepipeline/k/e;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 56
    iget-object v0, p0, Lcom/facebook/imagepipeline/k/as$2;->a:Lcom/facebook/imagepipeline/k/ar;

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/k/ar;->a()V

    .line 57
    iget-object v0, p0, Lcom/facebook/imagepipeline/k/as$2;->b:Lcom/facebook/imagepipeline/k/as;

    invoke-static {v0}, Lcom/facebook/imagepipeline/k/as;->b(Lcom/facebook/imagepipeline/k/as;)Lcom/facebook/imagepipeline/k/at;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/imagepipeline/k/as$2;->a:Lcom/facebook/imagepipeline/k/ar;

    invoke-virtual {v0, v1}, Lcom/facebook/imagepipeline/k/at;->b(Ljava/lang/Runnable;)V

    return-void
.end method
