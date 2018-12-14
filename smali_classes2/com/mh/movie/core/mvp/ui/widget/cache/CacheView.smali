.class public Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;
.super Landroid/widget/LinearLayout;
.source "CacheView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView$a;,
        Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView$c;,
        Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView$b;
    }
.end annotation


# instance fields
.field private A:Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView$a;

.field private B:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;",
            ">;"
        }
    .end annotation
.end field

.field private C:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;",
            ">;"
        }
    .end annotation
.end field

.field private D:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;",
            ">;"
        }
    .end annotation
.end field

.field a:Landroid/support/v7/widget/RecyclerView;

.field b:Landroid/support/v7/widget/RecyclerView;

.field c:Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;

.field public d:Lcom/mh/movie/core/mvp/ui/holder/d$a;

.field private e:Landroid/view/View;

.field private f:Lcom/mh/movie/core/mvp/ui/adapter/c;

.field private g:Lcom/mh/movie/core/mvp/ui/adapter/c;

.field private h:Lcom/mh/movie/core/mvp/ui/widget/dialog/ClarityDialog;

.field private i:Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoDownloadBean;

.field private j:Landroid/widget/LinearLayout;

.field private k:Landroid/widget/LinearLayout;

.field private l:Landroid/widget/TextView;

.field private m:Landroid/widget/TextView;

.field private n:Landroid/widget/TextView;

.field private o:Landroid/widget/TextView;

.field private p:Landroid/widget/ImageView;

.field private q:Lcom/mh/movie/core/mvp/ui/widget/badge/a;

.field private r:I

.field private s:Landroid/graphics/drawable/Drawable;

.field private t:Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView$b;

.field private u:Z

.field private v:I

.field private w:Z

.field private x:I

.field private y:I

