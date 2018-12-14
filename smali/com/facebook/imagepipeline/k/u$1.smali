.class Lcom/facebook/imagepipeline/k/u$1;
.super Ljava/lang/Object;
.source "HttpUrlConnectionNetworkFetcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/imagepipeline/k/u;->a(Lcom/facebook/imagepipeline/k/t;Lcom/facebook/imagepipeline/k/ag$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/imagepipeline/k/t;

.field final synthetic b:Lcom/facebook/imagepipeline/k/ag$a;

.field final synthetic c:Lcom/facebook/imagepipeline/k/u;


# direct methods
.method constructor <init>(Lcom/facebook/imagepipeline/k/u;Lcom/facebook/imagepipeline/k/t;Lcom/facebook/imagepipeline/k/ag$a;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/facebook/imagepipeline/k/u$1;->c:Lcom/facebook/imagepipeline/k/u;

    iput-object p2, p0, Lcom/facebook/imagepipeline/k/u$1;->a:Lcom/facebook/imagepipeline/k/t;

    iput-object p3, p0, Lcom/facebook/imagepipeline/k/u$1;->b:Lcom/facebook/imagepipeline/k/ag$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 68
    iget-object v0, p0, Lcom/facebook/imagepipeline/k/u$1;->c:Lcom/facebook/imagepipeline/k/u;

    iget-object v1, p0, Lcom/facebook/imagepipeline/k/u$1;->a:Lcom/facebook/imagepipeline/k/t;

    iget-object v2, p0, Lcom/facebook/imagepipeline/k/u$1;->b:Lcom/facebook/imagepipeline/k/ag$a;

    invoke-virtual {v0, v1, v2}, Lcom/facebook/imagepipeline/k/u;->b(Lcom/facebook/imagepipeline/k/t;Lcom/facebook/imagepipeline/k/ag$a;)V

    return-void
.end method
