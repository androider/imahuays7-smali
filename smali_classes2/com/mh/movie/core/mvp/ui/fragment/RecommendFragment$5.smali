.class Lcom/mh/movie/core/mvp/ui/fragment/RecommendFragment$5;
.super Ljava/lang/Object;
.source "RecommendFragment.java"

# interfaces
.implements Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/ui/fragment/RecommendFragment;->l()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner$c<",
        "Landroid/view/View;",
        "Lcom/mh/movie/core/mvp/model/entity/response/BannerEntity;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/mh/movie/core/mvp/ui/fragment/RecommendFragment;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/ui/fragment/RecommendFragment;)V
    .locals 0

    .line 263
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/fragment/RecommendFragment$5;->a:Lcom/mh/movie/core/mvp/ui/fragment/RecommendFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;Landroid/view/View;Lcom/mh/movie/core/mvp/model/entity/response/BannerEntity;I)V
    .locals 1
    .param p3    # Lcom/mh/movie/core/mvp/model/entity/response/BannerEntity;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 266
    invoke-virtual {p3}, Lcom/mh/movie/core/mvp/model/entity/response/BannerEntity;->getVideoInfoId()I

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 267
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/fragment/RecommendFragment$5;->a:Lcom/mh/movie/core/mvp/ui/fragment/RecommendFragment;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/ui/fragment/RecommendFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p3}, Lcom/mh/movie/core/mvp/model/entity/response/BannerEntity;->getVideoInfoId()I

    move-result p3

    sget p4, Lcom/mh/movie/core/mvp/model/db/WatchFromEvent;->FROM_RECOMMEND_BANNER:I

    invoke-static {p1, p2, p3, p4}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->a(Landroid/content/Context;III)V

    goto :goto_0

    .line 269
    :cond_0
    invoke-virtual {p3}, Lcom/mh/movie/core/mvp/model/entity/response/BannerEntity;->getLinkUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3}, Lcom/mh/movie/core/mvp/model/entity/response/BannerEntity;->getId()I

    move-result p4

    invoke-virtual {p3}, Lcom/mh/movie/core/mvp/model/entity/response/BannerEntity;->getTargetType()I

    move-result p3

    const/4 v0, 0x1

    if-ne p3, v0, :cond_1

    const/4 p2, 0x1

    :cond_1
    const/4 p3, 0x2

    invoke-static {p1, p4, p2, p3}, Lcom/mh/movie/core/mvp/ui/utils/UIUtils;->openWeb(Ljava/lang/String;IZI)V

    :goto_0
    return-void
.end method

.method public bridge synthetic a(Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;Landroid/view/View;Ljava/lang/Object;I)V
    .locals 0
    .param p3    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 263
    check-cast p3, Lcom/mh/movie/core/mvp/model/entity/response/BannerEntity;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/mh/movie/core/mvp/ui/fragment/RecommendFragment$5;->a(Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;Landroid/view/View;Lcom/mh/movie/core/mvp/model/entity/response/BannerEntity;I)V

    return-void
.end method
