.class public Lcom/facebook/fresco/animation/factory/a;
.super Ljava/lang/Object;
.source "ExperimentalBitmapAnimationDrawableFactory.java"

# interfaces
.implements Lcom/facebook/imagepipeline/f/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/fresco/animation/factory/a$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/facebook/imagepipeline/animated/b/b;

.field private final b:Ljava/util/concurrent/ScheduledExecutorService;

.field private final c:Ljava/util/concurrent/ExecutorService;

.field private final d:Lcom/facebook/common/time/b;

.field private final e:Lcom/facebook/imagepipeline/b/f;

.field private final f:Lcom/facebook/imagepipeline/c/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/c/h<",
            "Lcom/facebook/cache/common/b;",
            "Lcom/facebook/imagepipeline/g/c;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Lcom/facebook/common/internal/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/internal/j<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Lcom/facebook/common/internal/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/internal/j<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/facebook/imagepipeline/animated/b/b;Ljava/util/concurrent/ScheduledExecutorService;Ljava/util/concurrent/ExecutorService;Lcom/facebook/common/time/b;Lcom/facebook/imagepipeline/b/f;Lcom/facebook/imagepipeline/c/h;Lcom/facebook/common/internal/j;Lcom/facebook/common/internal/j;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/animated/b/b;",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            "Ljava/util/concurrent/ExecutorService;",
            "Lcom/facebook/common/time/b;",
            "Lcom/facebook/imagepipeline/b/f;",
            "Lcom/facebook/imagepipeline/c/h<",
            "Lcom/facebook/cache/common/b;",
            "Lcom/facebook/imagepipeline/g/c;",
            ">;",
            "Lcom/facebook/common/internal/j<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/facebook/common/internal/j<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p1, p0, Lcom/facebook/fresco/animation/factory/a;->a:Lcom/facebook/imagepipeline/animated/b/b;

    .line 74
    iput-object p2, p0, Lcom/facebook/fresco/animation/factory/a;->b:Ljava/util/concurrent/ScheduledExecutorService;

    .line 75
    iput-object p3, p0, Lcom/facebook/fresco/animation/factory/a;->c:Ljava/util/concurrent/ExecutorService;

    .line 76
    iput-object p4, p0, Lcom/facebook/fresco/animation/factory/a;->d:Lcom/facebook/common/time/b;

    .line 77
    iput-object p5, p0, Lcom/facebook/fresco/animation/factory/a;->e:Lcom/facebook/imagepipeline/b/f;

    .line 78
    iput-object p6, p0, Lcom/facebook/fresco/animation/factory/a;->f:Lcom/facebook/imagepipeline/c/h;

    .line 79
    iput-object p7, p0, Lcom/facebook/fresco/animation/factory/a;->g:Lcom/facebook/common/internal/j;

    .line 80
    iput-object p8, p0, Lcom/facebook/fresco/animation/factory/a;->h:Lcom/facebook/common/internal/j;

    return-void
.end method

