.class Lcom/mh/movie/core/mvp/ui/fragment/RecommendFragment$4;
.super Ljava/lang/Object;
.source "RecommendFragment.java"

# interfaces
.implements Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner$a;


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
        "Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner$a<",
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

    .line 228
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/fragment/RecommendFragment$4;->a:Lcom/mh/movie/core/mvp/ui/fragment/RecommendFragment;

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

    .line 231
    sget p1, Lcom/mh/movie/core/R$id;->banner_view:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lpl/droidsonroids/gif/GifImageView;

    .line 232
    sget p4, Lcom/mh/movie/core/R$id;->banner_title:I

    invoke-virtual {p2, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 234
    iget-object p4, p0, Lcom/mh/movie/core/mvp/ui/fragment/RecommendFragment$4;->a:Lcom/mh/movie/core/mvp/ui/fragment/RecommendFragment;

    invoke-virtual {p4}, Lcom/mh/movie/core/mvp/ui/fragment/RecommendFragment;->getContext()Landroid/content/Context;

    move-result-object p4

    invoke-static {p4}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object p4

    .line 235
    invoke-virtual {p3}, Lcom/mh/movie/core/mvp/model/entity/response/BannerEntity;->getThumbnailUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p4

    .line 236
    invoke-virtual {p4, p1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 238
    invoke-virtual {p3}, Lcom/mh/movie/core/mvp/model/entity/response/BannerEntity;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public bridge synthetic a(Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;Landroid/view/View;Ljava/lang/Object;I)V
    .locals 0
    .param p3    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 228
    check-cast p3, Lcom/mh/movie/core/mvp/model/entity/response/BannerEntity;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/mh/movie/core/mvp/ui/fragment/RecommendFragment$4;->a(Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;Landroid/view/View;Lcom/mh/movie/core/mvp/model/entity/response/BannerEntity;I)V

    return-void
.end method
