.class public Lcom/mh/movie/core/mvp/ui/activity/MyCommentActivity;
.super Lcom/mh/movie/core/mvp/ui/activity/s;
.source "MyCommentActivity.java"

# interfaces
.implements Lcom/mh/movie/core/mvp/a/af$b;
.implements Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mh/movie/core/mvp/ui/activity/s<",
        "Lcom/mh/movie/core/mvp/presenter/MyCommentPresenter;",
        "Lcom/mh/movie/core/mvp/model/entity/response/HistoryAndCollectResponse;",
        ">;",
        "Lcom/mh/movie/core/mvp/a/af$b;",
        "Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper$a;"
    }
.end annotation


# instance fields
.field i:I

.field private j:Lcom/mh/movie/core/mvp/ui/adapter/PlayRecordAdapter;

.field wrapper:Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c04d3
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper<",
            "Lcom/mh/movie/core/mvp/model/entity/response/HistoryAndCollectResponse;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/activity/s;-><init>()V

    const/16 v0, 0xa

    .line 115
    iput v0, p0, Lcom/mh/movie/core/mvp/ui/activity/MyCommentActivity;->i:I

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)I
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 68
    sget p1, Lcom/mh/movie/core/R$layout;->activity_comment:I

    return p1
.end method

.method public a(Lcom/jess/arms/b/a/a;)V
    .locals 1
    .param p1    # Lcom/jess/arms/b/a/a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 59
    invoke-static {}, Lcom/mh/movie/core/a/a/aq;->a()Lcom/mh/movie/core/a/a/aq$a;

    move-result-object v0

    .line 60
    invoke-virtual {v0, p1}, Lcom/mh/movie/core/a/a/aq$a;->a(Lcom/jess/arms/b/a/a;)Lcom/mh/movie/core/a/a/aq$a;

    move-result-object p1

    new-instance v0, Lcom/mh/movie/core/a/b/cd;

    invoke-direct {v0, p0}, Lcom/mh/movie/core/a/b/cd;-><init>(Lcom/mh/movie/core/mvp/a/af$b;)V

    .line 61
    invoke-virtual {p1, v0}, Lcom/mh/movie/core/a/a/aq$a;->a(Lcom/mh/movie/core/a/b/cd;)Lcom/mh/movie/core/a/a/aq$a;

    move-result-object p1

    .line 62
    invoke-virtual {p1}, Lcom/mh/movie/core/a/a/aq$a;->a()Lcom/mh/movie/core/a/a/co;

    move-result-object p1

    .line 63
    invoke-interface {p1, p0}, Lcom/mh/movie/core/a/a/co;->a(Lcom/mh/movie/core/mvp/ui/activity/MyCommentActivity;)V

    return-void
.end method

.method protected a(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/Integer;",
            "Lcom/mh/movie/core/mvp/model/entity/response/HistoryAndCollectResponse;",
            ">;>;)V"
        }
    .end annotation

    const-string p1, "\u5220\u9664\u7f51\u7edc\u6570\u636e"

    .line 111
    invoke-static {p0, p1}, Lcom/mh/movie/core/mvp/ui/utils/T;->showShort(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 73
    new-instance p1, Lcom/mh/movie/core/mvp/ui/adapter/PlayRecordAdapter;

    invoke-direct {p1}, Lcom/mh/movie/core/mvp/ui/adapter/PlayRecordAdapter;-><init>()V

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/MyCommentActivity;->j:Lcom/mh/movie/core/mvp/ui/adapter/PlayRecordAdapter;

    .line 74
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/MyCommentActivity;->j:Lcom/mh/movie/core/mvp/ui/adapter/PlayRecordAdapter;

    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/MyCommentActivity;->a(Lcom/mh/movie/core/mvp/ui/adapter/d;)V

    .line 75
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/MyCommentActivity;->wrapper:Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/MyCommentActivity;->j:Lcom/mh/movie/core/mvp/ui/adapter/PlayRecordAdapter;

    invoke-virtual {p1, v0}, Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;->setAdapter(Lcom/mh/movie/core/mvp/ui/adapter/r;)V

    .line 76
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/MyCommentActivity;->wrapper:Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;

    invoke-virtual {p1, p0}, Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;->setOnLoadNextPage(Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper$a;)V

    .line 78
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/MyCommentActivity;->wrapper:Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;

    const-string v0, "hello"

    sget v1, Lcom/mh/movie/core/R$mipmap;->empty:I

    invoke-virtual {p1, v0, v1}, Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;->a(Ljava/lang/String;I)V

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

.method public e()V
    .locals 4

    .line 119
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/mh/movie/core/mvp/ui/activity/MyCommentActivity$1;

    invoke-direct {v1, p0}, Lcom/mh/movie/core/mvp/ui/activity/MyCommentActivity$1;-><init>(Lcom/mh/movie/core/mvp/ui/activity/MyCommentActivity;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public e_()V
    .locals 0

    return-void
.end method

.method public f()V
    .locals 4

    .line 143
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/mh/movie/core/mvp/ui/activity/MyCommentActivity$2;

    invoke-direct {v1, p0}, Lcom/mh/movie/core/mvp/ui/activity/MyCommentActivity$2;-><init>(Lcom/mh/movie/core/mvp/ui/activity/MyCommentActivity;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 50
    invoke-super {p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/s;->onCreate(Landroid/os/Bundle;)V

    .line 52
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Activity;)Lbutterknife/Unbinder;

    .line 53
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/MyCommentActivity;->c:Lcom/mh/movie/core/mvp/ui/widget/Topbar;

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/mh/movie/core/mvp/ui/utils/UIUtils;->initTopbar(Landroid/content/Context;Landroid/view/View;Z)V

    return-void
.end method

.method public onPointerCaptureChanged(Z)V
    .locals 0

    return-void
.end method
