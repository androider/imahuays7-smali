.class public Lcom/mh/movie/core/mvp/ui/holder/z;
.super Lcom/mh/movie/core/mvp/ui/holder/d;
.source "TvPagerViewHolder.java"


# instance fields
.field public a:Landroid/widget/CheckBox;

.field public b:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;ILcom/mh/movie/core/mvp/ui/holder/d$a;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1, p2}, Lcom/mh/movie/core/mvp/ui/holder/d;-><init>(Landroid/view/ViewGroup;I)V

    .line 16
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/holder/z;->itemView:Landroid/view/View;

    sget p2, Lcom/mh/movie/core/R$id;->cb_cache_pager:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/holder/z;->a:Landroid/widget/CheckBox;

    .line 17
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/holder/z;->itemView:Landroid/view/View;

    sget p2, Lcom/mh/movie/core/R$id;->tv_label:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/holder/z;->b:Landroid/widget/TextView;

    .line 18
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/holder/z;->a:Landroid/widget/CheckBox;

    new-instance p2, Lcom/mh/movie/core/mvp/ui/holder/z$1;

    invoke-direct {p2, p0, p3}, Lcom/mh/movie/core/mvp/ui/holder/z$1;-><init>(Lcom/mh/movie/core/mvp/ui/holder/z;Lcom/mh/movie/core/mvp/ui/holder/d$a;)V

    invoke-virtual {p1, p2}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method protected a(Landroid/view/View;)V
    .locals 0

    return-void
.end method
