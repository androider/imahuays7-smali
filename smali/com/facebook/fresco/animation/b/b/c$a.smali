.class Lcom/facebook/fresco/animation/b/b/c$a;
.super Ljava/lang/Object;
.source "DefaultBitmapFramePreparer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/fresco/animation/b/b/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/fresco/animation/b/b/c;

.field private final b:Lcom/facebook/fresco/animation/b/b;

.field private final c:Lcom/facebook/fresco/animation/a/a;

.field private final d:I

.field private final e:I


# direct methods
.method public constructor <init>(Lcom/facebook/fresco/animation/b/b/c;Lcom/facebook/fresco/animation/a/a;Lcom/facebook/fresco/animation/b/b;II)V
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/facebook/fresco/animation/b/b/c$a;->a:Lcom/facebook/fresco/animation/b/b/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    iput-object p2, p0, Lcom/facebook/fresco/animation/b/b/c$a;->c:Lcom/facebook/fresco/animation/a/a;

    .line 95
    iput-object p3, p0, Lcom/facebook/fresco/animation/b/b/c$a;->b:Lcom/facebook/fresco/animation/b/b;

    .line 96
    iput p4, p0, Lcom/facebook/fresco/animation/b/b/c$a;->d:I

    .line 97
    iput p5, p0, Lcom/facebook/fresco/animation/b/b/c$a;->e:I

    return-void
.end method

