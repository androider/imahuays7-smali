.class public Lcom/mh/movie/core/mvp/ui/holder/v;
.super Lcom/mh/movie/core/mvp/ui/holder/d;
.source "SuggestionViewHolder.java"


# instance fields
.field public a:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;ILcom/mh/movie/core/mvp/ui/holder/d$a;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1, p2}, Lcom/mh/movie/core/mvp/ui/holder/d;-><init>(Landroid/view/ViewGroup;I)V

    .line 15
    iput-object p3, p0, Lcom/mh/movie/core/mvp/ui/holder/v;->j:Lcom/mh/movie/core/mvp/ui/holder/d$a;

    return-void
.end method


# virtual methods
.method protected a(Landroid/view/View;)V
    .locals 1

    .line 20
    sget v0, Lcom/mh/movie/core/R$id;->tv_suggestion:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/holder/v;->a:Landroid/widget/TextView;

    return-void
.end method
