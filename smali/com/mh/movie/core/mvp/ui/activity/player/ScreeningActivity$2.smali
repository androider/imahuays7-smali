.class Lcom/mh/movie/core/mvp/ui/activity/player/ScreeningActivity$2;
.super Ljava/lang/Object;
.source "ScreeningActivity.java"

# interfaces
.implements Lcom/mh/movie/core/mvp/ui/adapter/player/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/ui/activity/player/ScreeningActivity;->k()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mh/movie/core/mvp/ui/activity/player/ScreeningActivity;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/ui/activity/player/ScreeningActivity;)V
    .locals 0

    .line 264
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/ScreeningActivity$2;->a:Lcom/mh/movie/core/mvp/ui/activity/player/ScreeningActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    .line 267
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/ScreeningActivity$2;->a:Lcom/mh/movie/core/mvp/ui/activity/player/ScreeningActivity;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/activity/player/ScreeningActivity;->a(Lcom/mh/movie/core/mvp/ui/activity/player/ScreeningActivity;)Lcom/jess/arms/mvp/b;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/presenter/player/ScreeningPresenter;

    invoke-virtual {v0, p1}, Lcom/mh/movie/core/mvp/presenter/player/ScreeningPresenter;->a(I)V

    return-void
.end method
