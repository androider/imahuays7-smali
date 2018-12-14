.class public Lcom/transitionseverywhere/a/h;
.super Ljava/lang/Object;
.source "ViewGroupOverlayUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transitionseverywhere/a/h$b;,
        Lcom/transitionseverywhere/a/h$a;
    }
.end annotation


# static fields
.field private static final a:Lcom/transitionseverywhere/a/h$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 137
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    .line 138
    new-instance v0, Lcom/transitionseverywhere/a/h$b;

    invoke-direct {v0}, Lcom/transitionseverywhere/a/h$b;-><init>()V

    sput-object v0, Lcom/transitionseverywhere/a/h;->a:Lcom/transitionseverywhere/a/h$a;

    goto :goto_0

    .line 140
    :cond_0
    new-instance v0, Lcom/transitionseverywhere/a/h$a;

    invoke-direct {v0}, Lcom/transitionseverywhere/a/h$a;-><init>()V

    sput-object v0, Lcom/transitionseverywhere/a/h;->a:Lcom/transitionseverywhere/a/h$a;

    :goto_0
    return-void
.end method

.method public static a(Landroid/view/ViewGroup;)V
    .locals 1

    .line 151
    sget-object v0, Lcom/transitionseverywhere/a/h;->a:Lcom/transitionseverywhere/a/h$a;

    invoke-virtual {v0, p0}, Lcom/transitionseverywhere/a/h$a;->a(Landroid/view/ViewGroup;)V

    return-void
.end method

.method public static a(Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 156
    sget-object v0, Lcom/transitionseverywhere/a/h;->a:Lcom/transitionseverywhere/a/h$a;

    invoke-virtual {v0, p0, p1}, Lcom/transitionseverywhere/a/h$a;->a(Landroid/view/ViewGroup;Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public static a(Landroid/view/ViewGroup;Landroid/view/View;II)V
    .locals 1

    if-eqz p1, :cond_0

    .line 146
    sget-object v0, Lcom/transitionseverywhere/a/h;->a:Lcom/transitionseverywhere/a/h$a;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/transitionseverywhere/a/h$a;->a(Landroid/view/ViewGroup;Landroid/view/View;II)V

    :cond_0
    return-void
.end method
