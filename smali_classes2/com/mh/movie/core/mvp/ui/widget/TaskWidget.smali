.class public Lcom/mh/movie/core/mvp/ui/widget/TaskWidget;
.super Landroid/widget/LinearLayout;
.source "TaskWidget.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mh/movie/core/mvp/ui/widget/TaskWidget$a;
    }
.end annotation


# instance fields
.field private a:Landroid/widget/ImageView;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/view/View;

.field private h:Landroid/view/View;

.field private i:I

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Z

.field private o:Lcom/mh/movie/core/mvp/ui/widget/TaskWidget$a;

.field private p:I

.field private q:Z

.field private r:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 50
    invoke-direct {p0, p1, v0}, Lcom/mh/movie/core/mvp/ui/widget/TaskWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 54
    invoke-direct {p0, p1, p2, v0}, Lcom/mh/movie/core/mvp/ui/widget/TaskWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 58
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x1

    .line 37
    iput-boolean p3, p0, Lcom/mh/movie/core/mvp/ui/widget/TaskWidget;->q:Z

    .line 39
    iput-boolean p3, p0, Lcom/mh/movie/core/mvp/ui/widget/TaskWidget;->r:Z

    .line 59
    sget-object p3, Lcom/mh/movie/core/R$styleable;->TaskWidget:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 60
    sget p2, Lcom/mh/movie/core/R$styleable;->TaskWidget_taskImg:I

    const/4 p3, -0x1

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/mh/movie/core/mvp/ui/widget/TaskWidget;->i:I

    .line 61
    sget p2, Lcom/mh/movie/core/R$styleable;->TaskWidget_titleText:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/mh/movie/core/mvp/ui/widget/TaskWidget;->j:Ljava/lang/String;

    .line 62
    sget p2, Lcom/mh/movie/core/R$styleable;->TaskWidget_moneyText:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/mh/movie/core/mvp/ui/widget/TaskWidget;->k:Ljava/lang/String;

    .line 63
    sget p2, Lcom/mh/movie/core/R$styleable;->TaskWidget_actionText:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/mh/movie/core/mvp/ui/widget/TaskWidget;->l:Ljava/lang/String;

    .line 64
    sget p2, Lcom/mh/movie/core/R$styleable;->TaskWidget_taskDesc:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/mh/movie/core/mvp/ui/widget/TaskWidget;->m:Ljava/lang/String;

    .line 65
    sget p2, Lcom/mh/movie/core/R$styleable;->TaskWidget_isFinish:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/mh/movie/core/mvp/ui/widget/TaskWidget;->n:Z

    .line 66
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/widget/TaskWidget;->a()V

    return-void
.end method

