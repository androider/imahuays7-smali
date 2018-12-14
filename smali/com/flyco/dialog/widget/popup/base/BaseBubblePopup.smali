.class public abstract Lcom/flyco/dialog/widget/popup/base/BaseBubblePopup;
.super Lcom/flyco/dialog/widget/internal/InternalBasePopup;
.source "BaseBubblePopup.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/flyco/dialog/widget/popup/base/BaseBubblePopup<",
        "TT;>;>",
        "Lcom/flyco/dialog/widget/internal/InternalBasePopup<",
        "TT;>;"
    }
.end annotation


# instance fields
.field protected mBubbleColor:I

.field protected mCornerRadius:I

.field protected mLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

.field protected mLlContent:Landroid/widget/LinearLayout;

.field protected mMarginLeft:I

.field protected mMarginRight:I

.field private mTriangleLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

.field protected mTriangleView:Lcom/flyco/dialog/view/TriangleView;

.field protected mWrappedView:Landroid/view/View;

.field protected triangleHeight:I

.field protected triangleWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/flyco/dialog/widget/internal/InternalBasePopup;-><init>(Landroid/content/Context;)V

    .line 37
    invoke-virtual {p0}, Lcom/flyco/dialog/widget/popup/base/BaseBubblePopup;->onCreateBubbleView()Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/flyco/dialog/widget/popup/base/BaseBubblePopup;->mWrappedView:Landroid/view/View;

    .line 38
    invoke-direct {p0}, Lcom/flyco/dialog/widget/popup/base/BaseBubblePopup;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lcom/flyco/dialog/widget/internal/InternalBasePopup;-><init>(Landroid/content/Context;)V

    .line 43
    iput-object p2, p0, Lcom/flyco/dialog/widget/popup/base/BaseBubblePopup;->mWrappedView:Landroid/view/View;

    .line 44
    invoke-direct {p0}, Lcom/flyco/dialog/widget/popup/base/BaseBubblePopup;->init()V

    return-void
.end method

.method private init()V
    .locals 1

    .line 48
    new-instance v0, Lcom/flyco/animation/BounceEnter/BounceLeftEnter;

    invoke-direct {v0}, Lcom/flyco/animation/BounceEnter/BounceLeftEnter;-><init>()V

    invoke-virtual {p0, v0}, Lcom/flyco/dialog/widget/popup/base/BaseBubblePopup;->showAnim(Lcom/flyco/animation/BaseAnimatorSet;)Lcom/flyco/dialog/widget/base/BaseDialog;

    .line 49
    new-instance v0, Lcom/flyco/animation/FadeExit/FadeExit;

    invoke-direct {v0}, Lcom/flyco/animation/FadeExit/FadeExit;-><init>()V

    invoke-virtual {p0, v0}, Lcom/flyco/dialog/widget/popup/base/BaseBubblePopup;->dismissAnim(Lcom/flyco/animation/BaseAnimatorSet;)Lcom/flyco/dialog/widget/base/BaseDialog;

    const/4 v0, 0x0

    .line 50
    invoke-virtual {p0, v0}, Lcom/flyco/dialog/widget/popup/base/BaseBubblePopup;->dimEnabled(Z)Lcom/flyco/dialog/widget/base/BaseDialog;

    const-string v0, "#BB000000"

    .line 52
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/flyco/dialog/widget/popup/base/BaseBubblePopup;->bubbleColor(I)Lcom/flyco/dialog/widget/popup/base/BaseBubblePopup;

    const/high16 v0, 0x40a00000    # 5.0f

    .line 53
    invoke-virtual {p0, v0}, Lcom/flyco/dialog/widget/popup/base/BaseBubblePopup;->cornerRadius(F)Lcom/flyco/dialog/widget/popup/base/BaseBubblePopup;

    const/high16 v0, 0x41000000    # 8.0f

    .line 54
    invoke-virtual {p0, v0, v0}, Lcom/flyco/dialog/widget/popup/base/BaseBubblePopup;->margin(FF)Lcom/flyco/dialog/widget/popup/base/BaseBubblePopup;

    const/16 v0, 0x30

    .line 55
    invoke-virtual {p0, v0}, Lcom/flyco/dialog/widget/popup/base/BaseBubblePopup;->gravity(I)Lcom/flyco/dialog/widget/internal/InternalBasePopup;

    const/high16 v0, 0x41c00000    # 24.0f

    .line 56
    invoke-virtual {p0, v0}, Lcom/flyco/dialog/widget/popup/base/BaseBubblePopup;->triangleWidth(F)Lcom/flyco/dialog/widget/popup/base/BaseBubblePopup;

    const/high16 v0, 0x41400000    # 12.0f

    .line 57
    invoke-virtual {p0, v0}, Lcom/flyco/dialog/widget/popup/base/BaseBubblePopup;->triangleHeight(F)Lcom/flyco/dialog/widget/popup/base/BaseBubblePopup;

    return-void
