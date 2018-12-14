.class public abstract Lcom/mh/movie/core/mvp/ui/fragment/d;
.super Lcom/jess/arms/a/e;
.source "EditableFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<P::",
        "Lcom/jess/arms/mvp/b;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/jess/arms/a/e<",
        "TP;>;"
    }
.end annotation


# instance fields
.field protected f:Landroid/widget/LinearLayout;

.field protected g:Landroid/widget/TextView;

.field protected h:Landroid/widget/TextView;

.field protected i:Lcom/mh/movie/core/mvp/ui/adapter/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mh/movie/core/mvp/ui/adapter/d<",
            "TT;>;"
        }
    .end annotation
.end field

.field j:Lcom/mh/movie/core/mvp/ui/adapter/d$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mh/movie/core/mvp/ui/adapter/d$a<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Lcom/jess/arms/a/e;-><init>()V

    .line 67
    new-instance v0, Lcom/mh/movie/core/mvp/ui/fragment/d$1;

    invoke-direct {v0, p0}, Lcom/mh/movie/core/mvp/ui/fragment/d$1;-><init>(Lcom/mh/movie/core/mvp/ui/fragment/d;)V

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/d;->j:Lcom/mh/movie/core/mvp/ui/adapter/d$a;

    return-void
.end method

.method static synthetic a(Lcom/mh/movie/core/mvp/ui/fragment/d;Z)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lcom/mh/movie/core/mvp/ui/fragment/d;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 39
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/fragment/d;->g:Landroid/widget/TextView;

    const-string v0, "\u53d6\u6d88\u5168\u9009"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 41
    :cond_0
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/fragment/d;->g:Landroid/widget/TextView;

    const-string v0, "\u5168\u9009"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method


# virtual methods
.method protected a(Landroid/view/View;Lcom/mh/movie/core/mvp/ui/adapter/d;)V
    .locals 2

    .line 47
    iput-object p2, p0, Lcom/mh/movie/core/mvp/ui/fragment/d;->i:Lcom/mh/movie/core/mvp/ui/adapter/d;

    .line 49
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/d;->i:Lcom/mh/movie/core/mvp/ui/adapter/d;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/fragment/d;->j:Lcom/mh/movie/core/mvp/ui/adapter/d$a;

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/ui/adapter/d;->a(Lcom/mh/movie/core/mvp/ui/adapter/d$a;)V

    .line 51
    sget v0, Lcom/mh/movie/core/R$id;->tv_selected_all:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/d;->g:Landroid/widget/TextView;

    .line 52
    sget v0, Lcom/mh/movie/core/R$id;->tv_delete:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/d;->h:Landroid/widget/TextView;

    .line 53
    sget v0, Lcom/mh/movie/core/R$id;->ll_operator:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/fragment/d;->f:Landroid/widget/LinearLayout;

    .line 55
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/fragment/d;->g:Landroid/widget/TextView;

    new-instance v0, Lcom/mh/movie/core/mvp/ui/fragment/e;

    invoke-direct {v0, p0, p2}, Lcom/mh/movie/core/mvp/ui/fragment/e;-><init>(Lcom/mh/movie/core/mvp/ui/fragment/d;Lcom/mh/movie/core/mvp/ui/adapter/d;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/fragment/d;->h:Landroid/widget/TextView;

    new-instance v0, Lcom/mh/movie/core/mvp/ui/fragment/f;

    invoke-direct {v0, p0, p2}, Lcom/mh/movie/core/mvp/ui/fragment/f;-><init>(Lcom/mh/movie/core/mvp/ui/fragment/d;Lcom/mh/movie/core/mvp/ui/adapter/d;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method final synthetic a(Lcom/mh/movie/core/mvp/ui/adapter/d;Landroid/view/View;)V
    .locals 0

    .line 62
    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/ui/adapter/d;->a()Ljava/util/Set;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/ui/fragment/d;->a(Ljava/util/Set;)V

    return-void
.end method

.method abstract a(Ljava/util/Set;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/Integer;",
            "TT;>;>;)V"
        }
    .end annotation
.end method

.method final synthetic b(Lcom/mh/movie/core/mvp/ui/adapter/d;Landroid/view/View;)V
    .locals 0

    .line 56
    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/ui/adapter/d;->c()Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    invoke-virtual {p1, p2}, Lcom/mh/movie/core/mvp/ui/adapter/d;->a(Z)V

    .line 57
    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/ui/adapter/d;->c()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/mh/movie/core/mvp/ui/fragment/d;->a(Z)V

    return-void
.end method

.method public h()V
    .locals 2

    .line 97
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/d;->g:Landroid/widget/TextView;

    const-string v1, "\u5168\u9009"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/d;->i:Lcom/mh/movie/core/mvp/ui/adapter/d;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/ui/adapter/d;->b(Z)V

    .line 99
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/d;->f:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method public i()V
    .locals 2

    .line 103
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/d;->g:Landroid/widget/TextView;

    const-string v1, "\u53d6\u6d88\u5168\u9009"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/d;->f:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 105
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/d;->i:Lcom/mh/movie/core/mvp/ui/adapter/d;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/ui/adapter/d;->b(Z)V

    .line 106
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/d;->i:Lcom/mh/movie/core/mvp/ui/adapter/d;

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/ui/adapter/d;->a(Z)V

    return-void
.end method
