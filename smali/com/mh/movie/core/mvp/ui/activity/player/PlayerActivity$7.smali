.class Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity$7;
.super Ljava/lang/Object;
.source "PlayerActivity.java"

# interfaces
.implements Lcom/mh/movie/core/mvp/ui/widget/banner/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->d(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;Ljava/util/List;)V
    .locals 0

    .line 1471
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity$7;->b:Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;

    iput-object p2, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity$7;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(I)V
    .locals 3

    .line 1474
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity$7;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/model/entity/BootadsListBean;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/BootadsListBean;->getLinkUrl()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity$7;->a:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mh/movie/core/mvp/model/entity/BootadsListBean;

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/model/entity/BootadsListBean;->getId()I

    move-result v1

    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity$7;->a:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mh/movie/core/mvp/model/entity/BootadsListBean;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/BootadsListBean;->getTargetType()I

    move-result p1

    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const/4 p1, 0x3

    invoke-static {v0, v1, v2, p1}, Lcom/mh/movie/core/mvp/ui/utils/UIUtils;->openWeb(Ljava/lang/String;IZI)V

    return-void
.end method
