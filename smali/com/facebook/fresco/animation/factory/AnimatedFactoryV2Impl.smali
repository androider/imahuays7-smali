.class public Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;
.super Ljava/lang/Object;
.source "AnimatedFactoryV2Impl.java"

# interfaces
.implements Lcom/facebook/imagepipeline/animated/a/a;


# annotations
.annotation build Lcom/facebook/common/internal/d;
.end annotation

.annotation build Ljavax/annotation/concurrent/NotThreadSafe;
.end annotation


# instance fields
.field private final a:Lcom/facebook/imagepipeline/b/f;

.field private final b:Lcom/facebook/imagepipeline/d/e;

.field private final c:Lcom/facebook/imagepipeline/c/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/c/h<",
            "Lcom/facebook/cache/common/b;",
            "Lcom/facebook/imagepipeline/g/c;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/facebook/imagepipeline/animated/a/d;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private e:Lcom/facebook/imagepipeline/animated/b/b;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private f:Lcom/facebook/imagepipeline/animated/c/a;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private g:Lcom/facebook/imagepipeline/f/a;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/facebook/imagepipeline/b/f;Lcom/facebook/imagepipeline/d/e;Lcom/facebook/imagepipeline/c/h;)V
    .locals 0
    .annotation build Lcom/facebook/common/internal/d;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/b/f;",
            "Lcom/facebook/imagepipeline/d/e;",
            "Lcom/facebook/imagepipeline/c/h<",
            "Lcom/facebook/cache/common/b;",
            "Lcom/facebook/imagepipeline/g/c;",
            ">;)V"
        }
    .end annotation

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;->a:Lcom/facebook/imagepipeline/b/f;

    .line 64
    iput-object p2, p0, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;->b:Lcom/facebook/imagepipeline/d/e;

    .line 65
    iput-object p3, p0, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;->c:Lcom/facebook/imagepipeline/c/h;

    return-void
.end method

.method private a()Lcom/facebook/fresco/animation/factory/a;
    .locals 10

    .line 106
    new-instance v7, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl$3;

    invoke-direct {v7, p0}, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl$3;-><init>(Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;)V

    .line 113
    new-instance v3, Lcom/facebook/common/b/c;

    iget-object v0, p0, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;->b:Lcom/facebook/imagepipeline/d/e;

    .line 114
    invoke-interface {v0}, Lcom/facebook/imagepipeline/d/e;->c()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-direct {v3, v0}, Lcom/facebook/common/b/c;-><init>(Ljava/util/concurrent/Executor;)V

    .line 116
    new-instance v8, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl$4;

    invoke-direct {v8, p0}, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl$4;-><init>(Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;)V

    .line 123
    new-instance v9, Lcom/facebook/fresco/animation/factory/a;

    .line 124
    invoke-direct {p0}, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;->d()Lcom/facebook/imagepipeline/animated/b/b;

    move-result-object v1

    .line 125
    invoke-static {}, Lcom/facebook/common/b/i;->b()Lcom/facebook/common/b/i;

    move-result-object v2

    .line 127
    invoke-static {}, Lcom/facebook/common/time/RealtimeSinceBootClock;->get()Lcom/facebook/common/time/RealtimeSinceBootClock;

    move-result-object v4

    iget-object v5, p0, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;->a:Lcom/facebook/imagepipeline/b/f;

    iget-object v6, p0, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;->c:Lcom/facebook/imagepipeline/c/h;

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/facebook/fresco/animation/factory/a;-><init>(Lcom/facebook/imagepipeline/animated/b/b;Ljava/util/concurrent/ScheduledExecutorService;Ljava/util/concurrent/ExecutorService;Lcom/facebook/common/time/b;Lcom/facebook/imagepipeline/b/f;Lcom/facebook/imagepipeline/c/h;Lcom/facebook/common/internal/j;Lcom/facebook/common/internal/j;)V

    return-object v9
.end method

