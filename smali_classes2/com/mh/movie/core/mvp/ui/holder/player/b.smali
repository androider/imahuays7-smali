.class public Lcom/mh/movie/core/mvp/ui/holder/player/b;
.super Lcom/mh/movie/core/mvp/ui/holder/d;
.source "PagerViewHolder.java"


# instance fields
.field public a:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;ILcom/mh/movie/core/mvp/ui/holder/d$a;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1, p2}, Lcom/mh/movie/core/mvp/ui/holder/d;-><init>(Landroid/view/ViewGroup;I)V

    .line 16
    iput-object p3, p0, Lcom/mh/movie/core/mvp/ui/holder/player/b;->j:Lcom/mh/movie/core/mvp/ui/holder/d$a;

    return-void
.end method


# virtual methods
.method protected a(Landroid/view/View;)V
    .locals 1

    .line 21
    sget v0, Lcom/mh/movie/core/R$id;->cb_cache_pager:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/holder/player/b;->a:Landroid/widget/TextView;

    .line 22
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/holder/player/b;->a:Landroid/widget/TextView;

    new-instance v0, Lcom/mh/movie/core/mvp/ui/holder/player/c;

    invoke-direct {v0, p0}, Lcom/mh/movie/core/mvp/ui/holder/player/c;-><init>(Lcom/mh/movie/core/mvp/ui/holder/player/b;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method final synthetic b(Landroid/view/View;)V
    .locals 1

    .line 23
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/holder/player/b;->j:Lcom/mh/movie/core/mvp/ui/holder/d$a;

    if-eqz p1, :cond_0

    .line 24
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/holder/player/b;->j:Lcom/mh/movie/core/mvp/ui/holder/d$a;

    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/holder/player/b;->getAdapterPosition()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/mh/movie/core/mvp/ui/holder/d$a;->a(I)V

    :cond_0
    return-void
.end method
