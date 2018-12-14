.class final Lcom/google/zxing/qrcode/a/e$b;
.super Ljava/lang/Object;
.source "FinderPatternFinder.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/zxing/qrcode/a/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/util/Comparator<",
        "Lcom/google/zxing/qrcode/a/d;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:F


# direct methods
.method private constructor <init>(F)V
    .locals 0

    .line 649
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 650
    iput p1, p0, Lcom/google/zxing/qrcode/a/e$b;->a:F

    return-void
.end method

.method synthetic constructor <init>(FLcom/google/zxing/qrcode/a/e$1;)V
    .locals 0

    .line 647
    invoke-direct {p0, p1}, Lcom/google/zxing/qrcode/a/e$b;-><init>(F)V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/zxing/qrcode/a/d;Lcom/google/zxing/qrcode/a/d;)I
    .locals 1

    .line 654
    invoke-virtual {p2}, Lcom/google/zxing/qrcode/a/d;->c()F

    move-result p2

    iget v0, p0, Lcom/google/zxing/qrcode/a/e$b;->a:F

    sub-float/2addr p2, v0

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    .line 655
    invoke-virtual {p1}, Lcom/google/zxing/qrcode/a/d;->c()F

    move-result p1

    iget v0, p0, Lcom/google/zxing/qrcode/a/e$b;->a:F

    sub-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpg-float v0, p2, p1

    if-gez v0, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    cmpl-float p1, p2, p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 647
    check-cast p1, Lcom/google/zxing/qrcode/a/d;

    check-cast p2, Lcom/google/zxing/qrcode/a/d;

    invoke-virtual {p0, p1, p2}, Lcom/google/zxing/qrcode/a/e$b;->a(Lcom/google/zxing/qrcode/a/d;Lcom/google/zxing/qrcode/a/d;)I

    move-result p1

    return p1
.end method
