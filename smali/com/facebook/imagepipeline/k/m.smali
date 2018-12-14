.class public Lcom/facebook/imagepipeline/k/m;
.super Ljava/lang/Object;
.source "DecodeProducer.java"

# interfaces
.implements Lcom/facebook/imagepipeline/k/ak;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/imagepipeline/k/m$b;,
        Lcom/facebook/imagepipeline/k/m$a;,
        Lcom/facebook/imagepipeline/k/m$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/imagepipeline/k/ak<",
        "Lcom/facebook/common/references/a<",
        "Lcom/facebook/imagepipeline/g/c;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/facebook/common/memory/a;

.field private final b:Ljava/util/concurrent/Executor;

.field private final c:Lcom/facebook/imagepipeline/decoder/b;

.field private final d:Lcom/facebook/imagepipeline/decoder/d;

.field private final e:Lcom/facebook/imagepipeline/k/ak;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/k/ak<",
            "Lcom/facebook/imagepipeline/g/e;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Z

.field private final g:Z

.field private final h:Z

.field private final i:I


# direct methods
.method public constructor <init>(Lcom/facebook/common/memory/a;Ljava/util/concurrent/Executor;Lcom/facebook/imagepipeline/decoder/b;Lcom/facebook/imagepipeline/decoder/d;ZZZLcom/facebook/imagepipeline/k/ak;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/memory/a;",
            "Ljava/util/concurrent/Executor;",
            "Lcom/facebook/imagepipeline/decoder/b;",
            "Lcom/facebook/imagepipeline/decoder/d;",
            "ZZZ",
            "Lcom/facebook/imagepipeline/k/ak<",
            "Lcom/facebook/imagepipeline/g/e;",
            ">;I)V"
        }
    .end annotation

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    invoke-static {p1}, Lcom/facebook/common/internal/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/facebook/common/memory/a;

    iput-object p1, p0, Lcom/facebook/imagepipeline/k/m;->a:Lcom/facebook/common/memory/a;

    .line 80
    invoke-static {p2}, Lcom/facebook/common/internal/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/Executor;

    iput-object p1, p0, Lcom/facebook/imagepipeline/k/m;->b:Ljava/util/concurrent/Executor;

    .line 81
    invoke-static {p3}, Lcom/facebook/common/internal/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/facebook/imagepipeline/decoder/b;

    iput-object p1, p0, Lcom/facebook/imagepipeline/k/m;->c:Lcom/facebook/imagepipeline/decoder/b;

    .line 82
    invoke-static {p4}, Lcom/facebook/common/internal/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/facebook/imagepipeline/decoder/d;

    iput-object p1, p0, Lcom/facebook/imagepipeline/k/m;->d:Lcom/facebook/imagepipeline/decoder/d;

    .line 83
    iput-boolean p5, p0, Lcom/facebook/imagepipeline/k/m;->f:Z

    .line 84
    iput-boolean p6, p0, Lcom/facebook/imagepipeline/k/m;->g:Z

    .line 85
    invoke-static {p8}, Lcom/facebook/common/internal/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/facebook/imagepipeline/k/ak;

    iput-object p1, p0, Lcom/facebook/imagepipeline/k/m;->e:Lcom/facebook/imagepipeline/k/ak;

    .line 86
    iput-boolean p7, p0, Lcom/facebook/imagepipeline/k/m;->h:Z

    .line 87
    iput p9, p0, Lcom/facebook/imagepipeline/k/m;->i:I

    return-void
.end method

.method static synthetic a(Lcom/facebook/imagepipeline/k/m;)Z
    .locals 0

    .line 46
    iget-boolean p0, p0, Lcom/facebook/imagepipeline/k/m;->f:Z

    return p0
.end method

.method static synthetic b(Lcom/facebook/imagepipeline/k/m;)Z
    .locals 0

    .line 46
    iget-boolean p0, p0, Lcom/facebook/imagepipeline/k/m;->g:Z

    return p0