.field private z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 111
    invoke-direct {p0, p1, v0}, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 115
    invoke-direct {p0, p1, p2, v0}, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 119
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    .line 77
    iput p1, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->r:I

    .line 78
    new-instance p2, Landroid/graphics/drawable/ColorDrawable;

    const/4 p3, 0x0

    invoke-direct {p2, p3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object p2, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->s:Landroid/graphics/drawable/Drawable;

    .line 86
    iput-boolean p1, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->u:Z

    .line 91
    iput-boolean p3, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->w:Z

    .line 93
    iput p3, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->x:I

    .line 95
    iput p3, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->y:I

    .line 97
    iput p3, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->z:I

    .line 103
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->B:Ljava/util/Map;

    .line 105
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->C:Ljava/util/Map;

    .line 108
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->D:Ljava/util/Map;

    .line 420
    new-instance p1, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView$9;

    invoke-direct {p1, p0}, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView$9;-><init>(Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;)V

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->d:Lcom/mh/movie/core/mvp/ui/holder/d$a;

    return-void
.end method

.method static synthetic a(Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;)I
    .locals 0

    .line 58
    iget p0, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->r:I

    return p0
.end method

.method static synthetic a(Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;I)I
    .locals 0

    .line 58
    iput p1, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->r:I

    return p1
.end method

.method private a(Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView$c;)V
    .locals 2

    .line 1174
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView$4;

    invoke-direct {v1, p0, p1}, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView$4;-><init>(Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView$c;)V

    invoke-static {v0, v1}, Lcom/mh/movie/core/mvp/ui/utils/PermissionUtils;->externalStorage(Landroid/content/Context;Lcom/mh/movie/core/mvp/ui/utils/PermissionUtils$RequestPermission;)V

    return-void
.end method

.method static synthetic a(Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView$c;)V
    .locals 0

    .line 58
    invoke-direct {p0, p1}, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->a(Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView$c;)V

    return-void
.end method

.method static synthetic b(Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;)Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView$b;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->t:Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView$b;

    return-object p0
.end method

.method static synthetic c(Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;)Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoDownloadBean;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->i:Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoDownloadBean;

    return-object p0
.end method

.method static synthetic d(Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;)I
    .locals 0

    .line 58
    iget p0, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->z:I

    return p0
.end method

.method static synthetic e(Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;)Ljava/util/Map;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->C:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic f(Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;)I
    .locals 0

    .line 58
    iget p0, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->x:I

    return p0
.end method

.method static synthetic g(Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;)V
    .locals 0

    .line 58
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->j()V

    return-void
.end method

.method static synthetic h(Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;)Lcom/mh/movie/core/mvp/ui/adapter/c;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->f:Lcom/mh/movie/core/mvp/ui/adapter/c;

    return-object p0
.end method

.method private i()V
    .locals 5

    .line 168
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/mh/movie/core/R$layout;->popup_window_cache:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->e:Landroid/view/View;

    .line 169
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->e:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->addView(Landroid/view/View;)V

    .line 170
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->e:Landroid/view/View;

    sget v1, Lcom/mh/movie/core/R$id;->ll_select_all:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->j:Landroid/widget/LinearLayout;

    .line 171
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->e:Landroid/view/View;

    sget v1, Lcom/mh/movie/core/R$id;->ll_go_down:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->k:Landroid/widget/LinearLayout;

    .line 173
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 174
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->k:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 176
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->e:Landroid/view/View;

    sget v1, Lcom/mh/movie/core/R$id;->tv_down_count:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 178
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->e:Landroid/view/View;

    sget v1, Lcom/mh/movie/core/R$id;->tv_cache_size:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->m:Landroid/widget/TextView;

    .line 179
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->f()V

    .line 180
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->e:Landroid/view/View;

    sget v1, Lcom/mh/movie/core/R$id;->tv_down_count:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->n:Landroid/widget/TextView;

    .line 181
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->e()V

    .line 182
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->e:Landroid/view/View;

    sget v1, Lcom/mh/movie/core/R$id;->img_badge:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->p:Landroid/widget/ImageView;

    .line 183
    new-instance v0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;

    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->p:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->a(Landroid/view/View;)Lcom/mh/movie/core/mvp/ui/widget/badge/a;

    move-result-object v0

    const/4 v1, 0x1

    const/high16 v2, 0x40c00000    # 6.0f

    invoke-interface {v0, v2, v1}, Lcom/mh/movie/core/mvp/ui/widget/badge/a;->a(FZ)Lcom/mh/movie/core/mvp/ui/widget/badge/a;

    move-result-object v0

    const v2, 0x800035

    invoke-interface {v0, v2}, Lcom/mh/movie/core/mvp/ui/widget/badge/a;->b(I)Lcom/mh/movie/core/mvp/ui/widget/badge/a;

    move-result-object v0

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->q:Lcom/mh/movie/core/mvp/ui/widget/badge/a;

    .line 184
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->e:Landroid/view/View;

    sget v2, Lcom/mh/movie/core/R$id;->tv_show_cache:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->o:Landroid/widget/TextView;

    .line 185
    invoke-static {}, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->a()Lcom/mh/movie/core/mvp/ui/widget/cache/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->w()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 186
    invoke-static {}, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->a()Lcom/mh/movie/core/mvp/ui/widget/cache/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->w()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->q:Lcom/mh/movie/core/mvp/ui/widget/badge/a;

    invoke-static {}, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->a()Lcom/mh/movie/core/mvp/ui/widget/cache/g;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->w()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {v0, v3}, Lcom/mh/movie/core/mvp/ui/widget/badge/a;->a(I)Lcom/mh/movie/core/mvp/ui/widget/badge/a;

    goto :goto_0

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->q:Lcom/mh/movie/core/mvp/ui/widget/badge/a;

    invoke-interface {v0, v2}, Lcom/mh/movie/core/mvp/ui/widget/badge/a;->a(I)Lcom/mh/movie/core/mvp/ui/widget/badge/a;

    .line 191
    :goto_0
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->e:Landroid/view/View;

    sget v3, Lcom/mh/movie/core/R$id;->recycler_cache_pager:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->b:Landroid/support/v7/widget/RecyclerView;

    .line 192
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->a()V

    .line 193
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->b:Landroid/support/v7/widget/RecyclerView;

    new-instance v3, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4, v2, v2}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 195
    new-instance v0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView$1;

    invoke-direct {v0, p0}, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView$1;-><init>(Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;)V

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->g:Lcom/mh/movie/core/mvp/ui/adapter/c;

    .line 224
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->b:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->g:Lcom/mh/movie/core/mvp/ui/adapter/c;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 226
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->e:Landroid/view/View;

    sget v2, Lcom/mh/movie/core/R$id;->recycler_cache_part:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->a:Landroid/support/v7/widget/RecyclerView;

    .line 227
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->i:Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoDownloadBean;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoDownloadBean;->getType()I

    move-result v0

    if-eq v0, v1, :cond_2

    const/4 v2, 0x4

    if-eq v0, v2, :cond_1

    .line 235
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->a:Landroid/support/v7/widget/RecyclerView;

    new-instance v2, Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x5

    invoke-direct {v2, v3, v4}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    goto :goto_1

    .line 232
    :cond_1
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->a:Landroid/support/v7/widget/RecyclerView;

    new-instance v2, Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    goto :goto_1

    .line 229
    :cond_2
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->a:Landroid/support/v7/widget/RecyclerView;

    new-instance v2, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 240
    :goto_1
    new-instance v0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView$5;

    invoke-direct {v0, p0, v1}, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView$5;-><init>(Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;Z)V

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->f:Lcom/mh/movie/core/mvp/ui/adapter/c;

    .line 316
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->f:Lcom/mh/movie/core/mvp/ui/adapter/c;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 319
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->e:Landroid/view/View;

    sget v2, Lcom/mh/movie/core/R$id;->tv_cache_type:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->l:Landroid/widget/TextView;

    const/16 v0, 0x9

    .line 320
    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->a(I)Lcom/mh/movie/core/mvp/model/db/TableCommodity;

    move-result-object v0

    iget v0, v0, Lcom/mh/movie/core/mvp/model/db/TableCommodity;->hasFlag:I

    if-eq v0, v1, :cond_3

    iget v0, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->x:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_3

    .line 321
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->l:Landroid/widget/TextView;

    iget v2, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->x:I

    sub-int/2addr v2, v1

    invoke-static {v2}, Lcom/mh/movie/core/mvp/ui/utils/CommonTools;->getClarityText(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 323
    :cond_3
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->l:Landroid/widget/TextView;

    iget v1, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->x:I

    invoke-static {v1}, Lcom/mh/movie/core/mvp/ui/utils/CommonTools;->getClarityText(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 324
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->l:Landroid/widget/TextView;

    new-instance v1, Lcom/mh/movie/core/mvp/ui/widget/cache/a;

    invoke-direct {v1, p0}, Lcom/mh/movie/core/mvp/ui/widget/cache/a;-><init>(Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 337
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->d()V

    .line 339
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->e:Landroid/view/View;

    sget v1, Lcom/mh/movie/core/R$id;->iv_part_close:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/mh/movie/core/mvp/ui/widget/cache/b;

    invoke-direct {v1, p0}, Lcom/mh/movie/core/mvp/ui/widget/cache/b;-><init>(Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 344
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView$6;

    invoke-direct {v1, p0}, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView$6;-><init>(Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private j()V
    .locals 2

    .line 1112
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->c:Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;

    const-string v1, "\u6e29\u99a8\u63d0\u793a"

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->a(Ljava/lang/String;)V

    .line 1113
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->c:Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;

    const-string v1, "\u5b58\u50a8\u6743\u9650\u7f3a\u5931\uff0c\u65e0\u6cd5\u7f13\u5b58\u89c6\u9891"

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->b(Ljava/lang/String;)V

    .line 1114
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->c:Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;

    const-string v1, "\u7acb\u5373\u8bbe\u7f6e"

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->d(Ljava/lang/String;)V

    .line 1115
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->c:Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;

    const-string v1, "\u4ee5\u540e\u518d\u8bf4"

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->e(Ljava/lang/String;)V

    .line 1116
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->c:Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;

    new-instance v1, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView$2;

    invoke-direct {v1, p0}, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView$2;-><init>(Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;)V

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->a(Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog$a;)V

    .line 1129
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->c:Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->show()V

    return-void
.end method


# virtual methods
.method public a(I)Lcom/mh/movie/core/mvp/model/db/TableCommodity;
    .locals 4

    .line 355
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/language/q;

    const/4 v1, 0x0

    new-array v2, v1, [Lcom/raizlabs/android/dbflow/sql/language/a/a;

    invoke-direct {v0, v2}, Lcom/raizlabs/android/dbflow/sql/language/q;-><init>([Lcom/raizlabs/android/dbflow/sql/language/a/a;)V

    const-class v2, Lcom/mh/movie/core/mvp/model/db/TableCommodity;

    invoke-virtual {v0, v2}, Lcom/raizlabs/android/dbflow/sql/language/q;->a(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/sql/language/h;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/raizlabs/android/dbflow/sql/language/o;

    sget-object v3, Lcom/mh/movie/core/mvp/model/db/TableCommodity_Table;->authId:Lcom/raizlabs/android/dbflow/sql/language/a/b;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v3, p1}, Lcom/raizlabs/android/dbflow/sql/language/a/b;->a(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/language/m;

    move-result-object p1

    aput-object p1, v2, v1

    invoke-virtual {v0, v2}, Lcom/raizlabs/android/dbflow/sql/language/h;->a([Lcom/raizlabs/android/dbflow/sql/language/o;)Lcom/raizlabs/android/dbflow/sql/language/s;

    move-result-object p1

    invoke-virtual {p1}, Lcom/raizlabs/android/dbflow/sql/language/s;->e()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mh/movie/core/mvp/model/db/TableCommodity;

    return-object p1
.end method

.method public a(Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;Ljava/lang/String;J)Lcom/mh/movie/core/mvp/model/entity/DownloadData;
    .locals 10

    .line 1051
    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;->getFormatExtra()Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean$FormatExtraBean;

    move-result-object v0

    iget v1, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->x:I

    invoke-static {v0, v1}, Lcom/mh/movie/core/mvp/ui/utils/CommonTools;->autoGetExtraBean(Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean$FormatExtraBean;I)Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean$FormatExtraBean$ExtraBean;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1054
    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean$FormatExtraBean$ExtraBean;->getSize()I

    move-result v0

    int-to-long v0, v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x1

    :goto_0
    move-wide v6, v0

    .line 1057
    new-instance v0, Lcom/mh/movie/core/mvp/model/entity/DownloadData;

    iget-object v3, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->i:Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoDownloadBean;

    move-object v2, v0

    move-object v4, p1

    move-object v5, p2

    move-wide v8, p3

    invoke-direct/range {v2 .. v9}, Lcom/mh/movie/core/mvp/model/entity/DownloadData;-><init>(Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoDownloadBean;Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;Ljava/lang/String;JJ)V

    return-object v0
.end method

.method public a()V
    .locals 4

    .line 377
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->j:Landroid/widget/LinearLayout;

    invoke-static {v0}, Lcom/jakewharton/rxbinding/view/b;->a(Landroid/view/View;)Lrx/a;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1

    .line 378
    invoke-virtual {v0, v2, v3, v1}, Lrx/a;->a(JLjava/util/concurrent/TimeUnit;)Lrx/a;

    move-result-object v0

    new-instance v1, Lcom/mh/movie/core/mvp/ui/widget/cache/c;

    invoke-direct {v1, p0}, Lcom/mh/movie/core/mvp/ui/widget/cache/c;-><init>(Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;)V

    .line 379
    invoke-virtual {v0, v1}, Lrx/a;->a(Lrx/b/b;)Lrx/f;

    .line 395
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->k:Landroid/widget/LinearLayout;

    invoke-static {v0}, Lcom/jakewharton/rxbinding/view/b;->a(Landroid/view/View;)Lrx/a;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 396
    invoke-virtual {v0, v2, v3, v1}, Lrx/a;->a(JLjava/util/concurrent/TimeUnit;)Lrx/a;

    move-result-object v0

    new-instance v1, Lcom/mh/movie/core/mvp/ui/widget/cache/d;

    invoke-direct {v1, p0}, Lcom/mh/movie/core/mvp/ui/widget/cache/d;-><init>(Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;)V

    .line 397
    invoke-virtual {v0, v1}, Lrx/a;->a(Lrx/b/b;)Lrx/f;

    return-void
.end method

.method public a(ILjava/lang/String;)V
    .locals 1

    .line 359
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->h:Lcom/mh/movie/core/mvp/ui/widget/dialog/ClarityDialog;

    if-eqz v0, :cond_0

    .line 360
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->h:Lcom/mh/movie/core/mvp/ui/widget/dialog/ClarityDialog;

    invoke-virtual {v0, p1}, Lcom/mh/movie/core/mvp/ui/widget/dialog/ClarityDialog;->a(I)V

    .line 361
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->h:Lcom/mh/movie/core/mvp/ui/widget/dialog/ClarityDialog;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/widget/dialog/ClarityDialog;->dismiss()V

    .line 364
    :cond_0
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->l:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 365
    iput p1, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->x:I

    .line 367
    sget-object p1, Lcom/mh/movie/core/mvp/ui/b;->R:Lcom/mh/movie/core/mvp/model/entity/SettingConfig;

    iget p2, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->x:I

    invoke-virtual {p1, p2}, Lcom/mh/movie/core/mvp/model/entity/SettingConfig;->setDownloadDefaultClarity(I)V

    .line 368
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/mh/movie/core/mvp/ui/b;->a(Landroid/content/Context;)V

    .line 369
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->f:Lcom/mh/movie/core/mvp/ui/adapter/c;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/ui/adapter/c;->notifyDataSetChanged()V

    .line 370
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->f()V

    return-void
.end method

.method public a(Landroid/content/Context;)V
    .locals 4

    .line 1138
    new-instance v0, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;

    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x4

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;-><init>(Landroid/content/Context;II)V

    const-string v1, "\u63d0\u9192"

    .line 1139
    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->a(Ljava/lang/String;)V

    const-string v1, "\u4eca\u65e5\u7f13\u5b58\u5269\u4f59\u6b21\u6570\u4e0d\u8db3\uff0c\u8bf7\u524d\u5f80\u5151\u6362\u4e2d\u5fc3\u5151\u6362\uff1f"

    .line 1140
    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->b(Ljava/lang/String;)V

    .line 1141
    new-instance v1, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView$3;

    invoke-direct {v1, p0, v0, p1}, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView$3;-><init>(Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->a(Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog$a;)V

    .line 1153
    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->show()V

    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 7

    .line 1066
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->f:Lcom/mh/movie/core/mvp/ui/adapter/c;

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 1067
    :goto_0
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->f:Lcom/mh/movie/core/mvp/ui/adapter/c;

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/ui/adapter/c;->e()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1068
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->f:Lcom/mh/movie/core/mvp/ui/adapter/c;

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/ui/adapter/c;->e()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;

    .line 1069
    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;->getId()I

    move-result v2

    int-to-long v2, v2

    const-string v4, "videoId"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    const/4 p1, 0x2

    .line 1070
    invoke-virtual {v1, p1}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;->setVideoState(I)V

    .line 1071
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->C:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1072
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->f:Lcom/mh/movie/core/mvp/ui/adapter/c;

    invoke-virtual {p1, v0}, Lcom/mh/movie/core/mvp/ui/adapter/c;->notifyItemChanged(I)V

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1076
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->d()V

    :cond_2
    return-void
.end method

.method final synthetic a(Landroid/view/View;)V
    .locals 0

    const/16 p1, 0x8

    .line 340
    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->setVisibility(I)V

    return-void
.end method

.method public a(Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoDownloadBean;I)V
    .locals 1

    .line 151
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->i:Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoDownloadBean;

    .line 152
    iput p2, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->z:I

    .line 153
    new-instance p1, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;

    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->getContext()Landroid/content/Context;

    move-result-object p2

    const/4 v0, 0x1

    invoke-direct {p1, p2, v0}, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->c:Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;

    .line 154
    invoke-static {}, Lcom/mh/movie/core/mvp/ui/b;->a()Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;->getCanCacheNum()I

    move-result p1

    const/4 p2, -0x1

    if-eq p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->u:Z

    .line 155
    invoke-static {}, Lcom/mh/movie/core/mvp/ui/b;->a()Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;->getRestCacheNum()I

    move-result p1

    iput p1, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->v:I

    .line 156
    sget-object p1, Lcom/mh/movie/core/mvp/ui/b;->R:Lcom/mh/movie/core/mvp/model/entity/SettingConfig;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/SettingConfig;->getDownloadDefaultClarity()I

    move-result p1

    iput p1, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->x:I

    .line 157
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->i()V

    return-void
.end method

.method public a(Lcom/mh/movie/core/mvp/model/entity/response/DownUrlResponse;)V
    .locals 0

    .line 766
    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->b(Lcom/mh/movie/core/mvp/model/entity/response/DownUrlResponse;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 7

    .line 1086
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->C:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    .line 1087
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->f:Lcom/mh/movie/core/mvp/ui/adapter/c;

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 1088
    :goto_0
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->f:Lcom/mh/movie/core/mvp/ui/adapter/c;

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/ui/adapter/c;->e()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 1089
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->f:Lcom/mh/movie/core/mvp/ui/adapter/c;

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/ui/adapter/c;->e()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;

    .line 1090
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->i:Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoDownloadBean;

    invoke-virtual {v3}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoDownloadBean;->getVideoInfoId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1091
    invoke-virtual {v1, p1}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;->setVideoState(I)V

    .line 1093
    invoke-static {}, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->a()Lcom/mh/movie/core/mvp/ui/widget/cache/g;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->c(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    .line 1094
    invoke-virtual {v1, v2}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;->setVideoState(I)V

    .line 1095
    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->C:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1098
    :cond_0
    invoke-static {}, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->a()Lcom/mh/movie/core/mvp/ui/widget/cache/g;

    move-result-object v2

    iget-object v3, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->i:Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoDownloadBean;

    invoke-virtual {v3}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoDownloadBean;->getVideoInfoId()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;->getId()I

    move-result v5

    int-to-long v5, v5

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->a(JJ)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x2

    .line 1099
    invoke-virtual {v1, v2}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;->setVideoState(I)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1102
    :cond_2
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->f:Lcom/mh/movie/core/mvp/ui/adapter/c;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/ui/adapter/c;->notifyDataSetChanged()V

    .line 1103
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->d()V

    .line 1105
    :cond_3
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->f()V

    return-void
.end method

.method final synthetic a(Ljava/lang/Void;)V
    .locals 2

    .line 398
    iget-boolean p1, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->w:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 399
    invoke-virtual {p0, p1, v0, v1}, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->a(ZILcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;)V

    goto :goto_0

    .line 401
    :cond_0
    new-instance p1, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView$8;

    invoke-direct {p1, p0}, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView$8;-><init>(Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;)V

    invoke-direct {p0, p1}, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->a(Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView$c;)V

    :goto_0
    return-void
.end method

.method public a(Ljava/util/List;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoPageListBean;",
            ">;",
            "Ljava/util/List<",
            "Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 684
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ge v0, v1, :cond_1

    .line 685
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoPageListBean;

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoPageListBean;->getIsShow()I

    move-result v1

    if-ne v1, v2, :cond_0

    .line 686
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoPageListBean;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoPageListBean;->getCurrentPage()I

    move-result v0

    iput v0, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->r:I

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 692
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->g:Lcom/mh/movie/core/mvp/ui/adapter/c;

    invoke-virtual {v0, p1}, Lcom/mh/movie/core/mvp/ui/adapter/c;->a(Ljava/util/List;)V

    .line 693
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->b:Landroid/support/v7/widget/RecyclerView;

    iget v0, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->r:I

    sub-int/2addr v0, v2

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->scrollToPosition(I)V

    .line 694
    invoke-virtual {p0, p2}, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->setCacheList(Ljava/util/List;)V

    return-void
.end method

.method public a(ZILcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;)V
    .locals 1

    .line 736
    iget p2, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->y:I

    if-lez p2, :cond_0

    .line 737
    invoke-virtual {p0, p1, p3}, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->a(ZLcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;)V

    return-void

    .line 741
    :cond_0
    invoke-static {}, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->a()Lcom/mh/movie/core/mvp/ui/widget/cache/g;

    move-result-object p2

    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->c()I

    move-result p2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    sget-object p2, Lcom/mh/movie/core/mvp/ui/b;->R:Lcom/mh/movie/core/mvp/model/entity/SettingConfig;

    .line 742
    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/SettingConfig;->isDownloadWithoutWifi()Z

    move-result p2

    if-nez p2, :cond_1

    .line 744
    invoke-virtual {p0, p1, p3}, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->b(ZLcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;)V

    goto :goto_0

    .line 746
    :cond_1
    invoke-static {}, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->a()Lcom/mh/movie/core/mvp/ui/widget/cache/g;

    move-result-object p2

    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->c()I

    move-result p2

    if-eq p2, v0, :cond_2

    sget-object p2, Lcom/mh/movie/core/mvp/ui/b;->R:Lcom/mh/movie/core/mvp/model/entity/SettingConfig;

    .line 747
    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/SettingConfig;->isDownloadWithoutWifi()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 749
    invoke-virtual {p0, p1, p3}, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->c(ZLcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;)V

    goto :goto_0

    .line 752
    :cond_2
    invoke-virtual {p0, p1, p3}, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->a(ZLcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;)V

    :goto_0
    return-void
.end method

.method public a(ZLcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;)V
    .locals 4

    .line 777
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->D:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 778
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_0

    .line 780
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->B:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;

    .line 781
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->D:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 782
    new-instance v1, Lcom/mh/movie/core/mvp/model/entity/request/DownUrlRequest;

    invoke-direct {v1}, Lcom/mh/movie/core/mvp/model/entity/request/DownUrlRequest;-><init>()V

    .line 783
    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;->getFormatExtra()Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean$FormatExtraBean;

    move-result-object v2

    iget v3, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->x:I

    invoke-static {v2, v3}, Lcom/mh/movie/core/mvp/ui/utils/CommonTools;->autoGetFormatId(Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean$FormatExtraBean;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mh/movie/core/mvp/model/entity/request/DownUrlRequest;->setFormat(Ljava/lang/String;)V

    .line 784
    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;->getId()I

    move-result p2

    invoke-virtual {v1, p2}, Lcom/mh/movie/core/mvp/model/entity/request/DownUrlRequest;->setVideoId(I)V

    .line 785
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 788
    :cond_0
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->D:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 789
    new-instance p1, Lcom/mh/movie/core/mvp/model/entity/request/DownUrlRequest;

    invoke-direct {p1}, Lcom/mh/movie/core/mvp/model/entity/request/DownUrlRequest;-><init>()V

    .line 790
    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;->getFormatExtra()Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean$FormatExtraBean;

    move-result-object v1

    iget v2, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->x:I

    invoke-static {v1, v2}, Lcom/mh/movie/core/mvp/ui/utils/CommonTools;->autoGetFormatId(Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean$FormatExtraBean;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/mh/movie/core/mvp/model/entity/request/DownUrlRequest;->setFormat(Ljava/lang/String;)V

    .line 791
    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;->getId()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/mh/movie/core/mvp/model/entity/request/DownUrlRequest;->setVideoId(I)V

    .line 792
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 795
    :cond_1
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->t:Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView$b;

    if-eqz p1, :cond_2

    .line 796
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->t:Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView$b;

    invoke-interface {p1, v0}, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView$b;->a(Ljava/util/List;)V

    :cond_2
    return-void
.end method

.method public a(Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;)Z
    .locals 8

    .line 1014
    invoke-static {}, Lcom/mh/movie/core/mvp/ui/utils/AppInfo;->getFreeDiskStorage()D

    move-result-wide v0

    .line 1017
    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;->getFormatExtra()Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean$FormatExtraBean;

    move-result-object p1

    iget v2, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->x:I

    invoke-static {p1, v2}, Lcom/mh/movie/core/mvp/ui/utils/CommonTools;->autoGetExtraBean(Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean$FormatExtraBean;I)Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean$FormatExtraBean$ExtraBean;

    move-result-object p1

    const-wide/16 v2, 0x0

    if-eqz p1, :cond_0

    .line 1019
    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean$FormatExtraBean$ExtraBean;->getSize()I

    move-result p1

    int-to-long v4, p1

    add-long v6, v4, v2

    move-wide v2, v6

    .line 1022
    :cond_0
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->B:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;

    .line 1023
    invoke-virtual {v4}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;->getFormatExtra()Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean$FormatExtraBean;

    move-result-object v4

    iget v5, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->x:I

    invoke-static {v4, v5}, Lcom/mh/movie/core/mvp/ui/utils/CommonTools;->autoGetExtraBean(Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean$FormatExtraBean;I)Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean$FormatExtraBean$ExtraBean;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 1025
    invoke-virtual {v4}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean$FormatExtraBean$ExtraBean;->getSize()I

    move-result v4

    int-to-long v4, v4

    add-long v6, v2, v4

    move-wide v2, v6

    goto :goto_0

    .line 1028
    :cond_2
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->C:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;

    .line 1029
    invoke-virtual {v4}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;->getFormatExtra()Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean$FormatExtraBean;

    move-result-object v4

    iget v5, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->x:I

    invoke-static {v4, v5}, Lcom/mh/movie/core/mvp/ui/utils/CommonTools;->autoGetExtraBean(Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean$FormatExtraBean;I)Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean$FormatExtraBean$ExtraBean;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 1031
    invoke-virtual {v4}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean$FormatExtraBean$ExtraBean;->getSize()I

    move-result v4

    int-to-long v4, v4

    add-long v6, v2, v4

    move-wide v2, v6

    goto :goto_1

    :cond_4
    const-wide/16 v4, 0x400

    mul-long v2, v2, v4

    long-to-double v2, v2

    sub-double/2addr v0, v2

    const-wide/high16 v2, 0x41d0000000000000L    # 1.073741824E9

    cmpg-double p1, v0, v2

    if-gtz p1, :cond_5

    const/4 p1, 0x1

    return p1

    :cond_5
    const/4 p1, 0x0

    return p1
.end method

.method public b()V
    .locals 9

    .line 574
    iget-boolean v0, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->w:Z

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 576
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->B:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    move v3, v0

    const/4 v0, 0x0

    .line 577
    :goto_0
    iget-object v4, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->f:Lcom/mh/movie/core/mvp/ui/adapter/c;

    invoke-virtual {v4}, Lcom/mh/movie/core/mvp/ui/adapter/c;->e()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_2

    .line 578
    iget-object v4, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->f:Lcom/mh/movie/core/mvp/ui/adapter/c;

    invoke-virtual {v4}, Lcom/mh/movie/core/mvp/ui/adapter/c;->e()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;

    .line 579
    invoke-virtual {v4}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;->getVideoState()I

    move-result v5

    if-ne v5, v1, :cond_0

    .line 580
    invoke-virtual {v4, v2}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;->setVideoState(I)V

    add-int/lit8 v3, v3, -0x1

    :cond_0
    if-gtz v3, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 587
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->B:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 589
    iput-boolean v2, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->w:Z

    .line 591
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->c()V

    .line 592
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->f:Lcom/mh/movie/core/mvp/ui/adapter/c;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/adapter/c;->notifyDataSetChanged()V

    goto/16 :goto_6

    .line 596
    :cond_3
    iget-boolean v0, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->u:Z

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->v:I

    if-gtz v0, :cond_4

    .line 597
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->a(Landroid/content/Context;)V

    return-void

    .line 601
    :cond_4
    invoke-static {}, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->a()Lcom/mh/movie/core/mvp/ui/widget/cache/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->f()I

    move-result v0

    if-gtz v0, :cond_5

    .line 602
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u7f13\u5b58\u961f\u5217\u5df2\u6ee1,\u8bf7\u7f13\u5b58\u5b8c\u6210\u540e\u7ee7\u7eed\u6dfb\u52a0"

    invoke-static {v0, v1}, Lcom/mh/movie/core/mvp/ui/utils/T;->showShort(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void

    :cond_5
    const/4 v0, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 609
    :goto_2
    iget-object v6, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->f:Lcom/mh/movie/core/mvp/ui/adapter/c;

    invoke-virtual {v6}, Lcom/mh/movie/core/mvp/ui/adapter/c;->e()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v3, v6, :cond_c

    .line 611
    iget-object v6, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->f:Lcom/mh/movie/core/mvp/ui/adapter/c;

    invoke-virtual {v6}, Lcom/mh/movie/core/mvp/ui/adapter/c;->e()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;

    .line 612
    invoke-virtual {v6}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;->getVideoState()I

    move-result v7

    if-nez v7, :cond_b

    .line 615
    invoke-virtual {v6}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;->getTagDTO()Lcom/mh/movie/core/mvp/model/entity/TagDTOBean;

    move-result-object v7

    if-eqz v7, :cond_6

    .line 616
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "\u62b1\u6b49\uff0c\u70ed\u95e8\u5f71\u7247\u65e0\u6cd5\u4e0b\u8f7d\uff0c\u5df2\u4e3a\u60a8\u81ea\u52a8\u8fc7\u6ee4"

    invoke-static {v5, v6}, Lcom/mh/movie/core/mvp/ui/utils/T;->showShort(Landroid/content/Context;Ljava/lang/CharSequence;)V

    :goto_3
    const/4 v5, 0x0

    goto :goto_4

    .line 621
    :cond_6
    invoke-virtual {v6}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;->getFormatExtra()Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean$FormatExtraBean;

    move-result-object v7

    iget v8, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->x:I

    invoke-static {v7, v8}, Lcom/mh/movie/core/mvp/ui/utils/CommonTools;->autoGetExtraBean(Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean$FormatExtraBean;I)Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean$FormatExtraBean$ExtraBean;

    move-result-object v7

    if-nez v7, :cond_7

    .line 622
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "\u5206\u8fa8\u7387\u4e0d\u5b58\u5728\uff0c\u5df2\u4e3a\u60a8\u81ea\u52a8\u8fc7\u6ee4\uff0c\u8bf7\u91cd\u65b0\u9009\u62e9\u8be5\u89c6\u9891\u5206\u8fa8\u7387"

    invoke-static {v5, v6}, Lcom/mh/movie/core/mvp/ui/utils/T;->showShort(Landroid/content/Context;Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 628
    :cond_7
    iget-boolean v7, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->u:Z

    if-eqz v7, :cond_8

    iget v7, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->v:I

    iget-object v8, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->B:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->size()I

    move-result v8

    if-gt v7, v8, :cond_8

    goto :goto_5

    .line 633
    :cond_8
    invoke-virtual {p0, v6}, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->a(Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;)Z

    move-result v7

    if-eqz v7, :cond_9

    const/4 v2, 0x1

    goto :goto_5

    .line 639
    :cond_9
    invoke-static {}, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->a()Lcom/mh/movie/core/mvp/ui/widget/cache/g;

    move-result-object v7

    invoke-virtual {v7}, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->f()I

    move-result v7

    if-lt v4, v7, :cond_a

    goto :goto_5

    .line 643
    :cond_a
    iget-object v7, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->B:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 644
    invoke-virtual {v6, v1}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;->setVideoState(I)V

    add-int/lit8 v4, v4, 0x1

    :cond_b
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_c
    :goto_5
    if-lez v4, :cond_d

    .line 650
    iput-boolean v0, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->w:Z

    .line 651
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->c()V

    .line 652
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->f:Lcom/mh/movie/core/mvp/ui/adapter/c;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/adapter/c;->notifyDataSetChanged()V

    goto :goto_6

    :cond_d
    if-eqz v2, :cond_e

    .line 655
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u7a7a\u95f4\u7f13\u5b58\u4e0d\u8db3"

    invoke-static {v0, v1}, Lcom/mh/movie/core/mvp/ui/utils/T;->showShort(Landroid/content/Context;Ljava/lang/CharSequence;)V

    goto :goto_6

    :cond_e
    if-eqz v5, :cond_f

    .line 657
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u6ca1\u6709\u53ef\u9009\u9879"

    invoke-static {v0, v1}, Lcom/mh/movie/core/mvp/ui/utils/T;->showShort(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 660
    :cond_f
    :goto_6
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->f()V

    return-void
.end method

.method public b(I)V
    .locals 5

    .line 447
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->f:Lcom/mh/movie/core/mvp/ui/adapter/c;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/adapter/c;->e()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;

    .line 449
    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;->getTagDTO()Lcom/mh/movie/core/mvp/model/entity/TagDTOBean;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 450
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "\u62b1\u6b49\uff0c\u70ed\u95e8\u5f71\u7247\u65e0\u6cd5\u4e0b\u8f7d"

    invoke-static {p1, v0}, Lcom/mh/movie/core/mvp/ui/utils/T;->showShort(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void

    .line 454
    :cond_0
    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;->getVideoState()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 455
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "\u8be5\u89c6\u9891\u5df2\u7f13\u5b58\u5b8c\u6210"

    invoke-static {p1, v0}, Lcom/mh/movie/core/mvp/ui/utils/T;->showShort(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void

    .line 460
    :cond_1
    iget-boolean v1, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->w:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_9

    .line 461
    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;->getVideoState()I

    move-result v1

    if-ne v1, v2, :cond_2

    .line 462
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "\u8be5\u89c6\u9891\u5df2\u5728\u7f13\u5b58\u961f\u5217\u4e2d"

    invoke-static {p1, v0}, Lcom/mh/movie/core/mvp/ui/utils/T;->showShort(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void

    .line 465
    :cond_2
    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;->getVideoState()I

    move-result v1

    const/4 v2, 0x3

    if-nez v1, :cond_7

    .line 466
    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;->getFormatExtra()Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean$FormatExtraBean;

    move-result-object v1

    iget v3, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->x:I

    invoke-static {v1, v3}, Lcom/mh/movie/core/mvp/ui/utils/CommonTools;->autoGetExtraBean(Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean$FormatExtraBean;I)Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean$FormatExtraBean$ExtraBean;

    move-result-object v1

    if-nez v1, :cond_3

    .line 467
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "\u65e0\u5f53\u524d\u5206\u8fa8\u7387\uff0c\u8bf7\u5207\u6362\u5206\u8fa8\u7387"

    invoke-static {p1, v0}, Lcom/mh/movie/core/mvp/ui/utils/T;->showShort(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void

    .line 471
    :cond_3
    invoke-static {}, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->a()Lcom/mh/movie/core/mvp/ui/widget/cache/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->f()I

    move-result v1

    iget-object v3, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->B:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    sub-int/2addr v1, v3

    if-gtz v1, :cond_4

    .line 472
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "\u7f13\u5b58\u961f\u5217\u5df2\u6ee1\u8bf7\u7f13\u5b58\u5b8c\u6210\u540e\u7ee7\u7eed\u6dfb\u52a0"

    invoke-static {p1, v0}, Lcom/mh/movie/core/mvp/ui/utils/T;->showShort(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void

    .line 476
    :cond_4
    iget-boolean v1, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->u:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->B:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    iget v3, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->v:I

    if-lt v1, v3, :cond_5

    .line 477
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->a(Landroid/content/Context;)V

    return-void

    .line 481
    :cond_5
    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->a(Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 482
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "\u7a7a\u95f4\u7f13\u5b58\u4e0d\u8db3"

    invoke-static {p1, v0}, Lcom/mh/movie/core/mvp/ui/utils/T;->showShort(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void

    .line 486
    :cond_6
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->B:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 487
    invoke-virtual {v0, v2}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;->setVideoState(I)V

    .line 489
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->q:Lcom/mh/movie/core/mvp/ui/widget/badge/a;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->B:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/mh/movie/core/mvp/ui/widget/badge/a;->a(I)Lcom/mh/movie/core/mvp/ui/widget/badge/a;

    goto :goto_0

    .line 490
    :cond_7
    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;->getVideoState()I

    move-result v1

    if-ne v1, v2, :cond_8

    .line 491
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->B:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 492
    invoke-virtual {v0, v3}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;->setVideoState(I)V

    .line 493
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->q:Lcom/mh/movie/core/mvp/ui/widget/badge/a;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->B:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/mh/movie/core/mvp/ui/widget/badge/a;->a(I)Lcom/mh/movie/core/mvp/ui/widget/badge/a;

    .line 495
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->B:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_8

    .line 496
    iput-boolean v3, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->w:Z

    .line 497
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->c()V

    .line 500
    :cond_8
    :goto_0
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->f:Lcom/mh/movie/core/mvp/ui/adapter/c;

    invoke-virtual {v0, p1}, Lcom/mh/movie/core/mvp/ui/adapter/c;->notifyItemChanged(I)V

    goto/16 :goto_2

    .line 504
    :cond_9
    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;->getVideoState()I

    move-result v1

    if-ne v1, v2, :cond_c

    .line 505
    invoke-static {}, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->a()Lcom/mh/movie/core/mvp/ui/widget/cache/g;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->i:Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoDownloadBean;

    invoke-virtual {v4}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoDownloadBean;->getVideoInfoId()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "_"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;->getId()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->b(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_a

    .line 507
    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->c:Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;

    const-string v3, "\u6e29\u99a8\u63d0\u793a"

    invoke-virtual {v2, v3}, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->a(Ljava/lang/String;)V

    .line 508
    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->c:Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u8be5\u89c6\u9891\u5df2\u7f13\u5b58"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "%,\u786e\u5b9a\u5220\u9664\u5df2\u7f13\u5b58\uff1f"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->b(Ljava/lang/String;)V

    .line 509
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->c:Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;

    const-string v2, "\u786e\u5b9a"

    invoke-virtual {v1, v2}, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->d(Ljava/lang/String;)V

    .line 510
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->c:Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;

    const-string v2, "\u53d6\u6d88"

    invoke-virtual {v1, v2}, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->e(Ljava/lang/String;)V

    .line 511
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->c:Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;

    new-instance v2, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView$10;

    invoke-direct {v2, p0, v0, p1}, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView$10;-><init>(Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;I)V

    invoke-virtual {v1, v2}, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->a(Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog$a;)V

    .line 530
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->c:Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->show()V

    goto :goto_1

    .line 532
    :cond_a
    invoke-static {}, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->a()Lcom/mh/movie/core/mvp/ui/widget/cache/g;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->i:Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoDownloadBean;

    invoke-virtual {v4}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoDownloadBean;->getVideoInfoId()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "_"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;->getId()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->a(Ljava/lang/String;)V

    .line 533
    invoke-virtual {v0, v3}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;->setVideoState(I)V

    .line 534
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->f:Lcom/mh/movie/core/mvp/ui/adapter/c;

    invoke-virtual {v0, p1}, Lcom/mh/movie/core/mvp/ui/adapter/c;->notifyItemChanged(I)V

    .line 535
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->C:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 536
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->C:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 537
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->f()V

    .line 541
    :cond_b
    :goto_1
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->d()V

    goto :goto_2

    .line 543
    :cond_c
    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;->getVideoState()I

    move-result v1

    if-nez v1, :cond_11

    .line 544
    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;->getFormatExtra()Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean$FormatExtraBean;

    move-result-object v1

    iget v2, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->x:I

    invoke-static {v1, v2}, Lcom/mh/movie/core/mvp/ui/utils/CommonTools;->autoGetExtraBean(Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean$FormatExtraBean;I)Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean$FormatExtraBean$ExtraBean;

    move-result-object v1

    if-nez v1, :cond_d

    .line 545
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "\u65e0\u5f53\u524d\u5206\u8fa8\u7387\uff0c\u8bf7\u5207\u6362\u5206\u8fa8\u7387"

    invoke-static {p1, v0}, Lcom/mh/movie/core/mvp/ui/utils/T;->showShort(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void

    .line 549
    :cond_d
    iget-boolean v1, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->u:Z

    if-eqz v1, :cond_e

    iget v1, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->v:I

    if-gtz v1, :cond_e

    .line 550
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->a(Landroid/content/Context;)V

    return-void

    .line 554
    :cond_e
    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->a(Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 555
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "\u7a7a\u95f4\u7f13\u5b58\u4e0d\u8db3"

    invoke-static {p1, v0}, Lcom/mh/movie/core/mvp/ui/utils/T;->showShort(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void

    .line 559
    :cond_f
    invoke-static {}, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->a()Lcom/mh/movie/core/mvp/ui/widget/cache/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->f()I

    move-result v1

    if-gtz v1, :cond_10

    .line 560
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "\u7f13\u5b58\u961f\u5217\u5df2\u6ee1\u8bf7\u7f13\u5b58\u5b8c\u6210\u540e\u7ee7\u7eed\u6dfb\u52a0"

    invoke-static {p1, v0}, Lcom/mh/movie/core/mvp/ui/utils/T;->showShort(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void

    .line 564
    :cond_10
    invoke-virtual {p0, v3, p1, v0}, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->a(ZILcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;)V

    :cond_11
    :goto_2
    return-void
.end method

.method final synthetic b(ILjava/lang/String;)V
    .locals 1

    .line 328
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->A:Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView$a;

    if-eqz v0, :cond_0

    .line 329
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->A:Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView$a;

    invoke-interface {v0, p1, p2}, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView$a;->a(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method final synthetic b(Landroid/view/View;)V
    .locals 2

    .line 325
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->h:Lcom/mh/movie/core/mvp/ui/widget/dialog/ClarityDialog;

    if-nez p1, :cond_0

    .line 326
    new-instance p1, Lcom/mh/movie/core/mvp/ui/widget/dialog/ClarityDialog;

    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->x:I

    invoke-direct {p1, v0, v1}, Lcom/mh/movie/core/mvp/ui/widget/dialog/ClarityDialog;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->h:Lcom/mh/movie/core/mvp/ui/widget/dialog/ClarityDialog;

    .line 327
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->h:Lcom/mh/movie/core/mvp/ui/widget/dialog/ClarityDialog;

    new-instance v0, Lcom/mh/movie/core/mvp/ui/widget/cache/e;

    invoke-direct {v0, p0}, Lcom/mh/movie/core/mvp/ui/widget/cache/e;-><init>(Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;)V

    invoke-virtual {p1, v0}, Lcom/mh/movie/core/mvp/ui/widget/dialog/ClarityDialog;->a(Lcom/mh/movie/core/mvp/ui/widget/dialog/ClarityDialog$a;)V

    .line 333
    :cond_0
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->h:Lcom/mh/movie/core/mvp/ui/widget/dialog/ClarityDialog;

    iget v0, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->x:I

    invoke-virtual {p1, v0}, Lcom/mh/movie/core/mvp/ui/widget/dialog/ClarityDialog;->c(I)V

    .line 334
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->h:Lcom/mh/movie/core/mvp/ui/widget/dialog/ClarityDialog;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/ui/widget/dialog/ClarityDialog;->show()V

    return-void
.end method

.method public b(Lcom/mh/movie/core/mvp/model/entity/response/DownUrlResponse;)V
    .locals 12

    .line 806
    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/DownUrlResponse;->getList()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/DownUrlResponse;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    goto/16 :goto_2

    .line 824
    :cond_0
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    .line 827
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 828
    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/DownUrlResponse;->getList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mh/movie/core/mvp/model/entity/response/DownUrlResponse$DownUrlBean;

    const/4 v6, 0x0

    .line 829
    :goto_1
    iget-object v7, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->f:Lcom/mh/movie/core/mvp/ui/adapter/c;

    invoke-virtual {v7}, Lcom/mh/movie/core/mvp/ui/adapter/c;->e()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_1

    .line 830
    iget-object v7, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->f:Lcom/mh/movie/core/mvp/ui/adapter/c;

    invoke-virtual {v7}, Lcom/mh/movie/core/mvp/ui/adapter/c;->e()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;

    .line 831
    invoke-virtual {v7}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;->getId()I

    move-result v8

    invoke-virtual {v5}, Lcom/mh/movie/core/mvp/model/entity/response/DownUrlResponse$DownUrlBean;->getId()I

    move-result v9

    if-ne v8, v9, :cond_2

    .line 832
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Lcom/mh/movie/core/mvp/model/entity/response/DownUrlResponse$DownUrlBean;->getM3u8PlayUrl()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/mh/movie/core/mvp/model/entity/response/DownUrlResponse$DownUrlBean;->getM3u8Format()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-wide/16 v8, 0x1

    add-long v10, v2, v8

    invoke-virtual {p0, v7, v5, v2, v3}, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->a(Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;Ljava/lang/String;J)Lcom/mh/movie/core/mvp/model/entity/DownloadData;

    move-result-object v2

    .line 833
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 834
    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->C:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x1

    .line 835
    invoke-virtual {v7, v2}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;->setVideoState(I)V

    move-wide v2, v10

    goto :goto_0

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 842
    :cond_3
    invoke-static {}, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->a()Lcom/mh/movie/core/mvp/ui/widget/cache/g;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->a(Ljava/util/List;)V

    .line 843
    iget-boolean v0, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->u:Z

    if-eqz v0, :cond_4

    .line 844
    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/DownUrlResponse;->getCacheNum()I

    move-result p1

    iput p1, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->v:I

    .line 848
    :cond_4
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->D:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    .line 849
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->B:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    .line 850
    iput-boolean v1, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->w:Z

    .line 852
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->c()V

    .line 853
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->e()V

    .line 854
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->d()V

    .line 855
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->f()V

    .line 856
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->f:Lcom/mh/movie/core/mvp/ui/adapter/c;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/ui/adapter/c;->notifyDataSetChanged()V

    return-void

    .line 808
    :cond_5
    :goto_2
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->D:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    .line 809
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->B:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    .line 810
    iput-boolean v1, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->w:Z

    .line 812
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->c()V

    .line 813
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->e()V

    .line 814
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->d()V

    .line 815
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->f()V

    .line 816
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->f:Lcom/mh/movie/core/mvp/ui/adapter/c;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/ui/adapter/c;->notifyDataSetChanged()V

    .line 819
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "\u8bf7\u6c42\u5931\u8d25"

    invoke-static {p1, v0}, Lcom/mh/movie/core/mvp/ui/utils/T;->showShort(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void
.end method

.method final synthetic b(Ljava/lang/Void;)V
    .locals 0

    .line 380
    new-instance p1, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView$7;

    invoke-direct {p1, p0}, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView$7;-><init>(Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;)V

    invoke-direct {p0, p1}, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->a(Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView$c;)V

    return-void
.end method

.method public b(ZLcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;)V
    .locals 2

    .line 863
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->c:Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;

    const-string v1, "\u6e29\u99a8\u63d0\u793a"

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->a(Ljava/lang/String;)V

    .line 864
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->c:Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;

    const-string v1, "\u5df2\u6210\u529f\u6dfb\u52a0\uff0c\u5f53\u524d\u8fd0\u8425\u5546\u7f51\u7edc\u4e0b\u5df2\u4e3a\u60a8\u6682\u505c\uff0c\u6062\u590dWi-Fi\u7f51\u8def\u65f6\u5c06\u81ea\u52a8\u7ee7\u7eed\u7f13\u5b58\u3002\u5982\u4ecd\u9700\u7f13\u5b58\u8bf7\u5728\"\u8bbe\u7f6e\"\u4e2d\u66f4\u6539"

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->b(Ljava/lang/String;)V

    .line 865
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->c:Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;

    const-string v1, "\u4ec5Wi-Fi\u4e0b\u7f13\u5b58"

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->d(Ljava/lang/String;)V

    .line 866
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->c:Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;

    const-string v1, "\u66f4\u6539\u8bbe\u7f6e"

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->e(Ljava/lang/String;)V

    .line 867
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->c:Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;

    new-instance v1, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView$11;

    invoke-direct {v1, p0, p1, p2}, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView$11;-><init>(Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;ZLcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;)V

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->a(Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog$a;)V

    .line 881
    iget p1, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->y:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->y:I

    .line 882
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->c:Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->show()V

    return-void
.end method

.method public c()V
    .locals 5

    .line 919
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->j:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-boolean v2, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->w:Z

    if-eqz v2, :cond_0

    const-string v2, "\u53d6\u6d88"

    goto :goto_0

    :cond_0
    const-string v2, "\u5168\u9009"

    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 921
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v2, Lcom/mh/movie/core/R$mipmap;->cache_select_all0:I

    invoke-static {v0, v2}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 922
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v3

    invoke-virtual {v0, v1, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 923
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/mh/movie/core/R$mipmap;->cache_select_all:I

    invoke-static {v2, v3}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 924
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v4

    invoke-virtual {v2, v1, v1, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 926
    iget-object v3, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-boolean v3, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->w:Z

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    move-object v0, v2

    :goto_1
    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 932
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->o:Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->w:Z

    if-eqz v1, :cond_2

    const-string v1, "\u786e\u5b9a\u7f13\u5b58"

    goto :goto_2

    :cond_2
    const-string v1, "\u67e5\u770b\u7f13\u5b58"

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 933
    iget-boolean v0, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->w:Z

    if-eqz v0, :cond_3

    .line 934
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->q:Lcom/mh/movie/core/mvp/ui/widget/badge/a;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->B:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/mh/movie/core/mvp/ui/widget/badge/a;->a(I)Lcom/mh/movie/core/mvp/ui/widget/badge/a;

    goto :goto_3

    .line 936
    :cond_3
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->d()V

    :goto_3
    return-void
.end method

.method public c(ZLcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;)V
    .locals 2

    .line 892
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->c:Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;

    const-string v1, "\u6e29\u99a8\u63d0\u793a"

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->a(Ljava/lang/String;)V

    .line 893
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->c:Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;

    const-string v1, "\u60a8\u5df2\u8bbe\u7f6e\u5141\u8bb82G/3G/4G\u7f51\u8def\u4e0b\u7f13\u5b58\u89c6\u9891\uff0c\u53ef\u80fd\u4ea7\u751f\u8d85\u989d\u6d41\u91cf\u8d39\uff0c\u662f\u5426\u7ee7\u7eed\u7f13\u5b58\uff1f"

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->b(Ljava/lang/String;)V

    .line 894
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->c:Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;

    const-string v1, "\u7ee7\u7eed\u7f13\u5b58"

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->d(Ljava/lang/String;)V

    .line 895
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->c:Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;

    const-string v1, "\u66f4\u6539\u8bbe\u7f6e"

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->e(Ljava/lang/String;)V

    .line 896
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->c:Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;

    new-instance v1, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView$12;

    invoke-direct {v1, p0, p1, p2}, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView$12;-><init>(Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;ZLcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;)V

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->a(Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog$a;)V

    .line 910
    iget p1, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->y:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->y:I

    .line 911
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->c:Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->show()V

    return-void
.end method

.method public d()V
    .locals 2

    .line 958
    invoke-static {}, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->a()Lcom/mh/movie/core/mvp/ui/widget/cache/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->w()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 959
    invoke-static {}, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->a()Lcom/mh/movie/core/mvp/ui/widget/cache/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->w()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 960
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->q:Lcom/mh/movie/core/mvp/ui/widget/badge/a;

    invoke-static {}, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->a()Lcom/mh/movie/core/mvp/ui/widget/cache/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->w()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/mh/movie/core/mvp/ui/widget/badge/a;->a(I)Lcom/mh/movie/core/mvp/ui/widget/badge/a;

    goto :goto_0

    .line 962
    :cond_0
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->q:Lcom/mh/movie/core/mvp/ui/widget/badge/a;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/mh/movie/core/mvp/ui/widget/badge/a;->a(I)Lcom/mh/movie/core/mvp/ui/widget/badge/a;

    :goto_0
    return-void
.end method

.method public e()V
    .locals 3

    .line 970
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->n:Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->u:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u4eca\u65e5\u5269\u4f59\u7f13\u5b58\u6b21\u6570\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->v:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/mh/movie/core/mvp/ui/b;->a()Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;->getCanCacheNum()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, "\u4eca\u65e5\u5269\u4f59\u7f13\u5b58\u6b21\u6570\uff1a\u65e0\u9650\u6b21\u6570"

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public f()V
    .locals 9

    .line 977
    invoke-static {}, Lcom/mh/movie/core/mvp/ui/utils/AppInfo;->getFreeDiskStorage()D

    move-result-wide v0

    .line 979
    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->B:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const-wide/16 v3, 0x0

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;

    .line 980
    invoke-virtual {v5}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;->getFormatExtra()Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean$FormatExtraBean;

    move-result-object v5

    iget v6, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->x:I

    invoke-static {v5, v6}, Lcom/mh/movie/core/mvp/ui/utils/CommonTools;->autoGetExtraBean(Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean$FormatExtraBean;I)Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean$FormatExtraBean$ExtraBean;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 982
    invoke-virtual {v5}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean$FormatExtraBean$ExtraBean;->getSize()I

    move-result v5

    int-to-long v5, v5

    add-long v7, v3, v5

    move-wide v3, v7

    goto :goto_0

    .line 986
    :cond_1
    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->C:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;

    .line 987
    invoke-virtual {v5}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;->getFormatExtra()Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean$FormatExtraBean;

    move-result-object v5

    iget v6, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->x:I

    invoke-static {v5, v6}, Lcom/mh/movie/core/mvp/ui/utils/CommonTools;->autoGetExtraBean(Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean$FormatExtraBean;I)Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean$FormatExtraBean$ExtraBean;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 989
    invoke-virtual {v5}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean$FormatExtraBean$ExtraBean;->getSize()I

    move-result v5

    int-to-long v5, v5

    add-long v7, v3, v5

    move-wide v3, v7

    goto :goto_1

    :cond_3
    const-wide/16 v5, 0x400

    mul-long v3, v3, v5

    long-to-double v5, v3

    sub-double v5, v0, v5

    .line 995
    sget v2, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->b:I

    mul-int/lit16 v2, v2, 0x400

    mul-int/lit16 v2, v2, 0x400

    int-to-double v7, v2

    cmpg-double v2, v5, v7

    if-gtz v2, :cond_4

    .line 996
    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->m:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/mh/movie/core/R$color;->red_ff:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_2

    .line 998
    :cond_4
    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->m:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/mh/movie/core/R$color;->white:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_2
    double-to-long v0, v0

    .line 1001
    invoke-static {v0, v1}, Lcom/mh/movie/core/mvp/ui/utils/CommonTools;->Byte2Gigabyte(J)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    .line 1002
    invoke-static {v3, v4}, Lcom/mh/movie/core/mvp/ui/utils/CommonTools;->Byte2Gigabyte(J)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v1

    .line 1004
    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->m:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u9884\u8ba1\u5360\u7528\u5185\u5b58 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "GB/\u53ef\u7528\u7a7a\u95f4 "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "GB"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public g()V
    .locals 1

    .line 1188
    invoke-static {}, Lcom/mh/movie/core/mvp/ui/b;->a()Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;->getRestCacheNum()I

    move-result v0

    iput v0, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->v:I

    .line 1189
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->f()V

    .line 1190
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->e()V

    return-void
.end method

.method public h()V
    .locals 2

    .line 1194
    invoke-static {}, Lcom/mh/movie/core/mvp/ui/b;->a()Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;

    move-result-object v0

    iget v1, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->v:I

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;->setRestCacheNum(I)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public setCacheList(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 704
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 705
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;

    .line 706
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->i:Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoDownloadBean;

    invoke-virtual {v4}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoDownloadBean;->getVideoInfoId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;->getId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 707
    invoke-static {}, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->a()Lcom/mh/movie/core/mvp/ui/widget/cache/g;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->c(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    .line 708
    invoke-virtual {v2, v3}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;->setVideoState(I)V

    .line 710
    :cond_0
    invoke-static {}, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->a()Lcom/mh/movie/core/mvp/ui/widget/cache/g;

    move-result-object v3

    iget-object v4, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->i:Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoDownloadBean;

    invoke-virtual {v4}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoDownloadBean;->getVideoInfoId()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v2}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;->getId()I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->a(JJ)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x2

    .line 711
    invoke-virtual {v2, v3}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;->setVideoState(I)V

    .line 713
    :cond_1
    invoke-virtual {v2}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;->getId()I

    move-result v2

    iget v3, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->z:I

    if-ne v2, v3, :cond_2

    move v1, v0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 717
    :cond_3
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->f:Lcom/mh/movie/core/mvp/ui/adapter/c;

    invoke-virtual {v0, p1}, Lcom/mh/movie/core/mvp/ui/adapter/c;->a(Ljava/util/List;)V

    .line 718
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p1, v1}, Landroid/support/v7/widget/RecyclerView;->scrollToPosition(I)V

    return-void
.end method

.method public setClarityDialogListener(Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView$a;)V
    .locals 0

    .line 141
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->A:Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView$a;

    return-void
.end method

.method public setDownloadBean(Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoDownloadBean;)V
    .locals 0

    .line 136
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->i:Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoDownloadBean;

    .line 137
    invoke-static {}, Lcom/mh/movie/core/mvp/ui/b;->a()Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;->getRestCacheNum()I

    move-result p1

    iput p1, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->v:I

    return-void
.end method

.method public setOnItemClickListener(Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView$b;)V
    .locals 0

    .line 132
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->t:Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView$b;

    return-void
.end method

.method public setPlayNum(I)V
    .locals 1

    const v0, 0x7fffffff

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    .line 670
    iput-boolean p1, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->u:Z

    .line 673
    :cond_0
    invoke-static {}, Lcom/mh/movie/core/mvp/ui/b;->a()Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;->getRestCacheNum()I

    move-result p1

    iput p1, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->v:I

    .line 674
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->e()V

    return-void
.end method

.method public setWatchPosition(I)V
    .locals 0

    .line 161
    iput p1, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->z:I

    return-void
.end method
