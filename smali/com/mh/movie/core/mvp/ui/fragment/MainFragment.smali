.class public Lcom/mh/movie/core/mvp/ui/fragment/MainFragment;
.super Lcom/mh/movie/core/mvp/ui/fragment/h;
.source "MainFragment.java"

# interfaces
.implements Lcom/mh/movie/core/mvp/a/x$b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mh/movie/core/mvp/ui/fragment/h<",
        "Lcom/mh/movie/core/mvp/presenter/MainPresenter;",
        ">;",
        "Lcom/mh/movie/core/mvp/a/x$b;"
    }
.end annotation


# instance fields
.field c:Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;

.field d:Lcom/mh/movie/core/mvp/ui/widget/MultiStateView;

.field private e:Landroid/support/v4/view/ViewPager;

.field private f:Landroid/support/design/widget/TabLayout;

.field private g:Landroid/widget/TextView;

.field private j:Landroid/widget/LinearLayout;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/widget/ImageView;

.field private m:Landroid/widget/ImageView;

.field private n:Landroid/widget/LinearLayout;

.field private o:Landroid/widget/LinearLayout;

.field private p:Landroid/widget/TextView;

.field private q:Landroid/widget/TextView;

.field private r:Ljava/lang/String;

.field private s:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mh/movie/core/mvp/model/entity/response/HotListResponse;",
            ">;"
        }
    .end annotation
.end field

.field private t:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mh/movie/core/mvp/model/entity/response/PageResponse;",
            ">;"
        }
    .end annotation
.end field

.field private u:I

.field private v:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 68
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/fragment/h;-><init>()V

    const/4 v0, 0x0

    .line 85
    iput v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/MainFragment;->u:I

    const/4 v0, -0x1

    .line 86
    iput v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/MainFragment;->v:I

    return-void
.end method

.method static synthetic a(Lcom/mh/movie/core/mvp/ui/fragment/MainFragment;I)I
    .locals 0

    .line 68
    iput p1, p0, Lcom/mh/movie/core/mvp/ui/fragment/MainFragment;->u:I

    return p1
.end method

