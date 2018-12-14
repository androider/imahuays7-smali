.class public Lcom/flyco/animation/ZoomExit/ZoomInExit;
.super Lcom/flyco/animation/BaseAnimatorSet;
.source "ZoomInExit.java"


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
    iget-object v0, p0, Lcom/flyco/animation/ZoomExit/ZoomInExit;->animatorSet:Landroid/animation/AnimatorSet;

    const/4 v1, 0x3

    new-array v2, v1, [Landroid/animation/Animator;

    const-string v3, "scaleX"

    new-array v4, v1, [F

    fill-array-data v4, :array_0

    .line 12
    invoke-static {p1, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "scaleY"

    new-array v4, v1, [F

    fill-array-data v4, :array_1

    .line 13
    invoke-static {p1, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const-string v3, "alpha"

    new-array v1, v1, [F

    fill-array-data v1, :array_2

    .line 14
    invoke-static {p1, v3, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const/4 v1, 0x2

    aput-object p1, v2, v1

    .line 11
    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3fa00000    # 1.25f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3fa00000    # 1.25f
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
    .end array-data
.end method
