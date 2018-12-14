.class Lcom/mh/movie/core/mvp/ui/widget/cache/g$3;
.super Ljava/lang/Object;
.source "DownloadManager.java"

# interfaces
.implements Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/ui/widget/cache/g;->a(ILcom/mh/movie/core/mvp/model/entity/DownloadData;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;

.field final synthetic c:Lcom/mh/movie/core/mvp/ui/widget/cache/g;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/ui/widget/cache/g;Landroid/content/Context;Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;)V
    .locals 0

    .line 768
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/g$3;->c:Lcom/mh/movie/core/mvp/ui/widget/cache/g;

    iput-object p2, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/g$3;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/g$3;->b:Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 771
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/g$3;->a:Landroid/content/Context;

    const-class v2, Lcom/mh/movie/core/mvp/ui/activity/SettingActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 772
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/g$3;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 773
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/g$3;->b:Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->dismiss()V

    return-void
.end method

.method public b()V
    .locals 1

    .line 777
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/g$3;->b:Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->dismiss()V

    return-void
.end method
