.class public Lcom/mh/movie/core/mvp/ui/widget/SideBar;
.super Landroid/view/View;
.source "SideBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mh/movie/core/mvp/ui/widget/SideBar$a;
    }
.end annotation


# static fields
.field public static a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static b:[I


# instance fields
.field private c:Lcom/mh/movie/core/mvp/ui/widget/SideBar$a;

.field private d:I

.field private e:Landroid/graphics/Paint;

.field private f:Landroid/widget/TextView;

.field private g:F


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/16 v0, 0x1b

    .line 29
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "A"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "B"

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const-string v1, "C"

    const/4 v4, 0x2

    aput-object v1, v0, v4

    const-string v1, "D"

    const/4 v5, 0x3

    aput-object v1, v0, v5

    const-string v1, "E"

    const/4 v6, 0x4

    aput-object v1, v0, v6

    const-string v1, "F"

    const/4 v7, 0x5

    aput-object v1, v0, v7

    const-string v1, "G"

    const/4 v8, 0x6

    aput-object v1, v0, v8

    const-string v1, "H"

    const/4 v8, 0x7

    aput-object v1, v0, v8

    const-string v1, "I"

    const/16 v8, 0x8

    aput-object v1, v0, v8

    const-string v1, "J"

    const/16 v8, 0x9

    aput-object v1, v0, v8

    const-string v1, "K"

    const/16 v8, 0xa

    aput-object v1, v0, v8

    const-string v1, "L"

    const/16 v8, 0xb

    aput-object v1, v0, v8

    const-string v1, "M"

    const/16 v8, 0xc

    aput-object v1, v0, v8

    const-string v1, "N"

    const/16 v8, 0xd

    aput-object v1, v0, v8

    const-string v1, "O"

    const/16 v8, 0xe

    aput-object v1, v0, v8

    const-string v1, "P"

    const/16 v8, 0xf

    aput-object v1, v0, v8

    const-string v1, "Q"

    const/16 v8, 0x10

    aput-object v1, v0, v8

    const-string v1, "R"

    const/16 v8, 0x11

    aput-object v1, v0, v8

    const-string v1, "S"

    const/16 v8, 0x12

    aput-object v1, v0, v8

    const-string v1, "T"

    const/16 v8, 0x13

    aput-object v1, v0, v8

    const-string v1, "U"

    const/16 v8, 0x14

    aput-object v1, v0, v8

    const-string v1, "V"

    const/16 v8, 0x15

    aput-object v1, v0, v8

    const-string v1, "W"

    const/16 v8, 0x16

    aput-object v1, v0, v8

    const-string v1, "X"

    const/16 v8, 0x17

    aput-object v1, v0, v8

    const-string v1, "Y"

    const/16 v8, 0x18

    aput-object v1, v0, v8

    const-string v1, "Z"

    const/16 v8, 0x19

    aput-object v1, v0, v8

    const-string v1, "#"

    const/16 v8, 0x1a

    aput-object v1, v0, v8

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/mh/movie/core/mvp/ui/widget/SideBar;->a:Ljava/util/List;

    .line 36
    new-array v0, v7, [I

    sget v1, Lcom/mh/movie/core/R$mipmap;->dialog_color_blue:I

    aput v1, v0, v2

    sget v1, Lcom/mh/movie/core/R$mipmap;->dialog_color_green:I

    aput v1, v0, v3

    sget v1, Lcom/mh/movie/core/R$mipmap;->dialog_color_orange:I

    aput v1, v0, v4

    sget v1, Lcom/mh/movie/core/R$mipmap;->dialog_color_purple:I

    aput v1, v0, v5

    sget v1, Lcom/mh/movie/core/R$mipmap;->dialog_color_red:I

    aput v1, v0, v6

    sput-object v0, Lcom/mh/movie/core/mvp/ui/widget/SideBar;->b:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 p1, -0x1

    .line 31
    iput p1, p0, Lcom/mh/movie/core/mvp/ui/widget/SideBar;->d:I

    .line 32
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/SideBar;->e:Landroid/graphics/Paint;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, -0x1

    .line 31
    iput p1, p0, Lcom/mh/movie/core/mvp/ui/widget/SideBar;->d:I

    .line 32
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/SideBar;->e:Landroid/graphics/Paint;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 45
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, -0x1

    .line 31
    iput p1, p0, Lcom/mh/movie/core/mvp/ui/widget/SideBar;->d:I

    .line 32
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/SideBar;->e:Landroid/graphics/Paint;

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 113
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 114
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    .line 115
    iget v1, p0, Lcom/mh/movie/core/mvp/ui/widget/SideBar;->d:I

    .line 116
    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/widget/SideBar;->c:Lcom/mh/movie/core/mvp/ui/widget/SideBar$a;

    .line 117
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/SideBar;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr p1, v3

    sget-object v3, Lcom/mh/movie/core/mvp/ui/widget/SideBar;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    int-to-float v3, v3

    mul-float p1, p1, v3

    float-to-int p1, p1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v0, v4, :cond_3

    .line 130
    sget v0, Lcom/mh/movie/core/R$drawable;->sidebar_background:I

    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/widget/SideBar;->setBackgroundResource(I)V

    if-eq v1, p1, :cond_4

    if-ltz p1, :cond_4

    .line 132
    sget-object v0, Lcom/mh/movie/core/mvp/ui/widget/SideBar;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_4

    if-eqz v2, :cond_0

    .line 134
    sget-object v0, Lcom/mh/movie/core/mvp/ui/widget/SideBar;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v2, v0}, Lcom/mh/movie/core/mvp/ui/widget/SideBar$a;->a(Ljava/lang/String;)V

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/SideBar;->f:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 137
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/SideBar;->f:Landroid/widget/TextView;

    sget-object v1, Lcom/mh/movie/core/mvp/ui/widget/SideBar;->a:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/SideBar;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 140
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/SideBar;->f:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLeft()I

    move-result v0

    .line 141
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/SideBar;->f:Landroid/widget/TextView;

    div-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x3

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setX(F)V

    const/16 v0, 0x18

    if-le p1, v0, :cond_1

    .line 143
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/SideBar;->f:Landroid/widget/TextView;

    iget v1, p0, Lcom/mh/movie/core/mvp/ui/widget/SideBar;->g:F

    const/high16 v2, 0x41c00000    # 24.0f

    mul-float v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setY(F)V

    goto :goto_0

    .line 145
    :cond_1
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/SideBar;->f:Landroid/widget/TextView;

    iget v1, p0, Lcom/mh/movie/core/mvp/ui/widget/SideBar;->g:F

    int-to-float v2, p1

    mul-float v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setY(F)V

    .line 147
    :goto_0
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/SideBar;->f:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/SideBar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v2, Lcom/mh/movie/core/mvp/ui/widget/SideBar;->b:[I

    div-int/lit8 v3, p1, 0x6

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 150
    :cond_2
    iput p1, p0, Lcom/mh/movie/core/mvp/ui/widget/SideBar;->d:I

    .line 151
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/SideBar;->invalidate()V

    goto :goto_1

    .line 121
    :cond_3
    new-instance p1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {p1, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/ui/widget/SideBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 123
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/SideBar;->invalidate()V

    .line 124
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/SideBar;->f:Landroid/widget/TextView;

    if-eqz p1, :cond_4

    .line 125
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/SideBar;->f:Landroid/widget/TextView;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_4
    :goto_1
    return v4
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10

    .line 65
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 67
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/SideBar;->getHeight()I

    move-result v0

    .line 68
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/SideBar;->getWidth()I

    move-result v1

    int-to-float v0, v0

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float v0, v0, v2

    .line 71
    sget-object v3, Lcom/mh/movie/core/mvp/ui/widget/SideBar;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    int-to-float v3, v3

    div-float v3, v0, v3

    iput v3, p0, Lcom/mh/movie/core/mvp/ui/widget/SideBar;->g:F

    .line 72
    iget v3, p0, Lcom/mh/movie/core/mvp/ui/widget/SideBar;->g:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    sub-float/2addr v0, v3

    sget-object v3, Lcom/mh/movie/core/mvp/ui/widget/SideBar;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v0, v3

    iput v0, p0, Lcom/mh/movie/core/mvp/ui/widget/SideBar;->g:F

    const/4 v0, 0x0

    .line 73
    :goto_0
    sget-object v3, Lcom/mh/movie/core/mvp/ui/widget/SideBar;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 74
    iget-object v3, p0, Lcom/mh/movie/core/mvp/ui/widget/SideBar;->e:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/SideBar;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/mh/movie/core/R$color;->grey_99:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 76
    iget-object v3, p0, Lcom/mh/movie/core/mvp/ui/widget/SideBar;->e:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 77
    iget-object v3, p0, Lcom/mh/movie/core/mvp/ui/widget/SideBar;->e:Landroid/graphics/Paint;

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 78
    iget-object v3, p0, Lcom/mh/movie/core/mvp/ui/widget/SideBar;->e:Landroid/graphics/Paint;

    const/high16 v6, 0x41400000    # 12.0f

    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/SideBar;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    const/4 v8, 0x2

    invoke-static {v8, v6, v7}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v6

    float-to-int v6, v6

    int-to-float v6, v6

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 81
    div-int/lit8 v3, v1, 0x2

    int-to-float v3, v3

    iget-object v6, p0, Lcom/mh/movie/core/mvp/ui/widget/SideBar;->e:Landroid/graphics/Paint;

    sget-object v7, Lcom/mh/movie/core/mvp/ui/widget/SideBar;->a:Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v6

    div-float/2addr v6, v4

    sub-float/2addr v3, v6

    .line 82
    iget v6, p0, Lcom/mh/movie/core/mvp/ui/widget/SideBar;->g:F

    int-to-float v7, v0

    mul-float v6, v6, v7

    iget v7, p0, Lcom/mh/movie/core/mvp/ui/widget/SideBar;->g:F

    add-float/2addr v6, v7

    .line 85
    iget v7, p0, Lcom/mh/movie/core/mvp/ui/widget/SideBar;->d:I

    if-ne v0, v7, :cond_0

    .line 87
    new-instance v7, Landroid/graphics/RectF;

    invoke-direct {v7}, Landroid/graphics/RectF;-><init>()V

    .line 88
    iput v2, v7, Landroid/graphics/RectF;->left:F

    add-int/lit8 v8, v1, -0x1

    int-to-float v8, v8

    .line 89
    iput v8, v7, Landroid/graphics/RectF;->right:F

    .line 90
    iget v8, p0, Lcom/mh/movie/core/mvp/ui/widget/SideBar;->g:F

    sub-float v8, v6, v8

    add-float/2addr v8, v4

    iput v8, v7, Landroid/graphics/RectF;->top:F

    .line 91
    iget v8, p0, Lcom/mh/movie/core/mvp/ui/widget/SideBar;->g:F

    div-float/2addr v8, v4

    add-float/2addr v8, v6

    iput v8, v7, Landroid/graphics/RectF;->bottom:F

    .line 92
    iget-object v8, p0, Lcom/mh/movie/core/mvp/ui/widget/SideBar;->e:Landroid/graphics/Paint;

    const/high16 v9, 0x41200000    # 10.0f

    invoke-virtual {p1, v7, v9, v9, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 94
    iget-object v7, p0, Lcom/mh/movie/core/mvp/ui/widget/SideBar;->e:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/SideBar;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/mh/movie/core/R$color;->white:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 95
    iget-object v7, p0, Lcom/mh/movie/core/mvp/ui/widget/SideBar;->e:Landroid/graphics/Paint;

    invoke-virtual {v7, v5}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 98
    :cond_0
    sget-object v5, Lcom/mh/movie/core/mvp/ui/widget/SideBar;->a:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iget-object v7, p0, Lcom/mh/movie/core/mvp/ui/widget/SideBar;->e:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v3, v6, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 100
    iget-object v3, p0, Lcom/mh/movie/core/mvp/ui/widget/SideBar;->e:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->reset()V

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_1
    return-void
.end method

.method public setChoose(I)V
    .locals 0

    .line 106
    iput p1, p0, Lcom/mh/movie/core/mvp/ui/widget/SideBar;->d:I

    .line 107
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/SideBar;->invalidate()V

    return-void
.end method

.method public setDataList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 57
    sput-object p1, Lcom/mh/movie/core/mvp/ui/widget/SideBar;->a:Ljava/util/List;

    .line 58
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/SideBar;->invalidate()V

    return-void
.end method

.method public setOnTouchingLetterChangedListener(Lcom/mh/movie/core/mvp/ui/widget/SideBar$a;)V
    .locals 0

    .line 166
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/SideBar;->c:Lcom/mh/movie/core/mvp/ui/widget/SideBar$a;

    return-void
.end method

.method public setTextView(Landroid/widget/TextView;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/SideBar;->f:Landroid/widget/TextView;

    return-void
.end method
