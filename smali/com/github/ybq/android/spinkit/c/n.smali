.class public Lcom/github/ybq/android/spinkit/c/n;
.super Lcom/github/ybq/android/spinkit/b/g;
.source "WanderingCubes.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/ybq/android/spinkit/c/n$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/github/ybq/android/spinkit/b/g;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs a([Lcom/github/ybq/android/spinkit/b/f;)V
    .locals 2

    .line 28
    invoke-super {p0, p1}, Lcom/github/ybq/android/spinkit/b/g;->a([Lcom/github/ybq/android/spinkit/b/f;)V

    .line 29
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    .line 30
    aget-object p1, p1, v0

    const/16 v0, -0x384

    invoke-virtual {p1, v0}, Lcom/github/ybq/android/spinkit/b/f;->g(I)Lcom/github/ybq/android/spinkit/b/f;

    :cond_0
    return-void
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 7

    .line 36
    invoke-virtual {p0, p1}, Lcom/github/ybq/android/spinkit/c/n;->b(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p1

    .line 37
    invoke-super {p0, p1}, Lcom/github/ybq/android/spinkit/b/g;->onBoundsChange(Landroid/graphics/Rect;)V

    const/4 v0, 0x0

    .line 38
    :goto_0
    invoke-virtual {p0}, Lcom/github/ybq/android/spinkit/c/n;->r()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 39
    invoke-virtual {p0, v0}, Lcom/github/ybq/android/spinkit/c/n;->h(I)Lcom/github/ybq/android/spinkit/b/f;

    move-result-object v1

    .line 40
    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget v3, p1, Landroid/graphics/Rect;->top:I

    iget v4, p1, Landroid/graphics/Rect;->left:I

    .line 43
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v5

    div-int/lit8 v5, v5, 0x4

    add-int/2addr v4, v5

    iget v5, p1, Landroid/graphics/Rect;->top:I

    .line 44
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v6

    div-int/lit8 v6, v6, 0x4

    add-int/2addr v5, v6

    .line 40
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/github/ybq/android/spinkit/b/f;->a(IIII)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public s()[Lcom/github/ybq/android/spinkit/b/f;
    .locals 3

    const/4 v0, 0x2

    .line 20
    new-array v0, v0, [Lcom/github/ybq/android/spinkit/b/f;

    new-instance v1, Lcom/github/ybq/android/spinkit/c/n$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/github/ybq/android/spinkit/c/n$a;-><init>(Lcom/github/ybq/android/spinkit/c/n;I)V

    aput-object v1, v0, v2

    new-instance v1, Lcom/github/ybq/android/spinkit/c/n$a;

    const/4 v2, 0x3

    invoke-direct {v1, p0, v2}, Lcom/github/ybq/android/spinkit/c/n$a;-><init>(Lcom/github/ybq/android/spinkit/c/n;I)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method
