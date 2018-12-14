.class final synthetic Lcom/mh/movie/core/mvp/ui/activity/player/l;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mh/movie/core/mvp/ui/adapter/player/PlayerTVPartAdapter$a;


# instance fields
.field private final a:Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/l;->a:Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/l;->a:Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;

    check-cast p2, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;

    invoke-virtual {v0, p1, p2}, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->a(ILcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;)V

    return-void
.end method
