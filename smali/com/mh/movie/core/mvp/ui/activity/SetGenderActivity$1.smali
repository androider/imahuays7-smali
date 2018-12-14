.class Lcom/mh/movie/core/mvp/ui/activity/SetGenderActivity$1;
.super Ljava/lang/Object;
.source "SetGenderActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/ui/activity/SetGenderActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mh/movie/core/mvp/ui/activity/SetGenderActivity;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/ui/activity/SetGenderActivity;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/SetGenderActivity$1;->a:Lcom/mh/movie/core/mvp/ui/activity/SetGenderActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 96
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/SetGenderActivity$1;->a:Lcom/mh/movie/core/mvp/ui/activity/SetGenderActivity;

    invoke-static {p1}, Lcom/mh/movie/core/mvp/ui/activity/SetGenderActivity;->a(Lcom/mh/movie/core/mvp/ui/activity/SetGenderActivity;)Lcom/jess/arms/mvp/b;

    move-result-object p1

    check-cast p1, Lcom/mh/movie/core/mvp/presenter/SetGenderPresenter;

    sget-object v0, Lcom/mh/movie/core/mvp/ui/activity/SetGenderActivity;->c:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/mh/movie/core/mvp/presenter/SetGenderPresenter;->a(Ljava/lang/String;Z)V

    return-void
.end method
