.class public Lcom/mh/movie/core/mvp/ui/widget/b/c;
.super Landroid/graphics/drawable/Drawable;
.source "WebpDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/Animatable;
.implements Lcom/mh/movie/core/mvp/ui/widget/b/d$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mh/movie/core/mvp/ui/widget/b/c$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/mh/movie/core/mvp/ui/widget/b/c$a;

.field private b:Z

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:I

.field private g:I

.field private h:Z

.field private i:Landroid/graphics/Paint;

.field private j:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bumptech/glide/gifdecoder/GifDecoder;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/bumptech/glide/load/Transformation;IILandroid/graphics/Bitmap;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/bumptech/glide/gifdecoder/GifDecoder;",
            "Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;",
            "Lcom/bumptech/glide/load/Transformation<",
            "Landroid/graphics/Bitmap;",
            ">;II",
            "Landroid/graphics/Bitmap;",
            ")V"
        }
    .end annotation

    .line 43
    new-instance v0, Lcom/mh/movie/core/mvp/ui/widget/b/c$a;

    new-instance v8, Lcom/mh/movie/core/mvp/ui/widget/b/d;

    invoke-static {p1}, Lcom/bumptech/glide/Glide;->get(Landroid/content/Context;)Lcom/bumptech/glide/Glide;

    move-result-object v2

    move-object v1, v8

    move-object v3, p2

    move v4, p5

    move v5, p6

    move-object v6, p4

    move-object/from16 v7, p7

    invoke-direct/range {v1 .. v7}, Lcom/mh/movie/core/mvp/ui/widget/b/d;-><init>(Lcom/bumptech/glide/Glide;Lcom/bumptech/glide/gifdecoder/GifDecoder;IILcom/bumptech/glide/load/Transformation;Landroid/graphics/Bitmap;)V

    move-object v1, p3

    invoke-direct {v0, v1, v8}, Lcom/mh/movie/core/mvp/ui/widget/b/c$a;-><init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/mh/movie/core/mvp/ui/widget/b/d;)V

    move-object v1, p0

    invoke-direct {v1, v0}, Lcom/mh/movie/core/mvp/ui/widget/b/c;-><init>(Lcom/mh/movie/core/mvp/ui/widget/b/c$a;)V

    return-void
.end method

.method constructor <init>(Lcom/mh/movie/core/mvp/ui/widget/b/c$a;)V
    .locals 1

    .line 46
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/4 v0, 0x1

    .line 47
    iput-boolean v0, p0, Lcom/mh/movie/core/mvp/ui/widget/b/c;->e:Z

    const/4 v0, -0x1

    .line 48
    iput v0, p0, Lcom/mh/movie/core/mvp/ui/widget/b/c;->g:I

    .line 49
    invoke-static {p1}, Lcom/bumptech/glide/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mh/movie/core/mvp/ui/widget/b/c$a;

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/b/c;->a:Lcom/mh/movie/core/mvp/ui/widget/b/c$a;

    return-void
.end method

.method private e()V
    .locals 1

    const/4 v0, 0x0

    .line 87
    iput v0, p0, Lcom/mh/movie/core/mvp/ui/widget/b/c;->f:I

    return-void
.end method

.method private f()V
    .locals 3

    .line 111
    iget-boolean v0, p0, Lcom/mh/movie/core/mvp/ui/widget/b/c;->d:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const-string v2, "You cannot start a recycled Drawable. Ensure thatyou clear any references to the Drawable when clearing the corresponding request."

    invoke-static {v0, v2}, Lcom/bumptech/glide/util/Preconditions;->checkArgument(ZLjava/lang/String;)V

    .line 112
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/b/c;->a:Lcom/mh/movie/core/mvp/ui/widget/b/c$a;

    iget-object v0, v0, Lcom/mh/movie/core/mvp/ui/widget/b/c$a;->b:Lcom/mh/movie/core/mvp/ui/widget/b/d;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/widget/b/d;->e()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 113
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/b/c;->invalidateSelf()V

    goto :goto_0

    .line 114
    :cond_0
    iget-boolean v0, p0, Lcom/mh/movie/core/mvp/ui/widget/b/c;->b:Z

    if-nez v0, :cond_1

    .line 115
    iput-boolean v1, p0, Lcom/mh/movie/core/mvp/ui/widget/b/c;->b:Z

    .line 116
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/b/c;->a:Lcom/mh/movie/core/mvp/ui/widget/b/c$a;

    iget-object v0, v0, Lcom/mh/movie/core/mvp/ui/widget/b/c$a;->b:Lcom/mh/movie/core/mvp/ui/widget/b/d;

    invoke-virtual {v0, p0}, Lcom/mh/movie/core/mvp/ui/widget/b/d;->a(Lcom/mh/movie/core/mvp/ui/widget/b/d$b;)V

    .line 117
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/b/c;->invalidateSelf()V

    :cond_1
    :goto_0
    return-void
