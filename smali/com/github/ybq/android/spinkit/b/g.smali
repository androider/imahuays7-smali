.class public abstract Lcom/github/ybq/android/spinkit/b/g;
.super Lcom/github/ybq/android/spinkit/b/f;
.source "SpriteContainer.java"


# instance fields
.field private m:[Lcom/github/ybq/android/spinkit/b/f;

.field private n:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Lcom/github/ybq/android/spinkit/b/f;-><init>()V

    .line 20
    invoke-virtual {p0}, Lcom/github/ybq/android/spinkit/b/g;->s()[Lcom/github/ybq/android/spinkit/b/f;

    move-result-object v0

    iput-object v0, p0, Lcom/github/ybq/android/spinkit/b/g;->m:[Lcom/github/ybq/android/spinkit/b/f;

    .line 21
    invoke-direct {p0}, Lcom/github/ybq/android/spinkit/b/g;->t()V

    .line 22
    iget-object v0, p0, Lcom/github/ybq/android/spinkit/b/g;->m:[Lcom/github/ybq/android/spinkit/b/f;

    invoke-virtual {p0, v0}, Lcom/github/ybq/android/spinkit/b/g;->a([Lcom/github/ybq/android/spinkit/b/f;)V

    return-void
.end method

.method private t()V
    .locals 4

    .line 26
    iget-object v0, p0, Lcom/github/ybq/android/spinkit/b/g;->m:[Lcom/github/ybq/android/spinkit/b/f;

    if-eqz v0, :cond_0

    .line 27
    iget-object v0, p0, Lcom/github/ybq/android/spinkit/b/g;->m:[Lcom/github/ybq/android/spinkit/b/f;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 28
    invoke-virtual {v3, p0}, Lcom/github/ybq/android/spinkit/b/f;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public a()Landroid/animation/ValueAnimator;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public a(I)V
    .locals 2

    .line 47
    iput p1, p0, Lcom/github/ybq/android/spinkit/b/g;->n:I

    const/4 v0, 0x0

    .line 48
    :goto_0
    invoke-virtual {p0}, Lcom/github/ybq/android/spinkit/b/g;->r()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 49
    invoke-virtual {p0, v0}, Lcom/github/ybq/android/spinkit/b/g;->h(I)Lcom/github/ybq/android/spinkit/b/f;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/github/ybq/android/spinkit/b/f;->a(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(Landroid/graphics/Canvas;)V
    .locals 5

    .line 65
    iget-object v0, p0, Lcom/github/ybq/android/spinkit/b/g;->m:[Lcom/github/ybq/android/spinkit/b/f;

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/github/ybq/android/spinkit/b/g;->m:[Lcom/github/ybq/android/spinkit/b/f;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 67
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v4

    .line 68
    invoke-virtual {v3, p1}, Lcom/github/ybq/android/spinkit/b/f;->draw(Landroid/graphics/Canvas;)V

    .line 69
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->restoreToCount(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public varargs a([Lcom/github/ybq/android/spinkit/b/f;)V
    .locals 0

    return-void
.end method

.method protected a_(Landroid/graphics/Canvas;)V
    .locals 0

    return-void
.end method

.method public b()I
    .locals 1

    .line 55
    iget v0, p0, Lcom/github/ybq/android/spinkit/b/g;->n:I

    return v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 60
    invoke-super {p0, p1}, Lcom/github/ybq/android/spinkit/b/f;->draw(Landroid/graphics/Canvas;)V

    .line 61
    invoke-virtual {p0, p1}, Lcom/github/ybq/android/spinkit/b/g;->a(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public h(I)Lcom/github/ybq/android/spinkit/b/f;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/github/ybq/android/spinkit/b/g;->m:[Lcom/github/ybq/android/spinkit/b/f;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/github/ybq/android/spinkit/b/g;->m:[Lcom/github/ybq/android/spinkit/b/f;

    aget-object p1, v0, p1

    :goto_0
    return-object p1
.end method

.method public isRunning()Z
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/github/ybq/android/spinkit/b/g;->m:[Lcom/github/ybq/android/spinkit/b/f;

    invoke-static {v0}, Lcom/github/ybq/android/spinkit/a/a;->c([Lcom/github/ybq/android/spinkit/b/f;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0}, Lcom/github/ybq/android/spinkit/b/f;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 4

    .line 80
    invoke-super {p0, p1}, Lcom/github/ybq/android/spinkit/b/f;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 81
    iget-object v0, p0, Lcom/github/ybq/android/spinkit/b/g;->m:[Lcom/github/ybq/android/spinkit/b/f;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 82
    invoke-virtual {v3, p1}, Lcom/github/ybq/android/spinkit/b/f;->setBounds(Landroid/graphics/Rect;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public r()I
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/github/ybq/android/spinkit/b/g;->m:[Lcom/github/ybq/android/spinkit/b/f;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/github/ybq/android/spinkit/b/g;->m:[Lcom/github/ybq/android/spinkit/b/f;

    array-length v0, v0

    :goto_0
    return v0
.end method

.method public abstract s()[Lcom/github/ybq/android/spinkit/b/f;
.end method

.method public start()V
    .locals 1

    .line 88
    invoke-super {p0}, Lcom/github/ybq/android/spinkit/b/f;->start()V

    .line 89
    iget-object v0, p0, Lcom/github/ybq/android/spinkit/b/g;->m:[Lcom/github/ybq/android/spinkit/b/f;

    invoke-static {v0}, Lcom/github/ybq/android/spinkit/a/a;->a([Lcom/github/ybq/android/spinkit/b/f;)V

    return-void
.end method

.method public stop()V
    .locals 1

    .line 94
    invoke-super {p0}, Lcom/github/ybq/android/spinkit/b/f;->stop()V

    .line 95
    iget-object v0, p0, Lcom/github/ybq/android/spinkit/b/g;->m:[Lcom/github/ybq/android/spinkit/b/f;

    invoke-static {v0}, Lcom/github/ybq/android/spinkit/a/a;->b([Lcom/github/ybq/android/spinkit/b/f;)V

    return-void
.end method
