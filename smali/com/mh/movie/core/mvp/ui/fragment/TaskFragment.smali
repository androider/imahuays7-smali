.class public Lcom/mh/movie/core/mvp/ui/fragment/TaskFragment;
.super Lcom/mh/movie/core/mvp/ui/fragment/h;
.source "TaskFragment.java"

# interfaces
.implements Lcom/mh/movie/core/mvp/a/bd$b;
.implements Lcom/mh/movie/core/mvp/ui/widget/StateView$a;
.implements Lcom/mh/movie/core/mvp/ui/widget/TaskWidget$a;
.implements Lme/jessyan/autosize/internal/CancelAdapt;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mh/movie/core/mvp/ui/fragment/h<",
        "Lcom/mh/movie/core/mvp/presenter/TaskPresenter;",
        ">;",
        "Lcom/mh/movie/core/mvp/a/bd$b;",
        "Lcom/mh/movie/core/mvp/ui/widget/StateView$a;",
        "Lcom/mh/movie/core/mvp/ui/widget/TaskWidget$a;",
        "Lme/jessyan/autosize/internal/CancelAdapt;"
    }
.end annotation


# instance fields
.field c:Lbutterknife/Unbinder;

.field d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field e:Z

.field f:I

.field llContent:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c01cf
    .end annotation
.end field

.field llTaskExchange:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c0225
    .end annotation
.end field

.field llTaskInvite:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c0226
    .end annotation
.end field

.field nestedScrollView:Landroid/support/v4/widget/NestedScrollView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c0271
    .end annotation
.end field

.field rvTaskList:Landroid/support/v7/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c0312
    .end annotation
.end field

.field svState:Lcom/mh/movie/core/mvp/ui/widget/StateView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c035b
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

    .line 62
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/fragment/h;-><init>()V

    const/4 v0, 0x1

    .line 84
    iput-boolean v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/TaskFragment;->e:Z

    return-void
.end method

.method static synthetic a(Lcom/mh/movie/core/mvp/ui/fragment/TaskFragment;)V
    .locals 0

    .line 62
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/fragment/TaskFragment;->k()V

    return-void
.end method

