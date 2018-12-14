.class public Lcom/facebook/fresco/animation/b/a/a;
.super Ljava/lang/Object;
.source "FrescoFrameCache.java"

# interfaces
.implements Lcom/facebook/fresco/animation/b/b;


# static fields
.field private static final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field private final b:Lcom/facebook/imagepipeline/animated/b/c;

.field private final c:Z

.field private final d:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/facebook/common/references/a<",
            "Lcom/facebook/imagepipeline/g/c;",
            ">;>;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private e:Lcom/facebook/common/references/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/references/a<",
            "Lcom/facebook/imagepipeline/g/c;",
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
.method static constructor <clinit>()V
    .locals 1

    .line 31
    const-class v0, Lcom/facebook/fresco/animation/b/a/a;

    sput-object v0, Lcom/facebook/fresco/animation/b/a/a;->a:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/imagepipeline/animated/b/c;Z)V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/facebook/fresco/animation/b/a/a;->b:Lcom/facebook/imagepipeline/animated/b/c;

    .line 44
    iput-boolean p2, p0, Lcom/facebook/fresco/animation/b/a/a;->c:Z

    .line 45
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/facebook/fresco/animation/b/a/a;->d:Landroid/util/SparseArray;

    return-void
.end method

.method static a(Lcom/facebook/common/references/a;)Lcom/facebook/common/references/a;
    .locals 1
    .param p0    # Lcom/facebook/common/references/a;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/references/a<",
            "Lcom/facebook/imagepipeline/g/c;",
            ">;)",
            "Lcom/facebook/common/references/a<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 187
    :try_start_0
    invoke-static {p0}, Lcom/facebook/common/references/a;->a(Lcom/facebook/common/references/a;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 188
    invoke-virtual {p0}, Lcom/facebook/common/references/a;->a()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/facebook/imagepipeline/g/d;

    if-eqz v0, :cond_0

    .line 190
    invoke-virtual {p0}, Lcom/facebook/common/references/a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/imagepipeline/g/d;

    if-eqz v0, :cond_0

    .line 195
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/g/d;->f()Lcom/facebook/common/references/a;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 201
    invoke-static {p0}, Lcom/facebook/common/references/a;->c(Lcom/facebook/common/references/a;)V

    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {p0}, Lcom/facebook/common/references/a;->c(Lcom/facebook/common/references/a;)V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-static {p0}, Lcom/facebook/common/references/a;->c(Lcom/facebook/common/references/a;)V

    .line 202
    throw v0
.end method

.method private static b(Lcom/facebook/common/references/a;)Lcom/facebook/common/references/a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/references/a<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Lcom/facebook/common/references/a<",
            "Lcom/facebook/imagepipeline/g/c;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 225
    new-instance v0, Lcom/facebook/imagepipeline/g/d;

    sget-object v1, Lcom/facebook/imagepipeline/g/g;->a:Lcom/facebook/imagepipeline/g/h;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/facebook/imagepipeline/g/d;-><init>(Lcom/facebook/common/references/a;Lcom/facebook/imagepipeline/g/h;I)V

    .line 227
    invoke-static {v0}, Lcom/facebook/common/references/a;->a(Ljava/io/Closeable;)Lcom/facebook/common/references/a;

    move-result-object p0

    return-object p0
.end method

.method private declared-synchronized d(I)V
    .locals 3

    monitor-enter p0

    .line 162
    :try_start_0
    iget-object v0, p0, Lcom/facebook/fresco/animation/b/a/a;->d:Landroid/util/SparseArray;

    .line 163
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/common/references/a;

    if-eqz v0, :cond_0

    .line 165
    iget-object v1, p0, Lcom/facebook/fresco/animation/b/a/a;->d:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 166
    invoke-static {v0}, Lcom/facebook/common/references/a;->c(Lcom/facebook/common/references/a;)V

    .line 167
    sget-object v0, Lcom/facebook/fresco/animation/b/a/a;->a:Ljava/lang/Class;

    const-string v1, "removePreparedReference(%d) removed. Pending frames: %s"

    .line 170
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget-object v2, p0, Lcom/facebook/fresco/animation/b/a/a;->d:Landroid/util/SparseArray;

    .line 167
    invoke-static {v0, v1, p1, v2}, Lcom/facebook/common/c/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 173
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 161
    monitor-exit p0

    throw p1
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

    .line 51
    :try_start_0
    iget-object v0, p0, Lcom/facebook/fresco/animation/b/a/a;->b:Lcom/facebook/imagepipeline/animated/b/c;

    invoke-virtual {v0, p1}, Lcom/facebook/imagepipeline/animated/b/c;->a(I)Lcom/facebook/common/references/a;

    move-result-object p1

    invoke-static {p1}, Lcom/facebook/fresco/animation/b/a/a;->a(Lcom/facebook/common/references/a;)Lcom/facebook/common/references/a;

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

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    monitor-enter p0

    .line 66
    :try_start_0
    iget-boolean p1, p0, Lcom/facebook/fresco/animation/b/a/a;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 67
    monitor-exit p0

    return-object p1

    .line 69
    :cond_0
    :try_start_1
    iget-object p1, p0, Lcom/facebook/fresco/animation/b/a/a;->b:Lcom/facebook/imagepipeline/animated/b/c;

    invoke-virtual {p1}, Lcom/facebook/imagepipeline/animated/b/c;->a()Lcom/facebook/common/references/a;

    move-result-object p1

    invoke-static {p1}, Lcom/facebook/fresco/animation/b/a/a;->a(Lcom/facebook/common/references/a;)Lcom/facebook/common/references/a;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    .line 65
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a()V
    .locals 2

    monitor-enter p0

    .line 85
    :try_start_0
    iget-object v0, p0, Lcom/facebook/fresco/animation/b/a/a;->e:Lcom/facebook/common/references/a;

    invoke-static {v0}, Lcom/facebook/common/references/a;->c(Lcom/facebook/common/references/a;)V

    const/4 v0, 0x0

    .line 86
    iput-object v0, p0, Lcom/facebook/fresco/animation/b/a/a;->e:Lcom/facebook/common/references/a;

    const/4 v0, 0x0

    .line 87
    :goto_0
    iget-object v1, p0, Lcom/facebook/fresco/animation/b/a/a;->d:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 88
    iget-object v1, p0, Lcom/facebook/fresco/animation/b/a/a;->d:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/common/references/a;

    invoke-static {v1}, Lcom/facebook/common/references/a;->c(Lcom/facebook/common/references/a;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/facebook/fresco/animation/b/a/a;->d:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 84
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(ILcom/facebook/common/references/a;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/facebook/common/references/a<",
            "Landroid/graphics/Bitmap;",
            ">;I)V"
        }
    .end annotation

    monitor-enter p0

    .line 99
    :try_start_0
    invoke-static {p2}, Lcom/facebook/common/internal/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    invoke-direct {p0, p1}, Lcom/facebook/fresco/animation/b/a/a;->d(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 p3, 0x0

    .line 107
    :try_start_1
    invoke-static {p2}, Lcom/facebook/fresco/animation/b/a/a;->b(Lcom/facebook/common/references/a;)Lcom/facebook/common/references/a;

    move-result-object p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz p2, :cond_0

    .line 109
    :try_start_2
    iget-object p3, p0, Lcom/facebook/fresco/animation/b/a/a;->e:Lcom/facebook/common/references/a;

    invoke-static {p3}, Lcom/facebook/common/references/a;->c(Lcom/facebook/common/references/a;)V

    .line 110
    iget-object p3, p0, Lcom/facebook/fresco/animation/b/a/a;->b:Lcom/facebook/imagepipeline/animated/b/c;

    invoke-virtual {p3, p1, p2}, Lcom/facebook/imagepipeline/animated/b/c;->a(ILcom/facebook/common/references/a;)Lcom/facebook/common/references/a;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/fresco/animation/b/a/a;->e:Lcom/facebook/common/references/a;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 113
    :cond_0
    :goto_0
    :try_start_3
    invoke-static {p2}, Lcom/facebook/common/references/a;->c(Lcom/facebook/common/references/a;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 115
    monitor-exit p0

    return-void

    :catchall_1
    move-exception p1

    move-object p2, p3

    .line 113
    :goto_1
    :try_start_4
    invoke-static {p2}, Lcom/facebook/common/references/a;->c(Lcom/facebook/common/references/a;)V

    .line 114
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception p1

    .line 98
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

    .line 57
    :try_start_0
    iget-object p1, p0, Lcom/facebook/fresco/animation/b/a/a;->e:Lcom/facebook/common/references/a;

    invoke-static {p1}, Lcom/facebook/common/references/a;->b(Lcom/facebook/common/references/a;)Lcom/facebook/common/references/a;

    move-result-object p1

    invoke-static {p1}, Lcom/facebook/fresco/animation/b/a/a;->a(Lcom/facebook/common/references/a;)Lcom/facebook/common/references/a;

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

.method public declared-synchronized b(ILcom/facebook/common/references/a;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/facebook/common/references/a<",
            "Landroid/graphics/Bitmap;",
            ">;I)V"
        }
    .end annotation

    monitor-enter p0

    .line 122
    :try_start_0
    invoke-static {p2}, Lcom/facebook/common/internal/g;->a(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 p3, 0x0

    .line 125
    :try_start_1
    invoke-static {p2}, Lcom/facebook/fresco/animation/b/a/a;->b(Lcom/facebook/common/references/a;)Lcom/facebook/common/references/a;

    move-result-object p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez p2, :cond_0

    .line 144
    :try_start_2
    invoke-static {p2}, Lcom/facebook/common/references/a;->c(Lcom/facebook/common/references/a;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 127
    monitor-exit p0

    return-void

    .line 129
    :cond_0
    :try_start_3
    iget-object p3, p0, Lcom/facebook/fresco/animation/b/a/a;->b:Lcom/facebook/imagepipeline/animated/b/c;

    .line 130
    invoke-virtual {p3, p1, p2}, Lcom/facebook/imagepipeline/animated/b/c;->a(ILcom/facebook/common/references/a;)Lcom/facebook/common/references/a;

    move-result-object p3

    .line 131
    invoke-static {p3}, Lcom/facebook/common/references/a;->a(Lcom/facebook/common/references/a;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 132
    iget-object v0, p0, Lcom/facebook/fresco/animation/b/a/a;->d:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/common/references/a;

    .line 133
    invoke-static {v0}, Lcom/facebook/common/references/a;->c(Lcom/facebook/common/references/a;)V

    .line 136
    iget-object v0, p0, Lcom/facebook/fresco/animation/b/a/a;->d:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 137
    sget-object p3, Lcom/facebook/fresco/animation/b/a/a;->a:Ljava/lang/Class;

    const-string v0, "cachePreparedFrame(%d) cached. Pending frames: %s"

    .line 140
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget-object v1, p0, Lcom/facebook/fresco/animation/b/a/a;->d:Landroid/util/SparseArray;

    .line 137
    invoke-static {p3, v0, p1, v1}, Lcom/facebook/common/c/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 144
    :cond_1
    :try_start_4
    invoke-static {p2}, Lcom/facebook/common/references/a;->c(Lcom/facebook/common/references/a;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 146
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catchall_1
    move-exception p1

    move-object p2, p3

    .line 144
    :goto_0
    :try_start_5
    invoke-static {p2}, Lcom/facebook/common/references/a;->c(Lcom/facebook/common/references/a;)V

    .line 145
    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_2
    move-exception p1

    .line 121
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized c(I)Z
    .locals 1

    monitor-enter p0

    .line 74
    :try_start_0
    iget-object v0, p0, Lcom/facebook/fresco/animation/b/a/a;->b:Lcom/facebook/imagepipeline/animated/b/c;

    invoke-virtual {v0, p1}, Lcom/facebook/imagepipeline/animated/b/c;->b(I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
