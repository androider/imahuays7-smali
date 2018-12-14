.class public Lcom/mh/movie/core/mvp/ui/adapter/player/PlayerTVPartAdapter$ItemViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "PlayerTVPartAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mh/movie/core/mvp/ui/adapter/player/PlayerTVPartAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ItemViewHolder"
.end annotation


# instance fields
.field final synthetic a:Lcom/mh/movie/core/mvp/ui/adapter/player/PlayerTVPartAdapter;

.field cbPlayerTvPartItem:Landroid/widget/CheckBox;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c0075
    .end annotation
.end field

.field tvLabel:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c03ed
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/mh/movie/core/mvp/ui/adapter/player/PlayerTVPartAdapter;Landroid/view/View;)V
    .locals 3

    .line 140
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/adapter/player/PlayerTVPartAdapter$ItemViewHolder;->a:Lcom/mh/movie/core/mvp/ui/adapter/player/PlayerTVPartAdapter;

    .line 141
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 142
    invoke-static {p0, p2}, Lcom/jess/arms/c/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Lbutterknife/Unbinder;

    .line 145
    iget-object p2, p0, Lcom/mh/movie/core/mvp/ui/adapter/player/PlayerTVPartAdapter$ItemViewHolder;->cbPlayerTvPartItem:Landroid/widget/CheckBox;

    new-instance v0, Lcom/mh/movie/core/mvp/ui/adapter/player/PlayerTVPartAdapter$ItemViewHolder$1;

    const-wide/16 v1, 0x3e8

    invoke-direct {v0, p0, v1, v2, p1}, Lcom/mh/movie/core/mvp/ui/adapter/player/PlayerTVPartAdapter$ItemViewHolder$1;-><init>(Lcom/mh/movie/core/mvp/ui/adapter/player/PlayerTVPartAdapter$ItemViewHolder;JLcom/mh/movie/core/mvp/ui/adapter/player/PlayerTVPartAdapter;)V

    invoke-virtual {p2, v0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
