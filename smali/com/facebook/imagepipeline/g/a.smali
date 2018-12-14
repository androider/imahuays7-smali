.class public Lcom/facebook/imagepipeline/g/a;
.super Lcom/facebook/imagepipeline/g/c;
.source "CloseableAnimatedImage.java"


# instance fields
.field private a:Lcom/facebook/imagepipeline/animated/base/d;


# direct methods
.method public constructor <init>(Lcom/facebook/imagepipeline/animated/base/d;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/facebook/imagepipeline/g/c;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/facebook/imagepipeline/g/a;->a:Lcom/facebook/imagepipeline/animated/base/d;

    return-void
.end method


# virtual methods
.method public declared-synchronized a()I
    .locals 1

    monitor-enter p0

    .line 28
    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/g/a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/g/a;->a:Lcom/facebook/imagepipeline/animated/base/d;

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/animated/base/d;->a()Lcom/facebook/imagepipeline/animated/base/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/imagepipeline/animated/base/b;->a()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b()I
    .locals 1

    monitor-enter p0

    .line 33
    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/g/a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/g/a;->a:Lcom/facebook/imagepipeline/animated/base/d;

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/animated/base/d;->a()Lcom/facebook/imagepipeline/animated/base/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/imagepipeline/animated/base/b;->b()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized c()Z
    .locals 1

    monitor-enter p0

    .line 51
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/g/a;->a:Lcom/facebook/imagepipeline/animated/base/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public close()V
    .locals 2

    .line 39
    monitor-enter p0

    .line 40
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/g/a;->a:Lcom/facebook/imagepipeline/animated/base/d;

    if-nez v0, :cond_0

    .line 41
    monitor-exit p0

    return-void

    .line 43
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/g/a;->a:Lcom/facebook/imagepipeline/animated/base/d;

    const/4 v1, 0x0

    .line 44
    iput-object v1, p0, Lcom/facebook/imagepipeline/g/a;->a:Lcom/facebook/imagepipeline/animated/base/d;

    .line 45
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/animated/base/d;->b()V

    return-void

    :catchall_0
    move-exception v0

    .line 45
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized d()I
    .locals 1

    monitor-enter p0

    .line 56
    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/g/a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/g/a;->a:Lcom/facebook/imagepipeline/animated/base/d;

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/animated/base/d;->a()Lcom/facebook/imagepipeline/animated/base/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/imagepipeline/animated/base/b;->g()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public e()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public declared-synchronized f()Lcom/facebook/imagepipeline/animated/base/d;
    .locals 1

    monitor-enter p0

    .line 65
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/g/a;->a:Lcom/facebook/imagepipeline/animated/base/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
