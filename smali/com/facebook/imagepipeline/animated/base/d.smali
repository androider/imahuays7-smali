.class public Lcom/facebook/imagepipeline/animated/base/d;
.super Ljava/lang/Object;
.source "AnimatedImageResult.java"


# instance fields
.field private final a:Lcom/facebook/imagepipeline/animated/base/b;

.field private final b:I

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
.end field

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/common/references/a<",
            "Landroid/graphics/Bitmap;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/facebook/imagepipeline/animated/base/b;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-static {p1}, Lcom/facebook/common/internal/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/facebook/imagepipeline/animated/base/b;

    iput-object p1, p0, Lcom/facebook/imagepipeline/animated/base/d;->a:Lcom/facebook/imagepipeline/animated/base/b;

    const/4 p1, 0x0

    .line 36
    iput p1, p0, Lcom/facebook/imagepipeline/animated/base/d;->b:I

    return-void
.end method

.method constructor <init>(Lcom/facebook/imagepipeline/animated/base/e;)V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/animated/base/e;->a()Lcom/facebook/imagepipeline/animated/base/b;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/common/internal/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/imagepipeline/animated/base/b;

    iput-object v0, p0, Lcom/facebook/imagepipeline/animated/base/d;->a:Lcom/facebook/imagepipeline/animated/base/b;

    .line 29
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/animated/base/e;->c()I

    move-result v0

    iput v0, p0, Lcom/facebook/imagepipeline/animated/base/d;->b:I

    .line 30
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/animated/base/e;->b()Lcom/facebook/common/references/a;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/imagepipeline/animated/base/d;->c:Lcom/facebook/common/references/a;

    .line 31
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/animated/base/e;->d()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/imagepipeline/animated/base/d;->d:Ljava/util/List;

    return-void
.end method

.method public static a(Lcom/facebook/imagepipeline/animated/base/b;)Lcom/facebook/imagepipeline/animated/base/d;
    .locals 1

    .line 46
    new-instance v0, Lcom/facebook/imagepipeline/animated/base/d;

    invoke-direct {v0, p0}, Lcom/facebook/imagepipeline/animated/base/d;-><init>(Lcom/facebook/imagepipeline/animated/base/b;)V

    return-object v0
.end method

.method public static b(Lcom/facebook/imagepipeline/animated/base/b;)Lcom/facebook/imagepipeline/animated/base/e;
    .locals 1

    .line 56
    new-instance v0, Lcom/facebook/imagepipeline/animated/base/e;

    invoke-direct {v0, p0}, Lcom/facebook/imagepipeline/animated/base/e;-><init>(Lcom/facebook/imagepipeline/animated/base/b;)V

    return-object v0
.end method


# virtual methods
.method public a()Lcom/facebook/imagepipeline/animated/base/b;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/base/d;->a:Lcom/facebook/imagepipeline/animated/base/b;

    return-object v0
.end method

.method public declared-synchronized b()V
    .locals 2

    monitor-enter p0

    .line 119
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/base/d;->c:Lcom/facebook/common/references/a;

    invoke-static {v0}, Lcom/facebook/common/references/a;->c(Lcom/facebook/common/references/a;)V

    const/4 v0, 0x0

    .line 120
    iput-object v0, p0, Lcom/facebook/imagepipeline/animated/base/d;->c:Lcom/facebook/common/references/a;

    .line 121
    iget-object v1, p0, Lcom/facebook/imagepipeline/animated/base/d;->d:Ljava/util/List;

    invoke-static {v1}, Lcom/facebook/common/references/a;->a(Ljava/lang/Iterable;)V

    .line 122
    iput-object v0, p0, Lcom/facebook/imagepipeline/animated/base/d;->d:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 118
    monitor-exit p0

    throw v0
.end method
