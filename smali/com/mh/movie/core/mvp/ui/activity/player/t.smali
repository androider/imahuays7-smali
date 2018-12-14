.class final synthetic Lcom/mh/movie/core/mvp/ui/activity/player/t;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final a:Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;

.field private final b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final c:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/t;->a:Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;

    iput-object p2, p0, Lcom/mh/movie/core/mvp/ui/activity/player/t;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p3, p0, Lcom/mh/movie/core/mvp/ui/activity/player/t;->c:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/t;->a:Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/t;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/activity/player/t;->c:Ljava/util/List;

    invoke-virtual {v0, v1, v2, p1}, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->a(Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/List;Landroid/view/View;)V

    return-void
.end method
