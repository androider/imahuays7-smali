.class public Lcom/mh/movie/core/mvp/ui/activity/CommentDetailActivity;
.super Lcom/mh/movie/core/mvp/ui/activity/ac;
.source "CommentDetailActivity.java"

# interfaces
.implements Lcom/mh/movie/core/mvp/a/j$b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mh/movie/core/mvp/ui/activity/ac<",
        "Lcom/mh/movie/core/mvp/presenter/CommentDetailPresenter;",
        ">;",
        "Lcom/mh/movie/core/mvp/a/j$b;"
    }
.end annotation


# instance fields
.field c:Lcom/mh/movie/core/mvp/ui/widget/CommentDetailView;

.field d:Lcom/mh/movie/core/mvp/ui/widget/StateView;

.field e:Lcom/mh/movie/core/mvp/model/entity/response/CommentResponse;

.field f:I

.field g:Lcom/mh/movie/core/mvp/ui/widget/CommentDetailView$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/activity/ac;-><init>()V

    const/4 v0, 0x0

    .line 47
    iput v0, p0, Lcom/mh/movie/core/mvp/ui/activity/CommentDetailActivity;->f:I

    .line 139
    new-instance v0, Lcom/mh/movie/core/mvp/ui/activity/CommentDetailActivity$1;

    invoke-direct {v0, p0}, Lcom/mh/movie/core/mvp/ui/activity/CommentDetailActivity$1;-><init>(Lcom/mh/movie/core/mvp/ui/activity/CommentDetailActivity;)V

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/CommentDetailActivity;->g:Lcom/mh/movie/core/mvp/ui/widget/CommentDetailView$a;

    return-void
.end method

.method static synthetic a(Lcom/mh/movie/core/mvp/ui/activity/CommentDetailActivity;)Lcom/jess/arms/mvp/b;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/mh/movie/core/mvp/ui/activity/CommentDetailActivity;->b:Lcom/jess/arms/mvp/b;

    return-object p0
.end method

.method static synthetic b(Lcom/mh/movie/core/mvp/ui/activity/CommentDetailActivity;)Lcom/jess/arms/mvp/b;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/mh/movie/core/mvp/ui/activity/CommentDetailActivity;->b:Lcom/jess/arms/mvp/b;

    return-object p0
.end method

.method static synthetic c(Lcom/mh/movie/core/mvp/ui/activity/CommentDetailActivity;)Lcom/jess/arms/mvp/b;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/mh/movie/core/mvp/ui/activity/CommentDetailActivity;->b:Lcom/jess/arms/mvp/b;

    return-object p0
.end method

.method static synthetic d(Lcom/mh/movie/core/mvp/ui/activity/CommentDetailActivity;)Lcom/jess/arms/mvp/b;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/mh/movie/core/mvp/ui/activity/CommentDetailActivity;->b:Lcom/jess/arms/mvp/b;

    return-object p0
.end method

.method private e()V
    .locals 0

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)I
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 61
    sget p1, Lcom/mh/movie/core/R$layout;->activity_comment_detail:I

    return p1
.end method

.method public a(IILjava/lang/Integer;)V
    .locals 1

    .line 208
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/CommentDetailActivity;->c:Lcom/mh/movie/core/mvp/ui/widget/CommentDetailView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/mh/movie/core/mvp/ui/widget/CommentDetailView;->a(IILjava/lang/Integer;)V

    return-void
.end method

.method public a(Lcom/jess/arms/b/a/a;)V
    .locals 1
    .param p1    # Lcom/jess/arms/b/a/a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 52
    invoke-static {}, Lcom/mh/movie/core/a/a/v;->a()Lcom/mh/movie/core/a/a/v$a;

    move-result-object v0

    .line 53
    invoke-virtual {v0, p1}, Lcom/mh/movie/core/a/a/v$a;->a(Lcom/jess/arms/b/a/a;)Lcom/mh/movie/core/a/a/v$a;

    move-result-object p1

    new-instance v0, Lcom/mh/movie/core/a/b/y;

    invoke-direct {v0, p0}, Lcom/mh/movie/core/a/b/y;-><init>(Lcom/mh/movie/core/mvp/a/j$b;)V

    .line 54
    invoke-virtual {p1, v0}, Lcom/mh/movie/core/a/a/v$a;->a(Lcom/mh/movie/core/a/b/y;)Lcom/mh/movie/core/a/a/v$a;

    move-result-object p1

    .line 55
    invoke-virtual {p1}, Lcom/mh/movie/core/a/a/v$a;->a()Lcom/mh/movie/core/a/a/j;

    move-result-object p1

    .line 56
    invoke-interface {p1, p0}, Lcom/mh/movie/core/a/a/j;->a(Lcom/mh/movie/core/mvp/ui/activity/CommentDetailActivity;)V

    return-void
.end method