.end method


# virtual methods
.method public bridge synthetic anchorView(Landroid/view/View;)Lcom/flyco/dialog/widget/internal/InternalBasePopup;
    .locals 0

    .line 22
    invoke-virtual {p0, p1}, Lcom/flyco/dialog/widget/popup/base/BaseBubblePopup;->anchorView(Landroid/view/View;)Lcom/flyco/dialog/widget/popup/base/BaseBubblePopup;

    move-result-object p1

    return-object p1
.end method

.method public anchorView(Landroid/view/View;)Lcom/flyco/dialog/widget/popup/base/BaseBubblePopup;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")TT;"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 129
    iput-object p1, p0, Lcom/flyco/dialog/widget/popup/base/BaseBubblePopup;->mAnchorView:Landroid/view/View;

    const/4 v0, 0x2

    .line 130
    new-array v1, v0, [I

    .line 131
    iget-object v2, p0, Lcom/flyco/dialog/widget/popup/base/BaseBubblePopup;->mAnchorView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v2, 0x0

    .line 133
    aget v2, v1, v2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    div-int/2addr v3, v0

    add-int/2addr v2, v3

    iput v2, p0, Lcom/flyco/dialog/widget/popup/base/BaseBubblePopup;->mX:I

    .line 134
    iget v0, p0, Lcom/flyco/dialog/widget/popup/base/BaseBubblePopup;->mGravity:I

    const/16 v2, 0x30

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x1

    if-ne v0, v2, :cond_0

    .line 135
    aget p1, v1, v4

    iget-object v0, p0, Lcom/flyco/dialog/widget/popup/base/BaseBubblePopup;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/flyco/dialog/utils/StatusBarUtils;->getHeight(Landroid/content/Context;)I

    move-result v0

    sub-int/2addr p1, v0

    .line 136
    invoke-virtual {p0, v3}, Lcom/flyco/dialog/widget/popup/base/BaseBubblePopup;->dp2px(F)I

    move-result v0

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/flyco/dialog/widget/popup/base/BaseBubblePopup;->mY:I

    goto :goto_0

    .line 138
    :cond_0
    aget v0, v1, v4

    iget-object v1, p0, Lcom/flyco/dialog/widget/popup/base/BaseBubblePopup;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/flyco/dialog/utils/StatusBarUtils;->getHeight(Landroid/content/Context;)I

    move-result v1

    sub-int/2addr v0, v1

    .line 139
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    add-int/2addr v0, p1

    invoke-virtual {p0, v3}, Lcom/flyco/dialog/widget/popup/base/BaseBubblePopup;->dp2px(F)I

    move-result p1

    add-int/2addr v0, p1

    iput v0, p0, Lcom/flyco/dialog/widget/popup/base/BaseBubblePopup;->mY:I

    :cond_1
    :goto_0
    return-object p0
.end method

.method public bubbleColor(I)Lcom/flyco/dialog/widget/popup/base/BaseBubblePopup;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 146
    iput p1, p0, Lcom/flyco/dialog/widget/popup/base/BaseBubblePopup;->mBubbleColor:I

    return-object p0
.end method

.method public cornerRadius(F)Lcom/flyco/dialog/widget/popup/base/BaseBubblePopup;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)TT;"
        }
    .end annotation

    .line 151
    invoke-virtual {p0, p1}, Lcom/flyco/dialog/widget/popup/base/BaseBubblePopup;->dp2px(F)I

    move-result p1

    iput p1, p0, Lcom/flyco/dialog/widget/popup/base/BaseBubblePopup;->mCornerRadius:I

    return-object p0
