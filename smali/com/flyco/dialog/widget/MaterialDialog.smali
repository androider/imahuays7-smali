.class public Lcom/flyco/dialog/widget/MaterialDialog;
.super Lcom/flyco/dialog/widget/internal/BaseAlertDialog;
.source "MaterialDialog.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/flyco/dialog/widget/internal/BaseAlertDialog<",
        "Lcom/flyco/dialog/widget/MaterialDialog;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Lcom/flyco/dialog/widget/internal/BaseAlertDialog;-><init>(Landroid/content/Context;)V

    const-string p1, "#DE000000"

    .line 21
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/flyco/dialog/widget/MaterialDialog;->mTitleTextColor:I

    const/high16 p1, 0x41b00000    # 22.0f

    .line 22
    iput p1, p0, Lcom/flyco/dialog/widget/MaterialDialog;->mTitleTextSize:F

    const-string p1, "#8a000000"

    .line 23
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/flyco/dialog/widget/MaterialDialog;->mContentTextColor:I

    const/high16 p1, 0x41800000    # 16.0f

    .line 24
    iput p1, p0, Lcom/flyco/dialog/widget/MaterialDialog;->mContentTextSize:F

    const-string p1, "#383838"

    .line 25
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/flyco/dialog/widget/MaterialDialog;->mLeftBtnTextColor:I

    const-string p1, "#468ED0"

    .line 26
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/flyco/dialog/widget/MaterialDialog;->mRightBtnTextColor:I

    const-string p1, "#00796B"

    .line 27
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/flyco/dialog/widget/MaterialDialog;->mMiddleBtnTextColor:I

    return-void
.end method


