.class public abstract Lcom/flyco/dialog/widget/base/BaseDialog;
.super Landroid/app/Dialog;
.source "BaseDialog.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/flyco/dialog/widget/base/BaseDialog<",
        "TT;>;>",
        "Landroid/app/Dialog;"
    }
.end annotation


# instance fields
.field private mAutoDismiss:Z

.field private mAutoDismissDelay:J

.field protected mCancel:Z

.field protected mContext:Landroid/content/Context;

.field private mDismissAnim:Lcom/flyco/animation/BaseAnimatorSet;

.field protected mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private mHandler:Landroid/os/Handler;

.field protected mHeightScale:F

.field private mIsDismissAnim:Z

.field private mIsPopupStyle:Z

.field private mIsShowAnim:Z

.field protected mLlControlHeight:Landroid/widget/LinearLayout;

.field protected mLlTop:Landroid/widget/LinearLayout;

.field protected mMaxHeight:F

.field protected mOnCreateView:Landroid/view/View;

.field private mShowAnim:Lcom/flyco/animation/BaseAnimatorSet;

.field protected mTag:Ljava/lang/String;

.field protected mWidthScale:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 68
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 34
    iput v0, p0, Lcom/flyco/dialog/widget/base/BaseDialog;->mWidthScale:F

    const-wide/16 v0, 0x5dc

    .line 58
    iput-wide v0, p0, Lcom/flyco/dialog/widget/base/BaseDialog;->mAutoDismissDelay:J

    .line 60
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/flyco/dialog/widget/base/BaseDialog;->mHandler:Landroid/os/Handler;

    .line 69
    invoke-direct {p0}, Lcom/flyco/dialog/widget/base/BaseDialog;->setDialogTheme()V

    .line 70
    iput-object p1, p0, Lcom/flyco/dialog/widget/base/BaseDialog;->mContext:Landroid/content/Context;

    .line 71
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/flyco/dialog/widget/base/BaseDialog;->mTag:Ljava/lang/String;

    const/4 p1, 0x1

    .line 72
    invoke-virtual {p0, p1}, Lcom/flyco/dialog/widget/base/BaseDialog;->setCanceledOnTouchOutside(Z)V

    .line 73
    iget-object p1, p0, Lcom/flyco/dialog/widget/base/BaseDialog;->mTag:Ljava/lang/String;

    const-string v0, "constructor"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 0

    .line 77
    invoke-direct {p0, p1}, Lcom/flyco/dialog/widget/base/BaseDialog;-><init>(Landroid/content/Context;)V

    .line 78
    iput-boolean p2, p0, Lcom/flyco/dialog/widget/base/BaseDialog;->mIsPopupStyle:Z

    return-void
.end method

.method static synthetic access$002(Lcom/flyco/dialog/widget/base/BaseDialog;Z)Z
    .locals 0

    .line 24
    iput-boolean p1, p0, Lcom/flyco/dialog/widget/base/BaseDialog;->mIsShowAnim:Z

    return p1
.end method

.method static synthetic access$100(Lcom/flyco/dialog/widget/base/BaseDialog;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/flyco/dialog/widget/base/BaseDialog;->delayDismiss()V

    return-void
.end method

.method static synthetic access$202(Lcom/flyco/dialog/widget/base/BaseDialog;Z)Z
    .locals 0

    .line 24
    iput-boolean p1, p0, Lcom/flyco/dialog/widget/base/BaseDialog;->mIsDismissAnim:Z

    return p1
.end method

.method private delayDismiss()V
    .locals 5

    .line 346
    iget-boolean v0, p0, Lcom/flyco/dialog/widget/base/BaseDialog;->mAutoDismiss:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/flyco/dialog/widget/base/BaseDialog;->mAutoDismissDelay:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 347
    iget-object v0, p0, Lcom/flyco/dialog/widget/base/BaseDialog;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/flyco/dialog/widget/base/BaseDialog$4;

    invoke-direct {v1, p0}, Lcom/flyco/dialog/widget/base/BaseDialog$4;-><init>(Lcom/flyco/dialog/widget/base/BaseDialog;)V

    iget-wide v2, p0, Lcom/flyco/dialog/widget/base/BaseDialog;->mAutoDismissDelay:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method private setDialogTheme()V
    .locals 3

    const/4 v0, 0x1

    .line 83
    invoke-virtual {p0, v0}, Lcom/flyco/dialog/widget/base/BaseDialog;->requestWindowFeature(I)Z

    .line 84
    invoke-virtual {p0}, Lcom/flyco/dialog/widget/base/BaseDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 85
    invoke-virtual {p0}, Lcom/flyco/dialog/widget/base/BaseDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    return-void
.end method


# virtual methods
.method public autoDismiss(Z)Lcom/flyco/dialog/widget/base/BaseDialog;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TT;"
        }
    .end annotation

    .line 335
    iput-boolean p1, p0, Lcom/flyco/dialog/widget/base/BaseDialog;->mAutoDismiss:Z

    return-object p0
