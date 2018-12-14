.class public abstract Lcom/flyco/dialog/widget/base/TopBaseDialog;
.super Lcom/flyco/dialog/widget/base/BottomTopBaseDialog;
.source "TopBaseDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flyco/dialog/widget/base/TopBaseDialog$WindowOutAs;,
        Lcom/flyco/dialog/widget/base/TopBaseDialog$WindowInAs;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/flyco/dialog/widget/base/TopBaseDialog<",
        "TT;>;>",
        "Lcom/flyco/dialog/widget/base/BottomTopBaseDialog<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private mWindowInAs:Lcom/flyco/animation/BaseAnimatorSet;

.field private mWindowOutAs:Lcom/flyco/animation/BaseAnimatorSet;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 26
    invoke-direct {p0, p1, v0}, Lcom/flyco/dialog/widget/base/TopBaseDialog;-><init>(Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 20

    move-object/from16 v0, p0

    .line 15
    invoke-direct/range {p0 .. p1}, Lcom/flyco/dialog/widget/base/BottomTopBaseDialog;-><init>(Landroid/content/Context;)V

    move-object/from16 v1, p2

    .line 16
    iput-object v1, v0, Lcom/flyco/dialog/widget/base/TopBaseDialog;->mAnimateView:Landroid/view/View;

    .line 18
    new-instance v10, Landroid/view/animation/TranslateAnimation;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/high16 v7, -0x40800000    # -1.0f

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object v1, v10

    invoke-direct/range {v1 .. v9}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    iput-object v10, v0, Lcom/flyco/dialog/widget/base/TopBaseDialog;->mInnerShowAnim:Landroid/view/animation/Animation;

    .line 21
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x1

    const/4 v15, 0x0

    const/16 v16, 0x1

    const/16 v17, 0x0

    const/16 v18, 0x1

    const/high16 v19, -0x40800000    # -1.0f

    move-object v11, v1

    invoke-direct/range {v11 .. v19}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    iput-object v1, v0, Lcom/flyco/dialog/widget/base/TopBaseDialog;->mInnerDismissAnim:Landroid/view/animation/Animation;

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 0

    .line 47
    invoke-virtual {p0}, Lcom/flyco/dialog/widget/base/TopBaseDialog;->dismissWithAnim()V

    return-void
.end method

.method protected getWindowInAs()Lcom/flyco/animation/BaseAnimatorSet;
    .locals 2

    .line 55
    iget-object v0, p0, Lcom/flyco/dialog/widget/base/TopBaseDialog;->mWindowInAs:Lcom/flyco/animation/BaseAnimatorSet;

    if-nez v0, :cond_0

    .line 56
    new-instance v0, Lcom/flyco/dialog/widget/base/TopBaseDialog$WindowInAs;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/flyco/dialog/widget/base/TopBaseDialog$WindowInAs;-><init>(Lcom/flyco/dialog/widget/base/TopBaseDialog;Lcom/flyco/dialog/widget/base/TopBaseDialog$1;)V

    iput-object v0, p0, Lcom/flyco/dialog/widget/base/TopBaseDialog;->mWindowInAs:Lcom/flyco/animation/BaseAnimatorSet;

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/flyco/dialog/widget/base/TopBaseDialog;->mWindowInAs:Lcom/flyco/animation/BaseAnimatorSet;

    return-object v0
.end method

.method protected getWindowOutAs()Lcom/flyco/animation/BaseAnimatorSet;
    .locals 2

    .line 63
    iget-object v0, p0, Lcom/flyco/dialog/widget/base/TopBaseDialog;->mWindowOutAs:Lcom/flyco/animation/BaseAnimatorSet;

    if-nez v0, :cond_0

    .line 64
    new-instance v0, Lcom/flyco/dialog/widget/base/TopBaseDialog$WindowOutAs;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/flyco/dialog/widget/base/TopBaseDialog$WindowOutAs;-><init>(Lcom/flyco/dialog/widget/base/TopBaseDialog;Lcom/flyco/dialog/widget/base/TopBaseDialog$1;)V

    iput-object v0, p0, Lcom/flyco/dialog/widget/base/TopBaseDialog;->mWindowOutAs:Lcom/flyco/animation/BaseAnimatorSet;

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/flyco/dialog/widget/base/TopBaseDialog;->mWindowOutAs:Lcom/flyco/animation/BaseAnimatorSet;

    return-object v0
.end method

.method public onAttachedToWindow()V
    .locals 0

    .line 41
    invoke-super {p0}, Lcom/flyco/dialog/widget/base/BottomTopBaseDialog;->onAttachedToWindow()V

    .line 42
    invoke-virtual {p0}, Lcom/flyco/dialog/widget/base/TopBaseDialog;->showWithAnim()V

    return-void
.end method

.method protected onStart()V
    .locals 5

    .line 31
    invoke-super {p0}, Lcom/flyco/dialog/widget/base/BottomTopBaseDialog;->onStart()V

    .line 32
    iget-object v0, p0, Lcom/flyco/dialog/widget/base/TopBaseDialog;->mLlTop:Landroid/widget/LinearLayout;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 34
    iget-object v0, p0, Lcom/flyco/dialog/widget/base/TopBaseDialog;->mLlTop:Landroid/widget/LinearLayout;

    const/16 v1, 0x30

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 35
    invoke-virtual {p0}, Lcom/flyco/dialog/widget/base/TopBaseDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    .line 36
    iget-object v0, p0, Lcom/flyco/dialog/widget/base/TopBaseDialog;->mLlTop:Landroid/widget/LinearLayout;

    iget v1, p0, Lcom/flyco/dialog/widget/base/TopBaseDialog;->mLeft:I

    iget v2, p0, Lcom/flyco/dialog/widget/base/TopBaseDialog;->mTop:I

    iget v3, p0, Lcom/flyco/dialog/widget/base/TopBaseDialog;->mRight:I

    iget v4, p0, Lcom/flyco/dialog/widget/base/TopBaseDialog;->mBottom:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    return-void
.end method
