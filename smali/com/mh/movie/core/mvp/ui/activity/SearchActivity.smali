.class public Lcom/mh/movie/core/mvp/ui/activity/SearchActivity;
.super Lcom/mh/movie/core/mvp/ui/activity/ac;
.source "SearchActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Lcom/mh/movie/core/mvp/a/au$b;
.implements Lcom/mh/movie/core/mvp/ui/widget/LoadMoreWrapper$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mh/movie/core/mvp/ui/activity/ac<",
        "Lcom/mh/movie/core/mvp/presenter/SearchPresenter;",
        ">;",
        "Landroid/text/TextWatcher;",
        "Lcom/mh/movie/core/mvp/a/au$b;",
        "Lcom/mh/movie/core/mvp/ui/widget/LoadMoreWrapper$a;"
    }
.end annotation


# static fields
.field static c:I = 0xa

.field private static l:Ljava/lang/String; = "search_history"


# instance fields
.field d:Ljava/lang/String;

.field e:Lcom/mh/movie/core/mvp/ui/adapter/u;

.field etSearchInput:Landroid/widget/EditText;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c00cb
    .end annotation
.end field

.field f:Ljava/lang/String;

.field g:Ljava/lang/String;

.field h:I

.field i:I

.field ivSearchCancel:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c0184
    .end annotation
.end field

.field ivSearchHistoryDel:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c0185
    .end annotation
.end field

.field j:Z

.field k:Z

.field labels:Lcom/mh/movie/core/mvp/ui/widget/LabelsView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c019e
    .end annotation
.end field

.field linearSearch:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c01b6
    .end annotation
.end field

.field linearSearchHistory:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c01b7
    .end annotation
.end field

.field linearSearchHot:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c01b8
    .end annotation
.end field

.field linearSearchResult:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c01b9
    .end annotation
.end field

.field linearTop:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c01ba
    .end annotation
.end field

.field llSearchSuggestion:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c0213
    .end annotation
.end field

.field private m:Lcom/mh/movie/core/mvp/ui/adapter/c;

.field private n:Landroid/view/inputmethod/InputMethodManager;

.field private o:Z

.field recyclerSearchResult:Lcom/mh/movie/core/mvp/ui/widget/LoadMoreWrapper;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c02c6
    .end annotation
.end field

.field rlContent:Landroid/widget/RelativeLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c01cf
    .end annotation
.end field

.field rvSuggestion:Landroid/support/v7/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c0310
    .end annotation
.end field

.field svEmpty:Lcom/mh/movie/core/mvp/ui/widget/StateView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c035c
    .end annotation
.end field

.field svState:Lcom/mh/movie/core/mvp/ui/widget/StateView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c035b
    .end annotation
.end field

.field tlTabLayout:Landroid/support/design/widget/TabLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c0377
    .end annotation
.end field

.field vpSearchLabel:Lcom/mh/movie/core/mvp/ui/widget/ControlScrollViewPager;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c04ca
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 80
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/activity/ac;-><init>()V

    .line 107
    sget-object v0, Lcom/mh/movie/core/mvp/ui/activity/SearchActivity;->l:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/jess/arms/c/d;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/SearchActivity;->d:Ljava/lang/String;

    const/4 v0, 0x0

    .line 108
    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/SearchActivity;->e:Lcom/mh/movie/core/mvp/ui/adapter/u;

    const-string v0, ""

    .line 109
    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/SearchActivity;->f:Ljava/lang/String;

    const-string v0, ""

    .line 110
    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/SearchActivity;->g:Ljava/lang/String;

    const/4 v0, 0x1

    .line 111
    iput v0, p0, Lcom/mh/movie/core/mvp/ui/activity/SearchActivity;->h:I

    .line 112
    iput v0, p0, Lcom/mh/movie/core/mvp/ui/activity/SearchActivity;->i:I

    const/4 v1, 0x0

    .line 113
    iput-boolean v1, p0, Lcom/mh/movie/core/mvp/ui/activity/SearchActivity;->j:Z

    .line 114
    iput-boolean v1, p0, Lcom/mh/movie/core/mvp/ui/activity/SearchActivity;->k:Z

    .line 136
    iput-boolean v0, p0, Lcom/mh/movie/core/mvp/ui/activity/SearchActivity;->o:Z

    return-void
