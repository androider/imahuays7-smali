.class public Lcom/mh/movie/core/mvp/ui/adapter/s;
.super Lcom/mh/movie/core/mvp/ui/adapter/r;
.source "SearchLabelAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mh/movie/core/mvp/ui/adapter/s$a;,
        Lcom/mh/movie/core/mvp/ui/adapter/s$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mh/movie/core/mvp/ui/adapter/r<",
        "Lcom/mh/movie/core/mvp/model/entity/SearchTabBean$RankListBean;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/mh/movie/core/mvp/ui/adapter/s$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/adapter/r;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/mh/movie/core/mvp/ui/adapter/s;)Lcom/mh/movie/core/mvp/ui/adapter/s$a;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/mh/movie/core/mvp/ui/adapter/s;->a:Lcom/mh/movie/core/mvp/ui/adapter/s$a;

    return-object p0
.end method


# virtual methods
.method public a(Lcom/mh/movie/core/mvp/ui/adapter/s$a;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/adapter/s;->a:Lcom/mh/movie/core/mvp/ui/adapter/s$a;

    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/adapter/s;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 5
    .param p1    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 38
    move-object v0, p1

    check-cast v0, Lcom/mh/movie/core/mvp/ui/adapter/s$b;

    .line 39
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/adapter/s;->e:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mh/movie/core/mvp/model/entity/SearchTabBean$RankListBean;

    .line 40
    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/adapter/s$b;->a(Lcom/mh/movie/core/mvp/ui/adapter/s$b;)Landroid/widget/ImageView;

    move-result-object v2

    sget-object v3, Lcom/mh/movie/core/mvp/ui/a;->a:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 41
    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/adapter/s$b;->b(Lcom/mh/movie/core/mvp/ui/adapter/s$b;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/model/entity/SearchTabBean$RankListBean;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 42
    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/model/entity/SearchTabBean$RankListBean;->getFlag()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/raizlabs/android/dbflow/a;->a(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 43
    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/adapter/s$b;->c(Lcom/mh/movie/core/mvp/ui/adapter/s$b;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 44
    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/adapter/s$b;->c(Lcom/mh/movie/core/mvp/ui/adapter/s$b;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v4, p0, Lcom/mh/movie/core/mvp/ui/adapter/s;->e:Ljava/util/List;

    invoke-interface {v4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/mh/movie/core/mvp/model/entity/SearchTabBean$RankListBean;

    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/SearchTabBean$RankListBean;->getFlag()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 45
    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/model/entity/SearchTabBean$RankListBean;->getBackgroundColor()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    .line 46
    iget-object p1, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v2, Lcom/mh/movie/core/R$drawable;->tag_corner_bg:I

    invoke-static {p1, v2}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 47
    invoke-static {p1, p2}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTint(Landroid/graphics/drawable/Drawable;I)V

    .line 48
    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/adapter/s$b;->c(Lcom/mh/movie/core/mvp/ui/adapter/s$b;)Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 50
    :cond_0
    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/adapter/s$b;->c(Lcom/mh/movie/core/mvp/ui/adapter/s$b;)Landroid/widget/TextView;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 53
    :goto_0
    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/model/entity/SearchTabBean$RankListBean;->getFlag()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/raizlabs/android/dbflow/a;->a(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/model/entity/SearchTabBean$RankListBean;->getFlag()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    const-string p1, ""

    .line 54
    :goto_1
    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/adapter/s$b;->d(Lcom/mh/movie/core/mvp/ui/adapter/s$b;)Landroid/widget/ImageView;

    move-result-object p2

    invoke-virtual {p2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 p2, -0x1

    .line 55
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0xe9b

    if-eq v1, v2, :cond_4

    const v2, 0x1a354

    if-eq v1, v2, :cond_3

    const v2, 0x5c46734

    if-eq v1, v2, :cond_2

    goto :goto_2

    :cond_2
    const-string v1, "equal"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    const/4 v3, 0x1

    goto :goto_3

    :cond_3
    const-string v1, "low"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    const/4 v3, 0x2

    goto :goto_3

    :cond_4
    const-string v1, "up"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_3

    :cond_5
    :goto_2
    const/4 v3, -0x1

    :goto_3
    packed-switch v3, :pswitch_data_0

    .line 66
    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/adapter/s$b;->d(Lcom/mh/movie/core/mvp/ui/adapter/s$b;)Landroid/widget/ImageView;

    move-result-object p1

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_4

    .line 63
    :pswitch_0
    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/adapter/s$b;->d(Lcom/mh/movie/core/mvp/ui/adapter/s$b;)Landroid/widget/ImageView;

    move-result-object p1

    sget p2, Lcom/mh/movie/core/R$mipmap;->ico_searchpage_data_falling:I

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_4

    .line 60
    :pswitch_1
    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/adapter/s$b;->d(Lcom/mh/movie/core/mvp/ui/adapter/s$b;)Landroid/widget/ImageView;

    move-result-object p1

    sget p2, Lcom/mh/movie/core/R$mipmap;->ico_searchpage_data_flat:I

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_4

    .line 57
    :pswitch_2
    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/adapter/s$b;->d(Lcom/mh/movie/core/mvp/ui/adapter/s$b;)Landroid/widget/ImageView;

    move-result-object p1

    sget p2, Lcom/mh/movie/core/R$mipmap;->ico_searchpage_data_rising:I

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_4
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 3
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 33
    new-instance p2, Lcom/mh/movie/core/mvp/ui/adapter/s$b;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/mh/movie/core/R$layout;->item_search_label:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/mh/movie/core/mvp/ui/adapter/s$b;-><init>(Lcom/mh/movie/core/mvp/ui/adapter/s;Landroid/view/View;)V

    return-object p2
.end method