.end method

.method private g()V
    .locals 1

    const/4 v0, 0x0

    .line 123
    iput-boolean v0, p0, Lcom/mh/movie/core/mvp/ui/widget/b/c;->b:Z

    .line 124
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/b/c;->a:Lcom/mh/movie/core/mvp/ui/widget/b/c$a;

    iget-object v0, v0, Lcom/mh/movie/core/mvp/ui/widget/b/c$a;->b:Lcom/mh/movie/core/mvp/ui/widget/b/d;

    invoke-virtual {v0, p0}, Lcom/mh/movie/core/mvp/ui/widget/b/d;->b(Lcom/mh/movie/core/mvp/ui/widget/b/d$b;)V

    return-void
.end method

.method private h()Landroid/graphics/Rect;
    .locals 1

    .line 181
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/b/c;->j:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    .line 182
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/b/c;->j:Landroid/graphics/Rect;

    .line 185
    :cond_0
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/b/c;->j:Landroid/graphics/Rect;

    return-object v0
.end method

.method private i()Landroid/graphics/Paint;
    .locals 2

    .line 189
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/b/c;->i:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    .line 190
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/b/c;->i:Landroid/graphics/Paint;

    .line 193
    :cond_0
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/b/c;->i:Landroid/graphics/Paint;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/b/c;->a:Lcom/mh/movie/core/mvp/ui/widget/b/c$a;

    iget-object v0, v0, Lcom/mh/movie/core/mvp/ui/widget/b/c$a;->b:Lcom/mh/movie/core/mvp/ui/widget/b/d;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/widget/b/d;->c()I

    move-result v0

    return v0
.end method

.method public b()I
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/b/c;->a:Lcom/mh/movie/core/mvp/ui/widget/b/c$a;

    iget-object v0, v0, Lcom/mh/movie/core/mvp/ui/widget/b/c$a;->b:Lcom/mh/movie/core/mvp/ui/widget/b/d;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/widget/b/d;->e()I

    move-result v0

    return v0
.end method

.method public c()I
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/b/c;->a:Lcom/mh/movie/core/mvp/ui/widget/b/c$a;

    iget-object v0, v0, Lcom/mh/movie/core/mvp/ui/widget/b/c$a;->b:Lcom/mh/movie/core/mvp/ui/widget/b/d;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/widget/b/d;->d()I

    move-result v0

    return v0
.end method

