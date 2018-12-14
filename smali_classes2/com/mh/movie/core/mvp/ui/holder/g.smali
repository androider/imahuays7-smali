.class public Lcom/mh/movie/core/mvp/ui/holder/g;
.super Lcom/mh/movie/core/mvp/ui/holder/d;
.source "CommentMessageViewHolder.java"


# instance fields
.field public a:Landroid/widget/TextView;

.field public b:Landroid/widget/TextView;

.field public c:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;ILcom/mh/movie/core/mvp/ui/holder/d$a;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1, p2}, Lcom/mh/movie/core/mvp/ui/holder/d;-><init>(Landroid/view/ViewGroup;I)V

    .line 20
    iput-object p3, p0, Lcom/mh/movie/core/mvp/ui/holder/g;->j:Lcom/mh/movie/core/mvp/ui/holder/d$a;

    return-void
.end method


# virtual methods
.method protected a(Landroid/view/View;)V
    .locals 1

    .line 25
    sget v0, Lcom/mh/movie/core/R$id;->tv_message_type:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/holder/g;->a:Landroid/widget/TextView;

    .line 26
    sget v0, Lcom/mh/movie/core/R$id;->tv_message_time:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/holder/g;->b:Landroid/widget/TextView;

    .line 27
    sget v0, Lcom/mh/movie/core/R$id;->tv_message_content:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/holder/g;->c:Landroid/widget/TextView;

    return-void
.end method
