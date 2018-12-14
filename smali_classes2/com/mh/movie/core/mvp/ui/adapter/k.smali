.class public Lcom/mh/movie/core/mvp/ui/adapter/k;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "HeaderImgAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mh/movie/core/mvp/ui/adapter/k$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Lcom/mh/movie/core/mvp/ui/adapter/k$a;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mh/movie/core/mvp/model/entity/response/HeadPictureResponse;",
            ">;"
        }
    .end annotation
.end field

.field private b:I

.field private c:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 36
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/adapter/k;->a:Ljava/util/List;

    .line 37
    iput p1, p0, Lcom/mh/movie/core/mvp/ui/adapter/k;->b:I

    return-void
.end method

.method static synthetic a(Lcom/mh/movie/core/mvp/ui/adapter/k;)I
    .locals 0

    .line 23
    iget p0, p0, Lcom/mh/movie/core/mvp/ui/adapter/k;->c:I

    return p0
.end method

.method static synthetic a(Lcom/mh/movie/core/mvp/ui/adapter/k;I)I
    .locals 0

    .line 23
    iput p1, p0, Lcom/mh/movie/core/mvp/ui/adapter/k;->c:I

    return p1
.end method

.method static synthetic b(Lcom/mh/movie/core/mvp/ui/adapter/k;)Ljava/util/List;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/mh/movie/core/mvp/ui/adapter/k;->a:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public a()Lcom/mh/movie/core/mvp/model/entity/response/HeadPictureResponse;
    .locals 2

    .line 95
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/adapter/k;->a:Ljava/util/List;

    iget v1, p0, Lcom/mh/movie/core/mvp/ui/adapter/k;->c:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/model/entity/response/HeadPictureResponse;

    return-object v0
.end method

.method public a(Landroid/view/ViewGroup;I)Lcom/mh/movie/core/mvp/ui/adapter/k$a;
    .locals 3
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 43
    new-instance p2, Lcom/mh/movie/core/mvp/ui/adapter/k$a;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/mh/movie/core/R$layout;->item_header_img:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/mh/movie/core/mvp/ui/adapter/k$a;-><init>(Lcom/mh/movie/core/mvp/ui/adapter/k;Landroid/view/View;)V

    return-object p2
.end method

.method public a(Lcom/mh/movie/core/mvp/ui/adapter/k$a;I)V
    .locals 4
    .param p1    # Lcom/mh/movie/core/mvp/ui/adapter/k$a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 50
    iget-object v0, p1, Lcom/mh/movie/core/mvp/ui/adapter/k$a;->b:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/adapter/k;->a:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mh/movie/core/mvp/model/entity/response/HeadPictureResponse;

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/model/entity/response/HeadPictureResponse;->isSelect()Z

    move-result v1

    const/4 v2, 0x4

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 51
    iget-object v0, p1, Lcom/mh/movie/core/mvp/ui/adapter/k$a;->c:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/adapter/k;->a:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mh/movie/core/mvp/model/entity/response/HeadPictureResponse;

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/model/entity/response/HeadPictureResponse;->isSelect()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v2, 0x0

    :cond_1
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 52
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/adapter/k;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/model/entity/response/HeadPictureResponse;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/response/HeadPictureResponse;->getPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 53
    iget-object v0, p1, Lcom/mh/movie/core/mvp/ui/adapter/k$a;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/adapter/k;->a:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/mh/movie/core/mvp/model/entity/response/HeadPictureResponse;

    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/response/HeadPictureResponse;->getPath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p2

    new-instance v0, Lcom/mh/movie/core/mvp/ui/adapter/k$1;

    invoke-direct {v0, p0, p1}, Lcom/mh/movie/core/mvp/ui/adapter/k$1;-><init>(Lcom/mh/movie/core/mvp/ui/adapter/k;Lcom/mh/movie/core/mvp/ui/adapter/k$a;)V

    invoke-virtual {p2, v0}, Lcom/bumptech/glide/RequestBuilder;->into(Lcom/bumptech/glide/request/target/Target;)Lcom/bumptech/glide/request/target/Target;

    :cond_2
    return-void
.end method

.method public a(Ljava/util/List;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mh/movie/core/mvp/model/entity/response/HeadPictureResponse;",
            ">;I)V"
        }
    .end annotation

    .line 29
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/adapter/k;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 30
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/adapter/k;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 31
    iput p2, p0, Lcom/mh/movie/core/mvp/ui/adapter/k;->c:I

    .line 32
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/adapter/k;->notifyDataSetChanged()V

    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/adapter/k;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .param p1    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 23
    check-cast p1, Lcom/mh/movie/core/mvp/ui/adapter/k$a;

    invoke-virtual {p0, p1, p2}, Lcom/mh/movie/core/mvp/ui/adapter/k;->a(Lcom/mh/movie/core/mvp/ui/adapter/k$a;I)V

    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 23
    invoke-virtual {p0, p1, p2}, Lcom/mh/movie/core/mvp/ui/adapter/k;->a(Landroid/view/ViewGroup;I)Lcom/mh/movie/core/mvp/ui/adapter/k$a;

    move-result-object p1

    return-object p1
.end method
