.class public Lcom/mh/movie/core/mvp/ui/utils/CommonTools;
.super Ljava/lang/Object;
.source "CommonTools.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Byte2Gigabyte(J)F
    .locals 2

    long-to-double p0, p0

    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    mul-double p0, p0, v0

    const-wide/high16 v0, 0x41d0000000000000L    # 1.073741824E9

    div-double/2addr p0, v0

    .line 32
    invoke-static {p0, p1}, Ljava/lang/Math;->round(D)J

    move-result-wide p0

    long-to-float p0, p0

    const/high16 p1, 0x42c80000    # 100.0f

    div-float/2addr p0, p1

    return p0
.end method

.method public static Byte2KByte(J)F
    .locals 2

    long-to-double p0, p0

    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    mul-double p0, p0, v0

    const-wide/high16 v0, 0x4090000000000000L    # 1024.0

    div-double/2addr p0, v0

    .line 42
    invoke-static {p0, p1}, Ljava/lang/Math;->round(D)J

    move-result-wide p0

    long-to-float p0, p0

    const/high16 p1, 0x42c80000    # 100.0f

    div-float/2addr p0, p1

    return p0
.end method

.method public static Byte2MByte(J)F
    .locals 2

    long-to-double p0, p0

    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    mul-double p0, p0, v0

    const-wide/high16 v0, 0x4130000000000000L    # 1048576.0

    div-double/2addr p0, v0

    .line 37
    invoke-static {p0, p1}, Ljava/lang/Math;->round(D)J

    move-result-wide p0

    long-to-float p0, p0

    const/high16 p1, 0x42c80000    # 100.0f

    div-float/2addr p0, p1

    return p0
.end method

.method public static autoDownGetM3u8FormatExtraIndex(Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean$FormatExtraBean;I)I
    .locals 1

    :goto_0
    if-ltz p1, :cond_1

    .line 338
    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean$FormatExtraBean;->getFormatExtra(I)Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean$FormatExtraBean$ExtraBean;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    :goto_1
    return p1
.end method

