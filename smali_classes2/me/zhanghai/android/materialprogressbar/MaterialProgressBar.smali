.class public Lme/zhanghai/android/materialprogressbar/MaterialProgressBar;
.super Landroid/widget/ProgressBar;
.source "MaterialProgressBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lme/zhanghai/android/materialprogressbar/MaterialProgressBar$TintInfo;
    }
.end annotation


# static fields
.field public static final PROGRESS_STYLE_CIRCULAR:I = 0x0

.field public static final PROGRESS_STYLE_HORIZONTAL:I = 0x1

.field private static final TAG:Ljava/lang/String; = "MaterialProgressBar"


# instance fields
.field private mProgressStyle:I

.field private mProgressTint:Lme/zhanghai/android/materialprogressbar/MaterialProgressBar$TintInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 37
    invoke-direct {p0, p1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    .line 34
    new-instance v0, Lme/zhanghai/android/materialprogressbar/MaterialProgressBar$TintInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lme/zhanghai/android/materialprogressbar/MaterialProgressBar$TintInfo;-><init>(Lme/zhanghai/android/materialprogressbar/MaterialProgressBar$1;)V

    iput-object v0, p0, Lme/zhanghai/android/materialprogressbar/MaterialProgressBar;->mProgressTint:Lme/zhanghai/android/materialprogressbar/MaterialProgressBar$TintInfo;

    const/4 v0, 0x0

    .line 39
    invoke-direct {p0, p1, v1, v0, v0}, Lme/zhanghai/android/materialprogressbar/MaterialProgressBar;->init(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 43
    invoke-direct {p0, p1, p2}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    new-instance v0, Lme/zhanghai/android/materialprogressbar/MaterialProgressBar$TintInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lme/zhanghai/android/materialprogressbar/MaterialProgressBar$TintInfo;-><init>(Lme/zhanghai/android/materialprogressbar/MaterialProgressBar$1;)V

    iput-object v0, p0, Lme/zhanghai/android/materialprogressbar/MaterialProgressBar;->mProgressTint:Lme/zhanghai/android/materialprogressbar/MaterialProgressBar$TintInfo;

    const/4 v0, 0x0

    .line 45
    invoke-direct {p0, p1, p2, v0, v0}, Lme/zhanghai/android/materialprogressbar/MaterialProgressBar;->init(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 49
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    new-instance v0, Lme/zhanghai/android/materialprogressbar/MaterialProgressBar$TintInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lme/zhanghai/android/materialprogressbar/MaterialProgressBar$TintInfo;-><init>(Lme/zhanghai/android/materialprogressbar/MaterialProgressBar$1;)V

    iput-object v0, p0, Lme/zhanghai/android/materialprogressbar/MaterialProgressBar;->mProgressTint:Lme/zhanghai/android/materialprogressbar/MaterialProgressBar$TintInfo;

    const/4 v0, 0x0

    .line 51
    invoke-direct {p0, p1, p2, p3, v0}, Lme/zhanghai/android/materialprogressbar/MaterialProgressBar;->init(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 57
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 34
    new-instance v0, Lme/zhanghai/android/materialprogressbar/MaterialProgressBar$TintInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lme/zhanghai/android/materialprogressbar/MaterialProgressBar$TintInfo;-><init>(Lme/zhanghai/android/materialprogressbar/MaterialProgressBar$1;)V

    iput-object v0, p0, Lme/zhanghai/android/materialprogressbar/MaterialProgressBar;->mProgressTint:Lme/zhanghai/android/materialprogressbar/MaterialProgressBar$TintInfo;

    .line 59
    invoke-direct {p0, p1, p2, p3, p4}, Lme/zhanghai/android/materialprogressbar/MaterialProgressBar;->init(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method private applyDeterminateProgressTint()V
    .locals 2

    .line 281
    iget-object v0, p0, Lme/zhanghai/android/materialprogressbar/MaterialProgressBar;->mProgressTint:Lme/zhanghai/android/materialprogressbar/MaterialProgressBar$TintInfo;

    iget-boolean v0, v0, Lme/zhanghai/android/materialprogressbar/MaterialProgressBar$TintInfo;->mHasTintList:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lme/zhanghai/android/materialprogressbar/MaterialProgressBar;->mProgressTint:Lme/zhanghai/android/materialprogressbar/MaterialProgressBar$TintInfo;

    iget-boolean v0, v0, Lme/zhanghai/android/materialprogressbar/MaterialProgressBar$TintInfo;->mHasTintMode:Z

    if-eqz v0, :cond_1

    .line 282
    :cond_0
    invoke-virtual {p0}, Lme/zhanghai/android/materialprogressbar/MaterialProgressBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 284
    iget-object v1, p0, Lme/zhanghai/android/materialprogressbar/MaterialProgressBar;->mProgressTint:Lme/zhanghai/android/materialprogressbar/MaterialProgressBar$TintInfo;

    invoke-direct {p0, v0, v1}, Lme/zhanghai/android/materialprogressbar/MaterialProgressBar;->applyTintForDrawable(Landroid/graphics/drawable/Drawable;Lme/zhanghai/android/materialprogressbar/MaterialProgressBar$TintInfo;)V

    :cond_1
    return-void
.end method

.method private applyIndeterminateProgressTint()V
    .locals 2

    .line 290
    iget-object v0, p0, Lme/zhanghai/android/materialprogressbar/MaterialProgressBar;->mProgressTint:Lme/zhanghai/android/materialprogressbar/MaterialProgressBar$TintInfo;

    iget-boolean v0, v0, Lme/zhanghai/android/materialprogressbar/MaterialProgressBar$TintInfo;->mHasTintList:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lme/zhanghai/android/materialprogressbar/MaterialProgressBar;->mProgressTint:Lme/zhanghai/android/materialprogressbar/MaterialProgressBar$TintInfo;

    iget-boolean v0, v0, Lme/zhanghai/android/materialprogressbar/MaterialProgressBar$TintInfo;->mHasTintMode:Z

    if-eqz v0, :cond_1

    .line 291
    :cond_0
    invoke-virtual {p0}, Lme/zhanghai/android/materialprogressbar/MaterialProgressBar;->getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 293
    iget-object v1, p0, Lme/zhanghai/android/materialprogressbar/MaterialProgressBar;->mProgressTint:Lme/zhanghai/android/materialprogressbar/MaterialProgressBar$TintInfo;

    invoke-direct {p0, v0, v1}, Lme/zhanghai/android/materialprogressbar/MaterialProgressBar;->applyTintForDrawable(Landroid/graphics/drawable/Drawable;Lme/zhanghai/android/materialprogressbar/MaterialProgressBar$TintInfo;)V

    :cond_1
    return-void
.end method

.method private applyProgressTint()V
    .locals 0

    .line 276
    invoke-direct {p0}, Lme/zhanghai/android/materialprogressbar/MaterialProgressBar;->applyDeterminateProgressTint()V

    .line 277
    invoke-direct {p0}, Lme/zhanghai/android/materialprogressbar/MaterialProgressBar;->applyIndeterminateProgressTint()V

    return-void
.end method

.method private applyTintForDrawable(Landroid/graphics/drawable/Drawable;Lme/zhanghai/android/materialprogressbar/MaterialProgressBar$TintInfo;)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 303
    iget-boolean v0, p2, Lme/zhanghai/android/materialprogressbar/MaterialProgressBar$TintInfo;->mHasTintList:Z

    if-nez v0, :cond_0

    iget-boolean v0, p2, Lme/zhanghai/android/materialprogressbar/MaterialProgressBar$TintInfo;->mHasTintMode:Z

    if-eqz v0, :cond_5

    .line 305
    :cond_0
    iget-boolean v0, p2, Lme/zhanghai/android/materialprogressbar/MaterialProgressBar$TintInfo;->mHasTintList:Z

    const/16 v1, 0x15

    if-eqz v0, :cond_2

    .line 306
    instance-of v0, p1, Lme/zhanghai/android/materialprogressbar/TintableDrawable;

    if-eqz v0, :cond_1

    .line 307
    move-object v0, p1

    check-cast v0, Lme/zhanghai/android/materialprogressbar/TintableDrawable;

    iget-object v2, p2, Lme/zhanghai/android/materialprogressbar/MaterialProgressBar$TintInfo;->mTintList:Landroid/content/res/ColorStateList;

    invoke-interface {v0, v2}, Lme/zhanghai/android/materialprogressbar/TintableDrawable;->setTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    .line 309
    :cond_1
    sget-object v0, Lme/zhanghai/android/materialprogressbar/MaterialProgressBar;->TAG:Ljava/lang/String;

    const-string v2, "drawable did not implement TintableDrawable, it won\'t be tinted below Lollipop"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v1, :cond_2

    .line 311
    iget-object v0, p2, Lme/zhanghai/android/materialprogressbar/MaterialProgressBar$TintInfo;->mTintList:Landroid/content/res/ColorStateList;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 316
    :cond_2
    :goto_0
    iget-boolean v0, p2, Lme/zhanghai/android/materialprogressbar/MaterialProgressBar$TintInfo;->mHasTintMode:Z

    if-eqz v0, :cond_4

    .line 317
    instance-of v0, p1, Lme/zhanghai/android/materialprogressbar/TintableDrawable;

    if-eqz v0, :cond_3

    .line 318
    move-object v0, p1

    check-cast v0, Lme/zhanghai/android/materialprogressbar/TintableDrawable;

    iget-object p2, p2, Lme/zhanghai/android/materialprogressbar/MaterialProgressBar$TintInfo;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-interface {v0, p2}, Lme/zhanghai/android/materialprogressbar/TintableDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    goto :goto_1

    .line 320
    :cond_3
    sget-object v0, Lme/zhanghai/android/materialprogressbar/MaterialProgressBar;->TAG:Ljava/lang/String;

    const-string v2, "drawable did not implement TintableDrawable, it won\'t be tinted below Lollipop"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v1, :cond_4

    .line 322
    iget-object p2, p2, Lme/zhanghai/android/materialprogressbar/MaterialProgressBar$TintInfo;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 329
    :cond_4
    :goto_1
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result p2

    if-eqz p2, :cond_5

    .line 330
    invoke-virtual {p0}, Lme/zhanghai/android/materialprogressbar/MaterialProgressBar;->getDrawableState()[I

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_5
    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 5

    .line 64
    sget-object v0, Lme/zhanghai/android/materialprogressbar/R$styleable;->MaterialProgressBar:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 66
    sget p3, Lme/zhanghai/android/materialprogressbar/R$styleable;->MaterialProgressBar_mpb_progressStyle:I

    const/4 p4, 0x0

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    iput p3, p0, Lme/zhanghai/android/materialprogressbar/MaterialProgressBar;->mProgressStyle:I

    .line 68
    sget p3, Lme/zhanghai/android/materialprogressbar/R$styleable;->MaterialProgressBar_mpb_setBothDrawables:I

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    .line 70
    sget v0, Lme/zhanghai/android/materialprogressbar/R$styleable;->MaterialProgressBar_mpb_useIntrinsicPadding:I

    const/4 v1, 0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    .line 72
    sget v2, Lme/zhanghai/android/materialprogressbar/R$styleable;->MaterialProgressBar_mpb_showTrack:I

    iget v3, p0, Lme/zhanghai/android/materialprogressbar/MaterialProgressBar;->mProgressStyle:I

    if-ne v3, v1, :cond_0

    const/4 p4, 0x1

    :cond_0
    invoke-virtual {p2, v2, p4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p4

    .line 74
    sget v2, Lme/zhanghai/android/materialprogressbar/R$styleable;->MaterialProgressBar_android_tint:I

    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 75
    iget-object v2, p0, Lme/zhanghai/android/materialprogressbar/MaterialProgressBar;->mProgressTint:Lme/zhanghai/android/materialprogressbar/MaterialProgressBar$TintInfo;

    sget v3, Lme/zhanghai/android/materialprogressbar/R$styleable;->MaterialProgressBar_android_tint:I

    invoke-virtual {p2, v3}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    iput-object v3, v2, Lme/zhanghai/android/materialprogressbar/MaterialProgressBar$TintInfo;->mTintList:Landroid/content/res/ColorStateList;

    .line 77
    iget-object v2, p0, Lme/zhanghai/android/materialprogressbar/MaterialProgressBar;->mProgressTint:Lme/zhanghai/android/materialprogressbar/MaterialProgressBar$TintInfo;

    iput-boolean v1, v2, Lme/zhanghai/android/materialprogressbar/MaterialProgressBar$TintInfo;->mHasTintList:Z

    .line 79
    :cond_1
    sget v2, Lme/zhanghai/android/materialprogressbar/R$styleable;->MaterialProgressBar_mpb_tintMode:I

    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 80
    iget-object v2, p0, Lme/zhanghai/android/materialprogressbar/MaterialProgressBar;->mProgressTint:Lme/zhanghai/android/materialprogressbar/MaterialProgressBar$TintInfo;

    sget v3, Lme/zhanghai/android/materialprogressbar/R$styleable;->MaterialProgressBar_mpb_tintMode:I

    const/4 v4, -0x1

    invoke-virtual {p2, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lme/zhanghai/android/materialprogressbar/internal/DrawableCompat;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v3

    iput-object v3, v2, Lme/zhanghai/android/materialprogressbar/MaterialProgressBar$TintInfo;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 82
    iget-object v2, p0, Lme/zhanghai/android/materialprogressbar/MaterialProgressBar;->mProgressTint:Lme/zhanghai/android/materialprogressbar/MaterialProgressBar$TintInfo;

    iput-boolean v1, v2, Lme/zhanghai/android/materialprogressbar/MaterialProgressBar$TintInfo;->mHasTintMode:Z

    .line 84
    :cond_2
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 86
    iget p2, p0, Lme/zhanghai/android/materialprogressbar/MaterialProgressBar;->mProgressStyle:I

    packed-switch p2, :pswitch_data_0

    .line 104
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unknown progress style: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lme/zhanghai/android/materialprogressbar/MaterialProgressBar;->mProgressStyle:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 96
    :pswitch_0
    invoke-virtual {p0}, Lme/zhanghai/android/materialprogressbar/MaterialProgressBar;->isIndeterminate()Z

    move-result p2

    if-nez p2, :cond_3

    if-eqz p3, :cond_4

    .line 97
    :cond_3
    new-instance p2, Lme/zhanghai/android/materialprogressbar/IndeterminateHorizontalProgressDrawable;

    invoke-direct {p2, p1}, Lme/zhanghai/android/materialprogressbar/IndeterminateHorizontalProgressDrawable;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, p2}, Lme/zhanghai/android/materialprogressbar/MaterialProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 99
    :cond_4
    invoke-virtual {p0}, Lme/zhanghai/android/materialprogressbar/MaterialProgressBar;->isIndeterminate()Z

    move-result p2

    if-eqz p2, :cond_5

    if-eqz p3, :cond_7

    .line 100
    :cond_5
    new-instance p2, Lme/zhanghai/android/materialprogressbar/HorizontalProgressDrawable;

    invoke-direct {p2, p1}, Lme/zhanghai/android/materialprogressbar/HorizontalProgressDrawable;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, p2}, Lme/zhanghai/android/materialprogressbar/MaterialProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 88
    :pswitch_1
    invoke-virtual {p0}, Lme/zhanghai/android/materialprogressbar/MaterialProgressBar;->isIndeterminate()Z

    move-result p2

    if-eqz p2, :cond_8

    if-eqz p3, :cond_6

    goto :goto_1

    .line 92
    :cond_6
    new-instance p2, Lme/zhanghai/android/materialprogressbar/IndeterminateProgressDrawable;

    invoke-direct {p2, p1}, Lme/zhanghai/android/materialprogressbar/IndeterminateProgressDrawable;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, p2}, Lme/zhanghai/android/materialprogressbar/MaterialProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 106
    :cond_7
    :goto_0
    invoke-virtual {p0, v0}, Lme/zhanghai/android/materialprogressbar/MaterialProgressBar;->setUseIntrinsicPadding(Z)V

    .line 107
    invoke-virtual {p0, p4}, Lme/zhanghai/android/materialprogressbar/MaterialProgressBar;->setShowTrack(Z)V

    return-void

    .line 89
    :cond_8
    :goto_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Determinate circular drawable is not yet supported"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 125
    invoke-virtual {p0}, Lme/zhanghai/android/materialprogressbar/MaterialProgressBar;->isIndeterminate()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lme/zhanghai/android/materialprogressbar/MaterialProgressBar;->getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lme/zhanghai/android/materialprogressbar/MaterialProgressBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getProgressStyle()I
    .locals 1

    .line 116
    iget v0, p0, Lme/zhanghai/android/materialprogressbar/MaterialProgressBar;->mProgressStyle:I

    return v0
.end method

.method public getProgressTintList()Landroid/content/res/ColorStateList;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 222
    iget-object v0, p0, Lme/zhanghai/android/materialprogressbar/MaterialProgressBar;->mProgressTint:Lme/zhanghai/android/materialprogressbar/MaterialProgressBar$TintInfo;

    iget-object v0, v0, Lme/zhanghai/android/materialprogressbar/MaterialProgressBar$TintInfo;->mTintList:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getProgressTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 255
    iget-object v0, p0, Lme/zhanghai/android/materialprogressbar/MaterialProgressBar;->mProgressTint:Lme/zhanghai/android/materialprogressbar/MaterialProgressBar$TintInfo;

    iget-object v0, v0, Lme/zhanghai/android/materialprogressbar/MaterialProgressBar$TintInfo;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    return-object v0
.end method

.method public getShowTrack()Z
    .locals 2

    .line 167
    invoke-virtual {p0}, Lme/zhanghai/android/materialprogressbar/MaterialProgressBar;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 168
    instance-of v1, v0, Lme/zhanghai/android/materialprogressbar/ShowTrackDrawable;

    if-eqz v1, :cond_0

    .line 169
    check-cast v0, Lme/zhanghai/android/materialprogressbar/ShowTrackDrawable;

    invoke-interface {v0}, Lme/zhanghai/android/materialprogressbar/ShowTrackDrawable;->getShowTrack()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getUseIntrinsicPadding()Z
    .locals 2

    .line 136
    invoke-virtual {p0}, Lme/zhanghai/android/materialprogressbar/MaterialProgressBar;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 137
    instance-of v1, v0, Lme/zhanghai/android/materialprogressbar/IntrinsicPaddingDrawable;

    if-eqz v1, :cond_0

    .line 138
    check-cast v0, Lme/zhanghai/android/materialprogressbar/IntrinsicPaddingDrawable;

    invoke-interface {v0}, Lme/zhanghai/android/materialprogressbar/IntrinsicPaddingDrawable;->getUseIntrinsicPadding()Z

    move-result v0

    return v0

    .line 140
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Drawable does not implement IntrinsicPaddingDrawable"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 205
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 208
    iget-object p1, p0, Lme/zhanghai/android/materialprogressbar/MaterialProgressBar;->mProgressTint:Lme/zhanghai/android/materialprogressbar/MaterialProgressBar$TintInfo;

    if-eqz p1, :cond_0

    .line 209
    invoke-direct {p0}, Lme/zhanghai/android/materialprogressbar/MaterialProgressBar;->applyIndeterminateProgressTint()V

    :cond_0
    return-void
.end method

.method public setProgressDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 195
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 198
    iget-object p1, p0, Lme/zhanghai/android/materialprogressbar/MaterialProgressBar;->mProgressTint:Lme/zhanghai/android/materialprogressbar/MaterialProgressBar$TintInfo;

    if-eqz p1, :cond_0

    .line 199
    invoke-direct {p0}, Lme/zhanghai/android/materialprogressbar/MaterialProgressBar;->applyDeterminateProgressTint()V

    :cond_0
    return-void
.end method

.method public setProgressTintList(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 240
    iget-object v0, p0, Lme/zhanghai/android/materialprogressbar/MaterialProgressBar;->mProgressTint:Lme/zhanghai/android/materialprogressbar/MaterialProgressBar$TintInfo;

    iput-object p1, v0, Lme/zhanghai/android/materialprogressbar/MaterialProgressBar$TintInfo;->mTintList:Landroid/content/res/ColorStateList;

    .line 241
    iget-object p1, p0, Lme/zhanghai/android/materialprogressbar/MaterialProgressBar;->mProgressTint:Lme/zhanghai/android/materialprogressbar/MaterialProgressBar$TintInfo;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lme/zhanghai/android/materialprogressbar/MaterialProgressBar$TintInfo;->mHasTintList:Z

    .line 243
    invoke-direct {p0}, Lme/zhanghai/android/materialprogressbar/MaterialProgressBar;->applyProgressTint()V

    return-void
.end method

.method public setProgressTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1
    .param p1    # Landroid/graphics/PorterDuff$Mode;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 269
    iget-object v0, p0, Lme/zhanghai/android/materialprogressbar/MaterialProgressBar;->mProgressTint:Lme/zhanghai/android/materialprogressbar/MaterialProgressBar$TintInfo;

    iput-object p1, v0, Lme/zhanghai/android/materialprogressbar/MaterialProgressBar$TintInfo;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 270
    iget-object p1, p0, Lme/zhanghai/android/materialprogressbar/MaterialProgressBar;->mProgressTint:Lme/zhanghai/android/materialprogressbar/MaterialProgressBar$TintInfo;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lme/zhanghai/android/materialprogressbar/MaterialProgressBar$TintInfo;->mHasTintMode:Z

    .line 272
    invoke-direct {p0}, Lme/zhanghai/android/materialprogressbar/MaterialProgressBar;->applyProgressTint()V

    return-void
.end method

.method public setShowTrack(Z)V
    .locals 2

    .line 185
    invoke-virtual {p0}, Lme/zhanghai/android/materialprogressbar/MaterialProgressBar;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 186
    instance-of v1, v0, Lme/zhanghai/android/materialprogressbar/ShowTrackDrawable;

    if-eqz v1, :cond_0

    .line 187
    check-cast v0, Lme/zhanghai/android/materialprogressbar/ShowTrackDrawable;

    invoke-interface {v0, p1}, Lme/zhanghai/android/materialprogressbar/ShowTrackDrawable;->setShowTrack(Z)V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 189
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Drawable does not implement ShowTrackDrawable"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public setUseIntrinsicPadding(Z)V
    .locals 2

    .line 152
    invoke-virtual {p0}, Lme/zhanghai/android/materialprogressbar/MaterialProgressBar;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 153
    instance-of v1, v0, Lme/zhanghai/android/materialprogressbar/IntrinsicPaddingDrawable;

    if-eqz v1, :cond_0

    .line 154
    check-cast v0, Lme/zhanghai/android/materialprogressbar/IntrinsicPaddingDrawable;

    invoke-interface {v0, p1}, Lme/zhanghai/android/materialprogressbar/IntrinsicPaddingDrawable;->setUseIntrinsicPadding(Z)V

    return-void

    .line 156
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Drawable does not implement IntrinsicPaddingDrawable"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
