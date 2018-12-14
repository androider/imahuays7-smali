.class Lcom/mh/movie/core/mvp/ui/activity/UserActivity$1;
.super Ljava/lang/Object;
.source "UserActivity.java"

# interfaces
.implements Lcom/paginate/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/ui/activity/UserActivity;->g()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mh/movie/core/mvp/ui/activity/UserActivity;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/ui/activity/UserActivity;)V
    .locals 0

    .line 170
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/UserActivity$1;->a:Lcom/mh/movie/core/mvp/ui/activity/UserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 173
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/UserActivity$1;->a:Lcom/mh/movie/core/mvp/ui/activity/UserActivity;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/activity/UserActivity;->a(Lcom/mh/movie/core/mvp/ui/activity/UserActivity;)Lcom/jess/arms/mvp/b;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/presenter/UserPresenter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/presenter/UserPresenter;->a(Z)V

    return-void
.end method

.method public b()Z
    .locals 1

    .line 178
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/UserActivity$1;->a:Lcom/mh/movie/core/mvp/ui/activity/UserActivity;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/activity/UserActivity;->b(Lcom/mh/movie/core/mvp/ui/activity/UserActivity;)Z

    move-result v0

    return v0
.end method

.method public c()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
