.class public Lcom/flyco/dialog/widget/ActionSheetDialog;
.super Lcom/flyco/dialog/widget/base/BottomBaseDialog;
.source "ActionSheetDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flyco/dialog/widget/ActionSheetDialog$ListDialogAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/flyco/dialog/widget/base/BottomBaseDialog<",
        "Lcom/flyco/dialog/widget/ActionSheetDialog;",
        ">;"
    }
.end annotation


# instance fields
.field private mAdapter:Landroid/widget/BaseAdapter;

.field private mCancelText:Ljava/lang/String;

.field private mCancelTextColor:I

.field private mCancelTextSize:F

.field private mContents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/flyco/dialog/entity/DialogMenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private mCornerRadius:F

.field private mDividerColor:I

.field private mDividerHeight:F

.field private mIsTitleShow:Z

.field private mItemHeight:F

.field private mItemPressColor:I

.field private mItemTextColor:I

.field private mItemTextSize:F

.field private mLac:Landroid/view/animation/LayoutAnimationController;

.field private mLv:Landroid/widget/ListView;

.field private mLvBgColor:I

.field private mOnOperItemClickL:Lcom/flyco/dialog/listener/OnOperItemClickL;

.field private mTitle:Ljava/lang/String;

.field private mTitleBgColor:I

.field private mTitleHeight:F

.field private mTitleTextColor:I

.field private mTitleTextSize:F

.field private mTvCancel:Landroid/widget/TextView;

.field private mTvTitle:Landroid/widget/TextView;

