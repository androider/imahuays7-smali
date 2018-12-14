.class public Lcom/mh/movie/core/mvp/ui/holder/e;
.super Lcom/mh/movie/core/mvp/ui/holder/d;
.source "CacheViewHolder.java"


# instance fields
.field public a:Landroid/widget/TextView;

.field public b:Landroid/widget/ImageView;

.field public c:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;ILcom/mh/movie/core/mvp/ui/holder/d$a;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2}, Lcom/mh/movie/core/mvp/ui/holder/d;-><init>(Landroid/view/ViewGroup;I)V

    .line 22
    iput-object p3, p0, Lcom/mh/movie/core/mvp/ui/holder/e;->j:Lcom/mh/movie/core/mvp/ui/holder/d$a;

    return-void
.end method


# virtual methods
.method protected a(Landroid/view/View;)V
    .locals 1

    .line 27
    sget v0, Lcom/mh/movie/core/R$id;->tv_player_tv_part_item:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/holder/e;->a:Landroid/widget/TextView;

    .line 28
    sget v0, Lcom/mh/movie/core/R$id;->iv_player_cache:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/holder/e;->b:Landroid/widget/ImageView;

    .line 29
    sget v0, Lcom/mh/movie/core/R$id;->tv_label_clarity:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/holder/e;->c:Landroid/widget/TextView;

    return-void
.end method
