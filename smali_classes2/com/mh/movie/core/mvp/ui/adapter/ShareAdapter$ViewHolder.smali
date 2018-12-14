.class public Lcom/mh/movie/core/mvp/ui/adapter/ShareAdapter$ViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "ShareAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mh/movie/core/mvp/ui/adapter/ShareAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation


# instance fields
.field final synthetic a:Lcom/mh/movie/core/mvp/ui/adapter/ShareAdapter;

.field ivShareIcon:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c018a
    .end annotation
.end field

.field llShareItem:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c0218
    .end annotation
.end field

.field tvShareName:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c0465
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/ui/adapter/ShareAdapter;Landroid/view/View;)V
    .locals 3

    .line 91
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/adapter/ShareAdapter$ViewHolder;->a:Lcom/mh/movie/core/mvp/ui/adapter/ShareAdapter;

    .line 92
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 93
    invoke-static {p0, p2}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    .line 94
    iget-object p2, p0, Lcom/mh/movie/core/mvp/ui/adapter/ShareAdapter$ViewHolder;->llShareItem:Landroid/widget/LinearLayout;

    new-instance v0, Lcom/mh/movie/core/mvp/ui/adapter/ShareAdapter$ViewHolder$1;

    const-wide/16 v1, 0x3e8

    invoke-direct {v0, p0, v1, v2, p1}, Lcom/mh/movie/core/mvp/ui/adapter/ShareAdapter$ViewHolder$1;-><init>(Lcom/mh/movie/core/mvp/ui/adapter/ShareAdapter$ViewHolder;JLcom/mh/movie/core/mvp/ui/adapter/ShareAdapter;)V

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
