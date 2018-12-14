.class public Lcom/mh/movie/core/mvp/ui/widget/BankCardInputView;
.super Landroid/support/v7/widget/AppCompatEditText;
.source "BankCardInputView.java"


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:Ljava/lang/String;

.field private g:Landroid/text/TextWatcher;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 35
    invoke-direct {p0, p1, v0}, Lcom/mh/movie/core/mvp/ui/widget/BankCardInputView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 39
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/AppCompatEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 v0, 0x32

    .line 31
    iput v0, p0, Lcom/mh/movie/core/mvp/ui/widget/BankCardInputView;->e:I

    .line 98
    new-instance v0, Lcom/mh/movie/core/mvp/ui/widget/BankCardInputView$1;

    invoke-direct {v0, p0}, Lcom/mh/movie/core/mvp/ui/widget/BankCardInputView$1;-><init>(Lcom/mh/movie/core/mvp/ui/widget/BankCardInputView;)V

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/BankCardInputView;->g:Landroid/text/TextWatcher;

    .line 40
    invoke-direct {p0, p1, p2}, Lcom/mh/movie/core/mvp/ui/widget/BankCardInputView;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/AppCompatEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 p3, 0x32

    .line 31
    iput p3, p0, Lcom/mh/movie/core/mvp/ui/widget/BankCardInputView;->e:I

    .line 98
    new-instance p3, Lcom/mh/movie/core/mvp/ui/widget/BankCardInputView$1;

    invoke-direct {p3, p0}, Lcom/mh/movie/core/mvp/ui/widget/BankCardInputView$1;-><init>(Lcom/mh/movie/core/mvp/ui/widget/BankCardInputView;)V

    iput-object p3, p0, Lcom/mh/movie/core/mvp/ui/widget/BankCardInputView;->g:Landroid/text/TextWatcher;

    .line 45
    invoke-direct {p0, p1, p2}, Lcom/mh/movie/core/mvp/ui/widget/BankCardInputView;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic a(Lcom/mh/movie/core/mvp/ui/widget/BankCardInputView;)I
    .locals 0

    .line 24
    iget p0, p0, Lcom/mh/movie/core/mvp/ui/widget/BankCardInputView;->a:I

    return p0
.end method

.method static synthetic a(Lcom/mh/movie/core/mvp/ui/widget/BankCardInputView;I)I
    .locals 0

    .line 24
    iput p1, p0, Lcom/mh/movie/core/mvp/ui/widget/BankCardInputView;->a:I

    return p1
.end method

