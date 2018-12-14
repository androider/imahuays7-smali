.class public Lcom/flyco/animation/SlideEnter/SlideLeftEnter;
.super Lcom/flyco/animation/BaseAnimatorSet;
.source "SlideLeftEnter.java"


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
    iget-object v1, p0, Lcom/flyco/animation/SlideEnter/SlideLeftEnter;->animatorSet:Landroid/animation/AnimatorSet;

    const/4 v2, 0x2

    new-array v3, v2, [Landroid/animation/Animator;

    const-string v4, "translationX"

    new-array v5, v2, [F

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v6, -0x3c860000    # -250.0f

    mul-float v0, v0, v6

    const/4 v6, 0x0

    aput v0, v5, v6

    const/4 v0, 0x1

    const/4 v7, 0x0

    aput v7, v5, v0

    .line 14
    invoke-static {p1, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v3, v6

    const-string v4, "alpha"

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    .line 15
    invoke-static {p1, v4, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    aput-object p1, v3, v0

    .line 13
    invoke-virtual {v1, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x3e4ccccd    # 0.2f
        0x3f800000    # 1.0f
    .end array-data
.end method
