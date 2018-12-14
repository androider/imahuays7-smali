.class public abstract Lcom/flyco/dialog/widget/internal/BaseAlertDialog;
.super Lcom/flyco/dialog/widget/base/BaseDialog;
.source "BaseAlertDialog.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/flyco/dialog/widget/internal/BaseAlertDialog<",
        "TT;>;>",
        "Lcom/flyco/dialog/widget/base/BaseDialog<",
        "TT;>;"
    }
.end annotation


# instance fields
.field protected mBgColor:I

.field protected mBtnLeftText:Ljava/lang/String;

.field protected mBtnMiddleText:Ljava/lang/String;

.field protected mBtnNum:I

.field protected mBtnPressColor:I

.field protected mBtnRightText:Ljava/lang/String;

.field protected mContent:Ljava/lang/String;

.field protected mContentGravity:I

.field protected mContentTextColor:I

.field protected mContentTextSize:F

.field protected mCornerRadius:F

.field protected mIsTitleShow:Z

.field protected mLeftBtnTextColor:I

.field protected mLeftBtnTextSize:F

.field protected mLlBtns:Landroid/widget/LinearLayout;

.field protected mLlContainer:Landroid/widget/LinearLayout;

.field protected mMiddleBtnTextColor:I

.field protected mMiddleBtnTextSize:F

.field protected mOnBtnLeftClickL:Lcom/flyco/dialog/listener/OnBtnClickL;

.field protected mOnBtnMiddleClickL:Lcom/flyco/dialog/listener/OnBtnClickL;

.field protected mOnBtnRightClickL:Lcom/flyco/dialog/listener/OnBtnClickL;

.field protected mRightBtnTextColor:I

.field protected mRightBtnTextSize:F

.field protected mTitle:Ljava/lang/String;

.field protected mTitleTextColor:I

.field protected mTitleTextSize:F

.field protected mTvBtnLeft:Landroid/widget/TextView;

.field protected mTvBtnMiddle:Landroid/widget/TextView;

.field protected mTvBtnRight:Landroid/widget/TextView;

.field protected mTvContent:Landroid/widget/TextView;

.field protected mTvTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 85
    invoke-direct {p0, p1}, Lcom/flyco/dialog/widget/base/BaseDialog;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 28
    iput-boolean v0, p0, Lcom/flyco/dialog/widget/internal/BaseAlertDialog;->mIsTitleShow:Z

    const/16 v1, 0x10

    .line 36
    iput v1, p0, Lcom/flyco/dialog/widget/internal/BaseAlertDialog;->mContentGravity:I

    const/4 v1, 0x2

    .line 44
    iput v1, p0, Lcom/flyco/dialog/widget/internal/BaseAlertDialog;->mBtnNum:I

    const-string v1, "\u53d6\u6d88"

    .line 52
    iput-object v1, p0, Lcom/flyco/dialog/widget/internal/BaseAlertDialog;->mBtnLeftText:Ljava/lang/String;

    const-string v1, "\u786e\u5b9a"

    .line 53
    iput-object v1, p0, Lcom/flyco/dialog/widget/internal/BaseAlertDialog;->mBtnRightText:Ljava/lang/String;

    const-string v1, "\u7ee7\u7eed"

    .line 54
    iput-object v1, p0, Lcom/flyco/dialog/widget/internal/BaseAlertDialog;->mBtnMiddleText:Ljava/lang/String;

    const/high16 v1, 0x41700000    # 15.0f

    .line 60
    iput v1, p0, Lcom/flyco/dialog/widget/internal/BaseAlertDialog;->mLeftBtnTextSize:F

    .line 61
    iput v1, p0, Lcom/flyco/dialog/widget/internal/BaseAlertDialog;->mRightBtnTextSize:F

    .line 62
    iput v1, p0, Lcom/flyco/dialog/widget/internal/BaseAlertDialog;->mMiddleBtnTextSize:F

    const-string v1, "#E3E3E3"

    .line 64
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/flyco/dialog/widget/internal/BaseAlertDialog;->mBtnPressColor:I

    const/high16 v1, 0x40400000    # 3.0f

    .line 73
    iput v1, p0, Lcom/flyco/dialog/widget/internal/BaseAlertDialog;->mCornerRadius:F

    const-string v1, "#ffffff"

    .line 75
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/flyco/dialog/widget/internal/BaseAlertDialog;->mBgColor:I

    const v1, 0x3f6147ae    # 0.88f

    .line 86
    invoke-virtual {p0, v1}, Lcom/flyco/dialog/widget/internal/BaseAlertDialog;->widthScale(F)Lcom/flyco/dialog/widget/base/BaseDialog;

    .line 88
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/flyco/dialog/widget/internal/BaseAlertDialog;->mLlContainer:Landroid/widget/LinearLayout;

    .line 89
    iget-object v1, p0, Lcom/flyco/dialog/widget/internal/BaseAlertDialog;->mLlContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 92
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/flyco/dialog/widget/internal/BaseAlertDialog;->mTvTitle:Landroid/widget/TextView;

    .line 95
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/flyco/dialog/widget/internal/BaseAlertDialog;->mTvContent:Landroid/widget/TextView;

    .line 98
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/flyco/dialog/widget/internal/BaseAlertDialog;->mLlBtns:Landroid/widget/LinearLayout;

    .line 99
    iget-object v0, p0, Lcom/flyco/dialog/widget/internal/BaseAlertDialog;->mLlBtns:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 101
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/flyco/dialog/widget/internal/BaseAlertDialog;->mTvBtnLeft:Landroid/widget/TextView;

    .line 102
    iget-object v0, p0, Lcom/flyco/dialog/widget/internal/BaseAlertDialog;->mTvBtnLeft:Landroid/widget/TextView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 104
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/flyco/dialog/widget/internal/BaseAlertDialog;->mTvBtnMiddle:Landroid/widget/TextView;

    .line 105
    iget-object v0, p0, Lcom/flyco/dialog/widget/internal/BaseAlertDialog;->mTvBtnMiddle:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 107
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/flyco/dialog/widget/internal/BaseAlertDialog;->mTvBtnRight:Landroid/widget/TextView;

    .line 108
    iget-object p1, p0, Lcom/flyco/dialog/widget/internal/BaseAlertDialog;->mTvBtnRight:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setGravity(I)V

    return-void
