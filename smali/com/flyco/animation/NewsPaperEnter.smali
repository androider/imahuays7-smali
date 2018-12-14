.class public Lcom/flyco/animation/NewsPaperEnter;
.super Lcom/flyco/animation/BaseAnimatorSet;
.source "NewsPaperEnter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Lcom/flyco/animation/BaseAnimatorSet;-><init>()V

    return-void
.end method


# virtual methods
.method public setAnimation(Landroid/view/View;)V
    .locals 7

    .line 9
    iget-object v0, p0, Lcom/flyco/animation/NewsPaperEnter;->animatorSet:Landroid/animation/AnimatorSet;

    const/4 v1, 0x4

    new-array v2, v1, [Landroid/animation/Animator;

    const-string v3, "scaleX"

    const/4 v4, 0x3

    new-array v5, v4, [F

    fill-array-data v5, :array_0

    .line 10
    invoke-static {p1, v3, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    const/4 v5, 0x0

    aput-object v3, v2, v5

    const-string v3, "scaleY"

    new-array v5, v4, [F

    fill-array-data v5, :array_1

    .line 11
    invoke-static {p1, v3, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const-string v3, "alpha"

    const/4 v5, 0x2

    new-array v6, v5, [F

    fill-array-data v6, :array_2

    .line 12
    invoke-static {p1, v3, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v2, v5

    const-string v3, "rotation"

    new-array v1, v1, [F

    fill-array-data v1, :array_3

    .line 13
    invoke-static {p1, v3, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    aput-object p1, v2, v4

    .line 9
    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x3dcccccd    # 0.1f
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3dcccccd    # 0.1f
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_3
    .array-data 4
        0x44870000    # 1080.0f
        0x44340000    # 720.0f
        0x43b40000    # 360.0f
        0x0
    .end array-data
.end method
