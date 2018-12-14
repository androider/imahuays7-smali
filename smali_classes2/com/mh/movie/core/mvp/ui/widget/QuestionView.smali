.class public Lcom/mh/movie/core/mvp/ui/widget/QuestionView;
.super Landroid/widget/LinearLayout;
.source "QuestionView.java"


# instance fields
.field public a:Z

.field public b:I

.field public c:I

.field public d:I

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private f:Landroid/graphics/drawable/Drawable;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/view/View;

.field private k:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 43
    invoke-direct {p0, p1, v0}, Lcom/mh/movie/core/mvp/ui/widget/QuestionView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 47
    invoke-direct {p0, p1, p2, v0}, Lcom/mh/movie/core/mvp/ui/widget/QuestionView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 51
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    .line 30
    iput-boolean p1, p0, Lcom/mh/movie/core/mvp/ui/widget/QuestionView;->a:Z

    const/4 p1, 0x0

    .line 32
    iput p1, p0, Lcom/mh/movie/core/mvp/ui/widget/QuestionView;->c:I

    .line 33
    iput p1, p0, Lcom/mh/movie/core/mvp/ui/widget/QuestionView;->d:I

    .line 52
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/widget/QuestionView;->b()V

    return-void
.end method

.method static synthetic a(Lcom/mh/movie/core/mvp/ui/widget/QuestionView;)Ljava/util/Set;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/mh/movie/core/mvp/ui/widget/QuestionView;->k:Ljava/util/Set;

    return-object p0
.end method

