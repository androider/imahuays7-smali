.class final synthetic Lcom/mh/movie/core/mvp/ui/activity/player/h;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mh/movie/core/mvp/ui/utils/PermissionUtils$PermissionCallback;


# instance fields
.field private final a:Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo$6;

.field private final b:Landroid/view/MotionEvent;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo$6;Landroid/view/MotionEvent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/h;->a:Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo$6;

    iput-object p2, p0, Lcom/mh/movie/core/mvp/ui/activity/player/h;->b:Landroid/view/MotionEvent;

    return-void
.end method


# virtual methods
.method public onRequestSuccess()V
    .locals 2

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/h;->a:Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo$6;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/h;->b:Landroid/view/MotionEvent;

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo$6;->a(Landroid/view/MotionEvent;)V

    return-void
.end method
