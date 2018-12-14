.class Lcom/mh/movie/core/mvp/ui/adapter/f$c$1;
.super Ljava/lang/Object;
.source "HeaderAdapter.java"

# interfaces
.implements Lcom/mh/movie/core/mvp/ui/widget/MovieCardView$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/ui/adapter/f$c;-><init>(Lcom/mh/movie/core/mvp/ui/adapter/f;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mh/movie/core/mvp/ui/adapter/f;

.field final synthetic b:Landroid/view/View;

.field final synthetic c:Lcom/mh/movie/core/mvp/ui/adapter/f$c;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/ui/adapter/f$c;Lcom/mh/movie/core/mvp/ui/adapter/f;Landroid/view/View;)V
    .locals 0

    .line 166
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/adapter/f$c$1;->c:Lcom/mh/movie/core/mvp/ui/adapter/f$c;

    iput-object p2, p0, Lcom/mh/movie/core/mvp/ui/adapter/f$c$1;->a:Lcom/mh/movie/core/mvp/ui/adapter/f;

    iput-object p3, p0, Lcom/mh/movie/core/mvp/ui/adapter/f$c$1;->b:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 5

    .line 186
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/adapter/f$c$1;->c:Lcom/mh/movie/core/mvp/ui/adapter/f$c;

    iget-object v0, v0, Lcom/mh/movie/core/mvp/ui/adapter/f$c;->b:Lcom/mh/movie/core/mvp/ui/adapter/f;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/adapter/f;->c(Lcom/mh/movie/core/mvp/ui/adapter/f;)Lcom/mh/movie/core/mvp/ui/adapter/f$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/adapter/f$c$1;->c:Lcom/mh/movie/core/mvp/ui/adapter/f$c;

    iget-object v0, v0, Lcom/mh/movie/core/mvp/ui/adapter/f$c;->b:Lcom/mh/movie/core/mvp/ui/adapter/f;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/adapter/f$c$1;->c:Lcom/mh/movie/core/mvp/ui/adapter/f$c;

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/ui/adapter/f$c;->getAdapterPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/ui/adapter/f;->b(I)I

    move-result v0

    .line 188
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/adapter/f$c$1;->c:Lcom/mh/movie/core/mvp/ui/adapter/f$c;

    iget-object v1, v1, Lcom/mh/movie/core/mvp/ui/adapter/f$c;->b:Lcom/mh/movie/core/mvp/ui/adapter/f;

    invoke-static {v1}, Lcom/mh/movie/core/mvp/ui/adapter/f;->c(Lcom/mh/movie/core/mvp/ui/adapter/f;)Lcom/mh/movie/core/mvp/ui/adapter/f$a;

    move-result-object v1

    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/adapter/f$c$1;->c:Lcom/mh/movie/core/mvp/ui/adapter/f$c;

    invoke-virtual {v2}, Lcom/mh/movie/core/mvp/ui/adapter/f$c;->getAdapterPosition()I

    move-result v2

    iget-object v3, p0, Lcom/mh/movie/core/mvp/ui/adapter/f$c$1;->c:Lcom/mh/movie/core/mvp/ui/adapter/f$c;

    iget-object v3, v3, Lcom/mh/movie/core/mvp/ui/adapter/f$c;->b:Lcom/mh/movie/core/mvp/ui/adapter/f;

    iget-object v3, v3, Lcom/mh/movie/core/mvp/ui/adapter/f;->e:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mh/movie/core/mvp/model/entity/response/HomePageResponse;

    invoke-virtual {v3}, Lcom/mh/movie/core/mvp/model/entity/response/HomePageResponse;->getCurrentPage()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    iget-object v4, p0, Lcom/mh/movie/core/mvp/ui/adapter/f$c$1;->c:Lcom/mh/movie/core/mvp/ui/adapter/f$c;

    iget-object v4, v4, Lcom/mh/movie/core/mvp/ui/adapter/f$c;->b:Lcom/mh/movie/core/mvp/ui/adapter/f;

    iget-object v4, v4, Lcom/mh/movie/core/mvp/ui/adapter/f;->e:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/model/entity/response/HomePageResponse;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/response/HomePageResponse;->getId()I

    move-result v0

    invoke-interface {v1, v2, v3, v0, p1}, Lcom/mh/movie/core/mvp/ui/adapter/f$a;->a(IIII)V

    :cond_0
    return-void
.end method

.method public a(II)V
    .locals 2

    .line 169
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/adapter/f$c$1;->c:Lcom/mh/movie/core/mvp/ui/adapter/f$c;

    iget-object p1, p1, Lcom/mh/movie/core/mvp/ui/adapter/f$c;->b:Lcom/mh/movie/core/mvp/ui/adapter/f;

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/adapter/f$c$1;->c:Lcom/mh/movie/core/mvp/ui/adapter/f$c;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/adapter/f$c;->getAdapterPosition()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/mh/movie/core/mvp/ui/adapter/f;->b(I)I

    move-result p1

    .line 170
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/adapter/f$c$1;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/adapter/f$c$1;->c:Lcom/mh/movie/core/mvp/ui/adapter/f$c;

    iget-object v1, v1, Lcom/mh/movie/core/mvp/ui/adapter/f$c;->b:Lcom/mh/movie/core/mvp/ui/adapter/f;

    iget-object v1, v1, Lcom/mh/movie/core/mvp/ui/adapter/f;->e:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mh/movie/core/mvp/model/entity/response/HomePageResponse;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/HomePageResponse;->getId()I

    move-result p1

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/adapter/f$c$1;->c:Lcom/mh/movie/core/mvp/ui/adapter/f$c;

    iget-object v1, v1, Lcom/mh/movie/core/mvp/ui/adapter/f$c;->b:Lcom/mh/movie/core/mvp/ui/adapter/f;

    .line 171
    invoke-static {v1}, Lcom/mh/movie/core/mvp/ui/adapter/f;->b(Lcom/mh/movie/core/mvp/ui/adapter/f;)I

    move-result v1

    invoke-static {v1}, Lcom/mh/movie/core/mvp/model/db/WatchFromEvent;->getWatchFrom(I)I

    move-result v1

    .line 170
    invoke-static {v0, p1, p2, v1}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->a(Landroid/content/Context;III)V

    return-void
.end method

.method public a(Lcom/mh/movie/core/mvp/model/entity/response/HomePageResponse;I)V
    .locals 3

    .line 176
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/adapter/f$c$1;->b:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/mh/movie/core/mvp/ui/activity/MoreActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "card_type"

    .line 177
    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/HomePageResponse;->getIsLandscape()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "card_title"

    .line 178
    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/HomePageResponse;->getDetailTitle()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/raizlabs/android/dbflow/a;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/HomePageResponse;->getDetailTitle()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/HomePageResponse;->getTitle()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "card_column"

    .line 179
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p2, "card_columnid"

    .line 180
    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/HomePageResponse;->getId()I

    move-result p1

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 181
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/adapter/f$c$1;->b:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
