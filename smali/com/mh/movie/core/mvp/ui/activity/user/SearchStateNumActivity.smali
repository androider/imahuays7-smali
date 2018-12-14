.class public Lcom/mh/movie/core/mvp/ui/activity/user/SearchStateNumActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "SearchStateNumActivity.java"

# interfaces
.implements Lcom/mh/movie/core/mvp/ui/adapter/SearchCountryNumAdapter$a;
.implements Lcom/mh/movie/core/mvp/ui/widget/recylerview/a$a;


# instance fields
.field a:Landroid/support/v7/widget/RecyclerView;

.field b:Landroid/support/v7/widget/RecyclerView;

.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field etSeatch:Landroid/widget/EditText;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c00ca
    .end annotation
.end field

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field flSearch:Landroid/widget/FrameLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c0100
    .end annotation
.end field

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private h:Lcom/mh/movie/core/mvp/ui/adapter/SearchCountryNumAdapter;

.field private i:Lcom/mh/movie/core/mvp/ui/adapter/SearchCountryNumAdapter;

.field ivCancel:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c005a
    .end annotation
.end field

.field private j:Lcom/mh/movie/core/mvp/ui/widget/recylerview/a;

.field sidrbar:Lcom/mh/movie/core/mvp/ui/widget/SideBar;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c0340
    .end annotation
.end field

.field topbar:Lcom/mh/movie/core/mvp/ui/widget/Topbar;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c0380
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 47
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 68
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/user/SearchStateNumActivity;->c:Ljava/util/Map;

    .line 69
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/user/SearchStateNumActivity;->d:Ljava/util/Map;

    .line 70
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/user/SearchStateNumActivity;->e:Ljava/util/Map;

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/user/SearchStateNumActivity;->f:Ljava/util/List;

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/user/SearchStateNumActivity;->g:Ljava/util/List;

    return-void
.end method

.method static synthetic a(Lcom/mh/movie/core/mvp/ui/activity/user/SearchStateNumActivity;)Ljava/util/Map;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/mh/movie/core/mvp/ui/activity/user/SearchStateNumActivity;->d:Ljava/util/Map;

    return-object p0
.end method

.method private a(I)V
    .locals 2

    .line 255
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/user/SearchStateNumActivity;->etSeatch:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 256
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const/16 v1, 0x11

    if-ne p1, v1, :cond_0

    const/4 p1, -0x2

    .line 259
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    .line 261
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 264
    :goto_0
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/user/SearchStateNumActivity;->etSeatch:Landroid/widget/EditText;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic a(Lcom/mh/movie/core/mvp/ui/activity/user/SearchStateNumActivity;I)V
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/user/SearchStateNumActivity;->a(I)V

    return-void
.end method

