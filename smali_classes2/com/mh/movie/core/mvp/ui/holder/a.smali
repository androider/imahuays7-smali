.class public Lcom/mh/movie/core/mvp/ui/holder/a;
.super Lcom/mh/movie/core/mvp/ui/holder/d;
.source "AllViewHolder.java"


# instance fields
.field public a:Lpl/droidsonroids/gif/GifImageView;

.field public b:Landroid/widget/TextView;

.field public c:Landroid/widget/TextView;

.field public d:Landroid/widget/TextView;

.field public e:Landroid/widget/TextView;

.field public f:Landroid/widget/LinearLayout;

.field public g:Landroid/widget/TextView;

.field public h:I

.field public i:I


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;IIIILcom/mh/movie/core/mvp/ui/holder/d$a;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2}, Lcom/mh/movie/core/mvp/ui/holder/d;-><init>(Landroid/view/ViewGroup;I)V

    const/4 p1, 0x0

    .line 25
    iput p1, p0, Lcom/mh/movie/core/mvp/ui/holder/a;->h:I

    .line 26
    iput p1, p0, Lcom/mh/movie/core/mvp/ui/holder/a;->i:I

    .line 31
    iput p5, p0, Lcom/mh/movie/core/mvp/ui/holder/a;->h:I

    .line 32
    iput p4, p0, Lcom/mh/movie/core/mvp/ui/holder/a;->i:I

    .line 33
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/holder/a;->itemView:Landroid/view/View;

    sget p2, Lcom/mh/movie/core/R$id;->iv_card_movie:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lpl/droidsonroids/gif/GifImageView;

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/holder/a;->a:Lpl/droidsonroids/gif/GifImageView;

    .line 34
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/holder/a;->itemView:Landroid/view/View;

    sget p2, Lcom/mh/movie/core/R$id;->card_title:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/holder/a;->b:Landroid/widget/TextView;

    .line 35
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/holder/a;->itemView:Landroid/view/View;

    sget p2, Lcom/mh/movie/core/R$id;->card_type:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/holder/a;->c:Landroid/widget/TextView;

    .line 36
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/holder/a;->itemView:Landroid/view/View;

    sget p2, Lcom/mh/movie/core/R$id;->iv_card_label:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/holder/a;->d:Landroid/widget/TextView;

    .line 37
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/holder/a;->itemView:Landroid/view/View;

    sget p2, Lcom/mh/movie/core/R$id;->tv_card_desc:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/holder/a;->e:Landroid/widget/TextView;

    .line 38
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/holder/a;->itemView:Landroid/view/View;

    sget p2, Lcom/mh/movie/core/R$id;->linear_main:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/holder/a;->f:Landroid/widget/LinearLayout;

    .line 39
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/holder/a;->itemView:Landroid/view/View;

    sget p2, Lcom/mh/movie/core/R$id;->tv_card_score:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/holder/a;->g:Landroid/widget/TextView;

    const/4 p1, -0x2

    const/4 p2, 0x3

    if-le p3, p2, :cond_0

    .line 42
    new-instance p2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p2, p4, p5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 43
    iget-object p3, p0, Lcom/mh/movie/core/mvp/ui/holder/a;->a:Lpl/droidsonroids/gif/GifImageView;

    invoke-virtual {p3, p2}, Lpl/droidsonroids/gif/GifImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 44
    new-instance p3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p3, p4, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 45
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/holder/a;->f:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 47
    :cond_0
    new-instance p2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 p3, -0x1

    invoke-direct {p2, p3, p5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 48
    iget-object p4, p0, Lcom/mh/movie/core/mvp/ui/holder/a;->a:Lpl/droidsonroids/gif/GifImageView;

    invoke-virtual {p4, p2}, Lpl/droidsonroids/gif/GifImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 49
    new-instance p4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p4, p3, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 50
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/holder/a;->f:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 52
    :goto_0
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/holder/a;->a:Lpl/droidsonroids/gif/GifImageView;

    invoke-virtual {p1, p2}, Lpl/droidsonroids/gif/GifImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 53
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/holder/a;->itemView:Landroid/view/View;

    new-instance p2, Lcom/mh/movie/core/mvp/ui/holder/b;

    invoke-direct {p2, p0, p6}, Lcom/mh/movie/core/mvp/ui/holder/b;-><init>(Lcom/mh/movie/core/mvp/ui/holder/a;Lcom/mh/movie/core/mvp/ui/holder/d$a;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method protected a(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method final synthetic a(Lcom/mh/movie/core/mvp/ui/holder/d$a;Landroid/view/View;)V
    .locals 0

    .line 54
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/holder/a;->getAdapterPosition()I

    move-result p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 57
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/holder/a;->getAdapterPosition()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    invoke-interface {p1, p2}, Lcom/mh/movie/core/mvp/ui/holder/d$a;->a(I)V

    :cond_1
    return-void
.end method
