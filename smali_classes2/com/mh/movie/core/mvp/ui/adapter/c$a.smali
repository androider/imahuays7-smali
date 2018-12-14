.class public Lcom/mh/movie/core/mvp/ui/adapter/c$a;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "CommonAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mh/movie/core/mvp/ui/adapter/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/mh/movie/core/mvp/ui/adapter/c;


# direct methods
.method public constructor <init>(Lcom/mh/movie/core/mvp/ui/adapter/c;Landroid/view/View;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/adapter/c$a;->a:Lcom/mh/movie/core/mvp/ui/adapter/c;

    .line 109
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 110
    invoke-static {p1}, Lcom/mh/movie/core/mvp/ui/adapter/c;->a(Lcom/mh/movie/core/mvp/ui/adapter/c;)Landroid/view/View;

    move-result-object p1

    if-ne p2, p1, :cond_0

    return-void

    :cond_0
    return-void
.end method
