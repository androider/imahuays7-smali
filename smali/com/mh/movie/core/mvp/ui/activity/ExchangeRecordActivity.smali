.class public Lcom/mh/movie/core/mvp/ui/activity/ExchangeRecordActivity;
.super Lcom/mh/movie/core/mvp/ui/activity/ac;
.source "ExchangeRecordActivity.java"

# interfaces
.implements Lcom/mh/movie/core/mvp/a/o$b;
.implements Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mh/movie/core/mvp/ui/activity/ac<",
        "Lcom/mh/movie/core/mvp/presenter/ExchangeRecordPresenter;",
        ">;",
        "Lcom/mh/movie/core/mvp/a/o$b;",
        "Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper$a;"
    }
.end annotation


# instance fields
.field c:Lcom/mh/movie/core/mvp/ui/adapter/c;

.field rwExchangeRecord:Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c0313
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

    .line 39
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/activity/ac;-><init>()V

    return-void
.end method

.method private g()V
    .locals 2

    .line 74
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/ExchangeRecordActivity;->r:Landroid/content/Context;

    sget v1, Lcom/mh/movie/core/R$color;->white:I

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    const/4 v1, 0x1

    invoke-static {p0, v1, v0}, Lcom/mh/movie/core/mvp/ui/utils/UIUtils;->setImmersiveStatusBar(Landroid/app/Activity;ZI)V

    return-void
.end method

.method private h()V
    .locals 2

    .line 78
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/ExchangeRecordActivity;->topbar:Lcom/mh/movie/core/mvp/ui/widget/Topbar;

    new-instance v1, Lcom/mh/movie/core/mvp/ui/activity/x;

    invoke-direct {v1, p0}, Lcom/mh/movie/core/mvp/ui/activity/x;-><init>(Lcom/mh/movie/core/mvp/ui/activity/ExchangeRecordActivity;)V

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/ui/widget/Topbar;->setLeftBarClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/ExchangeRecordActivity;->rwExchangeRecord:Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;

    invoke-virtual {v0, p0}, Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;->setOnLoadNextPage(Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper$a;)V

    .line 80
    new-instance v0, Lcom/mh/movie/core/mvp/ui/activity/ExchangeRecordActivity$1;

    invoke-direct {v0, p0}, Lcom/mh/movie/core/mvp/ui/activity/ExchangeRecordActivity$1;-><init>(Lcom/mh/movie/core/mvp/ui/activity/ExchangeRecordActivity;)V

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/ExchangeRecordActivity;->c:Lcom/mh/movie/core/mvp/ui/adapter/c;

    .line 111
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/ExchangeRecordActivity;->rwExchangeRecord:Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;->setTipsType(Ljava/lang/String;)V

    .line 112
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/ExchangeRecordActivity;->rwExchangeRecord:Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/ExchangeRecordActivity;->c:Lcom/mh/movie/core/mvp/ui/adapter/c;

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;->setAdapter(Lcom/mh/movie/core/mvp/ui/adapter/r;)V

    .line 113
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/ExchangeRecordActivity;->b:Lcom/jess/arms/mvp/b;

    check-cast v0, Lcom/mh/movie/core/mvp/presenter/ExchangeRecordPresenter;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/presenter/ExchangeRecordPresenter;->e()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)I
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 64
    sget p1, Lcom/mh/movie/core/R$layout;->activity_exchange_record:I

    return p1
.end method

.method final synthetic a(Landroid/view/View;)V
    .locals 0

    .line 78
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/ExchangeRecordActivity;->onBackPressed()V

    return-void
.end method

.method public a(Lcom/jess/arms/b/a/a;)V
    .locals 1
    .param p1    # Lcom/jess/arms/b/a/a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 55
    invoke-static {}, Lcom/mh/movie/core/a/a/aa;->a()Lcom/mh/movie/core/a/a/aa$a;

    move-result-object v0

    .line 56
    invoke-virtual {v0, p1}, Lcom/mh/movie/core/a/a/aa$a;->a(Lcom/jess/arms/b/a/a;)Lcom/mh/movie/core/a/a/aa$a;

    move-result-object p1

    new-instance v0, Lcom/mh/movie/core/a/b/an;

    invoke-direct {v0, p0}, Lcom/mh/movie/core/a/b/an;-><init>(Lcom/mh/movie/core/mvp/a/o$b;)V

    .line 57
    invoke-virtual {p1, v0}, Lcom/mh/movie/core/a/a/aa$a;->a(Lcom/mh/movie/core/a/b/an;)Lcom/mh/movie/core/a/a/aa$a;

    move-result-object p1

    .line 58
    invoke-virtual {p1}, Lcom/mh/movie/core/a/a/aa$a;->a()Lcom/mh/movie/core/a/a/by;

    move-result-object p1

    .line 59
    invoke-interface {p1, p0}, Lcom/mh/movie/core/a/a/by;->a(Lcom/mh/movie/core/mvp/ui/activity/ExchangeRecordActivity;)V

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mh/movie/core/mvp/model/entity/response/RecordResponse;",
            ">;)V"
        }
    .end annotation

    .line 163
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/ExchangeRecordActivity;->rwExchangeRecord:Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;

    invoke-virtual {v0, p1}, Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;->setContent(Ljava/util/List;)V

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

    .line 69
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/activity/ExchangeRecordActivity;->g()V

    .line 70
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/activity/ExchangeRecordActivity;->h()V

    return-void
.end method

.method public b(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mh/movie/core/mvp/model/entity/response/RecordResponse;",
            ">;)V"
        }
    .end annotation

    .line 168
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/ExchangeRecordActivity;->rwExchangeRecord:Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;

    invoke-virtual {v0, p1}, Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;->a(Ljava/util/List;)V

    return-void
.end method

.method public c_(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 128
    invoke-static {p1}, Lcom/jess/arms/c/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    invoke-static {p1}, Lcom/jess/arms/c/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method public e()V
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/ExchangeRecordActivity;->b:Lcom/jess/arms/mvp/b;

    check-cast v0, Lcom/mh/movie/core/mvp/presenter/ExchangeRecordPresenter;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/presenter/ExchangeRecordPresenter;->f()V

    return-void
.end method

.method public e_()V
    .locals 0

    return-void
.end method

.method public f()V
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/ExchangeRecordActivity;->b:Lcom/jess/arms/mvp/b;

    check-cast v0, Lcom/mh/movie/core/mvp/presenter/ExchangeRecordPresenter;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/presenter/ExchangeRecordPresenter;->e()V

    return-void
.end method

.method public g_()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 145
    invoke-super {p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/ac;->onCreate(Landroid/os/Bundle;)V

    .line 147
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Activity;)Lbutterknife/Unbinder;

    return-void
.end method
