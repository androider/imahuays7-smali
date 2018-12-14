.class Lcom/facebook/imagepipeline/k/ah$2;
.super Lcom/facebook/imagepipeline/k/e;
.source "PartialDiskCacheProducer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/imagepipeline/k/ah;->a(Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/facebook/imagepipeline/k/al;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic b:Lcom/facebook/imagepipeline/k/ah;


# direct methods
.method constructor <init>(Lcom/facebook/imagepipeline/k/ah;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 0

    .line 210
    iput-object p1, p0, Lcom/facebook/imagepipeline/k/ah$2;->b:Lcom/facebook/imagepipeline/k/ah;

    iput-object p2, p0, Lcom/facebook/imagepipeline/k/ah$2;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p0}, Lcom/facebook/imagepipeline/k/e;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 213
    iget-object v0, p0, Lcom/facebook/imagepipeline/k/ah$2;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method
