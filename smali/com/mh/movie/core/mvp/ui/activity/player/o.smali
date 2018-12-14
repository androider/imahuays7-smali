.class final synthetic Lcom/mh/movie/core/mvp/ui/activity/player/o;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mh/movie/core/mvp/ui/widget/LabelsView$b;


# instance fields
.field private final a:Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;

.field private final b:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/o;->a:Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;

    iput-object p2, p0, Lcom/mh/movie/core/mvp/ui/activity/player/o;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 2

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/o;->a:Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/o;->b:Ljava/util/List;

    invoke-virtual {v0, v1, p1}, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->a(Ljava/util/List;Z)V

    return-void
.end method
