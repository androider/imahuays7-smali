.class Lcn/bingoogolapple/bgabanner/BGABanner$b;
.super Ljava/lang/Object;
.source "BGABanner.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/bingoogolapple/bgabanner/BGABanner;
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
            "Lcn/bingoogolapple/bgabanner/BGABanner;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcn/bingoogolapple/bgabanner/BGABanner;)V
    .locals 1

    .line 945
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 946
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcn/bingoogolapple/bgabanner/BGABanner$b;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method synthetic constructor <init>(Lcn/bingoogolapple/bgabanner/BGABanner;Lcn/bingoogolapple/bgabanner/BGABanner$1;)V
    .locals 0

    .line 942
    invoke-direct {p0, p1}, Lcn/bingoogolapple/bgabanner/BGABanner$b;-><init>(Lcn/bingoogolapple/bgabanner/BGABanner;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 951
    iget-object v0, p0, Lcn/bingoogolapple/bgabanner/BGABanner$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/bingoogolapple/bgabanner/BGABanner;

    if-eqz v0, :cond_0

    .line 953
    invoke-static {v0}, Lcn/bingoogolapple/bgabanner/BGABanner;->i(Lcn/bingoogolapple/bgabanner/BGABanner;)V

    .line 954
    invoke-virtual {v0}, Lcn/bingoogolapple/bgabanner/BGABanner;->c()V

    :cond_0
    return-void
.end method
