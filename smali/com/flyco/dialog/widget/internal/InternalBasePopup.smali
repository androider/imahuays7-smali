.class public abstract Lcom/flyco/dialog/widget/internal/InternalBasePopup;
.super Lcom/flyco/dialog/widget/base/BaseDialog;
.source "InternalBasePopup.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/flyco/dialog/widget/internal/InternalBasePopup<",
        "TT;>;>",
        "Lcom/flyco/dialog/widget/base/BaseDialog<",
        "TT;>;"
    }
.end annotation


# instance fields
.field protected isLayoutObtain:Z

.field protected mAnchorView:Landroid/view/View;

.field protected mGravity:I

.field protected mX:I

.field protected mXOffset:F

.field protected mY:I

.field protected mYOffset:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lcom/flyco/dialog/widget/base/BaseDialog;-><init>(Landroid/content/Context;)V

    const/high16 p1, 0x3f800000    # 1.0f

    .line 24
    invoke-virtual {p0, p1}, Lcom/flyco/dialog/widget/internal/InternalBasePopup;->heightScale(F)Lcom/flyco/dialog/widget/base/BaseDialog;

    const/4 p1, 0x0

    .line 25
    invoke-virtual {p0, p1}, Lcom/flyco/dialog/widget/internal/InternalBasePopup;->dimEnabled(Z)Lcom/flyco/dialog/widget/base/BaseDialog;

    return-void
.end method


# virtual methods
.method public abstract anchorView(Landroid/view/View;)Lcom/flyco/dialog/widget/internal/InternalBasePopup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")TT;"
        }
    .end annotation
.end method

.method public gravity(I)Lcom/flyco/dialog/widget/internal/InternalBasePopup;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    const/16 v0, 0x30

    if-eq p1, v0, :cond_0

    const/16 v0, 0x50

    if-eq p1, v0, :cond_0

    .line 59
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Gravity must be either Gravity.TOP or Gravity.BOTTOM"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 61
    :cond_0
    iput p1, p0, Lcom/flyco/dialog/widget/internal/InternalBasePopup;->mGravity:I

    .line 62
    iget-object p1, p0, Lcom/flyco/dialog/widget/internal/InternalBasePopup;->mAnchorView:Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/flyco/dialog/widget/internal/InternalBasePopup;->anchorView(Landroid/view/View;)Lcom/flyco/dialog/widget/internal/InternalBasePopup;

    return-object p0
.end method

.method public location(II)Lcom/flyco/dialog/widget/internal/InternalBasePopup;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)TT;"
        }
    .end annotation

    .line 67
    iput p1, p0, Lcom/flyco/dialog/widget/internal/InternalBasePopup;->mX:I

    .line 68
    iget-object p1, p0, Lcom/flyco/dialog/widget/internal/InternalBasePopup;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/flyco/dialog/utils/StatusBarUtils;->getHeight(Landroid/content/Context;)I

    move-result p1

    sub-int/2addr p2, p1

    iput p2, p0, Lcom/flyco/dialog/widget/internal/InternalBasePopup;->mY:I

    return-object p0
.end method

.method public onAttachedToWindow()V
    .locals 2

    .line 44
    invoke-super {p0}, Lcom/flyco/dialog/widget/base/BaseDialog;->onAttachedToWindow()V

    .line 45
    iget-object v0, p0, Lcom/flyco/dialog/widget/internal/InternalBasePopup;->mOnCreateView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 46
    iget-boolean v0, p0, Lcom/flyco/dialog/widget/internal/InternalBasePopup;->isLayoutObtain:Z

    if-eqz v0, :cond_0

    .line 47
    invoke-virtual {p0}, Lcom/flyco/dialog/widget/internal/InternalBasePopup;->onLayoutObtain()V

    :cond_0
    return-void
.end method

.method public abstract onLayoutObtain()V
.end method

.method public onViewCreated(Landroid/view/View;)V
    .locals 2

    .line 30
    iget-object v0, p0, Lcom/flyco/dialog/widget/internal/InternalBasePopup;->mLlControlHeight:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setClipChildren(Z)V

    if-eqz p1, :cond_0

    .line 32
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    new-instance v0, Lcom/flyco/dialog/widget/internal/InternalBasePopup$1;

    invoke-direct {v0, p0}, Lcom/flyco/dialog/widget/internal/InternalBasePopup$1;-><init>(Lcom/flyco/dialog/widget/internal/InternalBasePopup;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_0
    return-void
.end method
