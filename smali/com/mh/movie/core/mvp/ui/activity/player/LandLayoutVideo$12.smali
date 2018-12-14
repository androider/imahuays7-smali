.class Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo$12;
.super Ljava/lang/Object;
.source "LandLayoutVideo.java"

# interfaces
.implements Lcom/mh/movie/core/mvp/ui/widget/TvPartLandView$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->a(Ljava/util/List;Ljava/util/List;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;)V
    .locals 0

    .line 913
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo$12;->a:Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    .line 916
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo$12;->a:Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;

    iget-object v0, v0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->F:Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo$b;

    invoke-interface {v0, p1}, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo$b;->a(I)V

    return-void
.end method

.method public a(Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;I)V
    .locals 1

    .line 921
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo$12;->a:Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;

    iget-object v0, v0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->F:Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo$b;

    invoke-interface {v0, p1, p2}, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo$b;->a(Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;I)V

    return-void
.end method
