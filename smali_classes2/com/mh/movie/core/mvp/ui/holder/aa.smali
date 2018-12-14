.class public Lcom/mh/movie/core/mvp/ui/holder/aa;
.super Lcom/mh/movie/core/mvp/ui/holder/d;
.source "UnChangedViewHolder.java"


# instance fields
.field public a:Landroid/widget/ImageView;

.field public b:Landroid/widget/TextView;

.field public c:Landroid/widget/TextView;

.field public d:Landroid/widget/TextView;

.field public e:Landroid/widget/TextView;

.field public f:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;I)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2}, Lcom/mh/movie/core/mvp/ui/holder/d;-><init>(Landroid/view/ViewGroup;I)V

    return-void
.end method


# virtual methods
.method protected a(Landroid/view/View;)V
    .locals 1

    .line 27
    sget v0, Lcom/mh/movie/core/R$id;->iv_changed_img:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/holder/aa;->a:Landroid/widget/ImageView;

    .line 28
    sget v0, Lcom/mh/movie/core/R$id;->tv_exchange_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/holder/aa;->b:Landroid/widget/TextView;

    .line 29
    sget v0, Lcom/mh/movie/core/R$id;->tv_exchange_money:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/holder/aa;->c:Landroid/widget/TextView;

    .line 30
    sget v0, Lcom/mh/movie/core/R$id;->tv_exchange_time:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/holder/aa;->d:Landroid/widget/TextView;

    .line 31
    sget v0, Lcom/mh/movie/core/R$id;->tv_exchange_action:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/holder/aa;->e:Landroid/widget/TextView;

    .line 32
    sget v0, Lcom/mh/movie/core/R$id;->v_line:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/holder/aa;->f:Landroid/view/View;

    return-void
.end method
