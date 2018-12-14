.class public Lcom/mh/movie/core/mvp/ui/utils/UIUtils;
.super Ljava/lang/Object;
.source "UIUtils.java"


# static fields
.field public static final TYPE_FLYME:I = 0x1

.field public static final TYPE_M:I = 0x3

.field public static final TYPE_MIUI:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static MoveToPosition(Landroid/support/v7/widget/LinearLayoutManager;I)V
    .locals 1

    const/4 v0, 0x0

    .line 263
    invoke-virtual {p0, p1, v0}, Landroid/support/v7/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    const/4 p1, 0x1

    .line 264
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->setStackFromEnd(Z)V

    return-void
.end method

.method public static addForeColorSpan(Landroid/content/Context;Landroid/widget/TextView;Ljava/lang/String;III)V
    .locals 1

    .line 256
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 257
    new-instance p2, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p5}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    invoke-direct {p2, p0}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 p0, 0x21

    .line 258
    invoke-virtual {v0, p2, p3, p4, p0}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 259
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static drawTextLeftImg(Landroid/content/Context;Landroid/widget/TextView;I)V
    .locals 2

    .line 71
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 72
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result p2

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v1, p2, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    const/4 p2, 0x0

    .line 73
    invoke-virtual {p1, p0, p2, p2, p2}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public static drawTextRightImg(Landroid/content/Context;Landroid/widget/TextView;I)V
    .locals 2

    .line 77
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 78
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result p2

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v1, p2, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    const/4 p2, 0x0

    .line 79
    invoke-virtual {p1, p2, p2, p0, p2}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 5

    .line 416
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 417
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 418
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    goto :goto_0

    :cond_0
    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 419
    :goto_0
    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 420
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v4, 0x0

    .line 421
    invoke-virtual {p1, v4, v4, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 422
    invoke-virtual {p1, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-object v2
.end method

.method public static getNavigationBarHeight(Landroid/content/Context;)I
    .locals 3

    .line 362
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const-string v0, "navigation_bar_height"

    const-string v1, "dimen"

    const-string v2, "android"

    .line 363
    invoke-virtual {p0, v0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 366
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method public static getVirtualBarHeigh(Landroid/content/Context;)I
    .locals 8

    const-string v0, "window"

    .line 375
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    .line 376
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 377
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    const/4 v2, 0x0

    :try_start_0
    const-string v3, "android.view.Display"

    .line 380
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-string v4, "getRealMetrics"

    const/4 v5, 0x1

    .line 382
    new-array v6, v5, [Ljava/lang/Class;

    const-class v7, Landroid/util/DisplayMetrics;

    aput-object v7, v6, v2

    invoke-virtual {v3, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 383
    new-array v4, v5, [Ljava/lang/Object;

    aput-object v1, v4, v2

    invoke-virtual {v3, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 384
    iget v0, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Display;->getHeight()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    sub-int v2, v0, p0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 386
    invoke-static {p0}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    :goto_0
    return v2
.end method

.method public static handleErrorLayout(Lcom/mh/movie/core/mvp/ui/widget/MultiStateView;ILjava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 4

    const/4 v0, 0x1

    .line 135
    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/widget/MultiStateView;->setViewState(I)V

    .line 136
    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/widget/MultiStateView;->a(I)Landroid/view/View;

    move-result-object v1

    sget v2, Lcom/mh/movie/core/R$id;->tv_error:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 137
    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/widget/MultiStateView;->a(I)Landroid/view/View;

    move-result-object v2

    sget v3, Lcom/mh/movie/core/R$id;->iv_error:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 138
    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/widget/MultiStateView;->a(I)Landroid/view/View;

    move-result-object p0

    sget v0, Lcom/mh/movie/core/R$id;->btn_refresh:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_0

    .line 141
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    sget p1, Lcom/mh/movie/core/R$mipmap;->illustration_missioncenter_wanglu:I

    invoke-virtual {v2, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 143
    invoke-virtual {p0, p3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 p1, 0x0

    .line 144
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/16 p3, 0x3ea

    const/16 v0, 0x8

    if-ne p1, p3, :cond_1

    .line 146
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 147
    sget p1, Lcom/mh/movie/core/R$mipmap;->error:I

    invoke-virtual {v2, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 148
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 150
    :cond_1
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 151
    sget p1, Lcom/mh/movie/core/R$mipmap;->error:I

    invoke-virtual {v2, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 152
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public static handleErrorLayout(Lcom/mh/movie/core/mvp/ui/widget/MultiStateView;Lcom/mh/movie/core/mvp/ui/utils/ExceptionHandle$ResponseThrowable;Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 163
    iget v0, p1, Lcom/mh/movie/core/mvp/ui/utils/ExceptionHandle$ResponseThrowable;->code:I

    iget-object p1, p1, Lcom/mh/movie/core/mvp/ui/utils/ExceptionHandle$ResponseThrowable;->message:Ljava/lang/String;

    invoke-static {p0, v0, p1, p2}, Lcom/mh/movie/core/mvp/ui/utils/UIUtils;->handleErrorLayout(Lcom/mh/movie/core/mvp/ui/widget/MultiStateView;ILjava/lang/String;Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static initMyTopbar(Landroid/content/Context;Landroid/view/View;I)V
    .locals 3

    .line 175
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 176
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 178
    invoke-static {p0}, Lcom/jess/arms/c/e;->c(Landroid/content/Context;)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x42200000    # 40.0f

    invoke-static {p0, v2}, Lcom/jess/arms/c/e;->a(Landroid/content/Context;F)F

    move-result v2

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 179
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 182
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method

.method public static initTopbar(Landroid/content/Context;Landroid/view/View;Z)V
    .locals 3

    .line 198
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 200
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 201
    invoke-static {p0}, Lcom/jess/arms/c/e;->c(Landroid/content/Context;)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x42200000    # 40.0f

    invoke-static {p0, v2}, Lcom/jess/arms/c/e;->a(Landroid/content/Context;F)F

    move-result v2

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 202
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    if-eqz p2, :cond_1

    .line 206
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p2, Lcom/mh/movie/core/R$color;->transparent:I

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    .line 208
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p2, Lcom/mh/movie/core/R$color;->themeColor:I

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setBackgroundColor(I)V

    :goto_0
    return-void
.end method

.method public static initTopbar(Landroid/content/Context;Landroid/view/View;ZI)V
    .locals 3

    .line 225
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 227
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 228
    invoke-static {p0}, Lcom/jess/arms/c/e;->c(Landroid/content/Context;)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x42200000    # 40.0f

    invoke-static {p0, v2}, Lcom/jess/arms/c/e;->a(Landroid/content/Context;F)F

    move-result v2

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 229
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    if-eqz p2, :cond_1

    .line 233
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p2, Lcom/mh/movie/core/R$color;->transparent:I

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    .line 235
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setBackgroundColor(I)V

    :goto_0
    return-void
.end method

.method public static isTV(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "uimode"

    .line 393
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/UiModeManager;

    .line 394
    invoke-virtual {p0}, Landroid/app/UiModeManager;->getCurrentModeType()I

    move-result p0

    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static openWeb(Ljava/lang/String;IZI)V
    .locals 1

    const-string v0, "t="

    .line 268
    invoke-static {p0, p1, p2, p3, v0}, Lcom/mh/movie/core/mvp/ui/utils/UIUtils;->openWeb(Ljava/lang/String;IZILjava/lang/String;)V

    return-void
.end method

.method public static openWeb(Ljava/lang/String;IZILjava/lang/String;)V
    .locals 2

    .line 272
    invoke-static {p0}, Lcom/mh/movie/core/mvp/ui/utils/UrlUtils;->isHttpUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, -0x1

    if-eq p3, v0, :cond_0

    .line 274
    new-instance v0, Lcom/mh/movie/core/mvp/ui/utils/b/b;

    invoke-direct {v0}, Lcom/mh/movie/core/mvp/ui/utils/b/b;-><init>()V

    invoke-virtual {v0, p1, p3}, Lcom/mh/movie/core/mvp/ui/utils/b/b;->a(II)V

    :cond_0
    const-string p1, "a=0"

    .line 276
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "a="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/mh/movie/core/mvp/ui/utils/RHelp;->getPackageId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 277
    sget-object p1, Lcom/mh/movie/core/mvp/ui/b;->J:Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;->getInvitationCode()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string p1, "t=0"

    .line 278
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p4, Lcom/mh/movie/core/mvp/ui/b;->J:Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;

    invoke-virtual {p4}, Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;->getInvitationCode()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p0, p1, p4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    :cond_1
    const-string p1, ""

    .line 290
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    const-string p1, "^\\S+\\.apk$"

    .line 292
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p1

    .line 293
    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 295
    invoke-static {}, Lcom/jess/arms/integration/AppManager;->getAppManager()Lcom/jess/arms/integration/AppManager;

    move-result-object p4

    invoke-virtual {p4}, Lcom/jess/arms/integration/AppManager;->getTopActivity()Landroid/app/Activity;

    move-result-object p4

    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-static {p4, v0}, Lcom/mh/movie/core/mvp/ui/utils/PermissionUtils;->hasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p4

    .line 296
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result p1

    if-eqz p1, :cond_3

    if-eqz p4, :cond_3

    const/4 p1, 0x1

    if-ne p3, p1, :cond_2

    .line 299
    :try_start_0
    new-instance p1, Lcom/mh/movie/core/mvp/ui/widget/dialog/DownApkDialog;

    invoke-static {}, Lcom/jess/arms/integration/AppManager;->getAppManager()Lcom/jess/arms/integration/AppManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/jess/arms/integration/AppManager;->getTopActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/mh/movie/core/mvp/ui/widget/dialog/DownApkDialog;-><init>(Landroid/content/Context;)V

    .line 301
    new-instance p2, Lcom/mh/movie/core/mvp/ui/utils/UIUtils$1;

    invoke-direct {p2, p0, p1}, Lcom/mh/movie/core/mvp/ui/utils/UIUtils$1;-><init>(Ljava/lang/String;Lcom/mh/movie/core/mvp/ui/widget/dialog/DownApkDialog;)V

    invoke-virtual {p1, p2}, Lcom/mh/movie/core/mvp/ui/widget/dialog/DownApkDialog;->a(Lcom/mh/movie/core/mvp/ui/widget/dialog/DownApkDialog$a;)V

    .line 313
    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/ui/widget/dialog/DownApkDialog;->show()V

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    .line 315
    :cond_2
    invoke-static {}, Lcom/mh/movie/core/mvp/ui/service/a;->a()Lcom/mh/movie/core/mvp/ui/service/a;

    move-result-object p1

    const-string p2, "apk\u4e0b\u8f7d"

    const-string p3, "apk\u4e0b\u8f7d"

    invoke-virtual {p1, p0, p2, p3}, Lcom/mh/movie/core/mvp/ui/service/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 318
    :goto_0
    invoke-static {p1}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    .line 319
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    .line 320
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string p2, "android.intent.action.VIEW"

    .line 321
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 322
    invoke-virtual {p1, p0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 323
    invoke-static {p1}, Lcom/jess/arms/c/a;->a(Landroid/content/Intent;)V

    :goto_1
    return-void

    :cond_3
    if-eqz p2, :cond_4

    .line 330
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    .line 331
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string p2, "android.intent.action.VIEW"

    .line 332
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 333
    invoke-virtual {p1, p0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 334
    invoke-static {p1}, Lcom/jess/arms/c/a;->a(Landroid/content/Intent;)V

    goto :goto_2

    .line 337
    :cond_4
    invoke-static {}, Lcom/jess/arms/integration/AppManager;->getAppManager()Lcom/jess/arms/integration/AppManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jess/arms/integration/AppManager;->getTopActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1, p0}, Lcom/mh/movie/core/mvp/ui/utils/WebViewUtils;->startWebViewActivity(Landroid/content/Context;Ljava/lang/String;)V

    :goto_2
    return-void

    :cond_5
    return-void
.end method

.method public static ptrFrameAddHeader(Landroid/content/Context;Lin/srain/cube/views/ptr/PtrClassicFrameLayout;)V
    .locals 4

    .line 90
    new-instance v0, Lcom/mh/movie/core/mvp/ui/widget/recylerview/MHPtrHeader;

    invoke-direct {v0, p0}, Lcom/mh/movie/core/mvp/ui/widget/recylerview/MHPtrHeader;-><init>(Landroid/content/Context;)V

    .line 91
    new-instance v1, Lin/srain/cube/views/ptr/PtrFrameLayout$a;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Lin/srain/cube/views/ptr/PtrFrameLayout$a;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/ui/widget/recylerview/MHPtrHeader;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 v1, 0x41700000    # 15.0f

    .line 92
    invoke-static {p0, v1}, Lcom/jess/arms/c/e;->a(Landroid/content/Context;F)F

    move-result v1

    float-to-int v1, v1

    const/high16 v2, 0x41200000    # 10.0f

    invoke-static {p0, v2}, Lcom/jess/arms/c/e;->a(Landroid/content/Context;F)F

    move-result p0

    float-to-int p0, p0

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1, v2, p0}, Lcom/mh/movie/core/mvp/ui/widget/recylerview/MHPtrHeader;->setPadding(IIII)V

    const p0, 0x402ccccd    # 2.7f

    .line 94
    invoke-virtual {p1, p0}, Lin/srain/cube/views/ptr/PtrClassicFrameLayout;->setResistance(F)V

    const/high16 p0, 0x3f800000    # 1.0f

    .line 95
    invoke-virtual {p1, p0}, Lin/srain/cube/views/ptr/PtrClassicFrameLayout;->setRatioOfHeaderHeightToRefresh(F)V

    const/16 p0, 0x96

    .line 96
    invoke-virtual {p1, p0}, Lin/srain/cube/views/ptr/PtrClassicFrameLayout;->setDurationToClose(I)V

    const/16 p0, 0x1f4

    .line 97
    invoke-virtual {p1, p0}, Lin/srain/cube/views/ptr/PtrClassicFrameLayout;->setDurationToCloseHeader(I)V

    .line 98
    invoke-virtual {p1, v2}, Lin/srain/cube/views/ptr/PtrClassicFrameLayout;->setPullToRefresh(Z)V

    const/4 p0, 0x1

    .line 99
    invoke-virtual {p1, p0}, Lin/srain/cube/views/ptr/PtrClassicFrameLayout;->setKeepHeaderWhenRefresh(Z)V

    .line 100
    invoke-virtual {p1, v0}, Lin/srain/cube/views/ptr/PtrClassicFrameLayout;->setHeaderView(Landroid/view/View;)V

    .line 101
    invoke-virtual {p1, v0}, Lin/srain/cube/views/ptr/PtrClassicFrameLayout;->a(Lin/srain/cube/views/ptr/c;)V

    .line 102
    invoke-virtual {p1, p0}, Lin/srain/cube/views/ptr/PtrClassicFrameLayout;->a(Z)V

    return-void
.end method

.method public static recycleViewLoadForMore(Landroid/content/Context;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$Adapter;Landroid/view/View;)V
    .locals 0

    .line 117
    new-instance p0, Lcom/mh/movie/core/mvp/ui/widget/recylerview/b;

    invoke-direct {p0, p2}, Lcom/mh/movie/core/mvp/ui/widget/recylerview/b;-><init>(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 119
    invoke-virtual {p1, p0}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    if-eqz p3, :cond_0

    const/16 p0, 0x8

    .line 121
    invoke-virtual {p3, p0}, Landroid/view/View;->setVisibility(I)V

    .line 122
    :cond_0
    invoke-static {p1, p3}, Lcom/mh/movie/core/mvp/ui/widget/recylerview/c;->a(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;)V

    return-void
.end method

.method public static scanForActivity(Landroid/content/Context;)Landroid/app/Activity;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 352
    :cond_0
    instance-of v1, p0, Landroid/app/Activity;

    if-eqz v1, :cond_1

    .line 353
    check-cast p0, Landroid/app/Activity;

    return-object p0

    .line 354
    :cond_1
    instance-of v1, p0, Landroid/content/ContextWrapper;

    if-eqz v1, :cond_2

    .line 355
    check-cast p0, Landroid/content/ContextWrapper;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/mh/movie/core/mvp/ui/utils/UIUtils;->scanForActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p0

    return-object p0

    :cond_2
    return-object v0
.end method

.method public static setColorForTopBar(Landroid/app/Activity;I)V
    .locals 2

    .line 242
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 243
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    .line 244
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x500

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    const/high16 v0, -0x80000000

    .line 246
    invoke-virtual {p0, v0}, Landroid/view/Window;->addFlags(I)V

    .line 247
    invoke-virtual {p0, p1}, Landroid/view/Window;->setStatusBarColor(I)V

    goto :goto_0

    .line 248
    :cond_0
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x13

    if-lt p1, v0, :cond_1

    .line 249
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/high16 p1, 0x4000000

    invoke-virtual {p0, p1}, Landroid/view/Window;->addFlags(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static setCommonUI(Landroid/app/Activity;)V
    .locals 2

    .line 511
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 512
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    const/16 v0, 0x2400

    invoke-virtual {p0, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_0
    return-void
.end method

.method public static setFlymeUI(Landroid/app/Activity;Z)V
    .locals 4

    .line 523
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    .line 524
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 525
    const-class v1, Landroid/view/WindowManager$LayoutParams;

    const-string v2, "MEIZU_FLAG_DARK_STATUS_BAR_ICON"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 526
    const-class v2, Landroid/view/WindowManager$LayoutParams;

    const-string v3, "meizuFlags"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    const/4 v3, 0x1

    .line 527
    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 528
    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const/4 v3, 0x0

    .line 529
    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v1

    .line 530
    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3

    if-eqz p1, :cond_0

    or-int p1, v3, v1

    goto :goto_0

    :cond_0
    xor-int/lit8 p1, v1, -0x1

    and-int/2addr p1, v3

    .line 536
    :goto_0
    invoke-virtual {v2, v0, p1}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V

    .line 537
    invoke-virtual {p0, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 539
    invoke-static {p0}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method public static setImmersiveStatusBar(Landroid/app/Activity;ZI)V
    .locals 0

    .line 453
    invoke-static {p0, p2}, Lcom/mh/movie/core/mvp/ui/utils/UIUtils;->setTranslucentStatus(Landroid/app/Activity;I)V

    if-eqz p1, :cond_2

    .line 456
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x17

    if-lt p1, p2, :cond_0

    const/4 p1, 0x3

    .line 457
    invoke-static {p0, p1}, Lcom/mh/movie/core/mvp/ui/utils/UIUtils;->setStatusBarFontIconDark(Landroid/app/Activity;I)V

    goto :goto_0

    .line 458
    :cond_0
    invoke-static {}, Lcom/mh/movie/core/mvp/ui/utils/OSUtils;->isMiui()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 459
    invoke-static {p0, p1}, Lcom/mh/movie/core/mvp/ui/utils/UIUtils;->setStatusBarFontIconDark(Landroid/app/Activity;I)V

    goto :goto_0

    .line 460
    :cond_1
    invoke-static {}, Lcom/mh/movie/core/mvp/ui/utils/OSUtils;->isFlyme()Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    .line 461
    invoke-static {p0, p1}, Lcom/mh/movie/core/mvp/ui/utils/UIUtils;->setStatusBarFontIconDark(Landroid/app/Activity;I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static setMiuiUI(Landroid/app/Activity;Z)V
    .locals 8

    .line 545
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 546
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    const-string v1, "android.view.MiuiWindowManager$LayoutParams"

    .line 547
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "EXTRA_FLAG_STATUS_BAR_DARK_MODE"

    .line 548
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 549
    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v1

    const-string v2, "setExtraFlags"

    const/4 v3, 0x2

    .line 550
    new-array v4, v3, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x1

    aput-object v5, v4, v7

    invoke-virtual {p0, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    if-eqz p1, :cond_0

    .line 552
    new-array p1, v3, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, p1, v6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p1, v7

    invoke-virtual {p0, v0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 554
    :cond_0
    new-array p1, v3, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, p1, v6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p1, v7

    invoke-virtual {p0, v0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 557
    invoke-static {p0}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public static setStatusBarFontIconDark(Landroid/app/Activity;I)V
    .locals 1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 502
    :pswitch_0
    invoke-static {p0, v0}, Lcom/mh/movie/core/mvp/ui/utils/UIUtils;->setFlymeUI(Landroid/app/Activity;Z)V

    goto :goto_0

    .line 496
    :pswitch_1
    invoke-static {p0, v0}, Lcom/mh/movie/core/mvp/ui/utils/UIUtils;->setMiuiUI(Landroid/app/Activity;Z)V

    goto :goto_0

    .line 499
    :cond_0
    invoke-static {p0}, Lcom/mh/movie/core/mvp/ui/utils/UIUtils;->setCommonUI(Landroid/app/Activity;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static setTranslucentStatus(Landroid/app/Activity;I)V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .line 476
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/high16 v1, 0x4000000

    const/16 v2, 0x15

    if-lt v0, v2, :cond_0

    .line 477
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    .line 479
    invoke-virtual {p0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 480
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x500

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    const/high16 v0, -0x80000000

    .line 483
    invoke-virtual {p0, v0}, Landroid/view/Window;->addFlags(I)V

    .line 484
    invoke-virtual {p0, p1}, Landroid/view/Window;->setStatusBarColor(I)V

    goto :goto_0

    .line 485
    :cond_0
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x13

    if-lt p1, v0, :cond_1

    .line 486
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/view/Window;->addFlags(I)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public createDrawableSelector(Landroid/content/Context;)Landroid/graphics/drawable/StateListDrawable;
    .locals 5

    .line 427
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/mh/movie/core/R$drawable;->pic_progress_pre:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 428
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/mh/movie/core/R$drawable;->pic_progress_nor:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/high16 v2, 0x43160000    # 150.0f

    .line 430
    invoke-static {p1, v2}, Lcom/jess/arms/c/a;->a(Landroid/content/Context;F)I

    move-result v3

    invoke-static {p1, v2}, Lcom/jess/arms/c/a;->a(Landroid/content/Context;F)I

    move-result v4

    invoke-virtual {p0, v0, v3, v4}, Lcom/mh/movie/core/mvp/ui/utils/UIUtils;->zoomDrawable(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 431
    invoke-static {p1, v2}, Lcom/jess/arms/c/a;->a(Landroid/content/Context;F)I

    move-result v3

    invoke-static {p1, v2}, Lcom/jess/arms/c/a;->a(Landroid/content/Context;F)I

    move-result p1

    invoke-virtual {p0, v1, v3, p1}, Lcom/mh/movie/core/mvp/ui/utils/UIUtils;->zoomDrawable(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 434
    new-instance v1, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    const/4 v2, 0x1

    .line 441
    new-array v2, v2, [I

    const/4 v3, 0x0

    const v4, 0x10100a7

    aput v4, v2, v3

    invoke-virtual {v1, v2, v0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 443
    new-array v0, v3, [I

    invoke-virtual {v1, v0, p1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    return-object v1
.end method

.method public zoomDrawable(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/drawable/Drawable;
    .locals 7

    .line 404
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    .line 405
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    .line 406
    invoke-direct {p0, p1}, Lcom/mh/movie/core/mvp/ui/utils/UIUtils;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 407
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    int-to-float p1, p2

    int-to-float p2, v3

    div-float/2addr p1, p2

    int-to-float p2, p3

    int-to-float p3, v4

    div-float/2addr p2, p3

    .line 410
    invoke-virtual {v5, p1, p2}, Landroid/graphics/Matrix;->postScale(FF)Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x1

    .line 411
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 412
    new-instance p2, Landroid/graphics/drawable/BitmapDrawable;

    const/4 p3, 0x0

    invoke-direct {p2, p3, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object p2
.end method