.end method


# virtual methods
.method public bgColor(I)Lcom/flyco/dialog/widget/internal/BaseAlertDialog;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 333
    iput p1, p0, Lcom/flyco/dialog/widget/internal/BaseAlertDialog;->mBgColor:I

    return-object p0
.end method

.method public btnNum(I)Lcom/flyco/dialog/widget/internal/BaseAlertDialog;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    const/4 v0, 0x1

    if-lt p1, v0, :cond_1

    const/4 v0, 0x3

    if-le p1, v0, :cond_0

    goto :goto_0

    .line 239
    :cond_0
    iput p1, p0, Lcom/flyco/dialog/widget/internal/BaseAlertDialog;->mBtnNum:I

    return-object p0

    .line 237
    :cond_1
    :goto_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "btnNum is [1,3]!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public btnPressColor(I)Lcom/flyco/dialog/widget/internal/BaseAlertDialog;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 321
    iput p1, p0, Lcom/flyco/dialog/widget/internal/BaseAlertDialog;->mBtnPressColor:I

    return-object p0
.end method

.method public varargs btnText([Ljava/lang/String;)Lcom/flyco/dialog/widget/internal/BaseAlertDialog;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 251
    array-length v0, p1

    const/4 v1, 0x1

    if-lt v0, v1, :cond_4

    array-length v0, p1

    const/4 v2, 0x3

    if-le v0, v2, :cond_0

    goto :goto_1

    .line 255
    :cond_0
    array-length v0, p1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_1

    .line 256
    aget-object p1, p1, v3

    iput-object p1, p0, Lcom/flyco/dialog/widget/internal/BaseAlertDialog;->mBtnMiddleText:Ljava/lang/String;

    goto :goto_0

    .line 257
    :cond_1
    array-length v0, p1

    const/4 v4, 0x2

    if-ne v0, v4, :cond_2

    .line 258
    aget-object v0, p1, v3

    iput-object v0, p0, Lcom/flyco/dialog/widget/internal/BaseAlertDialog;->mBtnLeftText:Ljava/lang/String;

    .line 259
    aget-object p1, p1, v1

    iput-object p1, p0, Lcom/flyco/dialog/widget/internal/BaseAlertDialog;->mBtnRightText:Ljava/lang/String;

    goto :goto_0

    .line 260
    :cond_2
    array-length v0, p1

    if-ne v0, v2, :cond_3

    .line 261
    aget-object v0, p1, v3

    iput-object v0, p0, Lcom/flyco/dialog/widget/internal/BaseAlertDialog;->mBtnLeftText:Ljava/lang/String;

    .line 262
    aget-object v0, p1, v1

    iput-object v0, p0, Lcom/flyco/dialog/widget/internal/BaseAlertDialog;->mBtnRightText:Ljava/lang/String;

    .line 263
    aget-object p1, p1, v4

    iput-object p1, p0, Lcom/flyco/dialog/widget/internal/BaseAlertDialog;->mBtnMiddleText:Ljava/lang/String;

    :cond_3
    :goto_0
    return-object p0

    .line 252
    :cond_4
    :goto_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, " range of param btnTexts length is [1,3]!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public varargs btnTextColor([I)Lcom/flyco/dialog/widget/internal/BaseAlertDialog;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)TT;"
        }
    .end annotation

    .line 276
    array-length v0, p1

    const/4 v1, 0x1

    if-lt v0, v1, :cond_4

    array-length v0, p1

    const/4 v2, 0x3

    if-le v0, v2, :cond_0

    goto :goto_1

    .line 280
    :cond_0
    array-length v0, p1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_1

    .line 281
    aget p1, p1, v3

    iput p1, p0, Lcom/flyco/dialog/widget/internal/BaseAlertDialog;->mMiddleBtnTextColor:I

    goto :goto_0

    .line 282
    :cond_1
    array-length v0, p1

    const/4 v4, 0x2

    if-ne v0, v4, :cond_2

    .line 283
    aget v0, p1, v3

    iput v0, p0, Lcom/flyco/dialog/widget/internal/BaseAlertDialog;->mLeftBtnTextColor:I

    .line 284
    aget p1, p1, v1

    iput p1, p0, Lcom/flyco/dialog/widget/internal/BaseAlertDialog;->mRightBtnTextColor:I

    goto :goto_0

    .line 285
    :cond_2
    array-length v0, p1

    if-ne v0, v2, :cond_3

    .line 286
    aget v0, p1, v3

    iput v0, p0, Lcom/flyco/dialog/widget/internal/BaseAlertDialog;->mLeftBtnTextColor:I

    .line 287
    aget v0, p1, v1

    iput v0, p0, Lcom/flyco/dialog/widget/internal/BaseAlertDialog;->mRightBtnTextColor:I

    .line 288
    aget p1, p1, v4

    iput p1, p0, Lcom/flyco/dialog/widget/internal/BaseAlertDialog;->mMiddleBtnTextColor:I

    :cond_3
    :goto_0
    return-object p0

    .line 277
    :cond_4
    :goto_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, " range of param textColors length is [1,3]!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public varargs btnTextSize([F)Lcom/flyco/dialog/widget/internal/BaseAlertDialog;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([F)TT;"
        }
    .end annotation

    .line 301
    array-length v0, p1

    const/4 v1, 0x1

    if-lt v0, v1, :cond_4

    array-length v0, p1

    const/4 v2, 0x3

    if-le v0, v2, :cond_0

    goto :goto_1

    .line 305
    :cond_0
    array-length v0, p1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_1

    .line 306
    aget p1, p1, v3

    iput p1, p0, Lcom/flyco/dialog/widget/internal/BaseAlertDialog;->mMiddleBtnTextSize:F

    goto :goto_0

    .line 307
    :cond_1
    array-length v0, p1

    const/4 v4, 0x2

    if-ne v0, v4, :cond_2

    .line 308
    aget v0, p1, v3

    iput v0, p0, Lcom/flyco/dialog/widget/internal/BaseAlertDialog;->mLeftBtnTextSize:F

    .line 309
    aget p1, p1, v1

    iput p1, p0, Lcom/flyco/dialog/widget/internal/BaseAlertDialog;->mRightBtnTextSize:F

    goto :goto_0

    .line 310
    :cond_2
    array-length v0, p1

    if-ne v0, v2, :cond_3

    .line 311
    aget v0, p1, v3

    iput v0, p0, Lcom/flyco/dialog/widget/internal/BaseAlertDialog;->mLeftBtnTextSize:F

    .line 312
    aget v0, p1, v1

    iput v0, p0, Lcom/flyco/dialog/widget/internal/BaseAlertDialog;->mRightBtnTextSize:F

    .line 313
    aget p1, p1, v4

    iput p1, p0, Lcom/flyco/dialog/widget/internal/BaseAlertDialog;->mMiddleBtnTextSize:F

    :cond_3
    :goto_0
    return-object p0

    .line 302
    :cond_4
    :goto_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, " range of param btnTextSizes length is [1,3]!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public content(Ljava/lang/String;)Lcom/flyco/dialog/widget/internal/BaseAlertDialog;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 207
    iput-object p1, p0, Lcom/flyco/dialog/widget/internal/BaseAlertDialog;->mContent:Ljava/lang/String;

    return-object p0
