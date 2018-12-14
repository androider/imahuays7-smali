.class Lcom/mh/movie/core/mvp/ui/widget/MyTitleRecyclerDown$1;
.super Ljava/lang/Object;
.source "MyTitleRecyclerDown.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/ui/widget/MyTitleRecyclerDown;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mh/movie/core/mvp/ui/widget/MyTitleRecyclerDown;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/ui/widget/MyTitleRecyclerDown;)V
    .locals 0

    .line 126
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/MyTitleRecyclerDown$1;->a:Lcom/mh/movie/core/mvp/ui/widget/MyTitleRecyclerDown;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 129
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/MyTitleRecyclerDown$1;->a:Lcom/mh/movie/core/mvp/ui/widget/MyTitleRecyclerDown;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/widget/MyTitleRecyclerDown;->a(Lcom/mh/movie/core/mvp/ui/widget/MyTitleRecyclerDown;)Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/mh/movie/core/mvp/ui/activity/MyCacheActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 130
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/MyTitleRecyclerDown$1;->a:Lcom/mh/movie/core/mvp/ui/widget/MyTitleRecyclerDown;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/widget/MyTitleRecyclerDown;->a(Lcom/mh/movie/core/mvp/ui/widget/MyTitleRecyclerDown;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
