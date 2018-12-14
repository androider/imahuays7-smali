.class public Lcom/mh/movie/core/mvp/ui/activity/TvplayDetailActivity_ViewBinding;
.super Ljava/lang/Object;
.source "TvplayDetailActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private a:Lcom/mh/movie/core/mvp/ui/activity/TvplayDetailActivity;

.field private b:Landroid/view/View;

.field private c:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/mh/movie/core/mvp/ui/activity/TvplayDetailActivity;Landroid/view/View;)V
    .locals 4
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/TvplayDetailActivity_ViewBinding;->a:Lcom/mh/movie/core/mvp/ui/activity/TvplayDetailActivity;

    .line 36
    sget v0, Lcom/mh/movie/core/R$id;->tv_addcache:I

    const-string v1, "field \'tvAddcache\' and method \'onClick\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 37
    sget v1, Lcom/mh/movie/core/R$id;->tv_addcache:I

    const-string v2, "field \'tvAddcache\'"

    const-class v3, Landroid/widget/TextView;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p1, Lcom/mh/movie/core/mvp/ui/activity/TvplayDetailActivity;->tvAddcache:Landroid/widget/TextView;

    .line 38
    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/TvplayDetailActivity_ViewBinding;->b:Landroid/view/View;

    .line 39
    new-instance v1, Lcom/mh/movie/core/mvp/ui/activity/TvplayDetailActivity_ViewBinding$1;

    invoke-direct {v1, p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/TvplayDetailActivity_ViewBinding$1;-><init>(Lcom/mh/movie/core/mvp/ui/activity/TvplayDetailActivity_ViewBinding;Lcom/mh/movie/core/mvp/ui/activity/TvplayDetailActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    sget v0, Lcom/mh/movie/core/R$id;->tv_sort:I

    const-string v1, "field \'tvSort\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/activity/TvplayDetailActivity;->tvSort:Landroid/widget/TextView;

    .line 46
    sget v0, Lcom/mh/movie/core/R$id;->ll_sort:I

    const-string v1, "field \'llSort\' and method \'onClick\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 47
    sget v1, Lcom/mh/movie/core/R$id;->ll_sort:I

    const-string v2, "field \'llSort\'"

    const-class v3, Landroid/widget/LinearLayout;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p1, Lcom/mh/movie/core/mvp/ui/activity/TvplayDetailActivity;->llSort:Landroid/widget/LinearLayout;

    .line 48
    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/TvplayDetailActivity_ViewBinding;->c:Landroid/view/View;

    .line 49
    new-instance v1, Lcom/mh/movie/core/mvp/ui/activity/TvplayDetailActivity_ViewBinding$2;

    invoke-direct {v1, p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/TvplayDetailActivity_ViewBinding$2;-><init>(Lcom/mh/movie/core/mvp/ui/activity/TvplayDetailActivity_ViewBinding;Lcom/mh/movie/core/mvp/ui/activity/TvplayDetailActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    sget v0, Lcom/mh/movie/core/R$id;->iv_poster:I

    const-string v1, "field \'ivPoster\'"

    const-class v2, Landroid/widget/ImageView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/activity/TvplayDetailActivity;->ivPoster:Landroid/widget/ImageView;

    .line 56
    sget v0, Lcom/mh/movie/core/R$id;->tv_num:I

    const-string v1, "field \'tvNum\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/activity/TvplayDetailActivity;->tvNum:Landroid/widget/TextView;

    .line 57
    sget v0, Lcom/mh/movie/core/R$id;->tv_title:I

    const-string v1, "field \'tvTitle\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/activity/TvplayDetailActivity;->tvTitle:Landroid/widget/TextView;

    .line 58
    sget v0, Lcom/mh/movie/core/R$id;->wrapper:I

    const-string v1, "field \'wrapper\'"

    const-class v2, Landroid/support/v7/widget/RecyclerView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/activity/TvplayDetailActivity;->wrapper:Landroid/support/v7/widget/RecyclerView;

    .line 59
    sget v0, Lcom/mh/movie/core/R$id;->topbar:I

    const-string v1, "field \'topbar\'"

    const-class v2, Lcom/mh/movie/core/mvp/ui/widget/Topbar;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/mh/movie/core/mvp/ui/widget/Topbar;

    iput-object p2, p1, Lcom/mh/movie/core/mvp/ui/activity/TvplayDetailActivity;->topbar:Lcom/mh/movie/core/mvp/ui/widget/Topbar;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .line 65
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/TvplayDetailActivity_ViewBinding;->a:Lcom/mh/movie/core/mvp/ui/activity/TvplayDetailActivity;

    if-nez v0, :cond_0

    .line 66
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v1, 0x0

    .line 67
    iput-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/TvplayDetailActivity_ViewBinding;->a:Lcom/mh/movie/core/mvp/ui/activity/TvplayDetailActivity;

    .line 69
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/TvplayDetailActivity;->tvAddcache:Landroid/widget/TextView;

    .line 70
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/TvplayDetailActivity;->tvSort:Landroid/widget/TextView;

    .line 71
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/TvplayDetailActivity;->llSort:Landroid/widget/LinearLayout;

    .line 72
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/TvplayDetailActivity;->ivPoster:Landroid/widget/ImageView;

    .line 73
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/TvplayDetailActivity;->tvNum:Landroid/widget/TextView;

    .line 74
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/TvplayDetailActivity;->tvTitle:Landroid/widget/TextView;

    .line 75
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/TvplayDetailActivity;->wrapper:Landroid/support/v7/widget/RecyclerView;

    .line 76
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/TvplayDetailActivity;->topbar:Lcom/mh/movie/core/mvp/ui/widget/Topbar;

    .line 78
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/TvplayDetailActivity_ViewBinding;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    iput-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/TvplayDetailActivity_ViewBinding;->b:Landroid/view/View;

    .line 80
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/TvplayDetailActivity_ViewBinding;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    iput-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/TvplayDetailActivity_ViewBinding;->c:Landroid/view/View;

    return-void
.end method