.end method

.method public contentGravity(I)Lcom/flyco/dialog/widget/internal/BaseAlertDialog;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 213
    iput p1, p0, Lcom/flyco/dialog/widget/internal/BaseAlertDialog;->mContentGravity:I

    return-object p0
.end method

.method public contentTextColor(I)Lcom/flyco/dialog/widget/internal/BaseAlertDialog;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 219
    iput p1, p0, Lcom/flyco/dialog/widget/internal/BaseAlertDialog;->mContentTextColor:I

    return-object p0
.end method

.method public contentTextSize(F)Lcom/flyco/dialog/widget/internal/BaseAlertDialog;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)TT;"
        }
    .end annotation

    .line 225
    iput p1, p0, Lcom/flyco/dialog/widget/internal/BaseAlertDialog;->mContentTextSize:F

    return-object p0
.end method

.method public cornerRadius(F)Lcom/flyco/dialog/widget/internal/BaseAlertDialog;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)TT;"
        }
    .end annotation

    .line 327
    iput p1, p0, Lcom/flyco/dialog/widget/internal/BaseAlertDialog;->mCornerRadius:F

    return-object p0
.end method

.method public isTitleShow(Z)Lcom/flyco/dialog/widget/internal/BaseAlertDialog;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TT;"
        }
    .end annotation

    .line 201
    iput-boolean p1, p0, Lcom/flyco/dialog/widget/internal/BaseAlertDialog;->mIsTitleShow:Z

    return-object p0
