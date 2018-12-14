.class public Lcom/flyco/dialog/widget/NormalListDialog;
.super Lcom/flyco/dialog/widget/base/BaseDialog;
.source "NormalListDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flyco/dialog/widget/NormalListDialog$ListDialogAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/flyco/dialog/widget/base/BaseDialog<",
        "Lcom/flyco/dialog/widget/NormalListDialog;",
        ">;"
    }
.end annotation


# instance fields
.field private mAdapter:Landroid/widget/BaseAdapter;

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

.field private mItemExtraBottom:I

.field private mItemExtraLeft:I

.field private mItemExtraRight:I

.field private mItemExtraTop:I

.field private mItemPressColor:I

.field private mItemTextColor:I

.field private mItemTextSize:F

.field private mLac:Landroid/view/animation/LayoutAnimationController;

.field private mLv:Landroid/widget/ListView;

.field private mLvBgColor:I

.field private mOnOperItemClickL:Lcom/flyco/dialog/listener/OnOperItemClickL;

.field private mTitle:Ljava/lang/String;

.field private mTitleBgColor:I

.field private mTitleTextColor:I

.field private mTitleTextSize:F

.field private mTvTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/BaseAdapter;)V
    .locals 0

    .line 91
    invoke-direct {p0, p1}, Lcom/flyco/dialog/widget/base/BaseDialog;-><init>(Landroid/content/Context;)V

    const/high16 p1, 0x40a00000    # 5.0f

    .line 35
    iput p1, p0, Lcom/flyco/dialog/widget/NormalListDialog;->mCornerRadius:F

    const-string p1, "#303030"

    .line 37
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/flyco/dialog/widget/NormalListDialog;->mTitleBgColor:I

    const-string p1, "\u63d0\u793a"

    .line 39
    iput-object p1, p0, Lcom/flyco/dialog/widget/NormalListDialog;->mTitle:Ljava/lang/String;

    const-string p1, "#ffffff"

    .line 41
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/flyco/dialog/widget/NormalListDialog;->mTitleTextColor:I

    const/high16 p1, 0x41840000    # 16.5f

    .line 43
    iput p1, p0, Lcom/flyco/dialog/widget/NormalListDialog;->mTitleTextSize:F

    const-string p1, "#ffffff"

    .line 45
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/flyco/dialog/widget/NormalListDialog;->mLvBgColor:I

    const p1, -0x333334

    .line 47
    iput p1, p0, Lcom/flyco/dialog/widget/NormalListDialog;->mDividerColor:I

    const p1, 0x3f4ccccd    # 0.8f

    .line 49
    iput p1, p0, Lcom/flyco/dialog/widget/NormalListDialog;->mDividerHeight:F

    const-string p1, "#ffcccccc"

    .line 51
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/flyco/dialog/widget/NormalListDialog;->mItemPressColor:I

    const-string p1, "#303030"

    .line 53
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/flyco/dialog/widget/NormalListDialog;->mItemTextColor:I

    const/high16 p1, 0x41700000    # 15.0f

    .line 55
    iput p1, p0, Lcom/flyco/dialog/widget/NormalListDialog;->mItemTextSize:F

    const/4 p1, 0x1

    .line 62
    iput-boolean p1, p0, Lcom/flyco/dialog/widget/NormalListDialog;->mIsTitleShow:Z

    .line 66
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/flyco/dialog/widget/NormalListDialog;->mContents:Ljava/util/ArrayList;

    .line 92
    iput-object p2, p0, Lcom/flyco/dialog/widget/NormalListDialog;->mAdapter:Landroid/widget/BaseAdapter;

    .line 93
    invoke-direct {p0}, Lcom/flyco/dialog/widget/NormalListDialog;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/flyco/dialog/entity/DialogMenuItem;",
            ">;)V"
        }
    .end annotation

    .line 75
    invoke-direct {p0, p1}, Lcom/flyco/dialog/widget/base/BaseDialog;-><init>(Landroid/content/Context;)V

    const/high16 p1, 0x40a00000    # 5.0f

    .line 35
    iput p1, p0, Lcom/flyco/dialog/widget/NormalListDialog;->mCornerRadius:F

    const-string p1, "#303030"

    .line 37
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/flyco/dialog/widget/NormalListDialog;->mTitleBgColor:I

    const-string p1, "\u63d0\u793a"

    .line 39
    iput-object p1, p0, Lcom/flyco/dialog/widget/NormalListDialog;->mTitle:Ljava/lang/String;

    const-string p1, "#ffffff"

    .line 41
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/flyco/dialog/widget/NormalListDialog;->mTitleTextColor:I

    const/high16 p1, 0x41840000    # 16.5f

    .line 43
    iput p1, p0, Lcom/flyco/dialog/widget/NormalListDialog;->mTitleTextSize:F

    const-string p1, "#ffffff"

    .line 45
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/flyco/dialog/widget/NormalListDialog;->mLvBgColor:I

    const p1, -0x333334

    .line 47
    iput p1, p0, Lcom/flyco/dialog/widget/NormalListDialog;->mDividerColor:I

    const p1, 0x3f4ccccd    # 0.8f

    .line 49
    iput p1, p0, Lcom/flyco/dialog/widget/NormalListDialog;->mDividerHeight:F

    const-string p1, "#ffcccccc"

    .line 51
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/flyco/dialog/widget/NormalListDialog;->mItemPressColor:I

    const-string p1, "#303030"

    .line 53
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/flyco/dialog/widget/NormalListDialog;->mItemTextColor:I

    const/high16 p1, 0x41700000    # 15.0f

    .line 55
    iput p1, p0, Lcom/flyco/dialog/widget/NormalListDialog;->mItemTextSize:F

    const/4 p1, 0x1

    .line 62
    iput-boolean p1, p0, Lcom/flyco/dialog/widget/NormalListDialog;->mIsTitleShow:Z

    .line 66
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/flyco/dialog/widget/NormalListDialog;->mContents:Ljava/util/ArrayList;

    .line 76
    iget-object p1, p0, Lcom/flyco/dialog/widget/NormalListDialog;->mContents:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 77
    invoke-direct {p0}, Lcom/flyco/dialog/widget/NormalListDialog;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;[Ljava/lang/String;)V
    .locals 4

    .line 81
    invoke-direct {p0, p1}, Lcom/flyco/dialog/widget/base/BaseDialog;-><init>(Landroid/content/Context;)V

    const/high16 p1, 0x40a00000    # 5.0f

    .line 35
    iput p1, p0, Lcom/flyco/dialog/widget/NormalListDialog;->mCornerRadius:F

    const-string p1, "#303030"

    .line 37
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/flyco/dialog/widget/NormalListDialog;->mTitleBgColor:I

    const-string p1, "\u63d0\u793a"

    .line 39
    iput-object p1, p0, Lcom/flyco/dialog/widget/NormalListDialog;->mTitle:Ljava/lang/String;

    const-string p1, "#ffffff"

    .line 41
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/flyco/dialog/widget/NormalListDialog;->mTitleTextColor:I

    const/high16 p1, 0x41840000    # 16.5f

    .line 43
    iput p1, p0, Lcom/flyco/dialog/widget/NormalListDialog;->mTitleTextSize:F

    const-string p1, "#ffffff"

    .line 45
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/flyco/dialog/widget/NormalListDialog;->mLvBgColor:I

    const p1, -0x333334

    .line 47
    iput p1, p0, Lcom/flyco/dialog/widget/NormalListDialog;->mDividerColor:I

    const p1, 0x3f4ccccd    # 0.8f

    .line 49
    iput p1, p0, Lcom/flyco/dialog/widget/NormalListDialog;->mDividerHeight:F

    const-string p1, "#ffcccccc"

    .line 51
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/flyco/dialog/widget/NormalListDialog;->mItemPressColor:I

    const-string p1, "#303030"

    .line 53
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/flyco/dialog/widget/NormalListDialog;->mItemTextColor:I

    const/high16 p1, 0x41700000    # 15.0f

    .line 55
    iput p1, p0, Lcom/flyco/dialog/widget/NormalListDialog;->mItemTextSize:F

    const/4 p1, 0x1

    .line 62
    iput-boolean p1, p0, Lcom/flyco/dialog/widget/NormalListDialog;->mIsTitleShow:Z

    .line 66
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/flyco/dialog/widget/NormalListDialog;->mContents:Ljava/util/ArrayList;

    .line 82
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/flyco/dialog/widget/NormalListDialog;->mContents:Ljava/util/ArrayList;

    .line 83
    array-length p1, p2

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    aget-object v2, p2, v1

    .line 84
    new-instance v3, Lcom/flyco/dialog/entity/DialogMenuItem;

    invoke-direct {v3, v2, v0}, Lcom/flyco/dialog/entity/DialogMenuItem;-><init>(Ljava/lang/String;I)V

    .line 85
    iget-object v2, p0, Lcom/flyco/dialog/widget/NormalListDialog;->mContents:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 87
    :cond_0
    invoke-direct {p0}, Lcom/flyco/dialog/widget/NormalListDialog;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/flyco/dialog/widget/NormalListDialog;)Lcom/flyco/dialog/listener/OnOperItemClickL;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/flyco/dialog/widget/NormalListDialog;->mOnOperItemClickL:Lcom/flyco/dialog/listener/OnOperItemClickL;

    return-object p0
