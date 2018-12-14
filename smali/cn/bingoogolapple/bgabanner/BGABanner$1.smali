.class Lcn/bingoogolapple/bgabanner/BGABanner$1;
.super Lcn/bingoogolapple/bgabanner/d;
.source "BGABanner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/bingoogolapple/bgabanner/BGABanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/bingoogolapple/bgabanner/BGABanner;


# direct methods
.method constructor <init>(Lcn/bingoogolapple/bgabanner/BGABanner;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcn/bingoogolapple/bgabanner/BGABanner$1;->a:Lcn/bingoogolapple/bgabanner/BGABanner;

    invoke-direct {p0}, Lcn/bingoogolapple/bgabanner/d;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 0

    .line 99
    iget-object p1, p0, Lcn/bingoogolapple/bgabanner/BGABanner$1;->a:Lcn/bingoogolapple/bgabanner/BGABanner;

    invoke-static {p1}, Lcn/bingoogolapple/bgabanner/BGABanner;->a(Lcn/bingoogolapple/bgabanner/BGABanner;)Lcn/bingoogolapple/bgabanner/BGABanner$d;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 100
    iget-object p1, p0, Lcn/bingoogolapple/bgabanner/BGABanner$1;->a:Lcn/bingoogolapple/bgabanner/BGABanner;

    invoke-static {p1}, Lcn/bingoogolapple/bgabanner/BGABanner;->a(Lcn/bingoogolapple/bgabanner/BGABanner;)Lcn/bingoogolapple/bgabanner/BGABanner$d;

    move-result-object p1

    invoke-interface {p1}, Lcn/bingoogolapple/bgabanner/BGABanner$d;->a()V

    :cond_0
    return-void
.end method