.method public static autoDownGetM3u8FormatIndex(Lcom/mh/movie/core/mvp/model/entity/M3u8FormatBean;I)I
    .locals 1

    :goto_0
    if-ltz p1, :cond_1

    .line 312
    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/model/entity/M3u8FormatBean;->getM3u8Format(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    :goto_1
    return p1
.end method

.method public static autoGetExtraBean(Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean$FormatExtraBean;I)Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean$FormatExtraBean$ExtraBean;
    .locals 1

    :goto_0
    if-ltz p1, :cond_1

    .line 192
    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean$FormatExtraBean;->getFormatExtra(I)Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean$FormatExtraBean$ExtraBean;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return-object v0
.end method

.method public static autoGetFormatId(Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean$FormatExtraBean;I)Ljava/lang/String;
    .locals 2

    const-string v0, ""

    :goto_0
    if-ltz p1, :cond_1

    .line 166
    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean$FormatExtraBean;->getFormatExtra(I)Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean$FormatExtraBean$ExtraBean;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 168
    invoke-static {p1}, Lcom/mh/movie/core/mvp/ui/utils/CommonTools;->getClarityNum(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_0
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-object v0
.end method

.method public static autoGetFormatText(Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean$FormatExtraBean;I)Ljava/lang/String;
    .locals 2

    const-string v0, ""

    :goto_0
    if-ltz p1, :cond_1

    .line 179
    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean$FormatExtraBean;->getFormatExtra(I)Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean$FormatExtraBean$ExtraBean;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 181
    invoke-static {p1}, Lcom/mh/movie/core/mvp/ui/utils/CommonTools;->getClarityText(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_0
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-object v0
.end method

.method public static autoGetM3u8Format(Lcom/mh/movie/core/mvp/model/entity/M3u8FormatBean;I)Ljava/lang/String;
    .locals 2

    const-string v0, ""

    :goto_0
    if-ltz p1, :cond_1

    .line 138
    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/model/entity/M3u8FormatBean;->getM3u8Format(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    move-object v0, v1

    goto :goto_1

    :cond_0
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-object v0
.end method

.method public static autoGetM3u8FormatText(Lcom/mh/movie/core/mvp/model/entity/M3u8FormatBean;I)Ljava/lang/String;
    .locals 2

    const-string v0, ""

    :goto_0
    if-ltz p1, :cond_1

    .line 125
    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/model/entity/M3u8FormatBean;->getM3u8Format(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 127
    invoke-static {p1}, Lcom/mh/movie/core/mvp/ui/utils/CommonTools;->getClarityText(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_0
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-object v0
.end method

.method public static autoUpGetM3u8Format(Lcom/mh/movie/core/mvp/model/entity/M3u8FormatBean;IZ)Ljava/lang/String;
    .locals 2

    const-string v0, ""

    :goto_0
    if-eqz p2, :cond_0

    const/4 v1, 0x4

    goto :goto_1

    :cond_0
    const/4 v1, 0x3

    :goto_1
    if-ge p1, v1, :cond_2

    .line 151
    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/model/entity/M3u8FormatBean;->getM3u8Format(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    move-object v0, v1

    goto :goto_2

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    return-object v0
.end method

.method public static autoUpGetM3u8FormatExtraIndex(Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean$FormatExtraBean;I)I
    .locals 1

    :goto_0
    const/4 v0, 0x3

    if-ge p1, v0, :cond_1

    .line 351
    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean$FormatExtraBean;->getFormatExtra(I)Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean$FormatExtraBean$ExtraBean;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    :goto_1
    return p1
.end method

.method public static autoUpGetM3u8FormatIndex(Lcom/mh/movie/core/mvp/model/entity/M3u8FormatBean;I)I
    .locals 1

    :goto_0
    const/4 v0, 0x3

    if-ge p1, v0, :cond_1

    .line 325
    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/model/entity/M3u8FormatBean;->getM3u8Format(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    :goto_1
    return p1
.end method

.method public static checkSendStr(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .line 258
    invoke-static {p0}, Lcom/mh/movie/core/mvp/ui/utils/CommonTools;->replaceInvalidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "[0-9]*"

    .line 259
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 260
    invoke-static {p0}, Lcom/mh/movie/core/mvp/ui/utils/CommonTools;->strLength(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x6

    if-gt v1, v3, :cond_0

    const-string p0, "\u591a\u53d1\u70b9\u5427"

    .line 261
    invoke-static {p1, p0}, Lcom/mh/movie/core/mvp/ui/utils/T;->showShort(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-object v2

    .line 264
    :cond_0
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "\u600e\u4e48\u8001\u662f\u8ddf\u6570\u5b57\u8fc7\u4e0d\u53bb\u5462,\u53d1\u70b9\u522b\u7684\u5427"

    .line 265
    invoke-static {p1, p0}, Lcom/mh/movie/core/mvp/ui/utils/T;->showShort(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-object v2

    .line 269
    :cond_1
    invoke-static {p0}, Lcom/mh/movie/core/mvp/ui/utils/CommonTools;->equalStr(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p0, "\u592a\u8c03\u76ae\u4e86\uff0c\u53d1\u70b9\u6709\u7528\u7684\u5185\u5bb9\u54df"

    .line 270
    invoke-static {p1, p0}, Lcom/mh/movie/core/mvp/ui/utils/T;->showShort(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-object v2

    :cond_2
    return-object p0
.end method

.method public static checkStr(Ljava/lang/String;Z)Z
    .locals 3

    const-string v0, ""

    .line 238
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-string v0, " "

    const-string v2, ""

    .line 241
    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const-string v0, "[\u4e00-\u9fa5 -~\u3002|\uff1f|\uff01|\uff0c|\u3001|\uff1b|\uff1a|\u201c|\u201d|\u2018|\u2019|\uff08|\uff09|\u300a|\u300b|\u3008|\u3009|\u3010|\u3011|\u300e|\u300f|\u300c|\u300d|\ufe43|\ufe44|\u3014|\u3015|\u2026|\u2014|\uff5e|\ufe4f|\uffe5]+$"

    if-eqz p1, :cond_2

    const-string v0, "[a-zA-Z0-9\u4e00-\u9fa5]+$"

    .line 249
    :cond_2
    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static createLoadingDialog(Landroid/content/Context;)Landroid/widget/PopupWindow;
    .locals 3

    .line 284
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 285
    sget v1, Lcom/mh/movie/core/R$layout;->ad_dialog:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 286
    sget v1, Lcom/mh/movie/core/R$id;->loading_dialog:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 288
    sget v1, Lcom/mh/movie/core/R$id;->img_loading:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 290
    sget v2, Lcom/mh/movie/core/R$anim;->loading:I

    invoke-static {p0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    .line 293
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 294
    new-instance v1, Landroid/widget/PopupWindow;

    invoke-direct {v1, p0}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    .line 297
    invoke-virtual {v1, v0}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    const/4 p0, 0x1

    .line 299
    invoke-virtual {v1, p0}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 301
    new-instance p0, Landroid/graphics/drawable/ColorDrawable;

    const-string v0, "#00000000"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, p0}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 302
    new-instance p0, Landroid/util/DisplayMetrics;

    invoke-direct {p0}, Landroid/util/DisplayMetrics;-><init>()V

    const/4 p0, -0x1

    .line 303
    invoke-virtual {v1, p0}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 304
    invoke-virtual {v1, p0}, Landroid/widget/PopupWindow;->setHeight(I)V

    return-object v1
.end method

.method public static equalStr(Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 221
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    .line 222
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_1

    add-int/lit8 v4, v3, 0x1

    .line 223
    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 224
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    return v0

    :cond_0
    move v3, v4

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static getClarityNum(I)Ljava/lang/String;
    .locals 1

    const-string v0, ""

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v0, "1080P"

    goto :goto_0

    :pswitch_1
    const-string v0, "720P"

    goto :goto_0

    :pswitch_2
    const-string v0, "480P"

    goto :goto_0

    :pswitch_3
    const-string v0, "360P"

    :goto_0
    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getClarityText(I)Ljava/lang/String;
    .locals 1

    const-string v0, "\u9ad8\u6e05"

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v0, "\u84dd\u5149"

    goto :goto_0

    :pswitch_1
    const-string v0, "\u8d85\u6e05"

    goto :goto_0

    :pswitch_2
    const-string v0, "\u9ad8\u6e05"

    goto :goto_0

    :pswitch_3
    const-string v0, "\u6807\u6e05"

    :goto_0
    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getClarityText(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "\u6e05\u6670\u5ea6"

    .line 104
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, 0x17ffc3

    if-eq v1, v2, :cond_3

    const v2, 0x187ba4

    if-eq v1, v2, :cond_2

    const v2, 0x19c23b

    if-eq v1, v2, :cond_1

    const v2, 0x2c929d9

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "1080P"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    const/4 p0, 0x3

    goto :goto_1

    :cond_1
    const-string v1, "720P"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    const/4 p0, 0x2

    goto :goto_1

    :cond_2
    const-string v1, "480P"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    const/4 p0, 0x1

    goto :goto_1

    :cond_3
    const-string v1, "360P"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    const/4 p0, 0x0

    goto :goto_1

    :cond_4
    :goto_0
    const/4 p0, -0x1

    :goto_1
    packed-switch p0, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    const-string v0, "\u84dd\u5149"

    goto :goto_2

    :pswitch_1
    const-string v0, "\u8d85\u6e05"

    goto :goto_2

    :pswitch_2
    const-string v0, "\u9ad8\u6e05"

    goto :goto_2

    :pswitch_3
    const-string v0, "\u6807\u6e05"

    :goto_2
    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getSystemTime()J
    .locals 6

    .line 362
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/mh/movie/core/mvp/ui/b;->b:J

    sub-long v4, v0, v2

    return-wide v4
.end method

.method public static phoneNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    .line 55
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x9

    if-lt v0, v1, :cond_1

    const-string v0, "^(\\d{3})\\d{4}(\\d+)"

    const-string v1, "$1****$2"

    .line 57
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 v1, 0x6

    if-lt v0, v1, :cond_2

    const-string v0, "^(\\d{2})\\d{3}(\\d+)"

    const-string v1, "$1****$2"

    .line 59
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    const-string v0, "^(.)\\d{2}(\\d+)"

    const-string v1, "$1****$2"

    .line 61
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static replaceInvalidStr(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "[^\u4e00-\u9fa5 -~\u3002|\uff1f|\uff01|\uff0c|\u3001|\uff1b|\uff1a|\u201c|\u201d|\u2018|\u2019|\uff08|\uff09|\u300a|\u300b|\u3008|\u3009|\u3010|\u3011|\u300e|\u300f|\u300c|\u300d|\ufe43|\ufe44|\u3014|\u3015|\u2026|\u2014|\uff5e|\ufe4f|\uffe5]"

    .line 278
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 279
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    const-string v0, ""

    .line 280
    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static strLength(Ljava/lang/String;)I
    .locals 4

    const-string v0, "[\u0391-\uffe5]"

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 205
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_1

    add-int/lit8 v3, v1, 0x1

    .line 207
    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 209
    invoke-virtual {v1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v2, v2, 0x2

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    :goto_1
    move v1, v3

    goto :goto_0

    :cond_1
    return v2
.end method
