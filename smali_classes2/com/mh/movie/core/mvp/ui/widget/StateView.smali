.class public Lcom/mh/movie/core/mvp/ui/widget/StateView;
.super Landroid/widget/LinearLayout;
.source "StateView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mh/movie/core/mvp/ui/widget/StateView$a;
    }
.end annotation


# instance fields
.field private a:Landroid/view/View;

.field private b:Landroid/widget/LinearLayout;

.field private c:Landroid/widget/LinearLayout;

.field private d:Landroid/view/View;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Lcom/mh/movie/core/mvp/ui/widget/StateView$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 38
    invoke-direct {p0, p1, v0}, Lcom/mh/movie/core/mvp/ui/widget/StateView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

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
    invoke-direct {p0, p1, p2, v0}, Lcom/mh/movie/core/mvp/ui/widget/StateView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

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
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/widget/StateView;->a()V

    return-void
.end method

.method private a()V
    .locals 3

    .line 51
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/StateView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/mh/movie/core/R$layout;->wdiget_state:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/mh/movie/core/mvp/ui/widget/StateView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/StateView;->a:Landroid/view/View;

    .line 52
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/StateView;->a:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/widget/StateView;->addView(Landroid/view/View;)V

    .line 53
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/widget/StateView;->b()V

    return-void
.end method

