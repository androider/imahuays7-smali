.class public Lcom/mh/movie/core/mvp/ui/widget/MyIconItem;
.super Landroid/widget/LinearLayout;
.source "MyIconItem.java"


# instance fields
.field private a:Landroid/view/View;

.field private b:Landroid/widget/ImageView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/graphics/drawable/Drawable;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 38
    invoke-direct {p0, p1, v0}, Lcom/mh/movie/core/mvp/ui/widget/MyIconItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 42
    invoke-direct {p0, p1, p2, v0}, Lcom/mh/movie/core/mvp/ui/widget/MyIconItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 46
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    invoke-direct {p0, p1, p2}, Lcom/mh/movie/core/mvp/ui/widget/MyIconItem;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 53
    sget-object v0, Lcom/mh/movie/core/R$styleable;->Myitem:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 54
    sget v0, Lcom/mh/movie/core/R$styleable;->Myitem_mi_icon:I

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/MyIconItem;->e:Landroid/graphics/drawable/Drawable;

    .line 55
    sget v0, Lcom/mh/movie/core/R$styleable;->Myitem_mi_title:I

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/MyIconItem;->f:Ljava/lang/String;

    .line 56
    sget v0, Lcom/mh/movie/core/R$styleable;->Myitem_mi_num:I

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/MyIconItem;->g:Ljava/lang/String;

    .line 57
    sget v0, Lcom/mh/movie/core/R$styleable;->Myitem_mi_text_size:I

    const/high16 v1, 0x41e00000    # 28.0f

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/mh/movie/core/mvp/ui/widget/MyIconItem;->h:F

    .line 58
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 60
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p2, Lcom/mh/movie/core/R$layout;->my_func_item:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/MyIconItem;->a:Landroid/view/View;

    .line 62
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/MyIconItem;->a:Landroid/view/View;

    sget p2, Lcom/mh/movie/core/R$id;->icon:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/MyIconItem;->b:Landroid/widget/ImageView;

    .line 63
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/MyIconItem;->a:Landroid/view/View;

    sget p2, Lcom/mh/movie/core/R$id;->title:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/MyIconItem;->c:Landroid/widget/TextView;

    .line 64
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/MyIconItem;->a:Landroid/view/View;

    sget p2, Lcom/mh/movie/core/R$id;->num:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/MyIconItem;->d:Landroid/widget/TextView;

    .line 66
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/MyIconItem;->c:Landroid/widget/TextView;

    iget p2, p0, Lcom/mh/movie/core/mvp/ui/widget/MyIconItem;->h:F

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 67
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/MyIconItem;->f:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/ui/widget/MyIconItem;->setTitle(Ljava/lang/String;)V

    .line 68
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/MyIconItem;->g:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/ui/widget/MyIconItem;->setNum(Ljava/lang/String;)V

    .line 69
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/MyIconItem;->b:Landroid/widget/ImageView;

    iget-object p2, p0, Lcom/mh/movie/core/mvp/ui/widget/MyIconItem;->e:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 71
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 p2, -0x2

    invoke-direct {p1, p2, p2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 72
    iget-object p2, p0, Lcom/mh/movie/core/mvp/ui/widget/MyIconItem;->a:Landroid/view/View;

    invoke-virtual {p0, p2, p1}, Lcom/mh/movie/core/mvp/ui/widget/MyIconItem;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public setNum(Ljava/lang/String;)V
    .locals 3

    .line 82
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/MyIconItem;->d:Landroid/widget/TextView;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 83
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/MyIconItem;->d:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 3

    .line 76
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/MyIconItem;->c:Landroid/widget/TextView;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 77
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/MyIconItem;->c:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
