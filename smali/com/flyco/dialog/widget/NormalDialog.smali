.class public Lcom/flyco/dialog/widget/NormalDialog;
.super Lcom/flyco/dialog/widget/internal/BaseAlertDialog;
.source "NormalDialog.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/flyco/dialog/widget/internal/BaseAlertDialog<",
        "Lcom/flyco/dialog/widget/NormalDialog;",
        ">;"
    }
.end annotation


# static fields
.field public static final STYLE_ONE:I = 0x0

.field public static final STYLE_TWO:I = 0x1


# instance fields
.field private mDividerColor:I

.field private mStyle:I

.field private mTitleLineColor:I

.field private mTitleLineHeight:F

.field private mVLineHorizontal:Landroid/view/View;

.field private mVLineTitle:Landroid/view/View;

.field private mVLineVertical:Landroid/view/View;

.field private mVLineVertical2:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/flyco/dialog/widget/internal/BaseAlertDialog;-><init>(Landroid/content/Context;)V

    const-string p1, "#61AEDC"

    .line 23
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/flyco/dialog/widget/NormalDialog;->mTitleLineColor:I

    const/high16 p1, 0x3f800000    # 1.0f

    .line 25
    iput p1, p0, Lcom/flyco/dialog/widget/NormalDialog;->mTitleLineHeight:F

    const-string p1, "#DCDCDC"

    .line 27
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/flyco/dialog/widget/NormalDialog;->mDividerColor:I

    const/4 p1, 0x0

    .line 31
    iput p1, p0, Lcom/flyco/dialog/widget/NormalDialog;->mStyle:I

    const-string p1, "#61AEDC"

    .line 37
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/flyco/dialog/widget/NormalDialog;->mTitleTextColor:I

    const/high16 p1, 0x41b00000    # 22.0f

    .line 38
    iput p1, p0, Lcom/flyco/dialog/widget/NormalDialog;->mTitleTextSize:F

    const-string p1, "#383838"

    .line 39
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/flyco/dialog/widget/NormalDialog;->mContentTextColor:I

    const/high16 p1, 0x41880000    # 17.0f

    .line 40
    iput p1, p0, Lcom/flyco/dialog/widget/NormalDialog;->mContentTextSize:F

    const-string p1, "#8a000000"

    .line 41
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/flyco/dialog/widget/NormalDialog;->mLeftBtnTextColor:I

    const-string p1, "#8a000000"

    .line 42
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/flyco/dialog/widget/NormalDialog;->mRightBtnTextColor:I

    const-string p1, "#8a000000"

    .line 43
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/flyco/dialog/widget/NormalDialog;->mMiddleBtnTextColor:I

    return-void
.end method


# virtual methods
.method public dividerColor(I)Lcom/flyco/dialog/widget/NormalDialog;
    .locals 0

    .line 167
    iput p1, p0, Lcom/flyco/dialog/widget/NormalDialog;->mDividerColor:I

    return-object p0
.end method