.field private mVLineTitle:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/BaseAdapter;Landroid/view/View;)V
    .locals 1

    .line 104
    invoke-direct {p0, p1, p3}, Lcom/flyco/dialog/widget/base/BottomBaseDialog;-><init>(Landroid/content/Context;Landroid/view/View;)V

    const/high16 p1, 0x40a00000    # 5.0f

    .line 43
    iput p1, p0, Lcom/flyco/dialog/widget/ActionSheetDialog;->mCornerRadius:F

    const-string p1, "#ddffffff"

    .line 45
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/flyco/dialog/widget/ActionSheetDialog;->mTitleBgColor:I

    const-string p1, "\u63d0\u793a"

    .line 47
    iput-object p1, p0, Lcom/flyco/dialog/widget/ActionSheetDialog;->mTitle:Ljava/lang/String;

    const/high16 p1, 0x42400000    # 48.0f

    .line 49
    iput p1, p0, Lcom/flyco/dialog/widget/ActionSheetDialog;->mTitleHeight:F

    const-string p3, "#8F8F8F"

    .line 51
    invoke-static {p3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p3

    iput p3, p0, Lcom/flyco/dialog/widget/ActionSheetDialog;->mTitleTextColor:I

    const/high16 p3, 0x418c0000    # 17.5f

    .line 53
    iput p3, p0, Lcom/flyco/dialog/widget/ActionSheetDialog;->mTitleTextSize:F

    const-string v0, "#ddffffff"

    .line 55
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/flyco/dialog/widget/ActionSheetDialog;->mLvBgColor:I

    const-string v0, "#D7D7D9"

    .line 57
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/flyco/dialog/widget/ActionSheetDialog;->mDividerColor:I

    const v0, 0x3f4ccccd    # 0.8f

    .line 59
    iput v0, p0, Lcom/flyco/dialog/widget/ActionSheetDialog;->mDividerHeight:F

    const-string v0, "#ffcccccc"

    .line 61
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/flyco/dialog/widget/ActionSheetDialog;->mItemPressColor:I

    const-string v0, "#44A2FF"

    .line 63
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/flyco/dialog/widget/ActionSheetDialog;->mItemTextColor:I

    .line 65
    iput p3, p0, Lcom/flyco/dialog/widget/ActionSheetDialog;->mItemTextSize:F

    .line 67
    iput p1, p0, Lcom/flyco/dialog/widget/ActionSheetDialog;->mItemHeight:F

    const/4 p1, 0x1

    .line 69
    iput-boolean p1, p0, Lcom/flyco/dialog/widget/ActionSheetDialog;->mIsTitleShow:Z

    const-string p1, "\u53d6\u6d88"

    .line 71
    iput-object p1, p0, Lcom/flyco/dialog/widget/ActionSheetDialog;->mCancelText:Ljava/lang/String;

    const-string p1, "#44A2FF"

    .line 73
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/flyco/dialog/widget/ActionSheetDialog;->mCancelTextColor:I

    .line 75
    iput p3, p0, Lcom/flyco/dialog/widget/ActionSheetDialog;->mCancelTextSize:F

    .line 79
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/flyco/dialog/widget/ActionSheetDialog;->mContents:Ljava/util/ArrayList;

    .line 105
    iput-object p2, p0, Lcom/flyco/dialog/widget/ActionSheetDialog;->mAdapter:Landroid/widget/BaseAdapter;

    .line 106
    invoke-direct {p0}, Lcom/flyco/dialog/widget/ActionSheetDialog;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/flyco/dialog/entity/DialogMenuItem;",
            ">;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .line 88
    invoke-direct {p0, p1, p3}, Lcom/flyco/dialog/widget/base/BottomBaseDialog;-><init>(Landroid/content/Context;Landroid/view/View;)V

    const/high16 p1, 0x40a00000    # 5.0f

    .line 43
    iput p1, p0, Lcom/flyco/dialog/widget/ActionSheetDialog;->mCornerRadius:F

    const-string p1, "#ddffffff"

    .line 45
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/flyco/dialog/widget/ActionSheetDialog;->mTitleBgColor:I

    const-string p1, "\u63d0\u793a"

    .line 47
    iput-object p1, p0, Lcom/flyco/dialog/widget/ActionSheetDialog;->mTitle:Ljava/lang/String;

    const/high16 p1, 0x42400000    # 48.0f

    .line 49
    iput p1, p0, Lcom/flyco/dialog/widget/ActionSheetDialog;->mTitleHeight:F

    const-string p3, "#8F8F8F"

    .line 51
    invoke-static {p3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p3

    iput p3, p0, Lcom/flyco/dialog/widget/ActionSheetDialog;->mTitleTextColor:I

    const/high16 p3, 0x418c0000    # 17.5f

    .line 53
    iput p3, p0, Lcom/flyco/dialog/widget/ActionSheetDialog;->mTitleTextSize:F

    const-string v0, "#ddffffff"

    .line 55
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/flyco/dialog/widget/ActionSheetDialog;->mLvBgColor:I

    const-string v0, "#D7D7D9"

    .line 57
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/flyco/dialog/widget/ActionSheetDialog;->mDividerColor:I

    const v0, 0x3f4ccccd    # 0.8f

    .line 59
    iput v0, p0, Lcom/flyco/dialog/widget/ActionSheetDialog;->mDividerHeight:F

    const-string v0, "#ffcccccc"

    .line 61
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/flyco/dialog/widget/ActionSheetDialog;->mItemPressColor:I

    const-string v0, "#44A2FF"

    .line 63
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/flyco/dialog/widget/ActionSheetDialog;->mItemTextColor:I

    .line 65
    iput p3, p0, Lcom/flyco/dialog/widget/ActionSheetDialog;->mItemTextSize:F

    .line 67
    iput p1, p0, Lcom/flyco/dialog/widget/ActionSheetDialog;->mItemHeight:F

    const/4 p1, 0x1

    .line 69
    iput-boolean p1, p0, Lcom/flyco/dialog/widget/ActionSheetDialog;->mIsTitleShow:Z

    const-string p1, "\u53d6\u6d88"

    .line 71
    iput-object p1, p0, Lcom/flyco/dialog/widget/ActionSheetDialog;->mCancelText:Ljava/lang/String;

    const-string p1, "#44A2FF"

    .line 73
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/flyco/dialog/widget/ActionSheetDialog;->mCancelTextColor:I

    .line 75
    iput p3, p0, Lcom/flyco/dialog/widget/ActionSheetDialog;->mCancelTextSize:F

    .line 79
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/flyco/dialog/widget/ActionSheetDialog;->mContents:Ljava/util/ArrayList;

    .line 89
    iget-object p1, p0, Lcom/flyco/dialog/widget/ActionSheetDialog;->mContents:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 90
    invoke-direct {p0}, Lcom/flyco/dialog/widget/ActionSheetDialog;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;[Ljava/lang/String;Landroid/view/View;)V
    .locals 3

    .line 94
    invoke-direct {p0, p1, p3}, Lcom/flyco/dialog/widget/base/BottomBaseDialog;-><init>(Landroid/content/Context;Landroid/view/View;)V

    const/high16 p1, 0x40a00000    # 5.0f

    .line 43
    iput p1, p0, Lcom/flyco/dialog/widget/ActionSheetDialog;->mCornerRadius:F

    const-string p1, "#ddffffff"

    .line 45
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/flyco/dialog/widget/ActionSheetDialog;->mTitleBgColor:I

    const-string p1, "\u63d0\u793a"

    .line 47
    iput-object p1, p0, Lcom/flyco/dialog/widget/ActionSheetDialog;->mTitle:Ljava/lang/String;

    const/high16 p1, 0x42400000    # 48.0f

    .line 49
    iput p1, p0, Lcom/flyco/dialog/widget/ActionSheetDialog;->mTitleHeight:F

    const-string p3, "#8F8F8F"

    .line 51
    invoke-static {p3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p3

    iput p3, p0, Lcom/flyco/dialog/widget/ActionSheetDialog;->mTitleTextColor:I

    const/high16 p3, 0x418c0000    # 17.5f

    .line 53
    iput p3, p0, Lcom/flyco/dialog/widget/ActionSheetDialog;->mTitleTextSize:F

    const-string v0, "#ddffffff"

    .line 55
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/flyco/dialog/widget/ActionSheetDialog;->mLvBgColor:I

    const-string v0, "#D7D7D9"

    .line 57
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/flyco/dialog/widget/ActionSheetDialog;->mDividerColor:I

    const v0, 0x3f4ccccd    # 0.8f

    .line 59
    iput v0, p0, Lcom/flyco/dialog/widget/ActionSheetDialog;->mDividerHeight:F

    const-string v0, "#ffcccccc"

    .line 61
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/flyco/dialog/widget/ActionSheetDialog;->mItemPressColor:I

    const-string v0, "#44A2FF"

    .line 63
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/flyco/dialog/widget/ActionSheetDialog;->mItemTextColor:I

    .line 65
    iput p3, p0, Lcom/flyco/dialog/widget/ActionSheetDialog;->mItemTextSize:F

    .line 67
    iput p1, p0, Lcom/flyco/dialog/widget/ActionSheetDialog;->mItemHeight:F

    const/4 p1, 0x1

    .line 69
    iput-boolean p1, p0, Lcom/flyco/dialog/widget/ActionSheetDialog;->mIsTitleShow:Z

    const-string p1, "\u53d6\u6d88"

    .line 71
    iput-object p1, p0, Lcom/flyco/dialog/widget/ActionSheetDialog;->mCancelText:Ljava/lang/String;

    const-string p1, "#44A2FF"

    .line 73
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/flyco/dialog/widget/ActionSheetDialog;->mCancelTextColor:I

    .line 75
    iput p3, p0, Lcom/flyco/dialog/widget/ActionSheetDialog;->mCancelTextSize:F

    .line 79
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/flyco/dialog/widget/ActionSheetDialog;->mContents:Ljava/util/ArrayList;

    .line 95
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/flyco/dialog/widget/ActionSheetDialog;->mContents:Ljava/util/ArrayList;

    .line 96
    array-length p1, p2

    const/4 p3, 0x0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    aget-object v1, p2, v0

    .line 97
    new-instance v2, Lcom/flyco/dialog/entity/DialogMenuItem;

    invoke-direct {v2, v1, p3}, Lcom/flyco/dialog/entity/DialogMenuItem;-><init>(Ljava/lang/String;I)V

    .line 98
    iget-object v1, p0, Lcom/flyco/dialog/widget/ActionSheetDialog;->mContents:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 100
    :cond_0
    invoke-direct {p0}, Lcom/flyco/dialog/widget/ActionSheetDialog;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/flyco/dialog/widget/ActionSheetDialog;)Lcom/flyco/dialog/listener/OnOperItemClickL;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/flyco/dialog/widget/ActionSheetDialog;->mOnOperItemClickL:Lcom/flyco/dialog/listener/OnOperItemClickL;

    return-object p0
.end method

.method static synthetic access$100(Lcom/flyco/dialog/widget/ActionSheetDialog;)Ljava/util/ArrayList;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/flyco/dialog/widget/ActionSheetDialog;->mContents:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/flyco/dialog/widget/ActionSheetDialog;)F
    .locals 0

    .line 33
    iget p0, p0, Lcom/flyco/dialog/widget/ActionSheetDialog;->mCornerRadius:F

    return p0
.end method

.method static synthetic access$1100(Lcom/flyco/dialog/widget/ActionSheetDialog;F)I
    .locals 0

    .line 33
    invoke-virtual {p0, p1}, Lcom/flyco/dialog/widget/ActionSheetDialog;->dp2px(F)I

    move-result p0

    return p0
.end method

.method static synthetic access$1200(Lcom/flyco/dialog/widget/ActionSheetDialog;)Z
    .locals 0

    .line 33
    iget-boolean p0, p0, Lcom/flyco/dialog/widget/ActionSheetDialog;->mIsTitleShow:Z

    return p0
.end method

.method static synthetic access$1300(Lcom/flyco/dialog/widget/ActionSheetDialog;)I
    .locals 0

    .line 33
    iget p0, p0, Lcom/flyco/dialog/widget/ActionSheetDialog;->mItemPressColor:I

    return p0
.end method

.method static synthetic access$200(Lcom/flyco/dialog/widget/ActionSheetDialog;)Landroid/content/Context;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/flyco/dialog/widget/ActionSheetDialog;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$300(Lcom/flyco/dialog/widget/ActionSheetDialog;)Landroid/content/Context;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/flyco/dialog/widget/ActionSheetDialog;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$400(Lcom/flyco/dialog/widget/ActionSheetDialog;F)I
    .locals 0

    .line 33
    invoke-virtual {p0, p1}, Lcom/flyco/dialog/widget/ActionSheetDialog;->dp2px(F)I

    move-result p0

    return p0
.end method

.method static synthetic access$500(Lcom/flyco/dialog/widget/ActionSheetDialog;)Landroid/content/Context;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/flyco/dialog/widget/ActionSheetDialog;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$600(Lcom/flyco/dialog/widget/ActionSheetDialog;)I
    .locals 0

    .line 33
    iget p0, p0, Lcom/flyco/dialog/widget/ActionSheetDialog;->mItemTextColor:I

    return p0
.end method

.method static synthetic access$700(Lcom/flyco/dialog/widget/ActionSheetDialog;)F
    .locals 0

    .line 33
    iget p0, p0, Lcom/flyco/dialog/widget/ActionSheetDialog;->mItemTextSize:F

    return p0
.end method

.method static synthetic access$800(Lcom/flyco/dialog/widget/ActionSheetDialog;)F
    .locals 0

    .line 33
    iget p0, p0, Lcom/flyco/dialog/widget/ActionSheetDialog;->mItemHeight:F

    return p0
.end method

.method static synthetic access$900(Lcom/flyco/dialog/widget/ActionSheetDialog;F)I
    .locals 0

    .line 33
    invoke-virtual {p0, p1}, Lcom/flyco/dialog/widget/ActionSheetDialog;->dp2px(F)I

    move-result p0

    return p0
.end method

.method private init()V
    .locals 10

    const v0, 0x3f733333    # 0.95f

    .line 110
    invoke-virtual {p0, v0}, Lcom/flyco/dialog/widget/ActionSheetDialog;->widthScale(F)Lcom/flyco/dialog/widget/base/BaseDialog;

    .line 112
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/high16 v7, 0x40c00000    # 6.0f

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 114
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const-wide/16 v1, 0x15e

    .line 115
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    const-wide/16 v1, 0x96

    .line 116
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setStartOffset(J)V

    .line 118
    new-instance v1, Landroid/view/animation/LayoutAnimationController;

    const v2, 0x3df5c28f    # 0.12f

    invoke-direct {v1, v0, v2}, Landroid/view/animation/LayoutAnimationController;-><init>(Landroid/view/animation/Animation;F)V

    iput-object v1, p0, Lcom/flyco/dialog/widget/ActionSheetDialog;->mLac:Landroid/view/animation/LayoutAnimationController;

    .line 119
    iget-object v0, p0, Lcom/flyco/dialog/widget/ActionSheetDialog;->mLac:Landroid/view/animation/LayoutAnimationController;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/LayoutAnimationController;->setInterpolator(Landroid/view/animation/Interpolator;)V

    return-void
.end method


# virtual methods
.method public cancelText(I)Lcom/flyco/dialog/widget/ActionSheetDialog;
    .locals 0

    .line 322
    iput p1, p0, Lcom/flyco/dialog/widget/ActionSheetDialog;->mCancelTextColor:I

    return-object p0
.end method

.method public cancelText(Ljava/lang/String;)Lcom/flyco/dialog/widget/ActionSheetDialog;
    .locals 0

    .line 316
    iput-object p1, p0, Lcom/flyco/dialog/widget/ActionSheetDialog;->mCancelText:Ljava/lang/String;

    return-object p0
.end method

.method public cancelTextSize(F)Lcom/flyco/dialog/widget/ActionSheetDialog;
    .locals 0

    .line 328
    iput p1, p0, Lcom/flyco/dialog/widget/ActionSheetDialog;->mCancelTextSize:F

    return-object p0
.end method

.method public cornerRadius(F)Lcom/flyco/dialog/widget/ActionSheetDialog;
    .locals 0

    .line 268
    iput p1, p0, Lcom/flyco/dialog/widget/ActionSheetDialog;->mCornerRadius:F

    return-object p0
.end method

.method public dividerColor(I)Lcom/flyco/dialog/widget/ActionSheetDialog;
    .locals 0

    .line 274
    iput p1, p0, Lcom/flyco/dialog/widget/ActionSheetDialog;->mDividerColor:I

    return-object p0
.end method

.method public dividerHeight(F)Lcom/flyco/dialog/widget/ActionSheetDialog;
    .locals 0

    .line 280
    iput p1, p0, Lcom/flyco/dialog/widget/ActionSheetDialog;->mDividerHeight:F

    return-object p0
.end method

.method public isTitleShow(Z)Lcom/flyco/dialog/widget/ActionSheetDialog;
    .locals 0

    .line 256
    iput-boolean p1, p0, Lcom/flyco/dialog/widget/ActionSheetDialog;->mIsTitleShow:Z

    return-object p0
.end method

.method public itemHeight(F)Lcom/flyco/dialog/widget/ActionSheetDialog;
    .locals 0

    .line 304
    iput p1, p0, Lcom/flyco/dialog/widget/ActionSheetDialog;->mItemHeight:F

    return-object p0
.end method

.method public itemPressColor(I)Lcom/flyco/dialog/widget/ActionSheetDialog;
    .locals 0

    .line 286
    iput p1, p0, Lcom/flyco/dialog/widget/ActionSheetDialog;->mItemPressColor:I

    return-object p0
.end method

.method public itemTextColor(I)Lcom/flyco/dialog/widget/ActionSheetDialog;
    .locals 0

    .line 292
    iput p1, p0, Lcom/flyco/dialog/widget/ActionSheetDialog;->mItemTextColor:I

    return-object p0
.end method

.method public itemTextSize(F)Lcom/flyco/dialog/widget/ActionSheetDialog;
    .locals 0

    .line 298
    iput p1, p0, Lcom/flyco/dialog/widget/ActionSheetDialog;->mItemTextSize:F

    return-object p0
.end method

.method public layoutAnimation(Landroid/view/animation/LayoutAnimationController;)Lcom/flyco/dialog/widget/ActionSheetDialog;
    .locals 0

    .line 310
    iput-object p1, p0, Lcom/flyco/dialog/widget/ActionSheetDialog;->mLac:Landroid/view/animation/LayoutAnimationController;

    return-object p0
.end method

.method public lvBgColor(I)Lcom/flyco/dialog/widget/ActionSheetDialog;
    .locals 0

    .line 262
    iput p1, p0, Lcom/flyco/dialog/widget/ActionSheetDialog;->mLvBgColor:I

    return-object p0
.end method

.method public onCreateView()Landroid/view/View;
    .locals 8

    .line 124
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/flyco/dialog/widget/ActionSheetDialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 125
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/4 v1, 0x0

    .line 126
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 129
    new-instance v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/flyco/dialog/widget/ActionSheetDialog;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/flyco/dialog/widget/ActionSheetDialog;->mTvTitle:Landroid/widget/TextView;

    .line 130
    iget-object v2, p0, Lcom/flyco/dialog/widget/ActionSheetDialog;->mTvTitle:Landroid/widget/TextView;

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 131
    iget-object v2, p0, Lcom/flyco/dialog/widget/ActionSheetDialog;->mTvTitle:Landroid/widget/TextView;

    const/high16 v4, 0x41200000    # 10.0f

    invoke-virtual {p0, v4}, Lcom/flyco/dialog/widget/ActionSheetDialog;->dp2px(F)I

    move-result v5

    const/high16 v6, 0x40a00000    # 5.0f

    invoke-virtual {p0, v6}, Lcom/flyco/dialog/widget/ActionSheetDialog;->dp2px(F)I

    move-result v7

    invoke-virtual {p0, v4}, Lcom/flyco/dialog/widget/ActionSheetDialog;->dp2px(F)I

    move-result v4

    invoke-virtual {p0, v6}, Lcom/flyco/dialog/widget/ActionSheetDialog;->dp2px(F)I

    move-result v6

    invoke-virtual {v2, v5, v7, v4, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 133
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    const/4 v5, -0x1

    invoke-direct {v2, v5, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v6, 0x41a00000    # 20.0f

    .line 134
    invoke-virtual {p0, v6}, Lcom/flyco/dialog/widget/ActionSheetDialog;->dp2px(F)I

    move-result v6

    iput v6, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 136
    iget-object v6, p0, Lcom/flyco/dialog/widget/ActionSheetDialog;->mTvTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v6, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 139
    new-instance v2, Landroid/view/View;

    iget-object v6, p0, Lcom/flyco/dialog/widget/ActionSheetDialog;->mContext:Landroid/content/Context;

    invoke-direct {v2, v6}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/flyco/dialog/widget/ActionSheetDialog;->mVLineTitle:Landroid/view/View;

    .line 140
    iget-object v2, p0, Lcom/flyco/dialog/widget/ActionSheetDialog;->mVLineTitle:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 143
    new-instance v2, Landroid/widget/ListView;

    iget-object v6, p0, Lcom/flyco/dialog/widget/ActionSheetDialog;->mContext:Landroid/content/Context;

    invoke-direct {v2, v6}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/flyco/dialog/widget/ActionSheetDialog;->mLv:Landroid/widget/ListView;

    .line 144
    iget-object v2, p0, Lcom/flyco/dialog/widget/ActionSheetDialog;->mLv:Landroid/widget/ListView;

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v6, v5, v4, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v2, v6}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 145
    iget-object v2, p0, Lcom/flyco/dialog/widget/ActionSheetDialog;->mLv:Landroid/widget/ListView;

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->setCacheColorHint(I)V

    .line 146
    iget-object v2, p0, Lcom/flyco/dialog/widget/ActionSheetDialog;->mLv:Landroid/widget/ListView;

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->setFadingEdgeLength(I)V

    .line 147
    iget-object v2, p0, Lcom/flyco/dialog/widget/ActionSheetDialog;->mLv:Landroid/widget/ListView;

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->setVerticalScrollBarEnabled(Z)V

    .line 148
    iget-object v2, p0, Lcom/flyco/dialog/widget/ActionSheetDialog;->mLv:Landroid/widget/ListView;

    new-instance v6, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v6, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v2, v6}, Landroid/widget/ListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 150
    iget-object v1, p0, Lcom/flyco/dialog/widget/ActionSheetDialog;->mLv:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 153
    new-instance v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/flyco/dialog/widget/ActionSheetDialog;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/flyco/dialog/widget/ActionSheetDialog;->mTvCancel:Landroid/widget/TextView;

    .line 154
    iget-object v1, p0, Lcom/flyco/dialog/widget/ActionSheetDialog;->mTvCancel:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 155
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v5, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v2, 0x40e00000    # 7.0f

    .line 156
    invoke-virtual {p0, v2}, Lcom/flyco/dialog/widget/ActionSheetDialog;->dp2px(F)I

    move-result v3

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 157
    invoke-virtual {p0, v2}, Lcom/flyco/dialog/widget/ActionSheetDialog;->dp2px(F)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 158
    iget-object v2, p0, Lcom/flyco/dialog/widget/ActionSheetDialog;->mTvCancel:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 160
    iget-object v1, p0, Lcom/flyco/dialog/widget/ActionSheetDialog;->mTvCancel:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method public setOnOperItemClickL(Lcom/flyco/dialog/listener/OnOperItemClickL;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/flyco/dialog/widget/ActionSheetDialog;->mOnOperItemClickL:Lcom/flyco/dialog/listener/OnOperItemClickL;

    return-void
.end method

.method public setUiBeforShow()V
    .locals 15

    .line 168
    iget v0, p0, Lcom/flyco/dialog/widget/ActionSheetDialog;->mCornerRadius:F

    invoke-virtual {p0, v0}, Lcom/flyco/dialog/widget/ActionSheetDialog;->dp2px(F)I

    move-result v0

    int-to-float v0, v0

    .line 169
    iget-object v1, p0, Lcom/flyco/dialog/widget/ActionSheetDialog;->mTvTitle:Landroid/widget/TextView;

    iget v2, p0, Lcom/flyco/dialog/widget/ActionSheetDialog;->mTitleHeight:F

    invoke-virtual {p0, v2}, Lcom/flyco/dialog/widget/ActionSheetDialog;->dp2px(F)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setHeight(I)V

    .line 170
    iget-object v1, p0, Lcom/flyco/dialog/widget/ActionSheetDialog;->mTvTitle:Landroid/widget/TextView;

    iget v2, p0, Lcom/flyco/dialog/widget/ActionSheetDialog;->mTitleBgColor:I

    const/16 v3, 0x8

    new-array v4, v3, [F

    const/4 v5, 0x0

    aput v0, v4, v5

    const/4 v6, 0x1

    aput v0, v4, v6

    const/4 v7, 0x2

    aput v0, v4, v7

    const/4 v8, 0x3

    aput v0, v4, v8

    const/4 v9, 0x4

    const/4 v10, 0x0

    aput v10, v4, v9

    const/4 v11, 0x5

    aput v10, v4, v11

    const/4 v12, 0x6

    aput v10, v4, v12

    const/4 v13, 0x7

    aput v10, v4, v13

    invoke-static {v2, v4}, Lcom/flyco/dialog/utils/CornerUtils;->cornerDrawable(I[F)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 172
    iget-object v1, p0, Lcom/flyco/dialog/widget/ActionSheetDialog;->mTvTitle:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/flyco/dialog/widget/ActionSheetDialog;->mTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 173
    iget-object v1, p0, Lcom/flyco/dialog/widget/ActionSheetDialog;->mTvTitle:Landroid/widget/TextView;

    iget v2, p0, Lcom/flyco/dialog/widget/ActionSheetDialog;->mTitleTextSize:F

    invoke-virtual {v1, v7, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 174
    iget-object v1, p0, Lcom/flyco/dialog/widget/ActionSheetDialog;->mTvTitle:Landroid/widget/TextView;

    iget v2, p0, Lcom/flyco/dialog/widget/ActionSheetDialog;->mTitleTextColor:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 175
    iget-object v1, p0, Lcom/flyco/dialog/widget/ActionSheetDialog;->mTvTitle:Landroid/widget/TextView;

    iget-boolean v2, p0, Lcom/flyco/dialog/widget/ActionSheetDialog;->mIsTitleShow:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/16 v2, 0x8

    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 178
    iget-object v1, p0, Lcom/flyco/dialog/widget/ActionSheetDialog;->mVLineTitle:Landroid/view/View;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    iget v14, p0, Lcom/flyco/dialog/widget/ActionSheetDialog;->mDividerHeight:F

    invoke-virtual {p0, v14}, Lcom/flyco/dialog/widget/ActionSheetDialog;->dp2px(F)I

    move-result v14

    invoke-direct {v2, v4, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 179
    iget-object v1, p0, Lcom/flyco/dialog/widget/ActionSheetDialog;->mVLineTitle:Landroid/view/View;

    iget v2, p0, Lcom/flyco/dialog/widget/ActionSheetDialog;->mDividerColor:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 180
    iget-object v1, p0, Lcom/flyco/dialog/widget/ActionSheetDialog;->mVLineTitle:Landroid/view/View;

    iget-boolean v2, p0, Lcom/flyco/dialog/widget/ActionSheetDialog;->mIsTitleShow:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    const/16 v2, 0x8

    :goto_1
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 183
    iget-object v1, p0, Lcom/flyco/dialog/widget/ActionSheetDialog;->mTvCancel:Landroid/widget/TextView;

    iget v2, p0, Lcom/flyco/dialog/widget/ActionSheetDialog;->mItemHeight:F

    invoke-virtual {p0, v2}, Lcom/flyco/dialog/widget/ActionSheetDialog;->dp2px(F)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setHeight(I)V

    .line 184
    iget-object v1, p0, Lcom/flyco/dialog/widget/ActionSheetDialog;->mTvCancel:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/flyco/dialog/widget/ActionSheetDialog;->mCancelText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 185
    iget-object v1, p0, Lcom/flyco/dialog/widget/ActionSheetDialog;->mTvCancel:Landroid/widget/TextView;

    iget v2, p0, Lcom/flyco/dialog/widget/ActionSheetDialog;->mCancelTextSize:F

    invoke-virtual {v1, v7, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 186
    iget-object v1, p0, Lcom/flyco/dialog/widget/ActionSheetDialog;->mTvCancel:Landroid/widget/TextView;

    iget v2, p0, Lcom/flyco/dialog/widget/ActionSheetDialog;->mCancelTextColor:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 187
    iget-object v1, p0, Lcom/flyco/dialog/widget/ActionSheetDialog;->mTvCancel:Landroid/widget/TextView;

    iget v2, p0, Lcom/flyco/dialog/widget/ActionSheetDialog;->mLvBgColor:I

    iget v4, p0, Lcom/flyco/dialog/widget/ActionSheetDialog;->mItemPressColor:I

    invoke-static {v0, v2, v4, v6, v5}, Lcom/flyco/dialog/utils/CornerUtils;->listItemSelector(FIIII)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 189
    iget-object v1, p0, Lcom/flyco/dialog/widget/ActionSheetDialog;->mTvCancel:Landroid/widget/TextView;

    new-instance v2, Lcom/flyco/dialog/widget/ActionSheetDialog$1;

    invoke-direct {v2, p0}, Lcom/flyco/dialog/widget/ActionSheetDialog$1;-><init>(Lcom/flyco/dialog/widget/ActionSheetDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 197
    iget-object v1, p0, Lcom/flyco/dialog/widget/ActionSheetDialog;->mLv:Landroid/widget/ListView;

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    iget v4, p0, Lcom/flyco/dialog/widget/ActionSheetDialog;->mDividerColor:I

    invoke-direct {v2, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 198
    iget-object v1, p0, Lcom/flyco/dialog/widget/ActionSheetDialog;->mLv:Landroid/widget/ListView;

    iget v2, p0, Lcom/flyco/dialog/widget/ActionSheetDialog;->mDividerHeight:F

    invoke-virtual {p0, v2}, Lcom/flyco/dialog/widget/ActionSheetDialog;->dp2px(F)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 200
    iget-boolean v1, p0, Lcom/flyco/dialog/widget/ActionSheetDialog;->mIsTitleShow:Z

    if-eqz v1, :cond_2

    .line 201
    iget-object v1, p0, Lcom/flyco/dialog/widget/ActionSheetDialog;->mLv:Landroid/widget/ListView;

    iget v2, p0, Lcom/flyco/dialog/widget/ActionSheetDialog;->mLvBgColor:I

    new-array v3, v3, [F

    aput v10, v3, v5

    aput v10, v3, v6

    aput v10, v3, v7

    aput v10, v3, v8

    aput v0, v3, v9

    aput v0, v3, v11

    aput v0, v3, v12

    aput v0, v3, v13

    invoke-static {v2, v3}, Lcom/flyco/dialog/utils/CornerUtils;->cornerDrawable(I[F)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 204
    :cond_2
    iget-object v1, p0, Lcom/flyco/dialog/widget/ActionSheetDialog;->mLv:Landroid/widget/ListView;

    iget v2, p0, Lcom/flyco/dialog/widget/ActionSheetDialog;->mLvBgColor:I

    invoke-static {v2, v0}, Lcom/flyco/dialog/utils/CornerUtils;->cornerDrawable(IF)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 207
    :goto_2
    iget-object v0, p0, Lcom/flyco/dialog/widget/ActionSheetDialog;->mAdapter:Landroid/widget/BaseAdapter;

    if-nez v0, :cond_3

    .line 208
    new-instance v0, Lcom/flyco/dialog/widget/ActionSheetDialog$ListDialogAdapter;

    invoke-direct {v0, p0}, Lcom/flyco/dialog/widget/ActionSheetDialog$ListDialogAdapter;-><init>(Lcom/flyco/dialog/widget/ActionSheetDialog;)V

    iput-object v0, p0, Lcom/flyco/dialog/widget/ActionSheetDialog;->mAdapter:Landroid/widget/BaseAdapter;

    .line 211
    :cond_3
    iget-object v0, p0, Lcom/flyco/dialog/widget/ActionSheetDialog;->mLv:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/flyco/dialog/widget/ActionSheetDialog;->mAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 212
    iget-object v0, p0, Lcom/flyco/dialog/widget/ActionSheetDialog;->mLv:Landroid/widget/ListView;

    new-instance v1, Lcom/flyco/dialog/widget/ActionSheetDialog$2;

    invoke-direct {v1, p0}, Lcom/flyco/dialog/widget/ActionSheetDialog$2;-><init>(Lcom/flyco/dialog/widget/ActionSheetDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 221
    iget-object v0, p0, Lcom/flyco/dialog/widget/ActionSheetDialog;->mLv:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/flyco/dialog/widget/ActionSheetDialog;->mLac:Landroid/view/animation/LayoutAnimationController;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V

    return-void
.end method

.method public title(Ljava/lang/String;)Lcom/flyco/dialog/widget/ActionSheetDialog;
    .locals 0

    .line 232
    iput-object p1, p0, Lcom/flyco/dialog/widget/ActionSheetDialog;->mTitle:Ljava/lang/String;

    return-object p0
.end method

.method public titleBgColor(I)Lcom/flyco/dialog/widget/ActionSheetDialog;
    .locals 0

    .line 226
    iput p1, p0, Lcom/flyco/dialog/widget/ActionSheetDialog;->mTitleBgColor:I

    return-object p0
.end method

.method public titleHeight(F)Lcom/flyco/dialog/widget/ActionSheetDialog;
    .locals 0

    .line 238
    iput p1, p0, Lcom/flyco/dialog/widget/ActionSheetDialog;->mTitleHeight:F

    return-object p0
.end method

.method public titleTextColor(I)Lcom/flyco/dialog/widget/ActionSheetDialog;
    .locals 0

    .line 250
    iput p1, p0, Lcom/flyco/dialog/widget/ActionSheetDialog;->mTitleTextColor:I

    return-object p0
.end method

.method public titleTextSize_SP(F)Lcom/flyco/dialog/widget/ActionSheetDialog;
    .locals 0

    .line 244
    iput p1, p0, Lcom/flyco/dialog/widget/ActionSheetDialog;->mTitleTextSize:F

    return-object p0
.end method