.end method

.method public margin(FF)Lcom/flyco/dialog/widget/popup/base/BaseBubblePopup;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FF)TT;"
        }
    .end annotation

    .line 156
    invoke-virtual {p0, p1}, Lcom/flyco/dialog/widget/popup/base/BaseBubblePopup;->dp2px(F)I

    move-result p1

    iput p1, p0, Lcom/flyco/dialog/widget/popup/base/BaseBubblePopup;->mMarginLeft:I

    .line 157
    invoke-virtual {p0, p2}, Lcom/flyco/dialog/widget/popup/base/BaseBubblePopup;->dp2px(F)I

    move-result p1

    iput p1, p0, Lcom/flyco/dialog/widget/popup/base/BaseBubblePopup;->mMarginRight:I

    return-object p0
.end method

.method public abstract onCreateBubbleView()Landroid/view/View;
.end method

.method public onCreateView()Landroid/view/View;
    .locals 3

    .line 64
    iget-object v0, p0, Lcom/flyco/dialog/widget/popup/base/BaseBubblePopup;->mContext:Landroid/content/Context;

    sget v1, Lcom/flyco/dialog/R$layout;->popup_bubble:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 65
    sget v1, Lcom/flyco/dialog/R$id;->ll_content:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/flyco/dialog/widget/popup/base/BaseBubblePopup;->mLlContent:Landroid/widget/LinearLayout;

    .line 66
    sget v1, Lcom/flyco/dialog/R$id;->triangle_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/flyco/dialog/view/TriangleView;

    iput-object v1, p0, Lcom/flyco/dialog/widget/popup/base/BaseBubblePopup;->mTriangleView:Lcom/flyco/dialog/view/TriangleView;

    .line 67
    iget-object v1, p0, Lcom/flyco/dialog/widget/popup/base/BaseBubblePopup;->mLlContent:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/flyco/dialog/widget/popup/base/BaseBubblePopup;->mWrappedView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 69
    iget-object v1, p0, Lcom/flyco/dialog/widget/popup/base/BaseBubblePopup;->mLlContent:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    iput-object v1, p0, Lcom/flyco/dialog/widget/popup/base/BaseBubblePopup;->mLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    .line 70
    iget-object v1, p0, Lcom/flyco/dialog/widget/popup/base/BaseBubblePopup;->mTriangleView:Lcom/flyco/dialog/view/TriangleView;

    invoke-virtual {v1}, Lcom/flyco/dialog/view/TriangleView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    iput-object v1, p0, Lcom/flyco/dialog/widget/popup/base/BaseBubblePopup;->mTriangleLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    .line 72
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public onLayoutObtain()V
    .locals 4

    .line 94
    iget-object v0, p0, Lcom/flyco/dialog/widget/popup/base/BaseBubblePopup;->mTriangleView:Lcom/flyco/dialog/view/TriangleView;

    iget v1, p0, Lcom/flyco/dialog/widget/popup/base/BaseBubblePopup;->mX:I

    iget-object v2, p0, Lcom/flyco/dialog/widget/popup/base/BaseBubblePopup;->mTriangleView:Lcom/flyco/dialog/view/TriangleView;

    invoke-virtual {v2}, Lcom/flyco/dialog/view/TriangleView;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/flyco/dialog/view/TriangleView;->setX(F)V

    .line 96
    iget v0, p0, Lcom/flyco/dialog/widget/popup/base/BaseBubblePopup;->mGravity:I

    const/16 v1, 0x30

    if-ne v0, v1, :cond_0

    .line 97
    iget v0, p0, Lcom/flyco/dialog/widget/popup/base/BaseBubblePopup;->mY:I

    iget-object v1, p0, Lcom/flyco/dialog/widget/popup/base/BaseBubblePopup;->mTriangleView:Lcom/flyco/dialog/view/TriangleView;

    invoke-virtual {v1}, Lcom/flyco/dialog/view/TriangleView;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    .line 98
    iget-object v1, p0, Lcom/flyco/dialog/widget/popup/base/BaseBubblePopup;->mTriangleView:Lcom/flyco/dialog/view/TriangleView;

    int-to-float v2, v0

    invoke-virtual {v1, v2}, Lcom/flyco/dialog/view/TriangleView;->setY(F)V

    .line 99
    iget-object v1, p0, Lcom/flyco/dialog/widget/popup/base/BaseBubblePopup;->mLlContent:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/flyco/dialog/widget/popup/base/BaseBubblePopup;->mLlContent:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v2

    sub-int/2addr v0, v2

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setY(F)V

    goto :goto_0

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/flyco/dialog/widget/popup/base/BaseBubblePopup;->mTriangleView:Lcom/flyco/dialog/view/TriangleView;

    iget v1, p0, Lcom/flyco/dialog/widget/popup/base/BaseBubblePopup;->mY:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/flyco/dialog/view/TriangleView;->setY(F)V

    .line 102
    iget-object v0, p0, Lcom/flyco/dialog/widget/popup/base/BaseBubblePopup;->mLlContent:Landroid/widget/LinearLayout;

    iget v1, p0, Lcom/flyco/dialog/widget/popup/base/BaseBubblePopup;->mY:I

    iget-object v2, p0, Lcom/flyco/dialog/widget/popup/base/BaseBubblePopup;->mTriangleView:Lcom/flyco/dialog/view/TriangleView;

    invoke-virtual {v2}, Lcom/flyco/dialog/view/TriangleView;->getHeight()I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setY(F)V

    .line 109
    :goto_0
    iget v0, p0, Lcom/flyco/dialog/widget/popup/base/BaseBubblePopup;->mX:I

    iget-object v1, p0, Lcom/flyco/dialog/widget/popup/base/BaseBubblePopup;->mLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    sub-int/2addr v0, v1

    .line 110
    iget-object v1, p0, Lcom/flyco/dialog/widget/popup/base/BaseBubblePopup;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v2, p0, Lcom/flyco/dialog/widget/popup/base/BaseBubblePopup;->mX:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/flyco/dialog/widget/popup/base/BaseBubblePopup;->mLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    iget v2, v2, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v1, v2

    .line 113
    iget-object v2, p0, Lcom/flyco/dialog/widget/popup/base/BaseBubblePopup;->mLlContent:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v2

    .line 114
    div-int/lit8 v3, v2, 0x2

    if-gt v3, v0, :cond_1

    if-gt v3, v1, :cond_1

    .line 115
    iget v0, p0, Lcom/flyco/dialog/widget/popup/base/BaseBubblePopup;->mX:I

    sub-int/2addr v0, v3

    goto :goto_1

    :cond_1
    if-gt v0, v1, :cond_2

    .line 118
    iget-object v0, p0, Lcom/flyco/dialog/widget/popup/base/BaseBubblePopup;->mLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    iget v0, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    goto :goto_1

    .line 120
    :cond_2
    iget-object v0, p0, Lcom/flyco/dialog/widget/popup/base/BaseBubblePopup;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v1, p0, Lcom/flyco/dialog/widget/popup/base/BaseBubblePopup;->mLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, v1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    add-int/2addr v2, v1

    sub-int/2addr v0, v2

    .line 123
    :goto_1
    iget-object v1, p0, Lcom/flyco/dialog/widget/popup/base/BaseBubblePopup;->mLlContent:Landroid/widget/LinearLayout;

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setX(F)V

    return-void
