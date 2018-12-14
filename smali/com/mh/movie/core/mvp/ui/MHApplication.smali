.class public Lcom/mh/movie/core/mvp/ui/MHApplication;
.super Lcom/jess/arms/a/d;
.source "MHApplication.java"


# static fields
.field static a:Lcom/mh/movie/core/mvp/ui/MHApplication; = null

.field public static b:Z = false


# instance fields
.field c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/mh/movie/core/mvp/model/entity/response/HotListResponse;",
            ">;>;"
        }
    .end annotation
.end field

.field d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mh/movie/core/mvp/model/entity/response/UserMessageResponse$ListBeanX;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 94
    invoke-direct {p0}, Lcom/jess/arms/a/d;-><init>()V

    .line 111
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/MHApplication;->c:Ljava/util/HashMap;

    .line 129
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/MHApplication;->d:Ljava/util/List;

    return-void
.end method

.method public static c()Lcom/mh/movie/core/mvp/ui/MHApplication;
    .locals 1

    .line 132
    sget-object v0, Lcom/mh/movie/core/mvp/ui/MHApplication;->a:Lcom/mh/movie/core/mvp/ui/MHApplication;

    return-object v0
.end method

.method private f()V
    .locals 5

    .line 157
    new-instance v0, Lcom/mh/movie/core/mvp/ui/widget/b/e;

    invoke-direct {v0, p0}, Lcom/mh/movie/core/mvp/ui/widget/b/e;-><init>(Landroid/content/Context;)V

    .line 158
    new-instance v1, Lcom/mh/movie/core/mvp/ui/widget/b/a;

    invoke-direct {v1, p0}, Lcom/mh/movie/core/mvp/ui/widget/b/a;-><init>(Landroid/content/Context;)V

    .line 160
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->get(Landroid/content/Context;)Lcom/bumptech/glide/Glide;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bumptech/glide/Glide;->getRegistry()Lcom/bumptech/glide/Registry;

    move-result-object v2

    const-class v3, Ljava/io/InputStream;

    const-class v4, Landroid/graphics/drawable/Drawable;

    .line 161
    invoke-virtual {v2, v3, v4, v0}, Lcom/bumptech/glide/Registry;->prepend(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/ResourceDecoder;)Lcom/bumptech/glide/Registry;

    move-result-object v0

    const-class v2, Ljava/nio/ByteBuffer;

    const-class v3, Landroid/graphics/drawable/Drawable;

    .line 162
    invoke-virtual {v0, v2, v3, v1}, Lcom/bumptech/glide/Registry;->prepend(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/ResourceDecoder;)Lcom/bumptech/glide/Registry;

    .line 166
    invoke-static {p0}, Lcom/facebook/cache/a/c;->a(Landroid/content/Context;)Lcom/facebook/cache/a/c$a;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 167
    invoke-static {}, Lcom/mh/movie/core/mvp/ui/utils/RHelp;->getMahuaFolder()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/caches"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/facebook/cache/a/c$a;->a(Ljava/io/File;)Lcom/facebook/cache/a/c$a;

    move-result-object v0

    const-string v1, "rsSystemPicCache"

    .line 168
    invoke-virtual {v0, v1}, Lcom/facebook/cache/a/c$a;->a(Ljava/lang/String;)Lcom/facebook/cache/a/c$a;

    move-result-object v0

    const-wide/32 v1, 0xc800000

    invoke-virtual {v0, v1, v2}, Lcom/facebook/cache/a/c$a;->a(J)Lcom/facebook/cache/a/c$a;

    move-result-object v0

    const-wide/32 v1, 0x6400000

    .line 169
    invoke-virtual {v0, v1, v2}, Lcom/facebook/cache/a/c$a;->b(J)Lcom/facebook/cache/a/c$a;

    move-result-object v0

    const-wide/32 v1, 0x3200000

    .line 170
    invoke-virtual {v0, v1, v2}, Lcom/facebook/cache/a/c$a;->c(J)Lcom/facebook/cache/a/c$a;

    move-result-object v0

    const-wide/32 v1, 0x5000000

    .line 171
    invoke-virtual {v0, v1, v2}, Lcom/facebook/cache/a/c$a;->a(J)Lcom/facebook/cache/a/c$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/cache/a/c$a;->a()Lcom/facebook/cache/a/c;

    move-result-object v0

    .line 174
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 175
    new-instance v2, Lcom/facebook/imagepipeline/h/d;

    invoke-direct {v2}, Lcom/facebook/imagepipeline/h/d;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 180
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/MHApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {}, Lcom/mh/movie/core/b/c;->a()Lcom/mh/movie/core/b/c;

    move-result-object v3

    iget-object v3, v3, Lcom/mh/movie/core/b/c;->a:Lokhttp3/OkHttpClient;

    invoke-static {v2, v3}, Lcom/facebook/imagepipeline/a/a/a;->a(Landroid/content/Context;Lokhttp3/OkHttpClient;)Lcom/facebook/imagepipeline/d/h$a;

    move-result-object v2

    .line 181
    invoke-virtual {v2, v0}, Lcom/facebook/imagepipeline/d/h$a;->a(Lcom/facebook/cache/a/c;)Lcom/facebook/imagepipeline/d/h$a;

    move-result-object v0

    const/4 v2, 0x1

    .line 182
    invoke-virtual {v0, v2}, Lcom/facebook/imagepipeline/d/h$a;->a(Z)Lcom/facebook/imagepipeline/d/h$a;

    move-result-object v0

    sget-object v3, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 183
    invoke-virtual {v0, v3}, Lcom/facebook/imagepipeline/d/h$a;->a(Landroid/graphics/Bitmap$Config;)Lcom/facebook/imagepipeline/d/h$a;

    move-result-object v0

    .line 184
    invoke-virtual {v0, v2}, Lcom/facebook/imagepipeline/d/h$a;->b(Z)Lcom/facebook/imagepipeline/d/h$a;

    move-result-object v0

    .line 185
    invoke-virtual {v0, v1}, Lcom/facebook/imagepipeline/d/h$a;->a(Ljava/util/Set;)Lcom/facebook/imagepipeline/d/h$a;

    move-result-object v0

    .line 186
    invoke-virtual {v0, v2}, Lcom/facebook/imagepipeline/d/h$a;->c(Z)Lcom/facebook/imagepipeline/d/h$a;

    move-result-object v0

    .line 187
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/d/h$a;->a()Lcom/facebook/imagepipeline/d/h;

    move-result-object v0

    .line 188
    invoke-static {p0, v0}, Lcom/facebook/drawee/backends/pipeline/c;->a(Landroid/content/Context;Lcom/facebook/imagepipeline/d/h;)V

    return-void
