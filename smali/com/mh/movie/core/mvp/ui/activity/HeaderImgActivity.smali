.class public Lcom/mh/movie/core/mvp/ui/activity/HeaderImgActivity;
.super Lcom/mh/movie/core/mvp/ui/activity/ac;
.source "HeaderImgActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/mh/movie/core/mvp/a/u$b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mh/movie/core/mvp/ui/activity/ac<",
        "Lcom/mh/movie/core/mvp/presenter/HeaderImgPresenter;",
        ">;",
        "Landroid/view/View$OnClickListener;",
        "Lcom/mh/movie/core/mvp/a/u$b;"
    }
.end annotation


# instance fields
.field private c:Lcom/mh/movie/core/mvp/ui/adapter/k;

.field recyclerHeaderImg:Landroid/support/v7/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c02c1
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

    .line 38
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/activity/ac;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)I
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 59
    sget p1, Lcom/mh/movie/core/R$layout;->activity_header_img:I

    return p1
.end method

.method public a(Lcom/jess/arms/b/a/a;)V
    .locals 1
    .param p1    # Lcom/jess/arms/b/a/a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 50
    invoke-static {}, Lcom/mh/movie/core/a/a/ag;->a()Lcom/mh/movie/core/a/a/ag$a;

    move-result-object v0

    .line 51
    invoke-virtual {v0, p1}, Lcom/mh/movie/core/a/a/ag$a;->a(Lcom/jess/arms/b/a/a;)Lcom/mh/movie/core/a/a/ag$a;

    move-result-object p1

    new-instance v0, Lcom/mh/movie/core/a/b/bc;

    invoke-direct {v0, p0}, Lcom/mh/movie/core/a/b/bc;-><init>(Lcom/mh/movie/core/mvp/a/u$b;)V

    .line 52
    invoke-virtual {p1, v0}, Lcom/mh/movie/core/a/a/ag$a;->a(Lcom/mh/movie/core/a/b/bc;)Lcom/mh/movie/core/a/a/ag$a;

    move-result-object p1

    .line 53
    invoke-virtual {p1}, Lcom/mh/movie/core/a/a/ag$a;->a()Lcom/mh/movie/core/a/a/ce;

    move-result-object p1

    .line 54
    invoke-interface {p1, p0}, Lcom/mh/movie/core/a/a/ce;->a(Lcom/mh/movie/core/mvp/ui/activity/HeaderImgActivity;)V

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mh/movie/core/mvp/model/entity/response/HeadPictureResponse;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 117
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 118
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mh/movie/core/mvp/model/entity/response/HeadPictureResponse;

    invoke-virtual {v2}, Lcom/mh/movie/core/mvp/model/entity/response/HeadPictureResponse;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/mh/movie/core/mvp/ui/b;->a()Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;->getAvatarUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 119
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/model/entity/response/HeadPictureResponse;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/mh/movie/core/mvp/model/entity/response/HeadPictureResponse;->setSelect(Z)V

    move v0, v1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 124
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/HeaderImgActivity;->c:Lcom/mh/movie/core/mvp/ui/adapter/k;

    invoke-virtual {v1, p1, v0}, Lcom/mh/movie/core/mvp/ui/adapter/k;->a(Ljava/util/List;I)V

    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 64
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/HeaderImgActivity;->b:Lcom/jess/arms/mvp/b;

    check-cast p1, Lcom/mh/movie/core/mvp/presenter/HeaderImgPresenter;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/mh/movie/core/mvp/presenter/HeaderImgPresenter;->a(Z)V

    .line 66
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/HeaderImgActivity;->r:Landroid/content/Context;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/HeaderImgActivity;->topbar:Lcom/mh/movie/core/mvp/ui/widget/Topbar;

    invoke-static {p1, v1, v0}, Lcom/mh/movie/core/mvp/ui/utils/UIUtils;->initTopbar(Landroid/content/Context;Landroid/view/View;Z)V

    .line 67
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/HeaderImgActivity;->recyclerHeaderImg:Landroid/support/v7/widget/RecyclerView;

    new-instance v0, Landroid/support/v7/widget/GridLayoutManager;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/HeaderImgActivity;->r:Landroid/content/Context;

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 74
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/HeaderImgActivity;->r:Landroid/content/Context;

    invoke-static {p1}, Lcom/mh/movie/core/mvp/ui/utils/PixelsUtils;->getAndroidScreenProperty(Landroid/content/Context;)Lcom/mh/movie/core/mvp/model/entity/PixelsEntity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/PixelsEntity;->getWidth()I

    move-result p1

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/HeaderImgActivity;->r:Landroid/content/Context;

    const/high16 v1, 0x42480000    # 50.0f

    invoke-static {v0, v1}, Lcom/jess/arms/c/e;->a(Landroid/content/Context;F)F

    move-result v0

    float-to-int v0, v0

    sub-int/2addr p1, v0

    div-int/2addr p1, v2

    .line 76
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/HeaderImgActivity;->recyclerHeaderImg:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lcom/mh/movie/core/mvp/ui/adapter/k;

    invoke-direct {v1, p1}, Lcom/mh/movie/core/mvp/ui/adapter/k;-><init>(I)V

    iput-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/HeaderImgActivity;->c:Lcom/mh/movie/core/mvp/ui/adapter/k;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 78
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/HeaderImgActivity;->topbar:Lcom/mh/movie/core/mvp/ui/widget/Topbar;

    invoke-virtual {p1, p0}, Lcom/mh/movie/core/mvp/ui/widget/Topbar;->setRightBarClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    .line 129
    invoke-static {}, Lcom/mh/movie/core/mvp/ui/b;->a()Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;->setAvatarUrl(Ljava/lang/String;)V

    .line 130
    invoke-static {}, Lorg/simple/eventbus/EventBus;->getDefault()Lorg/simple/eventbus/EventBus;

    move-result-object p1

    const-string v0, ""

    const-string v1, "updateUserInfo"

    invoke-virtual {p1, v0, v1}, Lorg/simple/eventbus/EventBus;->post(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 131
    sput-boolean p1, Lcom/mh/movie/core/mvp/ui/activity/SettingActivity;->d:Z

    .line 132
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/HeaderImgActivity;->finish()V

    return-void
.end method

.method public c_(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 93
    invoke-static {p1}, Lcom/jess/arms/c/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    invoke-static {p1}, Lcom/jess/arms/c/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method public e_()V
    .locals 0

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 137
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/HeaderImgActivity;->b:Lcom/jess/arms/mvp/b;

    check-cast p1, Lcom/mh/movie/core/mvp/presenter/HeaderImgPresenter;

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/HeaderImgActivity;->c:Lcom/mh/movie/core/mvp/ui/adapter/k;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/adapter/k;->a()Lcom/mh/movie/core/mvp/model/entity/response/HeadPictureResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/response/HeadPictureResponse;->getId()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/mh/movie/core/mvp/presenter/HeaderImgPresenter;->a(IZ)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 110
    invoke-super {p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/ac;->onCreate(Landroid/os/Bundle;)V

    .line 111
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Activity;)Lbutterknife/Unbinder;

    return-void
.end method
