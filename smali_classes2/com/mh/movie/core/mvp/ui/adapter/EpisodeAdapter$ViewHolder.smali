.class Lcom/mh/movie/core/mvp/ui/adapter/EpisodeAdapter$ViewHolder;
.super Lcom/mh/movie/core/mvp/ui/adapter/d$b;
.source "EpisodeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mh/movie/core/mvp/ui/adapter/EpisodeAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ViewHolder"
.end annotation


# instance fields
.field llTvItem:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c022a
    .end annotation
.end field

.field tvNum:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c0414
    .end annotation
.end field

.field tvState:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c046d
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 0

    .line 102
    invoke-direct {p0, p1}, Lcom/mh/movie/core/mvp/ui/adapter/d$b;-><init>(Landroid/view/View;)V

    .line 103
    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    return-void
.end method
