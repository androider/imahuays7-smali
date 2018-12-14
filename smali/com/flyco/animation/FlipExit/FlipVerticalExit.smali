.class public Lcom/flyco/animation/FlipExit/FlipVerticalExit;
.super Lcom/flyco/animation/BaseAnimatorSet;
.source "FlipVerticalExit.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Lcom/flyco/animation/BaseAnimatorSet;-><init>()V

    return-void
.end method


# virtual methods
.method public setAnimation(Landroid/view/View;)V
    .locals 5

    .line 11
    iget-object v0, p0, Lcom/flyco/animation/FlipExit/FlipVerticalExit;->animatorSet:Landroid/animation/AnimatorSet;

    const/4 v1, 0x2

    new-array v2, v1, [Landroid/animation/Animator;

    const-string v3, "rotationX"

    new-array v4, v1, [F

    fill-array-data v4, :array_0

    invoke-static {p1, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "alpha"

    new-array v1, v1, [F

    fill-array-data v1, :array_1

    .line 12
    invoke-static {p1, v3, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const/4 v1, 0x1

    aput-object p1, v2, v1

    .line 11
    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x42b40000    # 90.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method
