.class Lcom/transitionseverywhere/a/l$b;
.super Lcom/transitionseverywhere/a/l$a;
.source "ViewUtils.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transitionseverywhere/a/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 119
    invoke-direct {p0}, Lcom/transitionseverywhere/a/l$a;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroid/view/View;Z)V
    .locals 0

    .line 122
    invoke-virtual {p1, p2}, Landroid/view/View;->setHasTransientState(Z)V

    return-void
.end method

.method public d(Landroid/view/View;)Z
    .locals 0

    .line 127
    invoke-virtual {p1}, Landroid/view/View;->hasTransientState()Z

    move-result p1

    return p1
.end method
