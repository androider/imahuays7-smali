.class public Lcom/mh/movie/core/mvp/ui/adapter/e$a;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "FeedBackAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mh/movie/core/mvp/ui/adapter/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field a:Landroid/widget/CheckBox;

.field final synthetic b:Lcom/mh/movie/core/mvp/ui/adapter/e;


# direct methods
.method public constructor <init>(Lcom/mh/movie/core/mvp/ui/adapter/e;Landroid/view/View;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/adapter/e$a;->b:Lcom/mh/movie/core/mvp/ui/adapter/e;

    .line 66
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 67
    sget p1, Lcom/mh/movie/core/R$id;->cb_feed_back:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/adapter/e$a;->a:Landroid/widget/CheckBox;

    return-void
.end method
