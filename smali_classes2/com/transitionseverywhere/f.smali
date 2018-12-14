.class public final Lcom/transitionseverywhere/f;
.super Ljava/lang/Object;
.source "Scene.java"


# instance fields
.field a:Ljava/lang/Runnable;

.field private b:Landroid/view/ViewGroup;


# direct methods
.method public static a(Landroid/view/View;)Lcom/transitionseverywhere/f;
    .locals 1

    .line 206
    sget v0, Lcom/transitionseverywhere/R$id;->current_scene:I

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transitionseverywhere/f;

    return-object p0
.end method

.method static a(Landroid/view/View;Lcom/transitionseverywhere/f;)V
    .locals 1

    .line 195
    sget v0, Lcom/transitionseverywhere/R$id;->current_scene:I

    invoke-virtual {p0, v0, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/transitionseverywhere/f;->b:Landroid/view/ViewGroup;

    invoke-static {v0}, Lcom/transitionseverywhere/f;->a(Landroid/view/View;)Lcom/transitionseverywhere/f;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/transitionseverywhere/f;->a:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/transitionseverywhere/f;->a:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method
