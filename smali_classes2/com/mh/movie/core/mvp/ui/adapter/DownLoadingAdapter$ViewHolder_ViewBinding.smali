.class public Lcom/mh/movie/core/mvp/ui/adapter/DownLoadingAdapter$ViewHolder_ViewBinding;
.super Ljava/lang/Object;
.source "DownLoadingAdapter$ViewHolder_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private a:Lcom/mh/movie/core/mvp/ui/adapter/DownLoadingAdapter$ViewHolder;


# direct methods
.method public constructor <init>(Lcom/mh/movie/core/mvp/ui/adapter/DownLoadingAdapter$ViewHolder;Landroid/view/View;)V
    .locals 3
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/adapter/DownLoadingAdapter$ViewHolder_ViewBinding;->a:Lcom/mh/movie/core/mvp/ui/adapter/DownLoadingAdapter$ViewHolder;

    .line 26
    sget v0, Lcom/mh/movie/core/R$id;->iv_poster:I

    const-string v1, "field \'ivPoster\'"

    const-class v2, Landroid/widget/ImageView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/adapter/DownLoadingAdapter$ViewHolder;->ivPoster:Landroid/widget/ImageView;

    .line 27
    sget v0, Lcom/mh/movie/core/R$id;->iv_status:I

    const-string v1, "field \'ivStatus\'"

    const-class v2, Landroid/widget/ImageView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/adapter/DownLoadingAdapter$ViewHolder;->ivStatus:Landroid/widget/ImageView;

    .line 28
    sget v0, Lcom/mh/movie/core/R$id;->fl_poster:I

    const-string v1, "field \'flPoster\'"

    const-class v2, Landroid/widget/FrameLayout;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/adapter/DownLoadingAdapter$ViewHolder;->flPoster:Landroid/widget/FrameLayout;

    .line 29
    sget v0, Lcom/mh/movie/core/R$id;->tv_title:I

    const-string v1, "field \'tvTitle\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/adapter/DownLoadingAdapter$ViewHolder;->tvTitle:Landroid/widget/TextView;

    .line 30
    sget v0, Lcom/mh/movie/core/R$id;->tv_status:I

    const-string v1, "field \'tvStatus\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/adapter/DownLoadingAdapter$ViewHolder;->tvStatus:Landroid/widget/TextView;

    .line 31
    sget v0, Lcom/mh/movie/core/R$id;->tv_proportion:I

    const-string v1, "field \'tvProportion\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/adapter/DownLoadingAdapter$ViewHolder;->tvProportion:Landroid/widget/TextView;

    .line 32
    sget v0, Lcom/mh/movie/core/R$id;->progress:I

    const-string v1, "field \'progress\'"

    const-class v2, Landroid/widget/ProgressBar;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/adapter/DownLoadingAdapter$ViewHolder;->progress:Landroid/widget/ProgressBar;

    .line 33
    sget v0, Lcom/mh/movie/core/R$id;->rl_down_item:I

    const-string v1, "field \'rlDownItem\'"

    const-class v2, Landroid/widget/RelativeLayout;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout;

    iput-object p2, p1, Lcom/mh/movie/core/mvp/ui/adapter/DownLoadingAdapter$ViewHolder;->rlDownItem:Landroid/widget/RelativeLayout;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .line 39
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/adapter/DownLoadingAdapter$ViewHolder_ViewBinding;->a:Lcom/mh/movie/core/mvp/ui/adapter/DownLoadingAdapter$ViewHolder;

    if-nez v0, :cond_0

    .line 40
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v1, 0x0

    .line 41
    iput-object v1, p0, Lcom/mh/movie/core/mvp/ui/adapter/DownLoadingAdapter$ViewHolder_ViewBinding;->a:Lcom/mh/movie/core/mvp/ui/adapter/DownLoadingAdapter$ViewHolder;

    .line 43
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/adapter/DownLoadingAdapter$ViewHolder;->ivPoster:Landroid/widget/ImageView;

    .line 44
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/adapter/DownLoadingAdapter$ViewHolder;->ivStatus:Landroid/widget/ImageView;

    .line 45
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/adapter/DownLoadingAdapter$ViewHolder;->flPoster:Landroid/widget/FrameLayout;

    .line 46
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/adapter/DownLoadingAdapter$ViewHolder;->tvTitle:Landroid/widget/TextView;

    .line 47
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/adapter/DownLoadingAdapter$ViewHolder;->tvStatus:Landroid/widget/TextView;

    .line 48
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/adapter/DownLoadingAdapter$ViewHolder;->tvProportion:Landroid/widget/TextView;

    .line 49
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/adapter/DownLoadingAdapter$ViewHolder;->progress:Landroid/widget/ProgressBar;

    .line 50
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/adapter/DownLoadingAdapter$ViewHolder;->rlDownItem:Landroid/widget/RelativeLayout;

    return-void
.end method
