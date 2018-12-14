.class public Lcom/mh/movie/core/mvp/ui/holder/ac;
.super Lcom/mh/movie/core/mvp/ui/holder/d;
.source "VipCardViewHolder.java"


# instance fields
.field a:I

.field public b:Lpl/droidsonroids/gif/GifImageView;

.field public c:Landroid/widget/TextView;

.field public d:Landroid/widget/TextView;

.field public e:Landroid/widget/TextView;

.field public f:Landroid/widget/TextView;

.field public g:Landroid/widget/LinearLayout;

.field public h:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;IILcom/mh/movie/core/mvp/ui/holder/d$a;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2}, Lcom/mh/movie/core/mvp/ui/holder/d;-><init>(Landroid/view/ViewGroup;I)V

    .line 27
    iput p3, p0, Lcom/mh/movie/core/mvp/ui/holder/ac;->a:I

    .line 28
    iput-object p4, p0, Lcom/mh/movie/core/mvp/ui/holder/ac;->j:Lcom/mh/movie/core/mvp/ui/holder/d$a;

    .line 29
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/holder/ac;->itemView:Landroid/view/View;

    sget p2, Lcom/mh/movie/core/R$id;->iv_card_movie:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lpl/droidsonroids/gif/GifImageView;

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/holder/ac;->b:Lpl/droidsonroids/gif/GifImageView;

    .line 30
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/holder/ac;->itemView:Landroid/view/View;

    sget p2, Lcom/mh/movie/core/R$id;->card_title:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/holder/ac;->c:Landroid/widget/TextView;

    .line 31
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/holder/ac;->itemView:Landroid/view/View;

    sget p2, Lcom/mh/movie/core/R$id;->card_type:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/holder/ac;->d:Landroid/widget/TextView;

    .line 32
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/holder/ac;->itemView:Landroid/view/View;

    sget p2, Lcom/mh/movie/core/R$id;->iv_card_label:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/holder/ac;->e:Landroid/widget/TextView;

    .line 33
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/holder/ac;->itemView:Landroid/view/View;

    sget p2, Lcom/mh/movie/core/R$id;->tv_card_desc:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/holder/ac;->f:Landroid/widget/TextView;

    .line 34
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/holder/ac;->itemView:Landroid/view/View;

    sget p2, Lcom/mh/movie/core/R$id;->linear_main:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/holder/ac;->g:Landroid/widget/LinearLayout;

    .line 35
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/holder/ac;->itemView:Landroid/view/View;

    sget p2, Lcom/mh/movie/core/R$id;->tv_card_right_score:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/holder/ac;->h:Landroid/widget/TextView;

    .line 37
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 p2, -0x1

    invoke-direct {p1, p2, p3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 38
    iget-object p3, p0, Lcom/mh/movie/core/mvp/ui/holder/ac;->b:Lpl/droidsonroids/gif/GifImageView;

    invoke-virtual {p3, p1}, Lpl/droidsonroids/gif/GifImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 39
    new-instance p3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 p4, -0x2

    invoke-direct {p3, p2, p4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 40
    iget-object p2, p0, Lcom/mh/movie/core/mvp/ui/holder/ac;->g:Landroid/widget/LinearLayout;

    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 41
    iget-object p2, p0, Lcom/mh/movie/core/mvp/ui/holder/ac;->b:Lpl/droidsonroids/gif/GifImageView;

    invoke-virtual {p2, p1}, Lpl/droidsonroids/gif/GifImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method protected a(Landroid/view/View;)V
    .locals 0

    return-void
.end method
