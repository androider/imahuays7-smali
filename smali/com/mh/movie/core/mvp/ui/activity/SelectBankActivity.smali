.class public Lcom/mh/movie/core/mvp/ui/activity/SelectBankActivity;
.super Lcom/mh/movie/core/mvp/ui/activity/ac;
.source "SelectBankActivity.java"

# interfaces
.implements Lcom/mh/movie/core/mvp/a/aw$b;
.implements Lcom/mh/movie/core/mvp/ui/widget/recylerview/a$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mh/movie/core/mvp/ui/activity/ac<",
        "Lcom/mh/movie/core/mvp/presenter/SelectBankPresenter;",
        ">;",
        "Lcom/mh/movie/core/mvp/a/aw$b;",
        "Lcom/mh/movie/core/mvp/ui/widget/recylerview/a$a;"
    }
.end annotation


# instance fields
.field c:Lcom/mh/movie/core/mvp/ui/adapter/c;

.field d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field e:Lcom/mh/movie/core/mvp/ui/widget/recylerview/a;

.field f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field rv:Landroid/support/v7/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c0304
    .end annotation
.end field

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
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/activity/ac;-><init>()V

    return-void
.end method

.method private e()V
    .locals 2

    .line 86
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/SelectBankActivity;->r:Landroid/content/Context;

    sget v1, Lcom/mh/movie/core/R$color;->white:I

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    const/4 v1, 0x1

    invoke-static {p0, v1, v0}, Lcom/mh/movie/core/mvp/ui/utils/UIUtils;->setImmersiveStatusBar(Landroid/app/Activity;ZI)V

    .line 87
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/SelectBankActivity;->topbar:Lcom/mh/movie/core/mvp/ui/widget/Topbar;

    new-instance v1, Lcom/mh/movie/core/mvp/ui/activity/at;

    invoke-direct {v1, p0}, Lcom/mh/movie/core/mvp/ui/activity/at;-><init>(Lcom/mh/movie/core/mvp/ui/activity/SelectBankActivity;)V

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/ui/widget/Topbar;->setLeftBarClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private f()V
    .locals 5

    .line 91
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/SelectBankActivity;->rv:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/activity/SelectBankActivity;->r:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 92
    new-instance v0, Lcom/mh/movie/core/mvp/ui/activity/SelectBankActivity$1;

    invoke-direct {v0, p0}, Lcom/mh/movie/core/mvp/ui/activity/SelectBankActivity$1;-><init>(Lcom/mh/movie/core/mvp/ui/activity/SelectBankActivity;)V

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/SelectBankActivity;->c:Lcom/mh/movie/core/mvp/ui/adapter/c;

    .line 108
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/SelectBankActivity;->rv:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/SelectBankActivity;->c:Lcom/mh/movie/core/mvp/ui/adapter/c;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 110
    new-instance v0, Lcom/mh/movie/core/mvp/ui/widget/recylerview/a;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2, v1, v1}, Lcom/mh/movie/core/mvp/ui/widget/recylerview/a;-><init>(Landroid/content/Context;IFF)V

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/SelectBankActivity;->e:Lcom/mh/movie/core/mvp/ui/widget/recylerview/a;

    .line 111
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/SelectBankActivity;->e:Lcom/mh/movie/core/mvp/ui/widget/recylerview/a;

    invoke-virtual {v0, p0}, Lcom/mh/movie/core/mvp/ui/widget/recylerview/a;->a(Lcom/mh/movie/core/mvp/ui/widget/recylerview/a$a;)V

    .line 113
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/SelectBankActivity;->e:Lcom/mh/movie/core/mvp/ui/widget/recylerview/a;

    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/SelectBankActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    const/4 v3, 0x1

    const/high16 v4, 0x41a00000    # 20.0f

    invoke-static {v3, v4, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/ui/widget/recylerview/a;->a(I)V

    .line 114
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/SelectBankActivity;->rv:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/SelectBankActivity;->e:Lcom/mh/movie/core/mvp/ui/widget/recylerview/a;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 115
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/SelectBankActivity;->sidrbar:Lcom/mh/movie/core/mvp/ui/widget/SideBar;

    invoke-virtual {v0, v2}, Lcom/mh/movie/core/mvp/ui/widget/SideBar;->setChoose(I)V

    .line 117
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/SelectBankActivity;->sidrbar:Lcom/mh/movie/core/mvp/ui/widget/SideBar;

    new-instance v1, Lcom/mh/movie/core/mvp/ui/activity/SelectBankActivity$2;

    invoke-direct {v1, p0}, Lcom/mh/movie/core/mvp/ui/activity/SelectBankActivity$2;-><init>(Lcom/mh/movie/core/mvp/ui/activity/SelectBankActivity;)V

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/ui/widget/SideBar;->setOnTouchingLetterChangedListener(Lcom/mh/movie/core/mvp/ui/widget/SideBar$a;)V

    .line 125
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/SelectBankActivity;->b:Lcom/jess/arms/mvp/b;

    check-cast v0, Lcom/mh/movie/core/mvp/presenter/SelectBankPresenter;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/presenter/SelectBankPresenter;->e()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)I
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 75
    sget p1, Lcom/mh/movie/core/R$layout;->activity_select_bank:I

    return p1
