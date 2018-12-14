.class public Lcom/mh/movie/core/mvp/ui/holder/t;
.super Lcom/mh/movie/core/mvp/ui/holder/d;
.source "ScreenViewHolder.java"


# instance fields
.field public a:Landroid/widget/RadioButton;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;ILcom/mh/movie/core/mvp/ui/holder/d$a;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1, p2}, Lcom/mh/movie/core/mvp/ui/holder/d;-><init>(Landroid/view/ViewGroup;I)V

    .line 14
    iput-object p3, p0, Lcom/mh/movie/core/mvp/ui/holder/t;->j:Lcom/mh/movie/core/mvp/ui/holder/d$a;

    return-void
.end method


# virtual methods
.method protected a(Landroid/view/View;)V
    .locals 1

    .line 19
    sget v0, Lcom/mh/movie/core/R$id;->rb_select_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioButton;

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/holder/t;->a:Landroid/widget/RadioButton;

    .line 20
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/holder/t;->a:Landroid/widget/RadioButton;

    new-instance v0, Lcom/mh/movie/core/mvp/ui/holder/u;

    invoke-direct {v0, p0}, Lcom/mh/movie/core/mvp/ui/holder/u;-><init>(Lcom/mh/movie/core/mvp/ui/holder/t;)V

    invoke-virtual {p1, v0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method final synthetic b(Landroid/view/View;)V
    .locals 1

    .line 20
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/holder/t;->j:Lcom/mh/movie/core/mvp/ui/holder/d$a;

    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/holder/t;->getAdapterPosition()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/mh/movie/core/mvp/ui/holder/d$a;->a(I)V

    return-void
.end method
