.class Lcom/mh/movie/core/mvp/ui/adapter/player/PlayerTVPartAdapter$ItemViewHolder$1;
.super Lcom/mh/movie/core/mvp/ui/widget/a/c;
.source "PlayerTVPartAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/ui/adapter/player/PlayerTVPartAdapter$ItemViewHolder;-><init>(Lcom/mh/movie/core/mvp/ui/adapter/player/PlayerTVPartAdapter;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mh/movie/core/mvp/ui/adapter/player/PlayerTVPartAdapter;

.field final synthetic b:Lcom/mh/movie/core/mvp/ui/adapter/player/PlayerTVPartAdapter$ItemViewHolder;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/ui/adapter/player/PlayerTVPartAdapter$ItemViewHolder;JLcom/mh/movie/core/mvp/ui/adapter/player/PlayerTVPartAdapter;)V
    .locals 0

    .line 145
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/adapter/player/PlayerTVPartAdapter$ItemViewHolder$1;->b:Lcom/mh/movie/core/mvp/ui/adapter/player/PlayerTVPartAdapter$ItemViewHolder;

    iput-object p4, p0, Lcom/mh/movie/core/mvp/ui/adapter/player/PlayerTVPartAdapter$ItemViewHolder$1;->a:Lcom/mh/movie/core/mvp/ui/adapter/player/PlayerTVPartAdapter;

    invoke-direct {p0, p2, p3}, Lcom/mh/movie/core/mvp/ui/widget/a/c;-><init>(J)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 148
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/adapter/player/PlayerTVPartAdapter$ItemViewHolder$1;->a()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 149
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/adapter/player/PlayerTVPartAdapter$ItemViewHolder$1;->b:Lcom/mh/movie/core/mvp/ui/adapter/player/PlayerTVPartAdapter$ItemViewHolder;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/ui/adapter/player/PlayerTVPartAdapter$ItemViewHolder;->getAdapterPosition()I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return-void

    .line 152
    :cond_0
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/adapter/player/PlayerTVPartAdapter$ItemViewHolder$1;->b:Lcom/mh/movie/core/mvp/ui/adapter/player/PlayerTVPartAdapter$ItemViewHolder;

    iget-object p1, p1, Lcom/mh/movie/core/mvp/ui/adapter/player/PlayerTVPartAdapter$ItemViewHolder;->a:Lcom/mh/movie/core/mvp/ui/adapter/player/PlayerTVPartAdapter;

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/adapter/player/PlayerTVPartAdapter$ItemViewHolder$1;->b:Lcom/mh/movie/core/mvp/ui/adapter/player/PlayerTVPartAdapter$ItemViewHolder;

    iget-object v0, v0, Lcom/mh/movie/core/mvp/ui/adapter/player/PlayerTVPartAdapter$ItemViewHolder;->a:Lcom/mh/movie/core/mvp/ui/adapter/player/PlayerTVPartAdapter;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/adapter/player/PlayerTVPartAdapter;->a(Lcom/mh/movie/core/mvp/ui/adapter/player/PlayerTVPartAdapter;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/adapter/player/PlayerTVPartAdapter$ItemViewHolder$1;->b:Lcom/mh/movie/core/mvp/ui/adapter/player/PlayerTVPartAdapter$ItemViewHolder;

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/ui/adapter/player/PlayerTVPartAdapter$ItemViewHolder;->getAdapterPosition()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;->getId()I

    move-result v0

    invoke-static {p1, v0}, Lcom/mh/movie/core/mvp/ui/adapter/player/PlayerTVPartAdapter;->a(Lcom/mh/movie/core/mvp/ui/adapter/player/PlayerTVPartAdapter;I)I

    .line 153
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/adapter/player/PlayerTVPartAdapter$ItemViewHolder$1;->b:Lcom/mh/movie/core/mvp/ui/adapter/player/PlayerTVPartAdapter$ItemViewHolder;

    iget-object p1, p1, Lcom/mh/movie/core/mvp/ui/adapter/player/PlayerTVPartAdapter$ItemViewHolder;->a:Lcom/mh/movie/core/mvp/ui/adapter/player/PlayerTVPartAdapter;

    iget-object p1, p1, Lcom/mh/movie/core/mvp/ui/adapter/player/PlayerTVPartAdapter;->a:Lcom/mh/movie/core/mvp/ui/adapter/player/PlayerTVPartAdapter$a;

    if-eqz p1, :cond_1

    .line 154
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/adapter/player/PlayerTVPartAdapter$ItemViewHolder$1;->b:Lcom/mh/movie/core/mvp/ui/adapter/player/PlayerTVPartAdapter$ItemViewHolder;

    iget-object p1, p1, Lcom/mh/movie/core/mvp/ui/adapter/player/PlayerTVPartAdapter$ItemViewHolder;->a:Lcom/mh/movie/core/mvp/ui/adapter/player/PlayerTVPartAdapter;

    iget-object p1, p1, Lcom/mh/movie/core/mvp/ui/adapter/player/PlayerTVPartAdapter;->a:Lcom/mh/movie/core/mvp/ui/adapter/player/PlayerTVPartAdapter$a;

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/adapter/player/PlayerTVPartAdapter$ItemViewHolder$1;->b:Lcom/mh/movie/core/mvp/ui/adapter/player/PlayerTVPartAdapter$ItemViewHolder;

    iget-object v0, v0, Lcom/mh/movie/core/mvp/ui/adapter/player/PlayerTVPartAdapter$ItemViewHolder;->a:Lcom/mh/movie/core/mvp/ui/adapter/player/PlayerTVPartAdapter;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/adapter/player/PlayerTVPartAdapter;->b(Lcom/mh/movie/core/mvp/ui/adapter/player/PlayerTVPartAdapter;)I

    move-result v0

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/adapter/player/PlayerTVPartAdapter$ItemViewHolder$1;->b:Lcom/mh/movie/core/mvp/ui/adapter/player/PlayerTVPartAdapter$ItemViewHolder;

    iget-object v1, v1, Lcom/mh/movie/core/mvp/ui/adapter/player/PlayerTVPartAdapter$ItemViewHolder;->a:Lcom/mh/movie/core/mvp/ui/adapter/player/PlayerTVPartAdapter;

    invoke-static {v1}, Lcom/mh/movie/core/mvp/ui/adapter/player/PlayerTVPartAdapter;->a(Lcom/mh/movie/core/mvp/ui/adapter/player/PlayerTVPartAdapter;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/adapter/player/PlayerTVPartAdapter$ItemViewHolder$1;->b:Lcom/mh/movie/core/mvp/ui/adapter/player/PlayerTVPartAdapter$ItemViewHolder;

    invoke-virtual {v2}, Lcom/mh/movie/core/mvp/ui/adapter/player/PlayerTVPartAdapter$ItemViewHolder;->getAdapterPosition()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/mh/movie/core/mvp/ui/adapter/player/PlayerTVPartAdapter$a;->a(ILjava/lang/Object;)V

    .line 156
    :cond_1
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/adapter/player/PlayerTVPartAdapter$ItemViewHolder$1;->b:Lcom/mh/movie/core/mvp/ui/adapter/player/PlayerTVPartAdapter$ItemViewHolder;

    iget-object p1, p1, Lcom/mh/movie/core/mvp/ui/adapter/player/PlayerTVPartAdapter$ItemViewHolder;->a:Lcom/mh/movie/core/mvp/ui/adapter/player/PlayerTVPartAdapter;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/ui/adapter/player/PlayerTVPartAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 158
    :cond_2
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/adapter/player/PlayerTVPartAdapter$ItemViewHolder$1;->b:Lcom/mh/movie/core/mvp/ui/adapter/player/PlayerTVPartAdapter$ItemViewHolder;

    iget-object p1, p1, Lcom/mh/movie/core/mvp/ui/adapter/player/PlayerTVPartAdapter$ItemViewHolder;->a:Lcom/mh/movie/core/mvp/ui/adapter/player/PlayerTVPartAdapter;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/ui/adapter/player/PlayerTVPartAdapter;->notifyDataSetChanged()V

    :goto_0
    return-void
.end method