.method private a(II)Z
    .locals 7

    const/4 v0, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    packed-switch p2, :pswitch_data_0

    .line 161
    invoke-static {v2}, Lcom/facebook/common/references/a;->c(Lcom/facebook/common/references/a;)V

    return v1

    .line 142
    :pswitch_0
    :try_start_0
    iget-object v3, p0, Lcom/facebook/fresco/animation/b/b/c$a;->a:Lcom/facebook/fresco/animation/b/b/c;

    .line 143
    invoke-static {v3}, Lcom/facebook/fresco/animation/b/b/c;->c(Lcom/facebook/fresco/animation/b/b/c;)Lcom/facebook/imagepipeline/b/f;

    move-result-object v3

    iget-object v4, p0, Lcom/facebook/fresco/animation/b/b/c$a;->c:Lcom/facebook/fresco/animation/a/a;

    .line 144
    invoke-interface {v4}, Lcom/facebook/fresco/animation/a/a;->a()I

    move-result v4

    iget-object v5, p0, Lcom/facebook/fresco/animation/b/b/c$a;->c:Lcom/facebook/fresco/animation/a/a;

    .line 145
    invoke-interface {v5}, Lcom/facebook/fresco/animation/a/a;->b()I

    move-result v5

    iget-object v6, p0, Lcom/facebook/fresco/animation/b/b/c$a;->a:Lcom/facebook/fresco/animation/b/b/c;

    .line 146
    invoke-static {v6}, Lcom/facebook/fresco/animation/b/b/c;->b(Lcom/facebook/fresco/animation/b/b/c;)Landroid/graphics/Bitmap$Config;

    move-result-object v6

    .line 143
    invoke-virtual {v3, v4, v5, v6}, Lcom/facebook/imagepipeline/b/f;->b(IILandroid/graphics/Bitmap$Config;)Lcom/facebook/common/references/a;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    const/4 v1, -0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 150
    :try_start_1
    invoke-static {}, Lcom/facebook/fresco/animation/b/b/c;->a()Ljava/lang/Class;

    move-result-object p2

    const-string v0, "Failed to create frame bitmap"

    invoke-static {p2, v0, p1}, Lcom/facebook/common/c/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 161
    invoke-static {v2}, Lcom/facebook/common/references/a;->c(Lcom/facebook/common/references/a;)V

    return v1

    .line 132
    :pswitch_1
    :try_start_2
    iget-object v1, p0, Lcom/facebook/fresco/animation/b/b/c$a;->b:Lcom/facebook/fresco/animation/b/b;

    iget-object v3, p0, Lcom/facebook/fresco/animation/b/b/c$a;->c:Lcom/facebook/fresco/animation/a/a;

    .line 135
    invoke-interface {v3}, Lcom/facebook/fresco/animation/a/a;->a()I

    move-result v3

    iget-object v4, p0, Lcom/facebook/fresco/animation/b/b/c$a;->c:Lcom/facebook/fresco/animation/a/a;

    .line 136
    invoke-interface {v4}, Lcom/facebook/fresco/animation/a/a;->b()I

    move-result v4

    .line 133
    invoke-interface {v1, p1, v3, v4}, Lcom/facebook/fresco/animation/b/b;->a(III)Lcom/facebook/common/references/a;

    move-result-object v1

    const/4 v2, 0x2

    move-object v2, v1

    const/4 v1, 0x2

    .line 159
    :goto_0
    invoke-direct {p0, p1, v2, p2}, Lcom/facebook/fresco/animation/b/b/c$a;->a(ILcom/facebook/common/references/a;I)Z

    move-result p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 161
    invoke-static {v2}, Lcom/facebook/common/references/a;->c(Lcom/facebook/common/references/a;)V

    if-nez p2, :cond_1

    if-ne v1, v0, :cond_0

    goto :goto_1

    .line 167
    :cond_0
    invoke-direct {p0, p1, v1}, Lcom/facebook/fresco/animation/b/b/c$a;->a(II)Z

    move-result p1

    return p1

    :cond_1
    :goto_1
    return p2

    :catchall_0
    move-exception p1

    .line 161
    invoke-static {v2}, Lcom/facebook/common/references/a;->c(Lcom/facebook/common/references/a;)V

    .line 162
    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private a(ILcom/facebook/common/references/a;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/facebook/common/references/a<",
            "Landroid/graphics/Bitmap;",
            ">;I)Z"
        }
    .end annotation

    .line 176
    invoke-static {p2}, Lcom/facebook/common/references/a;->a(Lcom/facebook/common/references/a;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 180
    :cond_0
    iget-object v0, p0, Lcom/facebook/fresco/animation/b/b/c$a;->a:Lcom/facebook/fresco/animation/b/b/c;

    invoke-static {v0}, Lcom/facebook/fresco/animation/b/b/c;->d(Lcom/facebook/fresco/animation/b/b/c;)Lcom/facebook/fresco/animation/b/c;

    move-result-object v0

    invoke-virtual {p2}, Lcom/facebook/common/references/a;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    invoke-interface {v0, p1, v2}, Lcom/facebook/fresco/animation/b/c;->a(ILandroid/graphics/Bitmap;)Z

    move-result p1

    if-nez p1, :cond_1

    return v1

    .line 183
    :cond_1
    invoke-static {}, Lcom/facebook/fresco/animation/b/b/c;->a()Ljava/lang/Class;

    move-result-object p1

    const-string v0, "Frame %d ready."

    iget v1, p0, Lcom/facebook/fresco/animation/b/b/c$a;->d:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/facebook/common/c/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 185
    iget-object p1, p0, Lcom/facebook/fresco/animation/b/b/c$a;->a:Lcom/facebook/fresco/animation/b/b/c;

    invoke-static {p1}, Lcom/facebook/fresco/animation/b/b/c;->a(Lcom/facebook/fresco/animation/b/b/c;)Landroid/util/SparseArray;

    move-result-object p1

    monitor-enter p1

    .line 186
    :try_start_0
    iget-object v0, p0, Lcom/facebook/fresco/animation/b/b/c$a;->b:Lcom/facebook/fresco/animation/b/b;

    iget v1, p0, Lcom/facebook/fresco/animation/b/b/c$a;->d:I

    invoke-interface {v0, v1, p2, p3}, Lcom/facebook/fresco/animation/b/b;->b(ILcom/facebook/common/references/a;I)V

    .line 187
    monitor-exit p1

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 104
    :try_start_0
    iget-object v0, p0, Lcom/facebook/fresco/animation/b/b/c$a;->b:Lcom/facebook/fresco/animation/b/b;

    iget v1, p0, Lcom/facebook/fresco/animation/b/b/c$a;->d:I

    invoke-interface {v0, v1}, Lcom/facebook/fresco/animation/b/b;->c(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    invoke-static {}, Lcom/facebook/fresco/animation/b/b/c;->a()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "Frame %d is cached already."

    iget v2, p0, Lcom/facebook/fresco/animation/b/b/c$a;->d:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/facebook/common/c/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 116
    iget-object v0, p0, Lcom/facebook/fresco/animation/b/b/c$a;->a:Lcom/facebook/fresco/animation/b/b/c;

    invoke-static {v0}, Lcom/facebook/fresco/animation/b/b/c;->a(Lcom/facebook/fresco/animation/b/b/c;)Landroid/util/SparseArray;

    move-result-object v0

    monitor-enter v0

    .line 117
    :try_start_1
    iget-object v1, p0, Lcom/facebook/fresco/animation/b/b/c$a;->a:Lcom/facebook/fresco/animation/b/b/c;

    invoke-static {v1}, Lcom/facebook/fresco/animation/b/b/c;->a(Lcom/facebook/fresco/animation/b/b/c;)Landroid/util/SparseArray;

    move-result-object v1

    iget v2, p0, Lcom/facebook/fresco/animation/b/b/c$a;->e:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 118
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 110
    :cond_0
    :try_start_2
    iget v0, p0, Lcom/facebook/fresco/animation/b/b/c$a;->d:I

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/facebook/fresco/animation/b/b/c$a;->a(II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 111
    invoke-static {}, Lcom/facebook/fresco/animation/b/b/c;->a()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "Prepared frame frame %d."

    iget v2, p0, Lcom/facebook/fresco/animation/b/b/c$a;->d:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/facebook/common/c/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 113
    :cond_1
    invoke-static {}, Lcom/facebook/fresco/animation/b/b/c;->a()Ljava/lang/Class;

    move-result-object v0

    const-string v2, "Could not prepare frame %d."

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/facebook/fresco/animation/b/b/c$a;->d:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    invoke-static {v0, v2, v1}, Lcom/facebook/common/c/a;->c(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 116
    :goto_0
    iget-object v0, p0, Lcom/facebook/fresco/animation/b/b/c$a;->a:Lcom/facebook/fresco/animation/b/b/c;

    invoke-static {v0}, Lcom/facebook/fresco/animation/b/b/c;->a(Lcom/facebook/fresco/animation/b/b/c;)Landroid/util/SparseArray;

    move-result-object v0

    monitor-enter v0

    .line 117
    :try_start_3
    iget-object v1, p0, Lcom/facebook/fresco/animation/b/b/c$a;->a:Lcom/facebook/fresco/animation/b/b/c;

    invoke-static {v1}, Lcom/facebook/fresco/animation/b/b/c;->a(Lcom/facebook/fresco/animation/b/b/c;)Landroid/util/SparseArray;

    move-result-object v1

    iget v2, p0, Lcom/facebook/fresco/animation/b/b/c$a;->e:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 118
    monitor-exit v0

    return-void

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1

    :catchall_2
    move-exception v0

    .line 116
    iget-object v1, p0, Lcom/facebook/fresco/animation/b/b/c$a;->a:Lcom/facebook/fresco/animation/b/b/c;

    invoke-static {v1}, Lcom/facebook/fresco/animation/b/b/c;->a(Lcom/facebook/fresco/animation/b/b/c;)Landroid/util/SparseArray;

    move-result-object v1

    monitor-enter v1

    .line 117
    :try_start_4
    iget-object v2, p0, Lcom/facebook/fresco/animation/b/b/c$a;->a:Lcom/facebook/fresco/animation/b/b/c;

    invoke-static {v2}, Lcom/facebook/fresco/animation/b/b/c;->a(Lcom/facebook/fresco/animation/b/b/c;)Landroid/util/SparseArray;

    move-result-object v2

    iget v3, p0, Lcom/facebook/fresco/animation/b/b/c$a;->e:I

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->remove(I)V

    .line 118
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 119
    throw v0

    :catchall_3
    move-exception v0

    .line 118
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    throw v0
.end method
