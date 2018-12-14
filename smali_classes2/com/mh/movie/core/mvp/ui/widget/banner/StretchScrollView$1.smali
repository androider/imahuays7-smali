.class Lcom/mh/movie/core/mvp/ui/widget/banner/StretchScrollView$1;
.super Landroid/os/Handler;
.source "StretchScrollView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mh/movie/core/mvp/ui/widget/banner/StretchScrollView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mh/movie/core/mvp/ui/widget/banner/StretchScrollView;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/ui/widget/banner/StretchScrollView;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/StretchScrollView$1;->a:Lcom/mh/movie/core/mvp/ui/widget/banner/StretchScrollView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 36
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-ne v0, p1, :cond_3

    .line 37
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/StretchScrollView$1;->a:Lcom/mh/movie/core/mvp/ui/widget/banner/StretchScrollView;

    invoke-static {p1}, Lcom/mh/movie/core/mvp/ui/widget/banner/StretchScrollView;->a(Lcom/mh/movie/core/mvp/ui/widget/banner/StretchScrollView;)I

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/StretchScrollView$1;->a:Lcom/mh/movie/core/mvp/ui/widget/banner/StretchScrollView;

    invoke-static {p1}, Lcom/mh/movie/core/mvp/ui/widget/banner/StretchScrollView;->b(Lcom/mh/movie/core/mvp/ui/widget/banner/StretchScrollView;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 38
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/StretchScrollView$1;->a:Lcom/mh/movie/core/mvp/ui/widget/banner/StretchScrollView;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/StretchScrollView$1;->a:Lcom/mh/movie/core/mvp/ui/widget/banner/StretchScrollView;

    invoke-static {v1}, Lcom/mh/movie/core/mvp/ui/widget/banner/StretchScrollView;->a(Lcom/mh/movie/core/mvp/ui/widget/banner/StretchScrollView;)I

    move-result v1

    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/StretchScrollView$1;->a:Lcom/mh/movie/core/mvp/ui/widget/banner/StretchScrollView;

    invoke-static {v2}, Lcom/mh/movie/core/mvp/ui/widget/banner/StretchScrollView;->c(Lcom/mh/movie/core/mvp/ui/widget/banner/StretchScrollView;)I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {p1, v1}, Lcom/mh/movie/core/mvp/ui/widget/banner/StretchScrollView;->a(Lcom/mh/movie/core/mvp/ui/widget/banner/StretchScrollView;I)I

    .line 40
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/StretchScrollView$1;->a:Lcom/mh/movie/core/mvp/ui/widget/banner/StretchScrollView;

    invoke-static {p1}, Lcom/mh/movie/core/mvp/ui/widget/banner/StretchScrollView;->c(Lcom/mh/movie/core/mvp/ui/widget/banner/StretchScrollView;)I

    move-result p1

    const/4 v1, 0x0

    if-gez p1, :cond_0

    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/StretchScrollView$1;->a:Lcom/mh/movie/core/mvp/ui/widget/banner/StretchScrollView;

    invoke-static {p1}, Lcom/mh/movie/core/mvp/ui/widget/banner/StretchScrollView;->a(Lcom/mh/movie/core/mvp/ui/widget/banner/StretchScrollView;)I

    move-result p1

    if-gtz p1, :cond_1

    :cond_0
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/StretchScrollView$1;->a:Lcom/mh/movie/core/mvp/ui/widget/banner/StretchScrollView;

    invoke-static {p1}, Lcom/mh/movie/core/mvp/ui/widget/banner/StretchScrollView;->c(Lcom/mh/movie/core/mvp/ui/widget/banner/StretchScrollView;)I

    move-result p1

    if-lez p1, :cond_2

    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/StretchScrollView$1;->a:Lcom/mh/movie/core/mvp/ui/widget/banner/StretchScrollView;

    invoke-static {p1}, Lcom/mh/movie/core/mvp/ui/widget/banner/StretchScrollView;->a(Lcom/mh/movie/core/mvp/ui/widget/banner/StretchScrollView;)I

    move-result p1

    if-gez p1, :cond_2

    .line 41
    :cond_1
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/StretchScrollView$1;->a:Lcom/mh/movie/core/mvp/ui/widget/banner/StretchScrollView;

    invoke-static {p1, v1}, Lcom/mh/movie/core/mvp/ui/widget/banner/StretchScrollView;->a(Lcom/mh/movie/core/mvp/ui/widget/banner/StretchScrollView;I)I

    .line 44
    :cond_2
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/StretchScrollView$1;->a:Lcom/mh/movie/core/mvp/ui/widget/banner/StretchScrollView;

    invoke-static {p1}, Lcom/mh/movie/core/mvp/ui/widget/banner/StretchScrollView;->d(Lcom/mh/movie/core/mvp/ui/widget/banner/StretchScrollView;)Landroid/view/View;

    move-result-object p1

    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/StretchScrollView$1;->a:Lcom/mh/movie/core/mvp/ui/widget/banner/StretchScrollView;

    invoke-static {v2}, Lcom/mh/movie/core/mvp/ui/widget/banner/StretchScrollView;->a(Lcom/mh/movie/core/mvp/ui/widget/banner/StretchScrollView;)I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/view/View;->scrollTo(II)V

    const-wide/16 v1, 0x14

    .line 46
    invoke-virtual {p0, v0, v1, v2}, Lcom/mh/movie/core/mvp/ui/widget/banner/StretchScrollView$1;->sendEmptyMessageDelayed(IJ)Z

    :cond_3
    return-void
.end method
