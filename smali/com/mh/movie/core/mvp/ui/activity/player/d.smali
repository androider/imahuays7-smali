.class final synthetic Lcom/mh/movie/core/mvp/ui/activity/player/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mh/movie/core/mvp/ui/widget/ClarityView$a;


# instance fields
.field private final a:Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;

.field private final b:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/d;->a:Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;

    iput-object p2, p0, Lcom/mh/movie/core/mvp/ui/activity/player/d;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/d;->a:Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/d;->b:Ljava/util/List;

    invoke-virtual {v0, v1, p1}, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->a(Ljava/util/List;I)V

    return-void
.end method