.end method

.method static synthetic access$100(Lcom/flyco/dialog/widget/NormalListDialog;)Ljava/util/ArrayList;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/flyco/dialog/widget/NormalListDialog;->mContents:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/flyco/dialog/widget/NormalListDialog;)Z
    .locals 0

    .line 29
    iget-boolean p0, p0, Lcom/flyco/dialog/widget/NormalListDialog;->mIsTitleShow:Z

    return p0
.end method

.method static synthetic access$1100(Lcom/flyco/dialog/widget/NormalListDialog;)I
    .locals 0

    .line 29
    iget p0, p0, Lcom/flyco/dialog/widget/NormalListDialog;->mItemPressColor:I

    return p0
.end method

.method static synthetic access$1200(Lcom/flyco/dialog/widget/NormalListDialog;F)I
    .locals 0

    .line 29
    invoke-virtual {p0, p1}, Lcom/flyco/dialog/widget/NormalListDialog;->dp2px(F)I

    move-result p0

    return p0
.end method

.method static synthetic access$1300(Lcom/flyco/dialog/widget/NormalListDialog;F)I
    .locals 0

    .line 29
    invoke-virtual {p0, p1}, Lcom/flyco/dialog/widget/NormalListDialog;->dp2px(F)I

    move-result p0

    return p0
