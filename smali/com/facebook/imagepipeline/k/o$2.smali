.class Lcom/facebook/imagepipeline/k/o$2;
.super Lcom/facebook/imagepipeline/k/e;
.source "DiskCacheReadProducer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/imagepipeline/k/o;->a(Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/facebook/imagepipeline/k/al;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic b:Lcom/facebook/imagepipeline/k/o;


# direct methods
.method constructor <init>(Lcom/facebook/imagepipeline/k/o;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 0

    .line 164
    iput-object p1, p0, Lcom/facebook/imagepipeline/k/o$2;->b:Lcom/facebook/imagepipeline/k/o;

    iput-object p2, p0, Lcom/facebook/imagepipeline/k/o$2;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p0}, Lcom/facebook/imagepipeline/k/e;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 167
    iget-object v0, p0, Lcom/facebook/imagepipeline/k/o$2;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method