.method private f()V
    .locals 3

    .line 156
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/TaskFragment;->rvTaskList:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lcom/mh/movie/core/mvp/ui/fragment/TaskFragment$1;

    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/fragment/TaskFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/mh/movie/core/mvp/ui/fragment/TaskFragment$1;-><init>(Lcom/mh/movie/core/mvp/ui/fragment/TaskFragment;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 162
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/TaskFragment;->rvTaskList:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lcom/mh/movie/core/mvp/ui/fragment/TaskFragment$2;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/mh/movie/core/mvp/ui/fragment/TaskFragment$2;-><init>(Lcom/mh/movie/core/mvp/ui/fragment/TaskFragment;Z)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method private k()V
    .locals 2

    .line 263
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/TaskFragment;->b:Lcom/jess/arms/mvp/b;

    check-cast v0, Lcom/mh/movie/core/mvp/presenter/TaskPresenter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/presenter/TaskPresenter;->b(Z)V

    return-void
.end method

.method private l()V
    .locals 4

    .line 282
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/TaskFragment;->d:Ljava/util/Map;

    .line 283
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/TaskFragment;->d:Ljava/util/Map;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget v3, Lcom/mh/movie/core/R$mipmap;->icon_missioncenter_invitefriends:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/TaskFragment;->d:Ljava/util/Map;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget v3, Lcom/mh/movie/core/R$mipmap;->icon_missioncenter_watch:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/TaskFragment;->d:Ljava/util/Map;

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget v3, Lcom/mh/movie/core/R$mipmap;->icon_missioncenter_write:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/TaskFragment;->d:Ljava/util/Map;

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget v3, Lcom/mh/movie/core/R$mipmap;->icon_missioncenter_danmu:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/TaskFragment;->d:Ljava/util/Map;

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget v3, Lcom/mh/movie/core/R$mipmap;->icon_missioncenter_shaarevideo:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/TaskFragment;->d:Ljava/util/Map;

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget v3, Lcom/mh/movie/core/R$mipmap;->icon_missioncenter_questionnaire:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/TaskFragment;->d:Ljava/util/Map;

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget v3, Lcom/mh/movie/core/R$mipmap;->icon_missioncenter_erweima:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/TaskFragment;->d:Ljava/util/Map;

    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget v3, Lcom/mh/movie/core/R$mipmap;->icon_missioncenter_ad:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/TaskFragment;->d:Ljava/util/Map;

    const/16 v2, 0xc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget v3, Lcom/mh/movie/core/R$mipmap;->icon_task_user_sign:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/TaskFragment;->svState:Lcom/mh/movie/core/mvp/ui/widget/StateView;

    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/fragment/TaskFragment;->llContent:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Lcom/mh/movie/core/mvp/ui/widget/StateView;->setBindView(Landroid/view/View;)V

    .line 294
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/TaskFragment;->svState:Lcom/mh/movie/core/mvp/ui/widget/StateView;

    invoke-virtual {v0, p0}, Lcom/mh/movie/core/mvp/ui/widget/StateView;->setCallBack(Lcom/mh/movie/core/mvp/ui/widget/StateView$a;)V

    .line 295
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/fragment/TaskFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/utils/NetStateUtils;->getNetWorkStates(Landroid/content/Context;)I

    move-result v0

    if-gez v0, :cond_0

    .line 296
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/TaskFragment;->svState:Lcom/mh/movie/core/mvp/ui/widget/StateView;

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/ui/widget/StateView;->setState(I)V

    :cond_0
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

    .line 104
    sget p3, Lcom/mh/movie/core/R$layout;->fragment_task:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public a(I)V
    .locals 0

    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 109
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/fragment/TaskFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/TaskFragment;->topbar:Lcom/mh/movie/core/mvp/ui/widget/Topbar;

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/mh/movie/core/mvp/ui/utils/UIUtils;->initTopbar(Landroid/content/Context;Landroid/view/View;Z)V

    .line 110
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/fragment/TaskFragment;->f()V

    .line 111
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/fragment/TaskFragment;->l()V

    return-void
.end method

.method public a(Lcom/jess/arms/b/a/a;)V
    .locals 1
    .param p1    # Lcom/jess/arms/b/a/a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 95
    invoke-static {}, Lcom/mh/movie/core/a/a/bn;->a()Lcom/mh/movie/core/a/a/bn$a;

    move-result-object v0

    .line 96
    invoke-virtual {v0, p1}, Lcom/mh/movie/core/a/a/bn$a;->a(Lcom/jess/arms/b/a/a;)Lcom/mh/movie/core/a/a/bn$a;

    move-result-object p1

    new-instance v0, Lcom/mh/movie/core/a/b/eu;

    invoke-direct {v0, p0}, Lcom/mh/movie/core/a/b/eu;-><init>(Lcom/mh/movie/core/mvp/a/bd$b;)V

    .line 97
    invoke-virtual {p1, v0}, Lcom/mh/movie/core/a/a/bn$a;->a(Lcom/mh/movie/core/a/b/eu;)Lcom/mh/movie/core/a/a/bn$a;

    move-result-object p1

    .line 98
    invoke-virtual {p1}, Lcom/mh/movie/core/a/a/bn$a;->a()Lcom/mh/movie/core/a/a/dl;

    move-result-object p1

    .line 99
    invoke-interface {p1, p0}, Lcom/mh/movie/core/a/a/dl;->a(Lcom/mh/movie/core/mvp/ui/fragment/TaskFragment;)V

    return-void
.end method

.method public a(Lcom/mh/movie/core/mvp/model/entity/response/UserTaskResponse;)V
    .locals 7

    const/4 v0, 0x0

    .line 374
    iput-boolean v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/TaskFragment;->e:Z

    .line 375
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/fragment/TaskFragment;->svState:Lcom/mh/movie/core/mvp/ui/widget/StateView;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/mh/movie/core/mvp/ui/widget/StateView;->setState(I)V

    .line 376
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/fragment/TaskFragment;->llContent:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 377
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 379
    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/UserTaskResponse;->getList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mh/movie/core/mvp/model/entity/response/UserTaskResponse$ListBean;

    .line 381
    invoke-virtual {v3}, Lcom/mh/movie/core/mvp/model/entity/response/UserTaskResponse$ListBean;->getAuthId()I

    move-result v4

    const/16 v5, 0xc

    if-ne v4, v5, :cond_1

    .line 383
    invoke-virtual {v3}, Lcom/mh/movie/core/mvp/model/entity/response/UserTaskResponse$ListBean;->getMoney()I

    move-result v4

    iput v4, p0, Lcom/mh/movie/core/mvp/ui/fragment/TaskFragment;->f:I

    .line 386
    :cond_1
    iget-object v4, p0, Lcom/mh/movie/core/mvp/ui/fragment/TaskFragment;->d:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-virtual {v3}, Lcom/mh/movie/core/mvp/model/entity/response/UserTaskResponse$ListBean;->getAuthId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Lcom/mh/movie/core/mvp/model/entity/response/UserTaskResponse$ListBean;->getIsShow()I

    move-result v4

    const/4 v6, 0x1

    if-ne v4, v6, :cond_0

    .line 387
    invoke-virtual {v3}, Lcom/mh/movie/core/mvp/model/entity/response/UserTaskResponse$ListBean;->getAuthId()I

    move-result v4

    .line 388
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-ne v4, v5, :cond_0

    .line 390
    invoke-virtual {v3}, Lcom/mh/movie/core/mvp/model/entity/response/UserTaskResponse$ListBean;->getCompleStatus()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    goto :goto_1

    :cond_2
    const/4 v6, 0x0

    :goto_1
    move v2, v6

    goto :goto_0

    .line 395
    :cond_3
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/fragment/TaskFragment;->rvTaskList:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object p1

    check-cast p1, Lcom/mh/movie/core/mvp/ui/adapter/c;

    invoke-virtual {p1, v1}, Lcom/mh/movie/core/mvp/ui/adapter/c;->a(Ljava/util/List;)V

    .line 398
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/fragment/TaskFragment;->nestedScrollView:Landroid/support/v4/widget/NestedScrollView;

    invoke-virtual {p1, v0}, Landroid/support/v4/widget/NestedScrollView;->fling(I)V

    .line 399
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/fragment/TaskFragment;->nestedScrollView:Landroid/support/v4/widget/NestedScrollView;

    invoke-virtual {p1, v0, v0}, Landroid/support/v4/widget/NestedScrollView;->smoothScrollTo(II)V

    .line 400
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/fragment/TaskFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/mh/movie/core/mvp/ui/activity/main/MainActivity;

    invoke-virtual {p1, v2}, Lcom/mh/movie/core/mvp/ui/activity/main/MainActivity;->a(Z)V

    return-void
.end method

.method public a(ZLjava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 143
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/fragment/TaskFragment;->svState:Lcom/mh/movie/core/mvp/ui/widget/StateView;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/mh/movie/core/mvp/ui/widget/StateView;->setState(I)V

    :cond_0
    return-void
.end method

.method public a(ZLjava/lang/Throwable;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 150
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/fragment/TaskFragment;->svState:Lcom/mh/movie/core/mvp/ui/widget/StateView;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/mh/movie/core/mvp/ui/widget/StateView;->setState(I)V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 1

    .line 314
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/fragment/TaskFragment;->i()Lcom/mh/movie/core/mvp/ui/widget/dialog/LoadingDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/widget/dialog/LoadingDialog;->dismiss()V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    .line 274
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/fragment/TaskFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/mh/movie/core/mvp/ui/utils/T;->show(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    return-void
.end method

.method public c()V
    .locals 5

    .line 268
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/TaskFragment;->b:Lcom/jess/arms/mvp/b;

    check-cast v0, Lcom/mh/movie/core/mvp/presenter/TaskPresenter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/presenter/TaskPresenter;->a(Z)V

    .line 269
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/fragment/TaskFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "\u7b7e\u5230\u6210\u529f\uff0c+%d\u9ebb\u82b1\u5e01"

    new-array v1, v1, [Ljava/lang/Object;

    iget v3, p0, Lcom/mh/movie/core/mvp/ui/fragment/TaskFragment;->f:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v1, v4

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mh/movie/core/mvp/ui/utils/CustomToast;->makeText(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public c_(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 319
    invoke-static {p1}, Lcom/jess/arms/c/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    invoke-static {p1}, Lcom/jess/arms/c/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method public d()V
    .locals 1

    .line 417
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/fragment/TaskFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/ui/activity/main/MainActivity;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/activity/main/MainActivity;->h()V

    return-void
.end method

.method public e()V
    .locals 2

    .line 278
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/fragment/TaskFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/ui/activity/main/MainActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/ui/activity/main/MainActivity;->c(I)V

    return-void
.end method

.method public e_()V
    .locals 2

    .line 308
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/fragment/TaskFragment;->i()Lcom/mh/movie/core/mvp/ui/widget/dialog/LoadingDialog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/ui/widget/dialog/LoadingDialog;->setCancelable(Z)V

    .line 309
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/fragment/TaskFragment;->i()Lcom/mh/movie/core/mvp/ui/widget/dialog/LoadingDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/widget/dialog/LoadingDialog;->show()V

    return-void
.end method

.method public g()V
    .locals 0

    return-void
.end method

.method public h()V
    .locals 2

    .line 410
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/fragment/TaskFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/mh/movie/core/mvp/ui/b;->i:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/jess/arms/c/d;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 411
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/TaskFragment;->b:Lcom/jess/arms/mvp/b;

    check-cast v0, Lcom/mh/movie/core/mvp/presenter/TaskPresenter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/presenter/TaskPresenter;->a(Z)V

    :cond_0
    return-void
.end method

.method public mobileNectWork(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lorg/simple/eventbus/Subscriber;
        tag = "CONNECTED_MOBILE"
    .end annotation

    .line 132
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/fragment/TaskFragment;->svState:Lcom/mh/movie/core/mvp/ui/widget/StateView;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/mh/movie/core/mvp/ui/widget/StateView;->setState(I)V

    return-void
.end method

.method public noNectWork(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lorg/simple/eventbus/Subscriber;
        tag = "CONNECTED_WHITHOUT_NET"
    .end annotation

    .line 127
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/fragment/TaskFragment;->svState:Lcom/mh/movie/core/mvp/ui/widget/StateView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/mh/movie/core/mvp/ui/widget/StateView;->setState(I)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 337
    invoke-super {p0, p1, p2, p3}, Lcom/mh/movie/core/mvp/ui/fragment/h;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    .line 338
    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    move-result-object p2

    iput-object p2, p0, Lcom/mh/movie/core/mvp/ui/fragment/TaskFragment;->c:Lbutterknife/Unbinder;

    return-object p1
.end method

.method public onDestroyView()V
    .locals 1

    .line 344
    invoke-super {p0}, Lcom/mh/movie/core/mvp/ui/fragment/h;->onDestroyView()V

    .line 345
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/TaskFragment;->c:Lbutterknife/Unbinder;

    invoke-interface {v0}, Lbutterknife/Unbinder;->unbind()V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 121
    invoke-super {p0}, Lcom/mh/movie/core/mvp/ui/fragment/h;->onResume()V

    .line 122
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/TaskFragment;->b:Lcom/jess/arms/mvp/b;

    check-cast v0, Lcom/mh/movie/core/mvp/presenter/TaskPresenter;

    iget-boolean v1, p0, Lcom/mh/movie/core/mvp/ui/fragment/TaskFragment;->e:Z

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/presenter/TaskPresenter;->a(Z)V

    return-void
.end method

.method public onViewClicked(Landroid/view/View;)V
    .locals 2
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0c0226,
            0x7f0c0225
        }
    .end annotation

    .line 356
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 357
    sget v0, Lcom/mh/movie/core/R$id;->ll_task_invite:I

    if-ne p1, v0, :cond_1

    .line 358
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/fragment/TaskFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    sget-object v0, Lcom/mh/movie/core/mvp/ui/b;->i:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/jess/arms/c/d;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 359
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/fragment/TaskFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/mh/movie/core/mvp/ui/activity/MyInviteActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/ui/fragment/TaskFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 361
    :cond_0
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/fragment/TaskFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/mh/movie/core/mvp/ui/activity/main/MainActivity;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/ui/activity/main/MainActivity;->h()V

    goto :goto_0

    .line 363
    :cond_1
    sget v0, Lcom/mh/movie/core/R$id;->ll_task_exchange:I

    if-ne p1, v0, :cond_3

    .line 364
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/fragment/TaskFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    sget-object v0, Lcom/mh/movie/core/mvp/ui/b;->i:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/jess/arms/c/d;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 365
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/fragment/TaskFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/mh/movie/core/mvp/ui/activity/ExChangeActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/ui/fragment/TaskFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 367
    :cond_2
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/fragment/TaskFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/mh/movie/core/mvp/ui/activity/main/MainActivity;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/ui/activity/main/MainActivity;->h()V

    :cond_3
    :goto_0
    return-void
.end method

.method public refreshTaskDat(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lorg/simple/eventbus/Subscriber;
        tag = "refresh_task_data"
    .end annotation

    .line 116
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/fragment/TaskFragment;->b:Lcom/jess/arms/mvp/b;

    check-cast p1, Lcom/mh/movie/core/mvp/presenter/TaskPresenter;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/mh/movie/core/mvp/presenter/TaskPresenter;->a(Z)V

    return-void
.end method

.method public wifiNectWork(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lorg/simple/eventbus/Subscriber;
        tag = "CONNECT_WIFI"
    .end annotation

    .line 137
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/fragment/TaskFragment;->svState:Lcom/mh/movie/core/mvp/ui/widget/StateView;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/mh/movie/core/mvp/ui/widget/StateView;->setState(I)V

    return-void
.end method