.method private b()V
    .locals 3

    const/4 v0, 0x1

    .line 56
    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/widget/QuestionView;->setOrientation(I)V

    .line 57
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/QuestionView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/mh/movie/core/R$layout;->question_title:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/mh/movie/core/mvp/ui/widget/QuestionView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/QuestionView;->j:Landroid/view/View;

    .line 58
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/QuestionView;->j:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/widget/QuestionView;->addView(Landroid/view/View;)V

    .line 59
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/QuestionView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/mh/movie/core/R$color;->text_66:I

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/mh/movie/core/mvp/ui/widget/QuestionView;->b:I

    .line 60
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/QuestionView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x41c80000    # 25.0f

    invoke-static {v0, v1}, Lcom/jess/arms/c/e;->a(Landroid/content/Context;F)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/mh/movie/core/mvp/ui/widget/QuestionView;->c:I

    .line 61
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/QuestionView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x41200000    # 10.0f

    invoke-static {v0, v1}, Lcom/jess/arms/c/e;->a(Landroid/content/Context;F)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/mh/movie/core/mvp/ui/widget/QuestionView;->d:I

    .line 62
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/QuestionView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/mh/movie/core/R$drawable;->question_selector:I

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/QuestionView;->f:Landroid/graphics/drawable/Drawable;

    .line 65
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/QuestionView;->j:Landroid/view/View;

    sget v1, Lcom/mh/movie/core/R$id;->tv_qv_number:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/QuestionView;->g:Landroid/widget/TextView;

    .line 66
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/QuestionView;->j:Landroid/view/View;

    sget v1, Lcom/mh/movie/core/R$id;->tv_qv_type:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/QuestionView;->h:Landroid/widget/TextView;

    .line 67
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/QuestionView;->j:Landroid/view/View;

    sget v1, Lcom/mh/movie/core/R$id;->tv_qv_title:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/QuestionView;->i:Landroid/widget/TextView;

    .line 68
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/QuestionView;->k:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 7

    .line 84
    new-instance v0, Landroid/widget/RadioGroup;

    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/QuestionView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/RadioGroup;-><init>(Landroid/content/Context;)V

    .line 85
    iget v1, p0, Lcom/mh/movie/core/mvp/ui/widget/QuestionView;->c:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/RadioGroup;->setPadding(IIII)V

    const/4 v1, 0x0

    .line 86
    :goto_0
    iget-object v3, p0, Lcom/mh/movie/core/mvp/ui/widget/QuestionView;->e:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 87
    iget-object v3, p0, Lcom/mh/movie/core/mvp/ui/widget/QuestionView;->e:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 88
    iget-boolean v4, p0, Lcom/mh/movie/core/mvp/ui/widget/QuestionView;->a:Z

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    .line 89
    new-instance v4, Landroid/widget/RadioButton;

    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/QuestionView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v4, v6}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;)V

    .line 90
    invoke-virtual {v4, v3}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 91
    iget v3, p0, Lcom/mh/movie/core/mvp/ui/widget/QuestionView;->b:I

    invoke-virtual {v4, v3}, Landroid/widget/RadioButton;->setTextColor(I)V

    .line 92
    invoke-virtual {v0, v4}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V

    .line 93
    invoke-virtual {v4}, Landroid/widget/RadioButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 94
    iget v6, p0, Lcom/mh/movie/core/mvp/ui/widget/QuestionView;->c:I

    invoke-virtual {v3, v2, v2, v2, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 95
    invoke-virtual {v4, v3}, Landroid/widget/RadioButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 96
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/QuestionView;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v6, Lcom/mh/movie/core/R$drawable;->question_selector:I

    invoke-static {v3, v6}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/mh/movie/core/mvp/ui/widget/QuestionView;->f:Landroid/graphics/drawable/Drawable;

    .line 97
    iget-object v3, p0, Lcom/mh/movie/core/mvp/ui/widget/QuestionView;->f:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v3, v5, v5, v5}, Landroid/widget/RadioButton;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 98
    iget v3, p0, Lcom/mh/movie/core/mvp/ui/widget/QuestionView;->d:I

    invoke-virtual {v4, v3}, Landroid/widget/RadioButton;->setCompoundDrawablePadding(I)V

    .line 99
    invoke-virtual {v4, v5}, Landroid/widget/RadioButton;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 101
    new-instance v3, Lcom/mh/movie/core/mvp/ui/widget/QuestionView$1;

    invoke-direct {v3, p0, v1}, Lcom/mh/movie/core/mvp/ui/widget/QuestionView$1;-><init>(Lcom/mh/movie/core/mvp/ui/widget/QuestionView;I)V

    invoke-virtual {v4, v3}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_1

    .line 113
    :cond_0
    new-instance v4, Landroid/widget/CheckBox;

    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/QuestionView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v4, v6}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    .line 114
    invoke-virtual {v4, v3}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 115
    iget v3, p0, Lcom/mh/movie/core/mvp/ui/widget/QuestionView;->b:I

    invoke-virtual {v4, v3}, Landroid/widget/CheckBox;->setTextColor(I)V

    .line 116
    invoke-virtual {v0, v4}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V

    .line 117
    invoke-virtual {v4}, Landroid/widget/CheckBox;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 118
    iget v6, p0, Lcom/mh/movie/core/mvp/ui/widget/QuestionView;->c:I

    invoke-virtual {v3, v2, v2, v2, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 119
    invoke-virtual {v4, v3}, Landroid/widget/CheckBox;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 120
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/QuestionView;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v6, Lcom/mh/movie/core/R$drawable;->question_selector:I

    invoke-static {v3, v6}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/mh/movie/core/mvp/ui/widget/QuestionView;->f:Landroid/graphics/drawable/Drawable;

    .line 121
    iget-object v3, p0, Lcom/mh/movie/core/mvp/ui/widget/QuestionView;->f:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v3, v5, v5, v5}, Landroid/widget/CheckBox;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 122
    iget v3, p0, Lcom/mh/movie/core/mvp/ui/widget/QuestionView;->d:I

    invoke-virtual {v4, v3}, Landroid/widget/CheckBox;->setCompoundDrawablePadding(I)V

    .line 123
    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 125
    new-instance v3, Lcom/mh/movie/core/mvp/ui/widget/QuestionView$2;

    invoke-direct {v3, p0, v1}, Lcom/mh/movie/core/mvp/ui/widget/QuestionView$2;-><init>(Lcom/mh/movie/core/mvp/ui/widget/QuestionView;I)V

    invoke-virtual {v4, v3}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 138
    :cond_1
    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/widget/QuestionView;->addView(Landroid/view/View;)V

    .line 139
    new-instance v0, Landroid/view/View;

    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/QuestionView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 140
    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/widget/QuestionView;->addView(Landroid/view/View;)V

    .line 141
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, 0x2

    invoke-direct {v1, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 142
    iget v3, p0, Lcom/mh/movie/core/mvp/ui/widget/QuestionView;->d:I

    invoke-virtual {v1, v2, v2, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 143
    sget v2, Lcom/mh/movie/core/R$color;->grey_e8:I

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 144
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public a(IZLjava/lang/String;)V
    .locals 1

    .line 77
    iput-boolean p2, p0, Lcom/mh/movie/core/mvp/ui/widget/QuestionView;->a:Z

    .line 78
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/QuestionView;->i:Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    iget-object p3, p0, Lcom/mh/movie/core/mvp/ui/widget/QuestionView;->g:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/QuestionView;->h:Landroid/widget/TextView;

    if-eqz p2, :cond_0

    const-string p2, "[\u5355\u9009]"

    goto :goto_0

    :cond_0
    const-string p2, "[\u591a\u9009] "

    :goto_0
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public getCheckedList()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 148
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/QuestionView;->k:Ljava/util/Set;

    return-object v0
.end method

.method public setData(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 72
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/QuestionView;->e:Ljava/util/List;

    .line 73
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/QuestionView;->a()V

    return-void
.end method
