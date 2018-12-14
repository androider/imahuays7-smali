.class public Lcom/facebook/fresco/animation/b/a/b;
.super Ljava/lang/Object;
.source "KeepLastFrameCache.java"

# interfaces
.implements Lcom/facebook/fresco/animation/b/b;


# instance fields
.field private a:I

.field private b:Lcom/facebook/fresco/animation/b/b$a;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private c:Lcom/facebook/common/references/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/references/a<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 24
    iput v0, p0, Lcom/facebook/fresco/animation/b/a/b;->a:I

    return-void
.end method

.method private declared-synchronized b()V
    .locals 3

    monitor-enter p0

    .line 111
    :try_start_0
    iget-object v0, p0, Lcom/facebook/fresco/animation/b/a/b;->b:Lcom/facebook/fresco/animation/b/b$a;

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/facebook/fresco/animation/b/a/b;->a:I

    if-eq v0, v1, :cond_0

    .line 112
    iget-object v0, p0, Lcom/facebook/fresco/animation/b/a/b;->b:Lcom/facebook/fresco/animation/b/b$a;

    iget v2, p0, Lcom/facebook/fresco/animation/b/a/b;->a:I

    invoke-interface {v0, p0, v2}, Lcom/facebook/fresco/animation/b/b$a;->b(Lcom/facebook/fresco/animation/b/b;I)V

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/facebook/fresco/animation/b/a/b;->c:Lcom/facebook/common/references/a;

    invoke-static {v0}, Lcom/facebook/common/references/a;->c(Lcom/facebook/common/references/a;)V

    const/4 v0, 0x0

    .line 115
    iput-object v0, p0, Lcom/facebook/fresco/animation/b/a/b;->c:Lcom/facebook/common/references/a;

    .line 116
    iput v1, p0, Lcom/facebook/fresco/animation/b/a/b;->a:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 110
    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized a(I)Lcom/facebook/common/references/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/facebook/common/references/a<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    monitor-enter p0

    .line 36
    :try_start_0
    iget v0, p0, Lcom/facebook/fresco/animation/b/a/b;->a:I

    if-ne v0, p1, :cond_0

    .line 37
    iget-object p1, p0, Lcom/facebook/fresco/animation/b/a/b;->c:Lcom/facebook/common/references/a;

    invoke-static {p1}, Lcom/facebook/common/references/a;->b(Lcom/facebook/common/references/a;)Lcom/facebook/common/references/a;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_0
    const/4 p1, 0x0

    .line 39
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    .line 35
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(III)Lcom/facebook/common/references/a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)",
            "Lcom/facebook/common/references/a<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 54
    :try_start_0
    iget-object p1, p0, Lcom/facebook/fresco/animation/b/a/b;->c:Lcom/facebook/common/references/a;

    invoke-static {p1}, Lcom/facebook/common/references/a;->b(Lcom/facebook/common/references/a;)Lcom/facebook/common/references/a;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    :try_start_1
    invoke-direct {p0}, Lcom/facebook/fresco/animation/b/a/b;->b()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 54
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    .line 56
    :try_start_2
    invoke-direct {p0}, Lcom/facebook/fresco/animation/b/a/b;->b()V

    .line 57
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    .line 53
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a()V
    .locals 1

    monitor-enter p0

    .line 74
    :try_start_0
    invoke-direct {p0}, Lcom/facebook/fresco/animation/b/a/b;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 73
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(ILcom/facebook/common/references/a;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/facebook/common/references/a<",
            "Landroid/graphics/Bitmap;",
            ">;I)V"
        }
    .end annotation

    monitor-enter p0

    if-eqz p2, :cond_0

    .line 82
    :try_start_0
    iget-object p3, p0, Lcom/facebook/fresco/animation/b/a/b;->c:Lcom/facebook/common/references/a;

    if-eqz p3, :cond_0

    .line 84
    invoke-virtual {p2}, Lcom/facebook/common/references/a;->a()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/facebook/fresco/animation/b/a/b;->c:Lcom/facebook/common/references/a;

    invoke-virtual {v0}, Lcom/facebook/common/references/a;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p3, :cond_0

    .line 85
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 87
    :cond_0
    :try_start_1
    iget-object p3, p0, Lcom/facebook/fresco/animation/b/a/b;->c:Lcom/facebook/common/references/a;

    invoke-static {p3}, Lcom/facebook/common/references/a;->c(Lcom/facebook/common/references/a;)V

    .line 88
    iget-object p3, p0, Lcom/facebook/fresco/animation/b/a/b;->b:Lcom/facebook/fresco/animation/b/b$a;

    if-eqz p3, :cond_1

    iget p3, p0, Lcom/facebook/fresco/animation/b/a/b;->a:I

    const/4 v0, -0x1

    if-eq p3, v0, :cond_1

    .line 89
    iget-object p3, p0, Lcom/facebook/fresco/animation/b/a/b;->b:Lcom/facebook/fresco/animation/b/b$a;

    iget v0, p0, Lcom/facebook/fresco/animation/b/a/b;->a:I

    invoke-interface {p3, p0, v0}, Lcom/facebook/fresco/animation/b/b$a;->b(Lcom/facebook/fresco/animation/b/b;I)V

    .line 91
    :cond_1
    invoke-static {p2}, Lcom/facebook/common/references/a;->b(Lcom/facebook/common/references/a;)Lcom/facebook/common/references/a;

    move-result-object p2

    iput-object p2, p0, Lcom/facebook/fresco/animation/b/a/b;->c:Lcom/facebook/common/references/a;

    .line 92
    iget-object p2, p0, Lcom/facebook/fresco/animation/b/a/b;->b:Lcom/facebook/fresco/animation/b/b$a;

    if-eqz p2, :cond_2

    .line 93
    iget-object p2, p0, Lcom/facebook/fresco/animation/b/a/b;->b:Lcom/facebook/fresco/animation/b/b$a;

    invoke-interface {p2, p0, p1}, Lcom/facebook/fresco/animation/b/b$a;->a(Lcom/facebook/fresco/animation/b/b;I)V

    .line 95
    :cond_2
    iput p1, p0, Lcom/facebook/fresco/animation/b/a/b;->a:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 96
    monitor-exit p0

    return-void

    .line 81
    :goto_0
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized b(I)Lcom/facebook/common/references/a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/facebook/common/references/a<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    monitor-enter p0

    .line 45
    :try_start_0
    iget-object p1, p0, Lcom/facebook/fresco/animation/b/a/b;->c:Lcom/facebook/common/references/a;

    invoke-static {p1}, Lcom/facebook/common/references/a;->b(Lcom/facebook/common/references/a;)Lcom/facebook/common/references/a;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public b(ILcom/facebook/common/references/a;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/facebook/common/references/a<",
            "Landroid/graphics/Bitmap;",
            ">;I)V"
        }
    .end annotation

    return-void
.end method

.method public declared-synchronized c(I)Z
    .locals 1

    monitor-enter p0

    .line 62
    :try_start_0
    iget v0, p0, Lcom/facebook/fresco/animation/b/a/b;->a:I

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/facebook/fresco/animation/b/a/b;->c:Lcom/facebook/common/references/a;

    invoke-static {p1}, Lcom/facebook/common/references/a;->a(Lcom/facebook/common/references/a;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
