.class public Lcom/mh/movie/core/mvp/ui/holder/f;
.super Lcom/mh/movie/core/mvp/ui/holder/d;
.source "ChangedViewHolder.java"


# instance fields
.field public a:Landroid/widget/ImageView;

.field public b:Landroid/widget/TextView;

.field public c:Landroid/widget/TextView;

.field public d:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;ILcom/mh/movie/core/mvp/ui/holder/d$a;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1, p2}, Lcom/mh/movie/core/mvp/ui/holder/d;-><init>(Landroid/view/ViewGroup;I)V

    .line 20
    iput-object p3, p0, Lcom/mh/movie/core/mvp/ui/holder/f;->j:Lcom/mh/movie/core/mvp/ui/holder/d$a;

    return-void
.end method


# virtual methods
.method protected a(Landroid/view/View;)V
    .locals 1

    .line 25
    sget v0, Lcom/mh/movie/core/R$id;->iv_changed_img:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/holder/f;->a:Landroid/widget/ImageView;

    .line 26
    sget v0, Lcom/mh/movie/core/R$id;->tv_changed_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/holder/f;->b:Landroid/widget/TextView;

    .line 27
    sget v0, Lcom/mh/movie/core/R$id;->tv_change_time:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/holder/f;->c:Landroid/widget/TextView;

    .line 28
    sget v0, Lcom/mh/movie/core/R$id;->v_line:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/holder/f;->d:Landroid/view/View;

    return-void
.end method
