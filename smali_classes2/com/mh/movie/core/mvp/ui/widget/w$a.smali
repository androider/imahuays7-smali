.class Lcom/mh/movie/core/mvp/ui/widget/w$a;
.super Lcom/github/ybq/android/spinkit/b/b;
.source "TrBounce.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mh/movie/core/mvp/ui/widget/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic m:Lcom/mh/movie/core/mvp/ui/widget/w;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/ui/widget/w;I)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/w$a;->m:Lcom/mh/movie/core/mvp/ui/widget/w;

    invoke-direct {p0}, Lcom/github/ybq/android/spinkit/b/b;-><init>()V

    const/4 p1, 0x0

    .line 42
    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/ui/widget/w$a;->c(F)V

    .line 43
    invoke-virtual {p0, p2}, Lcom/mh/movie/core/mvp/ui/widget/w$a;->a(I)V

    return-void
.end method


# virtual methods
.method public a()Landroid/animation/ValueAnimator;
    .locals 6

    const/4 v0, 0x4

    .line 48
    new-array v1, v0, [F

    fill-array-data v1, :array_0

    .line 49
    new-instance v2, Lcom/github/ybq/android/spinkit/a/d;

    invoke-direct {v2, p0}, Lcom/github/ybq/android/spinkit/a/d;-><init>(Lcom/github/ybq/android/spinkit/b/f;)V

    new-array v0, v0, [Ljava/lang/Float;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v0, v5

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v0, v5

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    const/4 v5, 0x2

    aput-object v4, v0, v5

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const/4 v4, 0x3

    aput-object v3, v0, v4

    invoke-virtual {v2, v1, v0}, Lcom/github/ybq/android/spinkit/a/d;->a([F[Ljava/lang/Float;)Lcom/github/ybq/android/spinkit/a/d;

    move-result-object v0

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Lcom/github/ybq/android/spinkit/a/d;->a(J)Lcom/github/ybq/android/spinkit/a/d;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/github/ybq/android/spinkit/a/d;->a([F)Lcom/github/ybq/android/spinkit/a/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/ybq/android/spinkit/a/d;->a()Landroid/animation/ObjectAnimator;

    move-result-object v0

    return-object v0

    nop

    :array_0
    .array-data 4
        0x0
        0x3ecccccd    # 0.4f
        0x3f4ccccd    # 0.8f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public a(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 3

    .line 54
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/w$a;->q()Landroid/graphics/Rect;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v0, 0xc

    .line 56
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/w$a;->q()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/w$a;->q()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    int-to-float v2, v2

    int-to-float v0, v0

    invoke-virtual {p1, v1, v2, v0, p2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method
