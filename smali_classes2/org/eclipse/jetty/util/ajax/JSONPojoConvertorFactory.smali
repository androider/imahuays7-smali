.class public Lorg/eclipse/jetty/util/ajax/JSONPojoConvertorFactory;
.super Ljava/lang/Object;
.source "JSONPojoConvertorFactory.java"

# interfaces
.implements Lorg/eclipse/jetty/util/ajax/JSON$Convertor;


# instance fields
.field private final _fromJson:Z

.field private final _json:Lorg/eclipse/jetty/util/ajax/JSON;


# direct methods
.method public constructor <init>(Lorg/eclipse/jetty/util/ajax/JSON;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    .line 36
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 38
    :cond_0
    iput-object p1, p0, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertorFactory;->_json:Lorg/eclipse/jetty/util/ajax/JSON;

    const/4 p1, 0x1

    .line 39
    iput-boolean p1, p0, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertorFactory;->_fromJson:Z

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jetty/util/ajax/JSON;Z)V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    .line 53
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 55
    :cond_0
    iput-object p1, p0, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertorFactory;->_json:Lorg/eclipse/jetty/util/ajax/JSON;

    .line 56
    iput-boolean p2, p0, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertorFactory;->_fromJson:Z

    return-void
.end method


# virtual methods
.method public fromJSON(Ljava/util/Map;)Ljava/lang/Object;
    .locals 5

    const-string v0, "class"

    .line 86
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 89
    iget-object v1, p0, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertorFactory;->_json:Lorg/eclipse/jetty/util/ajax/JSON;

    invoke-virtual {v1, v0}, Lorg/eclipse/jetty/util/ajax/JSON;->getConvertorFor(Ljava/lang/String;)Lorg/eclipse/jetty/util/ajax/JSON$Convertor;

    move-result-object v1

    if-nez v1, :cond_0

    .line 94
    :try_start_0
    const-class v2, Lorg/eclipse/jetty/util/ajax/JSON;

    invoke-static {v2, v0}, Lorg/eclipse/jetty/util/Loader;->loadClass(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 95
    new-instance v3, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor;

    iget-boolean v4, p0, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertorFactory;->_fromJson:Z

    invoke-direct {v3, v2, v4}, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor;-><init>(Ljava/lang/Class;Z)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 96
    :try_start_1
    iget-object v1, p0, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertorFactory;->_json:Lorg/eclipse/jetty/util/ajax/JSON;

    invoke-virtual {v1, v0, v3}, Lorg/eclipse/jetty/util/ajax/JSON;->addConvertorFor(Ljava/lang/String;Lorg/eclipse/jetty/util/ajax/JSON$Convertor;)V
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v1, v3

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v1, v3

    goto :goto_0

    :catch_1
    move-exception v0

    .line 100
    :goto_0
    sget-object v2, Lorg/eclipse/jetty/util/ajax/JSON;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v2, v0}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/Throwable;)V

    :cond_0
    :goto_1
    if-eqz v1, :cond_1

    .line 105
    invoke-interface {v1, p1}, Lorg/eclipse/jetty/util/ajax/JSON$Convertor;->fromJSON(Ljava/util/Map;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1
    return-object p1
.end method

.method public toJSON(Ljava/lang/Object;Lorg/eclipse/jetty/util/ajax/JSON$Output;)V
    .locals 5

    .line 62
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 63
    iget-object v1, p0, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertorFactory;->_json:Lorg/eclipse/jetty/util/ajax/JSON;

    invoke-virtual {v1, v0}, Lorg/eclipse/jetty/util/ajax/JSON;->getConvertorFor(Ljava/lang/String;)Lorg/eclipse/jetty/util/ajax/JSON$Convertor;

    move-result-object v1

    if-nez v1, :cond_0

    .line 68
    :try_start_0
    const-class v2, Lorg/eclipse/jetty/util/ajax/JSON;

    invoke-static {v2, v0}, Lorg/eclipse/jetty/util/Loader;->loadClass(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 69
    new-instance v3, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor;

    iget-boolean v4, p0, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertorFactory;->_fromJson:Z

    invoke-direct {v3, v2, v4}, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor;-><init>(Ljava/lang/Class;Z)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 70
    :try_start_1
    iget-object v1, p0, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertorFactory;->_json:Lorg/eclipse/jetty/util/ajax/JSON;

    invoke-virtual {v1, v0, v3}, Lorg/eclipse/jetty/util/ajax/JSON;->addConvertorFor(Ljava/lang/String;Lorg/eclipse/jetty/util/ajax/JSON$Convertor;)V
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v1, v3

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v1, v3

    goto :goto_0

    :catch_1
    move-exception v0

    .line 74
    :goto_0
    sget-object v2, Lorg/eclipse/jetty/util/ajax/JSON;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v2, v0}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/Throwable;)V

    :cond_0
    :goto_1
    if-eqz v1, :cond_1

    .line 79
    invoke-interface {v1, p1, p2}, Lorg/eclipse/jetty/util/ajax/JSON$Convertor;->toJSON(Ljava/lang/Object;Lorg/eclipse/jetty/util/ajax/JSON$Output;)V

    :cond_1
    return-void
.end method
