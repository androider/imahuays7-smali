.class Lcom/mh/movie/core/mvp/ui/activity/b$2;
.super Landroid/content/BroadcastReceiver;
.source "AbsSystemReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mh/movie/core/mvp/ui/activity/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mh/movie/core/mvp/ui/activity/b;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/ui/activity/b;)V
    .locals 0

    .line 124
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/b$2;->a:Lcom/mh/movie/core/mvp/ui/activity/b;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 129
    invoke-static {p1}, Lcom/mh/movie/core/mvp/ui/utils/NetStateUtils;->getNetWorkStates(Landroid/content/Context;)I

    move-result p1

    .line 130
    iget-object p2, p0, Lcom/mh/movie/core/mvp/ui/activity/b$2;->a:Lcom/mh/movie/core/mvp/ui/activity/b;

    invoke-virtual {p2, p1}, Lcom/mh/movie/core/mvp/ui/activity/b;->a(I)V

    .line 132
    invoke-static {}, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->a()Lcom/mh/movie/core/mvp/ui/widget/cache/g;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->b(I)V

    return-void
.end method
