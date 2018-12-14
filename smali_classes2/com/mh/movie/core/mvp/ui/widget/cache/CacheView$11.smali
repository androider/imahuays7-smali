.class Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView$11;
.super Ljava/lang/Object;
.source "CacheView.java"

# interfaces
.implements Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->b(ZLcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;

.field final synthetic c:Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;ZLcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;)V
    .locals 0

    .line 867
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView$11;->c:Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;

    iput-boolean p2, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView$11;->a:Z

    iput-object p3, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView$11;->b:Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 870
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView$11;->c:Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;

    iget-boolean v1, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView$11;->a:Z

    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView$11;->b:Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;

    invoke-virtual {v0, v1, v2}, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->a(ZLcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;)V

    .line 871
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView$11;->c:Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;

    iget-object v0, v0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->c:Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->dismiss()V

    return-void
.end method

.method public b()V
    .locals 3

    .line 876
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView$11;->c:Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/mh/movie/core/mvp/ui/activity/SettingActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 877
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView$11;->c:Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 878
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView$11;->c:Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;

    iget-object v0, v0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->c:Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->dismiss()V

    return-void
.end method
