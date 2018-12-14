.class Lcom/mh/movie/core/mvp/ui/widget/LoadMoreWrapper$3;
.super Lcom/mh/movie/core/mvp/ui/widget/recylerview/RecyclerOnScrollListener;
.source "LoadMoreWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mh/movie/core/mvp/ui/widget/LoadMoreWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mh/movie/core/mvp/ui/widget/LoadMoreWrapper;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/ui/widget/LoadMoreWrapper;)V
    .locals 0

    .line 163
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/LoadMoreWrapper$3;->a:Lcom/mh/movie/core/mvp/ui/widget/LoadMoreWrapper;

    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/widget/recylerview/RecyclerOnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 1

    .line 167
    invoke-super {p0, p1}, Lcom/mh/movie/core/mvp/ui/widget/recylerview/RecyclerOnScrollListener;->a(Landroid/view/View;)V

    .line 169
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/LoadMoreWrapper$3;->a:Lcom/mh/movie/core/mvp/ui/widget/LoadMoreWrapper;

    invoke-static {p1}, Lcom/mh/movie/core/mvp/ui/widget/LoadMoreWrapper;->b(Lcom/mh/movie/core/mvp/ui/widget/LoadMoreWrapper;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 170
    :cond_0
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/LoadMoreWrapper$3;->a:Lcom/mh/movie/core/mvp/ui/widget/LoadMoreWrapper;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/mh/movie/core/mvp/ui/widget/LoadMoreWrapper;->a(Lcom/mh/movie/core/mvp/ui/widget/LoadMoreWrapper;Z)Z

    .line 172
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/LoadMoreWrapper$3;->a:Lcom/mh/movie/core/mvp/ui/widget/LoadMoreWrapper;

    invoke-static {p1}, Lcom/mh/movie/core/mvp/ui/widget/LoadMoreWrapper;->c(Lcom/mh/movie/core/mvp/ui/widget/LoadMoreWrapper;)Lcom/mh/movie/core/mvp/ui/widget/LoadMoreWrapper$a;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 173
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/LoadMoreWrapper$3;->a:Lcom/mh/movie/core/mvp/ui/widget/LoadMoreWrapper;

    invoke-static {p1}, Lcom/mh/movie/core/mvp/ui/widget/LoadMoreWrapper;->d(Lcom/mh/movie/core/mvp/ui/widget/LoadMoreWrapper;)Lcom/mh/movie/core/mvp/ui/widget/recylerview/RecyclerFooterView;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/mh/movie/core/mvp/ui/widget/recylerview/RecyclerFooterView;->setShowLoadView(Z)V

    .line 174
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/LoadMoreWrapper$3;->a:Lcom/mh/movie/core/mvp/ui/widget/LoadMoreWrapper;

    invoke-static {p1}, Lcom/mh/movie/core/mvp/ui/widget/LoadMoreWrapper;->c(Lcom/mh/movie/core/mvp/ui/widget/LoadMoreWrapper;)Lcom/mh/movie/core/mvp/ui/widget/LoadMoreWrapper$a;

    move-result-object p1

    invoke-interface {p1}, Lcom/mh/movie/core/mvp/ui/widget/LoadMoreWrapper$a;->e()V

    :cond_1
    return-void
.end method
