.class public Lin/srain/cube/views/ptr/header/a;
.super Landroid/graphics/drawable/Drawable;
.source "MaterialProgressDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/Animatable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lin/srain/cube/views/ptr/header/a$b;,
        Lin/srain/cube/views/ptr/header/a$d;,
        Lin/srain/cube/views/ptr/header/a$a;,
        Lin/srain/cube/views/ptr/header/a$c;
    }
.end annotation


# static fields
.field private static final a:Landroid/view/animation/Interpolator;

.field private static final b:Landroid/view/animation/Interpolator;

.field private static final c:Landroid/view/animation/Interpolator;

.field private static final d:Landroid/view/animation/Interpolator;


# instance fields
.field private final e:[I

.field private final f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/animation/Animation;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Lin/srain/cube/views/ptr/header/a$c;

.field private final h:Landroid/graphics/drawable/Drawable$Callback;

.field private i:F

.field private j:Landroid/content/res/Resources;

.field private k:Landroid/view/View;

.field private l:Landroid/view/animation/Animation;

.field private m:F

.field private n:D

.field private o:D

.field private p:Landroid/view/animation/Animation;

.field private q:I

.field private r:Landroid/graphics/drawable/ShapeDrawable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 48
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Lin/srain/cube/views/ptr/header/a;->a:Landroid/view/animation/Interpolator;

    .line 49
    new-instance v0, Lin/srain/cube/views/ptr/header/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lin/srain/cube/views/ptr/header/a$a;-><init>(Lin/srain/cube/views/ptr/header/a$1;)V

    sput-object v0, Lin/srain/cube/views/ptr/header/a;->b:Landroid/view/animation/Interpolator;

    .line 50
    new-instance v0, Lin/srain/cube/views/ptr/header/a$d;

    invoke-direct {v0, v1}, Lin/srain/cube/views/ptr/header/a$d;-><init>(Lin/srain/cube/views/ptr/header/a$1;)V

    sput-object v0, Lin/srain/cube/views/ptr/header/a;->c:Landroid/view/animation/Interpolator;

    .line 51
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    sput-object v0, Lin/srain/cube/views/ptr/header/a;->d:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 1

    .line 129
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/4 v0, 0x4

    .line 85
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lin/srain/cube/views/ptr/header/a;->e:[I

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lin/srain/cube/views/ptr/header/a;->f:Ljava/util/ArrayList;

    .line 99
    new-instance v0, Lin/srain/cube/views/ptr/header/a$1;

    invoke-direct {v0, p0}, Lin/srain/cube/views/ptr/header/a$1;-><init>(Lin/srain/cube/views/ptr/header/a;)V

    iput-object v0, p0, Lin/srain/cube/views/ptr/header/a;->h:Landroid/graphics/drawable/Drawable$Callback;

    .line 130
    iput-object p2, p0, Lin/srain/cube/views/ptr/header/a;->k:Landroid/view/View;

    .line 131
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Lin/srain/cube/views/ptr/header/a;->j:Landroid/content/res/Resources;

    .line 132
    new-instance p1, Lin/srain/cube/views/ptr/header/a$c;

    iget-object p2, p0, Lin/srain/cube/views/ptr/header/a;->h:Landroid/graphics/drawable/Drawable$Callback;

    invoke-direct {p1, p2}, Lin/srain/cube/views/ptr/header/a$c;-><init>(Landroid/graphics/drawable/Drawable$Callback;)V

    iput-object p1, p0, Lin/srain/cube/views/ptr/header/a;->g:Lin/srain/cube/views/ptr/header/a$c;

    .line 133
    iget-object p1, p0, Lin/srain/cube/views/ptr/header/a;->g:Lin/srain/cube/views/ptr/header/a$c;

    iget-object p2, p0, Lin/srain/cube/views/ptr/header/a;->e:[I

    invoke-virtual {p1, p2}, Lin/srain/cube/views/ptr/header/a$c;->a([I)V

    const/4 p1, 0x1

    .line 134
    invoke-virtual {p0, p1}, Lin/srain/cube/views/ptr/header/a;->a(I)V

    .line 135
    invoke-direct {p0}, Lin/srain/cube/views/ptr/header/a;->c()V

    return-void

    nop

    :array_0
    .array-data 4
        -0x36cbc9
        -0xc8a40f
        -0x82dc2
        -0xcb5cb0
    .end array-data
.end method

.method static synthetic a(Lin/srain/cube/views/ptr/header/a;F)F
    .locals 0

    .line 42
    iput p1, p0, Lin/srain/cube/views/ptr/header/a;->m:F

    return p1
.end method

.method static synthetic a(Lin/srain/cube/views/ptr/header/a;)Landroid/view/animation/Animation;
    .locals 0

    .line 42
    iget-object p0, p0, Lin/srain/cube/views/ptr/header/a;->l:Landroid/view/animation/Animation;

    return-object p0
.end method

.method static synthetic a()Landroid/view/animation/Interpolator;
    .locals 1

    .line 42
    sget-object v0, Lin/srain/cube/views/ptr/header/a;->c:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method private a(D)V
    .locals 4

    .line 154
    iget-object v0, p0, Lin/srain/cube/views/ptr/header/a;->k:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lin/srain/cube/views/ptr/b/b;->a(Landroid/content/Context;)V

    const/high16 v0, 0x3fe00000    # 1.75f

    .line 155
    invoke-static {v0}, Lin/srain/cube/views/ptr/b/b;->a(F)I

    move-result v0

    const/4 v1, 0x0

    .line 156
    invoke-static {v1}, Lin/srain/cube/views/ptr/b/b;->a(F)I

    move-result v1

    const/high16 v2, 0x40600000    # 3.5f

    .line 157
    invoke-static {v2}, Lin/srain/cube/views/ptr/b/b;->a(F)I

    move-result v2

    .line 158
    new-instance v3, Lin/srain/cube/views/ptr/header/a$b;

    double-to-int p1, p1

    invoke-direct {v3, p0, v2, p1}, Lin/srain/cube/views/ptr/header/a$b;-><init>(Lin/srain/cube/views/ptr/header/a;II)V

    .line 159
    new-instance p1, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {p1, v3}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    iput-object p1, p0, Lin/srain/cube/views/ptr/header/a;->r:Landroid/graphics/drawable/ShapeDrawable;

    .line 160
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0xb

    if-lt p1, p2, :cond_0

    .line 161
    iget-object p1, p0, Lin/srain/cube/views/ptr/header/a;->k:Landroid/view/View;

    const/4 p2, 0x1

    iget-object v3, p0, Lin/srain/cube/views/ptr/header/a;->r:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v3

    invoke-virtual {p1, p2, v3}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 163
    :cond_0
    iget-object p1, p0, Lin/srain/cube/views/ptr/header/a;->r:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object p1

    int-to-float p2, v2

    int-to-float v1, v1

    int-to-float v0, v0

    const/high16 v2, 0x1e000000

    invoke-virtual {p1, p2, v1, v0, v2}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    return-void
.end method

.method private a(DDDDFF)V
    .locals 4

    .line 140
    iget-object v0, p0, Lin/srain/cube/views/ptr/header/a;->g:Lin/srain/cube/views/ptr/header/a$c;

    .line 141
    iget-object v1, p0, Lin/srain/cube/views/ptr/header/a;->j:Landroid/content/res/Resources;

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 142
    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    float-to-double v2, v1

    mul-double p1, p1, v2

    .line 143
    iput-wide p1, p0, Lin/srain/cube/views/ptr/header/a;->n:D

    mul-double p3, p3, v2

    .line 144
    iput-wide p3, p0, Lin/srain/cube/views/ptr/header/a;->o:D

    double-to-float p1, p7

    mul-float p1, p1, v1

    .line 145
    invoke-virtual {v0, p1}, Lin/srain/cube/views/ptr/header/a$c;->a(F)V

    mul-double p5, p5, v2

    .line 146
    invoke-virtual {v0, p5, p6}, Lin/srain/cube/views/ptr/header/a$c;->a(D)V

    const/4 p1, 0x0

    .line 147
    invoke-virtual {v0, p1}, Lin/srain/cube/views/ptr/header/a$c;->b(I)V

    mul-float p9, p9, v1

    mul-float p10, p10, v1

    .line 148
    invoke-virtual {v0, p9, p10}, Lin/srain/cube/views/ptr/header/a$c;->a(FF)V

    .line 149
    iget-wide p1, p0, Lin/srain/cube/views/ptr/header/a;->n:D

    double-to-int p1, p1

    iget-wide p2, p0, Lin/srain/cube/views/ptr/header/a;->o:D

    double-to-int p2, p2

    invoke-virtual {v0, p1, p2}, Lin/srain/cube/views/ptr/header/a$c;->a(II)V

    .line 150
    iget-wide p1, p0, Lin/srain/cube/views/ptr/header/a;->n:D

    invoke-direct {p0, p1, p2}, Lin/srain/cube/views/ptr/header/a;->a(D)V

    return-void
.end method

.method static synthetic b(Lin/srain/cube/views/ptr/header/a;)Landroid/view/View;
    .locals 0

    .line 42
    iget-object p0, p0, Lin/srain/cube/views/ptr/header/a;->k:Landroid/view/View;

    return-object p0
.end method

.method static synthetic b()Landroid/view/animation/Interpolator;
    .locals 1

    .line 42
    sget-object v0, Lin/srain/cube/views/ptr/header/a;->b:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic c(Lin/srain/cube/views/ptr/header/a;)F
    .locals 0

    .line 42
    iget p0, p0, Lin/srain/cube/views/ptr/header/a;->m:F

    return p0
.end method

.method private c()V
    .locals 5

    .line 328
    iget-object v0, p0, Lin/srain/cube/views/ptr/header/a;->g:Lin/srain/cube/views/ptr/header/a$c;

    .line 329
    new-instance v1, Lin/srain/cube/views/ptr/header/a$2;

    invoke-direct {v1, p0, v0}, Lin/srain/cube/views/ptr/header/a$2;-><init>(Lin/srain/cube/views/ptr/header/a;Lin/srain/cube/views/ptr/header/a$c;)V

    .line 345
    sget-object v2, Lin/srain/cube/views/ptr/header/a;->d:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const-wide/16 v2, 0x29a

    .line 346
    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 347
    new-instance v2, Lin/srain/cube/views/ptr/header/a$3;

    invoke-direct {v2, p0, v0}, Lin/srain/cube/views/ptr/header/a$3;-><init>(Lin/srain/cube/views/ptr/header/a;Lin/srain/cube/views/ptr/header/a$c;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 364
    new-instance v2, Lin/srain/cube/views/ptr/header/a$4;

    invoke-direct {v2, p0, v0}, Lin/srain/cube/views/ptr/header/a$4;-><init>(Lin/srain/cube/views/ptr/header/a;Lin/srain/cube/views/ptr/header/a$c;)V

    const/4 v3, -0x1

    .line 390
    invoke-virtual {v2, v3}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    const/4 v3, 0x1

    .line 391
    invoke-virtual {v2, v3}, Landroid/view/animation/Animation;->setRepeatMode(I)V

    .line 392
    sget-object v3, Lin/srain/cube/views/ptr/header/a;->a:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v3}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const-wide/16 v3, 0x535

    .line 393
    invoke-virtual {v2, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 394
    new-instance v3, Lin/srain/cube/views/ptr/header/a$5;

    invoke-direct {v3, p0, v0}, Lin/srain/cube/views/ptr/header/a$5;-><init>(Lin/srain/cube/views/ptr/header/a;Lin/srain/cube/views/ptr/header/a$c;)V

    invoke-virtual {v2, v3}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 413
    iput-object v1, p0, Lin/srain/cube/views/ptr/header/a;->p:Landroid/view/animation/Animation;

    .line 414
    iput-object v2, p0, Lin/srain/cube/views/ptr/header/a;->l:Landroid/view/animation/Animation;

    return-void
.end method


# virtual methods
.method public a(F)V
    .locals 1

    .line 194
    iget-object v0, p0, Lin/srain/cube/views/ptr/header/a;->g:Lin/srain/cube/views/ptr/header/a$c;

    invoke-virtual {v0, p1}, Lin/srain/cube/views/ptr/header/a$c;->e(F)V

    return-void
.end method

.method public a(FF)V
    .locals 1

    .line 204
    iget-object v0, p0, Lin/srain/cube/views/ptr/header/a;->g:Lin/srain/cube/views/ptr/header/a$c;

    invoke-virtual {v0, p1}, Lin/srain/cube/views/ptr/header/a$c;->b(F)V

    .line 205
    iget-object p1, p0, Lin/srain/cube/views/ptr/header/a;->g:Lin/srain/cube/views/ptr/header/a$c;

    invoke-virtual {p1, p2}, Lin/srain/cube/views/ptr/header/a$c;->c(F)V

    return-void
.end method

.method public a(I)V
    .locals 22

    if-nez p1, :cond_0

    const-wide/high16 v1, 0x404c000000000000L    # 56.0

    const-wide/high16 v3, 0x404c000000000000L    # 56.0

    const-wide/high16 v5, 0x4029000000000000L    # 12.5

    const-wide/high16 v7, 0x4008000000000000L    # 3.0

    const/high16 v9, 0x41400000    # 12.0f

    const/high16 v10, 0x40c00000    # 6.0f

    move-object/from16 v0, p0

    .line 175
    invoke-direct/range {v0 .. v10}, Lin/srain/cube/views/ptr/header/a;->a(DDDDFF)V

    goto :goto_0

    :cond_0
    const-wide/high16 v12, 0x4044000000000000L    # 40.0

    const-wide/high16 v14, 0x4044000000000000L    # 40.0

    const-wide v16, 0x4021800000000000L    # 8.75

    const-wide/high16 v18, 0x4004000000000000L    # 2.5

    const/high16 v20, 0x41200000    # 10.0f

    const/high16 v21, 0x40a00000    # 5.0f

    move-object/from16 v11, p0

    .line 178
    invoke-direct/range {v11 .. v21}, Lin/srain/cube/views/ptr/header/a;->a(DDDDFF)V

    :goto_0
    return-void
.end method

.method public a(Z)V
    .locals 1

    .line 187
    iget-object v0, p0, Lin/srain/cube/views/ptr/header/a;->g:Lin/srain/cube/views/ptr/header/a$c;

    invoke-virtual {v0, p1}, Lin/srain/cube/views/ptr/header/a$c;->a(Z)V

    return-void
.end method

.method public varargs a([I)V
    .locals 1

    .line 233
    iget-object v0, p0, Lin/srain/cube/views/ptr/header/a;->g:Lin/srain/cube/views/ptr/header/a$c;

    invoke-virtual {v0, p1}, Lin/srain/cube/views/ptr/header/a$c;->a([I)V

    .line 234
    iget-object p1, p0, Lin/srain/cube/views/ptr/header/a;->g:Lin/srain/cube/views/ptr/header/a$c;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lin/srain/cube/views/ptr/header/a$c;->b(I)V

    return-void
.end method

.method public b(F)V
    .locals 1

    .line 214
    iget-object v0, p0, Lin/srain/cube/views/ptr/header/a;->g:Lin/srain/cube/views/ptr/header/a$c;

    invoke-virtual {v0, p1}, Lin/srain/cube/views/ptr/header/a$c;->d(F)V

    return-void
.end method

.method public b(I)V
    .locals 1

    .line 221
    iput p1, p0, Lin/srain/cube/views/ptr/header/a;->q:I

    .line 222
    iget-object v0, p0, Lin/srain/cube/views/ptr/header/a;->g:Lin/srain/cube/views/ptr/header/a$c;

    invoke-virtual {v0, p1}, Lin/srain/cube/views/ptr/header/a$c;->a(I)V

    return-void
.end method

.method c(F)V
    .locals 0

    .line 282
    iput p1, p0, Lin/srain/cube/views/ptr/header/a;->i:F

    .line 283
    invoke-virtual {p0}, Lin/srain/cube/views/ptr/header/a;->invalidateSelf()V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 249
    iget-object v0, p0, Lin/srain/cube/views/ptr/header/a;->r:Landroid/graphics/drawable/ShapeDrawable;

    if-eqz v0, :cond_0

    .line 250
    iget-object v0, p0, Lin/srain/cube/views/ptr/header/a;->r:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    iget v1, p0, Lin/srain/cube/views/ptr/header/a;->q:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 251
    iget-object v0, p0, Lin/srain/cube/views/ptr/header/a;->r:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/ShapeDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 254
    :cond_0
    invoke-virtual {p0}, Lin/srain/cube/views/ptr/header/a;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 255
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 256
    iget v2, p0, Lin/srain/cube/views/ptr/header/a;->i:F

    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 257
    iget-object v2, p0, Lin/srain/cube/views/ptr/header/a;->g:Lin/srain/cube/views/ptr/header/a$c;

    invoke-virtual {v2, p1, v0}, Lin/srain/cube/views/ptr/header/a$c;->a(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 258
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method public getAlpha()I
    .locals 1

    .line 262
    iget-object v0, p0, Lin/srain/cube/views/ptr/header/a;->g:Lin/srain/cube/views/ptr/header/a$c;

    invoke-virtual {v0}, Lin/srain/cube/views/ptr/header/a$c;->b()I

    move-result v0

    return v0
.end method

.method public getIntrinsicHeight()I
    .locals 2

    .line 239
    iget-wide v0, p0, Lin/srain/cube/views/ptr/header/a;->o:D

    double-to-int v0, v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 2

    .line 244
    iget-wide v0, p0, Lin/srain/cube/views/ptr/header/a;->n:D

    double-to-int v0, v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public isRunning()Z
    .locals 6

    .line 293
    iget-object v0, p0, Lin/srain/cube/views/ptr/header/a;->f:Ljava/util/ArrayList;

    .line 294
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    .line 296
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/animation/Animation;

    .line 297
    invoke-virtual {v4}, Landroid/view/animation/Animation;->hasStarted()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Landroid/view/animation/Animation;->hasEnded()Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public setAlpha(I)V
    .locals 1

    .line 267
    iget-object v0, p0, Lin/srain/cube/views/ptr/header/a;->g:Lin/srain/cube/views/ptr/header/a$c;

    invoke-virtual {v0, p1}, Lin/srain/cube/views/ptr/header/a$c;->c(I)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 272
    iget-object v0, p0, Lin/srain/cube/views/ptr/header/a;->g:Lin/srain/cube/views/ptr/header/a$c;

    invoke-virtual {v0, p1}, Lin/srain/cube/views/ptr/header/a$c;->a(Landroid/graphics/ColorFilter;)V

    return-void
.end method

.method public start()V
    .locals 2

    .line 306
    iget-object v0, p0, Lin/srain/cube/views/ptr/header/a;->l:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->reset()V

    .line 307
    iget-object v0, p0, Lin/srain/cube/views/ptr/header/a;->g:Lin/srain/cube/views/ptr/header/a$c;

    invoke-virtual {v0}, Lin/srain/cube/views/ptr/header/a$c;->j()V

    .line 309
    iget-object v0, p0, Lin/srain/cube/views/ptr/header/a;->g:Lin/srain/cube/views/ptr/header/a$c;

    invoke-virtual {v0}, Lin/srain/cube/views/ptr/header/a$c;->g()F

    move-result v0

    iget-object v1, p0, Lin/srain/cube/views/ptr/header/a;->g:Lin/srain/cube/views/ptr/header/a$c;

    invoke-virtual {v1}, Lin/srain/cube/views/ptr/header/a$c;->d()F

    move-result v1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 310
    iget-object v0, p0, Lin/srain/cube/views/ptr/header/a;->k:Landroid/view/View;

    iget-object v1, p0, Lin/srain/cube/views/ptr/header/a;->p:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 312
    :cond_0
    iget-object v0, p0, Lin/srain/cube/views/ptr/header/a;->g:Lin/srain/cube/views/ptr/header/a$c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lin/srain/cube/views/ptr/header/a$c;->b(I)V

    .line 313
    iget-object v0, p0, Lin/srain/cube/views/ptr/header/a;->g:Lin/srain/cube/views/ptr/header/a$c;

    invoke-virtual {v0}, Lin/srain/cube/views/ptr/header/a$c;->k()V

    .line 314
    iget-object v0, p0, Lin/srain/cube/views/ptr/header/a;->k:Landroid/view/View;

    iget-object v1, p0, Lin/srain/cube/views/ptr/header/a;->l:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :goto_0
    return-void
.end method

.method public stop()V
    .locals 2

    .line 320
    iget-object v0, p0, Lin/srain/cube/views/ptr/header/a;->k:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    const/4 v0, 0x0

    .line 321
    invoke-virtual {p0, v0}, Lin/srain/cube/views/ptr/header/a;->c(F)V

    .line 322
    iget-object v0, p0, Lin/srain/cube/views/ptr/header/a;->g:Lin/srain/cube/views/ptr/header/a$c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lin/srain/cube/views/ptr/header/a$c;->a(Z)V

    .line 323
    iget-object v0, p0, Lin/srain/cube/views/ptr/header/a;->g:Lin/srain/cube/views/ptr/header/a$c;

    invoke-virtual {v0, v1}, Lin/srain/cube/views/ptr/header/a$c;->b(I)V

    .line 324
    iget-object v0, p0, Lin/srain/cube/views/ptr/header/a;->g:Lin/srain/cube/views/ptr/header/a$c;

    invoke-virtual {v0}, Lin/srain/cube/views/ptr/header/a$c;->k()V

    return-void
.end method
