.class public Lcom/mh/movie/core/mvp/ui/adapter/a$b;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "ClarityAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mh/movie/core/mvp/ui/adapter/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/mh/movie/core/mvp/ui/adapter/a;

.field private b:Landroid/widget/RadioButton;

.field private c:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Lcom/mh/movie/core/mvp/ui/adapter/a;Landroid/view/View;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/adapter/a$b;->a:Lcom/mh/movie/core/mvp/ui/adapter/a;

    .line 83
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 84
    sget p1, Lcom/mh/movie/core/R$id;->rb_clarity:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioButton;

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/adapter/a$b;->b:Landroid/widget/RadioButton;

    .line 85
    sget p1, Lcom/mh/movie/core/R$id;->ll_clarity_bg:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/adapter/a$b;->c:Landroid/widget/LinearLayout;

    .line 86
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/adapter/a$b;->c:Landroid/widget/LinearLayout;

    new-instance p2, Lcom/mh/movie/core/mvp/ui/adapter/b;

    invoke-direct {p2, p0}, Lcom/mh/movie/core/mvp/ui/adapter/b;-><init>(Lcom/mh/movie/core/mvp/ui/adapter/a$b;)V

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic a(Lcom/mh/movie/core/mvp/ui/adapter/a$b;)Landroid/widget/RadioButton;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/mh/movie/core/mvp/ui/adapter/a$b;->b:Landroid/widget/RadioButton;

    return-object p0
.end method

.method static synthetic b(Lcom/mh/movie/core/mvp/ui/adapter/a$b;)Landroid/widget/LinearLayout;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/mh/movie/core/mvp/ui/adapter/a$b;->c:Landroid/widget/LinearLayout;

    return-object p0
.end method


# virtual methods
.method final synthetic a(Landroid/view/View;)V
    .locals 4

    .line 88
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/adapter/a$b;->getAdapterPosition()I

    move-result p1

    .line 89
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/adapter/a$b;->a:Lcom/mh/movie/core/mvp/ui/adapter/a;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/adapter/a;->a(Lcom/mh/movie/core/mvp/ui/adapter/a;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/model/entity/ClarityEntity;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/ClarityEntity;->isSelect()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/adapter/a$b;->b:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    const/4 v1, 0x1

    goto :goto_0

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/adapter/a$b;->a:Lcom/mh/movie/core/mvp/ui/adapter/a;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/adapter/a;->a(Lcom/mh/movie/core/mvp/ui/adapter/a;)Ljava/util/List;

    move-result-object v0

    iget-object v3, p0, Lcom/mh/movie/core/mvp/ui/adapter/a$b;->a:Lcom/mh/movie/core/mvp/ui/adapter/a;

    invoke-static {v3}, Lcom/mh/movie/core/mvp/ui/adapter/a;->b(Lcom/mh/movie/core/mvp/ui/adapter/a;)I

    move-result v3

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/model/entity/ClarityEntity;

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/model/entity/ClarityEntity;->setSelect(Z)V

    .line 94
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/adapter/a$b;->a:Lcom/mh/movie/core/mvp/ui/adapter/a;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/adapter/a;->a(Lcom/mh/movie/core/mvp/ui/adapter/a;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/model/entity/ClarityEntity;

    invoke-virtual {v0, v2}, Lcom/mh/movie/core/mvp/model/entity/ClarityEntity;->setSelect(Z)V

    .line 96
    :goto_0
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/adapter/a$b;->a:Lcom/mh/movie/core/mvp/ui/adapter/a;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/adapter/a;->notifyDataSetChanged()V

    .line 97
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/adapter/a$b;->a:Lcom/mh/movie/core/mvp/ui/adapter/a;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/adapter/a;->c(Lcom/mh/movie/core/mvp/ui/adapter/a;)Lcom/mh/movie/core/mvp/ui/adapter/a$a;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 98
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/adapter/a$b;->a:Lcom/mh/movie/core/mvp/ui/adapter/a;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/adapter/a;->c(Lcom/mh/movie/core/mvp/ui/adapter/a;)Lcom/mh/movie/core/mvp/ui/adapter/a$a;

    move-result-object v0

    invoke-interface {v0, p1, v1}, Lcom/mh/movie/core/mvp/ui/adapter/a$a;->a(IZ)V

    :cond_1
    return-void
.end method
