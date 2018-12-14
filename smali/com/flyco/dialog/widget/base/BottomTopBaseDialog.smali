.class public abstract Lcom/flyco/dialog/widget/base/BottomTopBaseDialog;
.super Lcom/flyco/dialog/widget/base/BaseDialog;
.source "BottomTopBaseDialog.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/flyco/dialog/widget/base/BottomTopBaseDialog<",
        "TT;>;>",
        "Lcom/flyco/dialog/widget/base/BaseDialog<",
        "TT;>;"
    }
.end annotation


# instance fields
.field protected mAnimateView:Landroid/view/View;

.field protected mBottom:I

.field protected mInnerAnimDuration:J

.field protected mInnerDismissAnim:Landroid/view/animation/Animation;

.field protected mInnerShowAnim:Landroid/view/animation/Animation;

.field protected mIsInnerDismissAnim:Z

.field protected mIsInnerShowAnim:Z

.field protected mLeft:I

.field protected mRight:I

.field protected mTop:I

.field private mWindowInAs:Lcom/flyco/animation/BaseAnimatorSet;

.field private mWindowOutAs:Lcom/flyco/animation/BaseAnimatorSet;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 23
    invoke-direct {p0, p1}, Lcom/flyco/dialog/widget/base/BaseDialog;-><init>(Landroid/content/Context;)V

    const-wide/16 v0, 0x15e

    .line 17
    iput-wide v0, p0, Lcom/flyco/dialog/widget/base/BottomTopBaseDialog;->mInnerAnimDuration:J

    return-void
.end method


# virtual methods
.method protected dismissWithAnim()V
    .locals 3

    .line 73
    iget-object v0, p0, Lcom/flyco/dialog/widget/base/BottomTopBaseDialog;->mInnerDismissAnim:Landroid/view/animation/Animation;

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/flyco/dialog/widget/base/BottomTopBaseDialog;->mInnerDismissAnim:Landroid/view/animation/Animation;

    iget-wide v1, p0, Lcom/flyco/dialog/widget/base/BottomTopBaseDialog;->mInnerAnimDuration:J

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 75
    iget-object v0, p0, Lcom/flyco/dialog/widget/base/BottomTopBaseDialog;->mInnerDismissAnim:Landroid/view/animation/Animation;

    new-instance v1, Lcom/flyco/dialog/widget/base/BottomTopBaseDialog$2;

    invoke-direct {v1, p0}, Lcom/flyco/dialog/widget/base/BottomTopBaseDialog$2;-><init>(Lcom/flyco/dialog/widget/base/BottomTopBaseDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 93
    iget-object v0, p0, Lcom/flyco/dialog/widget/base/BottomTopBaseDialog;->mLlControlHeight:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/flyco/dialog/widget/base/BottomTopBaseDialog;->mInnerDismissAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 95
    :cond_0
    invoke-virtual {p0}, Lcom/flyco/dialog/widget/base/BottomTopBaseDialog;->superDismiss()V

    .line 98
    :goto_0
    iget-object v0, p0, Lcom/flyco/dialog/widget/base/BottomTopBaseDialog;->mAnimateView:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 99
    invoke-virtual {p0}, Lcom/flyco/dialog/widget/base/BottomTopBaseDialog;->getWindowOutAs()Lcom/flyco/animation/BaseAnimatorSet;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 100
    invoke-virtual {p0}, Lcom/flyco/dialog/widget/base/BottomTopBaseDialog;->getWindowOutAs()Lcom/flyco/animation/BaseAnimatorSet;

    move-result-object v0

    iput-object v0, p0, Lcom/flyco/dialog/widget/base/BottomTopBaseDialog;->mWindowOutAs:Lcom/flyco/animation/BaseAnimatorSet;

    .line 102
    :cond_1
    iget-object v0, p0, Lcom/flyco/dialog/widget/base/BottomTopBaseDialog;->mWindowOutAs:Lcom/flyco/animation/BaseAnimatorSet;

    iget-wide v1, p0, Lcom/flyco/dialog/widget/base/BottomTopBaseDialog;->mInnerAnimDuration:J

    invoke-virtual {v0, v1, v2}, Lcom/flyco/animation/BaseAnimatorSet;->duration(J)Lcom/flyco/animation/BaseAnimatorSet;

    move-result-object v0

    iget-object v1, p0, Lcom/flyco/dialog/widget/base/BottomTopBaseDialog;->mAnimateView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/flyco/animation/BaseAnimatorSet;->playOn(Landroid/view/View;)V

    :cond_2
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 108
    iget-boolean v0, p0, Lcom/flyco/dialog/widget/base/BottomTopBaseDialog;->mIsInnerDismissAnim:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/flyco/dialog/widget/base/BottomTopBaseDialog;->mIsInnerShowAnim:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 111
    :cond_0
    invoke-super {p0, p1}, Lcom/flyco/dialog/widget/base/BaseDialog;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method protected abstract getWindowInAs()Lcom/flyco/animation/BaseAnimatorSet;
.end method

.method protected abstract getWindowOutAs()Lcom/flyco/animation/BaseAnimatorSet;
.end method

.method public innerAnimDuration(J)Lcom/flyco/dialog/widget/base/BottomTopBaseDialog;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TT;"
        }
    .end annotation

    .line 28
    iput-wide p1, p0, Lcom/flyco/dialog/widget/base/BottomTopBaseDialog;->mInnerAnimDuration:J

    return-object p0