.method private a()V
    .locals 3

    .line 70
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/TaskWidget;->removeAllViews()V

    .line 71
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/TaskWidget;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/mh/movie/core/R$layout;->widget_task:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/mh/movie/core/mvp/ui/widget/TaskWidget;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/TaskWidget;->h:Landroid/view/View;

    .line 72
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/TaskWidget;->h:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/widget/TaskWidget;->addView(Landroid/view/View;)V

    .line 73
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/TaskWidget;->h:Landroid/view/View;

    sget v1, Lcom/mh/movie/core/R$id;->iv_task_img:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/TaskWidget;->a:Landroid/widget/ImageView;

    .line 74
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/TaskWidget;->h:Landroid/view/View;

    sget v1, Lcom/mh/movie/core/R$id;->tv_task_title:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/TaskWidget;->b:Landroid/widget/TextView;

    .line 75
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/TaskWidget;->h:Landroid/view/View;

    sget v1, Lcom/mh/movie/core/R$id;->tv_task_finish:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/TaskWidget;->c:Landroid/widget/TextView;

    .line 76
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/TaskWidget;->h:Landroid/view/View;

    sget v1, Lcom/mh/movie/core/R$id;->tv_task_money:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/TaskWidget;->d:Landroid/widget/TextView;

    .line 77
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/TaskWidget;->h:Landroid/view/View;

    sget v1, Lcom/mh/movie/core/R$id;->tv_task_action:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/TaskWidget;->e:Landroid/widget/TextView;

    .line 78
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/TaskWidget;->h:Landroid/view/View;

    sget v1, Lcom/mh/movie/core/R$id;->tv_task_desc:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/TaskWidget;->f:Landroid/widget/TextView;

    .line 79
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/TaskWidget;->h:Landroid/view/View;

    sget v1, Lcom/mh/movie/core/R$id;->v_line:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/TaskWidget;->g:Landroid/view/View;

    .line 80
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/TaskWidget;->e:Landroid/widget/TextView;

    new-instance v1, Lcom/mh/movie/core/mvp/ui/widget/v;

    invoke-direct {v1, p0}, Lcom/mh/movie/core/mvp/ui/widget/v;-><init>(Lcom/mh/movie/core/mvp/ui/widget/TaskWidget;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method final synthetic a(Landroid/view/View;)V
    .locals 1

    .line 81
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/TaskWidget;->o:Lcom/mh/movie/core/mvp/ui/widget/TaskWidget$a;

    if-eqz p1, :cond_0

    .line 82
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/TaskWidget;->o:Lcom/mh/movie/core/mvp/ui/widget/TaskWidget$a;

    iget v0, p0, Lcom/mh/movie/core/mvp/ui/widget/TaskWidget;->p:I

    invoke-interface {p1, v0}, Lcom/mh/movie/core/mvp/ui/widget/TaskWidget$a;->a(I)V

    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 4

    .line 89
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 90
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/TaskWidget;->a:Landroid/widget/ImageView;

    iget v1, p0, Lcom/mh/movie/core/mvp/ui/widget/TaskWidget;->i:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 91
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/TaskWidget;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/TaskWidget;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/TaskWidget;->c:Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/mh/movie/core/mvp/ui/widget/TaskWidget;->n:Z

    const/4 v2, 0x4

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 93
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/TaskWidget;->d:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/TaskWidget;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/TaskWidget;->e:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/TaskWidget;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/TaskWidget;->f:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/TaskWidget;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/TaskWidget;->e:Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/mh/movie/core/mvp/ui/widget/TaskWidget;->q:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    const/4 v1, 0x4

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 97
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/TaskWidget;->g:Landroid/view/View;

    iget-boolean v1, p0, Lcom/mh/movie/core/mvp/ui/widget/TaskWidget;->r:Z

    if-eqz v1, :cond_2

    const/4 v2, 0x0

    :cond_2
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public setActionStr(Ljava/lang/String;)V
    .locals 1

    .line 133
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/TaskWidget;->l:Ljava/lang/String;

    .line 134
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/TaskWidget;->e:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/TaskWidget;->e:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setActionVisible(Z)V
    .locals 1

    .line 101
    iput-boolean p1, p0, Lcom/mh/movie/core/mvp/ui/widget/TaskWidget;->q:Z

    .line 102
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/TaskWidget;->e:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    .line 103
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/TaskWidget;->e:Landroid/widget/TextView;

    iget-boolean v0, p0, Lcom/mh/movie/core/mvp/ui/widget/TaskWidget;->q:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public setFinish(Z)V
    .locals 1

    .line 145
    iput-boolean p1, p0, Lcom/mh/movie/core/mvp/ui/widget/TaskWidget;->n:Z

    .line 146
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/TaskWidget;->c:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    .line 147
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/TaskWidget;->c:Landroid/widget/TextView;

    iget-boolean v0, p0, Lcom/mh/movie/core/mvp/ui/widget/TaskWidget;->n:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public setImageId(I)V
    .locals 1

    .line 115
    iput p1, p0, Lcom/mh/movie/core/mvp/ui/widget/TaskWidget;->i:I

    .line 116
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/TaskWidget;->a:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/TaskWidget;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_0
    return-void
.end method

.method public setLineCanShow(Z)V
    .locals 1

    .line 108
    iput-boolean p1, p0, Lcom/mh/movie/core/mvp/ui/widget/TaskWidget;->r:Z

    .line 109
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/TaskWidget;->g:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 110
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/TaskWidget;->g:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public setMoneyStr(Ljava/lang/String;)V
    .locals 1

    .line 127
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/TaskWidget;->k:Ljava/lang/String;

    .line 128
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/TaskWidget;->d:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/TaskWidget;->d:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setOnActionClickListener(Lcom/mh/movie/core/mvp/ui/widget/TaskWidget$a;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/TaskWidget;->o:Lcom/mh/movie/core/mvp/ui/widget/TaskWidget$a;

    return-void
.end method

.method public setPosition(I)V
    .locals 0

    .line 42
    iput p1, p0, Lcom/mh/movie/core/mvp/ui/widget/TaskWidget;->p:I

    return-void
.end method

.method public setTaskDesc(Ljava/lang/String;)V
    .locals 1

    .line 139
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/TaskWidget;->m:Ljava/lang/String;

    .line 140
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/TaskWidget;->f:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/TaskWidget;->f:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1

    .line 121
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/TaskWidget;->j:Ljava/lang/String;

    .line 122
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/TaskWidget;->b:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/TaskWidget;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
