.class Lcom/mh/movie/core/mvp/ui/activity/MyLevelActivity$1;
.super Ljava/lang/Object;
.source "MyLevelActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/ui/activity/MyLevelActivity;->b(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mh/movie/core/mvp/ui/activity/MyLevelActivity;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/ui/activity/MyLevelActivity;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/MyLevelActivity$1;->a:Lcom/mh/movie/core/mvp/ui/activity/MyLevelActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 116
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/MyLevelActivity$1;->a:Lcom/mh/movie/core/mvp/ui/activity/MyLevelActivity;

    iget-object v0, v0, Lcom/mh/movie/core/mvp/ui/activity/MyLevelActivity;->r:Landroid/content/Context;

    const-class v1, Lcom/mh/movie/core/mvp/ui/activity/ExperienceRecordActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 117
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/MyLevelActivity$1;->a:Lcom/mh/movie/core/mvp/ui/activity/MyLevelActivity;

    invoke-virtual {v0, p1}, Lcom/mh/movie/core/mvp/ui/activity/MyLevelActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
