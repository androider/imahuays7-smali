.class public Lcom/mh/movie/core/mvp/ui/widget/Topbar;
.super Landroid/widget/LinearLayout;
.source "Topbar.java"


# instance fields
.field private a:I

.field private b:Z

.field private c:Z

.field private d:Landroid/graphics/drawable/Drawable;

.field private e:Landroid/graphics/drawable/Drawable;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:I

.field private j:I

.field private k:Landroid/view/LayoutInflater;

.field private l:Landroid/view/View;

.field private m:Landroid/widget/LinearLayout;

.field private n:Landroid/widget/LinearLayout;

.field private o:Landroid/widget/TextView;

.field private p:Landroid/widget/TextView;

.field private q:Landroid/widget/TextView;

.field private r:Landroid/widget/ImageView;

.field private s:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 77
    invoke-direct {p0, p1, v0}, Lcom/mh/movie/core/mvp/ui/widget/Topbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 81
    invoke-direct {p0, p1, p2, v0}, Lcom/mh/movie/core/mvp/ui/widget/Topbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 85
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 86
    invoke-direct {p0, p1, p2}, Lcom/mh/movie/core/mvp/ui/widget/Topbar;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .line 90
    sget-object v0, Lcom/mh/movie/core/R$styleable;->Topbar:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 91
    sget v0, Lcom/mh/movie/core/R$styleable;->Topbar_back_enable:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mh/movie/core/mvp/ui/widget/Topbar;->c:Z

    .line 92
    sget v0, Lcom/mh/movie/core/R$styleable;->Topbar_topbar_transparent:I

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mh/movie/core/mvp/ui/widget/Topbar;->b:Z

    .line 93
    sget v0, Lcom/mh/movie/core/R$styleable;->Topbar_topbar_color:I

    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/Topbar;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/mh/movie/core/R$color;->themeColor:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/mh/movie/core/mvp/ui/widget/Topbar;->i:I

    .line 94
    sget v0, Lcom/mh/movie/core/R$styleable;->Topbar_topbar_height:I

    const/high16 v2, 0x42200000    # 40.0f

    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/mh/movie/core/mvp/ui/widget/Topbar;->a:I

    .line 95
    sget v0, Lcom/mh/movie/core/R$styleable;->Topbar_left_icon:I

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/Topbar;->d:Landroid/graphics/drawable/Drawable;

    .line 96
    sget v0, Lcom/mh/movie/core/R$styleable;->Topbar_right_icon:I

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/Topbar;->e:Landroid/graphics/drawable/Drawable;

    .line 97
    sget v0, Lcom/mh/movie/core/R$styleable;->Topbar_left_text:I

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/Topbar;->f:Ljava/lang/String;

    .line 98
    sget v0, Lcom/mh/movie/core/R$styleable;->Topbar_right_text:I

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/Topbar;->g:Ljava/lang/String;

    .line 99
    sget v0, Lcom/mh/movie/core/R$styleable;->Topbar_title:I

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/Topbar;->h:Ljava/lang/String;

    .line 100
    sget v0, Lcom/mh/movie/core/R$styleable;->Topbar_title_color:I

    const-string v2, "#FFFFFF"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/mh/movie/core/mvp/ui/widget/Topbar;->j:I

    .line 102
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 104
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    iput-object p2, p0, Lcom/mh/movie/core/mvp/ui/widget/Topbar;->k:Landroid/view/LayoutInflater;

    .line 105
    iget-object p2, p0, Lcom/mh/movie/core/mvp/ui/widget/Topbar;->k:Landroid/view/LayoutInflater;

    sget v0, Lcom/mh/movie/core/R$layout;->layout_topbar_normal:I

    const/4 v2, 0x0

    invoke-virtual {p2, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/mh/movie/core/mvp/ui/widget/Topbar;->l:Landroid/view/View;

    .line 107
    iget-object p2, p0, Lcom/mh/movie/core/mvp/ui/widget/Topbar;->l:Landroid/view/View;

    sget v0, Lcom/mh/movie/core/R$id;->topbar_left_icon:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/mh/movie/core/mvp/ui/widget/Topbar;->r:Landroid/widget/ImageView;

    .line 108
    iget-object p2, p0, Lcom/mh/movie/core/mvp/ui/widget/Topbar;->l:Landroid/view/View;

    sget v0, Lcom/mh/movie/core/R$id;->topbar_right_icon:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/mh/movie/core/mvp/ui/widget/Topbar;->s:Landroid/widget/ImageView;

    .line 109
    iget-object p2, p0, Lcom/mh/movie/core/mvp/ui/widget/Topbar;->l:Landroid/view/View;

    sget v0, Lcom/mh/movie/core/R$id;->topbar_left_title:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/mh/movie/core/mvp/ui/widget/Topbar;->o:Landroid/widget/TextView;

    .line 110
    iget-object p2, p0, Lcom/mh/movie/core/mvp/ui/widget/Topbar;->l:Landroid/view/View;

    sget v0, Lcom/mh/movie/core/R$id;->topbar_right_title:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/mh/movie/core/mvp/ui/widget/Topbar;->p:Landroid/widget/TextView;

    .line 111
    iget-object p2, p0, Lcom/mh/movie/core/mvp/ui/widget/Topbar;->l:Landroid/view/View;

    sget v0, Lcom/mh/movie/core/R$id;->topbar_title:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/mh/movie/core/mvp/ui/widget/Topbar;->q:Landroid/widget/TextView;

    .line 112
    iget-object p2, p0, Lcom/mh/movie/core/mvp/ui/widget/Topbar;->l:Landroid/view/View;

    sget v0, Lcom/mh/movie/core/R$id;->topbar_left_ll:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/mh/movie/core/mvp/ui/widget/Topbar;->m:Landroid/widget/LinearLayout;

    .line 113
    iget-object p2, p0, Lcom/mh/movie/core/mvp/ui/widget/Topbar;->l:Landroid/view/View;

    sget v0, Lcom/mh/movie/core/R$id;->topbar_right_ll:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/mh/movie/core/mvp/ui/widget/Topbar;->n:Landroid/widget/LinearLayout;

    .line 116
    iget-object p2, p0, Lcom/mh/movie/core/mvp/ui/widget/Topbar;->h:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 117
    iget-object p2, p0, Lcom/mh/movie/core/mvp/ui/widget/Topbar;->q:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/Topbar;->h:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    iget-object p2, p0, Lcom/mh/movie/core/mvp/ui/widget/Topbar;->q:Landroid/widget/TextView;

    iget v0, p0, Lcom/mh/movie/core/mvp/ui/widget/Topbar;->j:I

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 122
    :cond_0
    iget-boolean p2, p0, Lcom/mh/movie/core/mvp/ui/widget/Topbar;->b:Z

    if-eqz p2, :cond_1

    .line 123
    iget-object p2, p0, Lcom/mh/movie/core/mvp/ui/widget/Topbar;->l:Landroid/view/View;

    invoke-virtual {p2, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 124
    iget-object p2, p0, Lcom/mh/movie/core/mvp/ui/widget/Topbar;->o:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/Topbar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/mh/movie/core/R$color;->themeColor:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 125
    iget-object p2, p0, Lcom/mh/movie/core/mvp/ui/widget/Topbar;->p:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/Topbar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/mh/movie/core/R$color;->themeColor:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 127
    :cond_1
    iget-object p2, p0, Lcom/mh/movie/core/mvp/ui/widget/Topbar;->l:Landroid/view/View;

    iget v0, p0, Lcom/mh/movie/core/mvp/ui/widget/Topbar;->i:I

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 128
    iget-object p2, p0, Lcom/mh/movie/core/mvp/ui/widget/Topbar;->o:Landroid/widget/TextView;

    const-string v0, "#FFFFFF"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 129
    iget-object p2, p0, Lcom/mh/movie/core/mvp/ui/widget/Topbar;->p:Landroid/widget/TextView;

    const-string v0, "#FFFFFF"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 132
    :goto_0
    iget-object p2, p0, Lcom/mh/movie/core/mvp/ui/widget/Topbar;->d:Landroid/graphics/drawable/Drawable;

    const/16 v0, 0x8

    if-nez p2, :cond_2

    .line 133
    iget-object p2, p0, Lcom/mh/movie/core/mvp/ui/widget/Topbar;->r:Landroid/widget/ImageView;

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 135
    :cond_2
    iget-object p2, p0, Lcom/mh/movie/core/mvp/ui/widget/Topbar;->o:Landroid/widget/TextView;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 136
    iget-object p2, p0, Lcom/mh/movie/core/mvp/ui/widget/Topbar;->r:Landroid/widget/ImageView;

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 137
    iget-object p2, p0, Lcom/mh/movie/core/mvp/ui/widget/Topbar;->r:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/widget/Topbar;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 139
    :goto_1
    iget-object p2, p0, Lcom/mh/movie/core/mvp/ui/widget/Topbar;->e:Landroid/graphics/drawable/Drawable;

    if-nez p2, :cond_3

    .line 140
    iget-object p2, p0, Lcom/mh/movie/core/mvp/ui/widget/Topbar;->s:Landroid/widget/ImageView;

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 142
    :cond_3
    iget-object p2, p0, Lcom/mh/movie/core/mvp/ui/widget/Topbar;->p:Landroid/widget/TextView;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 143
    iget-object p2, p0, Lcom/mh/movie/core/mvp/ui/widget/Topbar;->s:Landroid/widget/ImageView;

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 144
    iget-object p2, p0, Lcom/mh/movie/core/mvp/ui/widget/Topbar;->s:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/widget/Topbar;->e:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 147
    :goto_2
    iget-object p2, p0, Lcom/mh/movie/core/mvp/ui/widget/Topbar;->f:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 148
    iget-object p2, p0, Lcom/mh/movie/core/mvp/ui/widget/Topbar;->o:Landroid/widget/TextView;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    .line 150
    :cond_4
    iget-object p2, p0, Lcom/mh/movie/core/mvp/ui/widget/Topbar;->r:Landroid/widget/ImageView;

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 151
    iget-object p2, p0, Lcom/mh/movie/core/mvp/ui/widget/Topbar;->o:Landroid/widget/TextView;

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 152
    iget-object p2, p0, Lcom/mh/movie/core/mvp/ui/widget/Topbar;->o:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/widget/Topbar;->f:Ljava/lang/String;

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    :goto_3
    iget-object p2, p0, Lcom/mh/movie/core/mvp/ui/widget/Topbar;->g:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 155
    iget-object p2, p0, Lcom/mh/movie/core/mvp/ui/widget/Topbar;->p:Landroid/widget/TextView;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4

    .line 157
    :cond_5
    iget-object p2, p0, Lcom/mh/movie/core/mvp/ui/widget/Topbar;->s:Landroid/widget/ImageView;

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 158
    iget-object p2, p0, Lcom/mh/movie/core/mvp/ui/widget/Topbar;->p:Landroid/widget/TextView;

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 159
    iget-object p2, p0, Lcom/mh/movie/core/mvp/ui/widget/Topbar;->p:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/widget/Topbar;->g:Ljava/lang/String;

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 163
    :goto_4
    iget-boolean p2, p0, Lcom/mh/movie/core/mvp/ui/widget/Topbar;->c:Z

    if-eqz p2, :cond_6

    .line 164
    iget-object p2, p0, Lcom/mh/movie/core/mvp/ui/widget/Topbar;->o:Landroid/widget/TextView;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 165
    iget-object p2, p0, Lcom/mh/movie/core/mvp/ui/widget/Topbar;->r:Landroid/widget/ImageView;

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 166
    iget-object p2, p0, Lcom/mh/movie/core/mvp/ui/widget/Topbar;->r:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/Topbar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/mh/movie/core/R$mipmap;->icon_back:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 167
    iget-object p2, p0, Lcom/mh/movie/core/mvp/ui/widget/Topbar;->m:Landroid/widget/LinearLayout;

    new-instance v0, Lcom/mh/movie/core/mvp/ui/widget/Topbar$1;

    invoke-direct {v0, p0, p1}, Lcom/mh/movie/core/mvp/ui/widget/Topbar$1;-><init>(Lcom/mh/movie/core/mvp/ui/widget/Topbar;Landroid/content/Context;)V

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 175
    :cond_6
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 p2, -0x1

    invoke-direct {p1, p2, p2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 176
    iget-object p2, p0, Lcom/mh/movie/core/mvp/ui/widget/Topbar;->l:Landroid/view/View;

    invoke-virtual {p0, p2, p1}, Lcom/mh/movie/core/mvp/ui/widget/Topbar;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 377
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/Topbar;->r:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 378
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/Topbar;->r:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public getLeftButton()Landroid/widget/LinearLayout;
    .locals 1

    .line 363
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/Topbar;->m:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 364
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/Topbar;->m:Landroid/widget/LinearLayout;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLeftTextView()Landroid/widget/TextView;
    .locals 1

    .line 349
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/Topbar;->o:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 350
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/Topbar;->o:Landroid/widget/TextView;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRightButton()Landroid/widget/LinearLayout;
    .locals 1

    .line 356
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/Topbar;->n:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 357
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/Topbar;->n:Landroid/widget/LinearLayout;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRightTextView()Landroid/widget/TextView;
    .locals 1

    .line 342
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/Topbar;->p:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 343
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/Topbar;->p:Landroid/widget/TextView;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 370
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/Topbar;->q:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 371
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/Topbar;->q:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public setLeftBarClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 334
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/Topbar;->o:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 335
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/Topbar;->o:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 336
    :cond_0
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/Topbar;->r:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 337
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/Topbar;->m:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setRightBarClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 321
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/Topbar;->p:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 322
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/Topbar;->p:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 323
    :cond_0
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/Topbar;->s:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 324
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/Topbar;->n:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1

    .line 185
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/Topbar;->q:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 187
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/Topbar;->q:Landroid/widget/TextView;

    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 188
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/Topbar;->q:Landroid/widget/TextView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 189
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/Topbar;->q:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setSelected(Z)V

    :cond_0
    return-void
.end method

.method public setTitleColor(I)V
    .locals 1

    .line 212
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/Topbar;->q:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/Topbar;->q:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    return-void
.end method
