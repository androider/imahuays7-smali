.class Lcom/facebook/imagepipeline/k/au$a$1;
.super Ljava/lang/Object;
.source "ThrottlingProducer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/imagepipeline/k/au$a;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/util/Pair;

.field final synthetic b:Lcom/facebook/imagepipeline/k/au$a;


# direct methods
.method constructor <init>(Lcom/facebook/imagepipeline/k/au$a;Landroid/util/Pair;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/facebook/imagepipeline/k/au$a$1;->b:Lcom/facebook/imagepipeline/k/au$a;

    iput-object p2, p0, Lcom/facebook/imagepipeline/k/au$a$1;->a:Landroid/util/Pair;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 111
    iget-object v0, p0, Lcom/facebook/imagepipeline/k/au$a$1;->b:Lcom/facebook/imagepipeline/k/au$a;

    iget-object v0, v0, Lcom/facebook/imagepipeline/k/au$a;->a:Lcom/facebook/imagepipeline/k/au;

    iget-object v1, p0, Lcom/facebook/imagepipeline/k/au$a$1;->a:Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lcom/facebook/imagepipeline/k/k;

    iget-object v2, p0, Lcom/facebook/imagepipeline/k/au$a$1;->a:Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Lcom/facebook/imagepipeline/k/al;

    invoke-virtual {v0, v1, v2}, Lcom/facebook/imagepipeline/k/au;->b(Lcom/facebook/imagepipeline/k/k;Lcom/facebook/imagepipeline/k/al;)V

    return-void
.end method
