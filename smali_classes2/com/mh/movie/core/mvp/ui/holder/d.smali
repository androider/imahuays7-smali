.class public abstract Lcom/mh/movie/core/mvp/ui/holder/d;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "BaseViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mh/movie/core/mvp/ui/holder/d$a;
    }
.end annotation


# instance fields
.field protected j:Lcom/mh/movie/core/mvp/ui/holder/d$a;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;I)V
    .locals 2

    .line 22
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 23
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/holder/d;->itemView:Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/ui/holder/d;->a(Landroid/view/View;)V

    .line 24
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/holder/d;->itemView:Landroid/view/View;

    new-instance p2, Lcom/mh/movie/core/mvp/ui/holder/d$1;

    invoke-direct {p2, p0}, Lcom/mh/movie/core/mvp/ui/holder/d$1;-><init>(Lcom/mh/movie/core/mvp/ui/holder/d;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method protected abstract a(Landroid/view/View;)V
.end method
