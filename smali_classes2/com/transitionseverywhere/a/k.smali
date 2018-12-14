.class public Lcom/transitionseverywhere/a/k;
.super Ljava/lang/Object;
.source "ViewOverlayUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transitionseverywhere/a/k$b;,
        Lcom/transitionseverywhere/a/k$a;
    }
.end annotation


# static fields
.field private static final a:Lcom/transitionseverywhere/a/k$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 40
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    .line 41
    new-instance v0, Lcom/transitionseverywhere/a/k$b;

    invoke-direct {v0}, Lcom/transitionseverywhere/a/k$b;-><init>()V

    sput-object v0, Lcom/transitionseverywhere/a/k;->a:Lcom/transitionseverywhere/a/k$a;

    goto :goto_0

    .line 43
    :cond_0
    new-instance v0, Lcom/transitionseverywhere/a/k$a;

    invoke-direct {v0}, Lcom/transitionseverywhere/a/k$a;-><init>()V

    sput-object v0, Lcom/transitionseverywhere/a/k;->a:Lcom/transitionseverywhere/a/k$a;

    :goto_0
    return-void
.end method

.method public static a(Landroid/view/ViewGroup;Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 48
    sget-object v0, Lcom/transitionseverywhere/a/k;->a:Lcom/transitionseverywhere/a/k$a;

    invoke-virtual {v0, p0, p1}, Lcom/transitionseverywhere/a/k$a;->a(Landroid/view/ViewGroup;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public static b(Landroid/view/ViewGroup;Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 52
    sget-object v0, Lcom/transitionseverywhere/a/k;->a:Lcom/transitionseverywhere/a/k$a;

    invoke-virtual {v0, p0, p1}, Lcom/transitionseverywhere/a/k$a;->b(Landroid/view/ViewGroup;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
