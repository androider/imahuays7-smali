.class Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner$1;
.super Lcn/bingoogolapple/bgabanner/d;
.source "BGABanner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner$1;->a:Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;

    invoke-direct {p0}, Lcn/bingoogolapple/bgabanner/d;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 0

    .line 106
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner$1;->a:Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;

    invoke-static {p1}, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->a(Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;)Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner$d;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 107
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner$1;->a:Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;

    invoke-static {p1}, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->a(Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;)Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner$d;

    move-result-object p1

    invoke-interface {p1}, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner$d;->a()V

    :cond_0
    return-void
.end method
