.class Lcom/mh/movie/core/mvp/ui/widget/MultiStateView$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "MultiStateView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/ui/widget/MultiStateView;->b(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/mh/movie/core/mvp/ui/widget/MultiStateView;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/ui/widget/MultiStateView;Landroid/view/View;)V
    .locals 0

    .line 426
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/MultiStateView$1;->b:Lcom/mh/movie/core/mvp/ui/widget/MultiStateView;

    iput-object p2, p0, Lcom/mh/movie/core/mvp/ui/widget/MultiStateView$1;->a:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 429
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/MultiStateView$1;->a:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 430
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/MultiStateView$1;->b:Lcom/mh/movie/core/mvp/ui/widget/MultiStateView;

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/MultiStateView$1;->b:Lcom/mh/movie/core/mvp/ui/widget/MultiStateView;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/widget/MultiStateView;->a(Lcom/mh/movie/core/mvp/ui/widget/MultiStateView;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/mh/movie/core/mvp/ui/widget/MultiStateView;->a(I)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 431
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/MultiStateView$1;->b:Lcom/mh/movie/core/mvp/ui/widget/MultiStateView;

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/MultiStateView$1;->b:Lcom/mh/movie/core/mvp/ui/widget/MultiStateView;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/widget/MultiStateView;->a(Lcom/mh/movie/core/mvp/ui/widget/MultiStateView;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/mh/movie/core/mvp/ui/widget/MultiStateView;->a(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "alpha"

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {p1, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const-wide/16 v0, 0xfa

    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
