.class public Lcom/mh/movie/core/mvp/ui/utils/BiliDanmukuParser;
.super Lmaster/flame/danmaku/danmaku/a/a;
.source "BiliDanmukuParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mh/movie/core/mvp/ui/utils/BiliDanmukuParser$XmlContentHandler;
    }
.end annotation


# instance fields
.field protected mDispScaleX:F

.field protected mDispScaleY:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "org.xml.sax.driver"

    const-string v1, "org.xmlpull.v1.sax2.Driver"

    .line 47
    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Lmaster/flame/danmaku/danmaku/a/a;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/mh/movie/core/mvp/ui/utils/BiliDanmukuParser;)Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/mh/movie/core/mvp/ui/utils/BiliDanmukuParser;->mContext:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    return-object p0
.end method

.method static synthetic access$100(Lcom/mh/movie/core/mvp/ui/utils/BiliDanmukuParser;)Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/mh/movie/core/mvp/ui/utils/BiliDanmukuParser;->mContext:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    return-object p0
.end method

.method static synthetic access$200(Lcom/mh/movie/core/mvp/ui/utils/BiliDanmukuParser;)F
    .locals 0

    .line 44
    iget p0, p0, Lcom/mh/movie/core/mvp/ui/utils/BiliDanmukuParser;->mDispDensity:F

    return p0
.end method

.method static synthetic access$300(Lcom/mh/movie/core/mvp/ui/utils/BiliDanmukuParser;)Lmaster/flame/danmaku/danmaku/model/f;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/mh/movie/core/mvp/ui/utils/BiliDanmukuParser;->mTimer:Lmaster/flame/danmaku/danmaku/model/f;

    return-object p0
.end method

.method static synthetic access$400(Lcom/mh/movie/core/mvp/ui/utils/BiliDanmukuParser;)Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/mh/movie/core/mvp/ui/utils/BiliDanmukuParser;->mContext:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    return-object p0
.end method

.method static synthetic access$500(Lcom/mh/movie/core/mvp/ui/utils/BiliDanmukuParser;F)Z
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Lcom/mh/movie/core/mvp/ui/utils/BiliDanmukuParser;->isPercentageNumber(F)Z

    move-result p0

    return p0
.end method

.method static synthetic access$600(Lcom/mh/movie/core/mvp/ui/utils/BiliDanmukuParser;)Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/mh/movie/core/mvp/ui/utils/BiliDanmukuParser;->mContext:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    return-object p0
.end method

.method static synthetic access$700(Lcom/mh/movie/core/mvp/ui/utils/BiliDanmukuParser;)Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/mh/movie/core/mvp/ui/utils/BiliDanmukuParser;->mContext:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    return-object p0
.end method

.method static synthetic access$800(Lcom/mh/movie/core/mvp/ui/utils/BiliDanmukuParser;)Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/mh/movie/core/mvp/ui/utils/BiliDanmukuParser;->mContext:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    return-object p0
.end method

.method private isPercentageNumber(F)Z
    .locals 1

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public parse()Lmaster/flame/danmaku/danmaku/model/android/e;
    .locals 4

    .line 56
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/utils/BiliDanmukuParser;->mDataSource:Lmaster/flame/danmaku/danmaku/a/b;

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/utils/BiliDanmukuParser;->mDataSource:Lmaster/flame/danmaku/danmaku/a/b;

    check-cast v0, Lmaster/flame/danmaku/danmaku/a/a/a;

    .line 59
    :try_start_0
    invoke-static {}, Lorg/xml/sax/helpers/XMLReaderFactory;->createXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v1

    .line 60
    new-instance v2, Lcom/mh/movie/core/mvp/ui/utils/BiliDanmukuParser$XmlContentHandler;

    invoke-direct {v2, p0}, Lcom/mh/movie/core/mvp/ui/utils/BiliDanmukuParser$XmlContentHandler;-><init>(Lcom/mh/movie/core/mvp/ui/utils/BiliDanmukuParser;)V

    .line 61
    invoke-interface {v1, v2}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 62
    new-instance v3, Lorg/xml/sax/InputSource;

    invoke-virtual {v0}, Lmaster/flame/danmaku/danmaku/a/a/a;->b()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v3, v0}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v1, v3}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    .line 63
    invoke-virtual {v2}, Lcom/mh/movie/core/mvp/ui/utils/BiliDanmukuParser$XmlContentHandler;->getResult()Lmaster/flame/danmaku/danmaku/model/android/e;

    move-result-object v0
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 67
    invoke-static {v0}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 65
    invoke-static {v0}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic parse()Lmaster/flame/danmaku/danmaku/model/l;
    .locals 1

    .line 44
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/utils/BiliDanmukuParser;->parse()Lmaster/flame/danmaku/danmaku/model/android/e;

    move-result-object v0

    return-object v0
.end method

.method public setDisplayer(Lmaster/flame/danmaku/danmaku/model/m;)Lmaster/flame/danmaku/danmaku/a/a;
    .locals 1

    .line 286
    invoke-super {p0, p1}, Lmaster/flame/danmaku/danmaku/a/a;->setDisplayer(Lmaster/flame/danmaku/danmaku/model/m;)Lmaster/flame/danmaku/danmaku/a/a;

    .line 287
    iget p1, p0, Lcom/mh/movie/core/mvp/ui/utils/BiliDanmukuParser;->mDispWidth:I

    int-to-float p1, p1

    const v0, 0x442a8000    # 682.0f

    div-float/2addr p1, v0

    iput p1, p0, Lcom/mh/movie/core/mvp/ui/utils/BiliDanmukuParser;->mDispScaleX:F

    .line 288
    iget p1, p0, Lcom/mh/movie/core/mvp/ui/utils/BiliDanmukuParser;->mDispHeight:I

    int-to-float p1, p1

    const/high16 v0, 0x43db0000    # 438.0f

    div-float/2addr p1, v0

    iput p1, p0, Lcom/mh/movie/core/mvp/ui/utils/BiliDanmukuParser;->mDispScaleY:F

    return-object p0
.end method
