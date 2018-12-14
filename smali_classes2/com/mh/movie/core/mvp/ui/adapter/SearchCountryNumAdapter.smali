.class public Lcom/mh/movie/core/mvp/ui/adapter/SearchCountryNumAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "SearchCountryNumAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mh/movie/core/mvp/ui/adapter/SearchCountryNumAdapter$a;,
        Lcom/mh/movie/core/mvp/ui/adapter/SearchCountryNumAdapter$MyViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Lcom/mh/movie/core/mvp/ui/adapter/SearchCountryNumAdapter$MyViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/content/Context;

.field private d:Lcom/mh/movie/core/mvp/ui/adapter/SearchCountryNumAdapter$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 28
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/adapter/SearchCountryNumAdapter;->a:Ljava/util/Map;

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/adapter/SearchCountryNumAdapter;->b:Ljava/util/List;

    .line 29
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/adapter/SearchCountryNumAdapter;->c:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/mh/movie/core/mvp/ui/adapter/SearchCountryNumAdapter;)Lcom/mh/movie/core/mvp/ui/adapter/SearchCountryNumAdapter$a;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/mh/movie/core/mvp/ui/adapter/SearchCountryNumAdapter;->d:Lcom/mh/movie/core/mvp/ui/adapter/SearchCountryNumAdapter$a;

    return-object p0
.end method

.method static synthetic b(Lcom/mh/movie/core/mvp/ui/adapter/SearchCountryNumAdapter;)Ljava/util/List;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/mh/movie/core/mvp/ui/adapter/SearchCountryNumAdapter;->b:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;I)Lcom/mh/movie/core/mvp/ui/adapter/SearchCountryNumAdapter$MyViewHolder;
    .locals 3

    .line 51
    new-instance p2, Lcom/mh/movie/core/mvp/ui/adapter/SearchCountryNumAdapter$MyViewHolder;

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/adapter/SearchCountryNumAdapter;->c:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/mh/movie/core/R$layout;->search_item:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/mh/movie/core/mvp/ui/adapter/SearchCountryNumAdapter$MyViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public a(Lcom/mh/movie/core/mvp/ui/adapter/SearchCountryNumAdapter$MyViewHolder;I)V
    .locals 5

    .line 57
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/adapter/SearchCountryNumAdapter;->b:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 58
    iget-object v1, p1, Lcom/mh/movie/core/mvp/ui/adapter/SearchCountryNumAdapter$MyViewHolder;->tvState:Landroid/widget/TextView;

    const/4 v2, 0x2

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    .line 60
    aget-object v0, v0, v1

    .line 61
    iget-object v2, p1, Lcom/mh/movie/core/mvp/ui/adapter/SearchCountryNumAdapter$MyViewHolder;->tvNum:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "+"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    add-int/lit8 v0, p2, 0x1

    .line 64
    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/adapter/SearchCountryNumAdapter;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_0

    .line 65
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/adapter/SearchCountryNumAdapter;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 67
    :cond_0
    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/adapter/SearchCountryNumAdapter;->a:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 68
    iget-object v0, p1, Lcom/mh/movie/core/mvp/ui/adapter/SearchCountryNumAdapter$MyViewHolder;->divion:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 70
    :cond_1
    iget-object v0, p1, Lcom/mh/movie/core/mvp/ui/adapter/SearchCountryNumAdapter$MyViewHolder;->divion:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 73
    :goto_0
    iget-object p1, p1, Lcom/mh/movie/core/mvp/ui/adapter/SearchCountryNumAdapter$MyViewHolder;->itemView:Landroid/view/View;

    new-instance v0, Lcom/mh/movie/core/mvp/ui/adapter/SearchCountryNumAdapter$1;

    invoke-direct {v0, p0, p2}, Lcom/mh/movie/core/mvp/ui/adapter/SearchCountryNumAdapter$1;-><init>(Lcom/mh/movie/core/mvp/ui/adapter/SearchCountryNumAdapter;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 44
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/adapter/SearchCountryNumAdapter;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 45
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/adapter/SearchCountryNumAdapter;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 46
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/adapter/SearchCountryNumAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public a(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 33
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/adapter/SearchCountryNumAdapter;->a:Ljava/util/Map;

    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/adapter/SearchCountryNumAdapter;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 22
    check-cast p1, Lcom/mh/movie/core/mvp/ui/adapter/SearchCountryNumAdapter$MyViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/mh/movie/core/mvp/ui/adapter/SearchCountryNumAdapter;->a(Lcom/mh/movie/core/mvp/ui/adapter/SearchCountryNumAdapter$MyViewHolder;I)V

    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 22
    invoke-virtual {p0, p1, p2}, Lcom/mh/movie/core/mvp/ui/adapter/SearchCountryNumAdapter;->a(Landroid/view/ViewGroup;I)Lcom/mh/movie/core/mvp/ui/adapter/SearchCountryNumAdapter$MyViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public setOnItemClickListener(Lcom/mh/movie/core/mvp/ui/adapter/SearchCountryNumAdapter$a;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/adapter/SearchCountryNumAdapter;->d:Lcom/mh/movie/core/mvp/ui/adapter/SearchCountryNumAdapter$a;

    return-void
.end method
