.class public Lcom/mh/movie/core/mvp/ui/activity/PartnerActivity;
.super Lcom/mh/movie/core/mvp/ui/activity/ac;
.source "PartnerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/mh/movie/core/mvp/a/aj$b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mh/movie/core/mvp/ui/activity/ac<",
        "Lcom/mh/movie/core/mvp/presenter/PartnerPresenter;",
        ">;",
        "Landroid/view/View$OnClickListener;",
        "Lcom/mh/movie/core/mvp/a/aj$b;"
    }
.end annotation


# instance fields
.field c:Lcom/mh/movie/core/mvp/ui/widget/Topbar;

.field d:Lcom/mh/movie/core/mvp/ui/adapter/c;

.field e:Lcom/mh/movie/core/mvp/ui/adapter/c;

.field f:Lcom/mh/movie/core/mvp/model/entity/response/ProHomeResponse$SystemListBean;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/LinearLayout;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/support/v7/widget/RecyclerView;

.field private m:Lcom/mh/movie/core/mvp/ui/widget/StateView;

.field private n:Landroid/widget/TextView;

.field private o:Landroid/widget/TextView;

.field private p:Landroid/widget/LinearLayout;

.field private q:Ljava/math/BigDecimal;

.field private t:Landroid/widget/RelativeLayout;

.field private u:Landroid/view/View;

.field private v:Landroid/support/v7/widget/RecyclerView;

.field private w:Landroid/support/v4/widget/NestedScrollView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 54
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/activity/ac;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/mh/movie/core/mvp/ui/activity/PartnerActivity;)Landroid/view/View;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/mh/movie/core/mvp/ui/activity/PartnerActivity;->u:Landroid/view/View;

    return-object p0
.end method

.method private g()V
    .locals 3

    .line 99
    sget v0, Lcom/mh/movie/core/R$id;->topbar:I

    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/activity/PartnerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/ui/widget/Topbar;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/PartnerActivity;->c:Lcom/mh/movie/core/mvp/ui/widget/Topbar;

    .line 102
    sget v0, Lcom/mh/movie/core/R$id;->tv_money:I

    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/activity/PartnerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/PartnerActivity;->g:Landroid/widget/TextView;

    .line 103
    sget v0, Lcom/mh/movie/core/R$id;->tv_money_balance:I

    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/activity/PartnerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/PartnerActivity;->h:Landroid/widget/TextView;

    .line 104
    sget v0, Lcom/mh/movie/core/R$id;->tv_partner_tixian:I

    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/activity/PartnerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/PartnerActivity;->i:Landroid/widget/TextView;

    .line 105
    sget v0, Lcom/mh/movie/core/R$id;->ll_lists:I

    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/activity/PartnerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/PartnerActivity;->j:Landroid/widget/LinearLayout;

    .line 106
    sget v0, Lcom/mh/movie/core/R$id;->tv_partner_show_all:I

    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/activity/PartnerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/PartnerActivity;->k:Landroid/widget/TextView;

    .line 107
    sget v0, Lcom/mh/movie/core/R$id;->rv_lists:I

    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/activity/PartnerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/PartnerActivity;->l:Landroid/support/v7/widget/RecyclerView;

    .line 108
    sget v0, Lcom/mh/movie/core/R$id;->sv_state:I

    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/activity/PartnerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/ui/widget/StateView;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/PartnerActivity;->m:Lcom/mh/movie/core/mvp/ui/widget/StateView;

    .line 109
    sget v0, Lcom/mh/movie/core/R$id;->tv_partner_notice:I

    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/activity/PartnerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/PartnerActivity;->n:Landroid/widget/TextView;

    .line 111
    sget v0, Lcom/mh/movie/core/R$id;->tv_no_enough:I

    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/activity/PartnerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/PartnerActivity;->o:Landroid/widget/TextView;

    .line 112
    sget v0, Lcom/mh/movie/core/R$id;->ll_no_data:I

    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/activity/PartnerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/PartnerActivity;->p:Landroid/widget/LinearLayout;

    .line 113
    sget v0, Lcom/mh/movie/core/R$id;->rl_top_layout:I

    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/activity/PartnerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/PartnerActivity;->t:Landroid/widget/RelativeLayout;

    .line 114
    sget v0, Lcom/mh/movie/core/R$id;->v_top_bg:I

    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/activity/PartnerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/PartnerActivity;->u:Landroid/view/View;

    .line 115
    sget v0, Lcom/mh/movie/core/R$id;->rv_partner_project:I

    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/activity/PartnerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/PartnerActivity;->v:Landroid/support/v7/widget/RecyclerView;

    .line 116
    sget v0, Lcom/mh/movie/core/R$id;->nsv_scroller:I

    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/activity/PartnerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/NestedScrollView;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/PartnerActivity;->w:Landroid/support/v4/widget/NestedScrollView;

    .line 117
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/PartnerActivity;->r:Landroid/content/Context;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/PartnerActivity;->t:Landroid/widget/RelativeLayout;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/mh/movie/core/mvp/ui/utils/UIUtils;->initTopbar(Landroid/content/Context;Landroid/view/View;Z)V

    return-void
