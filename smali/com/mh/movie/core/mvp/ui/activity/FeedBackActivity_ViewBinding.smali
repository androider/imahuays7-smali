.class public Lcom/mh/movie/core/mvp/ui/activity/FeedBackActivity_ViewBinding;
.super Ljava/lang/Object;
.source "FeedBackActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private a:Lcom/mh/movie/core/mvp/ui/activity/FeedBackActivity;


# direct methods
.method public constructor <init>(Lcom/mh/movie/core/mvp/ui/activity/FeedBackActivity;Landroid/view/View;)V
    .locals 3
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/FeedBackActivity_ViewBinding;->a:Lcom/mh/movie/core/mvp/ui/activity/FeedBackActivity;

    .line 29
    sget v0, Lcom/mh/movie/core/R$id;->topbar:I

    const-string v1, "field \'topbar\'"

    const-class v2, Lcom/mh/movie/core/mvp/ui/widget/Topbar;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/ui/widget/Topbar;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/activity/FeedBackActivity;->topbar:Lcom/mh/movie/core/mvp/ui/widget/Topbar;

    .line 30
    sget v0, Lcom/mh/movie/core/R$id;->recycler_problem:I

    const-string v1, "field \'recyclerProblem\'"

    const-class v2, Landroid/support/v7/widget/RecyclerView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/activity/FeedBackActivity;->recyclerProblem:Landroid/support/v7/widget/RecyclerView;

    .line 31
    sget v0, Lcom/mh/movie/core/R$id;->et_feed_back:I

    const-string v1, "field \'etFeedBack\'"

    const-class v2, Landroid/widget/EditText;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/activity/FeedBackActivity;->etFeedBack:Landroid/widget/EditText;

    .line 32
    sget v0, Lcom/mh/movie/core/R$id;->et_feed_qq:I

    const-string v1, "field \'etFeedQq\'"

    const-class v2, Landroid/widget/EditText;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/activity/FeedBackActivity;->etFeedQq:Landroid/widget/EditText;

    .line 33
    sget v0, Lcom/mh/movie/core/R$id;->et_feed_email:I

    const-string v1, "field \'etFeedEmail\'"

    const-class v2, Landroid/widget/EditText;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/activity/FeedBackActivity;->etFeedEmail:Landroid/widget/EditText;

    .line 34
    sget v0, Lcom/mh/movie/core/R$id;->tv_submit:I

    const-string v1, "field \'tvSubmit\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p1, Lcom/mh/movie/core/mvp/ui/activity/FeedBackActivity;->tvSubmit:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .line 40
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/FeedBackActivity_ViewBinding;->a:Lcom/mh/movie/core/mvp/ui/activity/FeedBackActivity;

    if-nez v0, :cond_0

    .line 41
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v1, 0x0

    .line 42
    iput-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/FeedBackActivity_ViewBinding;->a:Lcom/mh/movie/core/mvp/ui/activity/FeedBackActivity;

    .line 44
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/FeedBackActivity;->topbar:Lcom/mh/movie/core/mvp/ui/widget/Topbar;

    .line 45
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/FeedBackActivity;->recyclerProblem:Landroid/support/v7/widget/RecyclerView;

    .line 46
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/FeedBackActivity;->etFeedBack:Landroid/widget/EditText;

    .line 47
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/FeedBackActivity;->etFeedQq:Landroid/widget/EditText;

    .line 48
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/FeedBackActivity;->etFeedEmail:Landroid/widget/EditText;

    .line 49
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/FeedBackActivity;->tvSubmit:Landroid/widget/TextView;

    return-void
.end method
