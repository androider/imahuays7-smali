.class Lcom/mh/movie/core/mvp/ui/activity/AllActivity$3;
.super Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;
.source "AllActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/ui/activity/AllActivity;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/widget/GridLayoutManager;

.field final synthetic b:Lcom/mh/movie/core/mvp/ui/activity/AllActivity;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/ui/activity/AllActivity;Landroid/support/v7/widget/GridLayoutManager;)V
    .locals 0

    .line 196
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/AllActivity$3;->b:Lcom/mh/movie/core/mvp/ui/activity/AllActivity;

    iput-object p2, p0, Lcom/mh/movie/core/mvp/ui/activity/AllActivity$3;->a:Landroid/support/v7/widget/GridLayoutManager;

    invoke-direct {p0}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;-><init>()V

    return-void
.end method


# virtual methods
.method public getSpanSize(I)I
    .locals 1

    if-nez p1, :cond_0

    .line 200
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/AllActivity$3;->a:Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {p1}, Landroid/support/v7/widget/GridLayoutManager;->getSpanCount()I

    move-result p1

    return p1

    .line 202
    :cond_0
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/AllActivity$3;->b:Lcom/mh/movie/core/mvp/ui/activity/AllActivity;

    iget-object v0, v0, Lcom/mh/movie/core/mvp/ui/activity/AllActivity;->n:Lcom/mh/movie/core/mvp/ui/adapter/c;

    invoke-virtual {v0, p1}, Lcom/mh/movie/core/mvp/ui/adapter/c;->getItemViewType(I)I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/AllActivity$3;->a:Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {p1}, Landroid/support/v7/widget/GridLayoutManager;->getSpanCount()I

    move-result p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    :goto_0
    return p1
.end method