.end method

.method static synthetic access$1400(Lcom/flyco/dialog/widget/NormalListDialog;F)I
    .locals 0

    .line 29
    invoke-virtual {p0, p1}, Lcom/flyco/dialog/widget/NormalListDialog;->dp2px(F)I

    move-result p0

    return p0
.end method

.method static synthetic access$1500(Lcom/flyco/dialog/widget/NormalListDialog;F)I
    .locals 0

    .line 29
    invoke-virtual {p0, p1}, Lcom/flyco/dialog/widget/NormalListDialog;->dp2px(F)I

    move-result p0

    return p0
.end method

.method static synthetic access$1600(Lcom/flyco/dialog/widget/NormalListDialog;)I
    .locals 0

    .line 29
    iget p0, p0, Lcom/flyco/dialog/widget/NormalListDialog;->mItemExtraLeft:I

    return p0
.end method

.method static synthetic access$1700(Lcom/flyco/dialog/widget/NormalListDialog;)I
    .locals 0

    .line 29
    iget p0, p0, Lcom/flyco/dialog/widget/NormalListDialog;->mItemExtraTop:I

    return p0
.end method

.method static synthetic access$1800(Lcom/flyco/dialog/widget/NormalListDialog;)I
    .locals 0

    .line 29
    iget p0, p0, Lcom/flyco/dialog/widget/NormalListDialog;->mItemExtraRight:I

    return p0
.end method

