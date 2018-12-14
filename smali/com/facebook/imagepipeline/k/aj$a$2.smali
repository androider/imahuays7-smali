.class Lcom/facebook/imagepipeline/k/aj$a$2;
.super Ljava/lang/Object;
.source "PostprocessorProducer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/imagepipeline/k/aj$a;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/imagepipeline/k/aj$a;


# direct methods
.method constructor <init>(Lcom/facebook/imagepipeline/k/aj$a;)V
    .locals 0

    .line 160
    iput-object p1, p0, Lcom/facebook/imagepipeline/k/aj$a$2;->a:Lcom/facebook/imagepipeline/k/aj$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 165
    iget-object v0, p0, Lcom/facebook/imagepipeline/k/aj$a$2;->a:Lcom/facebook/imagepipeline/k/aj$a;

    monitor-enter v0

    .line 167
    :try_start_0
    iget-object v1, p0, Lcom/facebook/imagepipeline/k/aj$a$2;->a:Lcom/facebook/imagepipeline/k/aj$a;

    invoke-static {v1}, Lcom/facebook/imagepipeline/k/aj$a;->b(Lcom/facebook/imagepipeline/k/aj$a;)Lcom/facebook/common/references/a;

    move-result-object v1

    .line 168
    iget-object v2, p0, Lcom/facebook/imagepipeline/k/aj$a$2;->a:Lcom/facebook/imagepipeline/k/aj$a;

    invoke-static {v2}, Lcom/facebook/imagepipeline/k/aj$a;->c(Lcom/facebook/imagepipeline/k/aj$a;)I

    move-result v2

    .line 169
    iget-object v3, p0, Lcom/facebook/imagepipeline/k/aj$a$2;->a:Lcom/facebook/imagepipeline/k/aj$a;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/facebook/imagepipeline/k/aj$a;->a(Lcom/facebook/imagepipeline/k/aj$a;Lcom/facebook/common/references/a;)Lcom/facebook/common/references/a;

    .line 170
    iget-object v3, p0, Lcom/facebook/imagepipeline/k/aj$a$2;->a:Lcom/facebook/imagepipeline/k/aj$a;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/facebook/imagepipeline/k/aj$a;->a(Lcom/facebook/imagepipeline/k/aj$a;Z)Z

    .line 171
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 173
    invoke-static {v1}, Lcom/facebook/common/references/a;->a(Lcom/facebook/common/references/a;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 175
    :try_start_1
    iget-object v0, p0, Lcom/facebook/imagepipeline/k/aj$a$2;->a:Lcom/facebook/imagepipeline/k/aj$a;

    invoke-static {v0, v1, v2}, Lcom/facebook/imagepipeline/k/aj$a;->a(Lcom/facebook/imagepipeline/k/aj$a;Lcom/facebook/common/references/a;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 177
    invoke-static {v1}, Lcom/facebook/common/references/a;->c(Lcom/facebook/common/references/a;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v1}, Lcom/facebook/common/references/a;->c(Lcom/facebook/common/references/a;)V

    .line 178
    throw v0

    .line 180
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/k/aj$a$2;->a:Lcom/facebook/imagepipeline/k/aj$a;

    invoke-static {v0}, Lcom/facebook/imagepipeline/k/aj$a;->d(Lcom/facebook/imagepipeline/k/aj$a;)V

    return-void

    :catchall_1
    move-exception v1

    .line 171
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method
