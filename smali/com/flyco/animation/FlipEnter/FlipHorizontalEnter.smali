.class public Lcom/flyco/animation/FlipEnter/FlipHorizontalEnter;
.super Lcom/flyco/animation/BaseAnimatorSet;
.source "FlipHorizontalEnter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Lcom/flyco/animation/BaseAnimatorSet;-><init>()V

    return-void
.end method


# virtual methods
.method public setAnimation(Landroid/view/View;)V
    .locals 4

    .line 11
    iget-object v0, p0, Lcom/flyco/animation/FlipEnter/FlipHorizontalEnter;->animatorSet:Landroid/animation/AnimatorSet;

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/animation/Animator;

    const-string v2, "rotationY"

    const/4 v3, 0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    .line 13
    invoke-static {p1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 11
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    return-void

    :array_0
    .array-data 4
        0x42b40000    # 90.0f
        0x0
    .end array-data
.end method
