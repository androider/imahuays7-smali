.class Lcom/facebook/imagepipeline/c/e$3;
.super Ljava/lang/Object;
.source "BufferedDiskCache.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/imagepipeline/c/e;->a(Lcom/facebook/cache/common/b;)Lbolts/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/cache/common/b;

.field final synthetic b:Lcom/facebook/imagepipeline/c/e;


# direct methods
.method constructor <init>(Lcom/facebook/imagepipeline/c/e;Lcom/facebook/cache/common/b;)V
    .locals 0

    .line 297
    iput-object p1, p0, Lcom/facebook/imagepipeline/c/e$3;->b:Lcom/facebook/imagepipeline/c/e;

    iput-object p2, p0, Lcom/facebook/imagepipeline/c/e$3;->a:Lcom/facebook/cache/common/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Void;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 301
    :try_start_0
    invoke-static {}, Lcom/facebook/imagepipeline/l/b;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "BufferedDiskCache#remove"

    .line 302
    invoke-static {v0}, Lcom/facebook/imagepipeline/l/b;->a(Ljava/lang/String;)V

    .line 304
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/c/e$3;->b:Lcom/facebook/imagepipeline/c/e;

    invoke-static {v0}, Lcom/facebook/imagepipeline/c/e;->a(Lcom/facebook/imagepipeline/c/e;)Lcom/facebook/imagepipeline/c/u;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/imagepipeline/c/e$3;->a:Lcom/facebook/cache/common/b;

    invoke-virtual {v0, v1}, Lcom/facebook/imagepipeline/c/u;->a(Lcom/facebook/cache/common/b;)Z

    .line 305
    iget-object v0, p0, Lcom/facebook/imagepipeline/c/e$3;->b:Lcom/facebook/imagepipeline/c/e;

    invoke-static {v0}, Lcom/facebook/imagepipeline/c/e;->c(Lcom/facebook/imagepipeline/c/e;)Lcom/facebook/cache/a/i;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/imagepipeline/c/e$3;->a:Lcom/facebook/cache/common/b;

    invoke-interface {v0, v1}, Lcom/facebook/cache/a/i;->b(Lcom/facebook/cache/common/b;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 307
    invoke-static {}, Lcom/facebook/imagepipeline/l/b;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 308
    invoke-static {}, Lcom/facebook/imagepipeline/l/b;->a()V

    :cond_1
    const/4 v0, 0x0

    return-object v0

    :catchall_0
    move-exception v0

    .line 307
    invoke-static {}, Lcom/facebook/imagepipeline/l/b;->b()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 308
    invoke-static {}, Lcom/facebook/imagepipeline/l/b;->a()V

    .line 310
    :cond_2
    throw v0
.end method

.method public synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 297
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/c/e$3;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
