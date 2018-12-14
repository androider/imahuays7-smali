.class public Lcn/bingoogolapple/bgabanner/b;
.super Ljava/lang/Object;
.source "BGABannerUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/bingoogolapple/bgabanner/b$a;
    }
.end annotation


# direct methods
.method public static a(IIII)I
    .locals 4

    if-nez p0, :cond_0

    if-nez p1, :cond_0

    return p2

    :cond_0
    if-nez p0, :cond_1

    int-to-double p0, p1

    int-to-double v0, p3

    div-double/2addr p0, v0

    int-to-double p2, p2

    mul-double p2, p2, p0

    double-to-int p0, p2

    return p0

    :cond_1
    if-nez p1, :cond_2

    return p0

    :cond_2
    int-to-double v0, p3

    int-to-double p2, p2

    div-double/2addr v0, p2

    int-to-double p2, p0

    mul-double p2, p2, v0

    int-to-double v2, p1

    cmpl-double p1, p2, v2

    if-lez p1, :cond_3

    div-double/2addr v2, v0

    double-to-int p0, v2

    :cond_3
    return p0
.end method

.method public static a(Landroid/content/Context;F)I
    .locals 1

    .line 31
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {v0, p1, p0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    float-to-int p0, p0

    return p0
.end method

.method public static a(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 3

    const/4 v0, 0x1

    if-eqz p1, :cond_3

    if-nez p2, :cond_0

    goto :goto_1

    .line 215
    :cond_0
    iget v1, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 216
    iget p0, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-gt v1, p2, :cond_1

    if-le p0, p1, :cond_2

    .line 221
    :cond_1
    div-int/lit8 v1, v1, 0x2

    .line 222
    div-int/lit8 p0, p0, 0x2

    .line 226
    :goto_0
    div-int v2, v1, v0

    if-lt v2, p2, :cond_2

    div-int v2, p0, v0

    if-lt v2, p1, :cond_2

    mul-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_2
    return v0

    :cond_3
    :goto_1
    return v0
.end method

.method public static a(Landroid/content/Context;IIIFF)Landroid/graphics/Bitmap;
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 94
    :cond_0
    invoke-static {p0, p1, p2, p3}, Lcn/bingoogolapple/bgabanner/b;->a(Landroid/content/Context;III)Lcn/bingoogolapple/bgabanner/b$a;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 95
    iget-object v1, v0, Lcn/bingoogolapple/bgabanner/b$a;->first:Ljava/lang/Object;

    if-eqz v1, :cond_1

    goto :goto_0

    .line 98
    :cond_1
    div-int/lit8 p2, p2, 0x2

    .line 99
    div-int/lit8 p3, p3, 0x2

    if-eqz v0, :cond_2

    .line 100
    iget-object v1, v0, Lcn/bingoogolapple/bgabanner/b$a;->second:Ljava/lang/Object;

    instance-of v1, v1, Ljava/lang/OutOfMemoryError;

    if-eqz v1, :cond_2

    int-to-float v1, p2

    cmpl-float v1, v1, p4

    if-lez v1, :cond_2

    int-to-float v1, p3

    cmpl-float v1, v1, p5

    if-gtz v1, :cond_0

    :cond_2
    :goto_0
    if-nez v0, :cond_3

    const/4 p0, 0x0

    return-object p0

    .line 105
    :cond_3
    iget-object p0, v0, Lcn/bingoogolapple/bgabanner/b$a;->first:Ljava/lang/Object;

    check-cast p0, Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public static a(Landroid/content/Context;ILcn/bingoogolapple/bgabanner/c;Landroid/widget/ImageView$ScaleType;)Landroid/widget/ImageView;
    .locals 7
    .param p1    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .line 39
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 40
    invoke-virtual {p2}, Lcn/bingoogolapple/bgabanner/c;->a()I

    move-result v3

    invoke-virtual {p2}, Lcn/bingoogolapple/bgabanner/c;->b()I

    move-result v4

    invoke-virtual {p2}, Lcn/bingoogolapple/bgabanner/c;->c()F

    move-result v5

    invoke-virtual {p2}, Lcn/bingoogolapple/bgabanner/c;->d()F

    move-result v6

    move-object v1, p0

    move v2, p1

    invoke-static/range {v1 .. v6}, Lcn/bingoogolapple/bgabanner/b;->a(Landroid/content/Context;IIIFF)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    const/4 p0, 0x1

    .line 41
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 42
    invoke-virtual {v0, p3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    return-object v0
.end method

.method public static a(Landroid/content/Context;III)Lcn/bingoogolapple/bgabanner/b$a;
    .locals 8
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "III)",
            "Lcn/bingoogolapple/bgabanner/b$a<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation

    .line 115
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 116
    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    const/4 v2, 0x0

    if-nez p2, :cond_0

    if-nez p3, :cond_0

    .line 121
    :try_start_0
    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 122
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 123
    :try_start_1
    new-instance p1, Lcn/bingoogolapple/bgabanner/b$a;

    invoke-static {p0, v2, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-direct {p1, p2, v2}, Lcn/bingoogolapple/bgabanner/b$a;-><init>(Landroid/graphics/Bitmap;Ljava/lang/Throwable;)V

    .line 124
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    goto :goto_0

    :catch_0
    move-exception p1

    goto/16 :goto_2

    :catch_1
    move-exception p1

    goto/16 :goto_3

    :cond_0
    const/4 v3, 0x1

    .line 128
    :try_start_2
    iput-boolean v3, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 129
    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 130
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v4
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 131
    :try_start_3
    invoke-static {v4, v2, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 132
    invoke-virtual {v4}, Ljava/io/InputStream;->reset()V

    .line 133
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 135
    iget v5, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 136
    iget v6, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 139
    invoke-static {p2, p3, v5, v6}, Lcn/bingoogolapple/bgabanner/b;->a(IIII)I

    move-result v7

    .line 140
    invoke-static {p3, p2, v6, v5}, Lcn/bingoogolapple/bgabanner/b;->a(IIII)I

    move-result p2

    const/4 p3, 0x0

    .line 143
    iput-boolean p3, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 148
    invoke-static {v0, v7, p2}, Lcn/bingoogolapple/bgabanner/b;->a(Landroid/graphics/BitmapFactory$Options;II)I

    move-result p3

    iput p3, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 149
    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 150
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p0
    :try_end_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 151
    :try_start_4
    invoke-static {p0, v2, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 152
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    if-eqz p1, :cond_2

    .line 154
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p3

    if-gt p3, v7, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p3

    if-le p3, p2, :cond_2

    .line 155
    :cond_1
    new-instance p3, Lcn/bingoogolapple/bgabanner/b$a;

    invoke-static {p1, v7, p2, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-direct {p3, p2, v2}, Lcn/bingoogolapple/bgabanner/b$a;-><init>(Landroid/graphics/Bitmap;Ljava/lang/Throwable;)V

    .line 156
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    move-object p1, p3

    goto :goto_0

    .line 158
    :cond_2
    new-instance p2, Lcn/bingoogolapple/bgabanner/b$a;

    invoke-direct {p2, p1, v2}, Lcn/bingoogolapple/bgabanner/b$a;-><init>(Landroid/graphics/Bitmap;Ljava/lang/Throwable;)V
    :try_end_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-object p1, p2

    :goto_0
    if-eqz p0, :cond_3

    .line 170
    :try_start_5
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_1

    :catch_2
    move-exception p0

    .line 172
    invoke-static {p0}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    move-object p2, p1

    goto :goto_4

    :catchall_0
    move-exception p1

    move-object p0, v4

    goto :goto_5

    :catch_3
    move-exception p1

    move-object p0, v4

    goto :goto_2

    :catch_4
    move-exception p1

    move-object p0, v4

    goto :goto_3

    :catchall_1
    move-exception p1

    move-object p0, v2

    goto :goto_5

    :catch_5
    move-exception p1

    move-object p0, v2

    .line 165
    :goto_2
    :try_start_6
    invoke-static {p1}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    .line 166
    new-instance p2, Lcn/bingoogolapple/bgabanner/b$a;

    invoke-direct {p2, v2, p1}, Lcn/bingoogolapple/bgabanner/b$a;-><init>(Landroid/graphics/Bitmap;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    if-eqz p0, :cond_4

    .line 170
    :try_start_7
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    goto :goto_4

    :catch_6
    move-exception p0

    .line 172
    invoke-static {p0}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    goto :goto_4

    :catch_7
    move-exception p1

    move-object p0, v2

    .line 162
    :goto_3
    :try_start_8
    invoke-static {p1}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    .line 163
    new-instance p2, Lcn/bingoogolapple/bgabanner/b$a;

    invoke-direct {p2, v2, p1}, Lcn/bingoogolapple/bgabanner/b$a;-><init>(Landroid/graphics/Bitmap;Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    if-eqz p0, :cond_4

    .line 170
    :try_start_9
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    :cond_4
    :goto_4
    return-object p2

    :catchall_2
    move-exception p1

    :goto_5
    if-eqz p0, :cond_5

    :try_start_a
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_8

    goto :goto_6

    :catch_8
    move-exception p0

    .line 172
    invoke-static {p0}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    .line 173
    :cond_5
    :goto_6
    throw p1
.end method

.method public static a(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    if-nez p0, :cond_0

    return-void

    .line 51
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const/4 v1, 0x0

    .line 52
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const/high16 v1, 0x3f800000    # 1.0f

    .line 53
    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 54
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float v2, v2, v3

    invoke-static {v0, v2}, Landroid/support/v4/view/ViewCompat;->setPivotX(Landroid/view/View;F)V

    .line 55
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v3

    invoke-static {v0, v2}, Landroid/support/v4/view/ViewCompat;->setPivotY(Landroid/view/View;F)V

    const/4 v2, 0x0

    .line 56
    invoke-static {v0, v2}, Landroid/support/v4/view/ViewCompat;->setTranslationX(Landroid/view/View;F)V

    .line 57
    invoke-static {v0, v2}, Landroid/support/v4/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 58
    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->setScaleX(Landroid/view/View;F)V

    .line 59
    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->setScaleY(Landroid/view/View;F)V

    .line 60
    invoke-static {v0, v2}, Landroid/support/v4/view/ViewCompat;->setRotationX(Landroid/view/View;F)V

    .line 61
    invoke-static {v0, v2}, Landroid/support/v4/view/ViewCompat;->setRotationY(Landroid/view/View;F)V

    .line 62
    invoke-static {v0, v2}, Landroid/support/v4/view/ViewCompat;->setRotation(Landroid/view/View;F)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static a(ILjava/util/Collection;)Z
    .locals 2

    const/4 v0, 0x0

    .line 67
    new-array v1, v0, [Ljava/util/Collection;

    invoke-static {p1, v1}, Lcn/bingoogolapple/bgabanner/b;->b(Ljava/util/Collection;[Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result p1

    if-ge p0, p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static varargs a(Ljava/util/Collection;[Ljava/util/Collection;)Z
    .locals 4

    const/4 v0, 0x1

    if-eqz p0, :cond_4

    .line 71
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_2

    .line 74
    :cond_0
    array-length p0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p0, :cond_3

    aget-object v3, p1, v2

    if-eqz v3, :cond_2

    .line 75
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v0

    :cond_3
    return v1

    :cond_4
    :goto_2
    return v0
.end method

.method public static b(Landroid/content/Context;F)I
    .locals 1

    .line 35
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    const/4 v0, 0x2

    invoke-static {v0, p1, p0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    float-to-int p0, p0

    return p0
.end method

.method public static varargs b(Ljava/util/Collection;[Ljava/util/Collection;)Z
    .locals 0

    .line 83
    invoke-static {p0, p1}, Lcn/bingoogolapple/bgabanner/b;->a(Ljava/util/Collection;[Ljava/util/Collection;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method
