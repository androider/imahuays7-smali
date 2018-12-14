.class public Lcom/mh/movie/core/mvp/ui/widget/MovieCardView;
.super Landroid/widget/LinearLayout;
.source "MovieCardView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mh/movie/core/mvp/ui/widget/MovieCardView$a;
    }
.end annotation


# instance fields
.field public a:Z

.field public b:Z

.field private c:Landroid/graphics/drawable/Drawable;

.field private d:I

.field private e:Lcom/mh/movie/core/mvp/model/entity/response/HomePageResponse;

.field private f:I

.field private g:Lcom/mh/movie/core/mvp/ui/widget/MovieCardView$a;

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mh/movie/core/mvp/model/entity/BootadsListBean;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mh/movie/core/mvp/model/entity/response/QueryListBean;",
            ">;"
        }
    .end annotation
.end field

.field private j:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 68
    invoke-direct {p0, p1, v0}, Lcom/mh/movie/core/mvp/ui/widget/MovieCardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 72
    invoke-direct {p0, p1, p2, v0}, Lcom/mh/movie/core/mvp/ui/widget/MovieCardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 76
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x0

    .line 55
    iput-boolean p3, p0, Lcom/mh/movie/core/mvp/ui/widget/MovieCardView;->b:Z

    .line 57
    iput p3, p0, Lcom/mh/movie/core/mvp/ui/widget/MovieCardView;->d:I

    const/4 p3, 0x1

    .line 60
    iput p3, p0, Lcom/mh/movie/core/mvp/ui/widget/MovieCardView;->f:I

    .line 64
    iput-boolean p3, p0, Lcom/mh/movie/core/mvp/ui/widget/MovieCardView;->j:Z

    .line 77
    invoke-direct {p0, p1, p2}, Lcom/mh/movie/core/mvp/ui/widget/MovieCardView;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private a()V
    .locals 10

    .line 110
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/MovieCardView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/mh/movie/core/R$layout;->view_movie_card_title:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 111
    new-instance v1, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v1, v4, v5}, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 113
    sget v1, Lcom/mh/movie/core/R$id;->tv_card_title:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 114
    iget-object v4, p0, Lcom/mh/movie/core/mvp/ui/widget/MovieCardView;->e:Lcom/mh/movie/core/mvp/model/entity/response/HomePageResponse;

    invoke-virtual {v4}, Lcom/mh/movie/core/mvp/model/entity/response/HomePageResponse;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    sget v4, Lcom/mh/movie/core/R$id;->tv_card_more:I

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 116
    iget-boolean v5, p0, Lcom/mh/movie/core/mvp/ui/widget/MovieCardView;->b:Z

    const/4 v6, 0x4

    if-eqz v5, :cond_0

    const/4 v5, 0x0

    goto :goto_0

    :cond_0
    const/4 v5, 0x4

    :goto_0
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 117
    invoke-static {v4}, Lcom/jakewharton/rxbinding/view/b;->a(Landroid/view/View;)Lrx/a;

    move-result-object v4

    const-wide/16 v7, 0x1f4

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 118
    invoke-virtual {v4, v7, v8, v5}, Lrx/a;->a(JLjava/util/concurrent/TimeUnit;)Lrx/a;

    move-result-object v4

    new-instance v5, Lcom/mh/movie/core/mvp/ui/widget/m;

    invoke-direct {v5, p0}, Lcom/mh/movie/core/mvp/ui/widget/m;-><init>(Lcom/mh/movie/core/mvp/ui/widget/MovieCardView;)V

    .line 119
    invoke-virtual {v4, v5}, Lrx/a;->a(Lrx/b/b;)Lrx/f;

    .line 127
    iget-object v4, p0, Lcom/mh/movie/core/mvp/ui/widget/MovieCardView;->c:Landroid/graphics/drawable/Drawable;

    iget-object v5, p0, Lcom/mh/movie/core/mvp/ui/widget/MovieCardView;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v5

    iget-object v7, p0, Lcom/mh/movie/core/mvp/ui/widget/MovieCardView;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v7

    invoke-virtual {v4, v3, v3, v5, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 128
    iget-object v4, p0, Lcom/mh/movie/core/mvp/ui/widget/MovieCardView;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v4, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 129
    iget v2, p0, Lcom/mh/movie/core/mvp/ui/widget/MovieCardView;->d:I

    invoke-virtual {v1, v2, v3, v3, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 130
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/MovieCardView;->e:Lcom/mh/movie/core/mvp/model/entity/response/HomePageResponse;

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/model/entity/response/HomePageResponse;->getHeadPushSwitch()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/MovieCardView;->e:Lcom/mh/movie/core/mvp/model/entity/response/HomePageResponse;

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/model/entity/response/HomePageResponse;->getType()I

    move-result v1

    if-ne v1, v6, :cond_1

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/MovieCardView;->i:Ljava/util/List;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/MovieCardView;->i:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 131
    sget v1, Lcom/mh/movie/core/R$id;->ll_top_content:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 133
    new-instance v1, Lcom/mh/movie/core/mvp/ui/holder/m;

    const/4 v6, 0x1

    const/4 v7, -0x1

    const/4 v8, -0x1

    new-instance v9, Lcom/mh/movie/core/mvp/ui/widget/n;

    invoke-direct {v9, p0}, Lcom/mh/movie/core/mvp/ui/widget/n;-><init>(Lcom/mh/movie/core/mvp/ui/widget/MovieCardView;)V

    move-object v4, v1

    move-object v5, v0

    invoke-direct/range {v4 .. v9}, Lcom/mh/movie/core/mvp/ui/holder/m;-><init>(Landroid/view/View;IIILcom/mh/movie/core/mvp/ui/widget/l$a;)V

    .line 141
    iget-object v4, p0, Lcom/mh/movie/core/mvp/ui/widget/MovieCardView;->i:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mh/movie/core/mvp/model/entity/response/QueryListBean;

    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/MovieCardView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v2, v3, v4, v1}, Lcom/mh/movie/core/mvp/ui/utils/ViewBuildUtils;->buildViews(ILcom/mh/movie/core/mvp/model/entity/response/QueryListBean;Landroid/content/Context;Lcom/mh/movie/core/mvp/ui/holder/m;)V

    goto :goto_1

    .line 144
    :cond_1
    sget v1, Lcom/mh/movie/core/R$id;->ll_top_content:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 146
    :goto_1
    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/widget/MovieCardView;->addView(Landroid/view/View;)V

    return-void
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 81
    sget-object v0, Lcom/mh/movie/core/R$styleable;->MovieCardView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 82
    sget v0, Lcom/mh/movie/core/R$styleable;->MovieCardView_mcv_left_icon:I

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/MovieCardView;->c:Landroid/graphics/drawable/Drawable;

    .line 83
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/MovieCardView;->c:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 84
    sget v0, Lcom/mh/movie/core/R$drawable;->red_point_bg:I

    invoke-static {p1, v0}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/MovieCardView;->c:Landroid/graphics/drawable/Drawable;

    .line 86
    :cond_0
    sget p1, Lcom/mh/movie/core/R$styleable;->MovieCardView_mcv_show_title:I

    const/4 v0, 0x1

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/mh/movie/core/mvp/ui/widget/MovieCardView;->a:Z

    return-void
.end method

.method private b()V
    .locals 3

    .line 208
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/MovieCardView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/mh/movie/core/R$layout;->footer_operation_view:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 210
    sget v1, Lcom/mh/movie/core/R$id;->ll_opera_change:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/mh/movie/core/mvp/ui/widget/p;

    invoke-direct {v2, p0}, Lcom/mh/movie/core/mvp/ui/widget/p;-><init>(Lcom/mh/movie/core/mvp/ui/widget/MovieCardView;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 219
    sget v1, Lcom/mh/movie/core/R$id;->ll_opera_more:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/mh/movie/core/mvp/ui/widget/q;

    invoke-direct {v2, p0}, Lcom/mh/movie/core/mvp/ui/widget/q;-><init>(Lcom/mh/movie/core/mvp/ui/widget/MovieCardView;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 224
    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/widget/MovieCardView;->addView(Landroid/view/View;)V

    return-void
.end method

.method private c()V
    .locals 7

    .line 231
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/MovieCardView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/mh/movie/core/R$layout;->view_bottom_banner:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/mh/movie/core/mvp/ui/widget/MovieCardView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 232
    new-instance v1, Lcom/mh/movie/core/mvp/ui/adapter/w;

    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/MovieCardView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/mh/movie/core/mvp/ui/widget/MovieCardView;->h:Ljava/util/List;

    invoke-direct {v1, v2, v3}, Lcom/mh/movie/core/mvp/ui/adapter/w;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 233
    sget v2, Lcom/mh/movie/core/R$id;->iv_movie_banner:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/mh/movie/core/mvp/ui/widget/banner/Banner;

    const/4 v3, 0x5

    .line 234
    invoke-virtual {v2, v3}, Lcom/mh/movie/core/mvp/ui/widget/banner/Banner;->a(I)Lcom/mh/movie/core/mvp/ui/widget/banner/Banner;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [I

    sget v5, Lcom/mh/movie/core/R$drawable;->no_selected_dot:I

    const/4 v6, 0x0

    aput v5, v4, v6

    sget v5, Lcom/mh/movie/core/R$drawable;->no_selected_dot:I

    const/4 v6, 0x1

    aput v5, v4, v6

    .line 235
    invoke-virtual {v3, v4}, Lcom/mh/movie/core/mvp/ui/widget/banner/Banner;->a([I)Lcom/mh/movie/core/mvp/ui/widget/banner/Banner;

    move-result-object v3

    .line 236
    invoke-virtual {v3, v1}, Lcom/mh/movie/core/mvp/ui/widget/banner/Banner;->a(Lcom/mh/movie/core/mvp/ui/widget/banner/a;)Lcom/mh/movie/core/mvp/ui/widget/banner/Banner;

    move-result-object v1

    new-instance v3, Lcom/mh/movie/core/mvp/ui/widget/r;

    invoke-direct {v3, p0}, Lcom/mh/movie/core/mvp/ui/widget/r;-><init>(Lcom/mh/movie/core/mvp/ui/widget/MovieCardView;)V

    .line 237
    invoke-virtual {v1, v3}, Lcom/mh/movie/core/mvp/ui/widget/banner/Banner;->a(Lcom/mh/movie/core/mvp/ui/widget/banner/a$a;)Lcom/mh/movie/core/mvp/ui/widget/banner/Banner;

    .line 238
    invoke-virtual {v2}, Lcom/mh/movie/core/mvp/ui/widget/banner/Banner;->c()V

    .line 239
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/MovieCardView;->h:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v6, :cond_0

    .line 240
    invoke-virtual {v2}, Lcom/mh/movie/core/mvp/ui/widget/banner/Banner;->b()V

    .line 242
    :cond_0
    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/widget/MovieCardView;->addView(Landroid/view/View;)V

    return-void
.end method

.method private d(I)V
    .locals 7

    .line 157
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/MovieCardView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x40400000    # 3.0f

    invoke-static {v0, v1}, Lcom/jess/arms/c/e;->a(Landroid/content/Context;F)F

    move-result v0

    float-to-int v0, v0

    .line 158
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/MovieCardView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/mh/movie/core/mvp/ui/utils/ViewBuildUtils;->convertParams(ILandroid/content/Context;)[I

    move-result-object v1

    .line 160
    new-instance v2, Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/MovieCardView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x2

    .line 161
    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView;->setOverScrollMode(I)V

    .line 162
    invoke-virtual {p0, v2}, Lcom/mh/movie/core/mvp/ui/widget/MovieCardView;->addView(Landroid/view/View;)V

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x3

    if-le p1, v5, :cond_0

    .line 166
    new-instance v5, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/MovieCardView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6, v3, v3}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v2, v5}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 167
    new-instance v5, Lcom/mh/movie/core/mvp/ui/widget/s;

    invoke-direct {v5, p1, v0, v4}, Lcom/mh/movie/core/mvp/ui/widget/s;-><init>(IIZ)V

    invoke-virtual {v2, v5}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    goto :goto_0

    .line 169
    :cond_0
    new-instance v5, Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/MovieCardView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6, p1}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v2, v5}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 170
    new-instance v5, Lcom/mh/movie/core/mvp/ui/widget/s;

    invoke-direct {v5, p1, v0}, Lcom/mh/movie/core/mvp/ui/widget/s;-><init>(II)V

    invoke-virtual {v2, v5}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 172
    :goto_0
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/MovieCardView;->i:Ljava/util/List;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/MovieCardView;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 173
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/MovieCardView;->e:Lcom/mh/movie/core/mvp/model/entity/response/HomePageResponse;

    if-eqz v0, :cond_2

    .line 174
    new-instance v0, Lcom/mh/movie/core/mvp/ui/widget/l;

    aget v3, v1, v3

    aget v1, v1, v4

    iget-object v5, p0, Lcom/mh/movie/core/mvp/ui/widget/MovieCardView;->e:Lcom/mh/movie/core/mvp/model/entity/response/HomePageResponse;

    invoke-virtual {v5}, Lcom/mh/movie/core/mvp/model/entity/response/HomePageResponse;->getHeadPushSwitch()I

    move-result v5

    if-ne v5, v4, :cond_1

    iget-object v5, p0, Lcom/mh/movie/core/mvp/ui/widget/MovieCardView;->e:Lcom/mh/movie/core/mvp/model/entity/response/HomePageResponse;

    invoke-virtual {v5}, Lcom/mh/movie/core/mvp/model/entity/response/HomePageResponse;->getType()I

    move-result v5

    const/4 v6, 0x4

    if-ne v5, v6, :cond_1

    iget-object v5, p0, Lcom/mh/movie/core/mvp/ui/widget/MovieCardView;->i:Ljava/util/List;

    iget-object v6, p0, Lcom/mh/movie/core/mvp/ui/widget/MovieCardView;->i:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-interface {v5, v4, v6}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v4

    goto :goto_1

    :cond_1
    iget-object v4, p0, Lcom/mh/movie/core/mvp/ui/widget/MovieCardView;->i:Ljava/util/List;

    :goto_1
    invoke-direct {v0, p1, v3, v1, v4}, Lcom/mh/movie/core/mvp/ui/widget/l;-><init>(IIILjava/util/List;)V

    goto :goto_2

    .line 176
    :cond_2
    new-instance v0, Lcom/mh/movie/core/mvp/ui/widget/l;

    aget v3, v1, v3

    aget v1, v1, v4

    iget-object v4, p0, Lcom/mh/movie/core/mvp/ui/widget/MovieCardView;->i:Ljava/util/List;

    invoke-direct {v0, p1, v3, v1, v4}, Lcom/mh/movie/core/mvp/ui/widget/l;-><init>(IIILjava/util/List;)V

    .line 180
    :goto_2
    invoke-virtual {v2, v0}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 181
    iget-boolean p1, p0, Lcom/mh/movie/core/mvp/ui/widget/MovieCardView;->j:Z

    invoke-virtual {v0, p1}, Lcom/mh/movie/core/mvp/ui/widget/l;->a(Z)V

    .line 182
    new-instance p1, Lcom/mh/movie/core/mvp/ui/widget/o;

    invoke-direct {p1, p0}, Lcom/mh/movie/core/mvp/ui/widget/o;-><init>(Lcom/mh/movie/core/mvp/ui/widget/MovieCardView;)V

    invoke-virtual {v0, p1}, Lcom/mh/movie/core/mvp/ui/widget/l;->a(Lcom/mh/movie/core/mvp/ui/widget/l$a;)V

    :cond_3
    return-void
.end method


# virtual methods
.method final synthetic a(I)V
    .locals 3

    .line 237
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/MovieCardView;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/model/entity/BootadsListBean;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/BootadsListBean;->getLinkUrl()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/MovieCardView;->h:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mh/movie/core/mvp/model/entity/BootadsListBean;

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/model/entity/BootadsListBean;->getId()I

    move-result v1

    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/widget/MovieCardView;->h:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mh/movie/core/mvp/model/entity/BootadsListBean;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/BootadsListBean;->getTargetType()I

    move-result p1

    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const/4 p1, 0x3

    invoke-static {v0, v1, v2, p1}, Lcom/mh/movie/core/mvp/ui/utils/UIUtils;->openWeb(Ljava/lang/String;IZI)V

    return-void
.end method

.method public a(ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/mh/movie/core/mvp/model/entity/response/QueryListBean;",
            ">;)V"
        }
    .end annotation

    .line 91
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/MovieCardView;->removeAllViews()V

    .line 92
    iput-object p2, p0, Lcom/mh/movie/core/mvp/ui/widget/MovieCardView;->i:Ljava/util/List;

    const/4 p2, 0x1

    .line 93
    invoke-virtual {p0, p2}, Lcom/mh/movie/core/mvp/ui/widget/MovieCardView;->setOrientation(I)V

    .line 94
    iget-boolean p2, p0, Lcom/mh/movie/core/mvp/ui/widget/MovieCardView;->a:Z

    if-eqz p2, :cond_0

    .line 95
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/widget/MovieCardView;->a()V

    .line 97
    :cond_0
    invoke-direct {p0, p1}, Lcom/mh/movie/core/mvp/ui/widget/MovieCardView;->d(I)V

    .line 98
    iget-boolean p1, p0, Lcom/mh/movie/core/mvp/ui/widget/MovieCardView;->b:Z

    if-eqz p1, :cond_1

    .line 99
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/widget/MovieCardView;->b()V

    .line 101
    :cond_1
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/MovieCardView;->h:Ljava/util/List;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/MovieCardView;->h:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_2

    .line 102
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/widget/MovieCardView;->c()V

    :cond_2
    return-void
.end method

.method final synthetic a(Landroid/view/View;)V
    .locals 2

    .line 220
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/MovieCardView;->g:Lcom/mh/movie/core/mvp/ui/widget/MovieCardView$a;

    if-eqz p1, :cond_0

    .line 221
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/MovieCardView;->g:Lcom/mh/movie/core/mvp/ui/widget/MovieCardView$a;

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/MovieCardView;->e:Lcom/mh/movie/core/mvp/model/entity/response/HomePageResponse;

    iget v1, p0, Lcom/mh/movie/core/mvp/ui/widget/MovieCardView;->f:I

    invoke-interface {p1, v0, v1}, Lcom/mh/movie/core/mvp/ui/widget/MovieCardView$a;->a(Lcom/mh/movie/core/mvp/model/entity/response/HomePageResponse;I)V

    :cond_0
    return-void
.end method

.method public a(Lcom/mh/movie/core/mvp/model/entity/response/HomePageResponse;I)V
    .locals 2

    .line 246
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/MovieCardView;->e:Lcom/mh/movie/core/mvp/model/entity/response/HomePageResponse;

    .line 247
    iput p2, p0, Lcom/mh/movie/core/mvp/ui/widget/MovieCardView;->f:I

    .line 248
    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/HomePageResponse;->getSupportSwitch()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iput-boolean p2, p0, Lcom/mh/movie/core/mvp/ui/widget/MovieCardView;->b:Z

    .line 250
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/MovieCardView;->e:Lcom/mh/movie/core/mvp/model/entity/response/HomePageResponse;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/HomePageResponse;->getType()I

    move-result p1

    const/4 p2, 0x2

    if-ne p1, p2, :cond_1

    .line 251
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/MovieCardView;->e:Lcom/mh/movie/core/mvp/model/entity/response/HomePageResponse;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/HomePageResponse;->getQueryList()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/mh/movie/core/mvp/ui/widget/MovieCardView;->a(ILjava/util/List;)V

    goto :goto_1

    .line 252
    :cond_1
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/MovieCardView;->e:Lcom/mh/movie/core/mvp/model/entity/response/HomePageResponse;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/HomePageResponse;->getType()I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    .line 253
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/MovieCardView;->e:Lcom/mh/movie/core/mvp/model/entity/response/HomePageResponse;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/HomePageResponse;->getQueryList()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/mh/movie/core/mvp/ui/widget/MovieCardView;->a(ILjava/util/List;)V

    goto :goto_1

    .line 254
    :cond_2
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/MovieCardView;->e:Lcom/mh/movie/core/mvp/model/entity/response/HomePageResponse;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/HomePageResponse;->getType()I

    move-result p1

    const/4 v1, 0x4

    if-ne p1, v1, :cond_4

    .line 255
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/MovieCardView;->e:Lcom/mh/movie/core/mvp/model/entity/response/HomePageResponse;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/HomePageResponse;->getIsLandscape()I

    move-result p1

    if-eq p1, p2, :cond_3

    .line 256
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/MovieCardView;->e:Lcom/mh/movie/core/mvp/model/entity/response/HomePageResponse;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/HomePageResponse;->getQueryList()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/mh/movie/core/mvp/ui/widget/MovieCardView;->a(ILjava/util/List;)V

    goto :goto_1

    .line 258
    :cond_3
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/MovieCardView;->e:Lcom/mh/movie/core/mvp/model/entity/response/HomePageResponse;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/HomePageResponse;->getQueryList()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/mh/movie/core/mvp/ui/widget/MovieCardView;->a(ILjava/util/List;)V

    :cond_4
    :goto_1
    return-void
.end method

.method final synthetic a(Ljava/lang/Void;)V
    .locals 2

    .line 120
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/MovieCardView;->g:Lcom/mh/movie/core/mvp/ui/widget/MovieCardView$a;

    if-eqz p1, :cond_0

    .line 121
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/MovieCardView;->g:Lcom/mh/movie/core/mvp/ui/widget/MovieCardView$a;

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/MovieCardView;->e:Lcom/mh/movie/core/mvp/model/entity/response/HomePageResponse;

    iget v1, p0, Lcom/mh/movie/core/mvp/ui/widget/MovieCardView;->f:I

    invoke-interface {p1, v0, v1}, Lcom/mh/movie/core/mvp/ui/widget/MovieCardView$a;->a(Lcom/mh/movie/core/mvp/model/entity/response/HomePageResponse;I)V

    :cond_0
    return-void
.end method

.method final synthetic b(I)V
    .locals 4

    .line 183
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/MovieCardView;->g:Lcom/mh/movie/core/mvp/ui/widget/MovieCardView$a;

    if-eqz v0, :cond_6

    .line 185
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/MovieCardView;->e:Lcom/mh/movie/core/mvp/model/entity/response/HomePageResponse;

    if-eqz v0, :cond_4

    .line 186
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/MovieCardView;->i:Ljava/util/List;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/MovieCardView;->e:Lcom/mh/movie/core/mvp/model/entity/response/HomePageResponse;

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/model/entity/response/HomePageResponse;->getHeadPushSwitch()I

    move-result v1

    const/4 v2, 0x4

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/MovieCardView;->e:Lcom/mh/movie/core/mvp/model/entity/response/HomePageResponse;

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/model/entity/response/HomePageResponse;->getType()I

    move-result v1

    if-ne v1, v2, :cond_0

    add-int/lit8 v1, p1, 0x1

    goto :goto_0

    :cond_0
    move v1, p1

    :goto_0
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/model/entity/response/QueryListBean;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/response/QueryListBean;->getVideoInfoId()I

    move-result v0

    if-nez v0, :cond_2

    .line 187
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/MovieCardView;->i:Ljava/util/List;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/MovieCardView;->e:Lcom/mh/movie/core/mvp/model/entity/response/HomePageResponse;

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/model/entity/response/HomePageResponse;->getHeadPushSwitch()I

    move-result v1

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/MovieCardView;->e:Lcom/mh/movie/core/mvp/model/entity/response/HomePageResponse;

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/model/entity/response/HomePageResponse;->getType()I

    move-result v1

    if-ne v1, v2, :cond_1

    add-int/lit8 v1, p1, 0x1

    goto :goto_1

    :cond_1
    move v1, p1

    :goto_1
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/model/entity/response/QueryListBean;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/response/QueryListBean;->getId()I

    move-result v0

    goto :goto_3

    .line 189
    :cond_2
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/MovieCardView;->i:Ljava/util/List;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/MovieCardView;->e:Lcom/mh/movie/core/mvp/model/entity/response/HomePageResponse;

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/model/entity/response/HomePageResponse;->getHeadPushSwitch()I

    move-result v1

    if-ne v1, v3, :cond_3

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/MovieCardView;->e:Lcom/mh/movie/core/mvp/model/entity/response/HomePageResponse;

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/model/entity/response/HomePageResponse;->getType()I

    move-result v1

    if-ne v1, v2, :cond_3

    add-int/lit8 v1, p1, 0x1

    goto :goto_2

    :cond_3
    move v1, p1

    :goto_2
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/model/entity/response/QueryListBean;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/response/QueryListBean;->getVideoInfoId()I

    move-result v0

    goto :goto_3

    .line 192
    :cond_4
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/MovieCardView;->i:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/model/entity/response/QueryListBean;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/response/QueryListBean;->getVideoInfoId()I

    move-result v0

    if-nez v0, :cond_5

    .line 193
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/MovieCardView;->i:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/model/entity/response/QueryListBean;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/response/QueryListBean;->getId()I

    move-result v0

    goto :goto_3

    .line 195
    :cond_5
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/MovieCardView;->i:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/model/entity/response/QueryListBean;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/response/QueryListBean;->getVideoInfoId()I

    move-result v0

    .line 198
    :goto_3
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/MovieCardView;->g:Lcom/mh/movie/core/mvp/ui/widget/MovieCardView$a;

    invoke-interface {v1, p1, v0}, Lcom/mh/movie/core/mvp/ui/widget/MovieCardView$a;->a(II)V

    :cond_6
    return-void
.end method

.method final synthetic b(Landroid/view/View;)V
    .locals 2

    .line 211
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/MovieCardView;->g:Lcom/mh/movie/core/mvp/ui/widget/MovieCardView$a;

    if-eqz p1, :cond_1

    .line 212
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/MovieCardView;->g:Lcom/mh/movie/core/mvp/ui/widget/MovieCardView$a;

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/MovieCardView;->e:Lcom/mh/movie/core/mvp/model/entity/response/HomePageResponse;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/response/HomePageResponse;->getHeadPushSwitch()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/MovieCardView;->e:Lcom/mh/movie/core/mvp/model/entity/response/HomePageResponse;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/response/HomePageResponse;->getType()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/MovieCardView;->i:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/model/entity/response/QueryListBean;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/response/QueryListBean;->getVideoInfoId()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    invoke-interface {p1, v0}, Lcom/mh/movie/core/mvp/ui/widget/MovieCardView$a;->a(I)V

    :cond_1
    return-void
.end method

.method final synthetic c(I)V
    .locals 3

    .line 134
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/MovieCardView;->g:Lcom/mh/movie/core/mvp/ui/widget/MovieCardView$a;

    if-eqz p1, :cond_0

    .line 135
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/MovieCardView;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/MovieCardView;->e:Lcom/mh/movie/core/mvp/model/entity/response/HomePageResponse;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/response/HomePageResponse;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/MovieCardView;->i:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mh/movie/core/mvp/model/entity/response/QueryListBean;

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/model/entity/response/QueryListBean;->getVideoInfoId()I

    move-result v1

    iget v2, p0, Lcom/mh/movie/core/mvp/ui/widget/MovieCardView;->f:I

    .line 136
    invoke-static {v2}, Lcom/mh/movie/core/mvp/model/db/WatchFromEvent;->getWatchFrom(I)I

    move-result v2

    .line 135
    invoke-static {p1, v0, v1, v2}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->a(Landroid/content/Context;III)V

    :cond_0
    return-void
.end method

.method public setFooterShow(Z)V
    .locals 0

    .line 265
    iput-boolean p1, p0, Lcom/mh/movie/core/mvp/ui/widget/MovieCardView;->b:Z

    return-void
.end method

.method public setLeftTitlePadding(I)V
    .locals 0

    .line 285
    iput p1, p0, Lcom/mh/movie/core/mvp/ui/widget/MovieCardView;->d:I

    return-void
.end method

.method public setMcvClickListener(Lcom/mh/movie/core/mvp/ui/widget/MovieCardView$a;)V
    .locals 0

    .line 277
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/MovieCardView;->g:Lcom/mh/movie/core/mvp/ui/widget/MovieCardView$a;

    return-void
.end method

.method public setShowBanner(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mh/movie/core/mvp/model/entity/BootadsListBean;",
            ">;)V"
        }
    .end annotation

    .line 273
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/MovieCardView;->h:Ljava/util/List;

    return-void
.end method

.method public setShowTime(Z)V
    .locals 0

    .line 269
    iput-boolean p1, p0, Lcom/mh/movie/core/mvp/ui/widget/MovieCardView;->j:Z

    return-void
.end method

.method public setTitleDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 281
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/MovieCardView;->c:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setTitleShow(Z)V
    .locals 0

    .line 289
    iput-boolean p1, p0, Lcom/mh/movie/core/mvp/ui/widget/MovieCardView;->a:Z

    return-void
.end method
