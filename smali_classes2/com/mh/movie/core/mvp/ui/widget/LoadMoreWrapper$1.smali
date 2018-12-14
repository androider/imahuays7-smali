.class Lcom/mh/movie/core/mvp/ui/widget/LoadMoreWrapper$1;
.super Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;
.source "LoadMoreWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/ui/widget/LoadMoreWrapper;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/widget/GridLayoutManager;

.field final synthetic b:Lcom/mh/movie/core/mvp/ui/widget/LoadMoreWrapper;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/ui/widget/LoadMoreWrapper;Landroid/support/v7/widget/GridLayoutManager;)V
    .locals 0

    .line 133
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/LoadMoreWrapper$1;->b:Lcom/mh/movie/core/mvp/ui/widget/LoadMoreWrapper;

    iput-object p2, p0, Lcom/mh/movie/core/mvp/ui/widget/LoadMoreWrapper$1;->a:Landroid/support/v7/widget/GridLayoutManager;

    invoke-direct {p0}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;-><init>()V

    return-void
.end method


# virtual methods
.method public getSpanSize(I)I
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/LoadMoreWrapper$1;->b:Lcom/mh/movie/core/mvp/ui/widget/LoadMoreWrapper;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/widget/LoadMoreWrapper;->a(Lcom/mh/movie/core/mvp/ui/widget/LoadMoreWrapper;)Lcom/mh/movie/core/mvp/ui/adapter/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/adapter/r;->getItemCount()I

    move-result v0

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/LoadMoreWrapper$1;->a:Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {p1}, Landroid/support/v7/widget/GridLayoutManager;->getSpanCount()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    return p1
.end method