.method private a(ILjava/lang/String;)Landroid/view/View;
    .locals 3

    .line 298
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/fragment/MainFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 299
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 p2, 0xa

    .line 300
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setMaxEms(I)V

    const/4 p2, 0x1

    .line 301
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 302
    sget-object p2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    if-nez p1, :cond_0

    const/high16 p2, 0x41a00000    # 20.0f

    goto :goto_0

    :cond_0
    const/high16 p2, 0x41900000    # 18.0f

    .line 303
    :goto_0
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 304
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/fragment/MainFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    const/high16 v1, 0x41000000    # 8.0f

    invoke-static {p2, v1}, Lcom/jess/arms/c/e;->a(Landroid/content/Context;F)F

    move-result p2

    float-to-int p2, p2

    const/4 v1, 0x0

    if-nez p1, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    move v2, p2

    .line 305
    :goto_1
    invoke-virtual {v0, v2, v1, p2, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 306
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/fragment/MainFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    if-nez p1, :cond_2

    sget v1, Lcom/mh/movie/core/R$style;->TabLayoutTextStyle:I

    :cond_2
    invoke-virtual {v0, p2, v1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 307
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/fragment/MainFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    if-nez p1, :cond_3

    sget p1, Lcom/mh/movie/core/R$color;->white:I

    goto :goto_2

    :cond_3
    sget p1, Lcom/mh/movie/core/R$color;->main_un_select:I

    :goto_2
    invoke-static {p2, p1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-object v0
.end method

.method static synthetic a(Lcom/mh/movie/core/mvp/ui/fragment/MainFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/fragment/MainFragment;->r:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/mh/movie/core/mvp/ui/fragment/MainFragment;)Ljava/util/List;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/mh/movie/core/mvp/ui/fragment/MainFragment;->t:Ljava/util/List;

    return-object p0
.end method

.method static synthetic b(Lcom/mh/movie/core/mvp/ui/fragment/MainFragment;)Landroid/widget/LinearLayout;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/mh/movie/core/mvp/ui/fragment/MainFragment;->o:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic c(Lcom/mh/movie/core/mvp/ui/fragment/MainFragment;)Landroid/widget/LinearLayout;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/mh/movie/core/mvp/ui/fragment/MainFragment;->n:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic d(Lcom/mh/movie/core/mvp/ui/fragment/MainFragment;)Landroid/widget/TextView;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/mh/movie/core/mvp/ui/fragment/MainFragment;->p:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic e(Lcom/mh/movie/core/mvp/ui/fragment/MainFragment;)Landroid/widget/TextView;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/mh/movie/core/mvp/ui/fragment/MainFragment;->q:Landroid/widget/TextView;

    return-object p0
.end method

.method private e()V
    .locals 4

    .line 122
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/mh/movie/core/mvp/ui/fragment/i;

    invoke-direct {v1, p0}, Lcom/mh/movie/core/mvp/ui/fragment/i;-><init>(Lcom/mh/movie/core/mvp/ui/fragment/MainFragment;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 154
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/MainFragment;->f:Landroid/support/design/widget/TabLayout;

    new-instance v1, Lcom/mh/movie/core/mvp/ui/fragment/MainFragment$2;

    invoke-direct {v1, p0}, Lcom/mh/movie/core/mvp/ui/fragment/MainFragment$2;-><init>(Lcom/mh/movie/core/mvp/ui/fragment/MainFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout;->addOnTabSelectedListener(Landroid/support/design/widget/TabLayout$OnTabSelectedListener;)V

    .line 225
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/MainFragment;->b:Lcom/jess/arms/mvp/b;

    check-cast v0, Lcom/mh/movie/core/mvp/presenter/MainPresenter;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/presenter/MainPresenter;->e()V

    .line 226
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/MainFragment;->b:Lcom/jess/arms/mvp/b;

    check-cast v0, Lcom/mh/movie/core/mvp/presenter/MainPresenter;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/presenter/MainPresenter;->f()V

    return-void
.end method

.method private f()V
    .locals 2

    .line 230
    iget v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/MainFragment;->v:I

    iget v1, p0, Lcom/mh/movie/core/mvp/ui/fragment/MainFragment;->u:I

    if-eq v0, v1, :cond_0

    .line 231
    iget v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/MainFragment;->u:I

    iput v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/MainFragment;->v:I

    .line 232
    new-instance v0, Lcom/mh/movie/core/mvp/model/db/ModuleEvent;

    invoke-direct {v0}, Lcom/mh/movie/core/mvp/model/db/ModuleEvent;-><init>()V

    const-string v1, "module"

    .line 233
    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/model/db/ModuleEvent;->setType(Ljava/lang/String;)V

    const-string v1, "visitChannel"

    .line 234
    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/model/db/ModuleEvent;->setSecondaryType(Ljava/lang/String;)V

    .line 235
    iget v1, p0, Lcom/mh/movie/core/mvp/ui/fragment/MainFragment;->u:I

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/model/db/ModuleEvent;->setModuleId(I)V

    .line 236
    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/utils/b/a;->b(Lcom/mh/movie/core/mvp/model/db/BaseAnalysisEvent;)V

    :cond_0
    return-void
.end method

.method static synthetic f(Lcom/mh/movie/core/mvp/ui/fragment/MainFragment;)V
    .locals 0

    .line 68
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/fragment/MainFragment;->f()V

    return-void
.end method

.method private g()V
    .locals 0

    return-void
.end method

.method static synthetic g(Lcom/mh/movie/core/mvp/ui/fragment/MainFragment;)V
    .locals 0

    .line 68
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/fragment/MainFragment;->k()V

    return-void
.end method

.method private h()V
    .locals 2

    .line 316
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/MainFragment;->h:Landroid/view/View;

    sget v1, Lcom/mh/movie/core/R$id;->view_pager:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/MainFragment;->e:Landroid/support/v4/view/ViewPager;

    .line 317
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/MainFragment;->h:Landroid/view/View;

    sget v1, Lcom/mh/movie/core/R$id;->tl_tab_layout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TabLayout;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/MainFragment;->f:Landroid/support/design/widget/TabLayout;

    .line 318
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/MainFragment;->h:Landroid/view/View;

    sget v1, Lcom/mh/movie/core/R$id;->app_name:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/MainFragment;->g:Landroid/widget/TextView;

    .line 319
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/MainFragment;->h:Landroid/view/View;

    sget v1, Lcom/mh/movie/core/R$id;->search_pannel:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/MainFragment;->j:Landroid/widget/LinearLayout;

    .line 320
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/MainFragment;->h:Landroid/view/View;

    sget v1, Lcom/mh/movie/core/R$id;->tv_main_search:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/MainFragment;->k:Landroid/widget/TextView;

    .line 321
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/MainFragment;->h:Landroid/view/View;

    sget v1, Lcom/mh/movie/core/R$id;->tv_history:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/MainFragment;->l:Landroid/widget/ImageView;

    .line 322
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/MainFragment;->h:Landroid/view/View;

    sget v1, Lcom/mh/movie/core/R$id;->tv_cache:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/MainFragment;->m:Landroid/widget/ImageView;

    .line 323
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/MainFragment;->h:Landroid/view/View;

    sget v1, Lcom/mh/movie/core/R$id;->ll_main_action:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/MainFragment;->n:Landroid/widget/LinearLayout;

    .line 324
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/MainFragment;->h:Landroid/view/View;

    sget v1, Lcom/mh/movie/core/R$id;->ll_mian_type:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/MainFragment;->o:Landroid/widget/LinearLayout;

    .line 325
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/MainFragment;->h:Landroid/view/View;

    sget v1, Lcom/mh/movie/core/R$id;->tv_search_1:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/MainFragment;->p:Landroid/widget/TextView;

    .line 326
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/MainFragment;->h:Landroid/view/View;

    sget v1, Lcom/mh/movie/core/R$id;->tv_search_2:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/MainFragment;->q:Landroid/widget/TextView;

    .line 327
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/MainFragment;->h:Landroid/view/View;

    sget v1, Lcom/mh/movie/core/R$id;->mv_state:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/ui/widget/MultiStateView;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/MainFragment;->d:Lcom/mh/movie/core/mvp/ui/widget/MultiStateView;

    return-void
.end method

.method private k()V
    .locals 2

    .line 415
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/MainFragment;->c:Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;

    const-string v1, "\u6e29\u99a8\u63d0\u793a"

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->a(Ljava/lang/String;)V

    .line 416
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/MainFragment;->c:Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;

    const-string v1, "\u5b58\u50a8\u6743\u9650\u7f3a\u5931\uff0c\u65e0\u6cd5\u7f13\u5b58\u89c6\u9891"

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->b(Ljava/lang/String;)V

    .line 417
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/MainFragment;->c:Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;

    const-string v1, "\u7acb\u5373\u8bbe\u7f6e"

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->d(Ljava/lang/String;)V

    .line 418
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/MainFragment;->c:Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;

    const-string v1, "\u4ee5\u540e\u518d\u8bf4"

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->e(Ljava/lang/String;)V

    .line 419
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/MainFragment;->c:Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;

    new-instance v1, Lcom/mh/movie/core/mvp/ui/fragment/MainFragment$3;

    invoke-direct {v1, p0}, Lcom/mh/movie/core/mvp/ui/fragment/MainFragment$3;-><init>(Lcom/mh/movie/core/mvp/ui/fragment/MainFragment;)V

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->a(Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog$a;)V

    .line 431
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/MainFragment;->c:Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->show()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 109
    sget p3, Lcom/mh/movie/core/R$layout;->fragment_main:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 114
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/fragment/MainFragment;->h()V

    .line 115
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/fragment/MainFragment;->e()V

    .line 116
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/fragment/MainFragment;->g()V

    .line 117
    new-instance p1, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;

    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/fragment/MainFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p1, v0, v1}, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/fragment/MainFragment;->c:Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;

    return-void
.end method

.method public a(Lcom/jess/arms/b/a/a;)V
    .locals 1
    .param p1    # Lcom/jess/arms/b/a/a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 100
    invoke-static {}, Lcom/mh/movie/core/a/a/ak;->a()Lcom/mh/movie/core/a/a/ak$a;

    move-result-object v0

    .line 101
    invoke-virtual {v0, p1}, Lcom/mh/movie/core/a/a/ak$a;->a(Lcom/jess/arms/b/a/a;)Lcom/mh/movie/core/a/a/ak$a;

    move-result-object p1

    new-instance v0, Lcom/mh/movie/core/a/b/bl;

    invoke-direct {v0, p0}, Lcom/mh/movie/core/a/b/bl;-><init>(Lcom/mh/movie/core/mvp/a/x$b;)V

    .line 102
    invoke-virtual {p1, v0}, Lcom/mh/movie/core/a/a/ak$a;->a(Lcom/mh/movie/core/a/b/bl;)Lcom/mh/movie/core/a/a/ak$a;

    move-result-object p1

    .line 103
    invoke-virtual {p1}, Lcom/mh/movie/core/a/a/ak$a;->a()Lcom/mh/movie/core/a/a/ci;

    move-result-object p1

    .line 104
    invoke-interface {p1, p0}, Lcom/mh/movie/core/a/a/ci;->a(Lcom/mh/movie/core/mvp/ui/fragment/MainFragment;)V

    return-void
.end method

.method final synthetic a(Ljava/lang/Void;)V
    .locals 2

    .line 133
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/fragment/MainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    sget-object v0, Lcom/mh/movie/core/mvp/ui/b;->i:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/jess/arms/c/d;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 136
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/fragment/MainFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    new-instance v0, Lcom/mh/movie/core/mvp/ui/fragment/MainFragment$1;

    invoke-direct {v0, p0}, Lcom/mh/movie/core/mvp/ui/fragment/MainFragment$1;-><init>(Lcom/mh/movie/core/mvp/ui/fragment/MainFragment;)V

    invoke-static {p1, v0}, Lcom/mh/movie/core/mvp/ui/utils/PermissionUtils;->externalStorage(Landroid/content/Context;Lcom/mh/movie/core/mvp/ui/utils/PermissionUtils$RequestPermission;)V

    goto :goto_0

    .line 148
    :cond_0
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/fragment/MainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-class v1, Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/ui/fragment/MainFragment;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mh/movie/core/mvp/model/entity/response/PageResponse;",
            ">;)V"
        }
    .end annotation

    .line 365
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/MainFragment;->d:Lcom/mh/movie/core/mvp/ui/widget/MultiStateView;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    if-lez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    :goto_0
    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/ui/widget/MultiStateView;->setViewState(I)V

    .line 366
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/fragment/MainFragment;->t:Ljava/util/List;

    .line 367
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/model/entity/response/PageResponse;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/response/PageResponse;->getPlateId()I

    move-result v0

    iput v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/MainFragment;->u:I

    .line 368
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 369
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 371
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mh/movie/core/mvp/model/entity/response/PageResponse;

    .line 372
    invoke-virtual {v3}, Lcom/mh/movie/core/mvp/model/entity/response/PageResponse;->getPlateId()I

    move-result v4

    invoke-static {v4}, Lcom/mh/movie/core/mvp/ui/fragment/RecommendFragment;->a(I)Lcom/mh/movie/core/mvp/ui/fragment/RecommendFragment;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 373
    invoke-virtual {v3}, Lcom/mh/movie/core/mvp/model/entity/response/PageResponse;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 376
    :cond_1
    new-instance p1, Lcom/mh/movie/core/mvp/ui/adapter/a/a;

    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/fragment/MainFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    invoke-direct {p1, v3, v0}, Lcom/mh/movie/core/mvp/ui/adapter/a/a;-><init>(Landroid/support/v4/app/FragmentManager;Ljava/util/List;)V

    .line 377
    invoke-virtual {p1, v1}, Lcom/mh/movie/core/mvp/ui/adapter/a/a;->a(Ljava/util/List;)V

    .line 378
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/MainFragment;->e:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 379
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/fragment/MainFragment;->e:Landroid/support/v4/view/ViewPager;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->setOffscreenPageLimit(I)V

    .line 380
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/fragment/MainFragment;->f:Landroid/support/design/widget/TabLayout;

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/MainFragment;->e:Landroid/support/v4/view/ViewPager;

    invoke-virtual {p1, v0}, Landroid/support/design/widget/TabLayout;->setupWithViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 382
    :goto_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    if-ge v2, p1, :cond_3

    .line 383
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/fragment/MainFragment;->f:Landroid/support/design/widget/TabLayout;

    invoke-virtual {p1, v2}, Landroid/support/design/widget/TabLayout;->getTabAt(I)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 385
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v2, v0}, Lcom/mh/movie/core/mvp/ui/fragment/MainFragment;->a(ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/design/widget/TabLayout$Tab;->setCustomView(Landroid/view/View;)Landroid/support/design/widget/TabLayout$Tab;

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method final synthetic b(Ljava/lang/Void;)V
    .locals 2

    .line 126
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/fragment/MainFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/mh/movie/core/mvp/ui/activity/PlayRecordActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/ui/fragment/MainFragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public b(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mh/movie/core/mvp/model/entity/response/HotListResponse;",
            ">;)V"
        }
    .end annotation

    .line 400
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/fragment/MainFragment;->s:Ljava/util/List;

    .line 401
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/fragment/MainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/ui/MHApplication;

    .line 402
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/fragment/MainFragment;->s:Ljava/util/List;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/mh/movie/core/mvp/ui/MHApplication;->a(ILjava/util/List;)V

    .line 403
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/MainFragment;->k:Landroid/widget/TextView;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mh/movie/core/mvp/model/entity/response/HotListResponse;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/HotListResponse;->getKeyword()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public c()V
    .locals 3

    .line 407
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/fragment/MainFragment;->s:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    .line 408
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/fragment/MainFragment;->k:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/fragment/MainFragment;->s:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/model/entity/response/HotListResponse;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/response/HotListResponse;->getKeyword()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public c_(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 348
    invoke-static {p1}, Lcom/jess/arms/c/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    invoke-static {p1}, Lcom/jess/arms/c/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method final synthetic d()V
    .locals 4

    .line 123
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/MainFragment;->l:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/jakewharton/rxbinding/view/b;->a(Landroid/view/View;)Lrx/a;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1

    .line 124
    invoke-virtual {v0, v2, v3, v1}, Lrx/a;->a(JLjava/util/concurrent/TimeUnit;)Lrx/a;

    move-result-object v0

    new-instance v1, Lcom/mh/movie/core/mvp/ui/fragment/j;

    invoke-direct {v1, p0}, Lcom/mh/movie/core/mvp/ui/fragment/j;-><init>(Lcom/mh/movie/core/mvp/ui/fragment/MainFragment;)V

    .line 125
    invoke-virtual {v0, v1}, Lrx/a;->a(Lrx/b/b;)Lrx/f;

    .line 130
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/MainFragment;->m:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/jakewharton/rxbinding/view/b;->a(Landroid/view/View;)Lrx/a;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 131
    invoke-virtual {v0, v2, v3, v1}, Lrx/a;->a(JLjava/util/concurrent/TimeUnit;)Lrx/a;

    move-result-object v0

    new-instance v1, Lcom/mh/movie/core/mvp/ui/fragment/k;

    invoke-direct {v1, p0}, Lcom/mh/movie/core/mvp/ui/fragment/k;-><init>(Lcom/mh/movie/core/mvp/ui/fragment/MainFragment;)V

    .line 132
    invoke-virtual {v0, v1}, Lrx/a;->a(Lrx/b/b;)Lrx/f;

    return-void
.end method

.method public e_()V
    .locals 0

    return-void
.end method

.method public gotoMoreMovie()V
    .locals 3
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0c040a
        }
    .end annotation

    .line 291
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/fragment/MainFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/mh/movie/core/mvp/ui/activity/AllActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "videoType"

    .line 292
    iget v2, p0, Lcom/mh/movie/core/mvp/ui/fragment/MainFragment;->u:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "page_name"

    .line 293
    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/fragment/MainFragment;->r:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 294
    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/fragment/MainFragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public mobileNectWork(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lorg/simple/eventbus/Subscriber;
        tag = "CONNECTED_MOBILE"
    .end annotation

    .line 277
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/fragment/MainFragment;->d:Lcom/mh/movie/core/mvp/ui/widget/MultiStateView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/mh/movie/core/mvp/ui/widget/MultiStateView;->setViewState(I)V

    .line 278
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/fragment/MainFragment;->b:Lcom/jess/arms/mvp/b;

    check-cast p1, Lcom/mh/movie/core/mvp/presenter/MainPresenter;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/presenter/MainPresenter;->e()V

    .line 279
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/fragment/MainFragment;->b:Lcom/jess/arms/mvp/b;

    check-cast p1, Lcom/mh/movie/core/mvp/presenter/MainPresenter;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/presenter/MainPresenter;->f()V

    return-void
.end method

.method public onViewClicked(Landroid/view/View;)V
    .locals 3
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0c032e,
            0x7f0c0455,
            0x7f0c0456
        }
    .end annotation

    .line 242
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 243
    sget v0, Lcom/mh/movie/core/R$id;->search_pannel:I

    if-ne p1, v0, :cond_0

    .line 244
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/fragment/MainFragment;->k:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 245
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/fragment/MainFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/mh/movie/core/mvp/ui/activity/SearchActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "world"

    .line 246
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "videoType"

    .line 247
    iget v1, p0, Lcom/mh/movie/core/mvp/ui/fragment/MainFragment;->u:I

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "list"

    .line 248
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/fragment/MainFragment;->s:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 249
    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/fragment/MainFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 250
    :cond_0
    sget v0, Lcom/mh/movie/core/R$id;->tv_search_1:I

    if-ne p1, v0, :cond_1

    .line 251
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/fragment/MainFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/mh/movie/core/mvp/ui/activity/AllActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "key_word"

    .line 252
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/fragment/MainFragment;->p:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "page_name"

    .line 253
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/fragment/MainFragment;->r:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "videoType"

    .line 254
    iget v1, p0, Lcom/mh/movie/core/mvp/ui/fragment/MainFragment;->u:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 255
    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/ui/fragment/MainFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 256
    :cond_1
    sget v0, Lcom/mh/movie/core/R$id;->tv_search_2:I

    if-ne p1, v0, :cond_2

    .line 257
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/fragment/MainFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/mh/movie/core/mvp/ui/activity/AllActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "key_word"

    .line 258
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/fragment/MainFragment;->q:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "page_name"

    .line 259
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/fragment/MainFragment;->r:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "videoType"

    .line 260
    iget v1, p0, Lcom/mh/movie/core/mvp/ui/fragment/MainFragment;->u:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 261
    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/ui/fragment/MainFragment;->startActivity(Landroid/content/Intent;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public wifiNectWork(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lorg/simple/eventbus/Subscriber;
        tag = "CONNECT_WIFI"
    .end annotation

    .line 284
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/fragment/MainFragment;->d:Lcom/mh/movie/core/mvp/ui/widget/MultiStateView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/mh/movie/core/mvp/ui/widget/MultiStateView;->setViewState(I)V

    .line 285
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/fragment/MainFragment;->b:Lcom/jess/arms/mvp/b;

    check-cast p1, Lcom/mh/movie/core/mvp/presenter/MainPresenter;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/presenter/MainPresenter;->e()V

    .line 286
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/fragment/MainFragment;->b:Lcom/jess/arms/mvp/b;

    check-cast p1, Lcom/mh/movie/core/mvp/presenter/MainPresenter;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/presenter/MainPresenter;->f()V

    return-void
.end method
