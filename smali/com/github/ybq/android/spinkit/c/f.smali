.class public Lcom/github/ybq/android/spinkit/c/f;
.super Lcom/github/ybq/android/spinkit/b/g;
.source "FoldingCube.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/ybq/android/spinkit/c/f$a;
    }
.end annotation


# instance fields
.field private m:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Lcom/github/ybq/android/spinkit/b/g;-><init>()V

    const/4 v0, 0x0

    .line 19
    iput-boolean v0, p0, Lcom/github/ybq/android/spinkit/c/f;->m:Z

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Canvas;)V
    .locals 6

    .line 75
    invoke-virtual {p0}, Lcom/github/ybq/android/spinkit/c/f;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/github/ybq/android/spinkit/c/f;->b(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    const/4 v1, 0x0

    .line 76
    :goto_0
    invoke-virtual {p0}, Lcom/github/ybq/android/spinkit/c/f;->r()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 77
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    mul-int/lit8 v3, v1, 0x5a

    add-int/lit8 v3, v3, 0x2d

    int-to-float v3, v3

    .line 78
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p1, v3, v4, v5}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 79
    invoke-virtual {p0, v1}, Lcom/github/ybq/android/spinkit/c/f;->h(I)Lcom/github/ybq/android/spinkit/b/f;

    move-result-object v3

    .line 80
    invoke-virtual {v3, p1}, Lcom/github/ybq/android/spinkit/b/f;->draw(Landroid/graphics/Canvas;)V

    .line 81
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 7

    .line 40
    invoke-super {p0, p1}, Lcom/github/ybq/android/spinkit/b/g;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 41
    invoke-virtual {p0, p1}, Lcom/github/ybq/android/spinkit/c/f;->b(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p1

    .line 42
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 43
    iget-boolean v1, p0, Lcom/github/ybq/android/spinkit/c/f;->m:Z

    if-eqz v1, :cond_0

    mul-int v0, v0, v0

    .line 44
    div-int/lit8 v0, v0, 0x2

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-int v0, v0

    .line 47
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    sub-int/2addr v1, v0

    div-int/lit8 v1, v1, 0x2

    .line 48
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    sub-int/2addr v2, v0

    div-int/lit8 v2, v2, 0x2

    .line 49
    new-instance v3, Landroid/graphics/Rect;

    iget v4, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v1

    iget v5, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v2

    iget v6, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v6, v1

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p1, v2

    invoke-direct {v3, v4, v5, v6, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object p1, v3

    .line 57
    :cond_0
    iget v1, p1, Landroid/graphics/Rect;->left:I

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v1, v0

    add-int/lit8 v1, v1, 0x1

    .line 58
    iget v2, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v0

    add-int/lit8 v2, v2, 0x1

    const/4 v0, 0x0

    .line 59
    :goto_0
    invoke-virtual {p0}, Lcom/github/ybq/android/spinkit/c/f;->r()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 60
    invoke-virtual {p0, v0}, Lcom/github/ybq/android/spinkit/c/f;->h(I)Lcom/github/ybq/android/spinkit/b/f;

    move-result-object v3

    .line 61
    iget v4, p1, Landroid/graphics/Rect;->left:I

    iget v5, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v3, v4, v5, v1, v2}, Lcom/github/ybq/android/spinkit/b/f;->a(IIII)V

    .line 67
    invoke-virtual {v3}, Lcom/github/ybq/android/spinkit/b/f;->q()Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Lcom/github/ybq/android/spinkit/b/f;->f(F)V

    .line 68
    invoke-virtual {v3}, Lcom/github/ybq/android/spinkit/b/f;->q()Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Lcom/github/ybq/android/spinkit/b/f;->g(F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public s()[Lcom/github/ybq/android/spinkit/b/f;
    .locals 4

    const/4 v0, 0x4

    .line 24
    new-array v0, v0, [Lcom/github/ybq/android/spinkit/c/f$a;

    const/4 v1, 0x0

    .line 26
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 27
    new-instance v2, Lcom/github/ybq/android/spinkit/c/f$a;

    invoke-direct {v2, p0}, Lcom/github/ybq/android/spinkit/c/f$a;-><init>(Lcom/github/ybq/android/spinkit/c/f;)V

    aput-object v2, v0, v1

    .line 29
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v2, v3, :cond_0

    .line 30
    aget-object v2, v0, v1

    mul-int/lit16 v3, v1, 0x12c

    invoke-virtual {v2, v3}, Lcom/github/ybq/android/spinkit/c/f$a;->g(I)Lcom/github/ybq/android/spinkit/b/f;

    goto :goto_1

    .line 32
    :cond_0
    aget-object v2, v0, v1

    mul-int/lit16 v3, v1, 0x12c

    add-int/lit16 v3, v3, -0x4b0

    invoke-virtual {v2, v3}, Lcom/github/ybq/android/spinkit/c/f$a;->g(I)Lcom/github/ybq/android/spinkit/b/f;

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method
