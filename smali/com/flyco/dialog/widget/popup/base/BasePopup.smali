.class public abstract Lcom/flyco/dialog/widget/popup/base/BasePopup;
.super Lcom/flyco/dialog/widget/internal/InternalBasePopup;
.source "BasePopup.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/flyco/dialog/widget/popup/base/BasePopup<",
        "TT;>;>",
        "Lcom/flyco/dialog/widget/internal/InternalBasePopup<",
        "TT;>;"
    }
.end annotation


# instance fields
.field protected mAlignCenter:Z

.field protected mLlContent:Landroid/widget/LinearLayout;

.field protected mWrappedView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Lcom/flyco/dialog/widget/internal/InternalBasePopup;-><init>(Landroid/content/Context;)V

    .line 19
    invoke-virtual {p0}, Lcom/flyco/dialog/widget/popup/base/BasePopup;->onCreatePopupView()Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/flyco/dialog/widget/popup/base/BasePopup;->mWrappedView:Landroid/view/View;

    const/16 p1, 0x50

    .line 20
    invoke-virtual {p0, p1}, Lcom/flyco/dialog/widget/popup/base/BasePopup;->gravity(I)Lcom/flyco/dialog/widget/internal/InternalBasePopup;

    return-void
.end method

.method private getX(I)I
    .locals 2

    if-gez p1, :cond_0

    const/4 p1, 0x0

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/flyco/dialog/widget/popup/base/BasePopup;->mLlContent:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v0

    add-int/2addr v0, p1

    iget-object v1, p0, Lcom/flyco/dialog/widget/popup/base/BasePopup;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    if-le v0, v1, :cond_1

    .line 95
    iget-object p1, p0, Lcom/flyco/dialog/widget/popup/base/BasePopup;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget p1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v0, p0, Lcom/flyco/dialog/widget/popup/base/BasePopup;->mLlContent:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v0

    sub-int/2addr p1, v0

    :cond_1
    return p1
.end method

.method private getY(I)I
    .locals 2

    if-gez p1, :cond_0

    const/4 p1, 0x0

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/flyco/dialog/widget/popup/base/BasePopup;->mLlContent:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v0

    add-int/2addr v0, p1

    int-to-float v0, v0

    iget v1, p0, Lcom/flyco/dialog/widget/popup/base/BasePopup;->mMaxHeight:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 106
    iget p1, p0, Lcom/flyco/dialog/widget/popup/base/BasePopup;->mMaxHeight:F

    iget-object v0, p0, Lcom/flyco/dialog/widget/popup/base/BasePopup;->mLlContent:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr p1, v0

    float-to-int p1, p1

    :cond_1
    return p1
.end method


# virtual methods
.method public alignCenter(Z)Lcom/flyco/dialog/widget/popup/base/BasePopup;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TT;"
        }
    .end annotation

    .line 45
    iput-boolean p1, p0, Lcom/flyco/dialog/widget/popup/base/BasePopup;->mAlignCenter:Z

    return-object p0
.end method

.method public bridge synthetic anchorView(Landroid/view/View;)Lcom/flyco/dialog/widget/internal/InternalBasePopup;
    .locals 0

    .line 12
    invoke-virtual {p0, p1}, Lcom/flyco/dialog/widget/popup/base/BasePopup;->anchorView(Landroid/view/View;)Lcom/flyco/dialog/widget/popup/base/BasePopup;

    move-result-object p1

    return-object p1
.end method

.method public anchorView(Landroid/view/View;)Lcom/flyco/dialog/widget/popup/base/BasePopup;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")TT;"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 52
    iput-object p1, p0, Lcom/flyco/dialog/widget/popup/base/BasePopup;->mAnchorView:Landroid/view/View;

    const/4 v0, 0x2

    .line 53
    new-array v0, v0, [I

    .line 54
    iget-object v1, p0, Lcom/flyco/dialog/widget/popup/base/BasePopup;->mAnchorView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v1, 0x0

    .line 56
    aget v1, v0, v1

    iput v1, p0, Lcom/flyco/dialog/widget/popup/base/BasePopup;->mX:I

    .line 57
    iget v1, p0, Lcom/flyco/dialog/widget/popup/base/BasePopup;->mGravity:I

    const/16 v2, 0x30

    const/4 v3, 0x1

    if-ne v1, v2, :cond_0

    .line 58
    aget p1, v0, v3

    iget-object v0, p0, Lcom/flyco/dialog/widget/popup/base/BasePopup;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/flyco/dialog/utils/StatusBarUtils;->getHeight(Landroid/content/Context;)I

    move-result v0

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/flyco/dialog/widget/popup/base/BasePopup;->mY:I

    goto :goto_0

    .line 60
    :cond_0
    aget v0, v0, v3

    iget-object v1, p0, Lcom/flyco/dialog/widget/popup/base/BasePopup;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/flyco/dialog/utils/StatusBarUtils;->getHeight(Landroid/content/Context;)I

    move-result v1

    sub-int/2addr v0, v1

    .line 61
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    add-int/2addr v0, p1

    iput v0, p0, Lcom/flyco/dialog/widget/popup/base/BasePopup;->mY:I

    :cond_1
    :goto_0
    return-object p0
.end method

.method public offset(FF)Lcom/flyco/dialog/widget/popup/base/BasePopup;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FF)TT;"
        }
    .end annotation

    .line 38
    iput p1, p0, Lcom/flyco/dialog/widget/popup/base/BasePopup;->mXOffset:F

    .line 39
    iput p2, p0, Lcom/flyco/dialog/widget/popup/base/BasePopup;->mYOffset:F

    return-object p0
