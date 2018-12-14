.class public Lcom/facebook/fresco/animation/b/c/b;
.super Ljava/lang/Object;
.source "AnimatedDrawableBackendFrameRenderer.java"

# interfaces
.implements Lcom/facebook/fresco/animation/b/c;


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
.field private final b:Lcom/facebook/fresco/animation/b/b;

.field private c:Lcom/facebook/imagepipeline/animated/base/a;

.field private d:Lcom/facebook/imagepipeline/animated/b/d;

.field private final e:Lcom/facebook/imagepipeline/animated/b/d$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    const-class v0, Lcom/facebook/fresco/animation/b/c/b;

    sput-object v0, Lcom/facebook/fresco/animation/b/c/b;->a:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/fresco/animation/b/b;Lcom/facebook/imagepipeline/animated/base/a;)V
    .locals 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Lcom/facebook/fresco/animation/b/c/b$1;

    invoke-direct {v0, p0}, Lcom/facebook/fresco/animation/b/c/b$1;-><init>(Lcom/facebook/fresco/animation/b/c/b;)V

    iput-object v0, p0, Lcom/facebook/fresco/animation/b/c/b;->e:Lcom/facebook/imagepipeline/animated/b/d$a;

    .line 48
    iput-object p1, p0, Lcom/facebook/fresco/animation/b/c/b;->b:Lcom/facebook/fresco/animation/b/b;

    .line 49
    iput-object p2, p0, Lcom/facebook/fresco/animation/b/c/b;->c:Lcom/facebook/imagepipeline/animated/base/a;

    .line 51
    new-instance p1, Lcom/facebook/imagepipeline/animated/b/d;

    iget-object p2, p0, Lcom/facebook/fresco/animation/b/c/b;->c:Lcom/facebook/imagepipeline/animated/base/a;

    iget-object v0, p0, Lcom/facebook/fresco/animation/b/c/b;->e:Lcom/facebook/imagepipeline/animated/b/d$a;

    invoke-direct {p1, p2, v0}, Lcom/facebook/imagepipeline/animated/b/d;-><init>(Lcom/facebook/imagepipeline/animated/base/a;Lcom/facebook/imagepipeline/animated/b/d$a;)V

    iput-object p1, p0, Lcom/facebook/fresco/animation/b/c/b;->d:Lcom/facebook/imagepipeline/animated/b/d;

    return-void
.end method

.method static synthetic a(Lcom/facebook/fresco/animation/b/c/b;)Lcom/facebook/fresco/animation/b/b;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/facebook/fresco/animation/b/c/b;->b:Lcom/facebook/fresco/animation/b/b;

    return-object p0
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/facebook/fresco/animation/b/c/b;->c:Lcom/facebook/imagepipeline/animated/base/a;

    invoke-interface {v0}, Lcom/facebook/imagepipeline/animated/base/a;->c()I

    move-result v0

    return v0
.end method

.method public a(Landroid/graphics/Rect;)V
    .locals 2
    .param p1    # Landroid/graphics/Rect;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 56
    iget-object v0, p0, Lcom/facebook/fresco/animation/b/c/b;->c:Lcom/facebook/imagepipeline/animated/base/a;

    invoke-interface {v0, p1}, Lcom/facebook/imagepipeline/animated/base/a;->a(Landroid/graphics/Rect;)Lcom/facebook/imagepipeline/animated/base/a;

    move-result-object p1

    .line 57
    iget-object v0, p0, Lcom/facebook/fresco/animation/b/c/b;->c:Lcom/facebook/imagepipeline/animated/base/a;

    if-eq p1, v0, :cond_0

    .line 58
    iput-object p1, p0, Lcom/facebook/fresco/animation/b/c/b;->c:Lcom/facebook/imagepipeline/animated/base/a;

    .line 59
    new-instance p1, Lcom/facebook/imagepipeline/animated/b/d;

    iget-object v0, p0, Lcom/facebook/fresco/animation/b/c/b;->c:Lcom/facebook/imagepipeline/animated/base/a;

    iget-object v1, p0, Lcom/facebook/fresco/animation/b/c/b;->e:Lcom/facebook/imagepipeline/animated/b/d$a;

    invoke-direct {p1, v0, v1}, Lcom/facebook/imagepipeline/animated/b/d;-><init>(Lcom/facebook/imagepipeline/animated/base/a;Lcom/facebook/imagepipeline/animated/b/d$a;)V

    iput-object p1, p0, Lcom/facebook/fresco/animation/b/c/b;->d:Lcom/facebook/imagepipeline/animated/b/d;

    :cond_0
    return-void
.end method

.method public a(ILandroid/graphics/Bitmap;)Z
    .locals 4

    const/4 v0, 0x1

    .line 76
    :try_start_0
    iget-object v1, p0, Lcom/facebook/fresco/animation/b/c/b;->d:Lcom/facebook/imagepipeline/animated/b/d;

    invoke-virtual {v1, p1, p2}, Lcom/facebook/imagepipeline/animated/b/d;->a(ILandroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception p2

    .line 78
    sget-object v1, Lcom/facebook/fresco/animation/b/c/b;->a:Ljava/lang/Class;

    const-string v2, "Rendering of frame unsuccessful. Frame number: %d"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v3, 0x0

    aput-object p1, v0, v3

    invoke-static {v1, p2, v2, v0}, Lcom/facebook/common/c/a;->b(Ljava/lang/Class;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return v3
.end method

.method public b()I
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/facebook/fresco/animation/b/c/b;->c:Lcom/facebook/imagepipeline/animated/base/a;

    invoke-interface {v0}, Lcom/facebook/imagepipeline/animated/base/a;->d()I

    move-result v0

    return v0
.end method
