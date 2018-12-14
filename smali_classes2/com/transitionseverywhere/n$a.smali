.class Lcom/transitionseverywhere/n$a;
.super Landroid/animation/AnimatorListenerAdapter;
.source "Visibility.java"

# interfaces
.implements Lcom/transitionseverywhere/g$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transitionseverywhere/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field a:Z

.field private final b:Z

.field private final c:Landroid/view/View;

.field private final d:I

.field private final e:Landroid/view/ViewGroup;

.field private f:Z

.field private g:Z


# direct methods
.method public constructor <init>(Landroid/view/View;IZ)V
    .locals 1

    .line 539
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    const/4 v0, 0x0

    .line 537
    iput-boolean v0, p0, Lcom/transitionseverywhere/n$a;->a:Z

    .line 540
    iput-object p1, p0, Lcom/transitionseverywhere/n$a;->c:Landroid/view/View;

    .line 541
    iput-boolean p3, p0, Lcom/transitionseverywhere/n$a;->b:Z

    .line 542
    iput p2, p0, Lcom/transitionseverywhere/n$a;->d:I

    .line 543
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/transitionseverywhere/n$a;->e:Landroid/view/ViewGroup;

    const/4 p1, 0x1

    .line 545
    invoke-direct {p0, p1}, Lcom/transitionseverywhere/n$a;->a(Z)V

    return-void
.end method

.method private a()V
    .locals 3

    .line 596
    iget-boolean v0, p0, Lcom/transitionseverywhere/n$a;->a:Z

    if-nez v0, :cond_2

    .line 597
    iget-boolean v0, p0, Lcom/transitionseverywhere/n$a;->b:Z

    if-eqz v0, :cond_0

    .line 598
    iget-object v0, p0, Lcom/transitionseverywhere/n$a;->c:Landroid/view/View;

    sget v1, Lcom/transitionseverywhere/R$id;->transitionAlpha:I

    iget-object v2, p0, Lcom/transitionseverywhere/n$a;->c:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getAlpha()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 599
    iget-object v0, p0, Lcom/transitionseverywhere/n$a;->c:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    .line 600
    :cond_0
    iget-boolean v0, p0, Lcom/transitionseverywhere/n$a;->g:Z

    if-nez v0, :cond_2

    .line 602
    iget-object v0, p0, Lcom/transitionseverywhere/n$a;->c:Landroid/view/View;

    iget v1, p0, Lcom/transitionseverywhere/n$a;->d:I

    invoke-static {v0, v1}, Lcom/transitionseverywhere/a/l;->a(Landroid/view/View;I)V

    .line 603
    iget-object v0, p0, Lcom/transitionseverywhere/n$a;->e:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 604
    iget-object v0, p0, Lcom/transitionseverywhere/n$a;->e:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->invalidate()V

    :cond_1
    const/4 v0, 0x1

    .line 606
    iput-boolean v0, p0, Lcom/transitionseverywhere/n$a;->g:Z

    :cond_2
    :goto_0
    const/4 v0, 0x0

    .line 610
    invoke-direct {p0, v0}, Lcom/transitionseverywhere/n$a;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 1

    .line 614
    iget-boolean v0, p0, Lcom/transitionseverywhere/n$a;->f:Z

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/transitionseverywhere/n$a;->e:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/transitionseverywhere/n$a;->b:Z

    if-nez v0, :cond_0

    .line 615
    iput-boolean p1, p0, Lcom/transitionseverywhere/n$a;->f:Z

    .line 616
    iget-object v0, p0, Lcom/transitionseverywhere/n$a;->e:Landroid/view/ViewGroup;

    invoke-static {v0, p1}, Lcom/transitionseverywhere/a/i;->a(Landroid/view/ViewGroup;Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lcom/transitionseverywhere/g;)V
    .locals 0

    .line 578
    invoke-direct {p0}, Lcom/transitionseverywhere/n$a;->a()V

    return-void
.end method

.method public b(Lcom/transitionseverywhere/g;)V
    .locals 0

    const/4 p1, 0x0

    .line 587
    invoke-direct {p0, p1}, Lcom/transitionseverywhere/n$a;->a(Z)V

    return-void
.end method

.method public c(Lcom/transitionseverywhere/g;)V
    .locals 0

    const/4 p1, 0x1

    .line 592
    invoke-direct {p0, p1}, Lcom/transitionseverywhere/n$a;->a(Z)V

    return-void
.end method

.method public d(Lcom/transitionseverywhere/g;)V
    .locals 0

    return-void
.end method

.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    const/4 p1, 0x1

    .line 564
    iput-boolean p1, p0, Lcom/transitionseverywhere/n$a;->a:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 569
    invoke-direct {p0}, Lcom/transitionseverywhere/n$a;->a()V

    return-void
.end method

.method public onAnimationPause(Landroid/animation/Animator;)V
    .locals 1

    .line 550
    iget-boolean p1, p0, Lcom/transitionseverywhere/n$a;->a:Z

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/transitionseverywhere/n$a;->b:Z

    if-nez p1, :cond_0

    .line 551
    iget-object p1, p0, Lcom/transitionseverywhere/n$a;->c:Landroid/view/View;

    iget v0, p0, Lcom/transitionseverywhere/n$a;->d:I

    invoke-static {p1, v0}, Lcom/transitionseverywhere/a/l;->a(Landroid/view/View;I)V

    :cond_0
    return-void
.end method

.method public onAnimationResume(Landroid/animation/Animator;)V
    .locals 1

    .line 557
    iget-boolean p1, p0, Lcom/transitionseverywhere/n$a;->a:Z

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/transitionseverywhere/n$a;->b:Z

    if-nez p1, :cond_0

    .line 558
    iget-object p1, p0, Lcom/transitionseverywhere/n$a;->c:Landroid/view/View;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/transitionseverywhere/a/l;->a(Landroid/view/View;I)V

    :cond_0
    return-void
.end method