.method private a(Lcom/facebook/imagepipeline/animated/base/d;)Lcom/facebook/fresco/animation/a/a;
    .locals 8

    .line 97
    invoke-direct {p0, p1}, Lcom/facebook/fresco/animation/factory/a;->b(Lcom/facebook/imagepipeline/animated/base/d;)Lcom/facebook/imagepipeline/animated/base/a;

    move-result-object v0

    .line 99
    invoke-direct {p0, p1}, Lcom/facebook/fresco/animation/factory/a;->c(Lcom/facebook/imagepipeline/animated/base/d;)Lcom/facebook/fresco/animation/b/b;

    move-result-object v3

    .line 100
    new-instance v5, Lcom/facebook/fresco/animation/b/c/b;

    invoke-direct {v5, v3, v0}, Lcom/facebook/fresco/animation/b/c/b;-><init>(Lcom/facebook/fresco/animation/b/b;Lcom/facebook/imagepipeline/animated/base/a;)V

    .line 103
    iget-object p1, p0, Lcom/facebook/fresco/animation/factory/a;->h:Lcom/facebook/common/internal/j;

    invoke-interface {p1}, Lcom/facebook/common/internal/j;->b()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v1, 0x0

    if-lez p1, :cond_0

    .line 107
    new-instance v1, Lcom/facebook/fresco/animation/b/b/d;

    invoke-direct {v1, p1}, Lcom/facebook/fresco/animation/b/b/d;-><init>(I)V

    .line 109
    invoke-direct {p0, v5}, Lcom/facebook/fresco/animation/factory/a;->a(Lcom/facebook/fresco/animation/b/c;)Lcom/facebook/fresco/animation/b/b/b;

    move-result-object p1

    move-object v7, p1

    move-object v6, v1

    goto :goto_0

    :cond_0
    move-object v6, v1

    move-object v7, v6

    .line 112
    :goto_0
    new-instance p1, Lcom/facebook/fresco/animation/b/a;

    iget-object v2, p0, Lcom/facebook/fresco/animation/factory/a;->e:Lcom/facebook/imagepipeline/b/f;

    new-instance v4, Lcom/facebook/fresco/animation/b/c/a;

    invoke-direct {v4, v0}, Lcom/facebook/fresco/animation/b/c/a;-><init>(Lcom/facebook/imagepipeline/animated/base/a;)V

    move-object v1, p1

    invoke-direct/range {v1 .. v7}, Lcom/facebook/fresco/animation/b/a;-><init>(Lcom/facebook/imagepipeline/b/f;Lcom/facebook/fresco/animation/b/b;Lcom/facebook/fresco/animation/a/d;Lcom/facebook/fresco/animation/b/c;Lcom/facebook/fresco/animation/b/b/a;Lcom/facebook/fresco/animation/b/b/b;)V

    .line 120
    iget-object v0, p0, Lcom/facebook/fresco/animation/factory/a;->d:Lcom/facebook/common/time/b;

    iget-object v1, p0, Lcom/facebook/fresco/animation/factory/a;->b:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-static {p1, v0, v1}, Lcom/facebook/fresco/animation/a/c;->a(Lcom/facebook/fresco/animation/a/a;Lcom/facebook/common/time/b;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/facebook/fresco/animation/a/b;

    move-result-object p1

    return-object p1
.end method

.method private a(Lcom/facebook/fresco/animation/b/c;)Lcom/facebook/fresco/animation/b/b/b;
    .locals 4

    .line 127
    new-instance v0, Lcom/facebook/fresco/animation/b/b/c;

    iget-object v1, p0, Lcom/facebook/fresco/animation/factory/a;->e:Lcom/facebook/imagepipeline/b/f;

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iget-object v3, p0, Lcom/facebook/fresco/animation/factory/a;->c:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v0, v1, p1, v2, v3}, Lcom/facebook/fresco/animation/b/b/c;-><init>(Lcom/facebook/imagepipeline/b/f;Lcom/facebook/fresco/animation/b/c;Landroid/graphics/Bitmap$Config;Ljava/util/concurrent/ExecutorService;)V

    return-object v0
.end method

