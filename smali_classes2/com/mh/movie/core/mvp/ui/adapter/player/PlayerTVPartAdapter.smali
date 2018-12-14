.class public Lcom/mh/movie/core/mvp/ui/adapter/player/PlayerTVPartAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "PlayerTVPartAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mh/movie/core/mvp/ui/adapter/player/PlayerTVPartAdapter$a;,
        Lcom/mh/movie/core/mvp/ui/adapter/player/PlayerTVPartAdapter$ItemViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Lcom/mh/movie/core/mvp/ui/adapter/player/PlayerTVPartAdapter$ItemViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lcom/mh/movie/core/mvp/ui/adapter/player/PlayerTVPartAdapter$a;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;",
            ">;"
        }
    .end annotation
.end field

.field private c:I

.field private d:I

.field private e:I

.field private f:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 52
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, 0x0

    .line 29
    iput v0, p0, Lcom/mh/movie/core/mvp/ui/adapter/player/PlayerTVPartAdapter;->c:I

    .line 33
    iput v0, p0, Lcom/mh/movie/core/mvp/ui/adapter/player/PlayerTVPartAdapter;->f:I

    .line 53
    iput p1, p0, Lcom/mh/movie/core/mvp/ui/adapter/player/PlayerTVPartAdapter;->d:I

    return-void
.end method

.method public constructor <init>(ILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;",
            ">;)V"
        }
    .end annotation

    .line 39
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, 0x0

    .line 29
    iput v0, p0, Lcom/mh/movie/core/mvp/ui/adapter/player/PlayerTVPartAdapter;->c:I

    .line 33
    iput v0, p0, Lcom/mh/movie/core/mvp/ui/adapter/player/PlayerTVPartAdapter;->f:I

    .line 40
    iput p1, p0, Lcom/mh/movie/core/mvp/ui/adapter/player/PlayerTVPartAdapter;->d:I

    .line 41
    iput-object p2, p0, Lcom/mh/movie/core/mvp/ui/adapter/player/PlayerTVPartAdapter;->b:Ljava/util/List;

    return-void
.end method

.method static synthetic a(Lcom/mh/movie/core/mvp/ui/adapter/player/PlayerTVPartAdapter;I)I
    .locals 0

    .line 25
    iput p1, p0, Lcom/mh/movie/core/mvp/ui/adapter/player/PlayerTVPartAdapter;->c:I

    return p1
.end method

.method static synthetic a(Lcom/mh/movie/core/mvp/ui/adapter/player/PlayerTVPartAdapter;)Ljava/util/List;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/mh/movie/core/mvp/ui/adapter/player/PlayerTVPartAdapter;->b:Ljava/util/List;

    return-object p0
.end method

