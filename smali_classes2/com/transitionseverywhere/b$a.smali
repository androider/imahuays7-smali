.class Lcom/transitionseverywhere/b$a;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ChangeBounds.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transitionseverywhere/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:Z

.field private f:Z

.field private g:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    .line 453
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 454
    iput-object p1, p0, Lcom/transitionseverywhere/b$a;->g:Landroid/view/View;

    return-void
.end method

.method private a()V
    .locals 5

    .line 476
    iget-object v0, p0, Lcom/transitionseverywhere/b$a;->g:Landroid/view/View;

    iget v1, p0, Lcom/transitionseverywhere/b$a;->a:I

    iget v2, p0, Lcom/transitionseverywhere/b$a;->b:I

    iget v3, p0, Lcom/transitionseverywhere/b$a;->c:I

    iget v4, p0, Lcom/transitionseverywhere/b$a;->d:I

    invoke-static {v0, v1, v2, v3, v4}, Lcom/transitionseverywhere/a/l;->a(Landroid/view/View;IIII)V

    const/4 v0, 0x0

    .line 477
    iput-boolean v0, p0, Lcom/transitionseverywhere/b$a;->e:Z

    .line 478
    iput-boolean v0, p0, Lcom/transitionseverywhere/b$a;->f:Z

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/PointF;)V
    .locals 1

    .line 458
    iget v0, p1, Landroid/graphics/PointF;->x:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/transitionseverywhere/b$a;->a:I

    .line 459
    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iput p1, p0, Lcom/transitionseverywhere/b$a;->b:I

    const/4 p1, 0x1

    .line 460
    iput-boolean p1, p0, Lcom/transitionseverywhere/b$a;->e:Z

    .line 461
    iget-boolean p1, p0, Lcom/transitionseverywhere/b$a;->f:Z

    if-eqz p1, :cond_0

    .line 462
    invoke-direct {p0}, Lcom/transitionseverywhere/b$a;->a()V

    :cond_0
    return-void
.end method

.method public b(Landroid/graphics/PointF;)V
    .locals 1

    .line 467
    iget v0, p1, Landroid/graphics/PointF;->x:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/transitionseverywhere/b$a;->c:I

    .line 468
    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iput p1, p0, Lcom/transitionseverywhere/b$a;->d:I

    const/4 p1, 0x1

    .line 469
    iput-boolean p1, p0, Lcom/transitionseverywhere/b$a;->f:Z

    .line 470
    iget-boolean p1, p0, Lcom/transitionseverywhere/b$a;->e:Z

    if-eqz p1, :cond_0

    .line 471
    invoke-direct {p0}, Lcom/transitionseverywhere/b$a;->a()V

    :cond_0
    return-void
.end method
