.class Lcom/mh/movie/core/mvp/ui/adapter/CompletedAdapter$TvHolder;
.super Lcom/mh/movie/core/mvp/ui/adapter/d$b;
.source "CompletedAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mh/movie/core/mvp/ui/adapter/CompletedAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TvHolder"
.end annotation


# instance fields
.field flPoster:Landroid/widget/FrameLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c00ff
    .end annotation
.end field

.field ivPoster:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c0177
    .end annotation
.end field

.field tvLength:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c03f0
    .end annotation
.end field

.field tvProportion:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c043b
    .end annotation
.end field

.field tvTitle:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c047e
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 0

    .line 152
    invoke-direct {p0, p1}, Lcom/mh/movie/core/mvp/ui/adapter/d$b;-><init>(Landroid/view/View;)V

    .line 153
    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    return-void
.end method
