.class public Lcom/mh/movie/core/mvp/ui/holder/q;
.super Lcom/mh/movie/core/mvp/ui/holder/d;
.source "PartnerViewHolder.java"


# instance fields
.field public a:Landroid/widget/TextView;

.field public b:Landroid/widget/TextView;

.field public c:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;I)V
    .locals 0

    .line 16
    invoke-direct {p0, p1, p2}, Lcom/mh/movie/core/mvp/ui/holder/d;-><init>(Landroid/view/ViewGroup;I)V

    .line 17
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/holder/q;->itemView:Landroid/view/View;

    sget p2, Lcom/mh/movie/core/R$id;->tv_partner_time:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/holder/q;->a:Landroid/widget/TextView;

    .line 18
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/holder/q;->itemView:Landroid/view/View;

    sget p2, Lcom/mh/movie/core/R$id;->tv_partner_count:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/holder/q;->b:Landroid/widget/TextView;

    .line 19
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/holder/q;->itemView:Landroid/view/View;

    sget p2, Lcom/mh/movie/core/R$id;->tv_partner_money:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/holder/q;->c:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method protected a(Landroid/view/View;)V
    .locals 0

    return-void
.end method
