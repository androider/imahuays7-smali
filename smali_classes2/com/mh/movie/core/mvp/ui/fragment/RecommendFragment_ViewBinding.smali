.class public Lcom/mh/movie/core/mvp/ui/fragment/RecommendFragment_ViewBinding;
.super Ljava/lang/Object;
.source "RecommendFragment_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private a:Lcom/mh/movie/core/mvp/ui/fragment/RecommendFragment;


# direct methods
.method public constructor <init>(Lcom/mh/movie/core/mvp/ui/fragment/RecommendFragment;Landroid/view/View;)V
    .locals 3
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/fragment/RecommendFragment_ViewBinding;->a:Lcom/mh/movie/core/mvp/ui/fragment/RecommendFragment;

    .line 22
    sget v0, Lcom/mh/movie/core/R$id;->recycler_view:I

    const-string v1, "field \'recyclerView\'"

    const-class v2, Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/fragment/RecommendFragment;->recyclerView:Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;

    .line 23
    sget v0, Lcom/mh/movie/core/R$id;->view_main:I

    const-string v1, "field \'viewMain\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/fragment/RecommendFragment;->viewMain:Landroid/view/View;

    .line 24
    sget v0, Lcom/mh/movie/core/R$id;->iv_banner_top:I

    const-string v1, "field \'ivBannerTop\'"

    const-class v2, Landroid/widget/ImageView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p1, Lcom/mh/movie/core/mvp/ui/fragment/RecommendFragment;->ivBannerTop:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .line 30
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/RecommendFragment_ViewBinding;->a:Lcom/mh/movie/core/mvp/ui/fragment/RecommendFragment;

    if-nez v0, :cond_0

    .line 31
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v1, 0x0

    .line 32
    iput-object v1, p0, Lcom/mh/movie/core/mvp/ui/fragment/RecommendFragment_ViewBinding;->a:Lcom/mh/movie/core/mvp/ui/fragment/RecommendFragment;

    .line 34
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/fragment/RecommendFragment;->recyclerView:Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;

    .line 35
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/fragment/RecommendFragment;->viewMain:Landroid/view/View;

    .line 36
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/fragment/RecommendFragment;->ivBannerTop:Landroid/widget/ImageView;

    return-void
.end method
