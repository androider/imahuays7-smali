.class public Lcom/github/ybq/android/spinkit/c/m;
.super Lcom/github/ybq/android/spinkit/b/g;
.source "ThreeBounce.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/ybq/android/spinkit/c/m$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/github/ybq/android/spinkit/b/g;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs a([Lcom/github/ybq/android/spinkit/b/f;)V
    .locals 2

    .line 27
    invoke-super {p0, p1}, Lcom/github/ybq/android/spinkit/b/g;->a([Lcom/github/ybq/android/spinkit/b/f;)V

    const/4 v0, 0x1

    .line 28
    aget-object v0, p1, v0

    const/16 v1, 0xa0

    invoke-virtual {v0, v1}, Lcom/github/ybq/android/spinkit/b/f;->g(I)Lcom/github/ybq/android/spinkit/b/f;

    const/4 v0, 0x2

    .line 29
    aget-object p1, p1, v0

    const/16 v0, 0x140

    invoke-virtual {p1, v0}, Lcom/github/ybq/android/spinkit/b/f;->g(I)Lcom/github/ybq/android/spinkit/b/f;

    return-void
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 7

    .line 34
    invoke-super {p0, p1}, Lcom/github/ybq/android/spinkit/b/g;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 35
    invoke-virtual {p0, p1}, Lcom/github/ybq/android/spinkit/c/m;->b(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p1

    .line 36
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    div-int/lit8 v0, v0, 0x8

    .line 37
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    sub-int/2addr v1, v0

    .line 38
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    add-int/2addr v2, v0

    const/4 v3, 0x0

    .line 40
    :goto_0
    invoke-virtual {p0}, Lcom/github/ybq/android/spinkit/c/m;->r()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 41
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v4

    mul-int v4, v4, v3

    div-int/lit8 v4, v4, 0x3

    iget v5, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v5

    .line 43
    invoke-virtual {p0, v3}, Lcom/github/ybq/android/spinkit/c/m;->h(I)Lcom/github/ybq/android/spinkit/b/f;

    move-result-object v5

    mul-int/lit8 v6, v0, 0x2

    add-int/2addr v6, v4

    invoke-virtual {v5, v4, v1, v6, v2}, Lcom/github/ybq/android/spinkit/b/f;->a(IIII)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public s()[Lcom/github/ybq/android/spinkit/b/f;
    .locals 3

    const/4 v0, 0x3

    .line 18
    new-array v0, v0, [Lcom/github/ybq/android/spinkit/b/f;

    new-instance v1, Lcom/github/ybq/android/spinkit/c/m$a;

    invoke-direct {v1, p0}, Lcom/github/ybq/android/spinkit/c/m$a;-><init>(Lcom/github/ybq/android/spinkit/c/m;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lcom/github/ybq/android/spinkit/c/m$a;

    invoke-direct {v1, p0}, Lcom/github/ybq/android/spinkit/c/m$a;-><init>(Lcom/github/ybq/android/spinkit/c/m;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lcom/github/ybq/android/spinkit/c/m$a;

    invoke-direct {v1, p0}, Lcom/github/ybq/android/spinkit/c/m$a;-><init>(Lcom/github/ybq/android/spinkit/c/m;)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method
