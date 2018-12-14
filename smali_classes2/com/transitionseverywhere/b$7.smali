.class Lcom/transitionseverywhere/b$7;
.super Landroid/animation/AnimatorListenerAdapter;
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
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Landroid/graphics/Rect;

.field final synthetic c:I

.field final synthetic d:I

.field final synthetic e:I

.field final synthetic f:I

.field final synthetic g:Lcom/transitionseverywhere/b;

.field private h:Z


# direct methods
.method constructor <init>(Lcom/transitionseverywhere/b;Landroid/view/View;Landroid/graphics/Rect;IIII)V
    .locals 0

    .line 353
    iput-object p1, p0, Lcom/transitionseverywhere/b$7;->g:Lcom/transitionseverywhere/b;

    iput-object p2, p0, Lcom/transitionseverywhere/b$7;->a:Landroid/view/View;

    iput-object p3, p0, Lcom/transitionseverywhere/b$7;->b:Landroid/graphics/Rect;

    iput p4, p0, Lcom/transitionseverywhere/b$7;->c:I

    iput p5, p0, Lcom/transitionseverywhere/b$7;->d:I

    iput p6, p0, Lcom/transitionseverywhere/b$7;->e:I

    iput p7, p0, Lcom/transitionseverywhere/b$7;->f:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    const/4 p1, 0x1

    .line 358
    iput-boolean p1, p0, Lcom/transitionseverywhere/b$7;->h:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    .line 363
    iget-boolean p1, p0, Lcom/transitionseverywhere/b$7;->h:Z

    if-nez p1, :cond_0

    .line 364
    iget-object p1, p0, Lcom/transitionseverywhere/b$7;->a:Landroid/view/View;

    iget-object v0, p0, Lcom/transitionseverywhere/b$7;->b:Landroid/graphics/Rect;

    invoke-static {p1, v0}, Lcom/transitionseverywhere/a/l;->a(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 365
    iget-object p1, p0, Lcom/transitionseverywhere/b$7;->a:Landroid/view/View;

    iget v0, p0, Lcom/transitionseverywhere/b$7;->c:I

    iget v1, p0, Lcom/transitionseverywhere/b$7;->d:I

    iget v2, p0, Lcom/transitionseverywhere/b$7;->e:I

    iget v3, p0, Lcom/transitionseverywhere/b$7;->f:I

    invoke-static {p1, v0, v1, v2, v3}, Lcom/transitionseverywhere/a/l;->a(Landroid/view/View;IIII)V

    :cond_0
    return-void
.end method