.method static synthetic access$1900(Lcom/flyco/dialog/widget/NormalListDialog;)I
    .locals 0

    .line 29
    iget p0, p0, Lcom/flyco/dialog/widget/NormalListDialog;->mItemExtraBottom:I

    return p0
.end method

.method static synthetic access$200(Lcom/flyco/dialog/widget/NormalListDialog;)Landroid/content/Context;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/flyco/dialog/widget/NormalListDialog;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$300(Lcom/flyco/dialog/widget/NormalListDialog;)Landroid/content/Context;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/flyco/dialog/widget/NormalListDialog;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$400(Lcom/flyco/dialog/widget/NormalListDialog;F)I
    .locals 0

    .line 29
    invoke-virtual {p0, p1}, Lcom/flyco/dialog/widget/NormalListDialog;->dp2px(F)I

    move-result p0

    return p0
.end method

.method static synthetic access$500(Lcom/flyco/dialog/widget/NormalListDialog;)Landroid/content/Context;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/flyco/dialog/widget/NormalListDialog;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$600(Lcom/flyco/dialog/widget/NormalListDialog;)I
    .locals 0

    .line 29
    iget p0, p0, Lcom/flyco/dialog/widget/NormalListDialog;->mItemTextColor:I

    return p0
.end method

.method static synthetic access$700(Lcom/flyco/dialog/widget/NormalListDialog;)F
    .locals 0

    .line 29
    iget p0, p0, Lcom/flyco/dialog/widget/NormalListDialog;->mItemTextSize:F

    return p0
.end method

.method static synthetic access$800(Lcom/flyco/dialog/widget/NormalListDialog;)F
    .locals 0

    .line 29
    iget p0, p0, Lcom/flyco/dialog/widget/NormalListDialog;->mCornerRadius:F

    return p0
.end method

.method static synthetic access$900(Lcom/flyco/dialog/widget/NormalListDialog;F)I
    .locals 0

    .line 29
    invoke-virtual {p0, p1}, Lcom/flyco/dialog/widget/NormalListDialog;->dp2px(F)I

    move-result p0

    return p0
.end method

.method private init()V
    .locals 10

    const v0, 0x3f4ccccd    # 0.8f

    .line 97
    invoke-virtual {p0, v0}, Lcom/flyco/dialog/widget/NormalListDialog;->widthScale(F)Lcom/flyco/dialog/widget/base/BaseDialog;

    .line 100
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v2, 0x1

    const/high16 v3, 0x40000000    # 2.0f

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 102
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const-wide/16 v1, 0x226

    .line 103
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 105
    new-instance v1, Landroid/view/animation/LayoutAnimationController;

    const v2, 0x3df5c28f    # 0.12f

    invoke-direct {v1, v0, v2}, Landroid/view/animation/LayoutAnimationController;-><init>(Landroid/view/animation/Animation;F)V

    iput-object v1, p0, Lcom/flyco/dialog/widget/NormalListDialog;->mLac:Landroid/view/animation/LayoutAnimationController;

    .line 106
    iget-object v0, p0, Lcom/flyco/dialog/widget/NormalListDialog;->mLac:Landroid/view/animation/LayoutAnimationController;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/LayoutAnimationController;->setInterpolator(Landroid/view/animation/Interpolator;)V

    return-void
.end method


# virtual methods
.method public cornerRadius(F)Lcom/flyco/dialog/widget/NormalListDialog;
    .locals 0

    .line 215
    iput p1, p0, Lcom/flyco/dialog/widget/NormalListDialog;->mCornerRadius:F

    return-object p0
.end method

.method public dividerColor(I)Lcom/flyco/dialog/widget/NormalListDialog;
    .locals 0

    .line 221
    iput p1, p0, Lcom/flyco/dialog/widget/NormalListDialog;->mDividerColor:I

    return-object p0
.end method

.method public dividerHeight(F)Lcom/flyco/dialog/widget/NormalListDialog;
    .locals 0

    .line 227
    iput p1, p0, Lcom/flyco/dialog/widget/NormalListDialog;->mDividerHeight:F

    return-object p0