.end method

.method static final synthetic a(Landroid/widget/TextView;ILjava/lang/String;)Ljava/lang/CharSequence;
    .locals 0

    return-object p2
.end method

.method static synthetic a(Lcom/mh/movie/core/mvp/ui/activity/SearchActivity;)Z
    .locals 0

    .line 80
    iget-boolean p0, p0, Lcom/mh/movie/core/mvp/ui/activity/SearchActivity;->o:Z

    return p0
.end method

.method static synthetic a(Lcom/mh/movie/core/mvp/ui/activity/SearchActivity;Z)Z
    .locals 0

    .line 80
    iput-boolean p1, p0, Lcom/mh/movie/core/mvp/ui/activity/SearchActivity;->o:Z

    return p1
.end method

.method private c(Ljava/lang/String;)V
    .locals 4

    .line 239
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/SearchActivity;->etSearchInput:Landroid/widget/EditText;

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/text/InputFilter;

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    const/16 v3, 0xf

    invoke-direct {v2, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 240
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/SearchActivity;->etSearchInput:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setSelection(I)V

    .line 242
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/SearchActivity;->etSearchInput:Landroid/widget/EditText;

    new-instance v1, Lcom/mh/movie/core/mvp/ui/activity/SearchActivity$2;

    invoke-direct {v1, p0}, Lcom/mh/movie/core/mvp/ui/activity/SearchActivity$2;-><init>(Lcom/mh/movie/core/mvp/ui/activity/SearchActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 266
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/SearchActivity;->etSearchInput:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 267
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/SearchActivity;->etSearchInput:Landroid/widget/EditText;

    invoke-virtual {p1, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method private f()V
    .locals 3

    .line 167
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/SearchActivity;->rvSuggestion:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/activity/SearchActivity;->r:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 168
    new-instance v0, Lcom/mh/movie/core/mvp/ui/activity/SearchActivity$1;

    invoke-direct {v0, p0}, Lcom/mh/movie/core/mvp/ui/activity/SearchActivity$1;-><init>(Lcom/mh/movie/core/mvp/ui/activity/SearchActivity;)V

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/SearchActivity;->m:Lcom/mh/movie/core/mvp/ui/adapter/c;

    .line 183
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/SearchActivity;->rvSuggestion:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/SearchActivity;->m:Lcom/mh/movie/core/mvp/ui/adapter/c;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 184
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/SearchActivity;->svEmpty:Lcom/mh/movie/core/mvp/ui/widget/StateView;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/SearchActivity;->rvSuggestion:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/ui/widget/StateView;->setBindView(Landroid/view/View;)V

    return-void
.end method

.method private g()V
    .locals 2

    .line 192
    new-instance v0, Lcom/mh/movie/core/mvp/model/db/BaseAnalysisEvent;

    invoke-direct {v0}, Lcom/mh/movie/core/mvp/model/db/BaseAnalysisEvent;-><init>()V

    const-string v1, "search"

    .line 193
    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/model/db/BaseAnalysisEvent;->setType(Ljava/lang/String;)V

    const-string v1, "startSearch"

    .line 194
    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/model/db/BaseAnalysisEvent;->setSecondaryType(Ljava/lang/String;)V

    .line 195
    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/utils/b/a;->b(Lcom/mh/movie/core/mvp/model/db/BaseAnalysisEvent;)V

    return-void
.end method

.method private h()V
    .locals 5

    .line 203
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/SearchActivity;->linearTop:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 204
    invoke-static {p0}, Lcom/jess/arms/c/e;->c(Landroid/content/Context;)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x42200000    # 40.0f

    invoke-static {p0, v2}, Lcom/jess/arms/c/e;->a(Landroid/content/Context;F)F

    move-result v2

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 205
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/SearchActivity;->linearTop:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v0, ""

    .line 206
    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/activity/SearchActivity;->b(Ljava/lang/String;)V

    .line 207
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/SearchActivity;->labels:Lcom/mh/movie/core/mvp/ui/widget/LabelsView;

    new-instance v1, Lcom/mh/movie/core/mvp/ui/activity/aq;

    invoke-direct {v1, p0}, Lcom/mh/movie/core/mvp/ui/activity/aq;-><init>(Lcom/mh/movie/core/mvp/ui/activity/SearchActivity;)V

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/ui/widget/LabelsView;->setOnLabelClickListener(Lcom/mh/movie/core/mvp/ui/widget/LabelsView$c;)V

    .line 211
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/SearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "world"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 212
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/SearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "videoType"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/mh/movie/core/mvp/ui/activity/SearchActivity;->h:I

    .line 213
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/SearchActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/mh/movie/core/mvp/ui/MHApplication;

    .line 214
    iget v2, p0, Lcom/mh/movie/core/mvp/ui/activity/SearchActivity;->h:I

    invoke-virtual {v1, v2}, Lcom/mh/movie/core/mvp/ui/MHApplication;->a(I)Ljava/util/List;

    move-result-object v1

    .line 215
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-eqz v1, :cond_0

    const/4 v3, 0x0

    .line 217
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 218
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mh/movie/core/mvp/model/entity/response/HotListResponse;

    invoke-virtual {v4}, Lcom/mh/movie/core/mvp/model/entity/response/HotListResponse;->getKeyword()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    const-string v1, ""

    if-ne v0, v1, :cond_2

    .line 223
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 224
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 225
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 227
    :cond_2
    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/SearchActivity;->f:Ljava/lang/String;

    .line 229
    invoke-direct {p0, v0}, Lcom/mh/movie/core/mvp/ui/activity/SearchActivity;->c(Ljava/lang/String;)V

    return-void
.end method

.method private k()V
    .locals 2

    .line 274
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/SearchActivity;->recyclerSearchResult:Lcom/mh/movie/core/mvp/ui/widget/LoadMoreWrapper;

    invoke-virtual {v0, p0}, Lcom/mh/movie/core/mvp/ui/widget/LoadMoreWrapper;->setOnLoadNextPage(Lcom/mh/movie/core/mvp/ui/widget/LoadMoreWrapper$a;)V

    .line 275
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/SearchActivity;->recyclerSearchResult:Lcom/mh/movie/core/mvp/ui/widget/LoadMoreWrapper;

    const-string v1, "search"

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/ui/widget/LoadMoreWrapper;->setTipsType(Ljava/lang/String;)V

    .line 276
    new-instance v0, Lcom/mh/movie/core/mvp/ui/adapter/u;

    invoke-direct {v0}, Lcom/mh/movie/core/mvp/ui/adapter/u;-><init>()V

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/SearchActivity;->e:Lcom/mh/movie/core/mvp/ui/adapter/u;

    .line 277
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/SearchActivity;->e:Lcom/mh/movie/core/mvp/ui/adapter/u;

    new-instance v1, Lcom/mh/movie/core/mvp/ui/activity/SearchActivity$3;

    invoke-direct {v1, p0}, Lcom/mh/movie/core/mvp/ui/activity/SearchActivity$3;-><init>(Lcom/mh/movie/core/mvp/ui/activity/SearchActivity;)V

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/ui/adapter/u;->a(Lcom/mh/movie/core/mvp/ui/adapter/u$a;)V

    .line 290
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/SearchActivity;->recyclerSearchResult:Lcom/mh/movie/core/mvp/ui/widget/LoadMoreWrapper;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/SearchActivity;->e:Lcom/mh/movie/core/mvp/ui/adapter/u;

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/ui/widget/LoadMoreWrapper;->setAdapter(Lcom/mh/movie/core/mvp/ui/adapter/r;)V

    return-void
.end method

.method private l()V
    .locals 1

    .line 294
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/SearchActivity;->b:Lcom/jess/arms/mvp/b;

    check-cast v0, Lcom/mh/movie/core/mvp/presenter/SearchPresenter;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/presenter/SearchPresenter;->e()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)I
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 150
    sget p1, Lcom/mh/movie/core/R$layout;->activity_search:I

    return p1
.end method

.method final synthetic a(Landroid/widget/TextView;Ljava/lang/String;I)V
    .locals 0

    const/4 p1, 0x1

    .line 208
    invoke-virtual {p0, p2, p1}, Lcom/mh/movie/core/mvp/ui/activity/SearchActivity;->a(Ljava/lang/String;Z)V

    return-void
.end method

.method public a(Lcom/jess/arms/b/a/a;)V
    .locals 1
    .param p1    # Lcom/jess/arms/b/a/a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 141
    invoke-static {}, Lcom/mh/movie/core/a/a/bf;->a()Lcom/mh/movie/core/a/a/bf$a;

    move-result-object v0

    .line 142
    invoke-virtual {v0, p1}, Lcom/mh/movie/core/a/a/bf$a;->a(Lcom/jess/arms/b/a/a;)Lcom/mh/movie/core/a/a/bf$a;

    move-result-object p1

    new-instance v0, Lcom/mh/movie/core/a/b/dw;

    invoke-direct {v0, p0}, Lcom/mh/movie/core/a/b/dw;-><init>(Lcom/mh/movie/core/mvp/a/au$b;)V

    .line 143
    invoke-virtual {p1, v0}, Lcom/mh/movie/core/a/a/bf$a;->a(Lcom/mh/movie/core/a/b/dw;)Lcom/mh/movie/core/a/a/bf$a;

    move-result-object p1

    .line 144
    invoke-virtual {p1}, Lcom/mh/movie/core/a/a/bf$a;->a()Lcom/mh/movie/core/a/a/dd;

    move-result-object p1

    .line 145
    invoke-interface {p1, p0}, Lcom/mh/movie/core/a/a/dd;->a(Lcom/mh/movie/core/mvp/ui/activity/SearchActivity;)V

    return-void
.end method

.method public a(Ljava/lang/String;Z)V
    .locals 3

    .line 384
    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/SearchActivity;->b(Ljava/lang/String;)V

    .line 385
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/SearchActivity;->etSearchInput:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    .line 386
    iput-boolean v0, p0, Lcom/mh/movie/core/mvp/ui/activity/SearchActivity;->j:Z

    .line 387
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/SearchActivity;->etSearchInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->clearFocus()V

    .line 388
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/SearchActivity;->g:Ljava/lang/String;

    if-eqz p2, :cond_0

    .line 390
    iput v0, p0, Lcom/mh/movie/core/mvp/ui/activity/SearchActivity;->i:I

    const/4 p2, 0x0

    .line 391
    invoke-virtual {p0, p2}, Lcom/mh/movie/core/mvp/ui/activity/SearchActivity;->afterTextChanged(Landroid/text/Editable;)V

    goto :goto_0

    .line 393
    :cond_0
    iget p2, p0, Lcom/mh/movie/core/mvp/ui/activity/SearchActivity;->i:I

    add-int/2addr p2, v0

    iput p2, p0, Lcom/mh/movie/core/mvp/ui/activity/SearchActivity;->i:I

    .line 395
    :goto_0
    new-instance p2, Lcom/mh/movie/core/mvp/model/db/SearchResultEvent;

    invoke-direct {p2}, Lcom/mh/movie/core/mvp/model/db/SearchResultEvent;-><init>()V

    const-string v1, "search"

    .line 396
    invoke-virtual {p2, v1}, Lcom/mh/movie/core/mvp/model/db/SearchResultEvent;->setType(Ljava/lang/String;)V

    const-string v1, "completeSearch"

    .line 397
    invoke-virtual {p2, v1}, Lcom/mh/movie/core/mvp/model/db/SearchResultEvent;->setSecondaryType(Ljava/lang/String;)V

    .line 398
    invoke-virtual {p2, p1}, Lcom/mh/movie/core/mvp/model/db/SearchResultEvent;->setContent(Ljava/lang/String;)V

    .line 399
    invoke-static {p2}, Lcom/mh/movie/core/mvp/ui/utils/b/a;->b(Lcom/mh/movie/core/mvp/model/db/BaseAnalysisEvent;)V

    .line 400
    iget-object p2, p0, Lcom/mh/movie/core/mvp/ui/activity/SearchActivity;->b:Lcom/jess/arms/mvp/b;

    check-cast p2, Lcom/mh/movie/core/mvp/presenter/SearchPresenter;

    iget v1, p0, Lcom/mh/movie/core/mvp/ui/activity/SearchActivity;->i:I

    sget v2, Lcom/mh/movie/core/mvp/ui/activity/SearchActivity;->c:I

    invoke-virtual {p2, p1, v1, v2, v0}, Lcom/mh/movie/core/mvp/presenter/SearchPresenter;->a(Ljava/lang/String;III)V

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mh/movie/core/mvp/model/entity/response/SearchResponse;",
            ">;)V"
        }
    .end annotation

    .line 488
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/SearchActivity;->linearSearchResult:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 489
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    sget v2, Lcom/mh/movie/core/mvp/ui/activity/SearchActivity;->c:I

    const/4 v3, 0x1

    if-ge v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    iput-boolean v1, p0, Lcom/mh/movie/core/mvp/ui/activity/SearchActivity;->k:Z

    .line 490
    iget v0, p0, Lcom/mh/movie/core/mvp/ui/activity/SearchActivity;->i:I

    if-le v0, v3, :cond_1

    .line 491
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/SearchActivity;->recyclerSearchResult:Lcom/mh/movie/core/mvp/ui/widget/LoadMoreWrapper;

    invoke-virtual {v0, p1}, Lcom/mh/movie/core/mvp/ui/widget/LoadMoreWrapper;->a(Ljava/util/List;)V

    goto :goto_0

    .line 493
    :cond_1
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/SearchActivity;->recyclerSearchResult:Lcom/mh/movie/core/mvp/ui/widget/LoadMoreWrapper;

    invoke-virtual {v0, p1}, Lcom/mh/movie/core/mvp/ui/widget/LoadMoreWrapper;->setContent(Ljava/util/List;)V

    :goto_0
    return-void
.end method

.method public a(ZLjava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 318
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/SearchActivity;->svState:Lcom/mh/movie/core/mvp/ui/widget/StateView;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/mh/movie/core/mvp/ui/widget/StateView;->setState(I)V

    :cond_0
    return-void
.end method

.method public a(ZLjava/lang/Throwable;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 325
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/SearchActivity;->svState:Lcom/mh/movie/core/mvp/ui/widget/StateView;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/mh/movie/core/mvp/ui/widget/StateView;->setState(I)V

    :cond_0
    return-void
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 457
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/SearchActivity;->ivSearchCancel:Landroid/widget/ImageView;

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x4

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 155
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/activity/SearchActivity;->g()V

    .line 156
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/activity/SearchActivity;->f()V

    .line 157
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/activity/SearchActivity;->h()V

    .line 158
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/activity/SearchActivity;->k()V

    .line 159
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/activity/SearchActivity;->l()V

    .line 160
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/SearchActivity;->svState:Lcom/mh/movie/core/mvp/ui/widget/StateView;

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/SearchActivity;->rlContent:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Lcom/mh/movie/core/mvp/ui/widget/StateView;->setBindView(Landroid/view/View;)V

    .line 161
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/SearchActivity;->r:Landroid/content/Context;

    invoke-static {p1}, Lcom/mh/movie/core/mvp/ui/utils/NetStateUtils;->getNetWorkStates(Landroid/content/Context;)I

    move-result p1

    if-gez p1, :cond_0

    .line 162
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/SearchActivity;->svState:Lcom/mh/movie/core/mvp/ui/widget/StateView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/mh/movie/core/mvp/ui/widget/StateView;->setState(I)V

    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 6

    .line 357
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, ""

    .line 358
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 359
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 361
    :cond_0
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/SearchActivity;->d:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/SearchActivity;->d:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 362
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/SearchActivity;->d:Ljava/lang/String;

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    .line 363
    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_2

    .line 364
    aget-object v4, v1, v3

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/16 v5, 0x32

    if-ge v4, v5, :cond_1

    .line 365
    aget-object v4, v1, v3

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    const-string p1, ""

    move-object v1, p1

    const/4 p1, 0x0

    .line 370
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge p1, v3, :cond_4

    .line 371
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 372
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge p1, v3, :cond_3

    .line 373
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_3
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 376
    :cond_4
    iput-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/SearchActivity;->d:Ljava/lang/String;

    .line 377
    sget-object p1, Lcom/mh/movie/core/mvp/ui/activity/SearchActivity;->l:Ljava/lang/String;

    invoke-static {p0, p1, v1}, Lcom/jess/arms/c/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/SearchActivity;->linearSearchHistory:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_5

    const/16 v2, 0x8

    :cond_5
    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 379
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/SearchActivity;->labels:Lcom/mh/movie/core/mvp/ui/widget/LabelsView;

    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Lcom/mh/movie/core/mvp/ui/widget/LabelsView;->setMaxLine(I)V

    .line 380
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/SearchActivity;->labels:Lcom/mh/movie/core/mvp/ui/widget/LabelsView;

    sget-object v1, Lcom/mh/movie/core/mvp/ui/activity/ar;->a:Lcom/mh/movie/core/mvp/ui/widget/LabelsView$a;

    invoke-virtual {p1, v0, v1}, Lcom/mh/movie/core/mvp/ui/widget/LabelsView;->a(Ljava/util/List;Lcom/mh/movie/core/mvp/ui/widget/LabelsView$a;)V

    return-void
.end method

.method public b(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 331
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 332
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/SearchActivity;->svEmpty:Lcom/mh/movie/core/mvp/ui/widget/StateView;

    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Lcom/mh/movie/core/mvp/ui/widget/StateView;->setState(I)V

    goto :goto_0

    .line 334
    :cond_0
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/SearchActivity;->svEmpty:Lcom/mh/movie/core/mvp/ui/widget/StateView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/ui/widget/StateView;->setState(I)V

    .line 335
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/SearchActivity;->m:Lcom/mh/movie/core/mvp/ui/adapter/c;

    invoke-virtual {v0, p1}, Lcom/mh/movie/core/mvp/ui/adapter/c;->a(Ljava/util/List;)V

    :goto_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public c(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mh/movie/core/mvp/model/entity/SearchTabBean;",
            ">;)V"
        }
    .end annotation

    .line 341
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 342
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 343
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mh/movie/core/mvp/model/entity/SearchTabBean;

    if-eqz v2, :cond_0

    .line 345
    invoke-virtual {v2}, Lcom/mh/movie/core/mvp/model/entity/SearchTabBean;->getRankList()Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Lcom/mh/movie/core/mvp/ui/fragment/LeaderBoardFragment;->a(Ljava/util/List;)Lcom/mh/movie/core/mvp/ui/fragment/LeaderBoardFragment;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 346
    invoke-virtual {v2}, Lcom/mh/movie/core/mvp/model/entity/SearchTabBean;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 349
    :cond_1
    new-instance p1, Lcom/mh/movie/core/mvp/ui/adapter/a/a;

    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/SearchActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-direct {p1, v2, v0}, Lcom/mh/movie/core/mvp/ui/adapter/a/a;-><init>(Landroid/support/v4/app/FragmentManager;Ljava/util/List;)V

    .line 350
    invoke-virtual {p1, v1}, Lcom/mh/movie/core/mvp/ui/adapter/a/a;->a(Ljava/util/List;)V

    .line 351
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/SearchActivity;->vpSearchLabel:Lcom/mh/movie/core/mvp/ui/widget/ControlScrollViewPager;

    invoke-virtual {v0, p1}, Lcom/mh/movie/core/mvp/ui/widget/ControlScrollViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 352
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/SearchActivity;->vpSearchLabel:Lcom/mh/movie/core/mvp/ui/widget/ControlScrollViewPager;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/mh/movie/core/mvp/ui/widget/ControlScrollViewPager;->setCanScroller(Z)V

    .line 353
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/SearchActivity;->tlTabLayout:Landroid/support/design/widget/TabLayout;

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/SearchActivity;->vpSearchLabel:Lcom/mh/movie/core/mvp/ui/widget/ControlScrollViewPager;

    invoke-virtual {p1, v0}, Landroid/support/design/widget/TabLayout;->setupWithViewPager(Landroid/support/v4/view/ViewPager;)V

    return-void
.end method

.method public c_(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 421
    invoke-static {p1}, Lcom/jess/arms/c/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 422
    invoke-static {p1}, Lcom/jess/arms/c/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method public e()V
    .locals 2

    .line 500
    iget-boolean v0, p0, Lcom/mh/movie/core/mvp/ui/activity/SearchActivity;->k:Z

    if-eqz v0, :cond_0

    .line 501
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/SearchActivity;->recyclerSearchResult:Lcom/mh/movie/core/mvp/ui/widget/LoadMoreWrapper;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/ui/widget/LoadMoreWrapper;->a(Ljava/util/List;)V

    goto :goto_0

    .line 503
    :cond_0
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/SearchActivity;->g:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/mh/movie/core/mvp/ui/activity/SearchActivity;->a(Ljava/lang/String;Z)V

    :goto_0
    return-void
.end method

.method public e_()V
    .locals 0

    return-void
.end method

.method public mobileNectWork(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lorg/simple/eventbus/Subscriber;
        tag = "CONNECTED_MOBILE"
    .end annotation

    .line 306
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/SearchActivity;->svState:Lcom/mh/movie/core/mvp/ui/widget/StateView;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/mh/movie/core/mvp/ui/widget/StateView;->setState(I)V

    return-void
.end method

.method public noNectWork(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lorg/simple/eventbus/Subscriber;
        tag = "CONNECTED_WHITHOUT_NET"
    .end annotation

    .line 301
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/SearchActivity;->svState:Lcom/mh/movie/core/mvp/ui/widget/StateView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/mh/movie/core/mvp/ui/widget/StateView;->setState(I)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 509
    invoke-super {p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/ac;->onCreate(Landroid/os/Bundle;)V

    .line 511
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Activity;)Lbutterknife/Unbinder;

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 415
    invoke-super {p0}, Lcom/mh/movie/core/mvp/ui/activity/ac;->onDestroy()V

    const/4 v0, 0x0

    .line 416
    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/SearchActivity;->n:Landroid/view/inputmethod/InputMethodManager;

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 444
    iget-object p2, p0, Lcom/mh/movie/core/mvp/ui/activity/SearchActivity;->llSearchSuggestion:Landroid/widget/LinearLayout;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p3

    const/16 p4, 0x8

    if-lez p3, :cond_0

    const/4 p3, 0x0

    goto :goto_0

    :cond_0
    const/16 p3, 0x8

    :goto_0
    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 445
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p2

    if-gtz p2, :cond_1

    .line 446
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/SearchActivity;->linearSearchResult:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/4 p1, 0x1

    .line 447
    iput-boolean p1, p0, Lcom/mh/movie/core/mvp/ui/activity/SearchActivity;->o:Z

    goto :goto_1

    .line 449
    :cond_1
    iget-boolean p2, p0, Lcom/mh/movie/core/mvp/ui/activity/SearchActivity;->o:Z

    if-eqz p2, :cond_2

    .line 450
    iget-object p2, p0, Lcom/mh/movie/core/mvp/ui/activity/SearchActivity;->b:Lcom/jess/arms/mvp/b;

    check-cast p2, Lcom/mh/movie/core/mvp/presenter/SearchPresenter;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/mh/movie/core/mvp/presenter/SearchPresenter;->a(Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public onViewClicked(Landroid/view/View;)V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0c0184,
            0x7f0c0459,
            0x7f0c0185,
            0x7f0c0382
        }
    .end annotation

    .line 464
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 465
    sget v0, Lcom/mh/movie/core/R$id;->iv_search_cancel:I

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    .line 466
    iput-boolean p1, p0, Lcom/mh/movie/core/mvp/ui/activity/SearchActivity;->j:Z

    .line 467
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/SearchActivity;->etSearchInput:Landroid/widget/EditText;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 468
    :cond_0
    sget v0, Lcom/mh/movie/core/R$id;->tv_search_start:I

    if-ne p1, v0, :cond_2

    .line 470
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/SearchActivity;->etSearchInput:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/mh/movie/core/mvp/ui/utils/CommonTools;->checkStr(Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_1

    .line 471
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/SearchActivity;->r:Landroid/content/Context;

    const-string v0, "\u8bf7\u8f93\u5165\u4e2d\u6587\u82f1\u6587\u6216\u8005\u6570\u5b57\uff01"

    invoke-static {p1, v0}, Lcom/jess/arms/c/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 474
    :cond_1
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/SearchActivity;->etSearchInput:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    if-lez p1, :cond_4

    .line 475
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/SearchActivity;->etSearchInput:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lcom/mh/movie/core/mvp/ui/activity/SearchActivity;->a(Ljava/lang/String;Z)V

    goto :goto_0

    .line 476
    :cond_2
    sget v0, Lcom/mh/movie/core/R$id;->iv_search_history_del:I

    if-ne p1, v0, :cond_3

    const/4 p1, 0x0

    .line 477
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/SearchActivity;->d:Ljava/lang/String;

    .line 478
    sget-object p1, Lcom/mh/movie/core/mvp/ui/activity/SearchActivity;->l:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/jess/arms/c/d;->e(Landroid/content/Context;Ljava/lang/String;)V

    .line 479
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/SearchActivity;->linearSearchHistory:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 480
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/SearchActivity;->r:Landroid/content/Context;

    const-string v0, "\u5220\u9664\u6210\u529f"

    invoke-static {p1, v0}, Lcom/mh/movie/core/mvp/ui/utils/CustomToast;->makeText(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 481
    :cond_3
    sget v0, Lcom/mh/movie/core/R$id;->topbar_left_ll:I

    if-ne p1, v0, :cond_4

    .line 482
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/SearchActivity;->onBackPressed()V

    :cond_4
    :goto_0
    return-void
.end method

.method public wifiNectWork(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lorg/simple/eventbus/Subscriber;
        tag = "CONNECT_WIFI"
    .end annotation

    .line 312
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/SearchActivity;->svState:Lcom/mh/movie/core/mvp/ui/widget/StateView;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/mh/movie/core/mvp/ui/widget/StateView;->setState(I)V

    return-void
.end method
