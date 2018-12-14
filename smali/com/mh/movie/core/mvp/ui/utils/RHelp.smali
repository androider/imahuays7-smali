.class public Lcom/mh/movie/core/mvp/ui/utils/RHelp;
.super Ljava/lang/Object;
.source "RHelp.java"


# static fields
.field public static final MH_PERMISSIONS_REQUEST:I = 0x1

.field public static final MH_WRITE_SETTINGS:I = 0x2

.field public static SHARE_URL:Ljava/lang/String; = "/app/share/"

.field public static STORE_NAME:Ljava/lang/String; = "mhysName"

.field public static aesKey:Ljava/lang/String; = "DtXZcHh9XJ5SfPAe"

.field public static appKey:Ljava/lang/String;

.field public static domain:Ljava/lang/String;

.field public static flurryKey:Ljava/lang/String;

.field public static miId:Ljava/lang/String;

.field public static miKey:Ljava/lang/String;

.field public static packageId:Ljava/lang/String;

.field public static packageName:Ljava/lang/String;

.field public static qqKey:Ljava/lang/String;

.field public static trackKey:Ljava/lang/String;

.field public static umAppkey:Ljava/lang/String;

.field public static umMessagekey:Ljava/lang/String;

.field public static version:Ljava/lang/String;

.field public static wbKey:Ljava/lang/String;

