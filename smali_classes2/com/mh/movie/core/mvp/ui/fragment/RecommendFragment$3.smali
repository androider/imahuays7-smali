.class Lcom/mh/movie/core/mvp/ui/fragment/RecommendFragment$3;
.super Landroid/support/v7/widget/RecyclerView$OnScrollListener;
.source "RecommendFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/ui/fragment/RecommendFragment;->k()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mh/movie/core/mvp/ui/fragment/RecommendFragment;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/ui/fragment/RecommendFragment;)V
    .locals 0

    .line 198
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/fragment/RecommendFragment$3;->a:Lcom/mh/movie/core/mvp/ui/fragment/RecommendFragment;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 0

    if-nez p2, :cond_0

    .line 202
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/fragment/RecommendFragment$3;->a:Lcom/mh/movie/core/mvp/ui/fragment/RecommendFragment;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/ui/fragment/RecommendFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bumptech/glide/RequestManager;->resumeRequests()V

    goto :goto_0

    .line 204
    :cond_0
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/fragment/RecommendFragment$3;->a:Lcom/mh/movie/core/mvp/ui/fragment/RecommendFragment;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/ui/fragment/RecommendFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bumptech/glide/RequestManager;->pauseRequests()V

    :goto_0
    return-void
.end method