.end method

.method private h()V
    .locals 6

    .line 121
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/PartnerActivity;->n:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->requestFocus()Z

    .line 122
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/PartnerActivity;->l:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lcom/mh/movie/core/mvp/ui/activity/PartnerActivity$1;

    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/activity/PartnerActivity;->r:Landroid/content/Context;

    invoke-direct {v1, p0, v2}, Lcom/mh/movie/core/mvp/ui/activity/PartnerActivity$1;-><init>(Lcom/mh/movie/core/mvp/ui/activity/PartnerActivity;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 129
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/PartnerActivity;->r:Landroid/content/Context;

    invoke-static {v0}, Lcom/jess/arms/c/e;->b(Landroid/content/Context;)F

    move-result v0

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/PartnerActivity;->r:Landroid/content/Context;

    const/high16 v2, 0x420c0000    # 35.0f

    invoke-static {v1, v2}, Lcom/jess/arms/c/e;->a(Landroid/content/Context;F)F

    move-result v1

    sub-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    float-to-int v0, v0

    mul-int/lit16 v1, v0, 0xc5

    .line 130
    div-int/lit16 v1, v1, 0xae

    .line 132
    new-instance v2, Lcom/mh/movie/core/mvp/ui/activity/PartnerActivity$2;

    invoke-direct {v2, p0}, Lcom/mh/movie/core/mvp/ui/activity/PartnerActivity$2;-><init>(Lcom/mh/movie/core/mvp/ui/activity/PartnerActivity;)V

    iput-object v2, p0, Lcom/mh/movie/core/mvp/ui/activity/PartnerActivity;->d:Lcom/mh/movie/core/mvp/ui/adapter/c;

    .line 146
    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/activity/PartnerActivity;->l:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, p0, Lcom/mh/movie/core/mvp/ui/activity/PartnerActivity;->d:Lcom/mh/movie/core/mvp/ui/adapter/c;

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 148
    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/activity/PartnerActivity;->k:Landroid/widget/TextView;

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 149
    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/activity/PartnerActivity;->i:Landroid/widget/TextView;

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/activity/PartnerActivity;->v:Landroid/support/v7/widget/RecyclerView;

    new-instance v3, Lcom/mh/movie/core/mvp/ui/activity/PartnerActivity$3;

    iget-object v4, p0, Lcom/mh/movie/core/mvp/ui/activity/PartnerActivity;->r:Landroid/content/Context;

    const/4 v5, 0x2

    invoke-direct {v3, p0, v4, v5}, Lcom/mh/movie/core/mvp/ui/activity/PartnerActivity$3;-><init>(Lcom/mh/movie/core/mvp/ui/activity/PartnerActivity;Landroid/content/Context;I)V

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 164
    new-instance v2, Lcom/mh/movie/core/mvp/ui/activity/PartnerActivity$4;

    invoke-direct {v2, p0, v0, v1}, Lcom/mh/movie/core/mvp/ui/activity/PartnerActivity$4;-><init>(Lcom/mh/movie/core/mvp/ui/activity/PartnerActivity;II)V

    iput-object v2, p0, Lcom/mh/movie/core/mvp/ui/activity/PartnerActivity;->e:Lcom/mh/movie/core/mvp/ui/adapter/c;

    .line 185
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/PartnerActivity;->v:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/PartnerActivity;->e:Lcom/mh/movie/core/mvp/ui/adapter/c;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 188
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/PartnerActivity;->b:Lcom/jess/arms/mvp/b;

    check-cast v0, Lcom/mh/movie/core/mvp/presenter/PartnerPresenter;

    invoke-static {}, Lcom/mh/movie/core/mvp/ui/b;->a()Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;->getUserId()J

    move-result-wide v1

    long-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/presenter/PartnerPresenter;->a(I)V

    .line 191
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/PartnerActivity;->w:Landroid/support/v4/widget/NestedScrollView;

    new-instance v1, Lcom/mh/movie/core/mvp/ui/activity/PartnerActivity$5;

    invoke-direct {v1, p0}, Lcom/mh/movie/core/mvp/ui/activity/PartnerActivity$5;-><init>(Lcom/mh/movie/core/mvp/ui/activity/PartnerActivity;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/NestedScrollView;->setOnScrollChangeListener(Landroid/support/v4/widget/NestedScrollView$OnScrollChangeListener;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)I
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 88
    sget p1, Lcom/mh/movie/core/R$layout;->activity_partner:I

    return p1
.end method

.method public a(Lcom/jess/arms/b/a/a;)V
    .locals 1
    .param p1    # Lcom/jess/arms/b/a/a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 79
    invoke-static {}, Lcom/mh/movie/core/a/a/au;->a()Lcom/mh/movie/core/a/a/au$a;

    move-result-object v0

    .line 80
    invoke-virtual {v0, p1}, Lcom/mh/movie/core/a/a/au$a;->a(Lcom/jess/arms/b/a/a;)Lcom/mh/movie/core/a/a/au$a;

    move-result-object p1

    new-instance v0, Lcom/mh/movie/core/a/b/cs;

    invoke-direct {v0, p0}, Lcom/mh/movie/core/a/b/cs;-><init>(Lcom/mh/movie/core/mvp/a/aj$b;)V

    .line 81
    invoke-virtual {p1, v0}, Lcom/mh/movie/core/a/a/au$a;->a(Lcom/mh/movie/core/a/b/cs;)Lcom/mh/movie/core/a/a/au$a;

    move-result-object p1

    .line 82
    invoke-virtual {p1}, Lcom/mh/movie/core/a/a/au$a;->a()Lcom/mh/movie/core/a/a/cs;

    move-result-object p1

    .line 83
    invoke-interface {p1, p0}, Lcom/mh/movie/core/a/a/cs;->a(Lcom/mh/movie/core/mvp/ui/activity/PartnerActivity;)V

    return-void
.end method

.method public a(Lcom/mh/movie/core/mvp/model/entity/response/ProHomeResponse;)V
    .locals 7

    .line 284
    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/ProHomeResponse;->getThreeDays()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 285
    new-instance v1, Ljava/math/BigDecimal;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/ProHomeResponse;->getTotalMoney()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/math/BigDecimal;-><init>(I)V

    iput-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/PartnerActivity;->q:Ljava/math/BigDecimal;

    .line 286
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/PartnerActivity;->q:Ljava/math/BigDecimal;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/math/BigDecimal;->setScale(I)Ljava/math/BigDecimal;

    move-result-object v1

    iput-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/PartnerActivity;->q:Ljava/math/BigDecimal;

    .line 287
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/PartnerActivity;->q:Ljava/math/BigDecimal;

    invoke-virtual {v1}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmpl-double v1, v3, v5

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v1, :cond_0

    .line 288
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/PartnerActivity;->i:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 289
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/PartnerActivity;->h:Landroid/widget/TextView;

    const-string v5, "\u6682\u65e0\u5206\u7ea2"

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 291
    :cond_0
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/PartnerActivity;->i:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 292
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/PartnerActivity;->h:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/mh/movie/core/mvp/ui/activity/PartnerActivity;->q:Ljava/math/BigDecimal;

    invoke-virtual {v5}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 296
    :goto_0
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/PartnerActivity;->d:Lcom/mh/movie/core/mvp/ui/adapter/c;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/ProHomeResponse;->getThreeDays()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/mh/movie/core/mvp/ui/adapter/c;->a(Ljava/util/List;)V

    .line 297
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/PartnerActivity;->k:Landroid/widget/TextView;

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 298
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/PartnerActivity;->d:Lcom/mh/movie/core/mvp/ui/adapter/c;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/adapter/c;->getItemCount()I

    move-result v0

    const/16 v1, 0x8

    if-nez v0, :cond_2

    .line 299
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/PartnerActivity;->p:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 300
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/PartnerActivity;->l:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    goto :goto_2

    .line 302
    :cond_2
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/PartnerActivity;->d:Lcom/mh/movie/core/mvp/ui/adapter/c;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/adapter/c;->getItemCount()I

    move-result v0

    if-gt v0, v2, :cond_3

    .line 303
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/PartnerActivity;->o:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 305
    :cond_3
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/PartnerActivity;->o:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_2
    const-string v0, "\u6628\u65e5\u6700\u4f73\u5408\u4f19\u4eba\uff1a%1s\u3001 \u63a8\u5e7f\u4eba\u6570 %2d \u4eba\u3001\u5206\u7ea2 %3$.2f \u5143"

    const/4 v1, 0x3

    .line 308
    new-array v1, v1, [Ljava/lang/Object;

    .line 309
    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/ProHomeResponse;->getYesterdayTop()Lcom/mh/movie/core/mvp/model/entity/response/ProHomeResponse$YesterdayTopBean;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mh/movie/core/mvp/model/entity/response/ProHomeResponse$YesterdayTopBean;->getTel()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mh/movie/core/mvp/ui/utils/CommonTools;->phoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v4

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/ProHomeResponse;->getYesterdayTop()Lcom/mh/movie/core/mvp/model/entity/response/ProHomeResponse$YesterdayTopBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mh/movie/core/mvp/model/entity/response/ProHomeResponse$YesterdayTopBean;->getNewPerson()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/ProHomeResponse;->getYesterdayTop()Lcom/mh/movie/core/mvp/model/entity/response/ProHomeResponse$YesterdayTopBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mh/movie/core/mvp/model/entity/response/ProHomeResponse$YesterdayTopBean;->getMoney()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v1, v2

    .line 308
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 310
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/PartnerActivity;->n:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 311
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/PartnerActivity;->e:Lcom/mh/movie/core/mvp/ui/adapter/c;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/ProHomeResponse;->getSystemList()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/mh/movie/core/mvp/ui/adapter/c;->a(Ljava/util/List;)V

    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 93
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/activity/PartnerActivity;->g()V

    .line 94
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/activity/PartnerActivity;->h()V

    return-void
.end method

.method public c()V
    .locals 0

    .line 205
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/PartnerActivity;->f()V

    return-void
.end method

.method public c_(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 266
    invoke-static {p1}, Lcom/jess/arms/c/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    invoke-static {p1}, Lcom/jess/arms/c/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method public e()V
    .locals 3

    .line 215
    new-instance v0, Lcom/mh/movie/core/mvp/model/entity/request/AddProRequest;

    invoke-direct {v0}, Lcom/mh/movie/core/mvp/model/entity/request/AddProRequest;-><init>()V

    .line 216
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/PartnerActivity;->f:Lcom/mh/movie/core/mvp/model/entity/response/ProHomeResponse$SystemListBean;

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/model/entity/response/ProHomeResponse$SystemListBean;->getProIdPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/model/entity/request/AddProRequest;->setProId(Ljava/lang/String;)V

    .line 217
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/PartnerActivity;->f:Lcom/mh/movie/core/mvp/model/entity/response/ProHomeResponse$SystemListBean;

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/model/entity/response/ProHomeResponse$SystemListBean;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/model/entity/request/AddProRequest;->setSystemId(I)V

    .line 218
    invoke-static {}, Lcom/mh/movie/core/mvp/ui/b;->a()Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;->getUserId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/mh/movie/core/mvp/model/entity/request/AddProRequest;->setUserId(J)V

    .line 219
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/PartnerActivity;->b:Lcom/jess/arms/mvp/b;

    check-cast v1, Lcom/mh/movie/core/mvp/presenter/PartnerPresenter;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/mh/movie/core/mvp/presenter/PartnerPresenter;->a(Lcom/mh/movie/core/mvp/model/entity/request/AddProRequest;Z)V

    return-void
.end method

.method public e_()V
    .locals 0

    return-void
.end method

.method public f()V
    .locals 3

    .line 223
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/PartnerActivity;->r:Landroid/content/Context;

    const-class v2, Lcom/mh/movie/core/mvp/ui/activity/PartnerRightActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "system_name"

    .line 224
    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/activity/PartnerActivity;->f:Lcom/mh/movie/core/mvp/model/entity/response/ProHomeResponse$SystemListBean;

    invoke-virtual {v2}, Lcom/mh/movie/core/mvp/model/entity/response/ProHomeResponse$SystemListBean;->getSystemName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "open_url"

    .line 225
    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/activity/PartnerActivity;->f:Lcom/mh/movie/core/mvp/model/entity/response/ProHomeResponse$SystemListBean;

    invoke-virtual {v2}, Lcom/mh/movie/core/mvp/model/entity/response/ProHomeResponse$SystemListBean;->getOpenInstallUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "system_id"

    .line 226
    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/activity/PartnerActivity;->f:Lcom/mh/movie/core/mvp/model/entity/response/ProHomeResponse$SystemListBean;

    invoke-virtual {v2}, Lcom/mh/movie/core/mvp/model/entity/response/ProHomeResponse$SystemListBean;->getId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "pro_id_prefix"

    .line 227
    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/activity/PartnerActivity;->f:Lcom/mh/movie/core/mvp/model/entity/response/ProHomeResponse$SystemListBean;

    invoke-virtual {v2}, Lcom/mh/movie/core/mvp/model/entity/response/ProHomeResponse$SystemListBean;->getProIdPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "system_desc"

    .line 228
    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/activity/PartnerActivity;->f:Lcom/mh/movie/core/mvp/model/entity/response/ProHomeResponse$SystemListBean;

    invoke-virtual {v2}, Lcom/mh/movie/core/mvp/model/entity/response/ProHomeResponse$SystemListBean;->getProDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 229
    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/activity/PartnerActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 234
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 235
    sget v0, Lcom/mh/movie/core/R$id;->tv_partner_show_all:I

    if-ne p1, v0, :cond_0

    .line 236
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/PartnerActivity;->r:Landroid/content/Context;

    const-class v1, Lcom/mh/movie/core/mvp/ui/activity/PartnerListActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/PartnerActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 237
    :cond_0
    sget v0, Lcom/mh/movie/core/R$id;->tv_partner_tixian:I

    if-ne p1, v0, :cond_1

    .line 238
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/PartnerActivity;->r:Landroid/content/Context;

    const-class v1, Lcom/mh/movie/core/mvp/ui/activity/GetMoneyActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "balance"

    .line 239
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/PartnerActivity;->h:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 240
    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/PartnerActivity;->startActivity(Landroid/content/Intent;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onResume()V
    .locals 3

    .line 210
    invoke-super {p0}, Lcom/mh/movie/core/mvp/ui/activity/ac;->onResume()V

    .line 211
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/PartnerActivity;->b:Lcom/jess/arms/mvp/b;

    check-cast v0, Lcom/mh/movie/core/mvp/presenter/PartnerPresenter;

    invoke-static {}, Lcom/mh/movie/core/mvp/ui/b;->a()Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;->getUserId()J

    move-result-wide v1

    long-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/presenter/PartnerPresenter;->a(I)V

    return-void
.end method
