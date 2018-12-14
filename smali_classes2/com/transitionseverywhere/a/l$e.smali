.class Lcom/transitionseverywhere/a/l$e;
.super Lcom/transitionseverywhere/a/l$d;
.source "ViewUtils.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x13
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transitionseverywhere/a/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "e"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 158
    invoke-direct {p0}, Lcom/transitionseverywhere/a/l$d;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Z)Z
    .locals 0

    .line 161
    invoke-virtual {p1}, Landroid/view/View;->isLaidOut()Z

    move-result p1

    return p1
.end method
