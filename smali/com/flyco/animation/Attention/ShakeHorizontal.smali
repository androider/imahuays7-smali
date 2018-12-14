.class public Lcom/flyco/animation/Attention/ShakeHorizontal;
.super Lcom/flyco/animation/BaseAnimatorSet;
.source "ShakeHorizontal.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 10
    invoke-direct {p0}, Lcom/flyco/animation/BaseAnimatorSet;-><init>()V

    const-wide/16 v0, 0x3e8

    .line 11
    iput-wide v0, p0, Lcom/flyco/animation/Attention/ShakeHorizontal;->duration:J

    return-void
.end method


# virtual methods
.method public setAnimation(Landroid/view/View;)V
    .locals 3

    const-string v0, "translationX"

    const/4 v1, 0x2

    .line 16
    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {p1, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 17
    new-instance v0, Landroid/view/animation/CycleInterpolator;

    const/high16 v1, 0x40a00000    # 5.0f

    invoke-direct {v0, v1}, Landroid/view/animation/CycleInterpolator;-><init>(F)V

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 18
    iget-object v0, p0, Lcom/flyco/animation/Attention/ShakeHorizontal;->animatorSet:Landroid/animation/AnimatorSet;

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/animation/Animator;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    return-void

    :array_0
    .array-data 4
        -0x3ee00000    # -10.0f
        0x41200000    # 10.0f
    .end array-data
.end method
