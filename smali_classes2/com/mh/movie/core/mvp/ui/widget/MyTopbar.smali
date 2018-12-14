.class public Lcom/mh/movie/core/mvp/ui/widget/MyTopbar;
.super Landroid/widget/LinearLayout;
.source "MyTopbar.java"


# instance fields
.field private a:Z

.field private b:Landroid/graphics/drawable/Drawable;

.field private c:Landroid/graphics/drawable/Drawable;

.field private d:Landroid/graphics/drawable/Drawable;

.field private e:Ljava/lang/String;

.field private f:I

.field private g:Landroid/view/LayoutInflater;

.field private h:Landroid/view/View;

.field private i:Landroid/view/View;

.field private j:Landroid/widget/LinearLayout;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/widget/ImageButton;

.field private m:Landroid/widget/ImageButton;

.field private n:Landroid/widget/ImageButton;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 61
    invoke-direct {p0, p1, v0}, Lcom/mh/movie/core/mvp/ui/widget/MyTopbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 65
    invoke-direct {p0, p1, p2, v0}, Lcom/mh/movie/core/mvp/ui/widget/MyTopbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 69
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 70
    invoke-direct {p0, p1, p2}, Lcom/mh/movie/core/mvp/ui/widget/MyTopbar;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .line 74
    sget-object v0, Lcom/mh/movie/core/R$styleable;->MyTopbar:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 75
    sget v0, Lcom/mh/movie/core/R$styleable;->MyTopbar_mytopbar_transparent:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mh/movie/core/mvp/ui/widget/MyTopbar;->a:Z

    .line 76
    sget v0, Lcom/mh/movie/core/R$styleable;->MyTopbar_mytopbar_color:I

    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/MyTopbar;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/mh/movie/core/R$color;->themeColor:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/mh/movie/core/mvp/ui/widget/MyTopbar;->f:I

    .line 77
    sget v0, Lcom/mh/movie/core/R$styleable;->MyTopbar_mytopbar_left_icon:I

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/MyTopbar;->b:Landroid/graphics/drawable/Drawable;

    .line 78
    sget v0, Lcom/mh/movie/core/R$styleable;->MyTopbar_mytopbar_right_icon1:I

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/MyTopbar;->c:Landroid/graphics/drawable/Drawable;

    .line 79
    sget v0, Lcom/mh/movie/core/R$styleable;->MyTopbar_mytopbar_right_icon2:I

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/MyTopbar;->d:Landroid/graphics/drawable/Drawable;

    .line 80
    sget v0, Lcom/mh/movie/core/R$styleable;->MyTopbar_mytopbar_left_text:I

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/MyTopbar;->e:Ljava/lang/String;

    .line 82
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 84
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/MyTopbar;->g:Landroid/view/LayoutInflater;

    .line 85
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/MyTopbar;->g:Landroid/view/LayoutInflater;

    sget p2, Lcom/mh/movie/core/R$layout;->layout_topbar_:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/MyTopbar;->h:Landroid/view/View;

    .line 87
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/MyTopbar;->h:Landroid/view/View;

    sget p2, Lcom/mh/movie/core/R$id;->topbar_left_icon:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/MyTopbar;->l:Landroid/widget/ImageButton;

    .line 88
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/MyTopbar;->h:Landroid/view/View;

    sget p2, Lcom/mh/movie/core/R$id;->topbar_left_title:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/MyTopbar;->k:Landroid/widget/TextView;

    .line 89
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/MyTopbar;->h:Landroid/view/View;

    sget p2, Lcom/mh/movie/core/R$id;->topbar_right_icon1:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/MyTopbar;->m:Landroid/widget/ImageButton;

    .line 90
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/MyTopbar;->h:Landroid/view/View;

    sget p2, Lcom/mh/movie/core/R$id;->topbar_right_icon2:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/MyTopbar;->n:Landroid/widget/ImageButton;

    .line 91
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/MyTopbar;->h:Landroid/view/View;

    sget p2, Lcom/mh/movie/core/R$id;->iv_message_new:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/MyTopbar;->i:Landroid/view/View;

    .line 92
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/MyTopbar;->h:Landroid/view/View;

    sget p2, Lcom/mh/movie/core/R$id;->ll_left_:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/MyTopbar;->j:Landroid/widget/LinearLayout;

    .line 94
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/MyTopbar;->e:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/16 p2, 0x8

    if-eqz p1, :cond_0

    .line 95
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/MyTopbar;->k:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 97
    :cond_0
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/MyTopbar;->k:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 98
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/MyTopbar;->k:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/MyTopbar;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    :goto_0
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/MyTopbar;->b:Landroid/graphics/drawable/Drawable;

    if-nez p1, :cond_1

    .line 103
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/MyTopbar;->l:Landroid/widget/ImageButton;

    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_1

    .line 105
    :cond_1
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/MyTopbar;->l:Landroid/widget/ImageButton;

    invoke-virtual {p1, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 106
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/MyTopbar;->l:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/MyTopbar;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 109
    :goto_1
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/MyTopbar;->c:Landroid/graphics/drawable/Drawable;

    if-nez p1, :cond_2

    .line 110
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/MyTopbar;->m:Landroid/widget/ImageButton;

    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_2

    .line 112
    :cond_2
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/MyTopbar;->m:Landroid/widget/ImageButton;

    invoke-virtual {p1, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 113
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/MyTopbar;->m:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/MyTopbar;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 117
    :goto_2
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/MyTopbar;->d:Landroid/graphics/drawable/Drawable;

    if-nez p1, :cond_3

    .line 118
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/MyTopbar;->n:Landroid/widget/ImageButton;

    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_3

    .line 120
    :cond_3
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/MyTopbar;->n:Landroid/widget/ImageButton;

    invoke-virtual {p1, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 121
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/MyTopbar;->n:Landroid/widget/ImageButton;

    iget-object p2, p0, Lcom/mh/movie/core/mvp/ui/widget/MyTopbar;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 125
    :goto_3
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 p2, -0x1

    invoke-direct {p1, p2, p2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 126
    iget-object p2, p0, Lcom/mh/movie/core/mvp/ui/widget/MyTopbar;->h:Landroid/view/View;

    invoke-virtual {p0, p2, p1}, Lcom/mh/movie/core/mvp/ui/widget/MyTopbar;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 129
    iget-boolean p1, p0, Lcom/mh/movie/core/mvp/ui/widget/MyTopbar;->a:Z

    if-eqz p1, :cond_4

    .line 130
    invoke-virtual {p0, v1}, Lcom/mh/movie/core/mvp/ui/widget/MyTopbar;->setBackgroundColor(I)V

    .line 131
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/MyTopbar;->k:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/MyTopbar;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/mh/movie/core/R$color;->white:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_4

    .line 133
    :cond_4
    iget p1, p0, Lcom/mh/movie/core/mvp/ui/widget/MyTopbar;->f:I

    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/ui/widget/MyTopbar;->setBackgroundColor(I)V

    :goto_4
    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/drawable/Drawable;Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/MyTopbar;->m:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/MyTopbar;->m:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 167
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/MyTopbar;->m:Landroid/widget/ImageButton;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 168
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/MyTopbar;->m:Landroid/widget/ImageButton;

    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public b(Landroid/graphics/drawable/Drawable;Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 185
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/MyTopbar;->n:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/MyTopbar;->n:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 187
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/MyTopbar;->n:Landroid/widget/ImageButton;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 188
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/MyTopbar;->n:Landroid/widget/ImageButton;

    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public setLeftBarClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 220
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/MyTopbar;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setMessageNew(Z)V
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/MyTopbar;->i:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public setRightIcon1(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 174
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/MyTopbar;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0, p1}, Lcom/mh/movie/core/mvp/ui/widget/MyTopbar;->a(Landroid/graphics/drawable/Drawable;Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setRightIcon2(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 194
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/MyTopbar;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0, p1}, Lcom/mh/movie/core/mvp/ui/widget/MyTopbar;->b(Landroid/graphics/drawable/Drawable;Landroid/view/View$OnClickListener;)V

    return-void
.end method