.end method

.method public setUiBeforShow()V
    .locals 4

    .line 79
    iget-object v0, p0, Lcom/flyco/dialog/widget/popup/base/BaseBubblePopup;->mLlContent:Landroid/widget/LinearLayout;

    iget v1, p0, Lcom/flyco/dialog/widget/popup/base/BaseBubblePopup;->mBubbleColor:I

    iget v2, p0, Lcom/flyco/dialog/widget/popup/base/BaseBubblePopup;->mCornerRadius:I

    int-to-float v2, v2

    .line 80
    invoke-static {v1, v2}, Lcom/flyco/dialog/utils/CornerUtils;->cornerDrawable(IF)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 79
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 81
    iget-object v0, p0, Lcom/flyco/dialog/widget/popup/base/BaseBubblePopup;->mLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/flyco/dialog/widget/popup/base/BaseBubblePopup;->mMarginLeft:I

    iget v2, p0, Lcom/flyco/dialog/widget/popup/base/BaseBubblePopup;->mMarginRight:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 82
    iget-object v0, p0, Lcom/flyco/dialog/widget/popup/base/BaseBubblePopup;->mLlContent:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/flyco/dialog/widget/popup/base/BaseBubblePopup;->mLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 84
    iget-object v0, p0, Lcom/flyco/dialog/widget/popup/base/BaseBubblePopup;->mTriangleView:Lcom/flyco/dialog/view/TriangleView;

    iget v1, p0, Lcom/flyco/dialog/widget/popup/base/BaseBubblePopup;->mBubbleColor:I

    invoke-virtual {v0, v1}, Lcom/flyco/dialog/view/TriangleView;->setColor(I)V

    .line 85
    iget-object v0, p0, Lcom/flyco/dialog/widget/popup/base/BaseBubblePopup;->mTriangleView:Lcom/flyco/dialog/view/TriangleView;

    iget v1, p0, Lcom/flyco/dialog/widget/popup/base/BaseBubblePopup;->mGravity:I

    const/16 v2, 0x30

    if-ne v1, v2, :cond_0

    const/16 v2, 0x50

    :cond_0
    invoke-virtual {v0, v2}, Lcom/flyco/dialog/view/TriangleView;->setGravity(I)V

    .line 87
    iget-object v0, p0, Lcom/flyco/dialog/widget/popup/base/BaseBubblePopup;->mTriangleLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/flyco/dialog/widget/popup/base/BaseBubblePopup;->triangleWidth:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 88
    iget-object v0, p0, Lcom/flyco/dialog/widget/popup/base/BaseBubblePopup;->mTriangleLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/flyco/dialog/widget/popup/base/BaseBubblePopup;->triangleHeight:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 89
    iget-object v0, p0, Lcom/flyco/dialog/widget/popup/base/BaseBubblePopup;->mTriangleView:Lcom/flyco/dialog/view/TriangleView;

    iget-object v1, p0, Lcom/flyco/dialog/widget/popup/base/BaseBubblePopup;->mTriangleLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v1}, Lcom/flyco/dialog/view/TriangleView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public triangleHeight(F)Lcom/flyco/dialog/widget/popup/base/BaseBubblePopup;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)TT;"
        }
    .end annotation

    .line 167
    invoke-virtual {p0, p1}, Lcom/flyco/dialog/widget/popup/base/BaseBubblePopup;->dp2px(F)I

    move-result p1

    iput p1, p0, Lcom/flyco/dialog/widget/popup/base/BaseBubblePopup;->triangleHeight:I

    return-object p0
.end method

.method public triangleWidth(F)Lcom/flyco/dialog/widget/popup/base/BaseBubblePopup;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)TT;"
        }
    .end annotation

    .line 162
    invoke-virtual {p0, p1}, Lcom/flyco/dialog/widget/popup/base/BaseBubblePopup;->dp2px(F)I

    move-result p1

    iput p1, p0, Lcom/flyco/dialog/widget/popup/base/BaseBubblePopup;->triangleWidth:I

    return-object p0
.end method