.method public d()V
    .locals 2

    .line 201
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/b/c;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    if-nez v0, :cond_0

    .line 202
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/b/c;->stop()V

    .line 203
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/b/c;->invalidateSelf()V

    goto :goto_0

    .line 205
    :cond_0
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/b/c;->invalidateSelf()V

    .line 206
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/b/c;->c()I

    move-result v0

    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/b/c;->b()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_1

    .line 207
    iget v0, p0, Lcom/mh/movie/core/mvp/ui/widget/b/c;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mh/movie/core/mvp/ui/widget/b/c;->f:I

    .line 210
    :cond_1
    iget v0, p0, Lcom/mh/movie/core/mvp/ui/widget/b/c;->g:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/mh/movie/core/mvp/ui/widget/b/c;->f:I

    iget v1, p0, Lcom/mh/movie/core/mvp/ui/widget/b/c;->g:I

    if-lt v0, v1, :cond_2

    .line 211
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/b/c;->stop()V

    :cond_2
    :goto_0
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 161
    iget-boolean v0, p0, Lcom/mh/movie/core/mvp/ui/widget/b/c;->d:Z

    if-nez v0, :cond_1

    .line 162
    iget-boolean v0, p0, Lcom/mh/movie/core/mvp/ui/widget/b/c;->h:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x77

    .line 163
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/b/c;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/b/c;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/b/c;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/widget/b/c;->h()Landroid/graphics/Rect;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    const/4 v0, 0x0

    .line 164
    iput-boolean v0, p0, Lcom/mh/movie/core/mvp/ui/widget/b/c;->h:Z

    .line 167
    :cond_0
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/b/c;->a:Lcom/mh/movie/core/mvp/ui/widget/b/c$a;

    iget-object v0, v0, Lcom/mh/movie/core/mvp/ui/widget/b/c$a;->b:Lcom/mh/movie/core/mvp/ui/widget/b/d;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/widget/b/d;->f()Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v1, 0x0

    .line 168
    check-cast v1, Landroid/graphics/Rect;

    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/widget/b/c;->h()Landroid/graphics/Rect;

    move-result-object v2

    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/widget/b/c;->i()Landroid/graphics/Paint;

    move-result-object v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :cond_1
    return-void
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 1

    .line 218
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/b/c;->a:Lcom/mh/movie/core/mvp/ui/widget/b/c$a;

    return-object v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/b/c;->a:Lcom/mh/movie/core/mvp/ui/widget/b/c$a;

    iget-object v0, v0, Lcom/mh/movie/core/mvp/ui/widget/b/c$a;->b:Lcom/mh/movie/core/mvp/ui/widget/b/d;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/widget/b/d;->b()I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/b/c;->a:Lcom/mh/movie/core/mvp/ui/widget/b/c$a;

    iget-object v0, v0, Lcom/mh/movie/core/mvp/ui/widget/b/c$a;->b:Lcom/mh/movie/core/mvp/ui/widget/b/d;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/widget/b/d;->a()I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x2

    return v0
.end method

.method public isRunning()Z
    .locals 1

    .line 148
    iget-boolean v0, p0, Lcom/mh/movie/core/mvp/ui/widget/b/c;->b:Z

    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 0

    .line 156
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    const/4 p1, 0x1

    .line 157
    iput-boolean p1, p0, Lcom/mh/movie/core/mvp/ui/widget/b/c;->h:Z

    return-void
.end method

.method public setAlpha(I)V
    .locals 1

    .line 173
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/widget/b/c;->i()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 177
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/widget/b/c;->i()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method

.method public setVisible(ZZ)Z
    .locals 2

    .line 128
    iget-boolean v0, p0, Lcom/mh/movie/core/mvp/ui/widget/b/c;->d:Z

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Cannot change the visibility of a recycled resource. Ensure that you unset the Drawable from your View before changing the View\'s visibility."

    invoke-static {v0, v1}, Lcom/bumptech/glide/util/Preconditions;->checkArgument(ZLjava/lang/String;)V

    .line 129
    iput-boolean p1, p0, Lcom/mh/movie/core/mvp/ui/widget/b/c;->e:Z

    if-nez p1, :cond_0

    .line 131
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/widget/b/c;->g()V

    goto :goto_0

    .line 132
    :cond_0
    iget-boolean v0, p0, Lcom/mh/movie/core/mvp/ui/widget/b/c;->c:Z

    if-eqz v0, :cond_1

    .line 133
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/widget/b/c;->f()V

    .line 136
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result p1

    return p1
.end method

.method public start()V
    .locals 1

    const/4 v0, 0x1

    .line 97
    iput-boolean v0, p0, Lcom/mh/movie/core/mvp/ui/widget/b/c;->c:Z

    .line 98
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/widget/b/c;->e()V

    .line 99
    iget-boolean v0, p0, Lcom/mh/movie/core/mvp/ui/widget/b/c;->e:Z

    if-eqz v0, :cond_0

    .line 100
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/widget/b/c;->f()V

    :cond_0
    return-void
.end method

.method public stop()V
    .locals 1

    const/4 v0, 0x0

    .line 106
    iput-boolean v0, p0, Lcom/mh/movie/core/mvp/ui/widget/b/c;->c:Z

    .line 107
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/widget/b/c;->g()V

    return-void
.end method
