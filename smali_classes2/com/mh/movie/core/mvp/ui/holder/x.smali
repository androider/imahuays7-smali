.class public Lcom/mh/movie/core/mvp/ui/holder/x;
.super Lcom/mh/movie/core/mvp/ui/holder/d;
.source "TaskViewHolder.java"


# instance fields
.field public a:Landroid/widget/ImageView;

.field public b:Landroid/widget/TextView;

.field public c:Landroid/widget/TextView;

.field public d:Landroid/widget/TextView;

.field public e:Landroid/widget/TextView;

.field public f:Landroid/widget/TextView;

.field public g:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;ILcom/mh/movie/core/mvp/ui/holder/d$a;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2}, Lcom/mh/movie/core/mvp/ui/holder/d;-><init>(Landroid/view/ViewGroup;I)V

    .line 24
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/holder/x;->itemView:Landroid/view/View;

    sget p2, Lcom/mh/movie/core/R$id;->iv_task_img:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/holder/x;->a:Landroid/widget/ImageView;

    .line 25
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/holder/x;->itemView:Landroid/view/View;

    sget p2, Lcom/mh/movie/core/R$id;->tv_task_title:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/holder/x;->b:Landroid/widget/TextView;

    .line 26
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/holder/x;->itemView:Landroid/view/View;

    sget p2, Lcom/mh/movie/core/R$id;->tv_task_finish:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/holder/x;->c:Landroid/widget/TextView;

    .line 27
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/holder/x;->itemView:Landroid/view/View;

    sget p2, Lcom/mh/movie/core/R$id;->tv_task_money:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/holder/x;->d:Landroid/widget/TextView;

    .line 28
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/holder/x;->itemView:Landroid/view/View;

    sget p2, Lcom/mh/movie/core/R$id;->tv_task_action:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/holder/x;->e:Landroid/widget/TextView;

    .line 29
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/holder/x;->itemView:Landroid/view/View;

    sget p2, Lcom/mh/movie/core/R$id;->tv_task_desc:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/holder/x;->f:Landroid/widget/TextView;

    .line 30
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/holder/x;->itemView:Landroid/view/View;

    sget p2, Lcom/mh/movie/core/R$id;->v_line:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/holder/x;->g:Landroid/view/View;

    .line 31
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/holder/x;->e:Landroid/widget/TextView;

    new-instance p2, Lcom/mh/movie/core/mvp/ui/holder/y;

    invoke-direct {p2, p0, p3}, Lcom/mh/movie/core/mvp/ui/holder/y;-><init>(Lcom/mh/movie/core/mvp/ui/holder/x;Lcom/mh/movie/core/mvp/ui/holder/d$a;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method protected a(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method final synthetic a(Lcom/mh/movie/core/mvp/ui/holder/d$a;Landroid/view/View;)V
    .locals 0

    .line 31
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/holder/x;->getAdapterPosition()I

    move-result p2

    invoke-interface {p1, p2}, Lcom/mh/movie/core/mvp/ui/holder/d$a;->a(I)V

    return-void
.end method
