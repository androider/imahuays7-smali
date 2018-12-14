.class public Lcom/kyleduo/switchbutton/SwitchButton;
.super Landroid/widget/CompoundButton;
.source "SwitchButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kyleduo/switchbutton/SwitchButton$SavedState;
    }
.end annotation


# static fields
.field private static a:[I

.field private static b:[I


# instance fields
.field private A:Landroid/graphics/RectF;

.field private B:Landroid/graphics/RectF;

.field private C:Landroid/graphics/RectF;

.field private D:Landroid/graphics/Paint;

.field private E:Z

.field private F:Z

.field private G:Z

.field private H:Landroid/animation/ObjectAnimator;

.field private I:F

.field private J:Landroid/graphics/RectF;

.field private K:F

.field private L:F

.field private M:F

.field private N:I

.field private O:I

.field private P:Landroid/graphics/Paint;

.field private Q:Ljava/lang/CharSequence;

.field private R:Ljava/lang/CharSequence;

.field private S:Landroid/text/TextPaint;

.field private T:Landroid/text/Layout;

.field private U:Landroid/text/Layout;

.field private V:F

.field private W:F

.field private aa:I

.field private ab:I

.field private ac:I

.field private ad:Z

.field private ae:Z

.field private af:Z

.field private ag:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private c:Landroid/graphics/drawable/Drawable;

.field private d:Landroid/graphics/drawable/Drawable;

.field private e:Landroid/content/res/ColorStateList;

.field private f:Landroid/content/res/ColorStateList;

.field private g:F

.field private h:F

.field private i:Landroid/graphics/RectF;

.field private j:F

.field private k:J

.field private l:Z

.field private m:I

.field private n:I

.field private o:I

.field private p:I

.field private q:I

.field private r:I

.field private s:I

.field private t:I

.field private u:I

.field private v:I

.field private w:Landroid/graphics/drawable/Drawable;

.field private x:Landroid/graphics/drawable/Drawable;

.field private y:Landroid/graphics/RectF;

.field private z:Landroid/graphics/RectF;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x3

    .line 48
    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lcom/kyleduo/switchbutton/SwitchButton;->a:[I

    .line 49
    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/kyleduo/switchbutton/SwitchButton;->b:[I

    return-void

    :array_0
    .array-data 4
        0x10100a0
        0x101009e
        0x10100a7
    .end array-data

    :array_1
    .array-data 4
        -0x10100a0
        0x101009e
        0x10100a7
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 110
    invoke-direct {p0, p1}, Landroid/widget/CompoundButton;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 71
    iput-boolean p1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->G:Z

    .line 93
    iput-boolean p1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->ad:Z

    .line 94
    iput-boolean p1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->ae:Z

    .line 95
    iput-boolean p1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->af:Z

    const/4 p1, 0x0

    .line 111
    invoke-direct {p0, p1}, Lcom/kyleduo/switchbutton/SwitchButton;->a(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 105
    invoke-direct {p0, p1, p2}, Landroid/widget/CompoundButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 71
    iput-boolean p1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->G:Z

    .line 93
    iput-boolean p1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->ad:Z

    .line 94
    iput-boolean p1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->ae:Z

    .line 95
    iput-boolean p1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->af:Z

    .line 106
    invoke-direct {p0, p2}, Lcom/kyleduo/switchbutton/SwitchButton;->a(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 100
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/CompoundButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 71
    iput-boolean p1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->G:Z

    .line 93
    iput-boolean p1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->ad:Z

    .line 94
    iput-boolean p1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->ae:Z

    .line 95
    iput-boolean p1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->af:Z

    .line 101
    invoke-direct {p0, p2}, Lcom/kyleduo/switchbutton/SwitchButton;->a(Landroid/util/AttributeSet;)V

    return-void
.end method

.method private a(D)I
    .locals 0

    .line 473
    invoke-static {p1, p2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p1

    double-to-int p1, p1

    return p1
.end method

.method private a(I)I
    .locals 9

    .line 313
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 314
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    .line 317
    iget v1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->n:I

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->E:Z

    if-eqz v1, :cond_0

    .line 318
    iget-object v1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iput v1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->n:I

    .line 322
    :cond_0
    iget v1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->V:F

    float-to-double v1, v1

    invoke-direct {p0, v1, v2}, Lcom/kyleduo/switchbutton/SwitchButton;->a(D)I

    move-result v1

    .line 327
    iget v2, p0, Lcom/kyleduo/switchbutton/SwitchButton;->j:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    const v4, 0x3fe66666    # 1.8f

    if-nez v2, :cond_1

    .line 328
    iput v4, p0, Lcom/kyleduo/switchbutton/SwitchButton;->j:F

    :cond_1
    const/high16 v2, 0x40000000    # 2.0f

    const/4 v5, 0x0

    if-ne p1, v2, :cond_7

    .line 332
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getPaddingLeft()I

    move-result p1

    sub-int p1, v0, p1

    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getPaddingRight()I

    move-result v2

    sub-int/2addr p1, v2

    .line 334
    iget v2, p0, Lcom/kyleduo/switchbutton/SwitchButton;->n:I

    if-eqz v2, :cond_3

    .line 335
    iget v2, p0, Lcom/kyleduo/switchbutton/SwitchButton;->n:I

    int-to-float v2, v2

    iget v4, p0, Lcom/kyleduo/switchbutton/SwitchButton;->j:F

    mul-float v2, v2, v4

    float-to-double v6, v2

    invoke-direct {p0, v6, v7}, Lcom/kyleduo/switchbutton/SwitchButton;->a(D)I

    move-result v2

    .line 336
    iget v4, p0, Lcom/kyleduo/switchbutton/SwitchButton;->ab:I

    add-int/2addr v4, v1

    iget v6, p0, Lcom/kyleduo/switchbutton/SwitchButton;->n:I

    sub-int v6, v2, v6

    iget-object v7, p0, Lcom/kyleduo/switchbutton/SwitchButton;->i:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->left:F

    iget-object v8, p0, Lcom/kyleduo/switchbutton/SwitchButton;->i:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->right:F

    invoke-static {v7, v8}, Ljava/lang/Math;->max(FF)F

    move-result v7

    float-to-double v7, v7

    invoke-direct {p0, v7, v8}, Lcom/kyleduo/switchbutton/SwitchButton;->a(D)I

    move-result v7

    add-int/2addr v6, v7

    sub-int/2addr v4, v6

    int-to-float v2, v2

    .line 337
    iget-object v6, p0, Lcom/kyleduo/switchbutton/SwitchButton;->i:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    add-float/2addr v6, v2

    iget-object v7, p0, Lcom/kyleduo/switchbutton/SwitchButton;->i:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->right:F

    add-float/2addr v6, v7

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v6, v7

    float-to-double v6, v6

    invoke-direct {p0, v6, v7}, Lcom/kyleduo/switchbutton/SwitchButton;->a(D)I

    move-result v6

    iput v6, p0, Lcom/kyleduo/switchbutton/SwitchButton;->p:I

    .line 338
    iget v6, p0, Lcom/kyleduo/switchbutton/SwitchButton;->p:I

    if-gez v6, :cond_2

    .line 339
    iput v5, p0, Lcom/kyleduo/switchbutton/SwitchButton;->n:I

    .line 341
    :cond_2
    iget-object v6, p0, Lcom/kyleduo/switchbutton/SwitchButton;->i:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    invoke-static {v6, v3}, Ljava/lang/Math;->max(FF)F

    move-result v6

    add-float/2addr v2, v6

    iget-object v6, p0, Lcom/kyleduo/switchbutton/SwitchButton;->i:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->right:F

    invoke-static {v6, v3}, Ljava/lang/Math;->max(FF)F

    move-result v6

    add-float/2addr v2, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v2, v4

    int-to-float p1, p1

    cmpl-float p1, v2, p1

    if-lez p1, :cond_3

    .line 342
    iput v5, p0, Lcom/kyleduo/switchbutton/SwitchButton;->n:I

    .line 346
    :cond_3
    iget p1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->n:I

    if-nez p1, :cond_b

    .line 347
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getPaddingLeft()I

    move-result p1

    sub-int p1, v0, p1

    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getPaddingRight()I

    move-result v2

    sub-int/2addr p1, v2

    int-to-float p1, p1

    .line 348
    iget-object v2, p0, Lcom/kyleduo/switchbutton/SwitchButton;->i:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    sub-float/2addr p1, v2

    iget-object v2, p0, Lcom/kyleduo/switchbutton/SwitchButton;->i:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    sub-float/2addr p1, v2

    float-to-double v2, p1

    invoke-direct {p0, v2, v3}, Lcom/kyleduo/switchbutton/SwitchButton;->a(D)I

    move-result p1

    if-gez p1, :cond_4

    .line 350
    iput v5, p0, Lcom/kyleduo/switchbutton/SwitchButton;->n:I

    .line 351
    iput v5, p0, Lcom/kyleduo/switchbutton/SwitchButton;->p:I

    return v0

    :cond_4
    int-to-float v2, p1

    .line 354
    iget v3, p0, Lcom/kyleduo/switchbutton/SwitchButton;->j:F

    div-float v3, v2, v3

    float-to-double v3, v3

    invoke-direct {p0, v3, v4}, Lcom/kyleduo/switchbutton/SwitchButton;->a(D)I

    move-result v3

    iput v3, p0, Lcom/kyleduo/switchbutton/SwitchButton;->n:I

    .line 355
    iget-object v3, p0, Lcom/kyleduo/switchbutton/SwitchButton;->i:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/kyleduo/switchbutton/SwitchButton;->i:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-direct {p0, v2, v3}, Lcom/kyleduo/switchbutton/SwitchButton;->a(D)I

    move-result v2

    iput v2, p0, Lcom/kyleduo/switchbutton/SwitchButton;->p:I

    .line 356
    iget v2, p0, Lcom/kyleduo/switchbutton/SwitchButton;->p:I

    if-gez v2, :cond_5

    .line 357
    iput v5, p0, Lcom/kyleduo/switchbutton/SwitchButton;->n:I

    .line 358
    iput v5, p0, Lcom/kyleduo/switchbutton/SwitchButton;->p:I

    return v0

    .line 361
    :cond_5
    iget v2, p0, Lcom/kyleduo/switchbutton/SwitchButton;->ab:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/kyleduo/switchbutton/SwitchButton;->n:I

    sub-int/2addr p1, v2

    iget-object v2, p0, Lcom/kyleduo/switchbutton/SwitchButton;->i:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    iget-object v3, p0, Lcom/kyleduo/switchbutton/SwitchButton;->i:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    float-to-double v2, v2

    invoke-direct {p0, v2, v3}, Lcom/kyleduo/switchbutton/SwitchButton;->a(D)I

    move-result v2

    add-int/2addr p1, v2

    sub-int/2addr v1, p1

    if-lez v1, :cond_6

    .line 364
    iget p1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->n:I

    sub-int/2addr p1, v1

    iput p1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->n:I

    .line 366
    :cond_6
    iget p1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->n:I

    if-gez p1, :cond_b

    .line 367
    iput v5, p0, Lcom/kyleduo/switchbutton/SwitchButton;->n:I

    .line 368
    iput v5, p0, Lcom/kyleduo/switchbutton/SwitchButton;->p:I

    return v0

    .line 378
    :cond_7
    iget p1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->n:I

    if-nez p1, :cond_8

    .line 382
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x41a00000    # 20.0f

    mul-float p1, p1, v2

    float-to-double v6, p1

    invoke-direct {p0, v6, v7}, Lcom/kyleduo/switchbutton/SwitchButton;->a(D)I

    move-result p1

    iput p1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->n:I

    .line 384
    :cond_8
    iget p1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->j:F

    cmpl-float p1, p1, v3

    if-nez p1, :cond_9

    .line 385
    iput v4, p0, Lcom/kyleduo/switchbutton/SwitchButton;->j:F

    .line 388
    :cond_9
    iget p1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->n:I

    int-to-float p1, p1

    iget v2, p0, Lcom/kyleduo/switchbutton/SwitchButton;->j:F

    mul-float p1, p1, v2

    float-to-double v6, p1

    invoke-direct {p0, v6, v7}, Lcom/kyleduo/switchbutton/SwitchButton;->a(D)I

    move-result p1

    .line 389
    iget v2, p0, Lcom/kyleduo/switchbutton/SwitchButton;->ab:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/kyleduo/switchbutton/SwitchButton;->n:I

    sub-int v2, p1, v2

    int-to-float v2, v2

    iget-object v4, p0, Lcom/kyleduo/switchbutton/SwitchButton;->i:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    iget-object v6, p0, Lcom/kyleduo/switchbutton/SwitchButton;->i:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->right:F

    invoke-static {v4, v6}, Ljava/lang/Math;->max(FF)F

    move-result v4

    add-float/2addr v2, v4

    iget v4, p0, Lcom/kyleduo/switchbutton/SwitchButton;->aa:I

    int-to-float v4, v4

    add-float/2addr v2, v4

    sub-float/2addr v1, v2

    float-to-double v1, v1

    invoke-direct {p0, v1, v2}, Lcom/kyleduo/switchbutton/SwitchButton;->a(D)I

    move-result v1

    int-to-float p1, p1

    .line 390
    iget-object v2, p0, Lcom/kyleduo/switchbutton/SwitchButton;->i:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    add-float/2addr v2, p1

    iget-object v4, p0, Lcom/kyleduo/switchbutton/SwitchButton;->i:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    add-float/2addr v2, v4

    invoke-static {v5, v1}, Ljava/lang/Math;->max(II)I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v2, v4

    float-to-double v6, v2

    invoke-direct {p0, v6, v7}, Lcom/kyleduo/switchbutton/SwitchButton;->a(D)I

    move-result v2

    iput v2, p0, Lcom/kyleduo/switchbutton/SwitchButton;->p:I

    .line 391
    iget v2, p0, Lcom/kyleduo/switchbutton/SwitchButton;->p:I

    if-gez v2, :cond_a

    .line 392
    iput v5, p0, Lcom/kyleduo/switchbutton/SwitchButton;->n:I

    .line 393
    iput v5, p0, Lcom/kyleduo/switchbutton/SwitchButton;->p:I

    return v0

    .line 396
    :cond_a
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->i:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    invoke-static {v3, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    add-float/2addr p1, v0

    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->i:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    invoke-static {v3, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    add-float/2addr p1, v0

    invoke-static {v5, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    add-float/2addr p1, v0

    float-to-double v0, p1

    invoke-direct {p0, v0, v1}, Lcom/kyleduo/switchbutton/SwitchButton;->a(D)I

    move-result p1

    .line 398
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getPaddingLeft()I

    move-result v0

    add-int/2addr v0, p1

    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    :cond_b
    return v0
.end method

.method private a(Ljava/lang/CharSequence;)Landroid/text/Layout;
    .locals 9

    .line 266
    new-instance v8, Landroid/text/StaticLayout;

    iget-object v2, p0, Lcom/kyleduo/switchbutton/SwitchButton;->S:Landroid/text/TextPaint;

    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->S:Landroid/text/TextPaint;

    invoke-static {p1, v0}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v3, v0

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, v8

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    return-object v8
.end method

.method private a()V
    .locals 8

    .line 480
    iget v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->n:I

    if-eqz v0, :cond_8

    iget v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->o:I

    if-eqz v0, :cond_8

    iget v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->p:I

    if-eqz v0, :cond_8

    iget v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->q:I

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 484
    :cond_0
    iget v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->g:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    .line 485
    iget v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->n:I

    iget v2, p0, Lcom/kyleduo/switchbutton/SwitchButton;->o:I

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iput v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->g:F

    .line 487
    :cond_1
    iget v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->h:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2

    .line 488
    iget v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->p:I

    iget v1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->q:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iput v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->h:F

    .line 491
    :cond_2
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    .line 492
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    .line 495
    iget v2, p0, Lcom/kyleduo/switchbutton/SwitchButton;->p:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/kyleduo/switchbutton/SwitchButton;->i:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    const/4 v4, 0x0

    invoke-static {v4, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/kyleduo/switchbutton/SwitchButton;->i:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    invoke-static {v4, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    sub-float/2addr v2, v3

    float-to-double v2, v2

    invoke-direct {p0, v2, v3}, Lcom/kyleduo/switchbutton/SwitchButton;->a(D)I

    move-result v2

    .line 496
    iget v3, p0, Lcom/kyleduo/switchbutton/SwitchButton;->q:I

    int-to-float v3, v3

    iget-object v5, p0, Lcom/kyleduo/switchbutton/SwitchButton;->i:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v5

    sub-float/2addr v3, v5

    iget-object v5, p0, Lcom/kyleduo/switchbutton/SwitchButton;->i:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v5

    sub-float/2addr v3, v5

    float-to-double v5, v3

    invoke-direct {p0, v5, v6}, Lcom/kyleduo/switchbutton/SwitchButton;->a(D)I

    move-result v3

    const/4 v5, 0x1

    if-gt v1, v3, :cond_3

    .line 500
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getPaddingTop()I

    move-result v1

    int-to-float v1, v1

    iget-object v3, p0, Lcom/kyleduo/switchbutton/SwitchButton;->i:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    invoke-static {v4, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    add-float/2addr v1, v3

    goto :goto_0

    .line 503
    :cond_3
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getPaddingTop()I

    move-result v6

    int-to-float v6, v6

    iget-object v7, p0, Lcom/kyleduo/switchbutton/SwitchButton;->i:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->top:F

    invoke-static {v4, v7}, Ljava/lang/Math;->max(FF)F

    move-result v7

    add-float/2addr v6, v7

    sub-int/2addr v1, v3

    add-int/2addr v1, v5

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    add-float/2addr v1, v6

    .line 507
    :goto_0
    iget v3, p0, Lcom/kyleduo/switchbutton/SwitchButton;->p:I

    if-gt v0, v3, :cond_4

    .line 508
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getPaddingLeft()I

    move-result v0

    int-to-float v0, v0

    iget-object v2, p0, Lcom/kyleduo/switchbutton/SwitchButton;->i:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    invoke-static {v4, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    add-float/2addr v0, v2

    goto :goto_1

    .line 510
    :cond_4
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getPaddingLeft()I

    move-result v3

    int-to-float v3, v3

    iget-object v6, p0, Lcom/kyleduo/switchbutton/SwitchButton;->i:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    invoke-static {v4, v6}, Ljava/lang/Math;->max(FF)F

    move-result v6

    add-float/2addr v3, v6

    sub-int/2addr v0, v2

    add-int/2addr v0, v5

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    add-float/2addr v0, v3

    .line 513
    :goto_1
    iget-object v2, p0, Lcom/kyleduo/switchbutton/SwitchButton;->y:Landroid/graphics/RectF;

    iget v3, p0, Lcom/kyleduo/switchbutton/SwitchButton;->n:I

    int-to-float v3, v3

    add-float/2addr v3, v0

    iget v6, p0, Lcom/kyleduo/switchbutton/SwitchButton;->o:I

    int-to-float v6, v6

    add-float/2addr v6, v1

    invoke-virtual {v2, v0, v1, v3, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 515
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->y:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->i:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, v1

    .line 516
    iget-object v1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->z:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/kyleduo/switchbutton/SwitchButton;->y:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget-object v3, p0, Lcom/kyleduo/switchbutton/SwitchButton;->i:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/kyleduo/switchbutton/SwitchButton;->p:I

    int-to-float v3, v3

    add-float/2addr v3, v0

    iget-object v6, p0, Lcom/kyleduo/switchbutton/SwitchButton;->y:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    iget-object v7, p0, Lcom/kyleduo/switchbutton/SwitchButton;->i:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->top:F

    sub-float/2addr v6, v7

    iget v7, p0, Lcom/kyleduo/switchbutton/SwitchButton;->q:I

    int-to-float v7, v7

    add-float/2addr v6, v7

    invoke-virtual {v1, v0, v2, v3, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 521
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->A:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->y:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcom/kyleduo/switchbutton/SwitchButton;->z:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    iget-object v3, p0, Lcom/kyleduo/switchbutton/SwitchButton;->i:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/kyleduo/switchbutton/SwitchButton;->y:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v4, v2, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 523
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->z:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget-object v1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->z:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 524
    iget v2, p0, Lcom/kyleduo/switchbutton/SwitchButton;->h:F

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->h:F

    .line 526
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->d:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_5

    .line 527
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->d:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/kyleduo/switchbutton/SwitchButton;->z:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    float-to-int v2, v2

    iget-object v3, p0, Lcom/kyleduo/switchbutton/SwitchButton;->z:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    float-to-int v3, v3

    iget-object v4, p0, Lcom/kyleduo/switchbutton/SwitchButton;->z:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    float-to-double v6, v4

    invoke-direct {p0, v6, v7}, Lcom/kyleduo/switchbutton/SwitchButton;->a(D)I

    move-result v4

    iget-object v6, p0, Lcom/kyleduo/switchbutton/SwitchButton;->z:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->bottom:F

    float-to-double v6, v6

    invoke-direct {p0, v6, v7}, Lcom/kyleduo/switchbutton/SwitchButton;->a(D)I

    move-result v6

    invoke-virtual {v0, v2, v3, v4, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 530
    :cond_5
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->T:Landroid/text/Layout;

    if-eqz v0, :cond_6

    .line 531
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->z:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcom/kyleduo/switchbutton/SwitchButton;->z:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    iget v3, p0, Lcom/kyleduo/switchbutton/SwitchButton;->aa:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    iget v3, p0, Lcom/kyleduo/switchbutton/SwitchButton;->n:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/kyleduo/switchbutton/SwitchButton;->i:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/kyleduo/switchbutton/SwitchButton;->T:Landroid/text/Layout;

    invoke-virtual {v3}, Landroid/text/Layout;->getWidth()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    div-float/2addr v2, v1

    add-float/2addr v0, v2

    iget v2, p0, Lcom/kyleduo/switchbutton/SwitchButton;->ac:I

    int-to-float v2, v2

    sub-float/2addr v0, v2

    .line 532
    iget-object v2, p0, Lcom/kyleduo/switchbutton/SwitchButton;->z:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget-object v3, p0, Lcom/kyleduo/switchbutton/SwitchButton;->z:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    iget-object v4, p0, Lcom/kyleduo/switchbutton/SwitchButton;->T:Landroid/text/Layout;

    invoke-virtual {v4}, Landroid/text/Layout;->getHeight()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    div-float/2addr v3, v1

    add-float/2addr v2, v3

    .line 533
    iget-object v3, p0, Lcom/kyleduo/switchbutton/SwitchButton;->B:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/kyleduo/switchbutton/SwitchButton;->T:Landroid/text/Layout;

    invoke-virtual {v4}, Landroid/text/Layout;->getWidth()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v4, v0

    iget-object v6, p0, Lcom/kyleduo/switchbutton/SwitchButton;->T:Landroid/text/Layout;

    invoke-virtual {v6}, Landroid/text/Layout;->getHeight()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v6, v2

    invoke-virtual {v3, v0, v2, v4, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 536
    :cond_6
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->U:Landroid/text/Layout;

    if-eqz v0, :cond_7

    .line 537
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->z:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    iget-object v2, p0, Lcom/kyleduo/switchbutton/SwitchButton;->z:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    iget v3, p0, Lcom/kyleduo/switchbutton/SwitchButton;->aa:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    iget v3, p0, Lcom/kyleduo/switchbutton/SwitchButton;->n:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/kyleduo/switchbutton/SwitchButton;->i:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/kyleduo/switchbutton/SwitchButton;->U:Landroid/text/Layout;

    invoke-virtual {v3}, Landroid/text/Layout;->getWidth()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    div-float/2addr v2, v1

    sub-float/2addr v0, v2

    iget-object v2, p0, Lcom/kyleduo/switchbutton/SwitchButton;->U:Landroid/text/Layout;

    invoke-virtual {v2}, Landroid/text/Layout;->getWidth()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v0, v2

    iget v2, p0, Lcom/kyleduo/switchbutton/SwitchButton;->ac:I

    int-to-float v2, v2

    add-float/2addr v0, v2

    .line 538
    iget-object v2, p0, Lcom/kyleduo/switchbutton/SwitchButton;->z:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget-object v3, p0, Lcom/kyleduo/switchbutton/SwitchButton;->z:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    iget-object v4, p0, Lcom/kyleduo/switchbutton/SwitchButton;->U:Landroid/text/Layout;

    invoke-virtual {v4}, Landroid/text/Layout;->getHeight()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    div-float/2addr v3, v1

    add-float/2addr v2, v3

    .line 539
    iget-object v1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->C:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/kyleduo/switchbutton/SwitchButton;->U:Landroid/text/Layout;

    invoke-virtual {v3}, Landroid/text/Layout;->getWidth()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v3, v0

    iget-object v4, p0, Lcom/kyleduo/switchbutton/SwitchButton;->U:Landroid/text/Layout;

    invoke-virtual {v4}, Landroid/text/Layout;->getHeight()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v4, v2

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 542
    :cond_7
    iput-boolean v5, p0, Lcom/kyleduo/switchbutton/SwitchButton;->ae:Z

    return-void

    :cond_8
    :goto_2
    return-void
.end method

.method private a(Landroid/util/AttributeSet;)V
    .locals 36

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 115
    invoke-virtual/range {p0 .. p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    iput v2, v0, Lcom/kyleduo/switchbutton/SwitchButton;->N:I

    .line 116
    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v2

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v0, Lcom/kyleduo/switchbutton/SwitchButton;->O:I

    .line 118
    new-instance v2, Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, v0, Lcom/kyleduo/switchbutton/SwitchButton;->D:Landroid/graphics/Paint;

    .line 119
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, v0, Lcom/kyleduo/switchbutton/SwitchButton;->P:Landroid/graphics/Paint;

    .line 120
    iget-object v2, v0, Lcom/kyleduo/switchbutton/SwitchButton;->P:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 121
    iget-object v2, v0, Lcom/kyleduo/switchbutton/SwitchButton;->P:Landroid/graphics/Paint;

    invoke-virtual/range {p0 .. p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 123
    invoke-virtual/range {p0 .. p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    iput-object v2, v0, Lcom/kyleduo/switchbutton/SwitchButton;->S:Landroid/text/TextPaint;

    .line 125
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, v0, Lcom/kyleduo/switchbutton/SwitchButton;->y:Landroid/graphics/RectF;

    .line 126
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, v0, Lcom/kyleduo/switchbutton/SwitchButton;->z:Landroid/graphics/RectF;

    .line 127
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, v0, Lcom/kyleduo/switchbutton/SwitchButton;->A:Landroid/graphics/RectF;

    .line 128
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, v0, Lcom/kyleduo/switchbutton/SwitchButton;->i:Landroid/graphics/RectF;

    .line 129
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, v0, Lcom/kyleduo/switchbutton/SwitchButton;->B:Landroid/graphics/RectF;

    .line 130
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, v0, Lcom/kyleduo/switchbutton/SwitchButton;->C:Landroid/graphics/RectF;

    const-string v2, "progress"

    const/4 v4, 0x2

    .line 132
    new-array v5, v4, [F

    fill-array-data v5, :array_0

    invoke-static {v0, v2, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const-wide/16 v5, 0xfa

    invoke-virtual {v2, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iput-object v2, v0, Lcom/kyleduo/switchbutton/SwitchButton;->H:Landroid/animation/ObjectAnimator;

    .line 133
    iget-object v2, v0, Lcom/kyleduo/switchbutton/SwitchButton;->H:Landroid/animation/ObjectAnimator;

    new-instance v5, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v2, v5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 135
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, v0, Lcom/kyleduo/switchbutton/SwitchButton;->J:Landroid/graphics/RectF;

    .line 137
    invoke-virtual/range {p0 .. p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 138
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    const/high16 v5, 0x40000000    # 2.0f

    mul-float v2, v2, v5

    if-nez v1, :cond_0

    const/4 v6, 0x0

    goto :goto_0

    .line 163
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getContext()Landroid/content/Context;

    move-result-object v6

    sget-object v7, Lcom/kyleduo/switchbutton/R$styleable;->SwitchButton:[I

    invoke-virtual {v6, v1, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v6

    :goto_0
    const/high16 v7, -0x40800000    # -1.0f

    const/4 v8, 0x0

    const v10, 0x3fe66666    # 1.8f

    if-eqz v6, :cond_1

    .line 165
    sget v12, Lcom/kyleduo/switchbutton/R$styleable;->SwitchButton_kswThumbDrawable:I

    invoke-virtual {v6, v12}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    .line 166
    sget v13, Lcom/kyleduo/switchbutton/R$styleable;->SwitchButton_kswThumbColor:I

    invoke-virtual {v6, v13}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v13

    .line 167
    sget v14, Lcom/kyleduo/switchbutton/R$styleable;->SwitchButton_kswThumbMargin:I

    invoke-virtual {v6, v14, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    .line 168
    sget v14, Lcom/kyleduo/switchbutton/R$styleable;->SwitchButton_kswThumbMarginLeft:I

    invoke-virtual {v6, v14, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v14

    .line 169
    sget v15, Lcom/kyleduo/switchbutton/R$styleable;->SwitchButton_kswThumbMarginRight:I

    invoke-virtual {v6, v15, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v15

    .line 170
    sget v5, Lcom/kyleduo/switchbutton/R$styleable;->SwitchButton_kswThumbMarginTop:I

    invoke-virtual {v6, v5, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    .line 171
    sget v4, Lcom/kyleduo/switchbutton/R$styleable;->SwitchButton_kswThumbMarginBottom:I

    invoke-virtual {v6, v4, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    .line 172
    sget v4, Lcom/kyleduo/switchbutton/R$styleable;->SwitchButton_kswThumbWidth:I

    invoke-virtual {v6, v4, v8}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    .line 173
    sget v9, Lcom/kyleduo/switchbutton/R$styleable;->SwitchButton_kswThumbHeight:I

    invoke-virtual {v6, v9, v8}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v9

    .line 174
    sget v8, Lcom/kyleduo/switchbutton/R$styleable;->SwitchButton_kswThumbRadius:I

    invoke-virtual {v6, v8, v7}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v8

    .line 175
    sget v3, Lcom/kyleduo/switchbutton/R$styleable;->SwitchButton_kswBackRadius:I

    invoke-virtual {v6, v3, v7}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v7

    .line 176
    sget v3, Lcom/kyleduo/switchbutton/R$styleable;->SwitchButton_kswBackDrawable:I

    invoke-virtual {v6, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 177
    sget v11, Lcom/kyleduo/switchbutton/R$styleable;->SwitchButton_kswBackColor:I

    invoke-virtual {v6, v11}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v11

    move/from16 v16, v2

    .line 178
    sget v2, Lcom/kyleduo/switchbutton/R$styleable;->SwitchButton_kswThumbRangeRatio:I

    invoke-virtual {v6, v2, v10}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v10

    .line 179
    sget v2, Lcom/kyleduo/switchbutton/R$styleable;->SwitchButton_kswAnimationDuration:I

    move-object/from16 v17, v3

    const/16 v3, 0xfa

    invoke-virtual {v6, v2, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    .line 180
    sget v3, Lcom/kyleduo/switchbutton/R$styleable;->SwitchButton_kswFadeBack:I

    move/from16 v18, v2

    const/4 v2, 0x1

    invoke-virtual {v6, v3, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    .line 181
    sget v2, Lcom/kyleduo/switchbutton/R$styleable;->SwitchButton_kswTintColor:I

    move/from16 v19, v3

    const/4 v3, 0x0

    invoke-virtual {v6, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    .line 182
    sget v3, Lcom/kyleduo/switchbutton/R$styleable;->SwitchButton_kswTextOn:I

    invoke-virtual {v6, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    move/from16 v20, v2

    .line 183
    sget v2, Lcom/kyleduo/switchbutton/R$styleable;->SwitchButton_kswTextOff:I

    invoke-virtual {v6, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v21, v2

    .line 184
    sget v2, Lcom/kyleduo/switchbutton/R$styleable;->SwitchButton_kswTextThumbInset:I

    move-object/from16 v22, v3

    const/4 v3, 0x0

    invoke-virtual {v6, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    move/from16 v23, v2

    .line 185
    sget v2, Lcom/kyleduo/switchbutton/R$styleable;->SwitchButton_kswTextExtra:I

    invoke-virtual {v6, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    move/from16 v24, v2

    .line 186
    sget v2, Lcom/kyleduo/switchbutton/R$styleable;->SwitchButton_kswTextAdjust:I

    invoke-virtual {v6, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    .line 187
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    move v6, v2

    move/from16 v26, v5

    move/from16 v29, v7

    move/from16 v28, v8

    move/from16 v27, v10

    move/from16 v25, v14

    move/from16 v14, v16

    move-object/from16 v10, v17

    move/from16 v30, v18

    move/from16 v31, v19

    move/from16 v7, v20

    move-object/from16 v3, v21

    move-object/from16 v2, v22

    move/from16 v5, v24

    move v8, v4

    move/from16 v4, v23

    goto :goto_1

    :cond_1
    const/16 v3, 0xfa

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const v27, 0x3fe66666    # 1.8f

    const/high16 v28, -0x40800000    # -1.0f

    const/high16 v29, -0x40800000    # -1.0f

    const/16 v30, 0xfa

    const/16 v31, 0x1

    :goto_1
    if-nez v1, :cond_2

    move/from16 v32, v14

    move/from16 v33, v15

    const/4 v1, 0x0

    goto :goto_2

    :cond_2
    move/from16 v32, v14

    .line 191
    invoke-virtual/range {p0 .. p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getContext()Landroid/content/Context;

    move-result-object v14

    move/from16 v33, v15

    const/4 v15, 0x2

    new-array v15, v15, [I

    fill-array-data v15, :array_1

    invoke-virtual {v14, v1, v15}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    :goto_2
    if-eqz v1, :cond_3

    move-object/from16 v34, v11

    const/4 v14, 0x1

    const/4 v15, 0x0

    .line 193
    invoke-virtual {v1, v15, v14}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v11

    .line 196
    invoke-virtual {v1, v14, v11}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v15

    .line 197
    invoke-virtual {v0, v11}, Lcom/kyleduo/switchbutton/SwitchButton;->setFocusable(Z)V

    .line 198
    invoke-virtual {v0, v15}, Lcom/kyleduo/switchbutton/SwitchButton;->setClickable(Z)V

    .line 199
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_3

    :cond_3
    move-object/from16 v34, v11

    const/4 v14, 0x1

    .line 201
    invoke-virtual {v0, v14}, Lcom/kyleduo/switchbutton/SwitchButton;->setFocusable(Z)V

    .line 202
    invoke-virtual {v0, v14}, Lcom/kyleduo/switchbutton/SwitchButton;->setClickable(Z)V

    .line 206
    :goto_3
    iput-object v2, v0, Lcom/kyleduo/switchbutton/SwitchButton;->Q:Ljava/lang/CharSequence;

    .line 207
    iput-object v3, v0, Lcom/kyleduo/switchbutton/SwitchButton;->R:Ljava/lang/CharSequence;

    .line 208
    iput v4, v0, Lcom/kyleduo/switchbutton/SwitchButton;->aa:I

    .line 209
    iput v5, v0, Lcom/kyleduo/switchbutton/SwitchButton;->ab:I

    .line 210
    iput v6, v0, Lcom/kyleduo/switchbutton/SwitchButton;->ac:I

    .line 213
    iput-object v12, v0, Lcom/kyleduo/switchbutton/SwitchButton;->c:Landroid/graphics/drawable/Drawable;

    .line 214
    iput-object v13, v0, Lcom/kyleduo/switchbutton/SwitchButton;->f:Landroid/content/res/ColorStateList;

    .line 215
    iget-object v1, v0, Lcom/kyleduo/switchbutton/SwitchButton;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_4

    const/4 v1, 0x1

    goto :goto_4

    :cond_4
    const/4 v1, 0x0

    :goto_4
    iput-boolean v1, v0, Lcom/kyleduo/switchbutton/SwitchButton;->E:Z

    .line 216
    iput v7, v0, Lcom/kyleduo/switchbutton/SwitchButton;->m:I

    .line 217
    iget v1, v0, Lcom/kyleduo/switchbutton/SwitchButton;->m:I

    if-nez v1, :cond_6

    .line 218
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 219
    invoke-virtual/range {p0 .. p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    sget v3, Lcom/kyleduo/switchbutton/R$attr;->colorAccent:I

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 221
    iget v1, v1, Landroid/util/TypedValue;->data:I

    iput v1, v0, Lcom/kyleduo/switchbutton/SwitchButton;->m:I

    goto :goto_5

    :cond_5
    const v1, 0x327fc2

    .line 223
    iput v1, v0, Lcom/kyleduo/switchbutton/SwitchButton;->m:I

    goto :goto_5

    :cond_6
    const/4 v4, 0x1

    .line 226
    :goto_5
    iget-boolean v1, v0, Lcom/kyleduo/switchbutton/SwitchButton;->E:Z

    if-nez v1, :cond_7

    iget-object v1, v0, Lcom/kyleduo/switchbutton/SwitchButton;->f:Landroid/content/res/ColorStateList;

    if-nez v1, :cond_7

    .line 227
    iget v1, v0, Lcom/kyleduo/switchbutton/SwitchButton;->m:I

    invoke-static {v1}, Lcom/kyleduo/switchbutton/a;->a(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, v0, Lcom/kyleduo/switchbutton/SwitchButton;->f:Landroid/content/res/ColorStateList;

    .line 228
    iget-object v1, v0, Lcom/kyleduo/switchbutton/SwitchButton;->f:Landroid/content/res/ColorStateList;

    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    iput v1, v0, Lcom/kyleduo/switchbutton/SwitchButton;->r:I

    :cond_7
    float-to-double v1, v8

    .line 232
    invoke-direct {v0, v1, v2}, Lcom/kyleduo/switchbutton/SwitchButton;->a(D)I

    move-result v1

    iput v1, v0, Lcom/kyleduo/switchbutton/SwitchButton;->n:I

    float-to-double v1, v9

    .line 233
    invoke-direct {v0, v1, v2}, Lcom/kyleduo/switchbutton/SwitchButton;->a(D)I

    move-result v1

    iput v1, v0, Lcom/kyleduo/switchbutton/SwitchButton;->o:I

    .line 236
    iput-object v10, v0, Lcom/kyleduo/switchbutton/SwitchButton;->d:Landroid/graphics/drawable/Drawable;

    move-object/from16 v11, v34

    .line 237
    iput-object v11, v0, Lcom/kyleduo/switchbutton/SwitchButton;->e:Landroid/content/res/ColorStateList;

    .line 238
    iget-object v1, v0, Lcom/kyleduo/switchbutton/SwitchButton;->d:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_8

    goto :goto_6

    :cond_8
    const/4 v4, 0x0

    :goto_6
    iput-boolean v4, v0, Lcom/kyleduo/switchbutton/SwitchButton;->F:Z

    .line 239
    iget-boolean v1, v0, Lcom/kyleduo/switchbutton/SwitchButton;->F:Z

    if-nez v1, :cond_9

    iget-object v1, v0, Lcom/kyleduo/switchbutton/SwitchButton;->e:Landroid/content/res/ColorStateList;

    if-nez v1, :cond_9

    .line 240
    iget v1, v0, Lcom/kyleduo/switchbutton/SwitchButton;->m:I

    invoke-static {v1}, Lcom/kyleduo/switchbutton/a;->b(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, v0, Lcom/kyleduo/switchbutton/SwitchButton;->e:Landroid/content/res/ColorStateList;

    .line 241
    iget-object v1, v0, Lcom/kyleduo/switchbutton/SwitchButton;->e:Landroid/content/res/ColorStateList;

    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    iput v1, v0, Lcom/kyleduo/switchbutton/SwitchButton;->s:I

    .line 242
    iget-object v1, v0, Lcom/kyleduo/switchbutton/SwitchButton;->e:Landroid/content/res/ColorStateList;

    sget-object v2, Lcom/kyleduo/switchbutton/SwitchButton;->a:[I

    iget v3, v0, Lcom/kyleduo/switchbutton/SwitchButton;->s:I

    invoke-virtual {v1, v2, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    iput v1, v0, Lcom/kyleduo/switchbutton/SwitchButton;->t:I

    .line 246
    :cond_9
    iget-object v1, v0, Lcom/kyleduo/switchbutton/SwitchButton;->i:Landroid/graphics/RectF;

    move/from16 v14, v25

    move/from16 v5, v26

    move/from16 v2, v32

    move/from16 v15, v33

    invoke-virtual {v1, v14, v5, v15, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 249
    iget-object v1, v0, Lcom/kyleduo/switchbutton/SwitchButton;->i:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    if-ltz v1, :cond_a

    move/from16 v10, v27

    invoke-static {v10, v2}, Ljava/lang/Math;->max(FF)F

    move-result v27

    :cond_a
    move/from16 v10, v27

    iput v10, v0, Lcom/kyleduo/switchbutton/SwitchButton;->j:F

    move/from16 v7, v28

    .line 251
    iput v7, v0, Lcom/kyleduo/switchbutton/SwitchButton;->g:F

    move/from16 v7, v29

    .line 252
    iput v7, v0, Lcom/kyleduo/switchbutton/SwitchButton;->h:F

    move/from16 v3, v30

    int-to-long v3, v3

    .line 253
    iput-wide v3, v0, Lcom/kyleduo/switchbutton/SwitchButton;->k:J

    move/from16 v1, v31

    .line 254
    iput-boolean v1, v0, Lcom/kyleduo/switchbutton/SwitchButton;->l:Z

    .line 256
    iget-object v1, v0, Lcom/kyleduo/switchbutton/SwitchButton;->H:Landroid/animation/ObjectAnimator;

    iget-wide v3, v0, Lcom/kyleduo/switchbutton/SwitchButton;->k:J

    invoke-virtual {v1, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 259
    invoke-virtual/range {p0 .. p0}, Lcom/kyleduo/switchbutton/SwitchButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 260
    invoke-direct {v0, v2}, Lcom/kyleduo/switchbutton/SwitchButton;->setProgress(F)V

    :cond_b
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x10100da
        0x10100e5
    .end array-data
.end method

.method private b(I)I
    .locals 5

    .line 404
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 405
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    .line 408
    iget v1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->o:I

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->E:Z

    if-eqz v1, :cond_0

    .line 409
    iget-object v1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iput v1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->o:I

    :cond_0
    const/high16 v1, 0x40000000    # 2.0f

    const/4 v2, 0x0

    if-ne p1, v1, :cond_4

    .line 414
    iget p1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->o:I

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 418
    iget p1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->o:I

    int-to-float p1, p1

    iget-object v3, p0, Lcom/kyleduo/switchbutton/SwitchButton;->i:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    add-float/2addr p1, v3

    iget-object v3, p0, Lcom/kyleduo/switchbutton/SwitchButton;->i:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    add-float/2addr p1, v3

    float-to-double v3, p1

    invoke-direct {p0, v3, v4}, Lcom/kyleduo/switchbutton/SwitchButton;->a(D)I

    move-result p1

    iput p1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->q:I

    .line 419
    iget p1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->q:I

    int-to-float p1, p1

    iget v3, p0, Lcom/kyleduo/switchbutton/SwitchButton;->W:F

    invoke-static {p1, v3}, Ljava/lang/Math;->max(FF)F

    move-result p1

    float-to-double v3, p1

    invoke-direct {p0, v3, v4}, Lcom/kyleduo/switchbutton/SwitchButton;->a(D)I

    move-result p1

    iput p1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->q:I

    .line 420
    iget p1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->q:I

    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getPaddingTop()I

    move-result v3

    add-int/2addr p1, v3

    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getPaddingBottom()I

    move-result v3

    add-int/2addr p1, v3

    int-to-float p1, p1

    iget-object v3, p0, Lcom/kyleduo/switchbutton/SwitchButton;->i:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    invoke-static {v1, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    sub-float/2addr p1, v3

    iget-object v3, p0, Lcom/kyleduo/switchbutton/SwitchButton;->i:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    invoke-static {v1, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    sub-float/2addr p1, v3

    int-to-float v3, v0

    cmpl-float p1, p1, v3

    if-lez p1, :cond_1

    .line 422
    iput v2, p0, Lcom/kyleduo/switchbutton/SwitchButton;->o:I

    .line 426
    :cond_1
    iget p1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->o:I

    if-nez p1, :cond_3

    .line 427
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getPaddingTop()I

    move-result p1

    sub-int p1, v0, p1

    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getPaddingBottom()I

    move-result v3

    sub-int/2addr p1, v3

    int-to-float p1, p1

    iget-object v3, p0, Lcom/kyleduo/switchbutton/SwitchButton;->i:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    invoke-static {v1, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    add-float/2addr p1, v3

    iget-object v3, p0, Lcom/kyleduo/switchbutton/SwitchButton;->i:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    invoke-static {v1, v3}, Ljava/lang/Math;->min(FF)F

    move-result v1

    add-float/2addr p1, v1

    float-to-double v3, p1

    invoke-direct {p0, v3, v4}, Lcom/kyleduo/switchbutton/SwitchButton;->a(D)I

    move-result p1

    iput p1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->q:I

    .line 428
    iget p1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->q:I

    if-gez p1, :cond_2

    .line 429
    iput v2, p0, Lcom/kyleduo/switchbutton/SwitchButton;->q:I

    .line 430
    iput v2, p0, Lcom/kyleduo/switchbutton/SwitchButton;->o:I

    return v0

    .line 433
    :cond_2
    iget p1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->q:I

    int-to-float p1, p1

    iget-object v1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->i:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    sub-float/2addr p1, v1

    iget-object v1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->i:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr p1, v1

    float-to-double v3, p1

    invoke-direct {p0, v3, v4}, Lcom/kyleduo/switchbutton/SwitchButton;->a(D)I

    move-result p1

    iput p1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->o:I

    .line 435
    :cond_3
    iget p1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->o:I

    if-gez p1, :cond_8

    .line 436
    iput v2, p0, Lcom/kyleduo/switchbutton/SwitchButton;->q:I

    .line 437
    iput v2, p0, Lcom/kyleduo/switchbutton/SwitchButton;->o:I

    return v0

    .line 441
    :cond_4
    iget p1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->o:I

    if-nez p1, :cond_5

    .line 442
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x41a00000    # 20.0f

    mul-float p1, p1, v1

    float-to-double v3, p1

    invoke-direct {p0, v3, v4}, Lcom/kyleduo/switchbutton/SwitchButton;->a(D)I

    move-result p1

    iput p1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->o:I

    .line 444
    :cond_5
    iget p1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->o:I

    int-to-float p1, p1

    iget-object v1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->i:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    add-float/2addr p1, v1

    iget-object v1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->i:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    add-float/2addr p1, v1

    float-to-double v3, p1

    invoke-direct {p0, v3, v4}, Lcom/kyleduo/switchbutton/SwitchButton;->a(D)I

    move-result p1

    iput p1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->q:I

    .line 445
    iget p1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->q:I

    if-gez p1, :cond_6

    .line 446
    iput v2, p0, Lcom/kyleduo/switchbutton/SwitchButton;->q:I

    .line 447
    iput v2, p0, Lcom/kyleduo/switchbutton/SwitchButton;->o:I

    return v0

    .line 450
    :cond_6
    iget p1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->W:F

    iget v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->q:I

    int-to-float v0, v0

    sub-float/2addr p1, v0

    float-to-double v0, p1

    invoke-direct {p0, v0, v1}, Lcom/kyleduo/switchbutton/SwitchButton;->a(D)I

    move-result p1

    if-lez p1, :cond_7

    .line 452
    iget v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->q:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->q:I

    .line 453
    iget v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->o:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->o:I

    .line 455
    :cond_7
    iget p1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->o:I

    iget v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->q:I

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 457
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getPaddingTop()I

    move-result v0

    add-int/2addr v0, p1

    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 458
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getSuggestedMinimumHeight()I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    :cond_8
    return v0
.end method

.method private b()V
    .locals 2

    .line 785
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 787
    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 789
    :cond_0
    iput-boolean v1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->af:Z

    return-void
.end method

.method private getProgress()F
    .locals 1

    .line 744
    iget v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->I:F

    return v0
.end method

.method private getStatusBasedOnPos()Z
    .locals 2

    .line 740
    invoke-direct {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getProgress()F

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private setDrawableState(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 866
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getDrawableState()[I

    move-result-object v0

    .line 867
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 868
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->invalidate()V

    :cond_0
    return-void
.end method

.method private setProgress(F)V
    .locals 3

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v1, p1, v0

    const/4 v2, 0x0

    if-lez v1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    cmpg-float v0, p1, v2

    if-gez v0, :cond_1

    const/4 p1, 0x0

    .line 754
    :cond_1
    :goto_0
    iput p1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->I:F

    .line 755
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->invalidate()V

    return-void
.end method


# virtual methods
.method public a(FFFF)V
    .locals 1

    .line 979
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->i:Landroid/graphics/RectF;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/RectF;->set(FFFF)V

    const/4 p1, 0x0

    .line 980
    iput-boolean p1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->ae:Z

    .line 981
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->requestLayout()V

    return-void
.end method

.method public a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 0

    .line 1049
    iput-object p1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->Q:Ljava/lang/CharSequence;

    .line 1050
    iput-object p2, p0, Lcom/kyleduo/switchbutton/SwitchButton;->R:Ljava/lang/CharSequence;

    const/4 p1, 0x0

    .line 1052
    iput-object p1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->T:Landroid/text/Layout;

    .line 1053
    iput-object p1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->U:Landroid/text/Layout;

    const/4 p1, 0x0

    .line 1055
    iput-boolean p1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->ae:Z

    .line 1056
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->requestLayout()V

    .line 1057
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->invalidate()V

    return-void
.end method

.method protected a(Z)V
    .locals 4

    .line 769
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->H:Landroid/animation/ObjectAnimator;

    if-nez v0, :cond_0

    return-void

    .line 772
    :cond_0
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->H:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 773
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->H:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 775
    :cond_1
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->H:Landroid/animation/ObjectAnimator;

    iget-wide v1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->k:J

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eqz p1, :cond_2

    .line 777
    iget-object p1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->H:Landroid/animation/ObjectAnimator;

    new-array v2, v2, [F

    iget v3, p0, Lcom/kyleduo/switchbutton/SwitchButton;->I:F

    aput v3, v2, v1

    const/high16 v1, 0x3f800000    # 1.0f

    aput v1, v2, v0

    invoke-virtual {p1, v2}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    goto :goto_0

    .line 779
    :cond_2
    iget-object p1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->H:Landroid/animation/ObjectAnimator;

    new-array v2, v2, [F

    iget v3, p0, Lcom/kyleduo/switchbutton/SwitchButton;->I:F

    aput v3, v2, v1

    const/4 v1, 0x0

    aput v1, v2, v0

    invoke-virtual {p1, v2}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    .line 781
    :goto_0
    iget-object p1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->H:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method protected drawableStateChanged()V
    .locals 4

    .line 644
    invoke-super {p0}, Landroid/widget/CompoundButton;->drawableStateChanged()V

    .line 646
    iget-boolean v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->E:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->f:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    .line 647
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->f:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getDrawableState()[I

    move-result-object v1

    iget v2, p0, Lcom/kyleduo/switchbutton/SwitchButton;->r:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    iput v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->r:I

    goto :goto_0

    .line 649
    :cond_0
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->c:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0}, Lcom/kyleduo/switchbutton/SwitchButton;->setDrawableState(Landroid/graphics/drawable/Drawable;)V

    .line 652
    :goto_0
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/kyleduo/switchbutton/SwitchButton;->b:[I

    goto :goto_1

    :cond_1
    sget-object v0, Lcom/kyleduo/switchbutton/SwitchButton;->a:[I

    .line 653
    :goto_1
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 655
    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v2

    .line 656
    sget-object v3, Lcom/kyleduo/switchbutton/SwitchButton;->a:[I

    invoke-virtual {v1, v3, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v3

    iput v3, p0, Lcom/kyleduo/switchbutton/SwitchButton;->u:I

    .line 657
    sget-object v3, Lcom/kyleduo/switchbutton/SwitchButton;->b:[I

    invoke-virtual {v1, v3, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    iput v1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->v:I

    .line 659
    :cond_2
    iget-boolean v1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->F:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->e:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_3

    .line 660
    iget-object v1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->e:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getDrawableState()[I

    move-result-object v2

    iget v3, p0, Lcom/kyleduo/switchbutton/SwitchButton;->s:I

    invoke-virtual {v1, v2, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    iput v1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->s:I

    .line 661
    iget-object v1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->e:Landroid/content/res/ColorStateList;

    iget v2, p0, Lcom/kyleduo/switchbutton/SwitchButton;->s:I

    invoke-virtual {v1, v0, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    iput v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->t:I

    goto :goto_3

    .line 663
    :cond_3
    iget-object v1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->d:Landroid/graphics/drawable/Drawable;

    instance-of v1, v1, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->l:Z

    if-eqz v1, :cond_4

    .line 664
    iget-object v1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 665
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->x:Landroid/graphics/drawable/Drawable;

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    .line 667
    iput-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->x:Landroid/graphics/drawable/Drawable;

    .line 669
    :goto_2
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->d:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0}, Lcom/kyleduo/switchbutton/SwitchButton;->setDrawableState(Landroid/graphics/drawable/Drawable;)V

    .line 670
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->d:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_5

    .line 671
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->w:Landroid/graphics/drawable/Drawable;

    :cond_5
    :goto_3
    return-void
.end method

.method public getAnimationDuration()J
    .locals 2

    .line 882
    iget-wide v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->k:J

    return-wide v0
.end method

.method public getBackColor()Landroid/content/res/ColorStateList;
    .locals 1

    .line 924
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->e:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getBackDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 907
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->d:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getBackRadius()F
    .locals 1

    .line 1015
    iget v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->h:F

    return v0
.end method

.method public getBackSizeF()Landroid/graphics/PointF;
    .locals 3

    .line 1011
    new-instance v0, Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->z:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    iget-object v2, p0, Lcom/kyleduo/switchbutton/SwitchButton;->z:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0
.end method

.method public getTextOff()Ljava/lang/CharSequence;
    .locals 1

    .line 1065
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->R:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTextOn()Ljava/lang/CharSequence;
    .locals 1

    .line 1061
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->Q:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getThumbColor()Landroid/content/res/ColorStateList;
    .locals 1

    .line 940
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->f:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getThumbDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 890
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->c:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getThumbHeight()F
    .locals 1

    .line 996
    iget v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->o:I

    int-to-float v0, v0

    return v0
.end method

.method public getThumbMargin()Landroid/graphics/RectF;
    .locals 1

    .line 967
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->i:Landroid/graphics/RectF;

    return-object v0
.end method

.method public getThumbRadius()F
    .locals 1

    .line 1000
    iget v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->g:F

    return v0
.end method

.method public getThumbRangeRatio()F
    .locals 1

    .line 956
    iget v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->j:F

    return v0
.end method

.method public getThumbWidth()F
    .locals 1

    .line 992
    iget v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->n:I

    int-to-float v0, v0

    return v0
.end method

.method public getTintColor()I
    .locals 1

    .line 1034
    iget v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->m:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 13

    .line 547
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onDraw(Landroid/graphics/Canvas;)V

    .line 549
    iget-boolean v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->ae:Z

    if-nez v0, :cond_0

    .line 550
    invoke-direct {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->a()V

    .line 552
    :cond_0
    iget-boolean v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->ae:Z

    if-nez v0, :cond_1

    return-void

    .line 557
    :cond_1
    iget-boolean v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->F:Z

    const/high16 v1, 0x437f0000    # 255.0f

    const/16 v2, 0xff

    if-eqz v0, :cond_5

    .line 558
    iget-boolean v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->l:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->w:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->x:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_4

    .line 561
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->w:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->x:Landroid/graphics/drawable/Drawable;

    .line 562
    :goto_0
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/kyleduo/switchbutton/SwitchButton;->x:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lcom/kyleduo/switchbutton/SwitchButton;->w:Landroid/graphics/drawable/Drawable;

    .line 564
    :goto_1
    invoke-direct {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getProgress()F

    move-result v4

    mul-float v4, v4, v1

    float-to-int v4, v4

    .line 565
    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 566
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    rsub-int v0, v4, 0xff

    .line 568
    invoke-virtual {v3, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 569
    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_4

    .line 571
    :cond_4
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 572
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_4

    .line 575
    :cond_5
    iget-boolean v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->l:Z

    if-eqz v0, :cond_8

    .line 580
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->s:I

    goto :goto_2

    :cond_6
    iget v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->t:I

    .line 581
    :goto_2
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_7

    iget v3, p0, Lcom/kyleduo/switchbutton/SwitchButton;->t:I

    goto :goto_3

    :cond_7
    iget v3, p0, Lcom/kyleduo/switchbutton/SwitchButton;->s:I

    .line 584
    :goto_3
    invoke-direct {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getProgress()F

    move-result v4

    mul-float v4, v4, v1

    float-to-int v4, v4

    .line 585
    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v5

    mul-int v5, v5, v4

    .line 586
    div-int/2addr v5, v2

    .line 587
    iget-object v6, p0, Lcom/kyleduo/switchbutton/SwitchButton;->D:Landroid/graphics/Paint;

    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v7

    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    move-result v8

    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    invoke-virtual {v6, v5, v7, v8, v0}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 588
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->z:Landroid/graphics/RectF;

    iget v5, p0, Lcom/kyleduo/switchbutton/SwitchButton;->h:F

    iget v6, p0, Lcom/kyleduo/switchbutton/SwitchButton;->h:F

    iget-object v7, p0, Lcom/kyleduo/switchbutton/SwitchButton;->D:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v5, v6, v7}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    rsub-int v0, v4, 0xff

    .line 592
    invoke-static {v3}, Landroid/graphics/Color;->alpha(I)I

    move-result v4

    mul-int v4, v4, v0

    .line 593
    div-int/2addr v4, v2

    .line 594
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->D:Landroid/graphics/Paint;

    invoke-static {v3}, Landroid/graphics/Color;->red(I)I

    move-result v5

    invoke-static {v3}, Landroid/graphics/Color;->green(I)I

    move-result v6

    invoke-static {v3}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    invoke-virtual {v0, v4, v5, v6, v3}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 595
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->z:Landroid/graphics/RectF;

    iget v3, p0, Lcom/kyleduo/switchbutton/SwitchButton;->h:F

    iget v4, p0, Lcom/kyleduo/switchbutton/SwitchButton;->h:F

    iget-object v5, p0, Lcom/kyleduo/switchbutton/SwitchButton;->D:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v4, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 597
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->D:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_4

    .line 599
    :cond_8
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->D:Landroid/graphics/Paint;

    iget v3, p0, Lcom/kyleduo/switchbutton/SwitchButton;->s:I

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 600
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->z:Landroid/graphics/RectF;

    iget v3, p0, Lcom/kyleduo/switchbutton/SwitchButton;->h:F

    iget v4, p0, Lcom/kyleduo/switchbutton/SwitchButton;->h:F

    iget-object v5, p0, Lcom/kyleduo/switchbutton/SwitchButton;->D:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v4, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 605
    :goto_4
    invoke-direct {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getProgress()F

    move-result v0

    float-to-double v3, v0

    const-wide/high16 v5, 0x3fe0000000000000L    # 0.5

    cmpl-double v0, v3, v5

    if-lez v0, :cond_9

    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->T:Landroid/text/Layout;

    goto :goto_5

    :cond_9
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->U:Landroid/text/Layout;

    .line 606
    :goto_5
    invoke-direct {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getProgress()F

    move-result v3

    float-to-double v3, v3

    cmpl-double v7, v3, v5

    if-lez v7, :cond_a

    iget-object v3, p0, Lcom/kyleduo/switchbutton/SwitchButton;->B:Landroid/graphics/RectF;

    goto :goto_6

    :cond_a
    iget-object v3, p0, Lcom/kyleduo/switchbutton/SwitchButton;->C:Landroid/graphics/RectF;

    :goto_6
    const/4 v4, 0x0

    if-eqz v0, :cond_e

    if-eqz v3, :cond_e

    .line 608
    invoke-direct {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getProgress()F

    move-result v7

    float-to-double v7, v7

    const-wide/high16 v9, 0x3fe8000000000000L    # 0.75

    cmpl-double v11, v7, v9

    const/high16 v7, 0x40800000    # 4.0f

    if-ltz v11, :cond_b

    invoke-direct {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getProgress()F

    move-result v8

    mul-float v8, v8, v7

    const/high16 v7, 0x40400000    # 3.0f

    sub-float v7, v8, v7

    goto :goto_7

    :cond_b
    invoke-direct {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getProgress()F

    move-result v8

    float-to-double v8, v8

    const-wide/high16 v10, 0x3fd0000000000000L    # 0.25

    cmpg-double v12, v8, v10

    if-gez v12, :cond_c

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getProgress()F

    move-result v9

    mul-float v9, v9, v7

    sub-float v7, v8, v9

    goto :goto_7

    :cond_c
    const/4 v7, 0x0

    :goto_7
    mul-float v1, v1, v7

    float-to-int v1, v1

    .line 609
    invoke-direct {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getProgress()F

    move-result v7

    float-to-double v7, v7

    cmpl-double v9, v7, v5

    if-lez v9, :cond_d

    iget v7, p0, Lcom/kyleduo/switchbutton/SwitchButton;->u:I

    goto :goto_8

    :cond_d
    iget v7, p0, Lcom/kyleduo/switchbutton/SwitchButton;->v:I

    .line 610
    :goto_8
    invoke-static {v7}, Landroid/graphics/Color;->alpha(I)I

    move-result v8

    mul-int v8, v8, v1

    .line 611
    div-int/2addr v8, v2

    .line 612
    invoke-virtual {v0}, Landroid/text/Layout;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-static {v7}, Landroid/graphics/Color;->red(I)I

    move-result v2

    invoke-static {v7}, Landroid/graphics/Color;->green(I)I

    move-result v9

    invoke-static {v7}, Landroid/graphics/Color;->blue(I)I

    move-result v7

    invoke-virtual {v1, v8, v2, v9, v7}, Landroid/text/TextPaint;->setARGB(IIII)V

    .line 613
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 614
    iget v1, v3, Landroid/graphics/RectF;->left:F

    iget v2, v3, Landroid/graphics/RectF;->top:F

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 615
    invoke-virtual {v0, p1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    .line 616
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 620
    :cond_e
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->J:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->y:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 621
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->J:Landroid/graphics/RectF;

    iget v1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->I:F

    iget-object v2, p0, Lcom/kyleduo/switchbutton/SwitchButton;->A:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    mul-float v1, v1, v2

    invoke-virtual {v0, v1, v4}, Landroid/graphics/RectF;->offset(FF)V

    .line 622
    iget-boolean v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->E:Z

    if-eqz v0, :cond_f

    .line 623
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->c:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->J:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    float-to-int v1, v1

    iget-object v2, p0, Lcom/kyleduo/switchbutton/SwitchButton;->J:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    float-to-int v2, v2

    iget-object v3, p0, Lcom/kyleduo/switchbutton/SwitchButton;->J:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    float-to-double v3, v3

    invoke-direct {p0, v3, v4}, Lcom/kyleduo/switchbutton/SwitchButton;->a(D)I

    move-result v3

    iget-object v4, p0, Lcom/kyleduo/switchbutton/SwitchButton;->J:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    float-to-double v7, v4

    invoke-direct {p0, v7, v8}, Lcom/kyleduo/switchbutton/SwitchButton;->a(D)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 624
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_9

    .line 626
    :cond_f
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->D:Landroid/graphics/Paint;

    iget v1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->r:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 627
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->J:Landroid/graphics/RectF;

    iget v1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->g:F

    iget v2, p0, Lcom/kyleduo/switchbutton/SwitchButton;->g:F

    iget-object v3, p0, Lcom/kyleduo/switchbutton/SwitchButton;->D:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 630
    :goto_9
    iget-boolean v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->G:Z

    if-eqz v0, :cond_11

    .line 631
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->P:Landroid/graphics/Paint;

    const-string v1, "#AA0000"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 632
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->z:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->P:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 633
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->P:Landroid/graphics/Paint;

    const-string v1, "#0000FF"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 634
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->J:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->P:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 635
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->P:Landroid/graphics/Paint;

    const-string v1, "#000000"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 636
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->A:Landroid/graphics/RectF;

    iget v8, v0, Landroid/graphics/RectF;->left:F

    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->y:Landroid/graphics/RectF;

    iget v9, v0, Landroid/graphics/RectF;->top:F

    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->A:Landroid/graphics/RectF;

    iget v10, v0, Landroid/graphics/RectF;->right:F

    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->y:Landroid/graphics/RectF;

    iget v11, v0, Landroid/graphics/RectF;->top:F

    iget-object v12, p0, Lcom/kyleduo/switchbutton/SwitchButton;->P:Landroid/graphics/Paint;

    move-object v7, p1

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 637
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->P:Landroid/graphics/Paint;

    const-string v1, "#00CC00"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 638
    invoke-direct {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getProgress()F

    move-result v0

    float-to-double v0, v0

    cmpl-double v2, v0, v5

    if-lez v2, :cond_10

    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->B:Landroid/graphics/RectF;

    goto :goto_a

    :cond_10
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->C:Landroid/graphics/RectF;

    :goto_a
    iget-object v1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->P:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    :cond_11
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4

    .line 274
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->T:Landroid/text/Layout;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->Q:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 275
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->Q:Ljava/lang/CharSequence;

    invoke-direct {p0, v0}, Lcom/kyleduo/switchbutton/SwitchButton;->a(Ljava/lang/CharSequence;)Landroid/text/Layout;

    move-result-object v0

    iput-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->T:Landroid/text/Layout;

    .line 277
    :cond_0
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->U:Landroid/text/Layout;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->R:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 278
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->R:Ljava/lang/CharSequence;

    invoke-direct {p0, v0}, Lcom/kyleduo/switchbutton/SwitchButton;->a(Ljava/lang/CharSequence;)Landroid/text/Layout;

    move-result-object v0

    iput-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->U:Landroid/text/Layout;

    .line 281
    :cond_1
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->T:Landroid/text/Layout;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->T:Landroid/text/Layout;

    invoke-virtual {v0}, Landroid/text/Layout;->getWidth()I

    move-result v0

    int-to-float v0, v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 282
    :goto_0
    iget-object v2, p0, Lcom/kyleduo/switchbutton/SwitchButton;->U:Landroid/text/Layout;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/kyleduo/switchbutton/SwitchButton;->U:Landroid/text/Layout;

    invoke-virtual {v2}, Landroid/text/Layout;->getWidth()I

    move-result v2

    int-to-float v2, v2

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :goto_1
    cmpl-float v3, v0, v1

    if-nez v3, :cond_5

    cmpl-float v3, v2, v1

    if-eqz v3, :cond_4

    goto :goto_2

    .line 286
    :cond_4
    iput v1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->V:F

    goto :goto_3

    .line 284
    :cond_5
    :goto_2
    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->V:F

    .line 289
    :goto_3
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->T:Landroid/text/Layout;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->T:Landroid/text/Layout;

    invoke-virtual {v0}, Landroid/text/Layout;->getHeight()I

    move-result v0

    int-to-float v0, v0

    goto :goto_4

    :cond_6
    const/4 v0, 0x0

    .line 290
    :goto_4
    iget-object v2, p0, Lcom/kyleduo/switchbutton/SwitchButton;->U:Landroid/text/Layout;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/kyleduo/switchbutton/SwitchButton;->U:Landroid/text/Layout;

    invoke-virtual {v2}, Landroid/text/Layout;->getHeight()I

    move-result v2

    int-to-float v2, v2

    goto :goto_5

    :cond_7
    const/4 v2, 0x0

    :goto_5
    cmpl-float v3, v0, v1

    if-nez v3, :cond_9

    cmpl-float v3, v2, v1

    if-eqz v3, :cond_8

    goto :goto_6

    .line 294
    :cond_8
    iput v1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->W:F

    goto :goto_7

    .line 292
    :cond_9
    :goto_6
    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->W:F

    .line 297
    :goto_7
    invoke-direct {p0, p1}, Lcom/kyleduo/switchbutton/SwitchButton;->a(I)I

    move-result p1

    invoke-direct {p0, p2}, Lcom/kyleduo/switchbutton/SwitchButton;->b(I)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/kyleduo/switchbutton/SwitchButton;->setMeasuredDimension(II)V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    .line 1100
    check-cast p1, Lcom/kyleduo/switchbutton/SwitchButton$SavedState;

    .line 1101
    iget-object v0, p1, Lcom/kyleduo/switchbutton/SwitchButton$SavedState;->a:Ljava/lang/CharSequence;

    iget-object v1, p1, Lcom/kyleduo/switchbutton/SwitchButton$SavedState;->b:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0, v1}, Lcom/kyleduo/switchbutton/SwitchButton;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    .line 1102
    iput-boolean v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->ad:Z

    .line 1103
    invoke-virtual {p1}, Lcom/kyleduo/switchbutton/SwitchButton$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    const/4 p1, 0x0

    .line 1104
    iput-boolean p1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->ad:Z

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 1091
    invoke-super {p0}, Landroid/widget/CompoundButton;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 1092
    new-instance v1, Lcom/kyleduo/switchbutton/SwitchButton$SavedState;

    invoke-direct {v1, v0}, Lcom/kyleduo/switchbutton/SwitchButton$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1093
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->Q:Ljava/lang/CharSequence;

    iput-object v0, v1, Lcom/kyleduo/switchbutton/SwitchButton$SavedState;->a:Ljava/lang/CharSequence;

    .line 1094
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->R:Ljava/lang/CharSequence;

    iput-object v0, v1, Lcom/kyleduo/switchbutton/SwitchButton$SavedState;->b:Ljava/lang/CharSequence;

    return-object v1
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 466
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/CompoundButton;->onSizeChanged(IIII)V

    if-ne p1, p3, :cond_0

    if-eq p2, p4, :cond_1

    .line 468
    :cond_0
    invoke-direct {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->a()V

    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11

    .line 679
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->isClickable()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->isFocusable()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->ae:Z

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 683
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 685
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget v3, p0, Lcom/kyleduo/switchbutton/SwitchButton;->K:F

    sub-float/2addr v2, v3

    .line 686
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iget v4, p0, Lcom/kyleduo/switchbutton/SwitchButton;->L:F

    sub-float/2addr v3, v4

    const/4 v4, 0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_1

    .line 697
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    .line 698
    invoke-direct {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getProgress()F

    move-result v0

    iget v5, p0, Lcom/kyleduo/switchbutton/SwitchButton;->M:F

    sub-float v5, p1, v5

    iget-object v6, p0, Lcom/kyleduo/switchbutton/SwitchButton;->A:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v6

    div-float/2addr v5, v6

    add-float/2addr v0, v5

    invoke-direct {p0, v0}, Lcom/kyleduo/switchbutton/SwitchButton;->setProgress(F)V

    .line 699
    iget-boolean v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->af:Z

    if-nez v0, :cond_4

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v5, p0, Lcom/kyleduo/switchbutton/SwitchButton;->N:I

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    cmpl-float v0, v0, v5

    if-gtz v0, :cond_1

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v5, p0, Lcom/kyleduo/switchbutton/SwitchButton;->N:I

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    cmpl-float v0, v0, v5

    if-lez v0, :cond_4

    :cond_1
    const/4 v0, 0x0

    cmpl-float v0, v3, v0

    if-eqz v0, :cond_3

    .line 700
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpl-float v0, v0, v5

    if-lez v0, :cond_2

    goto :goto_0

    .line 702
    :cond_2
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v0, v0, v2

    if-lez v0, :cond_4

    return v1

    .line 701
    :cond_3
    :goto_0
    invoke-direct {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->b()V

    .line 706
    :cond_4
    iput p1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->M:F

    goto :goto_1

    .line 711
    :pswitch_1
    iput-boolean v1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->af:Z

    .line 712
    invoke-virtual {p0, v1}, Lcom/kyleduo/switchbutton/SwitchButton;->setPressed(Z)V

    .line 713
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v7

    sub-long v9, v5, v7

    long-to-float p1, v9

    .line 714
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v2, p0, Lcom/kyleduo/switchbutton/SwitchButton;->N:I

    int-to-float v2, v2

    cmpg-float v0, v0, v2

    if-gez v0, :cond_5

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v2, p0, Lcom/kyleduo/switchbutton/SwitchButton;->N:I

    int-to-float v2, v2

    cmpg-float v0, v0, v2

    if-gez v0, :cond_5

    iget v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->O:I

    int-to-float v0, v0

    cmpg-float p1, p1, v0

    if-gez p1, :cond_5

    .line 715
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->performClick()Z

    goto :goto_1

    .line 717
    :cond_5
    invoke-direct {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getStatusBasedOnPos()Z

    move-result p1

    .line 718
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->isChecked()Z

    move-result v0

    if-eq p1, v0, :cond_6

    .line 719
    invoke-virtual {p0, v1}, Lcom/kyleduo/switchbutton/SwitchButton;->playSoundEffect(I)V

    .line 720
    invoke-virtual {p0, p1}, Lcom/kyleduo/switchbutton/SwitchButton;->setChecked(Z)V

    goto :goto_1

    .line 722
    :cond_6
    invoke-virtual {p0, p1}, Lcom/kyleduo/switchbutton/SwitchButton;->a(Z)V

    goto :goto_1

    .line 690
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->K:F

    .line 691
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->L:F

    .line 692
    iget p1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->K:F

    iput p1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->M:F

    .line 693
    invoke-virtual {p0, v4}, Lcom/kyleduo/switchbutton/SwitchButton;->setPressed(Z)V

    :goto_1
    return v4

    :cond_7
    :goto_2
    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public performClick()Z
    .locals 1

    .line 760
    invoke-super {p0}, Landroid/widget/CompoundButton;->performClick()Z

    move-result v0

    return v0
.end method

.method public setAnimationDuration(J)V
    .locals 0

    .line 886
    iput-wide p1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->k:J

    return-void
.end method

.method public setBackColor(Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 928
    iput-object p1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->e:Landroid/content/res/ColorStateList;

    .line 929
    iget-object p1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->e:Landroid/content/res/ColorStateList;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 930
    invoke-virtual {p0, p1}, Lcom/kyleduo/switchbutton/SwitchButton;->setBackDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 932
    :cond_0
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->invalidate()V

    return-void
.end method

.method public setBackColorRes(I)V
    .locals 1

    .line 936
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v4/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/kyleduo/switchbutton/SwitchButton;->setBackColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setBackDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 911
    iput-object p1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->d:Landroid/graphics/drawable/Drawable;

    .line 912
    iget-object p1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->d:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->F:Z

    .line 913
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->refreshDrawableState()V

    .line 914
    iput-boolean v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->ae:Z

    .line 915
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->requestLayout()V

    .line 916
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->invalidate()V

    return-void
.end method

.method public setBackDrawableRes(I)V
    .locals 1

    .line 920
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/kyleduo/switchbutton/SwitchButton;->setBackDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setBackRadius(F)V
    .locals 0

    .line 1019
    iput p1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->h:F

    .line 1020
    iget-boolean p1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->F:Z

    if-nez p1, :cond_0

    .line 1021
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->invalidate()V

    :cond_0
    return-void
.end method

.method public setChecked(Z)V
    .locals 1

    .line 795
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->isChecked()Z

    move-result v0

    if-eq v0, p1, :cond_0

    .line 796
    invoke-virtual {p0, p1}, Lcom/kyleduo/switchbutton/SwitchButton;->a(Z)V

    .line 798
    :cond_0
    iget-boolean v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->ad:Z

    if-eqz v0, :cond_1

    .line 799
    invoke-virtual {p0, p1}, Lcom/kyleduo/switchbutton/SwitchButton;->setCheckedImmediatelyNoEvent(Z)V

    goto :goto_0

    .line 801
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    :goto_0
    return-void
.end method

.method public setCheckedImmediately(Z)V
    .locals 1

    .line 852
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 853
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->H:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->H:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 854
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->H:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_0
    if-eqz p1, :cond_1

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 856
    :goto_0
    invoke-direct {p0, p1}, Lcom/kyleduo/switchbutton/SwitchButton;->setProgress(F)V

    .line 857
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->invalidate()V

    return-void
.end method

.method public setCheckedImmediatelyNoEvent(Z)V
    .locals 1

    .line 816
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->ag:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    if-nez v0, :cond_0

    .line 817
    invoke-virtual {p0, p1}, Lcom/kyleduo/switchbutton/SwitchButton;->setCheckedImmediately(Z)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 819
    invoke-super {p0, v0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 820
    invoke-virtual {p0, p1}, Lcom/kyleduo/switchbutton/SwitchButton;->setCheckedImmediately(Z)V

    .line 821
    iget-object p1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->ag:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :goto_0
    return-void
.end method

.method public setCheckedNoEvent(Z)V
    .locals 1

    .line 806
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->ag:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    if-nez v0, :cond_0

    .line 807
    invoke-virtual {p0, p1}, Lcom/kyleduo/switchbutton/SwitchButton;->setChecked(Z)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 809
    invoke-super {p0, v0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 810
    invoke-virtual {p0, p1}, Lcom/kyleduo/switchbutton/SwitchButton;->setChecked(Z)V

    .line 811
    iget-object p1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->ag:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :goto_0
    return-void
.end method

.method public setDrawDebugRect(Z)V
    .locals 0

    .line 877
    iput-boolean p1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->G:Z

    .line 878
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->invalidate()V

    return-void
.end method

.method public setFadeBack(Z)V
    .locals 0

    .line 1030
    iput-boolean p1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->l:Z

    return-void
.end method

.method public setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
    .locals 0

    .line 847
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 848
    iput-object p1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->ag:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    return-void
.end method

.method public setTextAdjust(I)V
    .locals 0

    .line 1083
    iput p1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->ac:I

    const/4 p1, 0x0

    .line 1084
    iput-boolean p1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->ae:Z

    .line 1085
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->requestLayout()V

    .line 1086
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->invalidate()V

    return-void
.end method

.method public setTextExtra(I)V
    .locals 0

    .line 1076
    iput p1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->ab:I

    const/4 p1, 0x0

    .line 1077
    iput-boolean p1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->ae:Z

    .line 1078
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->requestLayout()V

    .line 1079
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->invalidate()V

    return-void
.end method

.method public setTextThumbInset(I)V
    .locals 0

    .line 1069
    iput p1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->aa:I

    const/4 p1, 0x0

    .line 1070
    iput-boolean p1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->ae:Z

    .line 1071
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->requestLayout()V

    .line 1072
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->invalidate()V

    return-void
.end method

.method public setThumbColor(Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 944
    iput-object p1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->f:Landroid/content/res/ColorStateList;

    .line 945
    iget-object p1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->f:Landroid/content/res/ColorStateList;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 946
    invoke-virtual {p0, p1}, Lcom/kyleduo/switchbutton/SwitchButton;->setThumbDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 948
    :cond_0
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->invalidate()V

    return-void
.end method

.method public setThumbColorRes(I)V
    .locals 1

    .line 952
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v4/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/kyleduo/switchbutton/SwitchButton;->setThumbColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setThumbDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 894
    iput-object p1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->c:Landroid/graphics/drawable/Drawable;

    .line 895
    iget-object p1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->c:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->E:Z

    .line 896
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->refreshDrawableState()V

    .line 897
    iput-boolean v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->ae:Z

    .line 898
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->requestLayout()V

    .line 899
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->invalidate()V

    return-void
.end method

.method public setThumbDrawableRes(I)V
    .locals 1

    .line 903
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/kyleduo/switchbutton/SwitchButton;->setThumbDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setThumbMargin(Landroid/graphics/RectF;)V
    .locals 3

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 972
    invoke-virtual {p0, p1, p1, p1, p1}, Lcom/kyleduo/switchbutton/SwitchButton;->a(FFFF)V

    goto :goto_0

    .line 974
    :cond_0
    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget v1, p1, Landroid/graphics/RectF;->top:F

    iget v2, p1, Landroid/graphics/RectF;->right:F

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/kyleduo/switchbutton/SwitchButton;->a(FFFF)V

    :goto_0
    return-void
.end method

.method public setThumbRadius(F)V
    .locals 0

    .line 1004
    iput p1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->g:F

    .line 1005
    iget-boolean p1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->E:Z

    if-nez p1, :cond_0

    .line 1006
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->invalidate()V

    :cond_0
    return-void
.end method

.method public setThumbRangeRatio(F)V
    .locals 0

    .line 960
    iput p1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->j:F

    const/4 p1, 0x0

    .line 962
    iput-boolean p1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->ae:Z

    .line 963
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->requestLayout()V

    return-void
.end method

.method public setTintColor(I)V
    .locals 0

    .line 1038
    iput p1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->m:I

    .line 1039
    iget p1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->m:I

    invoke-static {p1}, Lcom/kyleduo/switchbutton/a;->a(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    iput-object p1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->f:Landroid/content/res/ColorStateList;

    .line 1040
    iget p1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->m:I

    invoke-static {p1}, Lcom/kyleduo/switchbutton/a;->b(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    iput-object p1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->e:Landroid/content/res/ColorStateList;

    const/4 p1, 0x0

    .line 1041
    iput-boolean p1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->F:Z

    .line 1042
    iput-boolean p1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->E:Z

    .line 1044
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->refreshDrawableState()V

    .line 1045
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->invalidate()V

    return-void
.end method
