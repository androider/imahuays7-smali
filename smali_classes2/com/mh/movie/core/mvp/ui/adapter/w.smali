.class public Lcom/mh/movie/core/mvp/ui/adapter/w;
.super Lcom/mh/movie/core/mvp/ui/widget/banner/a;
.source "SplashBannderNetAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mh/movie/core/mvp/ui/widget/banner/a<",
        "Lcom/mh/movie/core/mvp/model/entity/BootadsListBean;",
        ">;"
    }
.end annotation


# instance fields
.field private c:Landroid/content/Context;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mh/movie/core/mvp/model/entity/BootadsListBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/mh/movie/core/mvp/model/entity/BootadsListBean;",
            ">;)V"
        }
    .end annotation

    .line 19
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/widget/banner/a;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/adapter/w;->c:Landroid/content/Context;

    .line 21
    iput-object p2, p0, Lcom/mh/movie/core/mvp/ui/adapter/w;->d:Ljava/util/List;

    .line 22
    invoke-virtual {p0, p2}, Lcom/mh/movie/core/mvp/ui/adapter/w;->a(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public a(I)Landroid/view/View;
    .locals 4

    .line 27
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/adapter/w;->c:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/mh/movie/core/R$layout;->item_banner:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 28
    sget v1, Lcom/mh/movie/core/R$id;->banner_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 29
    sget v2, Lcom/mh/movie/core/R$id;->banner_title:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 30
    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/adapter/w;->c:Landroid/content/Context;

    invoke-static {v2}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v2

    iget-object v3, p0, Lcom/mh/movie/core/mvp/ui/adapter/w;->d:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mh/movie/core/mvp/model/entity/BootadsListBean;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/BootadsListBean;->getThumbnailUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    return-object v0
.end method
