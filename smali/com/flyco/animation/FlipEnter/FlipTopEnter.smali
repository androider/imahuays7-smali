.class public Lcom/flyco/animation/FlipEnter/FlipTopEnter;
.super Lcom/flyco/animation/BaseAnimatorSet;
.source "FlipTopEnter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/flyco/animation/BaseAnimatorSet;-><init>()V

    return-void
.end method


# virtual methods
.method public setAnimation(Landroid/view/View;)V
    .locals 8

    .line 12
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 13
    iget-object v1, p0, Lcom/flyco/animation/FlipEnter/FlipTopEnter;->animatorSet:Landroid/animation/AnimatorSet;

    const/4 v2, 0x3

    new-array v2, v2, [Landroid/animation/Animator;

    const-string v3, "rotationX"

    const/4 v4, 0x2

    new-array v5, v4, [F

    fill-array-data v5, :array_0

    .line 14
    invoke-static {p1, v3, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    const/4 v5, 0x0

    aput-object v3, v2, v5

    const-string v3, "translationY"

    new-array v6, v4, [F

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v7, -0x3cb80000    # -200.0f

    mul-float v0, v0, v7

    aput v0, v6, v5

    const/4 v0, 0x1

    const/4 v5, 0x0

    aput v5, v6, v0

    .line 15
    invoke-static {p1, v3, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v2, v0

    const-string v0, "alpha"

    new-array v3, v4, [F

    fill-array-data v3, :array_1

    .line 16
    invoke-static {p1, v0, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    aput-object p1, v2, v4

    .line 13
    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x42b40000    # 90.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x3e4ccccd    # 0.2f
        0x3f800000    # 1.0f
    .end array-data
.end method
