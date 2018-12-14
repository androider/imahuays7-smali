.class public Lcom/mh/movie/core/mvp/ui/adapter/n$b;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "MoreAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mh/movie/core/mvp/ui/adapter/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/mh/movie/core/mvp/ui/adapter/n;

.field private b:Lpl/droidsonroids/gif/GifImageView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/LinearLayout;

.field private i:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Lcom/mh/movie/core/mvp/ui/adapter/n;Landroid/view/View;)V
    .locals 4

    .line 146
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/adapter/n$b;->a:Lcom/mh/movie/core/mvp/ui/adapter/n;

    .line 147
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 148
    sget v0, Lcom/mh/movie/core/R$id;->iv_card_movie:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lpl/droidsonroids/gif/GifImageView;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/adapter/n$b;->b:Lpl/droidsonroids/gif/GifImageView;

    .line 149
    sget v0, Lcom/mh/movie/core/R$id;->card_title:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/adapter/n$b;->c:Landroid/widget/TextView;

    .line 150
    sget v0, Lcom/mh/movie/core/R$id;->card_type:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/adapter/n$b;->d:Landroid/widget/TextView;

    .line 151
    sget v0, Lcom/mh/movie/core/R$id;->iv_card_label:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/adapter/n$b;->e:Landroid/widget/TextView;

    .line 152
    sget v0, Lcom/mh/movie/core/R$id;->tv_card_desc:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/adapter/n$b;->f:Landroid/widget/TextView;

    .line 153
    sget v0, Lcom/mh/movie/core/R$id;->linear_main:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/adapter/n$b;->h:Landroid/widget/LinearLayout;

    .line 154
    sget v0, Lcom/mh/movie/core/R$id;->tv_card_right_score:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/adapter/n$b;->g:Landroid/widget/TextView;

    .line 155
    sget v0, Lcom/mh/movie/core/R$id;->iv_card_mask:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/adapter/n$b;->i:Landroid/widget/ImageView;

    .line 157
    iget v0, p1, Lcom/mh/movie/core/mvp/ui/adapter/n;->c:I

    const/4 v1, -0x2

    const/4 v2, 0x3

    if-le v0, v2, :cond_0

    .line 158
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v2, p1, Lcom/mh/movie/core/mvp/ui/adapter/n;->b:I

    iget v3, p1, Lcom/mh/movie/core/mvp/ui/adapter/n;->a:I

    invoke-direct {v0, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 159
    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/adapter/n$b;->b:Lpl/droidsonroids/gif/GifImageView;

    invoke-virtual {v2, v0}, Lpl/droidsonroids/gif/GifImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 160
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    iget p1, p1, Lcom/mh/movie/core/mvp/ui/adapter/n;->b:I

    invoke-direct {v2, p1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 161
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/adapter/n$b;->h:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 163
    :cond_0
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget p1, p1, Lcom/mh/movie/core/mvp/ui/adapter/n;->a:I

    const/4 v2, -0x1

    invoke-direct {v0, v2, p1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 164
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/adapter/n$b;->b:Lpl/droidsonroids/gif/GifImageView;

    invoke-virtual {p1, v0}, Lpl/droidsonroids/gif/GifImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 165
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p1, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 166
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/adapter/n$b;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 168
    :goto_0
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/adapter/n$b;->b:Lpl/droidsonroids/gif/GifImageView;

    invoke-virtual {p1, v0}, Lpl/droidsonroids/gif/GifImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 169
    new-instance p1, Lcom/mh/movie/core/mvp/ui/adapter/o;

    invoke-direct {p1, p0}, Lcom/mh/movie/core/mvp/ui/adapter/o;-><init>(Lcom/mh/movie/core/mvp/ui/adapter/n$b;)V

    invoke-virtual {p2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic a(Lcom/mh/movie/core/mvp/ui/adapter/n$b;)Landroid/widget/ImageView;
    .locals 0

    .line 136
    iget-object p0, p0, Lcom/mh/movie/core/mvp/ui/adapter/n$b;->i:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic b(Lcom/mh/movie/core/mvp/ui/adapter/n$b;)Lpl/droidsonroids/gif/GifImageView;
    .locals 0

    .line 136
    iget-object p0, p0, Lcom/mh/movie/core/mvp/ui/adapter/n$b;->b:Lpl/droidsonroids/gif/GifImageView;

    return-object p0
.end method

.method static synthetic c(Lcom/mh/movie/core/mvp/ui/adapter/n$b;)Landroid/widget/TextView;
    .locals 0

    .line 136
    iget-object p0, p0, Lcom/mh/movie/core/mvp/ui/adapter/n$b;->c:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic d(Lcom/mh/movie/core/mvp/ui/adapter/n$b;)Landroid/widget/TextView;
    .locals 0

    .line 136
    iget-object p0, p0, Lcom/mh/movie/core/mvp/ui/adapter/n$b;->f:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic e(Lcom/mh/movie/core/mvp/ui/adapter/n$b;)Landroid/widget/TextView;
    .locals 0

    .line 136
    iget-object p0, p0, Lcom/mh/movie/core/mvp/ui/adapter/n$b;->g:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic f(Lcom/mh/movie/core/mvp/ui/adapter/n$b;)Landroid/widget/TextView;
    .locals 0

    .line 136
    iget-object p0, p0, Lcom/mh/movie/core/mvp/ui/adapter/n$b;->d:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic g(Lcom/mh/movie/core/mvp/ui/adapter/n$b;)Landroid/widget/TextView;
    .locals 0

    .line 136
    iget-object p0, p0, Lcom/mh/movie/core/mvp/ui/adapter/n$b;->e:Landroid/widget/TextView;

    return-object p0
.end method


# virtual methods
.method final synthetic a(Landroid/view/View;)V
    .locals 2

    .line 170
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/adapter/n$b;->a:Lcom/mh/movie/core/mvp/ui/adapter/n;

    iget-object p1, p1, Lcom/mh/movie/core/mvp/ui/adapter/n;->d:Lcom/mh/movie/core/mvp/ui/adapter/n$a;

    if-eqz p1, :cond_1

    .line 171
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/adapter/n$b;->a:Lcom/mh/movie/core/mvp/ui/adapter/n;

    iget-object p1, p1, Lcom/mh/movie/core/mvp/ui/adapter/n;->d:Lcom/mh/movie/core/mvp/ui/adapter/n$a;

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/adapter/n$b;->a:Lcom/mh/movie/core/mvp/ui/adapter/n;

    iget-object v0, v0, Lcom/mh/movie/core/mvp/ui/adapter/n;->e:Ljava/util/List;

    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/adapter/n$b;->getAdapterPosition()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/model/entity/response/QueryListBean;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/response/QueryListBean;->getVideoInfoId()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/adapter/n$b;->a:Lcom/mh/movie/core/mvp/ui/adapter/n;

    iget-object v0, v0, Lcom/mh/movie/core/mvp/ui/adapter/n;->e:Ljava/util/List;

    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/adapter/n$b;->getAdapterPosition()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/model/entity/response/QueryListBean;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/response/QueryListBean;->getId()I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/adapter/n$b;->a:Lcom/mh/movie/core/mvp/ui/adapter/n;

    iget-object v0, v0, Lcom/mh/movie/core/mvp/ui/adapter/n;->e:Ljava/util/List;

    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/adapter/n$b;->getAdapterPosition()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/model/entity/response/QueryListBean;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/response/QueryListBean;->getVideoInfoId()I

    move-result v0

    :goto_0
    invoke-interface {p1, v0}, Lcom/mh/movie/core/mvp/ui/adapter/n$a;->a(I)V

    :cond_1
    return-void
.end method
