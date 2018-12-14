.class Lcom/flyco/dialog/widget/base/BottomBaseDialog$WindowOutAs;
.super Lcom/flyco/animation/BaseAnimatorSet;
.source "BottomBaseDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyco/dialog/widget/base/BottomBaseDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WindowOutAs"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyco/dialog/widget/base/BottomBaseDialog;


# direct methods
.method private constructor <init>(Lcom/flyco/dialog/widget/base/BottomBaseDialog;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/flyco/dialog/widget/base/BottomBaseDialog$WindowOutAs;->this$0:Lcom/flyco/dialog/widget/base/BottomBaseDialog;

    invoke-direct {p0}, Lcom/flyco/animation/BaseAnimatorSet;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/flyco/dialog/widget/base/BottomBaseDialog;Lcom/flyco/dialog/widget/base/BottomBaseDialog$1;)V
    .locals 0

    .line 79
    invoke-direct {p0, p1}, Lcom/flyco/dialog/widget/base/BottomBaseDialog$WindowOutAs;-><init>(Lcom/flyco/dialog/widget/base/BottomBaseDialog;)V

    return-void
.end method


# virtual methods
.method public setAnimation(Landroid/view/View;)V
    .locals 4

    const-string v0, "scaleX"

    const/4 v1, 0x2

    .line 82
    new-array v2, v1, [F

    fill-array-data v2, :array_0

    invoke-static {p1, v0, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-string v2, "scaleY"

    .line 83
    new-array v3, v1, [F

    fill-array-data v3, :array_1

    invoke-static {p1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 84
    iget-object v2, p0, Lcom/flyco/dialog/widget/base/BottomBaseDialog$WindowOutAs;->animatorSet:Landroid/animation/AnimatorSet;

    new-array v1, v1, [Landroid/animation/Animator;

    const/4 v3, 0x0

    aput-object v0, v1, v3

    const/4 v0, 0x1

    aput-object p1, v1, v0

    invoke-virtual {v2, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x3f666666    # 0.9f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f666666    # 0.9f
        0x3f800000    # 1.0f
    .end array-data
.end method
