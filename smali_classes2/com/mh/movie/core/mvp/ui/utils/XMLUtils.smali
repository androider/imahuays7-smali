.class public Lcom/mh/movie/core/mvp/ui/utils/XMLUtils;
.super Ljava/lang/Object;
.source "XMLUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mh/movie/core/mvp/ui/utils/XMLUtils$MapDeserializerDoubleAsIntFix;
    }
.end annotation


# static fields
.field private static rootElement:Lorg/dom4j/Element;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bean2Json(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 104
    new-instance v0, Lcom/google/gson/e;

    invoke-direct {v0}, Lcom/google/gson/e;-><init>()V

    .line 105
    invoke-virtual {v0, p0}, Lcom/google/gson/e;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getCountryGroup(Landroid/content/Context;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lorg/dom4j/Node;",
            ">;"
        }
    .end annotation

    .line 50
    new-instance v0, Lorg/dom4j/io/SAXReader;

    invoke-direct {v0}, Lorg/dom4j/io/SAXReader;-><init>()V

    .line 53
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    const-string v1, "default_country.xml"

    invoke-virtual {p0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/dom4j/io/SAXReader;->read(Ljava/io/InputStream;)Lorg/dom4j/Document;

    move-result-object p0

    .line 54
    invoke-interface {p0}, Lorg/dom4j/Document;->getRootElement()Lorg/dom4j/Element;

    move-result-object p0

    sput-object p0, Lcom/mh/movie/core/mvp/ui/utils/XMLUtils;->rootElement:Lorg/dom4j/Element;

    .line 55
    sget-object p0, Lcom/mh/movie/core/mvp/ui/utils/XMLUtils;->rootElement:Lorg/dom4j/Element;

    const-string v0, "//group"

    invoke-interface {p0, v0}, Lorg/dom4j/Element;->selectNodes(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static json2Map(Ljava/lang/String;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "TK;TT;>;"
        }
    .end annotation

    .line 82
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 85
    :try_start_0
    new-instance v1, Lcom/google/gson/f;

    invoke-direct {v1}, Lcom/google/gson/f;-><init>()V

    .line 86
    new-instance v2, Lcom/mh/movie/core/mvp/ui/utils/XMLUtils$1;

    invoke-direct {v2}, Lcom/mh/movie/core/mvp/ui/utils/XMLUtils$1;-><init>()V

    .line 87
    invoke-virtual {v2}, Lcom/mh/movie/core/mvp/ui/utils/XMLUtils$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    new-instance v3, Lcom/mh/movie/core/mvp/ui/utils/XMLUtils$MapDeserializerDoubleAsIntFix;

    invoke-direct {v3}, Lcom/mh/movie/core/mvp/ui/utils/XMLUtils$MapDeserializerDoubleAsIntFix;-><init>()V

    .line 86
    invoke-virtual {v1, v2, v3}, Lcom/google/gson/f;->a(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/f;

    .line 88
    invoke-virtual {v1}, Lcom/google/gson/f;->c()Lcom/google/gson/e;

    move-result-object v1

    .line 89
    new-instance v2, Lcom/mh/movie/core/mvp/ui/utils/XMLUtils$2;

    invoke-direct {v2}, Lcom/mh/movie/core/mvp/ui/utils/XMLUtils$2;-><init>()V

    .line 90
    invoke-virtual {v2}, Lcom/mh/movie/core/mvp/ui/utils/XMLUtils$2;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 89
    invoke-virtual {v1, p0, v2}, Lcom/google/gson/e;->a(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    if-nez p0, :cond_0

    .line 93
    :try_start_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-object p0, v0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v4, v0

    move-object v0, p0

    move-object p0, v4

    goto :goto_1

    :cond_0
    :goto_0
    return-object p0

    :catch_1
    move-exception p0

    .line 96
    :goto_1
    invoke-static {p0}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static map2Json(Ljava/util/Map;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TT;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 69
    new-instance v0, Lcom/google/gson/e;

    invoke-direct {v0}, Lcom/google/gson/e;-><init>()V

    .line 70
    invoke-virtual {v0, p0}, Lcom/google/gson/e;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static releaseRootElement()V
    .locals 1

    const/4 v0, 0x0

    .line 64
    sput-object v0, Lcom/mh/movie/core/mvp/ui/utils/XMLUtils;->rootElement:Lorg/dom4j/Element;

    return-void
.end method

.method public static searchCountryByName(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 39
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "//country[starts-with(@name,\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\')]"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 40
    sget-object v1, Lcom/mh/movie/core/mvp/ui/utils/XMLUtils;->rootElement:Lorg/dom4j/Element;

    invoke-interface {v1, p0}, Lorg/dom4j/Element;->selectNodes(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    const/4 v1, 0x0

    .line 41
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 42
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/dom4j/Node;

    invoke-interface {v2}, Lorg/dom4j/Node;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static set2Json(Ljava/util/Collection;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TE;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 76
    new-instance v0, Lcom/google/gson/e;

    invoke-direct {v0}, Lcom/google/gson/e;-><init>()V

    .line 77
    invoke-virtual {v0, p0}, Lcom/google/gson/e;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
