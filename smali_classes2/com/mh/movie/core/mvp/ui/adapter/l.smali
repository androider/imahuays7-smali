.class public Lcom/mh/movie/core/mvp/ui/adapter/l;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "LabelAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mh/movie/core/mvp/ui/adapter/l$a;,
        Lcom/mh/movie/core/mvp/ui/adapter/l$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Lcom/mh/movie/core/mvp/ui/adapter/l$b;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mh/movie/core/mvp/model/entity/response/ClassifyListResponse$ChildListBean;",
            ">;"
        }
    .end annotation
.end field

.field private b:I

.field private c:Lcom/mh/movie/core/mvp/ui/adapter/l$a;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/adapter/l;->a:Ljava/util/List;

    const/4 v0, 0x0

    .line 22
    iput v0, p0, Lcom/mh/movie/core/mvp/ui/adapter/l;->b:I

    return-void
.end method

.method static synthetic a(Lcom/mh/movie/core/mvp/ui/adapter/l;)I
    .locals 0

    .line 19
    iget p0, p0, Lcom/mh/movie/core/mvp/ui/adapter/l;->b:I

    return p0
.end method

.method static synthetic a(Lcom/mh/movie/core/mvp/ui/adapter/l;I)I
    .locals 0

    .line 19
    iput p1, p0, Lcom/mh/movie/core/mvp/ui/adapter/l;->b:I

    return p1
.end method

.method static synthetic b(Lcom/mh/movie/core/mvp/ui/adapter/l;)Lcom/mh/movie/core/mvp/ui/adapter/l$a;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/mh/movie/core/mvp/ui/adapter/l;->c:Lcom/mh/movie/core/mvp/ui/adapter/l$a;

    return-object p0
.end method

.method static synthetic c(Lcom/mh/movie/core/mvp/ui/adapter/l;)Ljava/util/List;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/mh/movie/core/mvp/ui/adapter/l;->a:Ljava/util/List;

    return-object p0
.end method

.method static synthetic d(Lcom/mh/movie/core/mvp/ui/adapter/l;)Ljava/lang/String;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/mh/movie/core/mvp/ui/adapter/l;->d:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;I)Lcom/mh/movie/core/mvp/ui/adapter/l$b;
    .locals 3
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 45
    new-instance p2, Lcom/mh/movie/core/mvp/ui/adapter/l$b;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/mh/movie/core/R$layout;->item_label:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/mh/movie/core/mvp/ui/adapter/l$b;-><init>(Lcom/mh/movie/core/mvp/ui/adapter/l;Landroid/view/View;)V

    return-object p2
.end method

.method public a(I)V
    .locals 0

    .line 50
    iput p1, p0, Lcom/mh/movie/core/mvp/ui/adapter/l;->b:I

    return-void
.end method

.method public a(Lcom/mh/movie/core/mvp/ui/adapter/l$a;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/adapter/l;->c:Lcom/mh/movie/core/mvp/ui/adapter/l$a;

    return-void
.end method

.method public a(Lcom/mh/movie/core/mvp/ui/adapter/l$b;I)V
    .locals 2
    .param p1    # Lcom/mh/movie/core/mvp/ui/adapter/l$b;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 55
    invoke-static {p1}, Lcom/mh/movie/core/mvp/ui/adapter/l$b;->a(Lcom/mh/movie/core/mvp/ui/adapter/l$b;)Landroid/widget/CheckBox;

    move-result-object v0

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/adapter/l;->a:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mh/movie/core/mvp/model/entity/response/ClassifyListResponse$ChildListBean;

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/model/entity/response/ClassifyListResponse$ChildListBean;->getClassifyName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 56
    invoke-static {p1}, Lcom/mh/movie/core/mvp/ui/adapter/l$b;->a(Lcom/mh/movie/core/mvp/ui/adapter/l$b;)Landroid/widget/CheckBox;

    move-result-object p1

    iget v0, p0, Lcom/mh/movie/core/mvp/ui/adapter/l;->b:I

    if-ne p2, v0, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1, p2}, Landroid/widget/CheckBox;->setChecked(Z)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/adapter/l;->d:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mh/movie/core/mvp/model/entity/response/ClassifyListResponse$ChildListBean;",
            ">;)V"
        }
    .end annotation

    .line 36
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/adapter/l;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 37
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/adapter/l;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 39
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/adapter/l;->notifyDataSetChanged()V

    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/adapter/l;->a:Ljava/util/List;

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

    .line 19
    check-cast p1, Lcom/mh/movie/core/mvp/ui/adapter/l$b;

    invoke-virtual {p0, p1, p2}, Lcom/mh/movie/core/mvp/ui/adapter/l;->a(Lcom/mh/movie/core/mvp/ui/adapter/l$b;I)V

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

    .line 19
    invoke-virtual {p0, p1, p2}, Lcom/mh/movie/core/mvp/ui/adapter/l;->a(Landroid/view/ViewGroup;I)Lcom/mh/movie/core/mvp/ui/adapter/l$b;

    move-result-object p1

    return-object p1
.end method
