.class public Lcom/mh/movie/core/mvp/ui/adapter/s$b;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "SearchLabelAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mh/movie/core/mvp/ui/adapter/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/mh/movie/core/mvp/ui/adapter/s;

.field private b:Landroid/widget/ImageView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/ImageView;

.field private e:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/mh/movie/core/mvp/ui/adapter/s;Landroid/view/View;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/adapter/s$b;->a:Lcom/mh/movie/core/mvp/ui/adapter/s;

    .line 85
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 86
    sget p1, Lcom/mh/movie/core/R$id;->iv_search_label_sort:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/adapter/s$b;->b:Landroid/widget/ImageView;

    .line 87
    sget p1, Lcom/mh/movie/core/R$id;->tv_search_label:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/adapter/s$b;->c:Landroid/widget/TextView;

    .line 88
    sget p1, Lcom/mh/movie/core/R$id;->iv_search_label_ranking:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/adapter/s$b;->d:Landroid/widget/ImageView;

    .line 89
    sget p1, Lcom/mh/movie/core/R$id;->tv_search_label_flag:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/adapter/s$b;->e:Landroid/widget/TextView;

    .line 90
    new-instance p1, Lcom/mh/movie/core/mvp/ui/adapter/t;

    invoke-direct {p1, p0}, Lcom/mh/movie/core/mvp/ui/adapter/t;-><init>(Lcom/mh/movie/core/mvp/ui/adapter/s$b;)V

    invoke-virtual {p2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic a(Lcom/mh/movie/core/mvp/ui/adapter/s$b;)Landroid/widget/ImageView;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/mh/movie/core/mvp/ui/adapter/s$b;->b:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic b(Lcom/mh/movie/core/mvp/ui/adapter/s$b;)Landroid/widget/TextView;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/mh/movie/core/mvp/ui/adapter/s$b;->c:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic c(Lcom/mh/movie/core/mvp/ui/adapter/s$b;)Landroid/widget/TextView;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/mh/movie/core/mvp/ui/adapter/s$b;->e:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic d(Lcom/mh/movie/core/mvp/ui/adapter/s$b;)Landroid/widget/ImageView;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/mh/movie/core/mvp/ui/adapter/s$b;->d:Landroid/widget/ImageView;

    return-object p0
.end method


# virtual methods
.method final synthetic a(Landroid/view/View;)V
    .locals 2

    .line 91
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/adapter/s$b;->a:Lcom/mh/movie/core/mvp/ui/adapter/s;

    invoke-static {p1}, Lcom/mh/movie/core/mvp/ui/adapter/s;->a(Lcom/mh/movie/core/mvp/ui/adapter/s;)Lcom/mh/movie/core/mvp/ui/adapter/s$a;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 92
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/adapter/s$b;->a:Lcom/mh/movie/core/mvp/ui/adapter/s;

    invoke-static {p1}, Lcom/mh/movie/core/mvp/ui/adapter/s;->a(Lcom/mh/movie/core/mvp/ui/adapter/s;)Lcom/mh/movie/core/mvp/ui/adapter/s$a;

    move-result-object p1

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/adapter/s$b;->a:Lcom/mh/movie/core/mvp/ui/adapter/s;

    iget-object v0, v0, Lcom/mh/movie/core/mvp/ui/adapter/s;->e:Ljava/util/List;

    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/adapter/s$b;->getAdapterPosition()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/model/entity/SearchTabBean$RankListBean;

    invoke-interface {p1, v0}, Lcom/mh/movie/core/mvp/ui/adapter/s$a;->a(Lcom/mh/movie/core/mvp/model/entity/SearchTabBean$RankListBean;)V

    :cond_0
    return-void
.end method
