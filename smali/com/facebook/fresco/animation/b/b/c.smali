.class public Lcom/facebook/fresco/animation/b/b/c;
.super Ljava/lang/Object;
.source "DefaultBitmapFramePreparer.java"

# interfaces
.implements Lcom/facebook/fresco/animation/b/b/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/fresco/animation/b/b/c$a;
    }
.end annotation


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
.field private final b:Lcom/facebook/imagepipeline/b/f;

.field private final c:Lcom/facebook/fresco/animation/b/c;

.field private final d:Landroid/graphics/Bitmap$Config;

.field private final e:Ljava/util/concurrent/ExecutorService;

.field private final f:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    const-class v0, Lcom/facebook/fresco/animation/b/b/c;

    sput-object v0, Lcom/facebook/fresco/animation/b/b/c;->a:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/imagepipeline/b/f;Lcom/facebook/fresco/animation/b/c;Landroid/graphics/Bitmap$Config;Ljava/util/concurrent/ExecutorService;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/facebook/fresco/animation/b/b/c;->b:Lcom/facebook/imagepipeline/b/f;

    .line 41
    iput-object p2, p0, Lcom/facebook/fresco/animation/b/b/c;->c:Lcom/facebook/fresco/animation/b/c;

    .line 42
    iput-object p3, p0, Lcom/facebook/fresco/animation/b/b/c;->d:Landroid/graphics/Bitmap$Config;

    .line 43
    iput-object p4, p0, Lcom/facebook/fresco/animation/b/b/c;->e:Ljava/util/concurrent/ExecutorService;

    .line 44
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/facebook/fresco/animation/b/b/c;->f:Landroid/util/SparseArray;

    return-void
.end method

.method private static a(Lcom/facebook/fresco/animation/a/a;I)I
    .locals 0

    .line 77
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    mul-int/lit8 p0, p0, 0x1f

    add-int/2addr p0, p1

    return p0
.end method

.method static synthetic a(Lcom/facebook/fresco/animation/b/b/c;)Landroid/util/SparseArray;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/facebook/fresco/animation/b/b/c;->f:Landroid/util/SparseArray;

    return-object p0
.end method

.method static synthetic a()Ljava/lang/Class;
    .locals 1

    .line 24
    sget-object v0, Lcom/facebook/fresco/animation/b/b/c;->a:Ljava/lang/Class;

    return-object v0
.end method

.method static synthetic b(Lcom/facebook/fresco/animation/b/b/c;)Landroid/graphics/Bitmap$Config;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/facebook/fresco/animation/b/b/c;->d:Landroid/graphics/Bitmap$Config;

    return-object p0
.end method

.method static synthetic c(Lcom/facebook/fresco/animation/b/b/c;)Lcom/facebook/imagepipeline/b/f;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/facebook/fresco/animation/b/b/c;->b:Lcom/facebook/imagepipeline/b/f;

    return-object p0
.end method

.method static synthetic d(Lcom/facebook/fresco/animation/b/b/c;)Lcom/facebook/fresco/animation/b/c;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/facebook/fresco/animation/b/b/c;->c:Lcom/facebook/fresco/animation/b/c;

    return-object p0
.end method


# virtual methods
.method public a(Lcom/facebook/fresco/animation/b/b;Lcom/facebook/fresco/animation/a/a;I)Z
    .locals 10

    .line 53
    invoke-static {p2, p3}, Lcom/facebook/fresco/animation/b/b/c;->a(Lcom/facebook/fresco/animation/a/a;I)I

    move-result v6

    .line 54
    iget-object v7, p0, Lcom/facebook/fresco/animation/b/b/c;->f:Landroid/util/SparseArray;

    monitor-enter v7

    .line 56
    :try_start_0
    iget-object v0, p0, Lcom/facebook/fresco/animation/b/b/c;->f:Landroid/util/SparseArray;

    invoke-virtual {v0, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    const/4 v8, 0x1

    if-eqz v0, :cond_0

    .line 57
    sget-object p1, Lcom/facebook/fresco/animation/b/b/c;->a:Ljava/lang/Class;

    const-string p2, "Already scheduled decode job for frame %d"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-static {p1, p2, p3}, Lcom/facebook/common/c/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 58
    monitor-exit v7

    return v8

    .line 61
    :cond_0
    invoke-interface {p1, p3}, Lcom/facebook/fresco/animation/b/b;->c(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 62
    sget-object p1, Lcom/facebook/fresco/animation/b/b/c;->a:Ljava/lang/Class;

    const-string p2, "Frame %d is cached already."

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-static {p1, p2, p3}, Lcom/facebook/common/c/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 63
    monitor-exit v7

    return v8

    .line 65
    :cond_1
    new-instance v9, Lcom/facebook/fresco/animation/b/b/c$a;

    move-object v0, v9

    move-object v1, p0

    move-object v2, p2

    move-object v3, p1

    move v4, p3

    move v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/facebook/fresco/animation/b/b/c$a;-><init>(Lcom/facebook/fresco/animation/b/b/c;Lcom/facebook/fresco/animation/a/a;Lcom/facebook/fresco/animation/b/b;II)V

    .line 70
    iget-object p1, p0, Lcom/facebook/fresco/animation/b/b/c;->f:Landroid/util/SparseArray;

    invoke-virtual {p1, v6, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 71
    iget-object p1, p0, Lcom/facebook/fresco/animation/b/b/c;->e:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p1, v9}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 72
    monitor-exit v7

    return v8

    :catchall_0
    move-exception p1

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