.field public static wxkey:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static InitializeDoamin(Landroid/content/Context;)V
    .locals 1

    .line 209
    invoke-static {p0}, Lcom/mh/movie/core/mvp/ui/utils/RHelp;->getLastDomain(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 212
    invoke-static {p0, v0}, Lcom/mh/movie/core/mvp/ui/utils/RHelp;->setGlobalDomain(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static clearImageCache(Landroid/content/Context;)Z
    .locals 1

    .line 372
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/jess/arms/c/a;->d(Landroid/content/Context;)Lcom/jess/arms/b/a/a;

    move-result-object p0

    invoke-interface {p0}, Lcom/jess/arms/b/a/a;->h()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "Glide"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 374
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/jess/arms/c/d;->c(Ljava/io/File;)Z

    move-result p0

    return p0
.end method

.method public static getApkCacheFolder(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 284
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/mh/movie/core/mvp/ui/utils/RHelp;->getMahuaFolder()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "apk"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz p0, :cond_0

    .line 285
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 286
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    return-object v0
.end method

.method public static getAppKey()Ljava/lang/String;
    .locals 1

    .line 153
    sget-object v0, Lcom/mh/movie/core/mvp/ui/utils/RHelp;->appKey:Ljava/lang/String;

    return-object v0
.end method

.method public static getAppName()I
    .locals 1

    .line 252
    sget v0, Lcom/mh/movie/core/R$string;->app_name:I

    return v0
.end method

.method public static getCacheSize(Ljava/io/File;)J
    .locals 2

    .line 317
    invoke-static {p0}, Lcom/jess/arms/c/d;->b(Ljava/io/File;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getCacheSize(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 360
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/jess/arms/c/a;->d(Landroid/content/Context;)Lcom/jess/arms/b/a/a;

    move-result-object p0

    invoke-interface {p0}, Lcom/jess/arms/b/a/a;->h()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "Glide"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 362
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/utils/RHelp;->getCacheSize(Ljava/io/File;)J

    move-result-wide v0

    long-to-double v0, v0

    invoke-static {v0, v1}, Lcom/mh/movie/core/mvp/ui/utils/RHelp;->getFormatSize(D)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getDomain()Ljava/lang/String;
    .locals 1

    .line 144
    sget-object v0, Lcom/mh/movie/core/mvp/ui/utils/RHelp;->domain:Ljava/lang/String;

    return-object v0
.end method

.method public static getDomainModel(Landroid/content/Context;)Lcom/mh/movie/core/mvp/model/entity/Domain;
    .locals 0

    .line 196
    invoke-static {p0}, Lcom/mh/movie/core/mvp/ui/utils/a/b;->a(Landroid/content/Context;)Lcom/mh/movie/core/mvp/model/entity/Domain;

    move-result-object p0

    return-object p0
.end method

.method public static getFlurryKey()Ljava/lang/String;
    .locals 1

    .line 132
    sget-object v0, Lcom/mh/movie/core/mvp/ui/utils/RHelp;->flurryKey:Ljava/lang/String;

    return-object v0
.end method

.method public static getFormatSize(D)Ljava/lang/String;
    .locals 9

    const-wide/high16 v0, 0x4090000000000000L    # 1024.0

    div-double v2, p0, v0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpg-double v6, v2, v4

    if-gez v6, :cond_0

    .line 338
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p0, "B"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    div-double p0, v2, v0

    cmpg-double v6, p0, v4

    const/4 v7, 0x4

    const/4 v8, 0x2

    if-gez v6, :cond_1

    .line 342
    new-instance p0, Ljava/math/BigDecimal;

    invoke-static {v2, v3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 343
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v8, v7}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigDecimal;->toPlainString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "KB"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    div-double v2, p0, v0

    cmpg-double v6, v2, v4

    if-gez v6, :cond_2

    .line 347
    new-instance v0, Ljava/math/BigDecimal;

    invoke-static {p0, p1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 348
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8, v7}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigDecimal;->toPlainString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "MB"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    div-double p0, v2, v0

    cmpg-double v0, p0, v4

    if-gez v0, :cond_3

    .line 352
    new-instance p0, Ljava/math/BigDecimal;

    invoke-static {v2, v3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 353
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v8, v7}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigDecimal;->toPlainString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "GB"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 355
    :cond_3
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p0, p1}, Ljava/math/BigDecimal;-><init>(D)V

    .line 356
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8, v7}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigDecimal;->toPlainString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "TB"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getHTML_URL(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string v0, ""

    .line 379
    sget-object v1, Lcom/mh/movie/core/mvp/ui/b;->S:Lcom/mh/movie/core/mvp/model/entity/response/OtherAppLinkUrlResponse;

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/model/entity/response/OtherAppLinkUrlResponse;->getHtml_addr()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/raizlabs/android/dbflow/a;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 380
    sget-object p0, Lcom/mh/movie/core/mvp/ui/b;->S:Lcom/mh/movie/core/mvp/model/entity/response/OtherAppLinkUrlResponse;

    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/model/entity/response/OtherAppLinkUrlResponse;->getHtml_addr()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 382
    :cond_0
    invoke-static {p0}, Lcom/mh/movie/core/mvp/ui/utils/RHelp;->getDomainModel(Landroid/content/Context;)Lcom/mh/movie/core/mvp/model/entity/Domain;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/model/entity/Domain;->getHTML_URL()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 383
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 384
    invoke-static {p0}, Lcom/mh/movie/core/mvp/ui/utils/RHelp;->getDomainModel(Landroid/content/Context;)Lcom/mh/movie/core/mvp/model/entity/Domain;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/model/entity/Domain;->getHTML_URL()Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Ljava/lang/String;

    :cond_1
    :goto_0
    return-object v0
.end method

.method public static getImageCacheFolder(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 274
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/mh/movie/core/mvp/ui/utils/RHelp;->getMahuaFolder()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "image"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz p0, :cond_0

    .line 275
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 276
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    return-object v0
.end method

.method public static getKey()Ljava/lang/String;
    .locals 1

    .line 128
    sget-object v0, Lcom/mh/movie/core/mvp/ui/utils/RHelp;->aesKey:Ljava/lang/String;

    return-object v0
.end method

.method public static getLastDomain(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string v0, "DOMAIN_AVAILABLE_URL"

    .line 224
    invoke-static {p0, v0}, Lcom/jess/arms/c/d;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 228
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 230
    invoke-static {p0}, Lcom/mh/movie/core/mvp/ui/utils/RHelp;->getDomainModel(Landroid/content/Context;)Lcom/mh/movie/core/mvp/model/entity/Domain;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/model/entity/Domain;->getAPI_URL()Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Ljava/lang/String;

    :cond_0
    return-object v0
.end method

.method public static getLongCacheSize(Landroid/content/Context;)J
    .locals 2

    .line 366
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/jess/arms/c/a;->d(Landroid/content/Context;)Lcom/jess/arms/b/a/a;

    move-result-object p0

    invoke-interface {p0}, Lcom/jess/arms/b/a/a;->h()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "Glide"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 368
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/utils/RHelp;->getCacheSize(Ljava/io/File;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getMP4CacheFolder()Ljava/lang/String;
    .locals 1

    .line 327
    invoke-static {}, Lcom/mh/movie/core/mvp/ui/utils/RHelp;->getMahuaFolder()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMahuaFolder()Ljava/lang/String;
    .locals 2

    .line 269
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/mh/movie/core/mvp/ui/utils/RHelp;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMahuaGifPath()Ljava/io/File;
    .locals 2

    .line 298
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/mh/movie/core/mvp/ui/utils/RHelp;->getMahuaFolder()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "gif"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 299
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 300
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    :cond_0
    return-object v1
.end method

.method public static getMahuaImagePath()Ljava/io/File;
    .locals 2

    .line 310
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/mh/movie/core/mvp/ui/utils/RHelp;->getMahuaFolder()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "image"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 311
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 312
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    :cond_0
    return-object v1
.end method

.method public static getMiId()Ljava/lang/String;
    .locals 1

    .line 136
    sget-object v0, Lcom/mh/movie/core/mvp/ui/utils/RHelp;->miId:Ljava/lang/String;

    return-object v0
.end method

.method public static getMikey()Ljava/lang/String;
    .locals 1

    .line 140
    sget-object v0, Lcom/mh/movie/core/mvp/ui/utils/RHelp;->miKey:Ljava/lang/String;

    return-object v0
.end method

.method public static getPackageId()Ljava/lang/String;
    .locals 1

    .line 108
    sget-object v0, Lcom/mh/movie/core/mvp/ui/utils/RHelp;->packageId:Ljava/lang/String;

    return-object v0
.end method

.method public static getPackageName()Ljava/lang/String;
    .locals 1

    .line 104
    sget-object v0, Lcom/mh/movie/core/mvp/ui/utils/RHelp;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public static getQqKey()Ljava/lang/String;
    .locals 1

    .line 161
    sget-object v0, Lcom/mh/movie/core/mvp/ui/utils/RHelp;->qqKey:Ljava/lang/String;

    return-object v0
.end method

.method public static getTrackKey()Ljava/lang/String;
    .locals 1

    .line 165
    sget-object v0, Lcom/mh/movie/core/mvp/ui/utils/RHelp;->trackKey:Ljava/lang/String;

    return-object v0
.end method

.method public static getUmAppkey()Ljava/lang/String;
    .locals 1

    .line 116
    sget-object v0, Lcom/mh/movie/core/mvp/ui/utils/RHelp;->umAppkey:Ljava/lang/String;

    return-object v0
.end method

.method public static getUmMessagekey()Ljava/lang/String;
    .locals 1

    .line 120
    sget-object v0, Lcom/mh/movie/core/mvp/ui/utils/RHelp;->umMessagekey:Ljava/lang/String;

    return-object v0
.end method

.method public static getVersion()Ljava/lang/String;
    .locals 1

    .line 112
    sget-object v0, Lcom/mh/movie/core/mvp/ui/utils/RHelp;->version:Ljava/lang/String;

    return-object v0
.end method

.method public static getVideoCacheFolder()Ljava/lang/String;
    .locals 2

    .line 322
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/mh/movie/core/mvp/ui/utils/RHelp;->getMahuaFolder()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "vedio"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getWbKey()Ljava/lang/String;
    .locals 1

    .line 157
    sget-object v0, Lcom/mh/movie/core/mvp/ui/utils/RHelp;->wbKey:Ljava/lang/String;

    return-object v0
.end method

.method public static getWxkey()Ljava/lang/String;
    .locals 1

    .line 124
    sget-object v0, Lcom/mh/movie/core/mvp/ui/utils/RHelp;->wxkey:Ljava/lang/String;

    return-object v0
.end method

.method public static getX_Client_IP()Ljava/lang/String;
    .locals 1

    const-string v0, "127.0.0.1"

    return-object v0
.end method

.method public static initInfo(Lcom/mh/movie/core/mvp/model/entity/PackInfo;)V
    .locals 1

    .line 169
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/model/entity/PackInfo;->getVersion()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/utils/RHelp;->setVersion(Ljava/lang/String;)V

    .line 170
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/model/entity/PackInfo;->getAesKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/utils/RHelp;->setAesKey(Ljava/lang/String;)V

    .line 171
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/model/entity/PackInfo;->getAppKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/utils/RHelp;->setAppKey(Ljava/lang/String;)V

    .line 172
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/model/entity/PackInfo;->getDomain()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/utils/RHelp;->setDomain(Ljava/lang/String;)V

    .line 173
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/model/entity/PackInfo;->getFlurryKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/utils/RHelp;->setFlurryKey(Ljava/lang/String;)V

    .line 174
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/model/entity/PackInfo;->getMiId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/utils/RHelp;->setMiId(Ljava/lang/String;)V

    .line 175
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/model/entity/PackInfo;->getMiKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/utils/RHelp;->setMiKey(Ljava/lang/String;)V

    .line 176
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/model/entity/PackInfo;->getPackageId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/utils/RHelp;->setPackageId(Ljava/lang/String;)V

    .line 177
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/model/entity/PackInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/utils/RHelp;->setPackageName(Ljava/lang/String;)V

    .line 178
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/model/entity/PackInfo;->getUmAppkey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/utils/RHelp;->setUmAppkey(Ljava/lang/String;)V

    .line 179
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/model/entity/PackInfo;->getUmMessagekey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/utils/RHelp;->setUmMessagekey(Ljava/lang/String;)V

    .line 180
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/model/entity/PackInfo;->getWxKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/utils/RHelp;->setWxkey(Ljava/lang/String;)V

    .line 181
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/model/entity/PackInfo;->getWbKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/utils/RHelp;->setWbKey(Ljava/lang/String;)V

    .line 182
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/model/entity/PackInfo;->getQqKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/utils/RHelp;->setQqKey(Ljava/lang/String;)V

    .line 183
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/model/entity/PackInfo;->getTrackKey()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/mh/movie/core/mvp/ui/utils/RHelp;->setTrackKey(Ljava/lang/String;)V

    return-void
.end method

.method public static setAesKey(Ljava/lang/String;)V
    .locals 0

    .line 68
    sput-object p0, Lcom/mh/movie/core/mvp/ui/utils/RHelp;->aesKey:Ljava/lang/String;

    return-void
.end method

.method public static setAppKey(Ljava/lang/String;)V
    .locals 0

    .line 88
    sput-object p0, Lcom/mh/movie/core/mvp/ui/utils/RHelp;->appKey:Ljava/lang/String;

    return-void
.end method

.method public static setDomain(Ljava/lang/String;)V
    .locals 0

    .line 84
    sput-object p0, Lcom/mh/movie/core/mvp/ui/utils/RHelp;->domain:Ljava/lang/String;

    return-void
.end method

.method public static setFlurryKey(Ljava/lang/String;)V
    .locals 0

    .line 72
    sput-object p0, Lcom/mh/movie/core/mvp/ui/utils/RHelp;->flurryKey:Ljava/lang/String;

    return-void
.end method

.method public static setGlobalDomain(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    const-string v0, "DOMAIN_AVAILABLE_URL"

    .line 244
    invoke-static {p0, v0, p1}, Lcom/jess/arms/c/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "---"

    .line 248
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "----\u521d\u59cb\u5316\u83b7\u53d6\u5168\u5c40domain---->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static setMiId(Ljava/lang/String;)V
    .locals 0

    .line 76
    sput-object p0, Lcom/mh/movie/core/mvp/ui/utils/RHelp;->miId:Ljava/lang/String;

    return-void
.end method

.method public static setMiKey(Ljava/lang/String;)V
    .locals 0

    .line 80
    sput-object p0, Lcom/mh/movie/core/mvp/ui/utils/RHelp;->miKey:Ljava/lang/String;

    return-void
.end method

.method public static setPackageId(Ljava/lang/String;)V
    .locals 0

    .line 48
    sput-object p0, Lcom/mh/movie/core/mvp/ui/utils/RHelp;->packageId:Ljava/lang/String;

    return-void
.end method

.method public static setPackageName(Ljava/lang/String;)V
    .locals 0

    .line 44
    sput-object p0, Lcom/mh/movie/core/mvp/ui/utils/RHelp;->packageName:Ljava/lang/String;

    return-void
.end method

.method public static setQqKey(Ljava/lang/String;)V
    .locals 0

    .line 96
    sput-object p0, Lcom/mh/movie/core/mvp/ui/utils/RHelp;->qqKey:Ljava/lang/String;

    return-void
.end method

.method public static setTrackKey(Ljava/lang/String;)V
    .locals 0

    .line 100
    sput-object p0, Lcom/mh/movie/core/mvp/ui/utils/RHelp;->trackKey:Ljava/lang/String;

    return-void
.end method

.method public static setUmAppkey(Ljava/lang/String;)V
    .locals 0

    .line 56
    sput-object p0, Lcom/mh/movie/core/mvp/ui/utils/RHelp;->umAppkey:Ljava/lang/String;

    return-void
.end method

.method public static setUmMessagekey(Ljava/lang/String;)V
    .locals 0

    .line 60
    sput-object p0, Lcom/mh/movie/core/mvp/ui/utils/RHelp;->umMessagekey:Ljava/lang/String;

    return-void
.end method

.method public static setVersion(Ljava/lang/String;)V
    .locals 0

    .line 52
    sput-object p0, Lcom/mh/movie/core/mvp/ui/utils/RHelp;->version:Ljava/lang/String;

    return-void
.end method

.method public static setWbKey(Ljava/lang/String;)V
    .locals 0

    .line 92
    sput-object p0, Lcom/mh/movie/core/mvp/ui/utils/RHelp;->wbKey:Ljava/lang/String;

    return-void
.end method

.method public static setWxkey(Ljava/lang/String;)V
    .locals 0

    .line 64
    sput-object p0, Lcom/mh/movie/core/mvp/ui/utils/RHelp;->wxkey:Ljava/lang/String;

    return-void
.end method
