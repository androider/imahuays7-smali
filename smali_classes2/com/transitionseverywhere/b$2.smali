.class final Lcom/transitionseverywhere/b$2;
.super Lcom/transitionseverywhere/a/e;
.source "ChangeBounds.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transitionseverywhere/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transitionseverywhere/a/e<",
        "Lcom/transitionseverywhere/b$a;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 97
    invoke-direct {p0}, Lcom/transitionseverywhere/a/e;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/transitionseverywhere/b$a;Landroid/graphics/PointF;)V
    .locals 0

    .line 100
    invoke-virtual {p1, p2}, Lcom/transitionseverywhere/b$a;->a(Landroid/graphics/PointF;)V

    return-void
.end method

.method public synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 97
    check-cast p1, Lcom/transitionseverywhere/b$a;

    check-cast p2, Landroid/graphics/PointF;

    invoke-virtual {p0, p1, p2}, Lcom/transitionseverywhere/b$2;->a(Lcom/transitionseverywhere/b$a;Landroid/graphics/PointF;)V

    return-void
.end method
