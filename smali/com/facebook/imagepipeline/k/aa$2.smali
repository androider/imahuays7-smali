.class Lcom/facebook/imagepipeline/k/aa$2;
.super Lcom/facebook/imagepipeline/k/e;
.source "LocalFetchProducer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/imagepipeline/k/aa;->a(Lcom/facebook/imagepipeline/k/k;Lcom/facebook/imagepipeline/k/al;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/imagepipeline/k/ar;

.field final synthetic b:Lcom/facebook/imagepipeline/k/aa;


# direct methods
.method constructor <init>(Lcom/facebook/imagepipeline/k/aa;Lcom/facebook/imagepipeline/k/ar;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/facebook/imagepipeline/k/aa$2;->b:Lcom/facebook/imagepipeline/k/aa;

    iput-object p2, p0, Lcom/facebook/imagepipeline/k/aa$2;->a:Lcom/facebook/imagepipeline/k/ar;

    invoke-direct {p0}, Lcom/facebook/imagepipeline/k/e;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/facebook/imagepipeline/k/aa$2;->a:Lcom/facebook/imagepipeline/k/ar;

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/k/ar;->a()V

    return-void
.end method