.method private a()V
    .locals 4

    .line 59
    iget v0, p0, Lcom/mh/movie/core/mvp/ui/widget/BankCardInputView;->d:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-nez v0, :cond_0

    const/16 v0, 0xd

    .line 60
    iput v0, p0, Lcom/mh/movie/core/mvp/ui/widget/BankCardInputView;->e:I

    const-string v0, "0123456789 "

    .line 61
    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/BankCardInputView;->f:Ljava/lang/String;

    .line 62
    invoke-virtual {p0, v2}, Lcom/mh/movie/core/mvp/ui/widget/BankCardInputView;->setInputType(I)V

    goto :goto_0

    .line 63
    :cond_0
    iget v0, p0, Lcom/mh/movie/core/mvp/ui/widget/BankCardInputView;->d:I

    if-ne v0, v1, :cond_1

    const/16 v0, 0x1f

    .line 64
    iput v0, p0, Lcom/mh/movie/core/mvp/ui/widget/BankCardInputView;->e:I

    const-string v0, "0123456789 "

    .line 65
    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/BankCardInputView;->f:Ljava/lang/String;

    .line 66
    invoke-virtual {p0, v2}, Lcom/mh/movie/core/mvp/ui/widget/BankCardInputView;->setInputType(I)V

    goto :goto_0

    .line 67
    :cond_1
    iget v0, p0, Lcom/mh/movie/core/mvp/ui/widget/BankCardInputView;->d:I

    if-ne v0, v2, :cond_2

    const/16 v0, 0x15

    .line 68
    iput v0, p0, Lcom/mh/movie/core/mvp/ui/widget/BankCardInputView;->e:I

    const/4 v0, 0x0

    .line 69
    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/BankCardInputView;->f:Ljava/lang/String;

    .line 70
    invoke-virtual {p0, v1}, Lcom/mh/movie/core/mvp/ui/widget/BankCardInputView;->setInputType(I)V

    .line 72
    :cond_2
    :goto_0
    new-array v0, v1, [Landroid/text/InputFilter;

    const/4 v1, 0x0

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    iget v3, p0, Lcom/mh/movie/core/mvp/ui/widget/BankCardInputView;->e:I

    invoke-direct {v2, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/widget/BankCardInputView;->setFilters([Landroid/text/InputFilter;)V

    return-void
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 49
    sget-object v0, Lcom/mh/movie/core/R$styleable;->ContentWithSpaceEditText:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 50
    sget p2, Lcom/mh/movie/core/R$styleable;->ContentWithSpaceEditText_input_type:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/mh/movie/core/mvp/ui/widget/BankCardInputView;->d:I

    .line 52
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 53
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/widget/BankCardInputView;->a()V

    .line 54
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/BankCardInputView;->setSingleLine()V

    .line 55
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/BankCardInputView;->g:Landroid/text/TextWatcher;

    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/ui/widget/BankCardInputView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method private a(I)Z
    .locals 2

    .line 204
    iget v0, p0, Lcom/mh/movie/core/mvp/ui/widget/BankCardInputView;->d:I

    if-nez v0, :cond_0

    .line 205
    invoke-direct {p0, p1}, Lcom/mh/movie/core/mvp/ui/widget/BankCardInputView;->b(I)Z

    move-result p1

    return p1

    .line 206
    :cond_0
    iget v0, p0, Lcom/mh/movie/core/mvp/ui/widget/BankCardInputView;->d:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 207
    invoke-direct {p0, p1}, Lcom/mh/movie/core/mvp/ui/widget/BankCardInputView;->c(I)Z

    move-result p1

    return p1

    .line 208
    :cond_1
    iget v0, p0, Lcom/mh/movie/core/mvp/ui/widget/BankCardInputView;->d:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 209
    invoke-direct {p0, p1}, Lcom/mh/movie/core/mvp/ui/widget/BankCardInputView;->d(I)Z

    move-result p1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method static synthetic b(Lcom/mh/movie/core/mvp/ui/widget/BankCardInputView;)I
    .locals 0

    .line 24
    iget p0, p0, Lcom/mh/movie/core/mvp/ui/widget/BankCardInputView;->b:I

    return p0
.end method

.method static synthetic b(Lcom/mh/movie/core/mvp/ui/widget/BankCardInputView;I)I
    .locals 0

    .line 24
    iput p1, p0, Lcom/mh/movie/core/mvp/ui/widget/BankCardInputView;->c:I

    return p1
.end method

.method private b(I)Z
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x4

    if-lt p1, v1, :cond_0

    if-eq p1, v1, :cond_1

    add-int/2addr p1, v0

    .line 215
    rem-int/lit8 p1, p1, 0x5

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method static synthetic c(Lcom/mh/movie/core/mvp/ui/widget/BankCardInputView;I)I
    .locals 0

    .line 24
    iput p1, p0, Lcom/mh/movie/core/mvp/ui/widget/BankCardInputView;->b:I

    return p1
.end method

.method static synthetic c(Lcom/mh/movie/core/mvp/ui/widget/BankCardInputView;)Landroid/text/TextWatcher;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/mh/movie/core/mvp/ui/widget/BankCardInputView;->g:Landroid/text/TextWatcher;

    return-object p0
.end method

.method private c(I)Z
    .locals 0

    .line 219
    rem-int/lit8 p1, p1, 0x5

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method static synthetic d(Lcom/mh/movie/core/mvp/ui/widget/BankCardInputView;)I
    .locals 0

    .line 24
    iget p0, p0, Lcom/mh/movie/core/mvp/ui/widget/BankCardInputView;->e:I

    return p0
.end method

.method private d(I)Z
    .locals 1

    const/4 v0, 0x6

    if-le p1, v0, :cond_1

    const/4 v0, 0x7

    if-eq p1, v0, :cond_0

    add-int/lit8 p1, p1, -0x2

    .line 223
    rem-int/lit8 p1, p1, 0x5

    if-nez p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method static synthetic d(Lcom/mh/movie/core/mvp/ui/widget/BankCardInputView;I)Z
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcom/mh/movie/core/mvp/ui/widget/BankCardInputView;->a(I)Z

    move-result p0

    return p0
.end method

.method static synthetic e(Lcom/mh/movie/core/mvp/ui/widget/BankCardInputView;)I
    .locals 0

    .line 24
    iget p0, p0, Lcom/mh/movie/core/mvp/ui/widget/BankCardInputView;->c:I

    return p0
.end method


# virtual methods
.method public getTextWithoutSpace()Ljava/lang/String;
    .locals 3

    .line 165
    invoke-super {p0}, Landroid/support/v7/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, " "

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setContentType(I)V
    .locals 0

    .line 94
    iput p1, p0, Lcom/mh/movie/core/mvp/ui/widget/BankCardInputView;->d:I

    .line 95
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/widget/BankCardInputView;->a()V

    return-void
.end method

.method public setInputType(I)V
    .locals 3

    .line 77
    iget v0, p0, Lcom/mh/movie/core/mvp/ui/widget/BankCardInputView;->d:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/mh/movie/core/mvp/ui/widget/BankCardInputView;->d:I

    if-ne v0, v2, :cond_0

    goto :goto_0

    .line 79
    :cond_0
    iget v0, p0, Lcom/mh/movie/core/mvp/ui/widget/BankCardInputView;->d:I

    if-ne v0, v1, :cond_2

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x2

    .line 82
    :cond_2
    :goto_1
    invoke-super {p0, p1}, Landroid/support/v7/widget/AppCompatEditText;->setInputType(I)V

    .line 84
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/BankCardInputView;->f:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 85
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/BankCardInputView;->f:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/method/DigitsKeyListener;->getInstance(Ljava/lang/String;)Landroid/text/method/DigitsKeyListener;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/ui/widget/BankCardInputView;->setKeyListener(Landroid/text/method/KeyListener;)V

    :cond_3
    return-void
.end method
