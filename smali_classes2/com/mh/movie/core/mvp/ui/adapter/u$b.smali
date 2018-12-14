.class public Lcom/mh/movie/core/mvp/ui/adapter/u$b;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "SearchResultAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mh/movie/core/mvp/ui/adapter/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/mh/movie/core/mvp/ui/adapter/u;

.field private b:Landroid/widget/ImageView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/mh/movie/core/mvp/ui/adapter/u;Landroid/view/View;)V
    .locals 0

    .line 127
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/adapter/u$b;->a:Lcom/mh/movie/core/mvp/ui/adapter/u;

    .line 128
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 129
    sget p1, Lcom/mh/movie/core/R$id;->iv_card_movie:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/adapter/u$b;->b:Landroid/widget/ImageView;

    .line 130
    sget p1, Lcom/mh/movie/core/R$id;->search_title:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/adapter/u$b;->c:Landroid/widget/TextView;

    .line 131
    sget p1, Lcom/mh/movie/core/R$id;->search_playcount:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/adapter/u$b;->d:Landroid/widget/TextView;

    .line 132
    sget p1, Lcom/mh/movie/core/R$id;->iv_card_label:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/adapter/u$b;->e:Landroid/widget/TextView;

    .line 133
    sget p1, Lcom/mh/movie/core/R$id;->tv_card_desc:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/adapter/u$b;->f:Landroid/widget/TextView;

    .line 134
    sget p1, Lcom/mh/movie/core/R$id;->tv_douban_score:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/adapter/u$b;->g:Landroid/widget/TextView;

    .line 135
    new-instance p1, Lcom/mh/movie/core/mvp/ui/adapter/v;

    invoke-direct {p1, p0}, Lcom/mh/movie/core/mvp/ui/adapter/v;-><init>(Lcom/mh/movie/core/mvp/ui/adapter/u$b;)V

    invoke-virtual {p2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic a(Lcom/mh/movie/core/mvp/ui/adapter/u$b;)Landroid/widget/ImageView;
    .locals 0

    .line 119
    iget-object p0, p0, Lcom/mh/movie/core/mvp/ui/adapter/u$b;->b:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic b(Lcom/mh/movie/core/mvp/ui/adapter/u$b;)Landroid/widget/TextView;
    .locals 0

    .line 119
    iget-object p0, p0, Lcom/mh/movie/core/mvp/ui/adapter/u$b;->c:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic c(Lcom/mh/movie/core/mvp/ui/adapter/u$b;)Landroid/widget/TextView;
    .locals 0

    .line 119
    iget-object p0, p0, Lcom/mh/movie/core/mvp/ui/adapter/u$b;->f:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic d(Lcom/mh/movie/core/mvp/ui/adapter/u$b;)Landroid/widget/TextView;
    .locals 0

    .line 119
    iget-object p0, p0, Lcom/mh/movie/core/mvp/ui/adapter/u$b;->d:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic e(Lcom/mh/movie/core/mvp/ui/adapter/u$b;)Landroid/widget/TextView;
    .locals 0

    .line 119
    iget-object p0, p0, Lcom/mh/movie/core/mvp/ui/adapter/u$b;->e:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic f(Lcom/mh/movie/core/mvp/ui/adapter/u$b;)Landroid/widget/TextView;
    .locals 0

    .line 119
    iget-object p0, p0, Lcom/mh/movie/core/mvp/ui/adapter/u$b;->g:Landroid/widget/TextView;

    return-object p0
.end method


# virtual methods
.method final synthetic a(Landroid/view/View;)V
    .locals 3

    .line 136
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/adapter/u$b;->a:Lcom/mh/movie/core/mvp/ui/adapter/u;

    iget-object p1, p1, Lcom/mh/movie/core/mvp/ui/adapter/u;->a:Lcom/mh/movie/core/mvp/ui/adapter/u$a;

    if-eqz p1, :cond_0

    .line 137
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/adapter/u$b;->a:Lcom/mh/movie/core/mvp/ui/adapter/u;

    iget-object p1, p1, Lcom/mh/movie/core/mvp/ui/adapter/u;->a:Lcom/mh/movie/core/mvp/ui/adapter/u$a;

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/adapter/u$b;->a:Lcom/mh/movie/core/mvp/ui/adapter/u;

    iget-object v0, v0, Lcom/mh/movie/core/mvp/ui/adapter/u;->e:Ljava/util/List;

    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/adapter/u$b;->getAdapterPosition()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/model/entity/response/SearchResponse;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/response/SearchResponse;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/adapter/u$b;->a:Lcom/mh/movie/core/mvp/ui/adapter/u;

    iget-object v1, v1, Lcom/mh/movie/core/mvp/ui/adapter/u;->e:Ljava/util/List;

    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/adapter/u$b;->getAdapterPosition()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mh/movie/core/mvp/model/entity/response/SearchResponse;

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/model/entity/response/SearchResponse;->getType()I

    move-result v1

    invoke-interface {p1, v0, v1}, Lcom/mh/movie/core/mvp/ui/adapter/u$a;->a(II)V

    :cond_0
    return-void
.end method