.end method

.method public autoDismissDelay(J)Lcom/flyco/dialog/widget/base/BaseDialog;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TT;"
        }
    .end annotation

    .line 341
    iput-wide p1, p0, Lcom/flyco/dialog/widget/base/BaseDialog;->mAutoDismissDelay:J

    return-object p0
.end method

.method public dimEnabled(Z)Lcom/flyco/dialog/widget/base/BaseDialog;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TT;"
        }
    .end annotation

    const/4 v0, 0x2

    if-eqz p1, :cond_0

    .line 302
    invoke-virtual {p0}, Lcom/flyco/dialog/widget/base/BaseDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    goto :goto_0

    .line 304
    :cond_0
    invoke-virtual {p0}, Lcom/flyco/dialog/widget/base/BaseDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/Window;->clearFlags(I)V

    :goto_0
    return-object p0
.end method

.method public dismiss()V
    .locals 2

    .line 239
    iget-object v0, p0, Lcom/flyco/dialog/widget/base/BaseDialog;->mTag:Ljava/lang/String;

    const-string v1, "dismiss"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    iget-object v0, p0, Lcom/flyco/dialog/widget/base/BaseDialog;->mDismissAnim:Lcom/flyco/animation/BaseAnimatorSet;

    if-eqz v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/flyco/dialog/widget/base/BaseDialog;->mDismissAnim:Lcom/flyco/animation/BaseAnimatorSet;

    new-instance v1, Lcom/flyco/dialog/widget/base/BaseDialog$3;

    invoke-direct {v1, p0}, Lcom/flyco/dialog/widget/base/BaseDialog$3;-><init>(Lcom/flyco/dialog/widget/base/BaseDialog;)V

    invoke-virtual {v0, v1}, Lcom/flyco/animation/BaseAnimatorSet;->listener(Lcom/flyco/animation/BaseAnimatorSet$AnimatorListener;)Lcom/flyco/animation/BaseAnimatorSet;

    move-result-object v0

    iget-object v1, p0, Lcom/flyco/dialog/widget/base/BaseDialog;->mLlControlHeight:Landroid/widget/LinearLayout;

    .line 262
    invoke-virtual {v0, v1}, Lcom/flyco/animation/BaseAnimatorSet;->playOn(Landroid/view/View;)V

    goto :goto_0

    .line 264
    :cond_0
    invoke-virtual {p0}, Lcom/flyco/dialog/widget/base/BaseDialog;->superDismiss()V

    :goto_0
    return-void
.end method

.method public dismissAnim(Lcom/flyco/animation/BaseAnimatorSet;)Lcom/flyco/dialog/widget/base/BaseDialog;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flyco/animation/BaseAnimatorSet;",
            ")TT;"
        }
    .end annotation

    .line 329
    iput-object p1, p0, Lcom/flyco/dialog/widget/base/BaseDialog;->mDismissAnim:Lcom/flyco/animation/BaseAnimatorSet;

    return-object p0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 358
    iget-boolean v0, p0, Lcom/flyco/dialog/widget/base/BaseDialog;->mIsDismissAnim:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/flyco/dialog/widget/base/BaseDialog;->mIsShowAnim:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/flyco/dialog/widget/base/BaseDialog;->mAutoDismiss:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 361
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Dialog;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method protected dp2px(F)I
    .locals 1

    .line 374
    iget-object v0, p0, Lcom/flyco/dialog/widget/base/BaseDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float p1, p1, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p1, v0

    float-to-int p1, p1

    return p1