.method public onCreateView()Landroid/view/View;
    .locals 8

    .line 50
    iget-object v0, p0, Lcom/flyco/dialog/widget/NormalDialog;->mTvTitle:Landroid/widget/TextView;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 52
    iget-object v0, p0, Lcom/flyco/dialog/widget/NormalDialog;->mLlContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/flyco/dialog/widget/NormalDialog;->mTvTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 55
    new-instance v0, Landroid/view/View;

    iget-object v1, p0, Lcom/flyco/dialog/widget/NormalDialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/flyco/dialog/widget/NormalDialog;->mVLineTitle:Landroid/view/View;

    .line 56
    iget-object v0, p0, Lcom/flyco/dialog/widget/NormalDialog;->mLlContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/flyco/dialog/widget/NormalDialog;->mVLineTitle:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 59
    iget-object v0, p0, Lcom/flyco/dialog/widget/NormalDialog;->mTvContent:Landroid/widget/TextView;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 61
    iget-object v0, p0, Lcom/flyco/dialog/widget/NormalDialog;->mLlContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/flyco/dialog/widget/NormalDialog;->mTvContent:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 63
    new-instance v0, Landroid/view/View;

    iget-object v1, p0, Lcom/flyco/dialog/widget/NormalDialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/flyco/dialog/widget/NormalDialog;->mVLineHorizontal:Landroid/view/View;

    .line 64
    iget-object v0, p0, Lcom/flyco/dialog/widget/NormalDialog;->mVLineHorizontal:Landroid/view/View;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, 0x1

    invoke-direct {v1, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 65
    iget-object v0, p0, Lcom/flyco/dialog/widget/NormalDialog;->mLlContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/flyco/dialog/widget/NormalDialog;->mVLineHorizontal:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 68
    iget-object v0, p0, Lcom/flyco/dialog/widget/NormalDialog;->mTvBtnLeft:Landroid/widget/TextView;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v4, 0x42340000    # 45.0f

    invoke-virtual {p0, v4}, Lcom/flyco/dialog/widget/NormalDialog;->dp2px(F)I

    move-result v5

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    invoke-direct {v1, v7, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 69
    iget-object v0, p0, Lcom/flyco/dialog/widget/NormalDialog;->mLlBtns:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/flyco/dialog/widget/NormalDialog;->mTvBtnLeft:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 71
    new-instance v0, Landroid/view/View;

    iget-object v1, p0, Lcom/flyco/dialog/widget/NormalDialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/flyco/dialog/widget/NormalDialog;->mVLineVertical:Landroid/view/View;

    .line 72
    iget-object v0, p0, Lcom/flyco/dialog/widget/NormalDialog;->mVLineVertical:Landroid/view/View;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 73
    iget-object v0, p0, Lcom/flyco/dialog/widget/NormalDialog;->mLlBtns:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/flyco/dialog/widget/NormalDialog;->mVLineVertical:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 75
    iget-object v0, p0, Lcom/flyco/dialog/widget/NormalDialog;->mTvBtnMiddle:Landroid/widget/TextView;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0, v4}, Lcom/flyco/dialog/widget/NormalDialog;->dp2px(F)I

    move-result v5

    invoke-direct {v1, v7, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 76
    iget-object v0, p0, Lcom/flyco/dialog/widget/NormalDialog;->mLlBtns:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/flyco/dialog/widget/NormalDialog;->mTvBtnMiddle:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 78
    new-instance v0, Landroid/view/View;

    iget-object v1, p0, Lcom/flyco/dialog/widget/NormalDialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/flyco/dialog/widget/NormalDialog;->mVLineVertical2:Landroid/view/View;

    .line 79
    iget-object v0, p0, Lcom/flyco/dialog/widget/NormalDialog;->mVLineVertical2:Landroid/view/View;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 80
    iget-object v0, p0, Lcom/flyco/dialog/widget/NormalDialog;->mLlBtns:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/flyco/dialog/widget/NormalDialog;->mVLineVertical2:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 82
    iget-object v0, p0, Lcom/flyco/dialog/widget/NormalDialog;->mTvBtnRight:Landroid/widget/TextView;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0, v4}, Lcom/flyco/dialog/widget/NormalDialog;->dp2px(F)I

    move-result v2

    invoke-direct {v1, v7, v2, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 83
    iget-object v0, p0, Lcom/flyco/dialog/widget/NormalDialog;->mLlBtns:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/flyco/dialog/widget/NormalDialog;->mTvBtnRight:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 85
    iget-object v0, p0, Lcom/flyco/dialog/widget/NormalDialog;->mLlContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/flyco/dialog/widget/NormalDialog;->mLlBtns:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 87
    iget-object v0, p0, Lcom/flyco/dialog/widget/NormalDialog;->mLlContainer:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public setUiBeforShow()V
    .locals 11

    .line 92
    invoke-super {p0}, Lcom/flyco/dialog/widget/internal/BaseAlertDialog;->setUiBeforShow()V

    .line 95
    iget v0, p0, Lcom/flyco/dialog/widget/NormalDialog;->mStyle:I

    const/16 v1, 0x11

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/high16 v5, 0x41700000    # 15.0f

    const/16 v6, 0x8

    if-nez v0, :cond_1

    .line 96
    iget-object v0, p0, Lcom/flyco/dialog/widget/NormalDialog;->mTvTitle:Landroid/widget/TextView;

    const/high16 v7, 0x42400000    # 48.0f

    invoke-virtual {p0, v7}, Lcom/flyco/dialog/widget/NormalDialog;->dp2px(F)I

    move-result v7

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setMinHeight(I)V

    .line 97
    iget-object v0, p0, Lcom/flyco/dialog/widget/NormalDialog;->mTvTitle:Landroid/widget/TextView;

    const/16 v7, 0x10

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setGravity(I)V

    .line 98
    iget-object v0, p0, Lcom/flyco/dialog/widget/NormalDialog;->mTvTitle:Landroid/widget/TextView;

    invoke-virtual {p0, v5}, Lcom/flyco/dialog/widget/NormalDialog;->dp2px(F)I

    move-result v7

    const/high16 v8, 0x40a00000    # 5.0f

    invoke-virtual {p0, v8}, Lcom/flyco/dialog/widget/NormalDialog;->dp2px(F)I

    move-result v9

    invoke-virtual {p0, v4}, Lcom/flyco/dialog/widget/NormalDialog;->dp2px(F)I

    move-result v10

    invoke-virtual {p0, v8}, Lcom/flyco/dialog/widget/NormalDialog;->dp2px(F)I

    move-result v8

    invoke-virtual {v0, v7, v9, v10, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 99
    iget-object v0, p0, Lcom/flyco/dialog/widget/NormalDialog;->mTvTitle:Landroid/widget/TextView;

    iget-boolean v7, p0, Lcom/flyco/dialog/widget/NormalDialog;->mIsTitleShow:Z

    if-eqz v7, :cond_0

    const/4 v7, 0x0

    goto :goto_0

    :cond_0
    const/16 v7, 0x8

    :goto_0
    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 100
    :cond_1
    iget v0, p0, Lcom/flyco/dialog/widget/NormalDialog;->mStyle:I

    if-ne v0, v3, :cond_2

    .line 101
    iget-object v0, p0, Lcom/flyco/dialog/widget/NormalDialog;->mTvTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 102
    iget-object v0, p0, Lcom/flyco/dialog/widget/NormalDialog;->mTvTitle:Landroid/widget/TextView;

    invoke-virtual {p0, v4}, Lcom/flyco/dialog/widget/NormalDialog;->dp2px(F)I

    move-result v7

    invoke-virtual {p0, v5}, Lcom/flyco/dialog/widget/NormalDialog;->dp2px(F)I

    move-result v8

    invoke-virtual {p0, v4}, Lcom/flyco/dialog/widget/NormalDialog;->dp2px(F)I

    move-result v9

    invoke-virtual {p0, v4}, Lcom/flyco/dialog/widget/NormalDialog;->dp2px(F)I

    move-result v10

    invoke-virtual {v0, v7, v8, v9, v10}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 106
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/flyco/dialog/widget/NormalDialog;->mVLineTitle:Landroid/view/View;

    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    iget v8, p0, Lcom/flyco/dialog/widget/NormalDialog;->mTitleLineHeight:F

    .line 107
    invoke-virtual {p0, v8}, Lcom/flyco/dialog/widget/NormalDialog;->dp2px(F)I

    move-result v8

    const/4 v9, -0x1

    invoke-direct {v7, v9, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 106
    invoke-virtual {v0, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 108
    iget-object v0, p0, Lcom/flyco/dialog/widget/NormalDialog;->mVLineTitle:Landroid/view/View;

    iget v7, p0, Lcom/flyco/dialog/widget/NormalDialog;->mTitleLineColor:I

    invoke-virtual {v0, v7}, Landroid/view/View;->setBackgroundColor(I)V

    .line 109
    iget-object v0, p0, Lcom/flyco/dialog/widget/NormalDialog;->mVLineTitle:Landroid/view/View;

    iget-boolean v7, p0, Lcom/flyco/dialog/widget/NormalDialog;->mIsTitleShow:Z

    if-eqz v7, :cond_3

    iget v7, p0, Lcom/flyco/dialog/widget/NormalDialog;->mStyle:I

    if-nez v7, :cond_3

    const/4 v7, 0x0

    goto :goto_2

    :cond_3
    const/16 v7, 0x8

    :goto_2
    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 112
    iget v0, p0, Lcom/flyco/dialog/widget/NormalDialog;->mStyle:I

    if-nez v0, :cond_4

    .line 113
    iget-object v0, p0, Lcom/flyco/dialog/widget/NormalDialog;->mTvContent:Landroid/widget/TextView;

    invoke-virtual {p0, v5}, Lcom/flyco/dialog/widget/NormalDialog;->dp2px(F)I

    move-result v1

    const/high16 v7, 0x41200000    # 10.0f

    invoke-virtual {p0, v7}, Lcom/flyco/dialog/widget/NormalDialog;->dp2px(F)I

    move-result v8

    invoke-virtual {p0, v5}, Lcom/flyco/dialog/widget/NormalDialog;->dp2px(F)I

    move-result v5

    invoke-virtual {p0, v7}, Lcom/flyco/dialog/widget/NormalDialog;->dp2px(F)I

    move-result v7

    invoke-virtual {v0, v1, v8, v5, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 114
    iget-object v0, p0, Lcom/flyco/dialog/widget/NormalDialog;->mTvContent:Landroid/widget/TextView;

    const/high16 v1, 0x42880000    # 68.0f

    invoke-virtual {p0, v1}, Lcom/flyco/dialog/widget/NormalDialog;->dp2px(F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMinHeight(I)V

    .line 115
    iget-object v0, p0, Lcom/flyco/dialog/widget/NormalDialog;->mTvContent:Landroid/widget/TextView;

    iget v1, p0, Lcom/flyco/dialog/widget/NormalDialog;->mContentGravity:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_3

    .line 116
    :cond_4
    iget v0, p0, Lcom/flyco/dialog/widget/NormalDialog;->mStyle:I

    if-ne v0, v3, :cond_5

    .line 117
    iget-object v0, p0, Lcom/flyco/dialog/widget/NormalDialog;->mTvContent:Landroid/widget/TextView;

    invoke-virtual {p0, v5}, Lcom/flyco/dialog/widget/NormalDialog;->dp2px(F)I

    move-result v7

    const/high16 v8, 0x40e00000    # 7.0f

    invoke-virtual {p0, v8}, Lcom/flyco/dialog/widget/NormalDialog;->dp2px(F)I

    move-result v8

    invoke-virtual {p0, v5}, Lcom/flyco/dialog/widget/NormalDialog;->dp2px(F)I

    move-result v5

    const/high16 v10, 0x41a00000    # 20.0f

    invoke-virtual {p0, v10}, Lcom/flyco/dialog/widget/NormalDialog;->dp2px(F)I

    move-result v10

    invoke-virtual {v0, v7, v8, v5, v10}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 118
    iget-object v0, p0, Lcom/flyco/dialog/widget/NormalDialog;->mTvContent:Landroid/widget/TextView;

    const/high16 v5, 0x42600000    # 56.0f

    invoke-virtual {p0, v5}, Lcom/flyco/dialog/widget/NormalDialog;->dp2px(F)I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setMinHeight(I)V

    .line 119
    iget-object v0, p0, Lcom/flyco/dialog/widget/NormalDialog;->mTvContent:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 123
    :cond_5
    :goto_3
    iget-object v0, p0, Lcom/flyco/dialog/widget/NormalDialog;->mVLineHorizontal:Landroid/view/View;

    iget v1, p0, Lcom/flyco/dialog/widget/NormalDialog;->mDividerColor:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 124
    iget-object v0, p0, Lcom/flyco/dialog/widget/NormalDialog;->mVLineVertical:Landroid/view/View;

    iget v1, p0, Lcom/flyco/dialog/widget/NormalDialog;->mDividerColor:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 125
    iget-object v0, p0, Lcom/flyco/dialog/widget/NormalDialog;->mVLineVertical2:Landroid/view/View;

    iget v1, p0, Lcom/flyco/dialog/widget/NormalDialog;->mDividerColor:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 127
    iget v0, p0, Lcom/flyco/dialog/widget/NormalDialog;->mBtnNum:I

    if-ne v0, v3, :cond_6

    .line 128
    iget-object v0, p0, Lcom/flyco/dialog/widget/NormalDialog;->mTvBtnLeft:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 129
    iget-object v0, p0, Lcom/flyco/dialog/widget/NormalDialog;->mTvBtnRight:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 130
    iget-object v0, p0, Lcom/flyco/dialog/widget/NormalDialog;->mVLineVertical:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 131
    iget-object v0, p0, Lcom/flyco/dialog/widget/NormalDialog;->mVLineVertical2:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    .line 132
    :cond_6
    iget v0, p0, Lcom/flyco/dialog/widget/NormalDialog;->mBtnNum:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    .line 133
    iget-object v0, p0, Lcom/flyco/dialog/widget/NormalDialog;->mTvBtnMiddle:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 134
    iget-object v0, p0, Lcom/flyco/dialog/widget/NormalDialog;->mVLineVertical:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 138
    :cond_7
    :goto_4
    iget v0, p0, Lcom/flyco/dialog/widget/NormalDialog;->mCornerRadius:F

    invoke-virtual {p0, v0}, Lcom/flyco/dialog/widget/NormalDialog;->dp2px(F)I

    move-result v0

    int-to-float v0, v0

    .line 139
    iget-object v1, p0, Lcom/flyco/dialog/widget/NormalDialog;->mLlContainer:Landroid/widget/LinearLayout;

    iget v5, p0, Lcom/flyco/dialog/widget/NormalDialog;->mBgColor:I

    invoke-static {v5, v0}, Lcom/flyco/dialog/utils/CornerUtils;->cornerDrawable(IF)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 140
    iget-object v1, p0, Lcom/flyco/dialog/widget/NormalDialog;->mTvBtnLeft:Landroid/widget/TextView;

    iget v5, p0, Lcom/flyco/dialog/widget/NormalDialog;->mBgColor:I

    iget v6, p0, Lcom/flyco/dialog/widget/NormalDialog;->mBtnPressColor:I

    invoke-static {v0, v5, v6, v2}, Lcom/flyco/dialog/utils/CornerUtils;->btnSelector(FIII)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 141
    iget-object v1, p0, Lcom/flyco/dialog/widget/NormalDialog;->mTvBtnRight:Landroid/widget/TextView;

    iget v2, p0, Lcom/flyco/dialog/widget/NormalDialog;->mBgColor:I

    iget v5, p0, Lcom/flyco/dialog/widget/NormalDialog;->mBtnPressColor:I

    invoke-static {v0, v2, v5, v3}, Lcom/flyco/dialog/utils/CornerUtils;->btnSelector(FIII)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 142
    iget-object v1, p0, Lcom/flyco/dialog/widget/NormalDialog;->mTvBtnMiddle:Landroid/widget/TextView;

    iget v2, p0, Lcom/flyco/dialog/widget/NormalDialog;->mBtnNum:I

    if-ne v2, v3, :cond_8

    goto :goto_5

    :cond_8
    const/4 v0, 0x0

    :goto_5
    iget v2, p0, Lcom/flyco/dialog/widget/NormalDialog;->mBgColor:I

    iget v3, p0, Lcom/flyco/dialog/widget/NormalDialog;->mBtnPressColor:I

    invoke-static {v0, v2, v3, v9}, Lcom/flyco/dialog/utils/CornerUtils;->btnSelector(FIII)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public style(I)Lcom/flyco/dialog/widget/NormalDialog;
    .locals 0

    .line 149
    iput p1, p0, Lcom/flyco/dialog/widget/NormalDialog;->mStyle:I

    return-object p0
.end method

.method public titleLineColor(I)Lcom/flyco/dialog/widget/NormalDialog;
    .locals 0

    .line 155
    iput p1, p0, Lcom/flyco/dialog/widget/NormalDialog;->mTitleLineColor:I

    return-object p0
.end method

.method public titleLineHeight(F)Lcom/flyco/dialog/widget/NormalDialog;
    .locals 0

    .line 161
    iput p1, p0, Lcom/flyco/dialog/widget/NormalDialog;->mTitleLineHeight:F

    return-object p0
.end method
