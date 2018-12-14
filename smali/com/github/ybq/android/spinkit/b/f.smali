.class public abstract Lcom/github/ybq/android/spinkit/b/f;
.super Landroid/graphics/drawable/Drawable;
.source "Sprite.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;
.implements Landroid/graphics/drawable/Animatable;
.implements Landroid/graphics/drawable/Drawable$Callback;


# static fields
.field private static final B:Landroid/graphics/Rect;

.field public static final b:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Lcom/github/ybq/android/spinkit/b/f;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final c:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Lcom/github/ybq/android/spinkit/b/f;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final d:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Lcom/github/ybq/android/spinkit/b/f;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final e:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Lcom/github/ybq/android/spinkit/b/f;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final f:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Lcom/github/ybq/android/spinkit/b/f;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final g:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Lcom/github/ybq/android/spinkit/b/f;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public static final h:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Lcom/github/ybq/android/spinkit/b/f;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public static final i:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Lcom/github/ybq/android/spinkit/b/f;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public static final j:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Lcom/github/ybq/android/spinkit/b/f;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public static final k:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Lcom/github/ybq/android/spinkit/b/f;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public static final l:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Lcom/github/ybq/android/spinkit/b/f;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private A:I

.field private C:Landroid/graphics/Camera;

.field private D:Landroid/graphics/Matrix;

.field protected a:Landroid/graphics/Rect;

.field private m:F

.field private n:F

.field private o:F

.field private p:F

.field private q:F

.field private r:I

.field private s:I

.field private t:I

.field private u:I

.field private v:I

.field private w:I

.field private x:F

.field private y:F

.field private z:Landroid/animation/ValueAnimator;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 42
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/github/ybq/android/spinkit/b/f;->B:Landroid/graphics/Rect;

    .line 320
    new-instance v0, Lcom/github/ybq/android/spinkit/b/f$1;

    const-string v1, "rotateX"

    invoke-direct {v0, v1}, Lcom/github/ybq/android/spinkit/b/f$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/github/ybq/android/spinkit/b/f;->b:Landroid/util/Property;

    .line 332
    new-instance v0, Lcom/github/ybq/android/spinkit/b/f$4;

    const-string v1, "rotate"

    invoke-direct {v0, v1}, Lcom/github/ybq/android/spinkit/b/f$4;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/github/ybq/android/spinkit/b/f;->c:Landroid/util/Property;

    .line 344
    new-instance v0, Lcom/github/ybq/android/spinkit/b/f$5;

    const-string v1, "rotateY"

    invoke-direct {v0, v1}, Lcom/github/ybq/android/spinkit/b/f$5;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/github/ybq/android/spinkit/b/f;->d:Landroid/util/Property;

    .line 357
    new-instance v0, Lcom/github/ybq/android/spinkit/b/f$6;

    const-string v1, "translateX"

    invoke-direct {v0, v1}, Lcom/github/ybq/android/spinkit/b/f$6;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/github/ybq/android/spinkit/b/f;->e:Landroid/util/Property;

    .line 370
    new-instance v0, Lcom/github/ybq/android/spinkit/b/f$7;

    const-string v1, "translateY"

    invoke-direct {v0, v1}, Lcom/github/ybq/android/spinkit/b/f$7;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/github/ybq/android/spinkit/b/f;->f:Landroid/util/Property;

    .line 382
    new-instance v0, Lcom/github/ybq/android/spinkit/b/f$8;

    const-string v1, "translateXPercentage"

    invoke-direct {v0, v1}, Lcom/github/ybq/android/spinkit/b/f$8;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/github/ybq/android/spinkit/b/f;->g:Landroid/util/Property;

    .line 394
    new-instance v0, Lcom/github/ybq/android/spinkit/b/f$9;

    const-string v1, "translateYPercentage"

    invoke-direct {v0, v1}, Lcom/github/ybq/android/spinkit/b/f$9;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/github/ybq/android/spinkit/b/f;->h:Landroid/util/Property;

    .line 407
    new-instance v0, Lcom/github/ybq/android/spinkit/b/f$10;

    const-string v1, "scaleX"

    invoke-direct {v0, v1}, Lcom/github/ybq/android/spinkit/b/f$10;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/github/ybq/android/spinkit/b/f;->i:Landroid/util/Property;

    .line 419
    new-instance v0, Lcom/github/ybq/android/spinkit/b/f$11;

    const-string v1, "scaleY"

    invoke-direct {v0, v1}, Lcom/github/ybq/android/spinkit/b/f$11;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/github/ybq/android/spinkit/b/f;->j:Landroid/util/Property;

    .line 431
    new-instance v0, Lcom/github/ybq/android/spinkit/b/f$2;

    const-string v1, "scale"

    invoke-direct {v0, v1}, Lcom/github/ybq/android/spinkit/b/f$2;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/github/ybq/android/spinkit/b/f;->k:Landroid/util/Property;

    .line 443
    new-instance v0, Lcom/github/ybq/android/spinkit/b/f$3;

    const-string v1, "alpha"

    invoke-direct {v0, v1}, Lcom/github/ybq/android/spinkit/b/f$3;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/github/ybq/android/spinkit/b/f;->l:Landroid/util/Property;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 47
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 27
    iput v0, p0, Lcom/github/ybq/android/spinkit/b/f;->m:F

    .line 28
    iput v0, p0, Lcom/github/ybq/android/spinkit/b/f;->n:F

    .line 29
    iput v0, p0, Lcom/github/ybq/android/spinkit/b/f;->o:F

    const/16 v0, 0xff

    .line 41
    iput v0, p0, Lcom/github/ybq/android/spinkit/b/f;->A:I

    .line 43
    sget-object v0, Lcom/github/ybq/android/spinkit/b/f;->B:Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/github/ybq/android/spinkit/b/f;->a:Landroid/graphics/Rect;

    .line 48
    new-instance v0, Landroid/graphics/Camera;

    invoke-direct {v0}, Landroid/graphics/Camera;-><init>()V

    iput-object v0, p0, Lcom/github/ybq/android/spinkit/b/f;->C:Landroid/graphics/Camera;

    .line 49
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/github/ybq/android/spinkit/b/f;->D:Landroid/graphics/Matrix;

    return-void