.method static synthetic b(Lcom/mh/movie/core/mvp/ui/adapter/player/PlayerTVPartAdapter;)I
    .locals 0

    .line 25
    iget p0, p0, Lcom/mh/movie/core/mvp/ui/adapter/player/PlayerTVPartAdapter;->c:I

    return p0
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;I)Lcom/mh/movie/core/mvp/ui/adapter/player/PlayerTVPartAdapter$ItemViewHolder;
    .locals 3
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 72
    iget p2, p0, Lcom/mh/movie/core/mvp/ui/adapter/player/PlayerTVPartAdapter;->e:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x4

    if-ne p2, v2, :cond_1

    .line 73
    iget p2, p0, Lcom/mh/movie/core/mvp/ui/adapter/player/PlayerTVPartAdapter;->d:I

    if-ne p2, v0, :cond_0

    .line 74
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/mh/movie/core/R$layout;->item_player_variety_part:I

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    .line 76
    :cond_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/mh/movie/core/R$layout;->item_player_variety_part_popup:I

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    .line 79
    :cond_1
    iget p2, p0, Lcom/mh/movie/core/mvp/ui/adapter/player/PlayerTVPartAdapter;->d:I

    if-ne p2, v0, :cond_2

    .line 80
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/mh/movie/core/R$layout;->item_player_tv_part:I

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    .line 82
    :cond_2
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/mh/movie/core/R$layout;->item_player_tv_part_popup:I

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 85
    :goto_0
    new-instance p2, Lcom/mh/movie/core/mvp/ui/adapter/player/PlayerTVPartAdapter$ItemViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/mh/movie/core/mvp/ui/adapter/player/PlayerTVPartAdapter$ItemViewHolder;-><init>(Lcom/mh/movie/core/mvp/ui/adapter/player/PlayerTVPartAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method public a(I)V
    .locals 0

    .line 45
    iput p1, p0, Lcom/mh/movie/core/mvp/ui/adapter/player/PlayerTVPartAdapter;->e:I

    return-void
.end method

.method public a(Lcom/mh/movie/core/mvp/ui/adapter/player/PlayerTVPartAdapter$ItemViewHolder;I)V
    .locals 5
    .param p1    # Lcom/mh/movie/core/mvp/ui/adapter/player/PlayerTVPartAdapter$ItemViewHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 90
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/adapter/player/PlayerTVPartAdapter;->b:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;

    .line 92
    iget v1, p0, Lcom/mh/movie/core/mvp/ui/adapter/player/PlayerTVPartAdapter;->e:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 93
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;->getPeriod()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\u671f"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 95
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;->getSortNum()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 97
    :goto_0
    iget-object v3, p1, Lcom/mh/movie/core/mvp/ui/adapter/player/PlayerTVPartAdapter$ItemViewHolder;->cbPlayerTvPartItem:Landroid/widget/CheckBox;

    invoke-virtual {v3, v1}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 98
    iget-object v1, p1, Lcom/mh/movie/core/mvp/ui/adapter/player/PlayerTVPartAdapter$ItemViewHolder;->cbPlayerTvPartItem:Landroid/widget/CheckBox;

    iget v3, p0, Lcom/mh/movie/core/mvp/ui/adapter/player/PlayerTVPartAdapter;->c:I

    iget-object v4, p0, Lcom/mh/movie/core/mvp/ui/adapter/player/PlayerTVPartAdapter;->b:Ljava/util/List;

    invoke-interface {v4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;

    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;->getId()I

    move-result p2

    const/4 v4, 0x0

    if-ne v3, p2, :cond_1

    const/4 p2, 0x1

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    :goto_1
    invoke-virtual {v1, p2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 100
    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;->getTagDTO()Lcom/mh/movie/core/mvp/model/entity/TagDTOBean;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 101
    iget-object p2, p1, Lcom/mh/movie/core/mvp/ui/adapter/player/PlayerTVPartAdapter$ItemViewHolder;->tvLabel:Landroid/widget/TextView;

    const-string v0, "\u70ed\u95e8"

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    iget-object p2, p1, Lcom/mh/movie/core/mvp/ui/adapter/player/PlayerTVPartAdapter$ItemViewHolder;->tvLabel:Landroid/widget/TextView;

    invoke-virtual {p2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 103
    iget-object p2, p1, Lcom/mh/movie/core/mvp/ui/adapter/player/PlayerTVPartAdapter$ItemViewHolder;->tvLabel:Landroid/widget/TextView;

    iget-object p1, p1, Lcom/mh/movie/core/mvp/ui/adapter/player/PlayerTVPartAdapter$ItemViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/mh/movie/core/R$drawable;->clarity_label_bg_1:I

    invoke-static {p1, v0}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 116
    :cond_2
    iget-object p1, p1, Lcom/mh/movie/core/mvp/ui/adapter/player/PlayerTVPartAdapter$ItemViewHolder;->tvLabel:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_2
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;",
            ">;)V"
        }
    .end annotation

    .line 167
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/adapter/player/PlayerTVPartAdapter;->b:Ljava/util/List;

    .line 168
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/adapter/player/PlayerTVPartAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public b(I)V
    .locals 0

    .line 49
    iput p1, p0, Lcom/mh/movie/core/mvp/ui/adapter/player/PlayerTVPartAdapter;->f:I

    return-void
.end method

.method public c(I)V
    .locals 0

    .line 128
    iput p1, p0, Lcom/mh/movie/core/mvp/ui/adapter/player/PlayerTVPartAdapter;->c:I

    .line 129
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/adapter/player/PlayerTVPartAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/adapter/player/PlayerTVPartAdapter;->b:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/adapter/player/PlayerTVPartAdapter;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .param p1    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 25
    check-cast p1, Lcom/mh/movie/core/mvp/ui/adapter/player/PlayerTVPartAdapter$ItemViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/mh/movie/core/mvp/ui/adapter/player/PlayerTVPartAdapter;->a(Lcom/mh/movie/core/mvp/ui/adapter/player/PlayerTVPartAdapter$ItemViewHolder;I)V

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

    .line 25
    invoke-virtual {p0, p1, p2}, Lcom/mh/movie/core/mvp/ui/adapter/player/PlayerTVPartAdapter;->a(Landroid/view/ViewGroup;I)Lcom/mh/movie/core/mvp/ui/adapter/player/PlayerTVPartAdapter$ItemViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public setOnItemChoiceListener(Lcom/mh/movie/core/mvp/ui/adapter/player/PlayerTVPartAdapter$a;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/adapter/player/PlayerTVPartAdapter;->a:Lcom/mh/movie/core/mvp/ui/adapter/player/PlayerTVPartAdapter$a;

    return-void
.end method