.method private b(Lcom/facebook/imagepipeline/animated/base/d;)Lcom/facebook/imagepipeline/animated/base/a;
    .locals 4

    .line 136
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/animated/base/d;->a()Lcom/facebook/imagepipeline/animated/base/b;

    move-result-object v0

    .line 137
    new-instance v1, Landroid/graphics/Rect;

    invoke-interface {v0}, Lcom/facebook/imagepipeline/animated/base/b;->a()I

    move-result v2

    invoke-interface {v0}, Lcom/facebook/imagepipeline/animated/base/b;->b()I

    move-result v0

    const/4 v3, 0x0

    invoke-direct {v1, v3, v3, v2, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 138
    iget-object v0, p0, Lcom/facebook/fresco/animation/factory/a;->a:Lcom/facebook/imagepipeline/animated/b/b;

    invoke-interface {v0, p1, v1}, Lcom/facebook/imagepipeline/animated/b/b;->a(Lcom/facebook/imagepipeline/animated/base/d;Landroid/graphics/Rect;)Lcom/facebook/imagepipeline/animated/base/a;

    move-result-object p1

    return-object p1
.end method

.method private c(Lcom/facebook/imagepipeline/animated/base/d;)Lcom/facebook/fresco/animation/b/b;
    .locals 2

    .line 142
    iget-object v0, p0, Lcom/facebook/fresco/animation/factory/a;->g:Lcom/facebook/common/internal/j;

    invoke-interface {v0}, Lcom/facebook/common/internal/j;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 151
    new-instance p1, Lcom/facebook/fresco/animation/b/a/c;

    invoke-direct {p1}, Lcom/facebook/fresco/animation/b/a/c;-><init>()V

    return-object p1

    .line 148
    :pswitch_0
    new-instance p1, Lcom/facebook/fresco/animation/b/a/b;

    invoke-direct {p1}, Lcom/facebook/fresco/animation/b/a/b;-><init>()V

    return-object p1

    .line 146
    :pswitch_1
    new-instance v0, Lcom/facebook/fresco/animation/b/a/a;

    invoke-direct {p0, p1}, Lcom/facebook/fresco/animation/factory/a;->d(Lcom/facebook/imagepipeline/animated/base/d;)Lcom/facebook/imagepipeline/animated/b/c;

    move-result-object p1

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/facebook/fresco/animation/b/a/a;-><init>(Lcom/facebook/imagepipeline/animated/b/c;Z)V

    return-object v0

    .line 144
    :pswitch_2
    new-instance v0, Lcom/facebook/fresco/animation/b/a/a;

    invoke-direct {p0, p1}, Lcom/facebook/fresco/animation/factory/a;->d(Lcom/facebook/imagepipeline/animated/base/d;)Lcom/facebook/imagepipeline/animated/b/c;

    move-result-object p1

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lcom/facebook/fresco/animation/b/a/a;-><init>(Lcom/facebook/imagepipeline/animated/b/c;Z)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private d(Lcom/facebook/imagepipeline/animated/base/d;)Lcom/facebook/imagepipeline/animated/b/c;
    .locals 2

    .line 157
    new-instance v0, Lcom/facebook/imagepipeline/animated/b/c;

    new-instance v1, Lcom/facebook/fresco/animation/factory/a$a;

    .line 158
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-direct {v1, p1}, Lcom/facebook/fresco/animation/factory/a$a;-><init>(I)V

    iget-object p1, p0, Lcom/facebook/fresco/animation/factory/a;->f:Lcom/facebook/imagepipeline/c/h;

    invoke-direct {v0, v1, p1}, Lcom/facebook/imagepipeline/animated/b/c;-><init>(Lcom/facebook/cache/common/b;Lcom/facebook/imagepipeline/c/h;)V

    return-object v0
.end method


# virtual methods
.method public a(Lcom/facebook/imagepipeline/g/c;)Z
    .locals 0

    .line 85
    instance-of p1, p1, Lcom/facebook/imagepipeline/g/a;

    return p1
.end method

.method public synthetic b(Lcom/facebook/imagepipeline/g/c;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 48
    invoke-virtual {p0, p1}, Lcom/facebook/fresco/animation/factory/a;->c(Lcom/facebook/imagepipeline/g/c;)Lcom/facebook/fresco/animation/c/a;

    move-result-object p1

    return-object p1
.end method

.method public c(Lcom/facebook/imagepipeline/g/c;)Lcom/facebook/fresco/animation/c/a;
    .locals 1

    .line 90
    new-instance v0, Lcom/facebook/fresco/animation/c/a;

    check-cast p1, Lcom/facebook/imagepipeline/g/a;

    .line 92
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/g/a;->f()Lcom/facebook/imagepipeline/animated/base/d;

    move-result-object p1

    .line 91
    invoke-direct {p0, p1}, Lcom/facebook/fresco/animation/factory/a;->a(Lcom/facebook/imagepipeline/animated/base/d;)Lcom/facebook/fresco/animation/a/a;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/facebook/fresco/animation/c/a;-><init>(Lcom/facebook/fresco/animation/a/a;)V

    return-object v0
.end method
