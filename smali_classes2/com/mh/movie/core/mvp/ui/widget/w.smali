.class public Lcom/mh/movie/core/mvp/ui/widget/w;
.super Lcom/github/ybq/android/spinkit/c/m;
.source "TrBounce.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mh/movie/core/mvp/ui/widget/w$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/github/ybq/android/spinkit/c/m;-><init>()V

    return-void
.end method


# virtual methods
.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 7

    .line 25
    invoke-super {p0, p1}, Lcom/github/ybq/android/spinkit/c/m;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 27
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    div-int/lit8 v0, v0, 0x8

    .line 28
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    sub-int/2addr v1, v0

    .line 29
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    add-int/2addr v2, v0

    const/4 v3, 0x0

    .line 32
    :goto_0
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/w;->r()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 33
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v4

    mul-int v4, v4, v3

    div-int/lit8 v4, v4, 0x3

    iget v5, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v5

    .line 34
    invoke-virtual {p0, v3}, Lcom/mh/movie/core/mvp/ui/widget/w;->h(I)Lcom/github/ybq/android/spinkit/b/f;

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

    .line 20
    new-array v0, v0, [Lcom/github/ybq/android/spinkit/b/f;

    new-instance v1, Lcom/mh/movie/core/mvp/ui/widget/w$a;

    const-string v2, "#ff1768"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v1, p0, v2}, Lcom/mh/movie/core/mvp/ui/widget/w$a;-><init>(Lcom/mh/movie/core/mvp/ui/widget/w;I)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lcom/mh/movie/core/mvp/ui/widget/w$a;

    const-string v2, "#c516ff"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v1, p0, v2}, Lcom/mh/movie/core/mvp/ui/widget/w$a;-><init>(Lcom/mh/movie/core/mvp/ui/widget/w;I)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lcom/mh/movie/core/mvp/ui/widget/w$a;

    const-string v2, "#2f84ff"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v1, p0, v2}, Lcom/mh/movie/core/mvp/ui/widget/w$a;-><init>(Lcom/mh/movie/core/mvp/ui/widget/w;I)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method