.end method

.method public getCreateView()Landroid/view/View;
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/flyco/dialog/widget/base/BaseDialog;->mOnCreateView:Landroid/view/View;

    return-object v0
.end method

.method public heightScale(F)Lcom/flyco/dialog/widget/base/BaseDialog;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)TT;"
        }
    .end annotation

    .line 317
    iput p1, p0, Lcom/flyco/dialog/widget/base/BaseDialog;->mHeightScale:F

    return-object p0
.end method

.method public onAttachedToWindow()V
    .locals 4

    .line 153
    invoke-super {p0}, Landroid/app/Dialog;->onAttachedToWindow()V

    .line 154
    iget-object v0, p0, Lcom/flyco/dialog/widget/base/BaseDialog;->mTag:Ljava/lang/String;

    const-string v1, "onAttachedToWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    invoke-virtual {p0}, Lcom/flyco/dialog/widget/base/BaseDialog;->setUiBeforShow()V

    .line 159
    iget v0, p0, Lcom/flyco/dialog/widget/base/BaseDialog;->mWidthScale:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    const/4 v2, -0x2

    if-nez v0, :cond_0

    const/4 v0, -0x2

    goto :goto_0

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/flyco/dialog/widget/base/BaseDialog;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v0, v0

    iget v3, p0, Lcom/flyco/dialog/widget/base/BaseDialog;->mWidthScale:F

    mul-float v0, v0, v3

    float-to-int v0, v0

    .line 166
    :goto_0
    iget v3, p0, Lcom/flyco/dialog/widget/base/BaseDialog;->mHeightScale:F

    cmpl-float v1, v3, v1

    if-nez v1, :cond_1

    goto :goto_1

    .line 168
    :cond_1
    iget v1, p0, Lcom/flyco/dialog/widget/base/BaseDialog;->mHeightScale:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-nez v1, :cond_2

    .line 170
    iget v1, p0, Lcom/flyco/dialog/widget/base/BaseDialog;->mMaxHeight:F

    float-to-int v2, v1

    goto :goto_1

    .line 172
    :cond_2
    iget v1, p0, Lcom/flyco/dialog/widget/base/BaseDialog;->mMaxHeight:F

    iget v2, p0, Lcom/flyco/dialog/widget/base/BaseDialog;->mHeightScale:F

    mul-float v1, v1, v2

    float-to-int v2, v1

    .line 175
    :goto_1
    iget-object v1, p0, Lcom/flyco/dialog/widget/base/BaseDialog;->mLlControlHeight:Landroid/widget/LinearLayout;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v0, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 177
    iget-object v0, p0, Lcom/flyco/dialog/widget/base/BaseDialog;->mShowAnim:Lcom/flyco/animation/BaseAnimatorSet;

    if-eqz v0, :cond_3

    .line 178
    iget-object v0, p0, Lcom/flyco/dialog/widget/base/BaseDialog;->mShowAnim:Lcom/flyco/animation/BaseAnimatorSet;

    new-instance v1, Lcom/flyco/dialog/widget/base/BaseDialog$2;

    invoke-direct {v1, p0}, Lcom/flyco/dialog/widget/base/BaseDialog$2;-><init>(Lcom/flyco/dialog/widget/base/BaseDialog;)V

    invoke-virtual {v0, v1}, Lcom/flyco/animation/BaseAnimatorSet;->listener(Lcom/flyco/animation/BaseAnimatorSet$AnimatorListener;)Lcom/flyco/animation/BaseAnimatorSet;

    move-result-object v0

    iget-object v1, p0, Lcom/flyco/dialog/widget/base/BaseDialog;->mLlControlHeight:Landroid/widget/LinearLayout;

    .line 198
    invoke-virtual {v0, v1}, Lcom/flyco/animation/BaseAnimatorSet;->playOn(Landroid/view/View;)V

    goto :goto_2

    .line 200
    :cond_3
    iget-object v0, p0, Lcom/flyco/dialog/widget/base/BaseDialog;->mLlControlHeight:Landroid/widget/LinearLayout;

    invoke-static {v0}, Lcom/flyco/animation/BaseAnimatorSet;->reset(Landroid/view/View;)V

    .line 201
    invoke-direct {p0}, Lcom/flyco/dialog/widget/base/BaseDialog;->delayDismiss()V

    :goto_2
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .line 366
    iget-boolean v0, p0, Lcom/flyco/dialog/widget/base/BaseDialog;->mIsDismissAnim:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/flyco/dialog/widget/base/BaseDialog;->mIsShowAnim:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/flyco/dialog/widget/base/BaseDialog;->mAutoDismiss:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 369
    :cond_0
    invoke-super {p0}, Landroid/app/Dialog;->onBackPressed()V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 107
    iget-object p1, p0, Lcom/flyco/dialog/widget/base/BaseDialog;->mTag:Ljava/lang/String;

    const-string v0, "onCreate"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    iget-object p1, p0, Lcom/flyco/dialog/widget/base/BaseDialog;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iput-object p1, p0, Lcom/flyco/dialog/widget/base/BaseDialog;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 109
    iget-object p1, p0, Lcom/flyco/dialog/widget/base/BaseDialog;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    iget-object v0, p0, Lcom/flyco/dialog/widget/base/BaseDialog;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/flyco/dialog/utils/StatusBarUtils;->getHeight(Landroid/content/Context;)I

    move-result v0

    sub-int/2addr p1, v0

    int-to-float p1, p1

    iput p1, p0, Lcom/flyco/dialog/widget/base/BaseDialog;->mMaxHeight:F

    .line 112
    new-instance p1, Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/flyco/dialog/widget/base/BaseDialog;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/flyco/dialog/widget/base/BaseDialog;->mLlTop:Landroid/widget/LinearLayout;

    .line 113
    iget-object p1, p0, Lcom/flyco/dialog/widget/base/BaseDialog;->mLlTop:Landroid/widget/LinearLayout;

    const/16 v0, 0x11

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 115
    new-instance p1, Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/flyco/dialog/widget/base/BaseDialog;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/flyco/dialog/widget/base/BaseDialog;->mLlControlHeight:Landroid/widget/LinearLayout;

    .line 116
    iget-object p1, p0, Lcom/flyco/dialog/widget/base/BaseDialog;->mLlControlHeight:Landroid/widget/LinearLayout;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 118
    invoke-virtual {p0}, Lcom/flyco/dialog/widget/base/BaseDialog;->onCreateView()Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/flyco/dialog/widget/base/BaseDialog;->mOnCreateView:Landroid/view/View;

    .line 119
    iget-object p1, p0, Lcom/flyco/dialog/widget/base/BaseDialog;->mLlControlHeight:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/flyco/dialog/widget/base/BaseDialog;->mOnCreateView:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 120
    iget-object p1, p0, Lcom/flyco/dialog/widget/base/BaseDialog;->mLlTop:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/flyco/dialog/widget/base/BaseDialog;->mLlControlHeight:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 121
    iget-object p1, p0, Lcom/flyco/dialog/widget/base/BaseDialog;->mOnCreateView:Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/flyco/dialog/widget/base/BaseDialog;->onViewCreated(Landroid/view/View;)V

    .line 123
    iget-boolean p1, p0, Lcom/flyco/dialog/widget/base/BaseDialog;->mIsPopupStyle:Z

    if-eqz p1, :cond_0

    .line 124
    iget-object p1, p0, Lcom/flyco/dialog/widget/base/BaseDialog;->mLlTop:Landroid/widget/LinearLayout;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, v1}, Lcom/flyco/dialog/widget/base/BaseDialog;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 127
    :cond_0
    iget-object p1, p0, Lcom/flyco/dialog/widget/base/BaseDialog;->mLlTop:Landroid/widget/LinearLayout;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    iget-object v2, p0, Lcom/flyco/dialog/widget/base/BaseDialog;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v3, p0, Lcom/flyco/dialog/widget/base/BaseDialog;->mMaxHeight:F

    float-to-int v3, v3

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, v1}, Lcom/flyco/dialog/widget/base/BaseDialog;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 130
    :goto_0
    iget-object p1, p0, Lcom/flyco/dialog/widget/base/BaseDialog;->mLlTop:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/flyco/dialog/widget/base/BaseDialog$1;

    invoke-direct {v1, p0}, Lcom/flyco/dialog/widget/base/BaseDialog$1;-><init>(Lcom/flyco/dialog/widget/base/BaseDialog;)V

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    iget-object p1, p0, Lcom/flyco/dialog/widget/base/BaseDialog;->mOnCreateView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    return-void
.end method