.end method

.method private g()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 207
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/MHApplication;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "pack_info"

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 208
    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v1

    .line 209
    new-array v1, v1, [B

    .line 210
    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    .line 211
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 212
    new-instance v0, Ljava/lang/String;

    const-string v2, "utf8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    const/4 v1, 0x1

    .line 213
    invoke-static {v1}, Lcom/mh/movie/core/mvp/ui/utils/AesUtil;->getKey(Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mh/movie/core/mvp/ui/utils/AesUtil;->decryptHex(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 217
    :goto_0
    new-instance v1, Lcom/google/gson/e;

    invoke-direct {v1}, Lcom/google/gson/e;-><init>()V

    .line 218
    const-class v2, Lcom/mh/movie/core/mvp/model/entity/PackInfo;

    invoke-virtual {v1, v0, v2}, Lcom/google/gson/e;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/model/entity/PackInfo;

    .line 219
    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/utils/RHelp;->initInfo(Lcom/mh/movie/core/mvp/model/entity/PackInfo;)V

    return-void
.end method

.method private h()V
    .locals 2

    .line 223
    invoke-static {}, Lme/jessyan/autosize/AutoSizeConfig;->getInstance()Lme/jessyan/autosize/AutoSizeConfig;

    move-result-object v0

    const/4 v1, 0x1

    .line 226
    invoke-virtual {v0, v1}, Lme/jessyan/autosize/AutoSizeConfig;->setCustomFragment(Z)Lme/jessyan/autosize/AutoSizeConfig;

    move-result-object v0

    new-instance v1, Lcom/mh/movie/core/mvp/ui/MHApplication$1;

    invoke-direct {v1, p0}, Lcom/mh/movie/core/mvp/ui/MHApplication$1;-><init>(Lcom/mh/movie/core/mvp/ui/MHApplication;)V

    .line 229
    invoke-virtual {v0, v1}, Lme/jessyan/autosize/AutoSizeConfig;->setOnAdaptListener(Lme/jessyan/autosize/onAdaptListener;)V

    .line 244
    invoke-static {}, Lme/jessyan/autosize/AutoSizeConfig;->getInstance()Lme/jessyan/autosize/AutoSizeConfig;

    move-result-object v0

    invoke-virtual {v0}, Lme/jessyan/autosize/AutoSizeConfig;->getUnitsManager()Lme/jessyan/autosize/unit/UnitsManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lme/jessyan/autosize/unit/UnitsManager;->setSupportDP(Z)Lme/jessyan/autosize/unit/UnitsManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lme/jessyan/autosize/unit/UnitsManager;->setSupportSP(Z)Lme/jessyan/autosize/unit/UnitsManager;

    move-result-object v0

    sget-object v1, Lme/jessyan/autosize/unit/Subunits;->PT:Lme/jessyan/autosize/unit/Subunits;

    invoke-virtual {v0, v1}, Lme/jessyan/autosize/unit/UnitsManager;->setSupportSubunits(Lme/jessyan/autosize/unit/Subunits;)Lme/jessyan/autosize/unit/UnitsManager;

    return-void
.end method

.method private i()V
    .locals 3

    .line 248
    invoke-static {p0}, Lcom/mh/movie/core/mvp/ui/utils/ForegroundCallbacks;->init(Landroid/app/Application;)Lcom/mh/movie/core/mvp/ui/utils/ForegroundCallbacks;

    .line 249
    invoke-static {}, Lcom/mh/movie/core/mvp/ui/utils/ForegroundCallbacks;->get()Lcom/mh/movie/core/mvp/ui/utils/ForegroundCallbacks;

    move-result-object v0

    new-instance v1, Lcom/mh/movie/core/mvp/ui/MHApplication$2;

    invoke-direct {v1, p0}, Lcom/mh/movie/core/mvp/ui/MHApplication$2;-><init>(Lcom/mh/movie/core/mvp/ui/MHApplication;)V

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/ui/utils/ForegroundCallbacks;->addListener(Lcom/mh/movie/core/mvp/ui/utils/ForegroundCallbacks$Listener;)V

    const-string v0, "0x100000"

    const-wide/16 v1, 0x0

    .line 264
    invoke-static {p0, v0, v1, v2}, Lcom/jess/arms/c/d;->a(Landroid/content/Context;Ljava/lang/String;J)V

    .line 265
    sget-object v0, Lcom/mh/movie/core/mvp/ui/b;->p:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/jess/arms/c/d;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/mh/movie/core/mvp/ui/b;->z:I

    .line 266
    sget-object v0, Lcom/mh/movie/core/mvp/ui/b;->u:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/jess/arms/c/d;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mh/movie/core/mvp/ui/b;->v:Ljava/lang/String;

    .line 267
    new-instance v0, Lcom/mh/movie/core/mvp/ui/utils/AppInfo;

    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/MHApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mh/movie/core/mvp/ui/utils/AppInfo;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/mh/movie/core/mvp/ui/b;->C:Lcom/mh/movie/core/mvp/ui/utils/AppInfo;

    .line 268
    sget-object v0, Lcom/mh/movie/core/mvp/ui/b;->l:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/jess/arms/c/d;->d(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lcom/mh/movie/core/mvp/ui/b;->D:J

    .line 269
    sget-object v0, Lcom/mh/movie/core/mvp/ui/b;->m:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/jess/arms/c/d;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mh/movie/core/mvp/ui/b;->E:Ljava/lang/String;

    .line 270
    sget-object v0, Lcom/mh/movie/core/mvp/ui/b;->n:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/jess/arms/c/d;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mh/movie/core/mvp/ui/b;->F:Ljava/lang/String;

    .line 271
    sget-object v0, Lcom/mh/movie/core/mvp/ui/b;->o:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/jess/arms/c/d;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mh/movie/core/mvp/ui/b;->G:Ljava/lang/String;

    .line 272
    sget-object v0, Lcom/mh/movie/core/mvp/ui/b;->s:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/jess/arms/c/d;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mh/movie/core/mvp/ui/b;->I:Ljava/lang/String;

    .line 274
    sget-object v0, Lcom/mh/movie/core/mvp/ui/b;->r:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/jess/arms/c/d;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, ""

    .line 275
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 276
    new-instance v1, Lcom/google/gson/e;

    invoke-direct {v1}, Lcom/google/gson/e;-><init>()V

    .line 277
    new-instance v2, Lcom/mh/movie/core/mvp/ui/MHApplication$3;

    invoke-direct {v2, p0}, Lcom/mh/movie/core/mvp/ui/MHApplication$3;-><init>(Lcom/mh/movie/core/mvp/ui/MHApplication;)V

    .line 278
    invoke-virtual {v2}, Lcom/mh/movie/core/mvp/ui/MHApplication$3;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 279
    invoke-virtual {v1, v0, v2}, Lcom/google/gson/e;->a(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/model/entity/SettingConfig;

    sput-object v0, Lcom/mh/movie/core/mvp/ui/b;->R:Lcom/mh/movie/core/mvp/model/entity/SettingConfig;

    .line 283
    :cond_0
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/MHApplication;->k()V

    .line 285
    invoke-static {}, Lcom/mh/movie/core/c/b;->a()Lcom/mh/movie/core/c/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mh/movie/core/c/b;->a(Landroid/content/Context;)V

    .line 286
    invoke-static {}, Lcom/mh/movie/core/mvp/ui/service/a;->a()Lcom/mh/movie/core/mvp/ui/service/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mh/movie/core/mvp/ui/service/a;->a(Landroid/content/Context;)V

    return-void
.end method

.method private j()V
    .locals 4

    .line 290
    invoke-static {}, Lcom/mh/movie/core/mvp/ui/utils/RHelp;->getUmAppkey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android"

    invoke-static {}, Lcom/mh/movie/core/mvp/ui/utils/RHelp;->getUmMessagekey()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {p0, v0, v1, v3, v2}, Lcom/umeng/commonsdk/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 291
    invoke-static {p0}, Lcom/umeng/message/f;->a(Landroid/content/Context;)Lcom/umeng/message/f;

    move-result-object v0

    .line 293
    new-instance v1, Lcom/mh/movie/core/mvp/ui/MHApplication$4;

    invoke-direct {v1, p0}, Lcom/mh/movie/core/mvp/ui/MHApplication$4;-><init>(Lcom/mh/movie/core/mvp/ui/MHApplication;)V

    invoke-virtual {v0, v1}, Lcom/umeng/message/f;->a(Lcom/umeng/message/b;)V

    .line 306
    invoke-static {p0}, Lorg/android/agoo/huawei/a;->a(Landroid/content/Context;)V

    .line 308
    invoke-static {}, Lcom/mh/movie/core/mvp/ui/utils/RHelp;->getMiId()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/mh/movie/core/mvp/ui/utils/RHelp;->getMikey()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lorg/android/agoo/xiaomi/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private k()V
    .locals 2

    .line 313
    new-instance v0, Lcom/mh/movie/core/app/c;

    invoke-direct {v0}, Lcom/mh/movie/core/app/c;-><init>()V

    .line 314
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/MHApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/app/c;->a(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public a(I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/mh/movie/core/mvp/model/entity/response/HotListResponse;",
            ">;"
        }
    .end annotation

    .line 114
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/MHApplication;->c:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method public a(ILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/mh/movie/core/mvp/model/entity/response/HotListResponse;",
            ">;)V"
        }
    .end annotation

    .line 118
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/MHApplication;->c:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mh/movie/core/mvp/model/entity/response/UserMessageResponse$ListBeanX;",
            ">;)V"
        }
    .end annotation

    .line 126
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/MHApplication;->d:Ljava/util/List;

    return-void
.end method

.method public b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/mh/movie/core/mvp/model/entity/response/UserMessageResponse$ListBeanX;",
            ">;"
        }
    .end annotation

    .line 122
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/MHApplication;->d:Ljava/util/List;

    return-object v0
.end method

.method public d()Z
    .locals 4

    .line 196
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    const-string v1, "activity"

    .line 197
    invoke-virtual {p0, v1}, Lcom/mh/movie/core/mvp/ui/MHApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 198
    invoke-virtual {v1}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 199
    iget v3, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v3, v0, :cond_0

    .line 200
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/MHApplication;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v1, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public e()Landroid/content/pm/PackageInfo;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 318
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/MHApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 319
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/MHApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .line 137
    invoke-super {p0}, Lcom/jess/arms/a/d;->onCreate()V

    .line 139
    :try_start_0
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/MHApplication;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/MHApplication;->g()V

    .line 141
    invoke-static {}, Lcom/mh/movie/core/mvp/ui/a;->a()V

    .line 142
    invoke-static {p0}, Lcom/raizlabs/android/dbflow/config/FlowManager;->a(Landroid/content/Context;)V

    .line 143
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/MHApplication;->i()V

    .line 145
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/MHApplication;->f()V

    .line 146
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/MHApplication;->h()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "no packInfo"

    .line 149
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/MHApplication;->j()V

    .line 152
    sput-object p0, Lcom/mh/movie/core/mvp/ui/MHApplication;->a:Lcom/mh/movie/core/mvp/ui/MHApplication;

    return-void
.end method

.method public onLowMemory()V
    .locals 1

    .line 348
    invoke-super {p0}, Lcom/jess/arms/a/d;->onLowMemory()V

    .line 350
    :try_start_0
    invoke-static {}, Lcom/facebook/imagepipeline/d/j;->a()Lcom/facebook/imagepipeline/d/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/d/j;->h()Lcom/facebook/imagepipeline/d/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/d/g;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 352
    invoke-static {v0}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public onTerminate()V
    .locals 2

    .line 328
    invoke-super {p0}, Lcom/jess/arms/a/d;->onTerminate()V

    const-string v0, "\u88ab\u7ec8\u6b62\u4e86"

    .line 330
    invoke-static {p0, v0}, Lcom/mh/movie/core/mvp/ui/utils/T;->showLong(Landroid/content/Context;Ljava/lang/CharSequence;)V

    const-string v0, "onTerminate"

    const-string v1, "\u88ab\u7ec8\u6b62\u4e86"

    .line 331
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onTrimMemory(I)V
    .locals 1

    .line 336
    invoke-super {p0, p1}, Lcom/jess/arms/a/d;->onTrimMemory(I)V

    const/16 v0, 0x3c

    if-lt p1, v0, :cond_0

    .line 339
    :try_start_0
    invoke-static {}, Lcom/facebook/imagepipeline/d/j;->a()Lcom/facebook/imagepipeline/d/j;

    move-result-object p1

    invoke-virtual {p1}, Lcom/facebook/imagepipeline/d/j;->h()Lcom/facebook/imagepipeline/d/g;

    move-result-object p1

    invoke-virtual {p1}, Lcom/facebook/imagepipeline/d/g;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 342
    invoke-static {p1}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method
