.class Lcom/facebook/imagepipeline/k/m$b;
.super Lcom/facebook/imagepipeline/k/m$c;
.source "DecodeProducer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/imagepipeline/k/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/imagepipeline/k/m;

.field private final c:Lcom/facebook/imagepipeline/decoder/e;

.field private final d:Lcom/facebook/imagepipeline/decoder/d;

.field private e:I


# direct methods
.method public constructor <init>(Lcom/facebook/imagepipeline/k/m;Lcom/facebook/imagepipeline/k/k;Lcom/facebook/imagepipeline/k/al;Lcom/facebook/imagepipeline/decoder/e;Lcom/facebook/imagepipeline/decoder/d;ZI)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/k/k<",
            "Lcom/facebook/common/references/a<",
            "Lcom/facebook/imagepipeline/g/c;",
            ">;>;",
            "Lcom/facebook/imagepipeline/k/al;",
            "Lcom/facebook/imagepipeline/decoder/e;",
            "Lcom/facebook/imagepipeline/decoder/d;",
            "ZI)V"
        }
    .end annotation

    .line 464
    iput-object p1, p0, Lcom/facebook/imagepipeline/k/m$b;->a:Lcom/facebook/imagepipeline/k/m;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p6

    move v5, p7

    .line 465
    invoke-direct/range {v0 .. v5}, Lcom/facebook/imagepipeline/k/m$c;-><init>(Lcom/facebook/imagepipeline/k/m;Lcom/facebook/imagepipeline/k/k;Lcom/facebook/imagepipeline/k/al;ZI)V

    .line 466
    invoke-static {p4}, Lcom/facebook/common/internal/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/facebook/imagepipeline/decoder/e;

    iput-object p1, p0, Lcom/facebook/imagepipeline/k/m$b;->c:Lcom/facebook/imagepipeline/decoder/e;

    .line 467
    invoke-static {p5}, Lcom/facebook/common/internal/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/facebook/imagepipeline/decoder/d;

    iput-object p1, p0, Lcom/facebook/imagepipeline/k/m$b;->d:Lcom/facebook/imagepipeline/decoder/d;

    const/4 p1, 0x0

    .line 468
    iput p1, p0, Lcom/facebook/imagepipeline/k/m$b;->e:I

    return-void
.end method


# virtual methods
.method protected a(Lcom/facebook/imagepipeline/g/e;)I
    .locals 0

    .line 499
    iget-object p1, p0, Lcom/facebook/imagepipeline/k/m$b;->c:Lcom/facebook/imagepipeline/decoder/e;

    invoke-virtual {p1}, Lcom/facebook/imagepipeline/decoder/e;->a()I

    move-result p1

    return p1
.end method

.method protected declared-synchronized a(Lcom/facebook/imagepipeline/g/e;I)Z
    .locals 3

    monitor-enter p0

    .line 473
    :try_start_0
    invoke-super {p0, p1, p2}, Lcom/facebook/imagepipeline/k/m$c;->a(Lcom/facebook/imagepipeline/g/e;I)Z

    move-result v0

    .line 474
    invoke-static {p2}, Lcom/facebook/imagepipeline/k/m$b;->b(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x8

    invoke-static {p2, v1}, Lcom/facebook/imagepipeline/k/m$b;->b(II)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_0
    const/4 v1, 0x4

    .line 475
    invoke-static {p2, v1}, Lcom/facebook/imagepipeline/k/m$b;->b(II)Z

    move-result p2

    if-nez p2, :cond_4

    .line 476
    invoke-static {p1}, Lcom/facebook/imagepipeline/g/e;->e(Lcom/facebook/imagepipeline/g/e;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 477
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/g/e;->e()Lcom/facebook/d/c;

    move-result-object p2

    sget-object v1, Lcom/facebook/d/b;->a:Lcom/facebook/d/c;

    if-ne p2, v1, :cond_4

    .line 478
    iget-object p2, p0, Lcom/facebook/imagepipeline/k/m$b;->c:Lcom/facebook/imagepipeline/decoder/e;

    invoke-virtual {p2, p1}, Lcom/facebook/imagepipeline/decoder/e;->a(Lcom/facebook/imagepipeline/g/e;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p2, 0x0

    if-nez p1, :cond_1

    .line 479
    monitor-exit p0

    return p2

    .line 481
    :cond_1
    :try_start_1
    iget-object p1, p0, Lcom/facebook/imagepipeline/k/m$b;->c:Lcom/facebook/imagepipeline/decoder/e;

    invoke-virtual {p1}, Lcom/facebook/imagepipeline/decoder/e;->b()I

    move-result p1

    .line 482
    iget v1, p0, Lcom/facebook/imagepipeline/k/m$b;->e:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-gt p1, v1, :cond_2

    .line 484
    monitor-exit p0

    return p2

    .line 486
    :cond_2
    :try_start_2
    iget-object v1, p0, Lcom/facebook/imagepipeline/k/m$b;->d:Lcom/facebook/imagepipeline/decoder/d;

    iget v2, p0, Lcom/facebook/imagepipeline/k/m$b;->e:I

    invoke-interface {v1, v2}, Lcom/facebook/imagepipeline/decoder/d;->a(I)I

    move-result v1

    if-ge p1, v1, :cond_3

    iget-object v1, p0, Lcom/facebook/imagepipeline/k/m$b;->c:Lcom/facebook/imagepipeline/decoder/e;

    .line 487
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/decoder/e;->c()Z

    move-result v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v1, :cond_3

    .line 490
    monitor-exit p0

    return p2

    .line 492
    :cond_3
    :try_start_3
    iput p1, p0, Lcom/facebook/imagepipeline/k/m$b;->e:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 494
    :cond_4
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    .line 472
    monitor-exit p0

    throw p1
.end method

.method protected c()Lcom/facebook/imagepipeline/g/h;
    .locals 2

    .line 504
    iget-object v0, p0, Lcom/facebook/imagepipeline/k/m$b;->d:Lcom/facebook/imagepipeline/decoder/d;

    iget-object v1, p0, Lcom/facebook/imagepipeline/k/m$b;->c:Lcom/facebook/imagepipeline/decoder/e;

    invoke-virtual {v1}, Lcom/facebook/imagepipeline/decoder/e;->b()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/facebook/imagepipeline/decoder/d;->b(I)Lcom/facebook/imagepipeline/g/h;

    move-result-object v0

    return-object v0
.end method