.method public abstract onCreateView()Landroid/view/View;
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .line 233
    invoke-super {p0}, Landroid/app/Dialog;->onDetachedFromWindow()V

    .line 234
    iget-object v0, p0, Lcom/flyco/dialog/widget/base/BaseDialog;->mTag:Ljava/lang/String;

    const-string v1, "onDetachedFromWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onStart()V
    .locals 2

    .line 221
    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    .line 222
    iget-object v0, p0, Lcom/flyco/dialog/widget/base/BaseDialog;->mTag:Ljava/lang/String;

    const-string v1, "onStart"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onStop()V
    .locals 2

    .line 227
    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    .line 228
    iget-object v0, p0, Lcom/flyco/dialog/widget/base/BaseDialog;->mTag:Ljava/lang/String;

    const-string v1, "onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onViewCreated(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public setCanceledOnTouchOutside(Z)V
    .locals 0

    .line 208
    iput-boolean p1, p0, Lcom/flyco/dialog/widget/base/BaseDialog;->mCancel:Z

    .line 209
    invoke-super {p0, p1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    return-void
.end method

.method public abstract setUiBeforShow()V
.end method

.method public show()V
    .locals 2

    .line 214
    iget-object v0, p0, Lcom/flyco/dialog/widget/base/BaseDialog;->mTag:Ljava/lang/String;

    const-string v1, "show"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public show(I)V
    .locals 1

    .line 275
    invoke-virtual {p0}, Lcom/flyco/dialog/widget/base/BaseDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 276
    invoke-virtual {v0, p1}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 277
    invoke-virtual {p0}, Lcom/flyco/dialog/widget/base/BaseDialog;->show()V

    return-void
.end method

.method public showAnim(Lcom/flyco/animation/BaseAnimatorSet;)Lcom/flyco/dialog/widget/base/BaseDialog;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flyco/animation/BaseAnimatorSet;",
            ")TT;"
        }
    .end annotation

    .line 323
    iput-object p1, p0, Lcom/flyco/dialog/widget/base/BaseDialog;->mShowAnim:Lcom/flyco/animation/BaseAnimatorSet;

    return-object p0