.end method

.method public onBackPressed()V
    .locals 1

    .line 116
    iget-boolean v0, p0, Lcom/flyco/dialog/widget/base/BottomTopBaseDialog;->mIsInnerDismissAnim:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/flyco/dialog/widget/base/BottomTopBaseDialog;->mIsInnerShowAnim:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 119
    :cond_0
    invoke-super {p0}, Lcom/flyco/dialog/widget/base/BaseDialog;->onBackPressed()V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method public padding(IIII)Lcom/flyco/dialog/widget/base/BottomTopBaseDialog;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII)TT;"
        }
    .end annotation

    .line 33
    iput p1, p0, Lcom/flyco/dialog/widget/base/BottomTopBaseDialog;->mLeft:I

    .line 34
    iput p2, p0, Lcom/flyco/dialog/widget/base/BottomTopBaseDialog;->mTop:I

    .line 35
    iput p3, p0, Lcom/flyco/dialog/widget/base/BottomTopBaseDialog;->mRight:I

    .line 36
    iput p4, p0, Lcom/flyco/dialog/widget/base/BottomTopBaseDialog;->mBottom:I

    return-object p0
.end method

.method protected showWithAnim()V
    .locals 3

    .line 42
    iget-object v0, p0, Lcom/flyco/dialog/widget/base/BottomTopBaseDialog;->mInnerShowAnim:Landroid/view/animation/Animation;

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/flyco/dialog/widget/base/BottomTopBaseDialog;->mInnerShowAnim:Landroid/view/animation/Animation;

    iget-wide v1, p0, Lcom/flyco/dialog/widget/base/BottomTopBaseDialog;->mInnerAnimDuration:J

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 44
    iget-object v0, p0, Lcom/flyco/dialog/widget/base/BottomTopBaseDialog;->mInnerShowAnim:Landroid/view/animation/Animation;

    new-instance v1, Lcom/flyco/dialog/widget/base/BottomTopBaseDialog$1;

    invoke-direct {v1, p0}, Lcom/flyco/dialog/widget/base/BottomTopBaseDialog$1;-><init>(Lcom/flyco/dialog/widget/base/BottomTopBaseDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 60
    iget-object v0, p0, Lcom/flyco/dialog/widget/base/BottomTopBaseDialog;->mLlControlHeight:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/flyco/dialog/widget/base/BottomTopBaseDialog;->mInnerShowAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/flyco/dialog/widget/base/BottomTopBaseDialog;->mAnimateView:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 64
    invoke-virtual {p0}, Lcom/flyco/dialog/widget/base/BottomTopBaseDialog;->getWindowInAs()Lcom/flyco/animation/BaseAnimatorSet;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 65
    invoke-virtual {p0}, Lcom/flyco/dialog/widget/base/BottomTopBaseDialog;->getWindowInAs()Lcom/flyco/animation/BaseAnimatorSet;

    move-result-object v0

    iput-object v0, p0, Lcom/flyco/dialog/widget/base/BottomTopBaseDialog;->mWindowInAs:Lcom/flyco/animation/BaseAnimatorSet;

    .line 67
    :cond_1
    iget-object v0, p0, Lcom/flyco/dialog/widget/base/BottomTopBaseDialog;->mWindowInAs:Lcom/flyco/animation/BaseAnimatorSet;

    iget-wide v1, p0, Lcom/flyco/dialog/widget/base/BottomTopBaseDialog;->mInnerAnimDuration:J

    invoke-virtual {v0, v1, v2}, Lcom/flyco/animation/BaseAnimatorSet;->duration(J)Lcom/flyco/animation/BaseAnimatorSet;

    move-result-object v0

    iget-object v1, p0, Lcom/flyco/dialog/widget/base/BottomTopBaseDialog;->mAnimateView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/flyco/animation/BaseAnimatorSet;->playOn(Landroid/view/View;)V

    :cond_2
    return-void
.end method
