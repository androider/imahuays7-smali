.class public Lcom/mh/movie/core/mvp/ui/adapter/f$c;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "HeaderAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mh/movie/core/mvp/ui/adapter/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field public a:Lcom/mh/movie/core/mvp/ui/widget/MovieCardView;

.field final synthetic b:Lcom/mh/movie/core/mvp/ui/adapter/f;


# direct methods
.method public constructor <init>(Lcom/mh/movie/core/mvp/ui/adapter/f;Landroid/view/View;)V
    .locals 2

    .line 161
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/adapter/f$c;->b:Lcom/mh/movie/core/mvp/ui/adapter/f;

    .line 162
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 163
    invoke-static {p1}, Lcom/mh/movie/core/mvp/ui/adapter/f;->a(Lcom/mh/movie/core/mvp/ui/adapter/f;)Landroid/view/View;

    move-result-object v0

    if-ne p2, v0, :cond_0

    return-void

    .line 165
    :cond_0
    sget v0, Lcom/mh/movie/core/R$id;->mcv_movie:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/ui/widget/MovieCardView;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/adapter/f$c;->a:Lcom/mh/movie/core/mvp/ui/widget/MovieCardView;

    .line 166
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/adapter/f$c;->a:Lcom/mh/movie/core/mvp/ui/widget/MovieCardView;

    new-instance v1, Lcom/mh/movie/core/mvp/ui/adapter/f$c$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/mh/movie/core/mvp/ui/adapter/f$c$1;-><init>(Lcom/mh/movie/core/mvp/ui/adapter/f$c;Lcom/mh/movie/core/mvp/ui/adapter/f;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/ui/widget/MovieCardView;->setMcvClickListener(Lcom/mh/movie/core/mvp/ui/widget/MovieCardView$a;)V

    return-void
.end method