.method public a(Lcom/mh/movie/core/mvp/model/entity/response/CommentResponse;I)V
    .locals 0

    .line 213
    iget-object p2, p0, Lcom/mh/movie/core/mvp/ui/activity/CommentDetailActivity;->c:Lcom/mh/movie/core/mvp/ui/widget/CommentDetailView;

    invoke-virtual {p2, p1}, Lcom/mh/movie/core/mvp/ui/widget/CommentDetailView;->a(Lcom/mh/movie/core/mvp/model/entity/response/CommentResponse;)V

    return-void
.end method

.method public a(Ljava/util/List;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mh/movie/core/mvp/model/entity/response/CommentResponse;",
            ">;I)V"
        }
    .end annotation

    .line 198
    iget-object p2, p0, Lcom/mh/movie/core/mvp/ui/activity/CommentDetailActivity;->c:Lcom/mh/movie/core/mvp/ui/widget/CommentDetailView;

    invoke-virtual {p2, p1}, Lcom/mh/movie/core/mvp/ui/widget/CommentDetailView;->a(Ljava/util/List;)V

    return-void
.end method

.method public a(ZLjava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 127
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/CommentDetailActivity;->d:Lcom/mh/movie/core/mvp/ui/widget/StateView;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/mh/movie/core/mvp/ui/widget/StateView;->setState(I)V

    :cond_0
    return-void
.end method

.method public a(ZLjava/lang/Throwable;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 134
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/CommentDetailActivity;->d:Lcom/mh/movie/core/mvp/ui/widget/StateView;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/mh/movie/core/mvp/ui/widget/StateView;->setState(I)V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 4
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 67
    sget p1, Lcom/mh/movie/core/R$id;->topbar:I

    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/CommentDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/mh/movie/core/mvp/ui/widget/Topbar;

    .line 68
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/CommentDetailActivity;->r:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/mh/movie/core/mvp/ui/utils/UIUtils;->initTopbar(Landroid/content/Context;Landroid/view/View;Z)V

    .line 69
    sget p1, Lcom/mh/movie/core/R$id;->cdv_detail_view:I

    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/CommentDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/mh/movie/core/mvp/ui/widget/CommentDetailView;

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/CommentDetailActivity;->c:Lcom/mh/movie/core/mvp/ui/widget/CommentDetailView;

    .line 70
    sget p1, Lcom/mh/movie/core/R$id;->sv_state:I

    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/CommentDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/mh/movie/core/mvp/ui/widget/StateView;

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/CommentDetailActivity;->d:Lcom/mh/movie/core/mvp/ui/widget/StateView;

    .line 71
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/CommentDetailActivity;->c:Lcom/mh/movie/core/mvp/ui/widget/CommentDetailView;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/ui/widget/CommentDetailView;->b()V

    .line 72
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/CommentDetailActivity;->c:Lcom/mh/movie/core/mvp/ui/widget/CommentDetailView;

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/CommentDetailActivity;->g:Lcom/mh/movie/core/mvp/ui/widget/CommentDetailView$a;

    invoke-virtual {p1, v0}, Lcom/mh/movie/core/mvp/ui/widget/CommentDetailView;->setOnCallBack(Lcom/mh/movie/core/mvp/ui/widget/CommentDetailView$a;)V

    .line 73
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/CommentDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "comment_bean"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/mh/movie/core/mvp/model/entity/response/CommentResponse;

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/CommentDetailActivity;->e:Lcom/mh/movie/core/mvp/model/entity/response/CommentResponse;

    .line 74
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/CommentDetailActivity;->e:Lcom/mh/movie/core/mvp/model/entity/response/CommentResponse;

    if-eqz p1, :cond_0

    .line 75
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/CommentDetailActivity;->b:Lcom/jess/arms/mvp/b;

    check-cast p1, Lcom/mh/movie/core/mvp/presenter/CommentDetailPresenter;

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/CommentDetailActivity;->e:Lcom/mh/movie/core/mvp/model/entity/response/CommentResponse;

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/model/entity/response/CommentResponse;->getVideoInfoId()I

    move-result v1

    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/activity/CommentDetailActivity;->e:Lcom/mh/movie/core/mvp/model/entity/response/CommentResponse;

    invoke-virtual {v2}, Lcom/mh/movie/core/mvp/model/entity/response/CommentResponse;->getId()I

    move-result v2

    iget-object v3, p0, Lcom/mh/movie/core/mvp/ui/activity/CommentDetailActivity;->e:Lcom/mh/movie/core/mvp/model/entity/response/CommentResponse;

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/mh/movie/core/mvp/presenter/CommentDetailPresenter;->a(IIILcom/mh/movie/core/mvp/model/entity/response/CommentResponse;)V

    .line 76
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/CommentDetailActivity;->r:Landroid/content/Context;

    invoke-static {p1}, Lcom/mh/movie/core/mvp/ui/utils/NetStateUtils;->getNetWorkStates(Landroid/content/Context;)I

    move-result p1

    if-gez p1, :cond_0

    .line 77
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/CommentDetailActivity;->d:Lcom/mh/movie/core/mvp/ui/widget/StateView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/mh/movie/core/mvp/ui/widget/StateView;->setState(I)V

    .line 80
    :cond_0
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/activity/CommentDetailActivity;->e()V

    return-void
.end method

.method public b(Ljava/util/List;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mh/movie/core/mvp/model/entity/response/CommentResponse;",
            ">;I)V"
        }
    .end annotation

    .line 203
    iget-object p2, p0, Lcom/mh/movie/core/mvp/ui/activity/CommentDetailActivity;->c:Lcom/mh/movie/core/mvp/ui/widget/CommentDetailView;

    invoke-virtual {p2, p1}, Lcom/mh/movie/core/mvp/ui/widget/CommentDetailView;->b(Ljava/util/List;)V

    return-void
.end method

.method public c_(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 181
    invoke-static {p1}, Lcom/jess/arms/c/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    invoke-static {p1}, Lcom/jess/arms/c/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method public e_()V
    .locals 0

    return-void
.end method

.method public mobileNectWork(Ljava/lang/String;)V
    .locals 4
    .annotation runtime Lorg/simple/eventbus/Subscriber;
        tag = "CONNECTED_MOBILE"
    .end annotation

    .line 109
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/CommentDetailActivity;->d:Lcom/mh/movie/core/mvp/ui/widget/StateView;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/mh/movie/core/mvp/ui/widget/StateView;->setState(I)V

    .line 110
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/CommentDetailActivity;->e:Lcom/mh/movie/core/mvp/model/entity/response/CommentResponse;

    if-eqz p1, :cond_0

    .line 111
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/CommentDetailActivity;->b:Lcom/jess/arms/mvp/b;

    check-cast p1, Lcom/mh/movie/core/mvp/presenter/CommentDetailPresenter;

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/CommentDetailActivity;->e:Lcom/mh/movie/core/mvp/model/entity/response/CommentResponse;

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/model/entity/response/CommentResponse;->getVideoInfoId()I

    move-result v1

    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/activity/CommentDetailActivity;->e:Lcom/mh/movie/core/mvp/model/entity/response/CommentResponse;

    invoke-virtual {v2}, Lcom/mh/movie/core/mvp/model/entity/response/CommentResponse;->getId()I

    move-result v2

    iget-object v3, p0, Lcom/mh/movie/core/mvp/ui/activity/CommentDetailActivity;->e:Lcom/mh/movie/core/mvp/model/entity/response/CommentResponse;

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/mh/movie/core/mvp/presenter/CommentDetailPresenter;->a(IIILcom/mh/movie/core/mvp/model/entity/response/CommentResponse;)V

    :cond_0
    return-void
.end method

.method public noNectWork(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lorg/simple/eventbus/Subscriber;
        tag = "CONNECTED_WHITHOUT_NET"
    .end annotation

    .line 104
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/CommentDetailActivity;->d:Lcom/mh/movie/core/mvp/ui/widget/StateView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/mh/movie/core/mvp/ui/widget/StateView;->setState(I)V

    return-void
.end method

.method public wifiNectWork(Ljava/lang/String;)V
    .locals 4
    .annotation runtime Lorg/simple/eventbus/Subscriber;
        tag = "CONNECT_WIFI"
    .end annotation

    .line 117
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/CommentDetailActivity;->d:Lcom/mh/movie/core/mvp/ui/widget/StateView;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/mh/movie/core/mvp/ui/widget/StateView;->setState(I)V

    .line 118
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/CommentDetailActivity;->e:Lcom/mh/movie/core/mvp/model/entity/response/CommentResponse;

    if-eqz p1, :cond_0

    .line 119
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/CommentDetailActivity;->b:Lcom/jess/arms/mvp/b;

    check-cast p1, Lcom/mh/movie/core/mvp/presenter/CommentDetailPresenter;

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/CommentDetailActivity;->e:Lcom/mh/movie/core/mvp/model/entity/response/CommentResponse;

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/model/entity/response/CommentResponse;->getVideoInfoId()I

    move-result v1

    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/activity/CommentDetailActivity;->e:Lcom/mh/movie/core/mvp/model/entity/response/CommentResponse;

    invoke-virtual {v2}, Lcom/mh/movie/core/mvp/model/entity/response/CommentResponse;->getId()I

    move-result v2

    iget-object v3, p0, Lcom/mh/movie/core/mvp/ui/activity/CommentDetailActivity;->e:Lcom/mh/movie/core/mvp/model/entity/response/CommentResponse;

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/mh/movie/core/mvp/presenter/CommentDetailPresenter;->a(IIILcom/mh/movie/core/mvp/model/entity/response/CommentResponse;)V

    :cond_0
    return-void
.end method
