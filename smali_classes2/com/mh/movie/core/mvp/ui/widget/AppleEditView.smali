.class public Lcom/mh/movie/core/mvp/ui/widget/AppleEditView;
.super Landroid/widget/FrameLayout;
.source "AppleEditView.java"


# instance fields
.field private a:Landroid/view/View;

.field private b:I

.field private c:I

.field private d:I

.field private e:Landroid/widget/EditText;

.field private f:Landroid/widget/ImageView;

.field private g:Landroid/text/TextWatcher;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 35
    invoke-direct {p0, p1, v0}, Lcom/mh/movie/core/mvp/ui/widget/AppleEditView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 39
    invoke-direct {p0, p1, p2, v0}, Lcom/mh/movie/core/mvp/ui/widget/AppleEditView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 43
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    invoke-direct {p0, p1, p2}, Lcom/mh/movie/core/mvp/ui/widget/AppleEditView;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic a(Lcom/mh/movie/core/mvp/ui/widget/AppleEditView;)Landroid/text/TextWatcher;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/mh/movie/core/mvp/ui/widget/AppleEditView;->g:Landroid/text/TextWatcher;

    return-object p0
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 49
    sget-object v0, Lcom/mh/movie/core/R$styleable;->AppleEditView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 50
    sget v0, Lcom/mh/movie/core/R$styleable;->AppleEditView_aev_drawable_left:I

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/mh/movie/core/mvp/ui/widget/AppleEditView;->c:I

    .line 51
    sget v0, Lcom/mh/movie/core/R$styleable;->AppleEditView_aev_gravity:I

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/mh/movie/core/mvp/ui/widget/AppleEditView;->d:I

    .line 52
    sget v0, Lcom/mh/movie/core/R$styleable;->AppleEditView_aev_background:I

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/mh/movie/core/mvp/ui/widget/AppleEditView;->b:I

    .line 53
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 55
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p2, Lcom/mh/movie/core/R$layout;->apple_editview:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/AppleEditView;->a:Landroid/view/View;

    .line 56
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/AppleEditView;->a:Landroid/view/View;

    sget p2, Lcom/mh/movie/core/R$id;->et_search:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/AppleEditView;->e:Landroid/widget/EditText;

    .line 57
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/AppleEditView;->a:Landroid/view/View;

    sget p2, Lcom/mh/movie/core/R$id;->cancel:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/AppleEditView;->f:Landroid/widget/ImageView;

    .line 59
    iget p1, p0, Lcom/mh/movie/core/mvp/ui/widget/AppleEditView;->d:I

    if-eq p1, v1, :cond_0

    .line 60
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/AppleEditView;->e:Landroid/widget/EditText;

    iget p2, p0, Lcom/mh/movie/core/mvp/ui/widget/AppleEditView;->d:I

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setGravity(I)V

    .line 62
    :cond_0
    iget p1, p0, Lcom/mh/movie/core/mvp/ui/widget/AppleEditView;->c:I

    if-eq p1, v1, :cond_1

    .line 63
    iget p1, p0, Lcom/mh/movie/core/mvp/ui/widget/AppleEditView;->c:I

    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/ui/widget/AppleEditView;->setDrawableLeft(I)V

    .line 65
    :cond_1
    iget p1, p0, Lcom/mh/movie/core/mvp/ui/widget/AppleEditView;->b:I

    if-eq p1, v1, :cond_2

    .line 66
    iget p1, p0, Lcom/mh/movie/core/mvp/ui/widget/AppleEditView;->b:I

    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/ui/widget/AppleEditView;->setBackground(I)V

    .line 68
    :cond_2
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/AppleEditView;->e:Landroid/widget/EditText;

    new-instance p2, Lcom/mh/movie/core/mvp/ui/widget/AppleEditView$1;

    invoke-direct {p2, p0}, Lcom/mh/movie/core/mvp/ui/widget/AppleEditView$1;-><init>(Lcom/mh/movie/core/mvp/ui/widget/AppleEditView;)V

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 92
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/AppleEditView;->f:Landroid/widget/ImageView;

    invoke-static {p1}, Lcom/jakewharton/rxbinding/view/b;->a(Landroid/view/View;)Lrx/a;

    move-result-object p1

    const-wide/16 v0, 0x1f4

    sget-object p2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 93
    invoke-virtual {p1, v0, v1, p2}, Lrx/a;->a(JLjava/util/concurrent/TimeUnit;)Lrx/a;

    move-result-object p1

    new-instance p2, Lcom/mh/movie/core/mvp/ui/widget/a;

    invoke-direct {p2, p0}, Lcom/mh/movie/core/mvp/ui/widget/a;-><init>(Lcom/mh/movie/core/mvp/ui/widget/AppleEditView;)V

    .line 94
    invoke-virtual {p1, p2}, Lrx/a;->a(Lrx/b/b;)Lrx/f;

    return-void
.end method

.method static synthetic b(Lcom/mh/movie/core/mvp/ui/widget/AppleEditView;)Landroid/widget/ImageView;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/mh/movie/core/mvp/ui/widget/AppleEditView;->f:Landroid/widget/ImageView;

    return-object p0
.end method


# virtual methods
.method final synthetic a(Ljava/lang/Void;)V
    .locals 1

    .line 94
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/AppleEditView;->e:Landroid/widget/EditText;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/AppleEditView;->e:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setBackground(I)V
    .locals 0

    .line 113
    iput p1, p0, Lcom/mh/movie/core/mvp/ui/widget/AppleEditView;->b:I

    .line 114
    iget p1, p0, Lcom/mh/movie/core/mvp/ui/widget/AppleEditView;->b:I

    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/ui/widget/AppleEditView;->setBackgroundResource(I)V

    return-void
.end method

.method public setDrawableLeft(I)V
    .locals 3

    .line 103
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/AppleEditView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 104
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 105
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/AppleEditView;->e:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, v1, v1}, Landroid/widget/EditText;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setHintText(Ljava/lang/String;)V
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/AppleEditView;->e:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    return-void
.end method
