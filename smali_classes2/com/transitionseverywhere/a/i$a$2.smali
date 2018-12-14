.class Lcom/transitionseverywhere/a/i$a$2;
.super Ljava/lang/Object;
.source "ViewGroupUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transitionseverywhere/a/i$a;->a(Landroid/view/ViewGroup;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/ViewGroup;

.field final synthetic b:Landroid/animation/LayoutTransition;

.field final synthetic c:Lcom/transitionseverywhere/a/i$a;


# direct methods
.method constructor <init>(Lcom/transitionseverywhere/a/i$a;Landroid/view/ViewGroup;Landroid/animation/LayoutTransition;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/transitionseverywhere/a/i$a$2;->c:Lcom/transitionseverywhere/a/i$a;

    iput-object p2, p0, Lcom/transitionseverywhere/a/i$a$2;->a:Landroid/view/ViewGroup;

    iput-object p3, p0, Lcom/transitionseverywhere/a/i$a$2;->b:Landroid/animation/LayoutTransition;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 65
    iget-object v0, p0, Lcom/transitionseverywhere/a/i$a$2;->a:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/transitionseverywhere/a/i$a$2;->b:Landroid/animation/LayoutTransition;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    return-void
.end method
