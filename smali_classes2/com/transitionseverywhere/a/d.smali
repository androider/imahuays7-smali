.class public Lcom/transitionseverywhere/a/d;
.super Lcom/transitionseverywhere/a/b;
.source "PointFAnimator.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation


# instance fields
.field private a:F

.field private b:F

.field private c:F

.field private d:F


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Lcom/transitionseverywhere/a/e;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1, p2}, Lcom/transitionseverywhere/a/b;-><init>(Ljava/lang/Object;Lcom/transitionseverywhere/a/e;)V

    return-void
.end method

.method protected static a(FFF)F
    .locals 0

    sub-float/2addr p2, p1

    mul-float p2, p2, p0

    add-float/2addr p1, p2

    return p1
.end method

.method public static a(Ljava/lang/Object;Lcom/transitionseverywhere/a/e;FFFF)Lcom/transitionseverywhere/a/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/transitionseverywhere/a/e<",
            "TT;>;FFFF)",
            "Lcom/transitionseverywhere/a/d;"
        }
    .end annotation

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 23
    new-instance v0, Lcom/transitionseverywhere/a/d;

    invoke-direct {v0, p0, p1}, Lcom/transitionseverywhere/a/d;-><init>(Ljava/lang/Object;Lcom/transitionseverywhere/a/e;)V

    .line 24
    iput p2, v0, Lcom/transitionseverywhere/a/d;->b:F

    .line 25
    iput p3, v0, Lcom/transitionseverywhere/a/d;->a:F

    .line 26
    iput p4, v0, Lcom/transitionseverywhere/a/d;->d:F

    .line 27
    iput p5, v0, Lcom/transitionseverywhere/a/d;->c:F

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method


# virtual methods
.method protected a(Landroid/graphics/PointF;F)V
    .locals 2

    .line 33
    iget v0, p0, Lcom/transitionseverywhere/a/d;->b:F

    iget v1, p0, Lcom/transitionseverywhere/a/d;->d:F

    invoke-static {p2, v0, v1}, Lcom/transitionseverywhere/a/d;->a(FFF)F

    move-result v0

    iput v0, p1, Landroid/graphics/PointF;->x:F

    .line 34
    iget v0, p0, Lcom/transitionseverywhere/a/d;->a:F

    iget v1, p0, Lcom/transitionseverywhere/a/d;->c:F

    invoke-static {p2, v0, v1}, Lcom/transitionseverywhere/a/d;->a(FFF)F

    move-result p2

    iput p2, p1, Landroid/graphics/PointF;->y:F

    return-void
.end method
