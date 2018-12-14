.class Lcom/transitionseverywhere/b$8;
.super Lcom/transitionseverywhere/g$c;
.source "ChangeBounds.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transitionseverywhere/b;->a(Landroid/view/ViewGroup;Lcom/transitionseverywhere/l;Lcom/transitionseverywhere/l;)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field a:Z

.field final synthetic b:Landroid/view/ViewGroup;

.field final synthetic c:Lcom/transitionseverywhere/b;


# direct methods
.method constructor <init>(Lcom/transitionseverywhere/b;Landroid/view/ViewGroup;)V
    .locals 0

    .line 377
    iput-object p1, p0, Lcom/transitionseverywhere/b$8;->c:Lcom/transitionseverywhere/b;

    iput-object p2, p0, Lcom/transitionseverywhere/b$8;->b:Landroid/view/ViewGroup;

    invoke-direct {p0}, Lcom/transitionseverywhere/g$c;-><init>()V

    const/4 p1, 0x0

    .line 378
    iput-boolean p1, p0, Lcom/transitionseverywhere/b$8;->a:Z

    return-void
.end method


# virtual methods
.method public a(Lcom/transitionseverywhere/g;)V
    .locals 1

    .line 388
    iget-boolean p1, p0, Lcom/transitionseverywhere/b$8;->a:Z

    if-nez p1, :cond_0

    .line 389
    iget-object p1, p0, Lcom/transitionseverywhere/b$8;->b:Landroid/view/ViewGroup;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/transitionseverywhere/a/i;->a(Landroid/view/ViewGroup;Z)V

    :cond_0
    return-void
.end method

.method public b(Lcom/transitionseverywhere/g;)V
    .locals 1

    .line 395
    iget-object p1, p0, Lcom/transitionseverywhere/b$8;->b:Landroid/view/ViewGroup;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/transitionseverywhere/a/i;->a(Landroid/view/ViewGroup;Z)V

    return-void
.end method

.method public c(Lcom/transitionseverywhere/g;)V
    .locals 1

    .line 400
    iget-object p1, p0, Lcom/transitionseverywhere/b$8;->b:Landroid/view/ViewGroup;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/transitionseverywhere/a/i;->a(Landroid/view/ViewGroup;Z)V

    return-void
.end method