.method private b()V
    .locals 2

    .line 58
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/StateView;->a:Landroid/view/View;

    sget v1, Lcom/mh/movie/core/R$id;->ll_state_no_network:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/StateView;->b:Landroid/widget/LinearLayout;

    .line 59
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/StateView;->a:Landroid/view/View;

    sget v1, Lcom/mh/movie/core/R$id;->ll_state_no_result:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/StateView;->c:Landroid/widget/LinearLayout;

    .line 60
    sget v0, Lcom/mh/movie/core/R$id;->tv_no_net_work:I

    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/widget/StateView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/StateView;->e:Landroid/widget/TextView;

    .line 61
    sget v0, Lcom/mh/movie/core/R$id;->tv_no_invite:I

    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/widget/StateView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/StateView;->f:Landroid/widget/TextView;

    .line 62
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/StateView;->f:Landroid/widget/TextView;

    new-instance v1, Lcom/mh/movie/core/mvp/ui/widget/t;

    invoke-direct {v1, p0}, Lcom/mh/movie/core/mvp/ui/widget/t;-><init>(Lcom/mh/movie/core/mvp/ui/widget/StateView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/StateView;->e:Landroid/widget/TextView;

    new-instance v1, Lcom/mh/movie/core/mvp/ui/widget/u;

    invoke-direct {v1, p0}, Lcom/mh/movie/core/mvp/ui/widget/u;-><init>(Lcom/mh/movie/core/mvp/ui/widget/StateView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method final synthetic a(Landroid/view/View;)V
    .locals 1

    .line 68
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/StateView;->getContext()Landroid/content/Context;

    move-result-object p1

    sget-object v0, Lcom/mh/movie/core/mvp/ui/b;->i:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/jess/arms/c/d;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 69
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/StateView;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "\u7f51\u7edc\u9519\u8bef"

    invoke-static {p1, v0}, Lcom/mh/movie/core/mvp/ui/utils/T;->showShort(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 71
    :cond_0
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/StateView;->g:Lcom/mh/movie/core/mvp/ui/widget/StateView$a;

    if-eqz p1, :cond_1

    .line 72
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/StateView;->g:Lcom/mh/movie/core/mvp/ui/widget/StateView$a;

    invoke-interface {p1}, Lcom/mh/movie/core/mvp/ui/widget/StateView$a;->h()V

    :cond_1
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 135
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/StateView;->a:Landroid/view/View;

    sget v1, Lcom/mh/movie/core/R$id;->tv_no_invite:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {p2}, Lcom/raizlabs/android/dbflow/a;->b(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/16 p2, 0x8

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {v0, p2}, Landroid/view/View;->setVisibility(I)V

    .line 136
    iget-object p2, p0, Lcom/mh/movie/core/mvp/ui/widget/StateView;->a:Landroid/view/View;

    sget v0, Lcom/mh/movie/core/R$id;->tv_no_result_msg:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method final synthetic b(Landroid/view/View;)V
    .locals 0

    .line 63
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/StateView;->g:Lcom/mh/movie/core/mvp/ui/widget/StateView$a;

    if-eqz p1, :cond_0

    .line 64
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/StateView;->g:Lcom/mh/movie/core/mvp/ui/widget/StateView$a;

    invoke-interface {p1}, Lcom/mh/movie/core/mvp/ui/widget/StateView$a;->g()V

    :cond_0
    return-void
.end method

.method public setBindView(Landroid/view/View;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/StateView;->d:Landroid/view/View;

    return-void
.end method

.method public setCallBack(Lcom/mh/movie/core/mvp/ui/widget/StateView$a;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/StateView;->g:Lcom/mh/movie/core/mvp/ui/widget/StateView$a;

    return-void
.end method

.method public setState(I)V
    .locals 3

    const/4 v0, 0x0

    const/16 v1, 0x8

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    .line 118
    :pswitch_1
    invoke-virtual {p0, v1}, Lcom/mh/movie/core/mvp/ui/widget/StateView;->setVisibility(I)V

    .line 119
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/StateView;->d:Landroid/view/View;

    if-eqz p1, :cond_0

    .line 120
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/StateView;->d:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 122
    :cond_0
    sget p1, Lcom/mh/movie/core/R$id;->iv_no_result:I

    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/ui/widget/StateView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 123
    sget v2, Lcom/mh/movie/core/R$mipmap;->empty:I

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 124
    sget p1, Lcom/mh/movie/core/R$id;->tv_no_result_msg:I

    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/ui/widget/StateView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const-string v2, "\u770b\u5b98\uff0c\u672a\u641c\u7d22\u5230\u76f8\u5173\u5f71\u7247\uff0c\u8bf7\u91cd\u65b0\u5c1d\u8bd5"

    .line 125
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    sget p1, Lcom/mh/movie/core/R$id;->tv_no_invite:I

    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/ui/widget/StateView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 127
    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/widget/StateView;->setVisibility(I)V

    .line 128
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/StateView;->b:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 129
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/StateView;->c:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 109
    :pswitch_2
    invoke-virtual {p0, v1}, Lcom/mh/movie/core/mvp/ui/widget/StateView;->setVisibility(I)V

    .line 110
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/StateView;->d:Landroid/view/View;

    if-eqz p1, :cond_1

    .line 111
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/StateView;->d:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 113
    :cond_1
    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/widget/StateView;->setVisibility(I)V

    .line 114
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/StateView;->b:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 115
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/StateView;->c:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 101
    :pswitch_3
    invoke-virtual {p0, v1}, Lcom/mh/movie/core/mvp/ui/widget/StateView;->setVisibility(I)V

    .line 102
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/StateView;->b:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 103
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/StateView;->c:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 104
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/StateView;->d:Landroid/view/View;

    if-eqz p1, :cond_4

    .line 105
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/StateView;->d:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 93
    :pswitch_4
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/StateView;->d:Landroid/view/View;

    if-eqz p1, :cond_2

    .line 94
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/StateView;->d:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 96
    :cond_2
    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/widget/StateView;->setVisibility(I)V

    .line 97
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/StateView;->b:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 98
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/StateView;->c:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 85
    :pswitch_5
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/StateView;->d:Landroid/view/View;

    if-eqz p1, :cond_3

    .line 86
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/StateView;->d:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 88
    :cond_3
    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/widget/StateView;->setVisibility(I)V

    .line 89
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/StateView;->c:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 90
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/StateView;->b:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_4
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