.end method

.method static synthetic c(Lcom/facebook/imagepipeline/k/m;)Ljava/util/concurrent/Executor;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/facebook/imagepipeline/k/m;->b:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method static synthetic d(Lcom/facebook/imagepipeline/k/m;)Lcom/facebook/imagepipeline/decoder/b;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/facebook/imagepipeline/k/m;->c:Lcom/facebook/imagepipeline/decoder/b;

    return-object p0
.end method


# virtual methods
.method public a(Lcom/facebook/imagepipeline/k/k;Lcom/facebook/imagepipeline/k/al;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/k/k<",
            "Lcom/facebook/common/references/a<",
            "Lcom/facebook/imagepipeline/g/c;",
            ">;>;",
            "Lcom/facebook/imagepipeline/k/al;",
            ")V"
        }
    .end annotation

    .line 95
    :try_start_0
    invoke-static {}, Lcom/facebook/imagepipeline/l/b;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "DecodeProducer#produceResults"

    .line 96
    invoke-static {v0}, Lcom/facebook/imagepipeline/l/b;->a(Ljava/lang/String;)V

    .line 98
    :cond_0
    invoke-interface {p2}, Lcom/facebook/imagepipeline/k/al;->a()Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object v0

    .line 100
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/request/ImageRequest;->b()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/common/util/d;->b(Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 101
    new-instance v0, Lcom/facebook/imagepipeline/k/m$a;

    iget-boolean v5, p0, Lcom/facebook/imagepipeline/k/m;->h:Z

    iget v6, p0, Lcom/facebook/imagepipeline/k/m;->i:I

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v1 .. v6}, Lcom/facebook/imagepipeline/k/m$a;-><init>(Lcom/facebook/imagepipeline/k/m;Lcom/facebook/imagepipeline/k/k;Lcom/facebook/imagepipeline/k/al;ZI)V

    goto :goto_0

    .line 105
    :cond_1
    new-instance v4, Lcom/facebook/imagepipeline/decoder/e;

    iget-object v0, p0, Lcom/facebook/imagepipeline/k/m;->a:Lcom/facebook/common/memory/a;

    invoke-direct {v4, v0}, Lcom/facebook/imagepipeline/decoder/e;-><init>(Lcom/facebook/common/memory/a;)V

    .line 106
    new-instance v8, Lcom/facebook/imagepipeline/k/m$b;

    iget-object v5, p0, Lcom/facebook/imagepipeline/k/m;->d:Lcom/facebook/imagepipeline/decoder/d;

    iget-boolean v6, p0, Lcom/facebook/imagepipeline/k/m;->h:Z

    iget v7, p0, Lcom/facebook/imagepipeline/k/m;->i:I

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v7}, Lcom/facebook/imagepipeline/k/m$b;-><init>(Lcom/facebook/imagepipeline/k/m;Lcom/facebook/imagepipeline/k/k;Lcom/facebook/imagepipeline/k/al;Lcom/facebook/imagepipeline/decoder/e;Lcom/facebook/imagepipeline/decoder/d;ZI)V

    move-object v0, v8

    .line 115
    :goto_0
    iget-object p1, p0, Lcom/facebook/imagepipeline/k/m;->e:Lcom/facebook/imagepipeline/k/ak;

    invoke-interface {p1, v0, p2}, Lcom/facebook/imagepipeline/k/ak;->a(Lcom/facebook/imagepipeline/k/k;Lcom/facebook/imagepipeline/k/al;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    invoke-static {}, Lcom/facebook/imagepipeline/l/b;->b()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 118
    invoke-static {}, Lcom/facebook/imagepipeline/l/b;->a()V

    :cond_2
    return-void

    :catchall_0
    move-exception p1

    .line 117
    invoke-static {}, Lcom/facebook/imagepipeline/l/b;->b()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 118
    invoke-static {}, Lcom/facebook/imagepipeline/l/b;->a()V

    .line 120
    :cond_3
    throw p1
.end method