.end method

.method public showAtLocation(II)V
    .locals 1

    const/16 v0, 0x33

    .line 296
    invoke-virtual {p0, v0, p1, p2}, Lcom/flyco/dialog/widget/base/BaseDialog;->showAtLocation(III)V

    return-void
.end method

.method public showAtLocation(III)V
    .locals 2

    .line 282
    iget-boolean v0, p0, Lcom/flyco/dialog/widget/base/BaseDialog;->mIsPopupStyle:Z

    if-eqz v0, :cond_0

    .line 283
    invoke-virtual {p0}, Lcom/flyco/dialog/widget/base/BaseDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 284
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 285
    invoke-virtual {v0, p1}, Landroid/view/Window;->setGravity(I)V

    .line 286
    iput p2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 287
    iput p3, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 290
    :cond_0
    invoke-virtual {p0}, Lcom/flyco/dialog/widget/base/BaseDialog;->show()V

    return-void
.end method

.method public superDismiss()V
    .locals 0

    .line 270
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method public widthScale(F)Lcom/flyco/dialog/widget/base/BaseDialog;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)TT;"
        }
    .end annotation

    .line 311
    iput p1, p0, Lcom/flyco/dialog/widget/base/BaseDialog;->mWidthScale:F

    return-object p0
.end method
