.class public Lcom/mh/movie/core/mvp/ui/adapter/l$b;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "LabelAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mh/movie/core/mvp/ui/adapter/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/mh/movie/core/mvp/ui/adapter/l;

.field private b:Landroid/widget/CheckBox;


# direct methods
.method public constructor <init>(Lcom/mh/movie/core/mvp/ui/adapter/l;Landroid/view/View;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/adapter/l$b;->a:Lcom/mh/movie/core/mvp/ui/adapter/l;

    .line 68
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 69
    sget p1, Lcom/mh/movie/core/R$id;->cb_label:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/adapter/l$b;->b:Landroid/widget/CheckBox;

    .line 70
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/adapter/l$b;->b:Landroid/widget/CheckBox;

    new-instance p2, Lcom/mh/movie/core/mvp/ui/adapter/m;

    invoke-direct {p2, p0}, Lcom/mh/movie/core/mvp/ui/adapter/m;-><init>(Lcom/mh/movie/core/mvp/ui/adapter/l$b;)V

    invoke-virtual {p1, p2}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic a(Lcom/mh/movie/core/mvp/ui/adapter/l$b;)Landroid/widget/CheckBox;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/mh/movie/core/mvp/ui/adapter/l$b;->b:Landroid/widget/CheckBox;

    return-object p0
.end method


# virtual methods
.method final synthetic a(Landroid/view/View;)V
    .locals 2

    .line 71
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/adapter/l$b;->a:Lcom/mh/movie/core/mvp/ui/adapter/l;

    invoke-static {p1}, Lcom/mh/movie/core/mvp/ui/adapter/l;->a(Lcom/mh/movie/core/mvp/ui/adapter/l;)I

    move-result p1

    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/adapter/l$b;->getAdapterPosition()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 72
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/adapter/l$b;->b:Landroid/widget/CheckBox;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    return-void

    .line 75
    :cond_0
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/adapter/l$b;->a:Lcom/mh/movie/core/mvp/ui/adapter/l;

    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/adapter/l$b;->getAdapterPosition()I

    move-result v0

    invoke-static {p1, v0}, Lcom/mh/movie/core/mvp/ui/adapter/l;->a(Lcom/mh/movie/core/mvp/ui/adapter/l;I)I

    .line 76
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/adapter/l$b;->a:Lcom/mh/movie/core/mvp/ui/adapter/l;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/ui/adapter/l;->notifyDataSetChanged()V

    .line 77
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/adapter/l$b;->a:Lcom/mh/movie/core/mvp/ui/adapter/l;

    invoke-static {p1}, Lcom/mh/movie/core/mvp/ui/adapter/l;->b(Lcom/mh/movie/core/mvp/ui/adapter/l;)Lcom/mh/movie/core/mvp/ui/adapter/l$a;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 78
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/adapter/l$b;->a:Lcom/mh/movie/core/mvp/ui/adapter/l;

    invoke-static {p1}, Lcom/mh/movie/core/mvp/ui/adapter/l;->b(Lcom/mh/movie/core/mvp/ui/adapter/l;)Lcom/mh/movie/core/mvp/ui/adapter/l$a;

    move-result-object p1

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/adapter/l$b;->a:Lcom/mh/movie/core/mvp/ui/adapter/l;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/adapter/l;->c(Lcom/mh/movie/core/mvp/ui/adapter/l;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/adapter/l$b;->a:Lcom/mh/movie/core/mvp/ui/adapter/l;

    invoke-static {v1}, Lcom/mh/movie/core/mvp/ui/adapter/l;->a(Lcom/mh/movie/core/mvp/ui/adapter/l;)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/adapter/l$b;->a:Lcom/mh/movie/core/mvp/ui/adapter/l;

    invoke-static {v1}, Lcom/mh/movie/core/mvp/ui/adapter/l;->d(Lcom/mh/movie/core/mvp/ui/adapter/l;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/mh/movie/core/mvp/ui/adapter/l$a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    return-void
.end method
