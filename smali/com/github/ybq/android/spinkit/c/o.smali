.class public Lcom/github/ybq/android/spinkit/c/o;
.super Lcom/github/ybq/android/spinkit/b/g;
.source "Wave.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/ybq/android/spinkit/c/o$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/github/ybq/android/spinkit/b/g;-><init>()V

    return-void
.end method


# virtual methods
.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 8

    .line 34
    invoke-super {p0, p1}, Lcom/github/ybq/android/spinkit/b/g;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 35
    invoke-virtual {p0, p1}, Lcom/github/ybq/android/spinkit/c/o;->b(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p1

    .line 36
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p0}, Lcom/github/ybq/android/spinkit/c/o;->r()I

    move-result v1

    div-int/2addr v0, v1

    .line 37
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    div-int/lit8 v1, v1, 0x5

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x5

    const/4 v2, 0x0

    .line 38
    :goto_0
    invoke-virtual {p0}, Lcom/github/ybq/android/spinkit/c/o;->r()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 39
    invoke-virtual {p0, v2}, Lcom/github/ybq/android/spinkit/c/o;->h(I)Lcom/github/ybq/android/spinkit/b/f;

    move-result-object v3

    .line 40
    iget v4, p1, Landroid/graphics/Rect;->left:I

    mul-int v5, v2, v0

    add-int/2addr v4, v5

    div-int/lit8 v5, v0, 0x5

    add-int/2addr v4, v5

    add-int v5, v4, v1

    .line 42
    iget v6, p1, Landroid/graphics/Rect;->top:I

    iget v7, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v3, v4, v6, v5, v7}, Lcom/github/ybq/android/spinkit/b/f;->a(IIII)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public s()[Lcom/github/ybq/android/spinkit/b/f;
    .locals 4

    const/4 v0, 0x5

    .line 19
    new-array v0, v0, [Lcom/github/ybq/android/spinkit/c/o$a;

    const/4 v1, 0x0

    .line 20
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 21
    new-instance v2, Lcom/github/ybq/android/spinkit/c/o$a;

    invoke-direct {v2, p0}, Lcom/github/ybq/android/spinkit/c/o$a;-><init>(Lcom/github/ybq/android/spinkit/c/o;)V

    aput-object v2, v0, v1

    .line 22
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v2, v3, :cond_0

    .line 23
    aget-object v2, v0, v1

    mul-int/lit8 v3, v1, 0x64

    add-int/lit16 v3, v3, 0x258

    invoke-virtual {v2, v3}, Lcom/github/ybq/android/spinkit/c/o$a;->g(I)Lcom/github/ybq/android/spinkit/b/f;

    goto :goto_1

    .line 25
    :cond_0
    aget-object v2, v0, v1

    mul-int/lit8 v3, v1, 0x64

    add-int/lit16 v3, v3, -0x4b0

    invoke-virtual {v2, v3}, Lcom/github/ybq/android/spinkit/c/o$a;->g(I)Lcom/github/ybq/android/spinkit/b/f;

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method