.method static synthetic a(Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;)Lcom/facebook/imagepipeline/animated/a/d;
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;->c()Lcom/facebook/imagepipeline/animated/a/d;

    move-result-object p0

    return-object p0
.end method

.method private b()Lcom/facebook/imagepipeline/animated/c/a;
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;->f:Lcom/facebook/imagepipeline/animated/c/a;

    if-nez v0, :cond_0

    .line 136
    new-instance v0, Lcom/facebook/imagepipeline/animated/c/a;

    invoke-direct {v0}, Lcom/facebook/imagepipeline/animated/c/a;-><init>()V

    iput-object v0, p0, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;->f:Lcom/facebook/imagepipeline/animated/c/a;

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;->f:Lcom/facebook/imagepipeline/animated/c/a;

    return-object v0
.end method

.method static synthetic b(Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;)Lcom/facebook/imagepipeline/animated/c/a;
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;->b()Lcom/facebook/imagepipeline/animated/c/a;

    move-result-object p0

    return-object p0
.end method

.method private c()Lcom/facebook/imagepipeline/animated/a/d;
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;->d:Lcom/facebook/imagepipeline/animated/a/d;

    if-nez v0, :cond_0

    .line 143
    invoke-direct {p0}, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;->e()Lcom/facebook/imagepipeline/animated/a/d;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;->d:Lcom/facebook/imagepipeline/animated/a/d;

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;->d:Lcom/facebook/imagepipeline/animated/a/d;

    return-object v0
.end method

.method private d()Lcom/facebook/imagepipeline/animated/b/b;
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;->e:Lcom/facebook/imagepipeline/animated/b/b;

    if-nez v0, :cond_0

    .line 150
    new-instance v0, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl$5;

    invoke-direct {v0, p0}, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl$5;-><init>(Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;)V

    iput-object v0, p0, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;->e:Lcom/facebook/imagepipeline/animated/b/b;

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;->e:Lcom/facebook/imagepipeline/animated/b/b;

    return-object v0
.end method

.method private e()Lcom/facebook/imagepipeline/animated/a/d;
    .locals 3

    .line 164
    new-instance v0, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl$6;

    invoke-direct {v0, p0}, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl$6;-><init>(Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;)V

    .line 171
    new-instance v1, Lcom/facebook/imagepipeline/animated/a/e;

    iget-object v2, p0, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;->a:Lcom/facebook/imagepipeline/b/f;

    invoke-direct {v1, v0, v2}, Lcom/facebook/imagepipeline/animated/a/e;-><init>(Lcom/facebook/imagepipeline/animated/b/b;Lcom/facebook/imagepipeline/b/f;)V

    return-object v1
.end method


# virtual methods
.method public a(Landroid/graphics/Bitmap$Config;)Lcom/facebook/imagepipeline/decoder/b;
    .locals 1

    .line 79
    new-instance v0, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl$1;

    invoke-direct {v0, p0, p1}, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl$1;-><init>(Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;Landroid/graphics/Bitmap$Config;)V

    return-object v0
.end method

.method public a(Landroid/content/Context;)Lcom/facebook/imagepipeline/f/a;
    .locals 0
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 71
    iget-object p1, p0, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;->g:Lcom/facebook/imagepipeline/f/a;

    if-nez p1, :cond_0

    .line 72
    invoke-direct {p0}, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;->a()Lcom/facebook/fresco/animation/factory/a;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;->g:Lcom/facebook/imagepipeline/f/a;

    .line 74
    :cond_0
    iget-object p1, p0, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;->g:Lcom/facebook/imagepipeline/f/a;

    return-object p1
.end method

.method public b(Landroid/graphics/Bitmap$Config;)Lcom/facebook/imagepipeline/decoder/b;
    .locals 1

    .line 93
    new-instance v0, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl$2;

    invoke-direct {v0, p0, p1}, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl$2;-><init>(Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;Landroid/graphics/Bitmap$Config;)V

    return-object v0
.end method
