.class public Lcom/mh/movie/core/mvp/ui/widget/badge/b;
.super Landroid/animation/ValueAnimator;
.source "BadgeAnimator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mh/movie/core/mvp/ui/widget/badge/b$a;
    }
.end annotation


# instance fields
.field private a:[[Lcom/mh/movie/core/mvp/ui/widget/badge/b$a;

.field private b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;Landroid/graphics/PointF;Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;)V
    .locals 2

    .line 24
    invoke-direct {p0}, Landroid/animation/ValueAnimator;-><init>()V

    .line 25
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/b;->b:Ljava/lang/ref/WeakReference;

    const/4 p3, 0x2

    .line 26
    new-array p3, p3, [F

    fill-array-data p3, :array_0

    invoke-virtual {p0, p3}, Lcom/mh/movie/core/mvp/ui/widget/badge/b;->setFloatValues([F)V

    const-wide/16 v0, 0x1f4

    .line 27
    invoke-virtual {p0, v0, v1}, Lcom/mh/movie/core/mvp/ui/widget/badge/b;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 28
    invoke-direct {p0, p1, p2}, Lcom/mh/movie/core/mvp/ui/widget/badge/b;->a(Landroid/graphics/Bitmap;Landroid/graphics/PointF;)[[Lcom/mh/movie/core/mvp/ui/widget/badge/b$a;

    move-result-object p1

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/b;->a:[[Lcom/mh/movie/core/mvp/ui/widget/badge/b$a;

    .line 29
    new-instance p1, Lcom/mh/movie/core/mvp/ui/widget/badge/b$1;

    invoke-direct {p1, p0}, Lcom/mh/movie/core/mvp/ui/widget/badge/b$1;-><init>(Lcom/mh/movie/core/mvp/ui/widget/badge/b;)V

    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/ui/widget/badge/b;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 40
    new-instance p1, Lcom/mh/movie/core/mvp/ui/widget/badge/b$2;

    invoke-direct {p1, p0}, Lcom/mh/movie/core/mvp/ui/widget/badge/b$2;-><init>(Lcom/mh/movie/core/mvp/ui/widget/badge/b;)V

    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/ui/widget/badge/b;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method static synthetic a(Lcom/mh/movie/core/mvp/ui/widget/badge/b;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/b;->b:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method private a(Landroid/graphics/Bitmap;Landroid/graphics/PointF;)[[Lcom/mh/movie/core/mvp/ui/widget/badge/b$a;
    .locals 13

    .line 63
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 64
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 65
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40c00000    # 6.0f

    div-float/2addr v2, v3

    .line 66
    iget v3, p2, Landroid/graphics/PointF;->x:F

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    sub-float/2addr v3, v4

    .line 67
    iget p2, p2, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v5

    sub-float/2addr p2, v4

    int-to-float v4, v1

    div-float/2addr v4, v2

    float-to-int v4, v4

    int-to-float v5, v0

    div-float/2addr v5, v2

    float-to-int v5, v5

    .line 68
    filled-new-array {v4, v5}, [I

    move-result-object v4

    const-class v5, Lcom/mh/movie/core/mvp/ui/widget/badge/b$a;

    invoke-static {v5, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[Lcom/mh/movie/core/mvp/ui/widget/badge/b$a;

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 69
    :goto_0
    array-length v7, v4

    if-ge v6, v7, :cond_1

    const/4 v7, 0x0

    .line 70
    :goto_1
    aget-object v8, v4, v6

    array-length v8, v8

    if-ge v7, v8, :cond_0

    .line 71
    new-instance v8, Lcom/mh/movie/core/mvp/ui/widget/badge/b$a;

    invoke-direct {v8, p0}, Lcom/mh/movie/core/mvp/ui/widget/badge/b$a;-><init>(Lcom/mh/movie/core/mvp/ui/widget/badge/b;)V

    int-to-float v9, v7

    mul-float v9, v9, v2

    float-to-int v10, v9

    int-to-float v11, v6

    mul-float v11, v11, v2

    float-to-int v12, v11

    .line 72
    invoke-virtual {p1, v10, v12}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v10

    iput v10, v8, Lcom/mh/movie/core/mvp/ui/widget/badge/b$a;->e:I

    add-float/2addr v9, v3

    .line 73
    iput v9, v8, Lcom/mh/movie/core/mvp/ui/widget/badge/b$a;->b:F

    add-float/2addr v11, p2

    .line 74
    iput v11, v8, Lcom/mh/movie/core/mvp/ui/widget/badge/b$a;->c:F

    .line 75
    iput v2, v8, Lcom/mh/movie/core/mvp/ui/widget/badge/b$a;->d:F

    .line 76
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v9

    iput v9, v8, Lcom/mh/movie/core/mvp/ui/widget/badge/b$a;->f:I

    .line 77
    aget-object v9, v4, v6

    aput-object v8, v9, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 80
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    return-object v4
.end method


# virtual methods
.method public a(Landroid/graphics/Canvas;)V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 52
    :goto_0
    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/b;->a:[[Lcom/mh/movie/core/mvp/ui/widget/badge/b$a;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    const/4 v2, 0x0

    .line 53
    :goto_1
    iget-object v3, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/b;->a:[[Lcom/mh/movie/core/mvp/ui/widget/badge/b$a;

    aget-object v3, v3, v1

    array-length v3, v3

    if-ge v2, v3, :cond_0

    .line 54
    iget-object v3, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/b;->a:[[Lcom/mh/movie/core/mvp/ui/widget/badge/b$a;

    aget-object v3, v3, v1

    aget-object v3, v3, v2

    .line 55
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/badge/b;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    .line 56
    invoke-virtual {v3, v4, p1}, Lcom/mh/movie/core/mvp/ui/widget/badge/b$a;->a(FLandroid/graphics/Canvas;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
