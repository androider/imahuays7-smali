.class public abstract Lcom/wang/avi/a;
.super Landroid/graphics/drawable/Drawable;
.source "Indicator.java"

# interfaces
.implements Landroid/graphics/drawable/Animatable;


# static fields
.field private static final e:Landroid/graphics/Rect;


# instance fields
.field protected a:Landroid/graphics/Rect;

.field private b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/animation/ValueAnimator;",
            "Landroid/animation/ValueAnimator$AnimatorUpdateListener;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/animation/ValueAnimator;",
            ">;"
        }
    .end annotation
.end field

.field private d:I

.field private f:Z

.field private g:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/wang/avi/a;->e:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 33
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 22
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/wang/avi/a;->b:Ljava/util/HashMap;

    const/16 v0, 0xff

    .line 25
    iput v0, p0, Lcom/wang/avi/a;->d:I

    .line 27
    sget-object v0, Lcom/wang/avi/a;->e:Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/wang/avi/a;->a:Landroid/graphics/Rect;

    .line 31
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/wang/avi/a;->g:Landroid/graphics/Paint;

    .line 34
    iget-object v0, p0, Lcom/wang/avi/a;->g:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 35
    iget-object v0, p0, Lcom/wang/avi/a;->g:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 36
    iget-object v0, p0, Lcom/wang/avi/a;->g:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method

.method private e()V
    .locals 3

    const/4 v0, 0x0

    .line 93
    :goto_0
    iget-object v1, p0, Lcom/wang/avi/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 94
    iget-object v1, p0, Lcom/wang/avi/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/ValueAnimator;

    .line 98
    iget-object v2, p0, Lcom/wang/avi/a;->b:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    if-eqz v2, :cond_0

    .line 100
    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 103
    :cond_0
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private f()V
    .locals 3

    .line 108
    iget-object v0, p0, Lcom/wang/avi/a;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 109
    iget-object v0, p0, Lcom/wang/avi/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_0

    .line 110
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 111
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 112
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->end()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private g()V
    .locals 1

    .line 119
    iget-boolean v0, p0, Lcom/wang/avi/a;->f:Z

    if-nez v0, :cond_0

    .line 120
    invoke-virtual {p0}, Lcom/wang/avi/a;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/wang/avi/a;->c:Ljava/util/ArrayList;

    const/4 v0, 0x1

    .line 121
    iput-boolean v0, p0, Lcom/wang/avi/a;->f:Z

    :cond_0
    return-void
.end method

.method private h()Z
    .locals 2

    .line 131
    iget-object v0, p0, Lcom/wang/avi/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/ValueAnimator;

    .line 132
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public abstract a()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/animation/ValueAnimator;",
            ">;"
        }
    .end annotation
.end method

.method public a(I)V
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/wang/avi/a;->g:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public a(IIII)V
    .locals 1

    .line 166
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/wang/avi/a;->a:Landroid/graphics/Rect;

    return-void
.end method

.method public a(Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/wang/avi/a;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public abstract a(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
.end method

.method public a(Landroid/graphics/Rect;)V
    .locals 3

    .line 162
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/wang/avi/a;->a(IIII)V

    return-void
.end method

.method public b()V
    .locals 0

    .line 170
    invoke-virtual {p0}, Lcom/wang/avi/a;->invalidateSelf()V

    return-void
.end method

.method public c()I
    .locals 1

    .line 178
    iget-object v0, p0, Lcom/wang/avi/a;->a:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    return v0
.end method

.method public d()I
    .locals 1

    .line 182
    iget-object v0, p0, Lcom/wang/avi/a;->a:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    return v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/wang/avi/a;->g:Landroid/graphics/Paint;

    invoke-virtual {p0, p1, v0}, Lcom/wang/avi/a;->a(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    return-void
.end method

.method public getAlpha()I
    .locals 1

    .line 54
    iget v0, p0, Lcom/wang/avi/a;->d:I

    return v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public isRunning()Z
    .locals 2

    .line 139
    iget-object v0, p0, Lcom/wang/avi/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/ValueAnimator;

    .line 140
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 0

    .line 157
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 158
    invoke-virtual {p0, p1}, Lcom/wang/avi/a;->a(Landroid/graphics/Rect;)V

    return-void
.end method

.method public setAlpha(I)V
    .locals 0

    .line 49
    iput p1, p0, Lcom/wang/avi/a;->d:I

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method

.method public start()V
    .locals 1

    .line 78
    invoke-direct {p0}, Lcom/wang/avi/a;->g()V

    .line 80
    iget-object v0, p0, Lcom/wang/avi/a;->c:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    return-void

    .line 85
    :cond_0
    invoke-direct {p0}, Lcom/wang/avi/a;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 88
    :cond_1
    invoke-direct {p0}, Lcom/wang/avi/a;->e()V

    .line 89
    invoke-virtual {p0}, Lcom/wang/avi/a;->invalidateSelf()V

    return-void
.end method

.method public stop()V
    .locals 0

    .line 127
    invoke-direct {p0}, Lcom/wang/avi/a;->f()V

    return-void
.end method
