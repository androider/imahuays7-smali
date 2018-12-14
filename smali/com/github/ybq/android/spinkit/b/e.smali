.class public abstract Lcom/github/ybq/android/spinkit/b/e;
.super Lcom/github/ybq/android/spinkit/b/f;
.source "ShapeSprite.java"


# instance fields
.field private m:Landroid/graphics/Paint;

.field private n:I

.field private o:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 17
    invoke-direct {p0}, Lcom/github/ybq/android/spinkit/b/f;-><init>()V

    const/4 v0, -0x1

    .line 18
    invoke-virtual {p0, v0}, Lcom/github/ybq/android/spinkit/b/e;->a(I)V

    .line 19
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/github/ybq/android/spinkit/b/e;->m:Landroid/graphics/Paint;

    .line 20
    iget-object v0, p0, Lcom/github/ybq/android/spinkit/b/e;->m:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 21
    iget-object v0, p0, Lcom/github/ybq/android/spinkit/b/e;->m:Landroid/graphics/Paint;

    iget v1, p0, Lcom/github/ybq/android/spinkit/b/e;->n:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method private r()V
    .locals 2

    .line 47
    invoke-virtual {p0}, Lcom/github/ybq/android/spinkit/b/e;->getAlpha()I

    move-result v0

    shr-int/lit8 v1, v0, 0x7

    add-int/2addr v0, v1

    .line 49
    iget v1, p0, Lcom/github/ybq/android/spinkit/b/e;->o:I

    ushr-int/lit8 v1, v1, 0x18

    mul-int v1, v1, v0

    shr-int/lit8 v0, v1, 0x8

    .line 51
    iget v1, p0, Lcom/github/ybq/android/spinkit/b/e;->o:I

    shl-int/lit8 v1, v1, 0x8

    ushr-int/lit8 v1, v1, 0x8

    shl-int/lit8 v0, v0, 0x18

    or-int/2addr v0, v1

    iput v0, p0, Lcom/github/ybq/android/spinkit/b/e;->n:I

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    .line 26
    iput p1, p0, Lcom/github/ybq/android/spinkit/b/e;->o:I

    .line 27
    invoke-direct {p0}, Lcom/github/ybq/android/spinkit/b/e;->r()V

    return-void
.end method

.method public abstract a(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
.end method

.method protected final a_(Landroid/graphics/Canvas;)V
    .locals 2

    .line 61
    iget-object v0, p0, Lcom/github/ybq/android/spinkit/b/e;->m:Landroid/graphics/Paint;

    iget v1, p0, Lcom/github/ybq/android/spinkit/b/e;->n:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 62
    iget-object v0, p0, Lcom/github/ybq/android/spinkit/b/e;->m:Landroid/graphics/Paint;

    invoke-virtual {p0, p1, v0}, Lcom/github/ybq/android/spinkit/b/e;->a(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    return-void
.end method

.method public b()I
    .locals 1

    .line 32
    iget v0, p0, Lcom/github/ybq/android/spinkit/b/e;->o:I

    return v0
.end method

.method public setAlpha(I)V
    .locals 0

    .line 42
    invoke-super {p0, p1}, Lcom/github/ybq/android/spinkit/b/f;->setAlpha(I)V

    .line 43
    invoke-direct {p0}, Lcom/github/ybq/android/spinkit/b/e;->r()V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/github/ybq/android/spinkit/b/e;->m:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method
