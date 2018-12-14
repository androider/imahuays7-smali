.class public Lcom/mh/movie/core/mvp/ui/holder/m;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "MovieCardViewHolder.java"


# instance fields
.field public a:Lpl/droidsonroids/gif/GifImageView;

.field public b:Landroid/widget/TextView;

.field public c:Landroid/widget/TextView;

.field public d:Landroid/widget/TextView;

.field public e:Landroid/widget/TextView;

.field public f:Landroid/widget/LinearLayout;

.field public g:Landroid/widget/LinearLayout;

.field public h:Landroid/widget/TextView;

.field public i:Landroid/widget/ImageView;

.field public j:I

.field public k:I


# direct methods
.method public constructor <init>(Landroid/view/View;IIILcom/mh/movie/core/mvp/ui/widget/l$a;)V
    .locals 1

    .line 37
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 38
    iput p4, p0, Lcom/mh/movie/core/mvp/ui/holder/m;->j:I

    .line 39
    iput p3, p0, Lcom/mh/movie/core/mvp/ui/holder/m;->k:I

    .line 40
    sget v0, Lcom/mh/movie/core/R$id;->iv_card_movie:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lpl/droidsonroids/gif/GifImageView;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/holder/m;->a:Lpl/droidsonroids/gif/GifImageView;

    .line 41
    sget v0, Lcom/mh/movie/core/R$id;->card_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/holder/m;->b:Landroid/widget/TextView;

    .line 42
    sget v0, Lcom/mh/movie/core/R$id;->card_type:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/holder/m;->c:Landroid/widget/TextView;

    .line 43
    sget v0, Lcom/mh/movie/core/R$id;->iv_card_label:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/holder/m;->d:Landroid/widget/TextView;

    .line 44
    sget v0, Lcom/mh/movie/core/R$id;->tv_card_desc:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/holder/m;->e:Landroid/widget/TextView;

    .line 45
    sget v0, Lcom/mh/movie/core/R$id;->linear_main:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/holder/m;->f:Landroid/widget/LinearLayout;

    .line 46
    sget v0, Lcom/mh/movie/core/R$id;->linear_desc:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/holder/m;->g:Landroid/widget/LinearLayout;

    .line 47
    sget v0, Lcom/mh/movie/core/R$id;->tv_card_right_score:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/holder/m;->h:Landroid/widget/TextView;

    .line 48
    sget v0, Lcom/mh/movie/core/R$id;->iv_card_mask:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/holder/m;->i:Landroid/widget/ImageView;

    const/4 p1, -0x2

    const/4 v0, 0x3

    if-le p2, v0, :cond_0

    .line 52
    new-instance p2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p2, p3, p4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 53
    iget-object p4, p0, Lcom/mh/movie/core/mvp/ui/holder/m;->a:Lpl/droidsonroids/gif/GifImageView;

    invoke-virtual {p4, p2}, Lpl/droidsonroids/gif/GifImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 54
    new-instance p4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p4, p3, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 55
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/holder/m;->f:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 57
    :cond_0
    new-instance p2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 p3, -0x1

    invoke-direct {p2, p3, p4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 58
    iget-object p4, p0, Lcom/mh/movie/core/mvp/ui/holder/m;->a:Lpl/droidsonroids/gif/GifImageView;

    invoke-virtual {p4, p2}, Lpl/droidsonroids/gif/GifImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 59
    new-instance p4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p4, p3, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 60
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/holder/m;->f:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 62
    :goto_0
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/holder/m;->a:Lpl/droidsonroids/gif/GifImageView;

    invoke-virtual {p1, p2}, Lpl/droidsonroids/gif/GifImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 63
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/holder/m;->a:Lpl/droidsonroids/gif/GifImageView;

    invoke-static {p1}, Lcom/jakewharton/rxbinding/view/b;->a(Landroid/view/View;)Lrx/a;

    move-result-object p1

    const-wide/16 p2, 0x1f4

    sget-object p4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 64
    invoke-virtual {p1, p2, p3, p4}, Lrx/a;->a(JLjava/util/concurrent/TimeUnit;)Lrx/a;

    move-result-object p1

    new-instance p2, Lcom/mh/movie/core/mvp/ui/holder/n;

    invoke-direct {p2, p0, p5}, Lcom/mh/movie/core/mvp/ui/holder/n;-><init>(Lcom/mh/movie/core/mvp/ui/holder/m;Lcom/mh/movie/core/mvp/ui/widget/l$a;)V

    .line 65
    invoke-virtual {p1, p2}, Lrx/a;->a(Lrx/b/b;)Lrx/f;

    return-void
.end method


# virtual methods
.method final synthetic a(Lcom/mh/movie/core/mvp/ui/widget/l$a;Ljava/lang/Void;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 67
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/holder/m;->getAdapterPosition()I

    move-result p2

    invoke-interface {p1, p2}, Lcom/mh/movie/core/mvp/ui/widget/l$a;->a(I)V

    :cond_0
    return-void
.end method