.end method

.method public isTitleShow(Z)Lcom/flyco/dialog/widget/NormalListDialog;
    .locals 0

    .line 203
    iput-boolean p1, p0, Lcom/flyco/dialog/widget/NormalListDialog;->mIsTitleShow:Z

    return-object p0
.end method

.method public itemPressColor(I)Lcom/flyco/dialog/widget/NormalListDialog;
    .locals 0

    .line 233
    iput p1, p0, Lcom/flyco/dialog/widget/NormalListDialog;->mItemPressColor:I

    return-object p0
.end method

.method public itemTextColor(I)Lcom/flyco/dialog/widget/NormalListDialog;
    .locals 0

    .line 239
    iput p1, p0, Lcom/flyco/dialog/widget/NormalListDialog;->mItemTextColor:I

    return-object p0
.end method

.method public itemTextSize(F)Lcom/flyco/dialog/widget/NormalListDialog;
    .locals 0

    .line 245
    iput p1, p0, Lcom/flyco/dialog/widget/NormalListDialog;->mItemTextSize:F

    return-object p0
.end method

.method public layoutAnimation(Landroid/view/animation/LayoutAnimationController;)Lcom/flyco/dialog/widget/NormalListDialog;
    .locals 0

    .line 261
    iput-object p1, p0, Lcom/flyco/dialog/widget/NormalListDialog;->mLac:Landroid/view/animation/LayoutAnimationController;

    return-object p0
.end method

.method public lvBgColor(I)Lcom/flyco/dialog/widget/NormalListDialog;
    .locals 0

    .line 209
    iput p1, p0, Lcom/flyco/dialog/widget/NormalListDialog;->mLvBgColor:I

    return-object p0
.end method

