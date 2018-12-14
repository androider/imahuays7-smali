.class Lcom/facebook/imagepipeline/a/a/b$1;
.super Lcom/facebook/imagepipeline/k/e;
.source "OkHttpNetworkFetcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/imagepipeline/a/a/b;->a(Lcom/facebook/imagepipeline/a/a/b$a;Lcom/facebook/imagepipeline/k/ag$a;Lokhttp3/Request;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lokhttp3/Call;

.field final synthetic b:Lcom/facebook/imagepipeline/a/a/b;


# direct methods
.method constructor <init>(Lcom/facebook/imagepipeline/a/a/b;Lokhttp3/Call;)V
    .locals 0

    .line 149
    iput-object p1, p0, Lcom/facebook/imagepipeline/a/a/b$1;->b:Lcom/facebook/imagepipeline/a/a/b;

    iput-object p2, p0, Lcom/facebook/imagepipeline/a/a/b$1;->a:Lokhttp3/Call;

    invoke-direct {p0}, Lcom/facebook/imagepipeline/k/e;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 152
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 153
    iget-object v0, p0, Lcom/facebook/imagepipeline/a/a/b$1;->a:Lokhttp3/Call;

    invoke-interface {v0}, Lokhttp3/Call;->cancel()V

    goto :goto_0

    .line 155
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/a/a/b$1;->b:Lcom/facebook/imagepipeline/a/a/b;

    invoke-static {v0}, Lcom/facebook/imagepipeline/a/a/b;->a(Lcom/facebook/imagepipeline/a/a/b;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/facebook/imagepipeline/a/a/b$1$1;

    invoke-direct {v1, p0}, Lcom/facebook/imagepipeline/a/a/b$1$1;-><init>(Lcom/facebook/imagepipeline/a/a/b$1;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method
