.class Lcom/transitionseverywhere/a/h$b;
.super Lcom/transitionseverywhere/a/h$a;
.source "ViewGroupOverlayUtils.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x12
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transitionseverywhere/a/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 71
    invoke-direct {p0}, Lcom/transitionseverywhere/a/h$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;)V
    .locals 0

    return-void
.end method

.method public a(Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 0

    .line 81
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    return-void
.end method

.method public a(Landroid/view/ViewGroup;Landroid/view/View;II)V
    .locals 0

    .line 75
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/transitionseverywhere/a/h$b;->b(Landroid/view/ViewGroup;Landroid/view/View;II)V

    .line 76
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    return-void
.end method

.method public b(Landroid/view/ViewGroup;Landroid/view/View;II)V
    .locals 1

    if-nez p3, :cond_0

    if-eqz p4, :cond_1

    :cond_0
    const/4 v0, 0x2

    .line 87
    new-array v0, v0, [I

    .line 88
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    const/4 p1, 0x0

    .line 89
    aget p1, v0, p1

    sub-int/2addr p3, p1

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result p1

    sub-int/2addr p3, p1

    invoke-virtual {p2, p3}, Landroid/view/View;->offsetLeftAndRight(I)V

    const/4 p1, 0x1

    .line 90
    aget p1, v0, p1

    sub-int/2addr p4, p1

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result p1

    sub-int/2addr p4, p1

    invoke-virtual {p2, p4}, Landroid/view/View;->offsetTopAndBottom(I)V

    :cond_1
    return-void
.end method