.method private c()V
    .locals 1

    .line 92
    sget v0, Lcom/mh/movie/core/R$id;->rv:I

    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/activity/user/SearchStateNumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/user/SearchStateNumActivity;->a:Landroid/support/v7/widget/RecyclerView;

    .line 93
    sget v0, Lcom/mh/movie/core/R$id;->rv_search:I

    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/activity/user/SearchStateNumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/user/SearchStateNumActivity;->b:Landroid/support/v7/widget/RecyclerView;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 98
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/user/SearchStateNumActivity;->ivCancel:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/jakewharton/rxbinding/view/b;->a(Landroid/view/View;)Lrx/a;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1

    .line 99
    invoke-virtual {v0, v2, v3, v1}, Lrx/a;->a(JLjava/util/concurrent/TimeUnit;)Lrx/a;

    move-result-object v0

    new-instance v1, Lcom/mh/movie/core/mvp/ui/activity/user/b;

    invoke-direct {v1, p0}, Lcom/mh/movie/core/mvp/ui/activity/user/b;-><init>(Lcom/mh/movie/core/mvp/ui/activity/user/SearchStateNumActivity;)V

    .line 100
    invoke-virtual {v0, v1}, Lrx/a;->a(Lrx/b/b;)Lrx/f;

    .line 104
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/user/SearchStateNumActivity;->flSearch:Landroid/widget/FrameLayout;

    invoke-static {v0}, Lcom/jakewharton/rxbinding/view/b;->a(Landroid/view/View;)Lrx/a;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 105
    invoke-virtual {v0, v2, v3, v1}, Lrx/a;->a(JLjava/util/concurrent/TimeUnit;)Lrx/a;

    move-result-object v0

    new-instance v1, Lcom/mh/movie/core/mvp/ui/activity/user/c;

    invoke-direct {v1, p0}, Lcom/mh/movie/core/mvp/ui/activity/user/c;-><init>(Lcom/mh/movie/core/mvp/ui/activity/user/SearchStateNumActivity;)V

    .line 106
    invoke-virtual {v0, v1}, Lrx/a;->a(Lrx/b/b;)Lrx/f;

    .line 118
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/user/SearchStateNumActivity;->etSeatch:Landroid/widget/EditText;

    new-instance v1, Lcom/mh/movie/core/mvp/ui/activity/user/SearchStateNumActivity$1;

    invoke-direct {v1, p0}, Lcom/mh/movie/core/mvp/ui/activity/user/SearchStateNumActivity$1;-><init>(Lcom/mh/movie/core/mvp/ui/activity/user/SearchStateNumActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 147
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/user/SearchStateNumActivity;->etSeatch:Landroid/widget/EditText;

    new-instance v1, Lcom/mh/movie/core/mvp/ui/activity/user/SearchStateNumActivity$2;

    invoke-direct {v1, p0}, Lcom/mh/movie/core/mvp/ui/activity/user/SearchStateNumActivity$2;-><init>(Lcom/mh/movie/core/mvp/ui/activity/user/SearchStateNumActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 159
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/user/SearchStateNumActivity;->etSeatch:Landroid/widget/EditText;

    new-instance v1, Lcom/mh/movie/core/mvp/ui/activity/user/SearchStateNumActivity$3;

    invoke-direct {v1, p0}, Lcom/mh/movie/core/mvp/ui/activity/user/SearchStateNumActivity$3;-><init>(Lcom/mh/movie/core/mvp/ui/activity/user/SearchStateNumActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 173
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/user/SearchStateNumActivity;->b()V

    .line 175
    new-instance v0, Lcom/mh/movie/core/mvp/ui/widget/recylerview/a;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2, v1, v1}, Lcom/mh/movie/core/mvp/ui/widget/recylerview/a;-><init>(Landroid/content/Context;IFF)V

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/user/SearchStateNumActivity;->j:Lcom/mh/movie/core/mvp/ui/widget/recylerview/a;

    .line 176
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/user/SearchStateNumActivity;->j:Lcom/mh/movie/core/mvp/ui/widget/recylerview/a;

    invoke-virtual {v0, p0}, Lcom/mh/movie/core/mvp/ui/widget/recylerview/a;->a(Lcom/mh/movie/core/mvp/ui/widget/recylerview/a$a;)V

    .line 177
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/user/SearchStateNumActivity;->j:Lcom/mh/movie/core/mvp/ui/widget/recylerview/a;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/user/SearchStateNumActivity;->c:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/ui/widget/recylerview/a;->a(Ljava/util/Map;)V

    .line 178
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/user/SearchStateNumActivity;->j:Lcom/mh/movie/core/mvp/ui/widget/recylerview/a;

    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/user/SearchStateNumActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    const/4 v2, 0x1

    const/high16 v3, 0x41a00000    # 20.0f

    invoke-static {v2, v3, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/ui/widget/recylerview/a;->a(I)V

    .line 179
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/user/SearchStateNumActivity;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/user/SearchStateNumActivity;->j:Lcom/mh/movie/core/mvp/ui/widget/recylerview/a;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 183
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 184
    invoke-virtual {v0, v2}, Landroid/support/v7/widget/LinearLayoutManager;->setOrientation(I)V

    .line 185
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/user/SearchStateNumActivity;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 186
    new-instance v0, Lcom/mh/movie/core/mvp/ui/adapter/SearchCountryNumAdapter;

    invoke-direct {v0, p0}, Lcom/mh/movie/core/mvp/ui/adapter/SearchCountryNumAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/user/SearchStateNumActivity;->h:Lcom/mh/movie/core/mvp/ui/adapter/SearchCountryNumAdapter;

    .line 187
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/user/SearchStateNumActivity;->h:Lcom/mh/movie/core/mvp/ui/adapter/SearchCountryNumAdapter;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/user/SearchStateNumActivity;->c:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/ui/adapter/SearchCountryNumAdapter;->a(Ljava/util/Map;)V

    .line 188
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/user/SearchStateNumActivity;->h:Lcom/mh/movie/core/mvp/ui/adapter/SearchCountryNumAdapter;

    invoke-virtual {v0, p0}, Lcom/mh/movie/core/mvp/ui/adapter/SearchCountryNumAdapter;->setOnItemClickListener(Lcom/mh/movie/core/mvp/ui/adapter/SearchCountryNumAdapter$a;)V

    .line 189
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/user/SearchStateNumActivity;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/user/SearchStateNumActivity;->h:Lcom/mh/movie/core/mvp/ui/adapter/SearchCountryNumAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 190
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/user/SearchStateNumActivity;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 191
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/user/SearchStateNumActivity;->h:Lcom/mh/movie/core/mvp/ui/adapter/SearchCountryNumAdapter;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/user/SearchStateNumActivity;->f:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/ui/adapter/SearchCountryNumAdapter;->a(Ljava/util/List;)V

    .line 197
    new-instance v0, Lcom/mh/movie/core/mvp/ui/adapter/SearchCountryNumAdapter;

    invoke-direct {v0, p0}, Lcom/mh/movie/core/mvp/ui/adapter/SearchCountryNumAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/user/SearchStateNumActivity;->i:Lcom/mh/movie/core/mvp/ui/adapter/SearchCountryNumAdapter;

    .line 198
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/user/SearchStateNumActivity;->i:Lcom/mh/movie/core/mvp/ui/adapter/SearchCountryNumAdapter;

    invoke-virtual {v0, p0}, Lcom/mh/movie/core/mvp/ui/adapter/SearchCountryNumAdapter;->setOnItemClickListener(Lcom/mh/movie/core/mvp/ui/adapter/SearchCountryNumAdapter$a;)V

    .line 199
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/user/SearchStateNumActivity;->b:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/user/SearchStateNumActivity;->i:Lcom/mh/movie/core/mvp/ui/adapter/SearchCountryNumAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 200
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/user/SearchStateNumActivity;->b:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 203
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 204
    invoke-virtual {v0, v2}, Landroid/support/v7/widget/LinearLayoutManager;->setOrientation(I)V

    .line 205
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/user/SearchStateNumActivity;->b:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 207
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/user/SearchStateNumActivity;->sidrbar:Lcom/mh/movie/core/mvp/ui/widget/SideBar;

    new-instance v1, Lcom/mh/movie/core/mvp/ui/activity/user/SearchStateNumActivity$4;

    invoke-direct {v1, p0}, Lcom/mh/movie/core/mvp/ui/activity/user/SearchStateNumActivity$4;-><init>(Lcom/mh/movie/core/mvp/ui/activity/user/SearchStateNumActivity;)V

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/ui/widget/SideBar;->setOnTouchingLetterChangedListener(Lcom/mh/movie/core/mvp/ui/widget/SideBar$a;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .line 228
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/user/SearchStateNumActivity;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 229
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/user/SearchStateNumActivity;->g:Ljava/util/List;

    invoke-static {p1}, Lcom/mh/movie/core/mvp/ui/utils/XMLUtils;->searchCountryByName(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 230
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/user/SearchStateNumActivity;->i:Lcom/mh/movie/core/mvp/ui/adapter/SearchCountryNumAdapter;

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/user/SearchStateNumActivity;->g:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/mh/movie/core/mvp/ui/adapter/SearchCountryNumAdapter;->a(Ljava/util/List;)V

    return-void
.end method

.method final synthetic a(Ljava/lang/Void;)V
    .locals 2

    .line 108
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/user/SearchStateNumActivity;->etSeatch:Landroid/widget/EditText;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 109
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/user/SearchStateNumActivity;->etSeatch:Landroid/widget/EditText;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 110
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/user/SearchStateNumActivity;->etSeatch:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    .line 112
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/user/SearchStateNumActivity;->flSearch:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    .line 113
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/user/SearchStateNumActivity;->flSearch:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setFocusableInTouchMode(Z)V

    .line 114
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/user/SearchStateNumActivity;->etSeatch:Landroid/widget/EditText;

    invoke-static {p0, p1}, Lcom/jess/arms/c/e;->b(Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method

.method public b()V
    .locals 7

    .line 236
    invoke-static {p0}, Lcom/mh/movie/core/mvp/ui/utils/XMLUtils;->getCountryGroup(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 239
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 241
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/dom4j/Node;

    const-string v4, "@sort"

    .line 242
    invoke-interface {v3, v4}, Lorg/dom4j/Node;->valueOf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 243
    iget-object v5, p0, Lcom/mh/movie/core/mvp/ui/activity/user/SearchStateNumActivity;->e:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    iget-object v5, p0, Lcom/mh/movie/core/mvp/ui/activity/user/SearchStateNumActivity;->c:Ljava/util/Map;

    iget-object v6, p0, Lcom/mh/movie/core/mvp/ui/activity/user/SearchStateNumActivity;->f:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    iget-object v5, p0, Lcom/mh/movie/core/mvp/ui/activity/user/SearchStateNumActivity;->d:Ljava/util/Map;

    iget-object v6, p0, Lcom/mh/movie/core/mvp/ui/activity/user/SearchStateNumActivity;->f:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, ".//country"

    .line 247
    invoke-interface {v3, v4}, Lorg/dom4j/Node;->selectNodes(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    .line 248
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 249
    iget-object v5, p0, Lcom/mh/movie/core/mvp/ui/activity/user/SearchStateNumActivity;->f:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/dom4j/Node;

    invoke-interface {v6}, Lorg/dom4j/Node;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    .line 270
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "country"

    .line 271
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 p1, -0x1

    .line 272
    invoke-virtual {p0, p1, v0}, Lcom/mh/movie/core/mvp/ui/activity/user/SearchStateNumActivity;->setResult(ILandroid/content/Intent;)V

    .line 273
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/user/SearchStateNumActivity;->finish()V

    return-void
.end method

.method final synthetic b(Ljava/lang/Void;)V
    .locals 1

    .line 101
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/user/SearchStateNumActivity;->etSeatch:Landroid/widget/EditText;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    .line 279
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/user/SearchStateNumActivity;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 280
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/user/SearchStateNumActivity;->sidrbar:Lcom/mh/movie/core/mvp/ui/widget/SideBar;

    invoke-virtual {v0, p1}, Lcom/mh/movie/core/mvp/ui/widget/SideBar;->setChoose(I)V

    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .line 287
    invoke-static {p0}, Lcom/jess/arms/c/e;->e(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 288
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/user/SearchStateNumActivity;->etSeatch:Landroid/widget/EditText;

    invoke-static {p0, v0}, Lcom/jess/arms/c/e;->a(Landroid/content/Context;Landroid/view/View;)V

    .line 289
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/user/SearchStateNumActivity;->etSeatch:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 292
    :cond_0
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onBackPressed()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 81
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 82
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/user/SearchStateNumActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/mh/movie/core/R$color;->transparent:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-static {p0, p1}, Lcom/mh/movie/core/mvp/ui/utils/UIUtils;->setColorForTopBar(Landroid/app/Activity;I)V

    .line 83
    sget p1, Lcom/mh/movie/core/R$layout;->activity_search_state_num:I

    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/user/SearchStateNumActivity;->setContentView(I)V

    .line 84
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Activity;)Lbutterknife/Unbinder;

    .line 85
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/user/SearchStateNumActivity;->topbar:Lcom/mh/movie/core/mvp/ui/widget/Topbar;

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/mh/movie/core/mvp/ui/utils/UIUtils;->initTopbar(Landroid/content/Context;Landroid/view/View;Z)V

    .line 87
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/activity/user/SearchStateNumActivity;->c()V

    .line 88
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/user/SearchStateNumActivity;->a()V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 221
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onDestroy()V

    .line 222
    invoke-static {}, Lcom/mh/movie/core/mvp/ui/utils/XMLUtils;->releaseRootElement()V

    return-void
.end method