.end method

.method public varargs setOnBtnClickL([Lcom/flyco/dialog/listener/OnBtnClickL;)V
    .locals 5

    .line 344
    array-length v0, p1

    const/4 v1, 0x1

    if-lt v0, v1, :cond_4

    array-length v0, p1

    const/4 v2, 0x3

    if-le v0, v2, :cond_0

    goto :goto_1

    .line 348
    :cond_0
    array-length v0, p1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_1

    .line 349
    aget-object p1, p1, v3

    iput-object p1, p0, Lcom/flyco/dialog/widget/internal/BaseAlertDialog;->mOnBtnMiddleClickL:Lcom/flyco/dialog/listener/OnBtnClickL;

    goto :goto_0

    .line 350
    :cond_1
    array-length v0, p1

    const/4 v4, 0x2

    if-ne v0, v4, :cond_2

    .line 351
    aget-object v0, p1, v3

    iput-object v0, p0, Lcom/flyco/dialog/widget/internal/BaseAlertDialog;->mOnBtnLeftClickL:Lcom/flyco/dialog/listener/OnBtnClickL;

    .line 352
    aget-object p1, p1, v1

    iput-object p1, p0, Lcom/flyco/dialog/widget/internal/BaseAlertDialog;->mOnBtnRightClickL:Lcom/flyco/dialog/listener/OnBtnClickL;

    goto :goto_0

    .line 353
    :cond_2
    array-length v0, p1

    if-ne v0, v2, :cond_3

    .line 354
    aget-object v0, p1, v3

    iput-object v0, p0, Lcom/flyco/dialog/widget/internal/BaseAlertDialog;->mOnBtnLeftClickL:Lcom/flyco/dialog/listener/OnBtnClickL;

    .line 355
    aget-object v0, p1, v1

    iput-object v0, p0, Lcom/flyco/dialog/widget/internal/BaseAlertDialog;->mOnBtnRightClickL:Lcom/flyco/dialog/listener/OnBtnClickL;

    .line 356
    aget-object p1, p1, v4

    iput-object p1, p0, Lcom/flyco/dialog/widget/internal/BaseAlertDialog;->mOnBtnMiddleClickL:Lcom/flyco/dialog/listener/OnBtnClickL;

    :cond_3
    :goto_0
    return-void

    .line 345
    :cond_4
    :goto_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, " range of param onBtnClickLs length is [1,3]!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setUiBeforShow()V
    .locals 5

    .line 114
    iget-object v0, p0, Lcom/flyco/dialog/widget/internal/BaseAlertDialog;->mTvTitle:Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/flyco/dialog/widget/internal/BaseAlertDialog;->mIsTitleShow:Z

    const/16 v2, 0x8

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 116
    iget-object v0, p0, Lcom/flyco/dialog/widget/internal/BaseAlertDialog;->mTvTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/flyco/dialog/widget/internal/BaseAlertDialog;->mTitle:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "\u6e29\u99a8\u63d0\u793a"

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/flyco/dialog/widget/internal/BaseAlertDialog;->mTitle:Ljava/lang/String;

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    iget-object v0, p0, Lcom/flyco/dialog/widget/internal/BaseAlertDialog;->mTvTitle:Landroid/widget/TextView;

    iget v1, p0, Lcom/flyco/dialog/widget/internal/BaseAlertDialog;->mTitleTextColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 118
    iget-object v0, p0, Lcom/flyco/dialog/widget/internal/BaseAlertDialog;->mTvTitle:Landroid/widget/TextView;

    iget v1, p0, Lcom/flyco/dialog/widget/internal/BaseAlertDialog;->mTitleTextSize:F

    const/4 v3, 0x2

    invoke-virtual {v0, v3, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 121
    iget-object v0, p0, Lcom/flyco/dialog/widget/internal/BaseAlertDialog;->mTvContent:Landroid/widget/TextView;

    iget v1, p0, Lcom/flyco/dialog/widget/internal/BaseAlertDialog;->mContentGravity:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 122
    iget-object v0, p0, Lcom/flyco/dialog/widget/internal/BaseAlertDialog;->mTvContent:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/flyco/dialog/widget/internal/BaseAlertDialog;->mContent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    iget-object v0, p0, Lcom/flyco/dialog/widget/internal/BaseAlertDialog;->mTvContent:Landroid/widget/TextView;

    iget v1, p0, Lcom/flyco/dialog/widget/internal/BaseAlertDialog;->mContentTextColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 124
    iget-object v0, p0, Lcom/flyco/dialog/widget/internal/BaseAlertDialog;->mTvContent:Landroid/widget/TextView;

    iget v1, p0, Lcom/flyco/dialog/widget/internal/BaseAlertDialog;->mContentTextSize:F

    invoke-virtual {v0, v3, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 125
    iget-object v0, p0, Lcom/flyco/dialog/widget/internal/BaseAlertDialog;->mTvContent:Landroid/widget/TextView;

    const/4 v1, 0x0

    const v4, 0x3fa66666    # 1.3f

    invoke-virtual {v0, v1, v4}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 128
    iget-object v0, p0, Lcom/flyco/dialog/widget/internal/BaseAlertDialog;->mTvBtnLeft:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/flyco/dialog/widget/internal/BaseAlertDialog;->mBtnLeftText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 129
    iget-object v0, p0, Lcom/flyco/dialog/widget/internal/BaseAlertDialog;->mTvBtnRight:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/flyco/dialog/widget/internal/BaseAlertDialog;->mBtnRightText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 130
    iget-object v0, p0, Lcom/flyco/dialog/widget/internal/BaseAlertDialog;->mTvBtnMiddle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/flyco/dialog/widget/internal/BaseAlertDialog;->mBtnMiddleText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    iget-object v0, p0, Lcom/flyco/dialog/widget/internal/BaseAlertDialog;->mTvBtnLeft:Landroid/widget/TextView;

    iget v1, p0, Lcom/flyco/dialog/widget/internal/BaseAlertDialog;->mLeftBtnTextColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 133
    iget-object v0, p0, Lcom/flyco/dialog/widget/internal/BaseAlertDialog;->mTvBtnRight:Landroid/widget/TextView;

    iget v1, p0, Lcom/flyco/dialog/widget/internal/BaseAlertDialog;->mRightBtnTextColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 134
    iget-object v0, p0, Lcom/flyco/dialog/widget/internal/BaseAlertDialog;->mTvBtnMiddle:Landroid/widget/TextView;

    iget v1, p0, Lcom/flyco/dialog/widget/internal/BaseAlertDialog;->mMiddleBtnTextColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 136
    iget-object v0, p0, Lcom/flyco/dialog/widget/internal/BaseAlertDialog;->mTvBtnLeft:Landroid/widget/TextView;

    iget v1, p0, Lcom/flyco/dialog/widget/internal/BaseAlertDialog;->mLeftBtnTextSize:F

    invoke-virtual {v0, v3, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 137
    iget-object v0, p0, Lcom/flyco/dialog/widget/internal/BaseAlertDialog;->mTvBtnRight:Landroid/widget/TextView;

    iget v1, p0, Lcom/flyco/dialog/widget/internal/BaseAlertDialog;->mRightBtnTextSize:F

    invoke-virtual {v0, v3, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 138
    iget-object v0, p0, Lcom/flyco/dialog/widget/internal/BaseAlertDialog;->mTvBtnMiddle:Landroid/widget/TextView;

    iget v1, p0, Lcom/flyco/dialog/widget/internal/BaseAlertDialog;->mMiddleBtnTextSize:F

    invoke-virtual {v0, v3, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 140
    iget v0, p0, Lcom/flyco/dialog/widget/internal/BaseAlertDialog;->mBtnNum:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 141
    iget-object v0, p0, Lcom/flyco/dialog/widget/internal/BaseAlertDialog;->mTvBtnLeft:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 142
    iget-object v0, p0, Lcom/flyco/dialog/widget/internal/BaseAlertDialog;->mTvBtnRight:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 143
    :cond_2
    iget v0, p0, Lcom/flyco/dialog/widget/internal/BaseAlertDialog;->mBtnNum:I

    if-ne v0, v3, :cond_3

    .line 144
    iget-object v0, p0, Lcom/flyco/dialog/widget/internal/BaseAlertDialog;->mTvBtnMiddle:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 147
    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/flyco/dialog/widget/internal/BaseAlertDialog;->mTvBtnLeft:Landroid/widget/TextView;

    new-instance v1, Lcom/flyco/dialog/widget/internal/BaseAlertDialog$1;

    invoke-direct {v1, p0}, Lcom/flyco/dialog/widget/internal/BaseAlertDialog$1;-><init>(Lcom/flyco/dialog/widget/internal/BaseAlertDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 158
    iget-object v0, p0, Lcom/flyco/dialog/widget/internal/BaseAlertDialog;->mTvBtnRight:Landroid/widget/TextView;

    new-instance v1, Lcom/flyco/dialog/widget/internal/BaseAlertDialog$2;

    invoke-direct {v1, p0}, Lcom/flyco/dialog/widget/internal/BaseAlertDialog$2;-><init>(Lcom/flyco/dialog/widget/internal/BaseAlertDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 169
    iget-object v0, p0, Lcom/flyco/dialog/widget/internal/BaseAlertDialog;->mTvBtnMiddle:Landroid/widget/TextView;

    new-instance v1, Lcom/flyco/dialog/widget/internal/BaseAlertDialog$3;

    invoke-direct {v1, p0}, Lcom/flyco/dialog/widget/internal/BaseAlertDialog$3;-><init>(Lcom/flyco/dialog/widget/internal/BaseAlertDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public title(Ljava/lang/String;)Lcom/flyco/dialog/widget/internal/BaseAlertDialog;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 183
    iput-object p1, p0, Lcom/flyco/dialog/widget/internal/BaseAlertDialog;->mTitle:Ljava/lang/String;

    return-object p0
.end method

.method public titleTextColor(I)Lcom/flyco/dialog/widget/internal/BaseAlertDialog;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 189
    iput p1, p0, Lcom/flyco/dialog/widget/internal/BaseAlertDialog;->mTitleTextColor:I

    return-object p0
.end method

.method public titleTextSize(F)Lcom/flyco/dialog/widget/internal/BaseAlertDialog;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)TT;"
        }
    .end annotation

    .line 195
    iput p1, p0, Lcom/flyco/dialog/widget/internal/BaseAlertDialog;->mTitleTextSize:F

    return-object p0
.end method
