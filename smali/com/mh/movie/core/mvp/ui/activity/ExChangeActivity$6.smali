.class Lcom/mh/movie/core/mvp/ui/activity/ExChangeActivity$6;
.super Ljava/lang/Object;
.source "ExChangeActivity.java"

# interfaces
.implements Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/ui/activity/ExChangeActivity;->a(ZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;

.field final synthetic b:Lcom/mh/movie/core/mvp/ui/activity/ExChangeActivity;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/ui/activity/ExChangeActivity;Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;)V
    .locals 0

    .line 368
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/ExChangeActivity$6;->b:Lcom/mh/movie/core/mvp/ui/activity/ExChangeActivity;

    iput-object p2, p0, Lcom/mh/movie/core/mvp/ui/activity/ExChangeActivity$6;->a:Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 371
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/ExChangeActivity$6;->a:Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->dismiss()V

    return-void
.end method

.method public b()V
    .locals 1

    .line 376
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/ExChangeActivity$6;->a:Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->dismiss()V

    return-void
.end method
