.class Lcom/transitionseverywhere/n$1;
.super Lcom/transitionseverywhere/g$c;
.source "Visibility.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transitionseverywhere/n;->b(Landroid/view/ViewGroup;Lcom/transitionseverywhere/l;ILcom/transitionseverywhere/l;I)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Landroid/view/ViewGroup;

.field final synthetic c:Landroid/view/View;

.field final synthetic d:Lcom/transitionseverywhere/n;


# direct methods
.method constructor <init>(Lcom/transitionseverywhere/n;Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 0

    .line 454
    iput-object p1, p0, Lcom/transitionseverywhere/n$1;->d:Lcom/transitionseverywhere/n;

    iput-object p2, p0, Lcom/transitionseverywhere/n$1;->a:Landroid/view/View;

    iput-object p3, p0, Lcom/transitionseverywhere/n$1;->b:Landroid/view/ViewGroup;

    iput-object p4, p0, Lcom/transitionseverywhere/n$1;->c:Landroid/view/View;

    invoke-direct {p0}, Lcom/transitionseverywhere/g$c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/transitionseverywhere/g;)V
    .locals 2

    .line 457
    iget-object p1, p0, Lcom/transitionseverywhere/n$1;->a:Landroid/view/View;

    if-eqz p1, :cond_0

    .line 458
    iget-object p1, p0, Lcom/transitionseverywhere/n$1;->a:Landroid/view/View;

    sget v0, Lcom/transitionseverywhere/R$id;->overlay_view:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 460
    :cond_0
    iget-object p1, p0, Lcom/transitionseverywhere/n$1;->b:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/transitionseverywhere/n$1;->c:Landroid/view/View;

    invoke-static {p1, v0}, Lcom/transitionseverywhere/a/h;->a(Landroid/view/ViewGroup;Landroid/view/View;)V

    return-void
.end method
