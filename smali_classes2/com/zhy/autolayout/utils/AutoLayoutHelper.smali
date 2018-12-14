.class public Lcom/zhy/autolayout/utils/AutoLayoutHelper;
.super Ljava/lang/Object;
.source "AutoLayoutHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zhy/autolayout/utils/AutoLayoutHelper$AutoLayoutParams;
    }
.end annotation


# static fields
.field private static final INDEX_HEIGHT:I = 0x7

.field private static final INDEX_MARGIN:I = 0x8

.field private static final INDEX_MARGIN_BOTTOM:I = 0xc

.field private static final INDEX_MARGIN_LEFT:I = 0x9

.field private static final INDEX_MARGIN_RIGHT:I = 0xb

.field private static final INDEX_MARGIN_TOP:I = 0xa

.field private static final INDEX_MAX_HEIGHT:I = 0xe

.field private static final INDEX_MAX_WIDTH:I = 0xd

.field private static final INDEX_MIN_HEIGHT:I = 0x10

.field private static final INDEX_MIN_WIDTH:I = 0xf

.field private static final INDEX_PADDING:I = 0x1

.field private static final INDEX_PADDING_BOTTOM:I = 0x5

.field private static final INDEX_PADDING_LEFT:I = 0x2

.field private static final INDEX_PADDING_RIGHT:I = 0x4

.field private static final INDEX_PADDING_TOP:I = 0x3

.field private static final INDEX_TEXT_SIZE:I = 0x0

.field private static final INDEX_WIDTH:I = 0x6

