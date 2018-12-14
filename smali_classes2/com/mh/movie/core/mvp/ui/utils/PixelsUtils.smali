.class public Lcom/mh/movie/core/mvp/ui/utils/PixelsUtils;
.super Ljava/lang/Object;
.source "PixelsUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAndroidScreenProperty(Landroid/content/Context;)Lcom/mh/movie/core/mvp/model/entity/PixelsEntity;
    .locals 2

    const-string v0, "window"

    .line 12
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    .line 13
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 14
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 15
    new-instance p0, Lcom/mh/movie/core/mvp/model/entity/PixelsEntity;

    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-direct {p0, v1, v0}, Lcom/mh/movie/core/mvp/model/entity/PixelsEntity;-><init>(II)V

    return-object p0
.end method
