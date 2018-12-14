.class public Lcom/flyco/animation/ZoomEnter/ZoomInRightEnter;
.super Lcom/flyco/animation/BaseAnimatorSet;
.source "ZoomInRightEnter.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 10
    invoke-direct {p0}, Lcom/flyco/animation/BaseAnimatorSet;-><init>()V

    const-wide/16 v0, 0x2ee

    .line 11
    iput-wide v0, p0, Lcom/flyco/animation/ZoomEnter/ZoomInRightEnter;->duration:J

    return-void
.end method


# virtual methods
.method public setAnimation(Landroid/view/View;)V
    .locals 8

    const/4 v0, 0x0

    .line 16
    invoke-virtual {p1, v0, v0}, Landroid/view/View;->measure(II)V

    .line 17
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .line 19
    iget-object v2, p0, Lcom/flyco/animation/ZoomEnter/ZoomInRightEnter;->animatorSet:Landroid/animation/AnimatorSet;

    const/4 v3, 0x4

    new-array v3, v3, [Landroid/animation/Animator;

    const-string v4, "scaleX"

    const/4 v5, 0x3

    new-array v6, v5, [F

    fill-array-data v6, :array_0

    .line 20
    invoke-static {p1, v4, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v3, v0

    const-string v4, "scaleY"

    new-array v6, v5, [F

    fill-array-data v6, :array_1

    .line 21
    invoke-static {p1, v4, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    const/4 v6, 0x1

    aput-object v4, v3, v6

    const-string v4, "translationX"

    new-array v7, v5, [F

    int-to-float v1, v1

    aput v1, v7, v0

    const/high16 v0, -0x3dc00000    # -48.0f

    aput v0, v7, v6

    const/4 v0, 0x2

    const/4 v1, 0x0

    aput v1, v7, v0

    .line 22
    invoke-static {p1, v4, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    aput-object v1, v3, v0

    const-string v0, "alpha"

    new-array v1, v5, [F

    fill-array-data v1, :array_2

    .line 23
    invoke-static {p1, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    aput-object p1, v3, v5

    .line 19
    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x3dcccccd    # 0.1f
        0x3ef33333    # 0.475f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3dcccccd    # 0.1f
        0x3ef33333    # 0.475f
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method
