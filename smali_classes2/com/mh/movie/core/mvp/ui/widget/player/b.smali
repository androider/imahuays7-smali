.class final synthetic Lcom/mh/movie/core/mvp/ui/widget/player/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mh/movie/core/mvp/ui/adapter/player/PlayerTVPartAdapter$a;


# instance fields
.field private final a:Lcom/mh/movie/core/mvp/ui/widget/player/TvPartView;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/ui/widget/player/TvPartView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/player/b;->a:Lcom/mh/movie/core/mvp/ui/widget/player/TvPartView;

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/player/b;->a:Lcom/mh/movie/core/mvp/ui/widget/player/TvPartView;

    check-cast p2, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;

    invoke-virtual {v0, p1, p2}, Lcom/mh/movie/core/mvp/ui/widget/player/TvPartView;->a(ILcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;)V

    return-void
.end method