.field private static final LL:[I

.field private static mAutoLayoutConifg:Lcom/zhy/autolayout/config/AutoLayoutConifg;


# instance fields
.field private final mHost:Landroid/view/ViewGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x11

    .line 50
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/zhy/autolayout/utils/AutoLayoutHelper;->LL:[I

    return-void

    :array_0
    .array-data 4
        0x1010095
        0x10100d5
        0x10100d6
        0x10100d7
        0x10100d8
        0x10100d9
        0x10100f4
        0x10100f5
        0x10100f6
        0x10100f7
        0x10100f8
        0x10100f9
        0x10100fa
        0x101011f
        0x1010120
        0x101013f
        0x1010140
    .end array-data
.end method

.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 1

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    iput-object p1, p0, Lcom/zhy/autolayout/utils/AutoLayoutHelper;->mHost:Landroid/view/ViewGroup;

    .line 101
    sget-object v0, Lcom/zhy/autolayout/utils/AutoLayoutHelper;->mAutoLayoutConifg:Lcom/zhy/autolayout/config/AutoLayoutConifg;

    if-nez v0, :cond_0

    .line 103
    invoke-direct {p0, p1}, Lcom/zhy/autolayout/utils/AutoLayoutHelper;->initAutoLayoutConfig(Landroid/view/ViewGroup;)V

    :cond_0
    return-void
.end method

.method public static getAutoLayoutInfo(Landroid/content/Context;Landroid/util/AttributeSet;)Lcom/zhy/autolayout/AutoLayoutInfo;
    .locals 7

    .line 141
    new-instance v0, Lcom/zhy/autolayout/AutoLayoutInfo;

    invoke-direct {v0}, Lcom/zhy/autolayout/AutoLayoutInfo;-><init>()V

    .line 143
    sget-object v1, Lcom/zhy/autolayout/R$styleable;->AutoLayout_Layout:[I

    invoke-virtual {p0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 144
    sget v2, Lcom/zhy/autolayout/R$styleable;->AutoLayout_Layout_layout_auto_basewidth:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    .line 145
    sget v4, Lcom/zhy/autolayout/R$styleable;->AutoLayout_Layout_layout_auto_baseheight:I

    invoke-virtual {v1, v4, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    .line 146
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 148
    sget-object v1, Lcom/zhy/autolayout/utils/AutoLayoutHelper;->LL:[I

    invoke-virtual {p0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p0

    .line 150
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_1

    .line 155
    invoke-virtual {p0, v1}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v5

    .line 159
    invoke-virtual {p0, v5}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v6

    invoke-static {v6}, Lcom/zhy/autolayout/utils/DimenUtils;->isPxVal(Landroid/util/TypedValue;)Z

    move-result v6

    if-nez v6, :cond_0

    goto/16 :goto_1

    .line 164
    :cond_0
    :try_start_0
    invoke-virtual {p0, v5, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    packed-switch v5, :pswitch_data_0

    goto/16 :goto_1

    .line 220
    :pswitch_0
    new-instance v5, Lcom/zhy/autolayout/attr/MinHeightAttr;

    invoke-direct {v5, v6, v2, v4}, Lcom/zhy/autolayout/attr/MinHeightAttr;-><init>(III)V

    invoke-virtual {v0, v5}, Lcom/zhy/autolayout/AutoLayoutInfo;->addAttr(Lcom/zhy/autolayout/attr/AutoAttr;)V

    goto/16 :goto_1

    .line 217
    :pswitch_1
    new-instance v5, Lcom/zhy/autolayout/attr/MinWidthAttr;

    invoke-direct {v5, v6, v2, v4}, Lcom/zhy/autolayout/attr/MinWidthAttr;-><init>(III)V

    invoke-virtual {v0, v5}, Lcom/zhy/autolayout/AutoLayoutInfo;->addAttr(Lcom/zhy/autolayout/attr/AutoAttr;)V

    goto/16 :goto_1

    .line 214
    :pswitch_2
    new-instance v5, Lcom/zhy/autolayout/attr/MaxHeightAttr;

    invoke-direct {v5, v6, v2, v4}, Lcom/zhy/autolayout/attr/MaxHeightAttr;-><init>(III)V

    invoke-virtual {v0, v5}, Lcom/zhy/autolayout/AutoLayoutInfo;->addAttr(Lcom/zhy/autolayout/attr/AutoAttr;)V

    goto/16 :goto_1

    .line 211
    :pswitch_3
    new-instance v5, Lcom/zhy/autolayout/attr/MaxWidthAttr;

    invoke-direct {v5, v6, v2, v4}, Lcom/zhy/autolayout/attr/MaxWidthAttr;-><init>(III)V

    invoke-virtual {v0, v5}, Lcom/zhy/autolayout/AutoLayoutInfo;->addAttr(Lcom/zhy/autolayout/attr/AutoAttr;)V

    goto/16 :goto_1

    .line 208
    :pswitch_4
    new-instance v5, Lcom/zhy/autolayout/attr/MarginBottomAttr;

    invoke-direct {v5, v6, v2, v4}, Lcom/zhy/autolayout/attr/MarginBottomAttr;-><init>(III)V

    invoke-virtual {v0, v5}, Lcom/zhy/autolayout/AutoLayoutInfo;->addAttr(Lcom/zhy/autolayout/attr/AutoAttr;)V

    goto/16 :goto_1

    .line 205
    :pswitch_5
    new-instance v5, Lcom/zhy/autolayout/attr/MarginRightAttr;

    invoke-direct {v5, v6, v2, v4}, Lcom/zhy/autolayout/attr/MarginRightAttr;-><init>(III)V

    invoke-virtual {v0, v5}, Lcom/zhy/autolayout/AutoLayoutInfo;->addAttr(Lcom/zhy/autolayout/attr/AutoAttr;)V

    goto :goto_1

    .line 202
    :pswitch_6
    new-instance v5, Lcom/zhy/autolayout/attr/MarginTopAttr;

    invoke-direct {v5, v6, v2, v4}, Lcom/zhy/autolayout/attr/MarginTopAttr;-><init>(III)V

    invoke-virtual {v0, v5}, Lcom/zhy/autolayout/AutoLayoutInfo;->addAttr(Lcom/zhy/autolayout/attr/AutoAttr;)V

    goto :goto_1

    .line 199
    :pswitch_7
    new-instance v5, Lcom/zhy/autolayout/attr/MarginLeftAttr;

    invoke-direct {v5, v6, v2, v4}, Lcom/zhy/autolayout/attr/MarginLeftAttr;-><init>(III)V

    invoke-virtual {v0, v5}, Lcom/zhy/autolayout/AutoLayoutInfo;->addAttr(Lcom/zhy/autolayout/attr/AutoAttr;)V

    goto :goto_1

    .line 196
    :pswitch_8
    new-instance v5, Lcom/zhy/autolayout/attr/MarginAttr;

    invoke-direct {v5, v6, v2, v4}, Lcom/zhy/autolayout/attr/MarginAttr;-><init>(III)V

    invoke-virtual {v0, v5}, Lcom/zhy/autolayout/AutoLayoutInfo;->addAttr(Lcom/zhy/autolayout/attr/AutoAttr;)V

    goto :goto_1

    .line 193
    :pswitch_9
    new-instance v5, Lcom/zhy/autolayout/attr/HeightAttr;

    invoke-direct {v5, v6, v2, v4}, Lcom/zhy/autolayout/attr/HeightAttr;-><init>(III)V

    invoke-virtual {v0, v5}, Lcom/zhy/autolayout/AutoLayoutInfo;->addAttr(Lcom/zhy/autolayout/attr/AutoAttr;)V

    goto :goto_1

    .line 190
    :pswitch_a
    new-instance v5, Lcom/zhy/autolayout/attr/WidthAttr;

    invoke-direct {v5, v6, v2, v4}, Lcom/zhy/autolayout/attr/WidthAttr;-><init>(III)V

    invoke-virtual {v0, v5}, Lcom/zhy/autolayout/AutoLayoutInfo;->addAttr(Lcom/zhy/autolayout/attr/AutoAttr;)V

    goto :goto_1

    .line 187
    :pswitch_b
    new-instance v5, Lcom/zhy/autolayout/attr/PaddingBottomAttr;

    invoke-direct {v5, v6, v2, v4}, Lcom/zhy/autolayout/attr/PaddingBottomAttr;-><init>(III)V

    invoke-virtual {v0, v5}, Lcom/zhy/autolayout/AutoLayoutInfo;->addAttr(Lcom/zhy/autolayout/attr/AutoAttr;)V

    goto :goto_1

    .line 184
    :pswitch_c
    new-instance v5, Lcom/zhy/autolayout/attr/PaddingRightAttr;

    invoke-direct {v5, v6, v2, v4}, Lcom/zhy/autolayout/attr/PaddingRightAttr;-><init>(III)V

    invoke-virtual {v0, v5}, Lcom/zhy/autolayout/AutoLayoutInfo;->addAttr(Lcom/zhy/autolayout/attr/AutoAttr;)V

    goto :goto_1

    .line 181
    :pswitch_d
    new-instance v5, Lcom/zhy/autolayout/attr/PaddingTopAttr;

    invoke-direct {v5, v6, v2, v4}, Lcom/zhy/autolayout/attr/PaddingTopAttr;-><init>(III)V

    invoke-virtual {v0, v5}, Lcom/zhy/autolayout/AutoLayoutInfo;->addAttr(Lcom/zhy/autolayout/attr/AutoAttr;)V

    goto :goto_1

    .line 178
    :pswitch_e
    new-instance v5, Lcom/zhy/autolayout/attr/PaddingLeftAttr;

    invoke-direct {v5, v6, v2, v4}, Lcom/zhy/autolayout/attr/PaddingLeftAttr;-><init>(III)V

    invoke-virtual {v0, v5}, Lcom/zhy/autolayout/AutoLayoutInfo;->addAttr(Lcom/zhy/autolayout/attr/AutoAttr;)V

    goto :goto_1

    .line 175
    :pswitch_f
    new-instance v5, Lcom/zhy/autolayout/attr/PaddingAttr;

    invoke-direct {v5, v6, v2, v4}, Lcom/zhy/autolayout/attr/PaddingAttr;-><init>(III)V

    invoke-virtual {v0, v5}, Lcom/zhy/autolayout/AutoLayoutInfo;->addAttr(Lcom/zhy/autolayout/attr/AutoAttr;)V

    goto :goto_1

    .line 172
    :pswitch_10
    new-instance v5, Lcom/zhy/autolayout/attr/TextSizeAttr;

    invoke-direct {v5, v6, v2, v4}, Lcom/zhy/autolayout/attr/TextSizeAttr;-><init>(III)V

    invoke-virtual {v0, v5}, Lcom/zhy/autolayout/AutoLayoutInfo;->addAttr(Lcom/zhy/autolayout/attr/AutoAttr;)V

    :catch_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 224
    :cond_1
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    .line 225
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, " getAutoLayoutInfo "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/zhy/autolayout/AutoLayoutInfo;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/zhy/autolayout/utils/L;->e(Ljava/lang/String;)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private initAutoLayoutConfig(Landroid/view/ViewGroup;)V
    .locals 1

    .line 110
    invoke-static {}, Lcom/zhy/autolayout/config/AutoLayoutConifg;->getInstance()Lcom/zhy/autolayout/config/AutoLayoutConifg;

    move-result-object v0

    sput-object v0, Lcom/zhy/autolayout/utils/AutoLayoutHelper;->mAutoLayoutConifg:Lcom/zhy/autolayout/config/AutoLayoutConifg;

    .line 111
    sget-object v0, Lcom/zhy/autolayout/utils/AutoLayoutHelper;->mAutoLayoutConifg:Lcom/zhy/autolayout/config/AutoLayoutConifg;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/zhy/autolayout/config/AutoLayoutConifg;->init(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public adjustChildren()V
    .locals 5

    .line 117
    invoke-static {}, Lcom/zhy/autolayout/config/AutoLayoutConifg;->getInstance()Lcom/zhy/autolayout/config/AutoLayoutConifg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zhy/autolayout/config/AutoLayoutConifg;->checkParams()V

    .line 119
    iget-object v0, p0, Lcom/zhy/autolayout/utils/AutoLayoutHelper;->mHost:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 121
    iget-object v2, p0, Lcom/zhy/autolayout/utils/AutoLayoutHelper;->mHost:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 122
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 124
    instance-of v4, v3, Lcom/zhy/autolayout/utils/AutoLayoutHelper$AutoLayoutParams;

    if-eqz v4, :cond_0

    .line 126
    check-cast v3, Lcom/zhy/autolayout/utils/AutoLayoutHelper$AutoLayoutParams;

    invoke-interface {v3}, Lcom/zhy/autolayout/utils/AutoLayoutHelper$AutoLayoutParams;->getAutoLayoutInfo()Lcom/zhy/autolayout/AutoLayoutInfo;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 130
    invoke-virtual {v3, v2}, Lcom/zhy/autolayout/AutoLayoutInfo;->fillAttrs(Landroid/view/View;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
