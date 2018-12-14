.class public Lcom/flyco/animation/BounceEnter/BounceRightEnter;
.super Lcom/flyco/animation/BaseAnimatorSet;
.source "BounceRightEnter.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 10
    invoke-direct {p0}, Lcom/flyco/animation/BaseAnimatorSet;-><init>()V

    const-wide/16 v0, 0x3e8

    .line 11
    iput-wide v0, p0, Lcom/flyco/animation/BounceEnter/BounceRightEnter;->duration:J

    return-void
.end method


# virtual methods
.method public setAnimation(Landroid/view/View;)V
    .locals 8

    .line 17
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 18
    iget-object v1, p0, Lcom/flyco/animation/BounceEnter/BounceRightEnter;->animatorSet:Landroid/animation/AnimatorSet;

    const/4 v2, 0x2

    new-array v3, v2, [Landroid/animation/Animator;

    const-string v4, "alpha"

    const/4 v5, 0x4

    new-array v6, v5, [F

    fill-array-data v6, :array_0

    invoke-static {p1, v4, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    const/4 v6, 0x0

    aput-object v4, v3, v6

    const-string v4, "translationX"

    new-array v5, v5, [F

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v7, 0x437a0000    # 250.0f

    mul-float v0, v0, v7

    aput v0, v5, v6

    const/4 v0, 0x1

    const/high16 v6, -0x3e100000    # -30.0f

    aput v6, v5, v0

    const/high16 v6, 0x41200000    # 10.0f

    aput v6, v5, v2

    const/4 v2, 0x3

    const/4 v6, 0x0

    aput v6, v5, v2

    .line 19
    invoke-static {p1, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    aput-object p1, v3, v0

    .line 18
    invoke-virtual {v1, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method