.end method

.method public abstract onCreatePopupView()Landroid/view/View;
.end method

.method public onCreateView()Landroid/view/View;
    .locals 3

    .line 27
    iget-object v0, p0, Lcom/flyco/dialog/widget/popup/base/BasePopup;->mContext:Landroid/content/Context;

    sget v1, Lcom/flyco/dialog/R$layout;->popup_base:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 28
    sget v1, Lcom/flyco/dialog/R$id;->ll_content:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/flyco/dialog/widget/popup/base/BasePopup;->mLlContent:Landroid/widget/LinearLayout;

    .line 29
    iget-object v1, p0, Lcom/flyco/dialog/widget/popup/base/BasePopup;->mLlContent:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/flyco/dialog/widget/popup/base/BasePopup;->mWrappedView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 32
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public onLayoutObtain()V
    .locals 4

    .line 70
    iget v0, p0, Lcom/flyco/dialog/widget/popup/base/BasePopup;->mX:I

    .line 71
    iget v1, p0, Lcom/flyco/dialog/widget/popup/base/BasePopup;->mY:I

    .line 72
    iget v2, p0, Lcom/flyco/dialog/widget/popup/base/BasePopup;->mGravity:I

    const/16 v3, 0x30

    if-ne v2, v3, :cond_0

    .line 73
    iget v1, p0, Lcom/flyco/dialog/widget/popup/base/BasePopup;->mY:I

    iget-object v2, p0, Lcom/flyco/dialog/widget/popup/base/BasePopup;->mLlContent:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    .line 76
    :cond_0
    iget-boolean v2, p0, Lcom/flyco/dialog/widget/popup/base/BasePopup;->mAlignCenter:Z

    if-eqz v2, :cond_1

    .line 77
    iget v0, p0, Lcom/flyco/dialog/widget/popup/base/BasePopup;->mX:I

    iget-object v2, p0, Lcom/flyco/dialog/widget/popup/base/BasePopup;->mAnchorView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    iget-object v2, p0, Lcom/flyco/dialog/widget/popup/base/BasePopup;->mLlContent:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v2

    .line 80
    :cond_1
    invoke-direct {p0, v0}, Lcom/flyco/dialog/widget/popup/base/BasePopup;->getX(I)I

    move-result v0

    .line 81
    invoke-direct {p0, v1}, Lcom/flyco/dialog/widget/popup/base/BasePopup;->getY(I)I

    move-result v1

    .line 83
    iget v2, p0, Lcom/flyco/dialog/widget/popup/base/BasePopup;->mXOffset:F

    invoke-virtual {p0, v2}, Lcom/flyco/dialog/widget/popup/base/BasePopup;->dp2px(F)I

    move-result v2

    add-int/2addr v0, v2

    invoke-direct {p0, v0}, Lcom/flyco/dialog/widget/popup/base/BasePopup;->getX(I)I

    move-result v0

    .line 84
    iget v2, p0, Lcom/flyco/dialog/widget/popup/base/BasePopup;->mYOffset:F

    invoke-virtual {p0, v2}, Lcom/flyco/dialog/widget/popup/base/BasePopup;->dp2px(F)I

    move-result v2

    add-int/2addr v1, v2

    invoke-direct {p0, v1}, Lcom/flyco/dialog/widget/popup/base/BasePopup;->getY(I)I

    move-result v1

    .line 86
    iget-object v2, p0, Lcom/flyco/dialog/widget/popup/base/BasePopup;->mLlContent:Landroid/widget/LinearLayout;

    int-to-float v0, v0

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setX(F)V

    .line 87
    iget-object v0, p0, Lcom/flyco/dialog/widget/popup/base/BasePopup;->mLlContent:Landroid/widget/LinearLayout;

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setY(F)V

    return-void
.end method
