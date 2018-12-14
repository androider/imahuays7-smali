.class Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper$3;
.super Lcom/mh/movie/core/mvp/ui/widget/recylerview/RecyclerOnScrollListener;
.source "RecyclerWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;)V
    .locals 0

    .line 315
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper$3;->a:Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;

    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/widget/recylerview/RecyclerOnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 1

    .line 319
    invoke-super {p0, p1}, Lcom/mh/movie/core/mvp/ui/widget/recylerview/RecyclerOnScrollListener;->a(Landroid/view/View;)V

    .line 328
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper$3;->a:Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;

    invoke-static {p1}, Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;->d(Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 329
    :cond_0
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper$3;->a:Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;->b(Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;Z)Z

    .line 331
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper$3;->a:Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;

    invoke-static {p1}, Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;->b(Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;)Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper$a;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 332
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper$3;->a:Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;

    invoke-static {p1}, Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;->e(Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;)Lcom/mh/movie/core/mvp/ui/widget/recylerview/RecyclerFooterView;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/mh/movie/core/mvp/ui/widget/recylerview/RecyclerFooterView;->setShowLoadView(Z)V

    .line 333
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper$3;->a:Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;

    invoke-static {p1}, Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;->b(Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;)Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper$a;

    move-result-object p1

    invoke-interface {p1}, Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper$a;->e()V

    :cond_1
    return-void
.end method