.method public onCreateView()Landroid/view/View;
    .locals 8

    .line 111
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/flyco/dialog/widget/NormalListDialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 112
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 115
    new-instance v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/flyco/dialog/widget/NormalListDialog;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/flyco/dialog/widget/NormalListDialog;->mTvTitle:Landroid/widget/TextView;

    .line 116
    iget-object v2, p0, Lcom/flyco/dialog/widget/NormalListDialog;->mTvTitle:Landroid/widget/TextView;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    const/4 v5, -0x1

    invoke-direct {v3, v5, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 118
    iget-object v2, p0, Lcom/flyco/dialog/widget/NormalListDialog;->mTvTitle:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 119
    iget-object v1, p0, Lcom/flyco/dialog/widget/NormalListDialog;->mTvTitle:Landroid/widget/TextView;

    const/high16 v2, 0x41900000    # 18.0f

    invoke-virtual {p0, v2}, Lcom/flyco/dialog/widget/NormalListDialog;->dp2px(F)I

    move-result v2

    const/high16 v3, 0x41200000    # 10.0f

    invoke-virtual {p0, v3}, Lcom/flyco/dialog/widget/NormalListDialog;->dp2px(F)I

    move-result v6

    invoke-virtual {p0, v3}, Lcom/flyco/dialog/widget/NormalListDialog;->dp2px(F)I

    move-result v3

    const/4 v7, 0x0

    invoke-virtual {v1, v2, v6, v7, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 121
    iget-object v1, p0, Lcom/flyco/dialog/widget/NormalListDialog;->mTvTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 124
    new-instance v1, Landroid/widget/ListView;

    iget-object v2, p0, Lcom/flyco/dialog/widget/NormalListDialog;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/flyco/dialog/widget/NormalListDialog;->mLv:Landroid/widget/ListView;

    .line 125
    iget-object v1, p0, Lcom/flyco/dialog/widget/NormalListDialog;->mLv:Landroid/widget/ListView;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v5, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 127
    iget-object v1, p0, Lcom/flyco/dialog/widget/NormalListDialog;->mLv:Landroid/widget/ListView;

    invoke-virtual {v1, v7}, Landroid/widget/ListView;->setCacheColorHint(I)V

    .line 128
    iget-object v1, p0, Lcom/flyco/dialog/widget/NormalListDialog;->mLv:Landroid/widget/ListView;

    invoke-virtual {v1, v7}, Landroid/widget/ListView;->setFadingEdgeLength(I)V

    .line 129
    iget-object v1, p0, Lcom/flyco/dialog/widget/NormalListDialog;->mLv:Landroid/widget/ListView;

    invoke-virtual {v1, v7}, Landroid/widget/ListView;->setVerticalScrollBarEnabled(Z)V

    .line 130
    iget-object v1, p0, Lcom/flyco/dialog/widget/NormalListDialog;->mLv:Landroid/widget/ListView;

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, v7}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 132
    iget-object v1, p0, Lcom/flyco/dialog/widget/NormalListDialog;->mLv:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method public setItemExtraPadding(IIII)Lcom/flyco/dialog/widget/NormalListDialog;
    .locals 0

    int-to-float p1, p1

    .line 251
    invoke-virtual {p0, p1}, Lcom/flyco/dialog/widget/NormalListDialog;->dp2px(F)I

    move-result p1

    iput p1, p0, Lcom/flyco/dialog/widget/NormalListDialog;->mItemExtraLeft:I

    int-to-float p1, p2

    .line 252
    invoke-virtual {p0, p1}, Lcom/flyco/dialog/widget/NormalListDialog;->dp2px(F)I

    move-result p1

    iput p1, p0, Lcom/flyco/dialog/widget/NormalListDialog;->mItemExtraTop:I

    int-to-float p1, p3

    .line 253
    invoke-virtual {p0, p1}, Lcom/flyco/dialog/widget/NormalListDialog;->dp2px(F)I

    move-result p1

    iput p1, p0, Lcom/flyco/dialog/widget/NormalListDialog;->mItemExtraRight:I

    int-to-float p1, p4

    .line 254
    invoke-virtual {p0, p1}, Lcom/flyco/dialog/widget/NormalListDialog;->dp2px(F)I

    move-result p1

    iput p1, p0, Lcom/flyco/dialog/widget/NormalListDialog;->mItemExtraBottom:I

    return-object p0
.end method

.method public setOnOperItemClickL(Lcom/flyco/dialog/listener/OnOperItemClickL;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/flyco/dialog/widget/NormalListDialog;->mOnOperItemClickL:Lcom/flyco/dialog/listener/OnOperItemClickL;

    return-void
.end method

.method public setUiBeforShow()V
    .locals 14

    .line 141
    iget v0, p0, Lcom/flyco/dialog/widget/NormalListDialog;->mCornerRadius:F

    invoke-virtual {p0, v0}, Lcom/flyco/dialog/widget/NormalListDialog;->dp2px(F)I

    move-result v0

    int-to-float v0, v0

    .line 142
    iget-object v1, p0, Lcom/flyco/dialog/widget/NormalListDialog;->mTvTitle:Landroid/widget/TextView;

    iget v2, p0, Lcom/flyco/dialog/widget/NormalListDialog;->mTitleBgColor:I

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

    .line 144
    iget-object v1, p0, Lcom/flyco/dialog/widget/NormalListDialog;->mTvTitle:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/flyco/dialog/widget/NormalListDialog;->mTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 145
    iget-object v1, p0, Lcom/flyco/dialog/widget/NormalListDialog;->mTvTitle:Landroid/widget/TextView;

    iget v2, p0, Lcom/flyco/dialog/widget/NormalListDialog;->mTitleTextSize:F

    invoke-virtual {v1, v7, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 146
    iget-object v1, p0, Lcom/flyco/dialog/widget/NormalListDialog;->mTvTitle:Landroid/widget/TextView;

    iget v2, p0, Lcom/flyco/dialog/widget/NormalListDialog;->mTitleTextColor:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 147
    iget-object v1, p0, Lcom/flyco/dialog/widget/NormalListDialog;->mTvTitle:Landroid/widget/TextView;

    iget-boolean v2, p0, Lcom/flyco/dialog/widget/NormalListDialog;->mIsTitleShow:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/16 v2, 0x8

    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 150
    iget-object v1, p0, Lcom/flyco/dialog/widget/NormalListDialog;->mLv:Landroid/widget/ListView;

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    iget v4, p0, Lcom/flyco/dialog/widget/NormalListDialog;->mDividerColor:I

    invoke-direct {v2, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 151
    iget-object v1, p0, Lcom/flyco/dialog/widget/NormalListDialog;->mLv:Landroid/widget/ListView;

    iget v2, p0, Lcom/flyco/dialog/widget/NormalListDialog;->mDividerHeight:F

    invoke-virtual {p0, v2}, Lcom/flyco/dialog/widget/NormalListDialog;->dp2px(F)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 153
    iget-boolean v1, p0, Lcom/flyco/dialog/widget/NormalListDialog;->mIsTitleShow:Z

    if-eqz v1, :cond_1

    .line 154
    iget-object v1, p0, Lcom/flyco/dialog/widget/NormalListDialog;->mLv:Landroid/widget/ListView;

    iget v2, p0, Lcom/flyco/dialog/widget/NormalListDialog;->mLvBgColor:I

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

    goto :goto_1

    .line 157
    :cond_1
    iget-object v1, p0, Lcom/flyco/dialog/widget/NormalListDialog;->mLv:Landroid/widget/ListView;

    iget v2, p0, Lcom/flyco/dialog/widget/NormalListDialog;->mLvBgColor:I

    invoke-static {v2, v0}, Lcom/flyco/dialog/utils/CornerUtils;->cornerDrawable(IF)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 160
    :goto_1
    iget-object v0, p0, Lcom/flyco/dialog/widget/NormalListDialog;->mAdapter:Landroid/widget/BaseAdapter;

    if-nez v0, :cond_2

    .line 161
    new-instance v0, Lcom/flyco/dialog/widget/NormalListDialog$ListDialogAdapter;

    invoke-direct {v0, p0}, Lcom/flyco/dialog/widget/NormalListDialog$ListDialogAdapter;-><init>(Lcom/flyco/dialog/widget/NormalListDialog;)V

    iput-object v0, p0, Lcom/flyco/dialog/widget/NormalListDialog;->mAdapter:Landroid/widget/BaseAdapter;

    .line 164
    :cond_2
    iget-object v0, p0, Lcom/flyco/dialog/widget/NormalListDialog;->mLv:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/flyco/dialog/widget/NormalListDialog;->mAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 165
    iget-object v0, p0, Lcom/flyco/dialog/widget/NormalListDialog;->mLv:Landroid/widget/ListView;

    new-instance v1, Lcom/flyco/dialog/widget/NormalListDialog$1;

    invoke-direct {v1, p0}, Lcom/flyco/dialog/widget/NormalListDialog$1;-><init>(Lcom/flyco/dialog/widget/NormalListDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 174
    iget-object v0, p0, Lcom/flyco/dialog/widget/NormalListDialog;->mLv:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/flyco/dialog/widget/NormalListDialog;->mLac:Landroid/view/animation/LayoutAnimationController;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V

    return-void
.end method

.method public title(Ljava/lang/String;)Lcom/flyco/dialog/widget/NormalListDialog;
    .locals 0

    .line 185
    iput-object p1, p0, Lcom/flyco/dialog/widget/NormalListDialog;->mTitle:Ljava/lang/String;

    return-object p0
.end method

.method public titleBgColor(I)Lcom/flyco/dialog/widget/NormalListDialog;
    .locals 0

    .line 179
    iput p1, p0, Lcom/flyco/dialog/widget/NormalListDialog;->mTitleBgColor:I

    return-object p0
.end method

.method public titleTextColor(I)Lcom/flyco/dialog/widget/NormalListDialog;
    .locals 0

    .line 197
    iput p1, p0, Lcom/flyco/dialog/widget/NormalListDialog;->mTitleTextColor:I

    return-object p0
.end method

.method public titleTextSize_SP(F)Lcom/flyco/dialog/widget/NormalListDialog;
    .locals 0

    .line 191
    iput p1, p0, Lcom/flyco/dialog/widget/NormalListDialog;->mTitleTextSize:F

    return-object p0
.end method
