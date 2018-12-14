.class Lcom/mh/movie/core/mvp/ui/activity/TvplayDetailActivity$4;
.super Ljava/lang/Object;
.source "TvplayDetailActivity.java"

# interfaces
.implements Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/ui/activity/TvplayDetailActivity;->a(Lcom/mh/movie/core/mvp/model/db/TableCommodity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mh/movie/core/mvp/model/db/TableCommodity;

.field final synthetic b:Lcom/mh/movie/core/mvp/ui/activity/TvplayDetailActivity;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/ui/activity/TvplayDetailActivity;Lcom/mh/movie/core/mvp/model/db/TableCommodity;)V
    .locals 0

    .line 334
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/TvplayDetailActivity$4;->b:Lcom/mh/movie/core/mvp/ui/activity/TvplayDetailActivity;

    iput-object p2, p0, Lcom/mh/movie/core/mvp/ui/activity/TvplayDetailActivity$4;->a:Lcom/mh/movie/core/mvp/model/db/TableCommodity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 337
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/TvplayDetailActivity$4;->b:Lcom/mh/movie/core/mvp/ui/activity/TvplayDetailActivity;

    iget-object v0, v0, Lcom/mh/movie/core/mvp/ui/activity/TvplayDetailActivity;->l:Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->dismiss()V

    .line 338
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/TvplayDetailActivity$4;->b:Lcom/mh/movie/core/mvp/ui/activity/TvplayDetailActivity;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/activity/TvplayDetailActivity;->d(Lcom/mh/movie/core/mvp/ui/activity/TvplayDetailActivity;)Lcom/jess/arms/mvp/b;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/presenter/TvplayDetailPresenter;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/TvplayDetailActivity$4;->a:Lcom/mh/movie/core/mvp/model/db/TableCommodity;

    iget v1, v1, Lcom/mh/movie/core/mvp/model/db/TableCommodity;->authId:I

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/presenter/TvplayDetailPresenter;->b(I)V

    return-void
.end method

.method public b()V
    .locals 1

    .line 343
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/TvplayDetailActivity$4;->b:Lcom/mh/movie/core/mvp/ui/activity/TvplayDetailActivity;

    iget-object v0, v0, Lcom/mh/movie/core/mvp/ui/activity/TvplayDetailActivity;->l:Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->dismiss()V

    return-void
.end method
