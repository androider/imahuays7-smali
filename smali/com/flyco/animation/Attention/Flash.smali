.class public Lcom/flyco/animation/Attention/Flash;
.super Lcom/flyco/animation/BaseAnimatorSet;
.source "Flash.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 10
    invoke-direct {p0}, Lcom/flyco/animation/BaseAnimatorSet;-><init>()V

    const-wide/16 v0, 0x3e8

    .line 11
    iput-wide v0, p0, Lcom/flyco/animation/Attention/Flash;->duration:J

    return-void
.end method


# virtual methods
.method public setAnimation(Landroid/view/View;)V
    .locals 4

    .line 16
    iget-object v0, p0, Lcom/flyco/animation/Attention/Flash;->animatorSet:Landroid/animation/AnimatorSet;

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/animation/Animator;

    const-string v2, "alpha"

    const/4 v3, 0x5

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    .line 17
    invoke-static {p1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 16
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
