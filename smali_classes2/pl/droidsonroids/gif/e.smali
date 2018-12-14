.class final Lpl/droidsonroids/gif/e;
.super Ljava/lang/Object;
.source "GifViewUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lpl/droidsonroids/gif/e$a;,
        Lpl/droidsonroids/gif/e$b;
    }
.end annotation


# static fields
.field static final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x3

    .line 23
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "raw"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "drawable"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "mipmap"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lpl/droidsonroids/gif/e;->a:Ljava/util/List;

    return-void
.end method

.method static a(Landroid/content/res/Resources;I)F
    .locals 2
    .param p0    # Landroid/content/res/Resources;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation

        .annotation build Landroid/support/annotation/RawRes;
        .end annotation
    .end param

    .line 81
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    const/4 v1, 0x1

    .line 82
    invoke-virtual {p0, p1, v0, v1}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 83
    iget p1, v0, Landroid/util/TypedValue;->density:I

    if-nez p1, :cond_0

    const/16 p1, 0xa0

    goto :goto_0

    :cond_0
    const v0, 0xffff

    if-eq p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 92
    :goto_0
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->densityDpi:I

    if-lez p1, :cond_2

    if-lez p0, :cond_2

    int-to-float p0, p0

    int-to-float p1, p1

    div-float/2addr p0, p1

    return p0

    :cond_2
    const/high16 p0, 0x3f800000    # 1.0f

    return p0
.end method

.method static a(Landroid/widget/ImageView;Landroid/util/AttributeSet;II)Lpl/droidsonroids/gif/e$a;
    .locals 1

    if-eqz p1, :cond_1

    .line 29
    invoke-virtual {p0}, Landroid/widget/ImageView;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_1

    .line 30
    new-instance v0, Lpl/droidsonroids/gif/e$a;

    invoke-direct {v0, p0, p1, p2, p3}, Lpl/droidsonroids/gif/e$a;-><init>(Landroid/widget/ImageView;Landroid/util/AttributeSet;II)V

    .line 31
    iget p1, v0, Lpl/droidsonroids/gif/e$a;->d:I

    if-ltz p1, :cond_0

    .line 33
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-static {p1, p2}, Lpl/droidsonroids/gif/e;->a(ILandroid/graphics/drawable/Drawable;)V

    .line 34
    invoke-virtual {p0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-static {p1, p0}, Lpl/droidsonroids/gif/e;->a(ILandroid/graphics/drawable/Drawable;)V

    :cond_0
    return-object v0

    .line 38
    :cond_1
    new-instance p0, Lpl/droidsonroids/gif/e$a;

    invoke-direct {p0}, Lpl/droidsonroids/gif/e$a;-><init>()V

    return-object p0
.end method

.method static a(ILandroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 42
    instance-of v0, p1, Lpl/droidsonroids/gif/c;

    if-eqz v0, :cond_0

    .line 43
    check-cast p1, Lpl/droidsonroids/gif/c;

    invoke-virtual {p1, p0}, Lpl/droidsonroids/gif/c;->a(I)V

    :cond_0
    return-void
.end method

.method static a(Landroid/widget/ImageView;Landroid/net/Uri;)Z
    .locals 2

    if-eqz p1, :cond_0

    .line 71
    :try_start_0
    new-instance v0, Lpl/droidsonroids/gif/c;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lpl/droidsonroids/gif/c;-><init>(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static a(Landroid/widget/ImageView;ZI)Z
    .locals 2

    .line 49
    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 52
    :try_start_0
    new-instance v1, Lpl/droidsonroids/gif/c;

    invoke-direct {v1, v0, p2}, Lpl/droidsonroids/gif/c;-><init>(Landroid/content/res/Resources;I)V

    if-eqz p1, :cond_0

    .line 54
    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 55
    :cond_0
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x10

    if-lt p1, p2, :cond_1

    .line 56
    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 58
    :cond_1
    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 p0, 0x1

    return p0

    :catch_0
    :cond_2
    const/4 p0, 0x0

    return p0
.end method
