.class public Lcom/mh/movie/core/mvp/ui/holder/p;
.super Lcom/mh/movie/core/mvp/ui/holder/d;
.source "PartnerTipsViewHolder.java"


# instance fields
.field public a:Landroid/widget/TextView;

.field public b:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;I)V
    .locals 0

    .line 14
    invoke-direct {p0, p1, p2}, Lcom/mh/movie/core/mvp/ui/holder/d;-><init>(Landroid/view/ViewGroup;I)V

    return-void
.end method


# virtual methods
.method protected a(Landroid/view/View;)V
    .locals 1

    .line 19
    sget v0, Lcom/mh/movie/core/R$id;->tv_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/holder/p;->a:Landroid/widget/TextView;

    .line 20
    sget v0, Lcom/mh/movie/core/R$id;->tv_rate:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/holder/p;->b:Landroid/widget/TextView;

    return-void
.end method
