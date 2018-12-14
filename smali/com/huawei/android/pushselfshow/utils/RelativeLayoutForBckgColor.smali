.class public Lcom/huawei/android/pushselfshow/utils/RelativeLayoutForBckgColor;
.super Landroid/widget/RelativeLayout;


# instance fields
.field private a:Landroid/app/WallpaperManager;

.field private b:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0}, Lcom/huawei/android/pushselfshow/utils/RelativeLayoutForBckgColor;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {p0}, Lcom/huawei/android/pushselfshow/utils/RelativeLayoutForBckgColor;->a()V

    return-void
.end method

.method private static a(Landroid/app/WallpaperManager;Landroid/graphics/Rect;)Ljava/lang/Object;
    .locals 7

    :try_start_0
    const-string v0, "com.huawei.android.app.WallpaperManagerEx"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getBlurBitmap"

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/app/WallpaperManager;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-class v4, Landroid/graphics/Rect;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v5

    aput-object p1, v2, v6

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string p1, "PushSelfShowLog"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " WallpaperManagerEx getBlurBitmap wrong "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :catch_1
    move-exception p0

    const-string p1, "PushSelfShowLog"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " WallpaperManagerEx getBlurBitmap wrong "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :catch_2
    move-exception p0

    const-string p1, "PushSelfShowLog"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " WallpaperManagerEx getBlurBitmap wrong "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/IllegalAccessException;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :catch_3
    move-exception p0

    const-string p1, "PushSelfShowLog"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " WallpaperManagerEx getBlurBitmap wrong "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/NoSuchMethodException;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :catch_4
    move-exception p0

    const-string p1, "PushSelfShowLog"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " WallpaperManagerEx getBlurBitmap wrong "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/ClassNotFoundException;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/huawei/android/a/a/a/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private b()V
    .locals 8

    invoke-virtual {p0}, Lcom/huawei/android/pushselfshow/utils/RelativeLayoutForBckgColor;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lcom/huawei/android/pushselfshow/utils/RelativeLayoutForBckgColor;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "hwpush_bgcolor"

    invoke-static {v1, v2}, Lcom/huawei/android/pushselfshow/utils/c;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    const/4 v1, 0x2

    :try_start_0
    new-array v1, v1, [I

    invoke-virtual {p0, v1}, Lcom/huawei/android/pushselfshow/utils/RelativeLayoutForBckgColor;->getLocationOnScreen([I)V

    new-instance v2, Landroid/graphics/Rect;

    const/4 v3, 0x0

    aget v4, v1, v3

    const/4 v5, 0x1

    aget v6, v1, v5

    aget v3, v1, v3

    invoke-virtual {p0}, Lcom/huawei/android/pushselfshow/utils/RelativeLayoutForBckgColor;->getWidth()I

    move-result v7

    add-int/2addr v3, v7

    aget v1, v1, v5

    invoke-virtual {p0}, Lcom/huawei/android/pushselfshow/utils/RelativeLayoutForBckgColor;->getHeight()I

    move-result v5

    add-int/2addr v1, v5

    invoke-direct {v2, v4, v6, v3, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v1

    if-lez v1, :cond_3

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-lez v1, :cond_3

    invoke-static {}, Lcom/huawei/android/pushselfshow/utils/a;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/huawei/android/pushselfshow/utils/RelativeLayoutForBckgColor;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/huawei/android/pushselfshow/utils/a;->a(Landroid/content/Context;)I

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/huawei/android/pushselfshow/utils/RelativeLayoutForBckgColor;->setBackgroundColor(I)V

    return-void

    :cond_0
    invoke-virtual {p0, v1}, Lcom/huawei/android/pushselfshow/utils/RelativeLayoutForBckgColor;->setBackgroundColor(I)V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/huawei/android/pushselfshow/utils/RelativeLayoutForBckgColor;->a:Landroid/app/WallpaperManager;

    invoke-static {v1, v2}, Lcom/huawei/android/pushselfshow/utils/RelativeLayoutForBckgColor;->a(Landroid/app/WallpaperManager;Landroid/graphics/Rect;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v3, p0, Lcom/huawei/android/pushselfshow/utils/RelativeLayoutForBckgColor;->a:Landroid/app/WallpaperManager;

    invoke-static {v3, v2}, Lcom/huawei/android/pushselfshow/utils/RelativeLayoutForBckgColor;->a(Landroid/app/WallpaperManager;Landroid/graphics/Rect;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    invoke-direct {v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lcom/huawei/android/pushselfshow/utils/RelativeLayoutForBckgColor;->b:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/huawei/android/pushselfshow/utils/RelativeLayoutForBckgColor;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1}, Lcom/huawei/android/pushselfshow/utils/RelativeLayoutForBckgColor;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_2
    const-string v1, "PushSelfShowLog"

    const-string v2, "not emui 3.0,can not use wallpaper as background"

    invoke-static {v1, v2}, Lcom/huawei/android/a/a/a/c;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v1, "PushSelfShowLog"

    const-string v2, "setBlurWallpaperBackground error, use default backgroud"

    invoke-static {v1, v2}, Lcom/huawei/android/a/a/a/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/huawei/android/pushselfshow/utils/RelativeLayoutForBckgColor;->setBackgroundColor(I)V

    :cond_3
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ServiceCast"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/huawei/android/pushselfshow/utils/RelativeLayoutForBckgColor;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "wallpaper"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/WallpaperManager;

    iput-object v0, p0, Lcom/huawei/android/pushselfshow/utils/RelativeLayoutForBckgColor;->a:Landroid/app/WallpaperManager;

    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    invoke-direct {p0}, Lcom/huawei/android/pushselfshow/utils/RelativeLayoutForBckgColor;->b()V

    return-void
.end method
