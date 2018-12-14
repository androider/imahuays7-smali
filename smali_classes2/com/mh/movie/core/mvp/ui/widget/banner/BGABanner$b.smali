.class Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner$b;
.super Ljava/lang/Object;
.source "BGABanner.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;)V
    .locals 1

    .line 952
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 953
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner$b;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method synthetic constructor <init>(Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner$1;)V
    .locals 0

    .line 949
    invoke-direct {p0, p1}, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner$b;-><init>(Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 958
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;

    if-eqz v0, :cond_0

    .line 960
    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->i(Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;)V

    .line 961
    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->c()V

    :cond_0
    return-void
.end method
