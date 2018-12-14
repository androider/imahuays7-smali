.class Lcom/mh/movie/core/mvp/ui/activity/SplashActivity$2;
.super Ljava/lang/Object;
.source "SplashActivity.java"

# interfaces
.implements Lcom/mh/movie/core/mvp/ui/utils/PermissionUtils$RequestPermission;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/ui/activity/SplashActivity;->k()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mh/movie/core/mvp/ui/activity/SplashActivity;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/ui/activity/SplashActivity;)V
    .locals 0

    .line 218
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/SplashActivity$2;->a:Lcom/mh/movie/core/mvp/ui/activity/SplashActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRequestPermissionFailure(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 226
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/SplashActivity$2;->a:Lcom/mh/movie/core/mvp/ui/activity/SplashActivity;

    invoke-static {p1}, Lcom/mh/movie/core/mvp/ui/activity/SplashActivity;->b(Lcom/mh/movie/core/mvp/ui/activity/SplashActivity;)V

    return-void
.end method

.method public onRequestPermissionSuccess()V
    .locals 1

    .line 221
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/SplashActivity$2;->a:Lcom/mh/movie/core/mvp/ui/activity/SplashActivity;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/activity/SplashActivity;->a(Lcom/mh/movie/core/mvp/ui/activity/SplashActivity;)V

    return-void
.end method
