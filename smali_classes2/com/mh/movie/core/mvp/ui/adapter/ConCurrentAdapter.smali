.class public Lcom/mh/movie/core/mvp/ui/adapter/ConCurrentAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "ConCurrentAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mh/movie/core/mvp/ui/adapter/ConCurrentAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Lcom/mh/movie/core/mvp/ui/adapter/ConCurrentAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mh/movie/core/mvp/model/entity/ConCurrentEntity;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/content/Context;

.field private c:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/adapter/ConCurrentAdapter;->a:Ljava/util/List;

    return-void
.end method

.method static synthetic a(Lcom/mh/movie/core/mvp/ui/adapter/ConCurrentAdapter;)Landroid/content/Context;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/mh/movie/core/mvp/ui/adapter/ConCurrentAdapter;->b:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;I)Lcom/mh/movie/core/mvp/ui/adapter/ConCurrentAdapter$ViewHolder;
    .locals 2
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 59
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    iput-object p2, p0, Lcom/mh/movie/core/mvp/ui/adapter/ConCurrentAdapter;->b:Landroid/content/Context;

    .line 61
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/mh/movie/core/R$layout;->concurrent_item:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 62
    new-instance p2, Lcom/mh/movie/core/mvp/ui/adapter/ConCurrentAdapter$ViewHolder;

    invoke-direct {p2, p1}, Lcom/mh/movie/core/mvp/ui/adapter/ConCurrentAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public a(I)V
    .locals 0

    .line 37
    iput p1, p0, Lcom/mh/movie/core/mvp/ui/adapter/ConCurrentAdapter;->c:I

    return-void
.end method

.method public a(Lcom/mh/movie/core/mvp/ui/adapter/ConCurrentAdapter$ViewHolder;I)V
    .locals 3
    .param p1    # Lcom/mh/movie/core/mvp/ui/adapter/ConCurrentAdapter$ViewHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 69
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/adapter/ConCurrentAdapter;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/model/entity/ConCurrentEntity;

    .line 71
    iget-object v1, p1, Lcom/mh/movie/core/mvp/ui/adapter/ConCurrentAdapter$ViewHolder;->itemView:Landroid/view/View;

    new-instance v2, Lcom/mh/movie/core/mvp/ui/adapter/ConCurrentAdapter$1;

    invoke-direct {v2, p0, p2, v0}, Lcom/mh/movie/core/mvp/ui/adapter/ConCurrentAdapter$1;-><init>(Lcom/mh/movie/core/mvp/ui/adapter/ConCurrentAdapter;ILcom/mh/movie/core/mvp/model/entity/ConCurrentEntity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    iget v1, p0, Lcom/mh/movie/core/mvp/ui/adapter/ConCurrentAdapter;->c:I

    if-ne p2, v1, :cond_0

    .line 87
    iget-object p2, p0, Lcom/mh/movie/core/mvp/ui/adapter/ConCurrentAdapter;->b:Landroid/content/Context;

    iget-object v1, p1, Lcom/mh/movie/core/mvp/ui/adapter/ConCurrentAdapter$ViewHolder;->tvCon:Landroid/widget/TextView;

    sget v2, Lcom/mh/movie/core/R$mipmap;->begging_gou:I

    invoke-static {p2, v1, v2}, Lcom/mh/movie/core/mvp/ui/utils/UIUtils;->drawTextRightImg(Landroid/content/Context;Landroid/widget/TextView;I)V

    goto :goto_0

    .line 89
    :cond_0
    iget-object p2, p1, Lcom/mh/movie/core/mvp/ui/adapter/ConCurrentAdapter$ViewHolder;->tvCon:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {p2, v1, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 92
    :goto_0
    iget-object p1, p1, Lcom/mh/movie/core/mvp/ui/adapter/ConCurrentAdapter$ViewHolder;->tvCon:Landroid/widget/TextView;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/ConCurrentEntity;->getNum()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\u4e2a"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mh/movie/core/mvp/model/entity/ConCurrentEntity;",
            ">;)V"
        }
    .end annotation

    .line 45
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/adapter/ConCurrentAdapter;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 46
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/adapter/ConCurrentAdapter;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 47
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/adapter/ConCurrentAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public b(I)V
    .locals 0

    .line 52
    iput p1, p0, Lcom/mh/movie/core/mvp/ui/adapter/ConCurrentAdapter;->c:I

    .line 53
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/adapter/ConCurrentAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/adapter/ConCurrentAdapter;->a:Ljava/util/List;

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

    .line 27
    check-cast p1, Lcom/mh/movie/core/mvp/ui/adapter/ConCurrentAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/mh/movie/core/mvp/ui/adapter/ConCurrentAdapter;->a(Lcom/mh/movie/core/mvp/ui/adapter/ConCurrentAdapter$ViewHolder;I)V

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

    .line 27
    invoke-virtual {p0, p1, p2}, Lcom/mh/movie/core/mvp/ui/adapter/ConCurrentAdapter;->a(Landroid/view/ViewGroup;I)Lcom/mh/movie/core/mvp/ui/adapter/ConCurrentAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method