.end method


# virtual methods
.method public abstract a()Landroid/animation/ValueAnimator;
.end method

.method public a(F)V
    .locals 0

    .line 76
    iput p1, p0, Lcom/github/ybq/android/spinkit/b/f;->x:F

    return-void
.end method

.method public abstract a(I)V
.end method

.method public a(IIII)V
    .locals 1

    .line 250
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/github/ybq/android/spinkit/b/f;->a:Landroid/graphics/Rect;

    .line 251
    invoke-virtual {p0}, Lcom/github/ybq/android/spinkit/b/f;->q()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Lcom/github/ybq/android/spinkit/b/f;->f(F)V

    .line 252
    invoke-virtual {p0}, Lcom/github/ybq/android/spinkit/b/f;->q()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Lcom/github/ybq/android/spinkit/b/f;->g(F)V

    return-void
.end method

.method public a(Landroid/graphics/Rect;)V
    .locals 3

    .line 246
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/github/ybq/android/spinkit/b/f;->a(IIII)V

    return-void
.end method

.method protected abstract a_(Landroid/graphics/Canvas;)V
.end method

.method public abstract b()I
.end method

.method public b(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 5

    .line 306
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 307
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    .line 308
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 309
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    .line 310
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result p1

    .line 311
    div-int/lit8 v0, v0, 0x2

    .line 312
    new-instance v2, Landroid/graphics/Rect;

    sub-int v3, v1, v0

    sub-int v4, p1, v0

    add-int/2addr v1, v0

    add-int/2addr p1, v0

    invoke-direct {v2, v3, v4, v1, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v2
.end method

.method public b(F)V
    .locals 0

    .line 84
    iput p1, p0, Lcom/github/ybq/android/spinkit/b/f;->y:F

    return-void
.end method

.method public b(I)V
    .locals 0

    .line 92
    iput p1, p0, Lcom/github/ybq/android/spinkit/b/f;->u:I

    return-void
.end method

.method public c()F
    .locals 1

    .line 72
    iget v0, p0, Lcom/github/ybq/android/spinkit/b/f;->x:F

    return v0
.end method

.method public c(F)V
    .locals 0

    .line 116
    iput p1, p0, Lcom/github/ybq/android/spinkit/b/f;->m:F

    .line 117
    invoke-virtual {p0, p1}, Lcom/github/ybq/android/spinkit/b/f;->d(F)V

    .line 118
    invoke-virtual {p0, p1}, Lcom/github/ybq/android/spinkit/b/f;->e(F)V

    return-void
.end method

.method public c(I)V
    .locals 0

    .line 100
    iput p1, p0, Lcom/github/ybq/android/spinkit/b/f;->v:I

    return-void
.end method

.method public d()F
    .locals 1

    .line 80
    iget v0, p0, Lcom/github/ybq/android/spinkit/b/f;->y:F

    return v0
.end method

.method public d(F)V
    .locals 0

    .line 126
    iput p1, p0, Lcom/github/ybq/android/spinkit/b/f;->n:F

    return-void
.end method

.method public d(I)V
    .locals 0

    .line 108
    iput p1, p0, Lcom/github/ybq/android/spinkit/b/f;->w:I

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 284
    invoke-virtual {p0}, Lcom/github/ybq/android/spinkit/b/f;->e()I

    move-result v0

    if-nez v0, :cond_0

    .line 285
    invoke-virtual {p0}, Lcom/github/ybq/android/spinkit/b/f;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/github/ybq/android/spinkit/b/f;->c()F

    move-result v1

    mul-float v0, v0, v1

    float-to-int v0, v0

    .line 286
    :cond_0
    invoke-virtual {p0}, Lcom/github/ybq/android/spinkit/b/f;->f()I

    move-result v1

    if-nez v1, :cond_1

    .line 287
    invoke-virtual {p0}, Lcom/github/ybq/android/spinkit/b/f;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/github/ybq/android/spinkit/b/f;->d()F

    move-result v2

    mul-float v1, v1, v2

    float-to-int v1, v1

    :cond_1
    int-to-float v0, v0

    int-to-float v1, v1

    .line 288
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 289
    invoke-virtual {p0}, Lcom/github/ybq/android/spinkit/b/f;->i()F

    move-result v0

    invoke-virtual {p0}, Lcom/github/ybq/android/spinkit/b/f;->j()F

    move-result v1

    invoke-virtual {p0}, Lcom/github/ybq/android/spinkit/b/f;->m()F

    move-result v2

    invoke-virtual {p0}, Lcom/github/ybq/android/spinkit/b/f;->n()F

    move-result v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 290
    invoke-virtual {p0}, Lcom/github/ybq/android/spinkit/b/f;->g()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/github/ybq/android/spinkit/b/f;->m()F

    move-result v1

    invoke-virtual {p0}, Lcom/github/ybq/android/spinkit/b/f;->n()F

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 292
    invoke-virtual {p0}, Lcom/github/ybq/android/spinkit/b/f;->k()I

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/github/ybq/android/spinkit/b/f;->l()I

    move-result v0

    if-eqz v0, :cond_3

    .line 293
    :cond_2
    iget-object v0, p0, Lcom/github/ybq/android/spinkit/b/f;->C:Landroid/graphics/Camera;

    invoke-virtual {v0}, Landroid/graphics/Camera;->save()V

    .line 294
    iget-object v0, p0, Lcom/github/ybq/android/spinkit/b/f;->C:Landroid/graphics/Camera;

    invoke-virtual {p0}, Lcom/github/ybq/android/spinkit/b/f;->k()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Camera;->rotateX(F)V

    .line 295
    iget-object v0, p0, Lcom/github/ybq/android/spinkit/b/f;->C:Landroid/graphics/Camera;

    invoke-virtual {p0}, Lcom/github/ybq/android/spinkit/b/f;->l()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Camera;->rotateY(F)V

    .line 296
    iget-object v0, p0, Lcom/github/ybq/android/spinkit/b/f;->C:Landroid/graphics/Camera;

    iget-object v1, p0, Lcom/github/ybq/android/spinkit/b/f;->D:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    .line 297
    iget-object v0, p0, Lcom/github/ybq/android/spinkit/b/f;->D:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lcom/github/ybq/android/spinkit/b/f;->m()F

    move-result v1

    neg-float v1, v1

    invoke-virtual {p0}, Lcom/github/ybq/android/spinkit/b/f;->n()F

    move-result v2

    neg-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 298
    iget-object v0, p0, Lcom/github/ybq/android/spinkit/b/f;->D:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lcom/github/ybq/android/spinkit/b/f;->m()F

    move-result v1

    invoke-virtual {p0}, Lcom/github/ybq/android/spinkit/b/f;->n()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 299
    iget-object v0, p0, Lcom/github/ybq/android/spinkit/b/f;->C:Landroid/graphics/Camera;

    invoke-virtual {v0}, Landroid/graphics/Camera;->restore()V

    .line 300
    iget-object v0, p0, Lcom/github/ybq/android/spinkit/b/f;->D:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 302
    :cond_3
    invoke-virtual {p0, p1}, Lcom/github/ybq/android/spinkit/b/f;->a_(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public e()I
    .locals 1

    .line 88
    iget v0, p0, Lcom/github/ybq/android/spinkit/b/f;->u:I

    return v0
.end method

.method public e(F)V
    .locals 0

    .line 134
    iput p1, p0, Lcom/github/ybq/android/spinkit/b/f;->o:F

    return-void
.end method

.method public e(I)V
    .locals 0

    .line 142
    iput p1, p0, Lcom/github/ybq/android/spinkit/b/f;->s:I

    return-void
.end method

.method public f()I
    .locals 1

    .line 96
    iget v0, p0, Lcom/github/ybq/android/spinkit/b/f;->v:I

    return v0
.end method

.method public f(F)V
    .locals 0

    .line 158
    iput p1, p0, Lcom/github/ybq/android/spinkit/b/f;->p:F

    return-void
.end method

.method public f(I)V
    .locals 0

    .line 150
    iput p1, p0, Lcom/github/ybq/android/spinkit/b/f;->t:I

    return-void
.end method

.method public g()I
    .locals 1

    .line 104
    iget v0, p0, Lcom/github/ybq/android/spinkit/b/f;->w:I

    return v0
.end method

.method public g(I)Lcom/github/ybq/android/spinkit/b/f;
    .locals 0

    .line 175
    iput p1, p0, Lcom/github/ybq/android/spinkit/b/f;->r:I

    return-object p0
.end method

.method public g(F)V
    .locals 0

    .line 166
    iput p1, p0, Lcom/github/ybq/android/spinkit/b/f;->q:F

    return-void
.end method

.method public getAlpha()I
    .locals 1

    .line 63
    iget v0, p0, Lcom/github/ybq/android/spinkit/b/f;->A:I

    return v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public h()F
    .locals 1

    .line 112
    iget v0, p0, Lcom/github/ybq/android/spinkit/b/f;->m:F

    return v0
.end method

.method public i()F
    .locals 1

    .line 122
    iget v0, p0, Lcom/github/ybq/android/spinkit/b/f;->n:F

    return v0
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 257
    invoke-virtual {p0}, Lcom/github/ybq/android/spinkit/b/f;->invalidateSelf()V

    return-void
.end method

.method public isRunning()Z
    .locals 1

    .line 236
    iget-object v0, p0, Lcom/github/ybq/android/spinkit/b/f;->z:Landroid/animation/ValueAnimator;

    invoke-static {v0}, Lcom/github/ybq/android/spinkit/a/a;->a(Landroid/animation/ValueAnimator;)Z

    move-result v0

    return v0
.end method

.method public j()F
    .locals 1

    .line 130
    iget v0, p0, Lcom/github/ybq/android/spinkit/b/f;->o:F

    return v0
.end method

.method public k()I
    .locals 1

    .line 138
    iget v0, p0, Lcom/github/ybq/android/spinkit/b/f;->s:I

    return v0
.end method

.method public l()I
    .locals 1

    .line 146
    iget v0, p0, Lcom/github/ybq/android/spinkit/b/f;->t:I

    return v0
.end method

.method public m()F
    .locals 1

    .line 154
    iget v0, p0, Lcom/github/ybq/android/spinkit/b/f;->p:F

    return v0
.end method

.method public n()F
    .locals 1

    .line 162
    iget v0, p0, Lcom/github/ybq/android/spinkit/b/f;->q:F

    return v0
.end method

.method public o()Landroid/animation/ValueAnimator;
    .locals 3

    .line 202
    iget-object v0, p0, Lcom/github/ybq/android/spinkit/b/f;->z:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_0

    .line 203
    invoke-virtual {p0}, Lcom/github/ybq/android/spinkit/b/f;->a()Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/github/ybq/android/spinkit/b/f;->z:Landroid/animation/ValueAnimator;

    .line 205
    :cond_0
    iget-object v0, p0, Lcom/github/ybq/android/spinkit/b/f;->z:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    .line 206
    iget-object v0, p0, Lcom/github/ybq/android/spinkit/b/f;->z:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 207
    iget-object v0, p0, Lcom/github/ybq/android/spinkit/b/f;->z:Landroid/animation/ValueAnimator;

    iget v1, p0, Lcom/github/ybq/android/spinkit/b/f;->r:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 209
    :cond_1
    iget-object v0, p0, Lcom/github/ybq/android/spinkit/b/f;->z:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 272
    invoke-virtual {p0}, Lcom/github/ybq/android/spinkit/b/f;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 274
    invoke-interface {p1, p0}, Landroid/graphics/drawable/Drawable$Callback;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 0

    .line 241
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 242
    invoke-virtual {p0, p1}, Lcom/github/ybq/android/spinkit/b/f;->a(Landroid/graphics/Rect;)V

    return-void
.end method

.method public p()V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 224
    iput v0, p0, Lcom/github/ybq/android/spinkit/b/f;->m:F

    const/4 v0, 0x0

    .line 225
    iput v0, p0, Lcom/github/ybq/android/spinkit/b/f;->s:I

    .line 226
    iput v0, p0, Lcom/github/ybq/android/spinkit/b/f;->t:I

    .line 227
    iput v0, p0, Lcom/github/ybq/android/spinkit/b/f;->u:I

    .line 228
    iput v0, p0, Lcom/github/ybq/android/spinkit/b/f;->v:I

    .line 229
    iput v0, p0, Lcom/github/ybq/android/spinkit/b/f;->w:I

    const/4 v0, 0x0

    .line 230
    iput v0, p0, Lcom/github/ybq/android/spinkit/b/f;->x:F

    .line 231
    iput v0, p0, Lcom/github/ybq/android/spinkit/b/f;->y:F

    return-void
.end method

.method public q()Landroid/graphics/Rect;
    .locals 1

    .line 279
    iget-object v0, p0, Lcom/github/ybq/android/spinkit/b/f;->a:Landroid/graphics/Rect;

    return-object v0
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 0

    return-void
.end method

.method public setAlpha(I)V
    .locals 0

    .line 58
    iput p1, p0, Lcom/github/ybq/android/spinkit/b/f;->A:I

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method

.method public start()V
    .locals 1

    .line 188
    iget-object v0, p0, Lcom/github/ybq/android/spinkit/b/f;->z:Landroid/animation/ValueAnimator;

    invoke-static {v0}, Lcom/github/ybq/android/spinkit/a/a;->b(Landroid/animation/ValueAnimator;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 192
    :cond_0
    invoke-virtual {p0}, Lcom/github/ybq/android/spinkit/b/f;->o()Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/github/ybq/android/spinkit/b/f;->z:Landroid/animation/ValueAnimator;

    .line 193
    iget-object v0, p0, Lcom/github/ybq/android/spinkit/b/f;->z:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_1

    return-void

    .line 197
    :cond_1
    iget-object v0, p0, Lcom/github/ybq/android/spinkit/b/f;->z:Landroid/animation/ValueAnimator;

    invoke-static {v0}, Lcom/github/ybq/android/spinkit/a/a;->a(Landroid/animation/Animator;)V

    .line 198
    invoke-virtual {p0}, Lcom/github/ybq/android/spinkit/b/f;->invalidateSelf()V

    return-void
.end method

.method public stop()V
    .locals 1

    .line 214
    iget-object v0, p0, Lcom/github/ybq/android/spinkit/b/f;->z:Landroid/animation/ValueAnimator;

    invoke-static {v0}, Lcom/github/ybq/android/spinkit/a/a;->b(Landroid/animation/ValueAnimator;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/github/ybq/android/spinkit/b/f;->z:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 216
    iget-object v0, p0, Lcom/github/ybq/android/spinkit/b/f;->z:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    .line 217
    invoke-virtual {p0}, Lcom/github/ybq/android/spinkit/b/f;->p()V

    :cond_0
    return-void
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 0

    return-void
.end method
