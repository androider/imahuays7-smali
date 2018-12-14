.class public Lcom/mh/movie/core/mvp/ui/holder/r;
.super Lcom/mh/movie/core/mvp/ui/holder/d;
.source "ProjectViewHolder.java"


# instance fields
.field public a:I

.field public b:I

.field public c:Landroid/widget/LinearLayout;

.field public d:Landroid/widget/LinearLayout;

.field public e:Landroid/widget/TextView;

.field public f:Landroid/widget/TextView;

.field public g:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;IIILcom/mh/movie/core/mvp/ui/holder/d$a;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2}, Lcom/mh/movie/core/mvp/ui/holder/d;-><init>(Landroid/view/ViewGroup;I)V

    .line 24
    iput p3, p0, Lcom/mh/movie/core/mvp/ui/holder/r;->a:I

    .line 25
    iput p4, p0, Lcom/mh/movie/core/mvp/ui/holder/r;->b:I

    .line 26
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/holder/r;->itemView:Landroid/view/View;

    sget p2, Lcom/mh/movie/core/R$id;->ll_partner_project:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/holder/r;->c:Landroid/widget/LinearLayout;

    .line 27
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/holder/r;->itemView:Landroid/view/View;

    sget p2, Lcom/mh/movie/core/R$id;->ll_linear_mahua:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/holder/r;->d:Landroid/widget/LinearLayout;

    .line 28
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/holder/r;->itemView:Landroid/view/View;

    sget p2, Lcom/mh/movie/core/R$id;->tv_partner_title:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/holder/r;->e:Landroid/widget/TextView;

    .line 29
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/holder/r;->itemView:Landroid/view/View;

    sget p2, Lcom/mh/movie/core/R$id;->tv_partner_desc:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/holder/r;->f:Landroid/widget/TextView;

    .line 30
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/holder/r;->itemView:Landroid/view/View;

    sget p2, Lcom/mh/movie/core/R$id;->iv_partner:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/holder/r;->g:Landroid/widget/ImageView;

    .line 31
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/holder/r;->d:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    .line 32
    iput p3, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 33
    iput p4, p1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 34
    iget-object p2, p0, Lcom/mh/movie/core/mvp/ui/holder/r;->d:Landroid/widget/LinearLayout;

    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 35
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/holder/r;->g:Landroid/widget/ImageView;

    new-instance p2, Lcom/mh/movie/core/mvp/ui/holder/r$1;

    invoke-direct {p2, p0, p5}, Lcom/mh/movie/core/mvp/ui/holder/r$1;-><init>(Lcom/mh/movie/core/mvp/ui/holder/r;Lcom/mh/movie/core/mvp/ui/holder/d$a;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method protected a(Landroid/view/View;)V
    .locals 0

    return-void
.end method