# virtual methods
.method public onCreateView()Landroid/view/View;
    .locals 9

    .line 35
    iget-object v0, p0, Lcom/flyco/dialog/widget/MaterialDialog;->mTvTitle:Landroid/widget/TextView;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 36
    iget-object v0, p0, Lcom/flyco/dialog/widget/MaterialDialog;->mTvTitle:Landroid/widget/TextView;

    const/high16 v1, 0x41a00000    # 20.0f

    invoke-virtual {p0, v1}, Lcom/flyco/dialog/widget/MaterialDialog;->dp2px(F)I

    move-result v2

    invoke-virtual {p0, v1}, Lcom/flyco/dialog/widget/MaterialDialog;->dp2px(F)I

    move-result v3

    invoke-virtual {p0, v1}, Lcom/flyco/dialog/widget/MaterialDialog;->dp2px(F)I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/flyco/dialog/widget/MaterialDialog;->dp2px(F)I

    move-result v6

    invoke-virtual {v0, v2, v3, v4, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 37
    iget-object v0, p0, Lcom/flyco/dialog/widget/MaterialDialog;->mTvTitle:Landroid/widget/TextView;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    const/4 v4, -0x1

    invoke-direct {v2, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 39
    iget-object v0, p0, Lcom/flyco/dialog/widget/MaterialDialog;->mLlContainer:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/flyco/dialog/widget/MaterialDialog;->mTvTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 42
    iget-object v0, p0, Lcom/flyco/dialog/widget/MaterialDialog;->mTvContent:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Lcom/flyco/dialog/widget/MaterialDialog;->dp2px(F)I

    move-result v2

    invoke-virtual {p0, v1}, Lcom/flyco/dialog/widget/MaterialDialog;->dp2px(F)I

    move-result v6

    invoke-virtual {p0, v1}, Lcom/flyco/dialog/widget/MaterialDialog;->dp2px(F)I

    move-result v7

    invoke-virtual {p0, v1}, Lcom/flyco/dialog/widget/MaterialDialog;->dp2px(F)I

    move-result v8

    invoke-virtual {v0, v2, v6, v7, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 43
    iget-object v0, p0, Lcom/flyco/dialog/widget/MaterialDialog;->mTvContent:Landroid/widget/TextView;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 45
    iget-object v0, p0, Lcom/flyco/dialog/widget/MaterialDialog;->mLlContainer:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/flyco/dialog/widget/MaterialDialog;->mTvContent:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 48
    iget-object v0, p0, Lcom/flyco/dialog/widget/MaterialDialog;->mLlBtns:Landroid/widget/LinearLayout;

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 49
    iget-object v0, p0, Lcom/flyco/dialog/widget/MaterialDialog;->mLlBtns:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/flyco/dialog/widget/MaterialDialog;->mTvBtnLeft:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 50
    iget-object v0, p0, Lcom/flyco/dialog/widget/MaterialDialog;->mLlBtns:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/flyco/dialog/widget/MaterialDialog;->mTvBtnMiddle:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 51
    iget-object v0, p0, Lcom/flyco/dialog/widget/MaterialDialog;->mLlBtns:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/flyco/dialog/widget/MaterialDialog;->mTvBtnRight:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 53
    iget-object v0, p0, Lcom/flyco/dialog/widget/MaterialDialog;->mTvBtnLeft:Landroid/widget/TextView;

    const/high16 v2, 0x41700000    # 15.0f

    invoke-virtual {p0, v2}, Lcom/flyco/dialog/widget/MaterialDialog;->dp2px(F)I

    move-result v3

    const/high16 v4, 0x41000000    # 8.0f

    invoke-virtual {p0, v4}, Lcom/flyco/dialog/widget/MaterialDialog;->dp2px(F)I

    move-result v6

    invoke-virtual {p0, v2}, Lcom/flyco/dialog/widget/MaterialDialog;->dp2px(F)I

    move-result v7

    invoke-virtual {p0, v4}, Lcom/flyco/dialog/widget/MaterialDialog;->dp2px(F)I

    move-result v8

    invoke-virtual {v0, v3, v6, v7, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 54
    iget-object v0, p0, Lcom/flyco/dialog/widget/MaterialDialog;->mTvBtnRight:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Lcom/flyco/dialog/widget/MaterialDialog;->dp2px(F)I

    move-result v3

    invoke-virtual {p0, v4}, Lcom/flyco/dialog/widget/MaterialDialog;->dp2px(F)I

    move-result v6

    invoke-virtual {p0, v2}, Lcom/flyco/dialog/widget/MaterialDialog;->dp2px(F)I

    move-result v7

    invoke-virtual {p0, v4}, Lcom/flyco/dialog/widget/MaterialDialog;->dp2px(F)I

    move-result v8

    invoke-virtual {v0, v3, v6, v7, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 55
    iget-object v0, p0, Lcom/flyco/dialog/widget/MaterialDialog;->mTvBtnMiddle:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Lcom/flyco/dialog/widget/MaterialDialog;->dp2px(F)I

    move-result v3

    invoke-virtual {p0, v4}, Lcom/flyco/dialog/widget/MaterialDialog;->dp2px(F)I

    move-result v6

    invoke-virtual {p0, v2}, Lcom/flyco/dialog/widget/MaterialDialog;->dp2px(F)I

    move-result v2

    invoke-virtual {p0, v4}, Lcom/flyco/dialog/widget/MaterialDialog;->dp2px(F)I

    move-result v4

    invoke-virtual {v0, v3, v6, v2, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 56
    iget-object v0, p0, Lcom/flyco/dialog/widget/MaterialDialog;->mLlBtns:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v1}, Lcom/flyco/dialog/widget/MaterialDialog;->dp2px(F)I

    move-result v1

    invoke-virtual {p0, v5}, Lcom/flyco/dialog/widget/MaterialDialog;->dp2px(F)I

    move-result v2

    const/high16 v3, 0x41200000    # 10.0f

    invoke-virtual {p0, v3}, Lcom/flyco/dialog/widget/MaterialDialog;->dp2px(F)I

    move-result v4

    invoke-virtual {p0, v3}, Lcom/flyco/dialog/widget/MaterialDialog;->dp2px(F)I

    move-result v3

    invoke-virtual {v0, v1, v2, v4, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 58
    iget-object v0, p0, Lcom/flyco/dialog/widget/MaterialDialog;->mLlContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/flyco/dialog/widget/MaterialDialog;->mLlBtns:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 60
    iget-object v0, p0, Lcom/flyco/dialog/widget/MaterialDialog;->mLlContainer:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public setUiBeforShow()V
    .locals 5

    .line 65
    invoke-super {p0}, Lcom/flyco/dialog/widget/internal/BaseAlertDialog;->setUiBeforShow()V

    .line 67
    iget v0, p0, Lcom/flyco/dialog/widget/MaterialDialog;->mCornerRadius:F

    invoke-virtual {p0, v0}, Lcom/flyco/dialog/widget/MaterialDialog;->dp2px(F)I

    move-result v0

    int-to-float v0, v0

    .line 68
    iget-object v1, p0, Lcom/flyco/dialog/widget/MaterialDialog;->mLlContainer:Landroid/widget/LinearLayout;

    iget v2, p0, Lcom/flyco/dialog/widget/MaterialDialog;->mBgColor:I

    invoke-static {v2, v0}, Lcom/flyco/dialog/utils/CornerUtils;->cornerDrawable(IF)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 69
    iget-object v1, p0, Lcom/flyco/dialog/widget/MaterialDialog;->mTvBtnLeft:Landroid/widget/TextView;

    iget v2, p0, Lcom/flyco/dialog/widget/MaterialDialog;->mBgColor:I

    iget v3, p0, Lcom/flyco/dialog/widget/MaterialDialog;->mBtnPressColor:I

    const/4 v4, -0x2

    invoke-static {v0, v2, v3, v4}, Lcom/flyco/dialog/utils/CornerUtils;->btnSelector(FIII)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 70
    iget-object v1, p0, Lcom/flyco/dialog/widget/MaterialDialog;->mTvBtnRight:Landroid/widget/TextView;

    iget v2, p0, Lcom/flyco/dialog/widget/MaterialDialog;->mBgColor:I

    iget v3, p0, Lcom/flyco/dialog/widget/MaterialDialog;->mBtnPressColor:I

    invoke-static {v0, v2, v3, v4}, Lcom/flyco/dialog/utils/CornerUtils;->btnSelector(FIII)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 71
    iget-object v1, p0, Lcom/flyco/dialog/widget/MaterialDialog;->mTvBtnMiddle:Landroid/widget/TextView;

    iget v2, p0, Lcom/flyco/dialog/widget/MaterialDialog;->mBgColor:I

    iget v3, p0, Lcom/flyco/dialog/widget/MaterialDialog;->mBtnPressColor:I

    invoke-static {v0, v2, v3, v4}, Lcom/flyco/dialog/utils/CornerUtils;->btnSelector(FIII)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
