.class Lcom/flyco/animation/BaseAnimatorSet$1;
.super Ljava/lang/Object;
.source "BaseAnimatorSet.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyco/animation/BaseAnimatorSet;->start(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyco/animation/BaseAnimatorSet;


# direct methods
.method constructor <init>(Lcom/flyco/animation/BaseAnimatorSet;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/flyco/animation/BaseAnimatorSet$1;->this$0:Lcom/flyco/animation/BaseAnimatorSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/flyco/animation/BaseAnimatorSet$1;->this$0:Lcom/flyco/animation/BaseAnimatorSet;

    invoke-static {v0}, Lcom/flyco/animation/BaseAnimatorSet;->access$000(Lcom/flyco/animation/BaseAnimatorSet;)Lcom/flyco/animation/BaseAnimatorSet$AnimatorListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/flyco/animation/BaseAnimatorSet$AnimatorListener;->onAnimationCancel(Landroid/animation/Animator;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/flyco/animation/BaseAnimatorSet$1;->this$0:Lcom/flyco/animation/BaseAnimatorSet;

    invoke-static {v0}, Lcom/flyco/animation/BaseAnimatorSet;->access$000(Lcom/flyco/animation/BaseAnimatorSet;)Lcom/flyco/animation/BaseAnimatorSet$AnimatorListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/flyco/animation/BaseAnimatorSet$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/flyco/animation/BaseAnimatorSet$1;->this$0:Lcom/flyco/animation/BaseAnimatorSet;

    invoke-static {v0}, Lcom/flyco/animation/BaseAnimatorSet;->access$000(Lcom/flyco/animation/BaseAnimatorSet;)Lcom/flyco/animation/BaseAnimatorSet$AnimatorListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/flyco/animation/BaseAnimatorSet$AnimatorListener;->onAnimationRepeat(Landroid/animation/Animator;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/flyco/animation/BaseAnimatorSet$1;->this$0:Lcom/flyco/animation/BaseAnimatorSet;

    invoke-static {v0}, Lcom/flyco/animation/BaseAnimatorSet;->access$000(Lcom/flyco/animation/BaseAnimatorSet;)Lcom/flyco/animation/BaseAnimatorSet$AnimatorListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/flyco/animation/BaseAnimatorSet$AnimatorListener;->onAnimationStart(Landroid/animation/Animator;)V

    return-void
.end method
