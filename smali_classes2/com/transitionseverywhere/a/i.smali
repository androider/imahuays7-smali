.class public Lcom/transitionseverywhere/a/i;
.super Ljava/lang/Object;
.source "ViewGroupUtils.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transitionseverywhere/a/i$b;,
        Lcom/transitionseverywhere/a/i$a;
    }
.end annotation


# static fields
.field private static final a:Lcom/transitionseverywhere/a/i$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 100
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    .line 101
    new-instance v0, Lcom/transitionseverywhere/a/i$b;

    invoke-direct {v0}, Lcom/transitionseverywhere/a/i$b;-><init>()V

    sput-object v0, Lcom/transitionseverywhere/a/i;->a:Lcom/transitionseverywhere/a/i$a;

    goto :goto_0

    .line 103
    :cond_0
    new-instance v0, Lcom/transitionseverywhere/a/i$a;

    invoke-direct {v0}, Lcom/transitionseverywhere/a/i$a;-><init>()V

    sput-object v0, Lcom/transitionseverywhere/a/i;->a:Lcom/transitionseverywhere/a/i$a;

    :goto_0
    return-void
.end method

.method public static a(Landroid/view/ViewGroup;Z)V
    .locals 1

    if-eqz p0, :cond_0

    .line 109
    sget-object v0, Lcom/transitionseverywhere/a/i;->a:Lcom/transitionseverywhere/a/i$a;

    invoke-virtual {v0, p0, p1}, Lcom/transitionseverywhere/a/i$a;->a(Landroid/view/ViewGroup;Z)V

    :cond_0
    return-void
.end method

.method public static a(Landroid/view/ViewGroup;)Z
    .locals 1

    .line 117
    sget-object v0, Lcom/transitionseverywhere/a/i;->a:Lcom/transitionseverywhere/a/i$a;

    invoke-virtual {v0, p0}, Lcom/transitionseverywhere/a/i$a;->a(Landroid/view/ViewGroup;)Z

    move-result p0

    return p0
.end method