.end method

.method final synthetic a(Landroid/view/View;)V
    .locals 0

    .line 87
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/SelectBankActivity;->onBackPressed()V

    return-void
.end method

.method public a(Lcom/jess/arms/b/a/a;)V
    .locals 1
    .param p1    # Lcom/jess/arms/b/a/a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 66
    invoke-static {}, Lcom/mh/movie/core/a/a/bg;->a()Lcom/mh/movie/core/a/a/bg$a;

    move-result-object v0

    .line 67
    invoke-virtual {v0, p1}, Lcom/mh/movie/core/a/a/bg$a;->a(Lcom/jess/arms/b/a/a;)Lcom/mh/movie/core/a/a/bg$a;

    move-result-object p1

    new-instance v0, Lcom/mh/movie/core/a/b/dz;

    invoke-direct {v0, p0}, Lcom/mh/movie/core/a/b/dz;-><init>(Lcom/mh/movie/core/mvp/a/aw$b;)V

    .line 68
    invoke-virtual {p1, v0}, Lcom/mh/movie/core/a/a/bg$a;->a(Lcom/mh/movie/core/a/b/dz;)Lcom/mh/movie/core/a/a/bg$a;

    move-result-object p1

    .line 69
    invoke-virtual {p1}, Lcom/mh/movie/core/a/a/bg$a;->a()Lcom/mh/movie/core/a/a/de;

    move-result-object p1

    .line 70
    invoke-interface {p1, p0}, Lcom/mh/movie/core/a/a/de;->a(Lcom/mh/movie/core/mvp/ui/activity/SelectBankActivity;)V

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mh/movie/core/mvp/model/entity/response/BankResponse;",
            ">;)V"
        }
    .end annotation

    .line 182
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 183
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/SelectBankActivity;->f:Ljava/util/Map;

    .line 184
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/SelectBankActivity;->d:Ljava/util/List;

    .line 186
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mh/movie/core/mvp/model/entity/response/BankResponse;

    .line 187
    invoke-virtual {v2}, Lcom/mh/movie/core/mvp/model/entity/response/BankResponse;->getBankList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mh/movie/core/mvp/model/entity/response/BankResponse$BankListBean;

    .line 188
    iget-object v5, p0, Lcom/mh/movie/core/mvp/ui/activity/SelectBankActivity;->f:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/mh/movie/core/mvp/model/entity/response/BankResponse;->getGroupName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 189
    iget-object v5, p0, Lcom/mh/movie/core/mvp/ui/activity/SelectBankActivity;->f:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2}, Lcom/mh/movie/core/mvp/model/entity/response/BankResponse;->getGroupName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    iget-object v5, p0, Lcom/mh/movie/core/mvp/ui/activity/SelectBankActivity;->d:Ljava/util/List;

    invoke-virtual {v2}, Lcom/mh/movie/core/mvp/model/entity/response/BankResponse;->getGroupName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 193
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 196
    :cond_2
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/SelectBankActivity;->sidrbar:Lcom/mh/movie/core/mvp/ui/widget/SideBar;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/SelectBankActivity;->d:Ljava/util/List;

    invoke-virtual {p1, v1}, Lcom/mh/movie/core/mvp/ui/widget/SideBar;->setDataList(Ljava/util/List;)V

    .line 197
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/SelectBankActivity;->c:Lcom/mh/movie/core/mvp/ui/adapter/c;

    invoke-virtual {p1, v0}, Lcom/mh/movie/core/mvp/ui/adapter/c;->a(Ljava/util/List;)V

    .line 198
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/SelectBankActivity;->e:Lcom/mh/movie/core/mvp/ui/widget/recylerview/a;

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/SelectBankActivity;->f:Ljava/util/Map;

    invoke-virtual {p1, v0}, Lcom/mh/movie/core/mvp/ui/widget/recylerview/a;->a(Ljava/util/Map;)V

    return-void
.end method

.method public b(Ljava/lang/String;)I
    .locals 3

    .line 130
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/SelectBankActivity;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 131
    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/activity/SelectBankActivity;->f:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 132
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :cond_1
    const/4 p1, -0x1

    return p1
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

    .line 80
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/activity/SelectBankActivity;->e()V

    .line 81
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/activity/SelectBankActivity;->f()V

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    .line 174
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/SelectBankActivity;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    .line 176
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/SelectBankActivity;->sidrbar:Lcom/mh/movie/core/mvp/ui/widget/SideBar;

    invoke-virtual {v0, p1}, Lcom/mh/movie/core/mvp/ui/widget/SideBar;->setChoose(I)V

    :cond_0
    return-void
.end method

.method public c_(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 150
    invoke-static {p1}, Lcom/jess/arms/c/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    invoke-static {p1}, Lcom/jess/arms/c/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method public e_()V
    .locals 0

    return-void
.end method

.method public g_()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 167
    invoke-super {p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/ac;->onCreate(Landroid/os/Bundle;)V

    .line 169
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Activity;)Lbutterknife/Unbinder;

    return-void
.end method
