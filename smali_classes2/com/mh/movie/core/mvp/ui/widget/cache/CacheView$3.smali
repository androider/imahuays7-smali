.class Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView$3;
.super Ljava/lang/Object;
.source "CacheView.java"

# interfaces
.implements Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;Landroid/content/Context;)V
    .locals 0

    .line 1141
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView$3;->c:Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;

    iput-object p2, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView$3;->a:Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;

    iput-object p3, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView$3;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1144
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView$3;->a:Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->dismiss()V

    return-void
.end method

.method public b()V
    .locals 4

    .line 1149
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView$3;->a:Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->dismiss()V

    .line 1150
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView$3;->b:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView$3;->b:Landroid/content/Context;

    const-class v3, Lcom/mh/movie/core/mvp/ui/activity/ExChangeActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
