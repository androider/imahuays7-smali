.class public Lcom/mh/movie/core/mvp/ui/adapter/k$a;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "HeaderImgAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mh/movie/core/mvp/ui/adapter/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field a:Landroid/widget/CheckBox;

.field b:Landroid/widget/ImageView;

.field c:Landroid/widget/ImageView;

.field final synthetic d:Lcom/mh/movie/core/mvp/ui/adapter/k;


# direct methods
.method public constructor <init>(Lcom/mh/movie/core/mvp/ui/adapter/k;Landroid/view/View;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/adapter/k$a;->d:Lcom/mh/movie/core/mvp/ui/adapter/k;

    .line 74
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 76
    sget p1, Lcom/mh/movie/core/R$id;->cb_header_img:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/adapter/k$a;->a:Landroid/widget/CheckBox;

    .line 77
    sget p1, Lcom/mh/movie/core/R$id;->iv_header_select:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/adapter/k$a;->b:Landroid/widget/ImageView;

    .line 78
    sget p1, Lcom/mh/movie/core/R$id;->iv_select_bg:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/adapter/k$a;->c:Landroid/widget/ImageView;

    .line 79
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/adapter/k$a;->a:Landroid/widget/CheckBox;

    invoke-virtual {p1, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 85
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/adapter/k$a;->d:Lcom/mh/movie/core/mvp/ui/adapter/k;

    invoke-static {p1}, Lcom/mh/movie/core/mvp/ui/adapter/k;->a(Lcom/mh/movie/core/mvp/ui/adapter/k;)I

    move-result p1

    if-ltz p1, :cond_0

    .line 86
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/adapter/k$a;->d:Lcom/mh/movie/core/mvp/ui/adapter/k;

    invoke-static {p1}, Lcom/mh/movie/core/mvp/ui/adapter/k;->b(Lcom/mh/movie/core/mvp/ui/adapter/k;)Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/adapter/k$a;->d:Lcom/mh/movie/core/mvp/ui/adapter/k;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/adapter/k;->a(Lcom/mh/movie/core/mvp/ui/adapter/k;)I

    move-result v0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mh/movie/core/mvp/model/entity/response/HeadPictureResponse;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/mh/movie/core/mvp/model/entity/response/HeadPictureResponse;->setSelect(Z)V

    .line 88
    :cond_0
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/adapter/k$a;->d:Lcom/mh/movie/core/mvp/ui/adapter/k;

    invoke-static {p1}, Lcom/mh/movie/core/mvp/ui/adapter/k;->b(Lcom/mh/movie/core/mvp/ui/adapter/k;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/adapter/k$a;->getAdapterPosition()I

    move-result v0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mh/movie/core/mvp/model/entity/response/HeadPictureResponse;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/mh/movie/core/mvp/model/entity/response/HeadPictureResponse;->setSelect(Z)V

    .line 89
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/adapter/k$a;->d:Lcom/mh/movie/core/mvp/ui/adapter/k;

    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/adapter/k$a;->getAdapterPosition()I

    move-result v0

    invoke-static {p1, v0}, Lcom/mh/movie/core/mvp/ui/adapter/k;->a(Lcom/mh/movie/core/mvp/ui/adapter/k;I)I

    .line 90
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/adapter/k$a;->d:Lcom/mh/movie/core/mvp/ui/adapter/k;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/ui/adapter/k;->notifyDataSetChanged()V

    return-void
.end method
