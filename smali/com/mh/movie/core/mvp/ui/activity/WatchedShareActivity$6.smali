.class Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity$6;
.super Ljava/lang/Object;
.source "WatchedShareActivity.java"

# interfaces
.implements Lcom/mh/movie/core/mvp/ui/utils/PermissionUtils$RequestPermission;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity;->a(Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity$b;

.field final synthetic b:Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity;Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity$b;)V
    .locals 0

    .line 461
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity$6;->b:Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity;

    iput-object p2, p0, Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity$6;->a:Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRequestPermissionFailure(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 469
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity$6;->a:Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity$b;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity$b;->a(Z)V

    return-void
.end method

.method public onRequestPermissionSuccess()V
    .locals 2

    .line 464
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity$6;->a:Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity$b;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity$b;->a(Z)V

    return-void
.end method
