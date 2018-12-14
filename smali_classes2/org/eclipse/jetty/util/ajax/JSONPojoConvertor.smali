.class public Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor;
.super Ljava/lang/Object;
.source "JSONPojoConvertor.java"

# interfaces
.implements Lorg/eclipse/jetty/util/ajax/JSON$Convertor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor$NumberType;,
        Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor$Setter;
    }
.end annotation


# static fields
.field public static final DOUBLE:Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor$NumberType;

.field public static final FLOAT:Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor$NumberType;

.field public static final GETTER_ARG:[Ljava/lang/Object;

.field public static final INTEGER:Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor$NumberType;

.field private static final LOG:Lorg/eclipse/jetty/util/log/Logger;

.field public static final LONG:Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor$NumberType;

.field public static final NULL_ARG:[Ljava/lang/Object;

.field public static final SHORT:Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor$NumberType;

.field private static final __numberTypes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor$NumberType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected _excluded:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected _fromJSON:Z

.field protected _getters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field

.field protected _pojoClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field protected _setters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor$Setter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 46
    const-class v0, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const/4 v0, 0x0

    .line 47
    new-array v1, v0, [Ljava/lang/Object;

    sput-object v1, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor;->GETTER_ARG:[Ljava/lang/Object;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    sput-object v1, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor;->NULL_ARG:[Ljava/lang/Object;

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor;->__numberTypes:Ljava/util/Map;

    .line 378
    new-instance v0, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor$1;

    invoke-direct {v0}, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor$1;-><init>()V

    sput-object v0, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor;->SHORT:Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor$NumberType;

    .line 386
    new-instance v0, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor$2;

    invoke-direct {v0}, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor$2;-><init>()V

    sput-object v0, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor;->INTEGER:Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor$NumberType;

    .line 394
    new-instance v0, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor$3;

    invoke-direct {v0}, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor$3;-><init>()V

    sput-object v0, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor;->FLOAT:Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor$NumberType;

    .line 402
    new-instance v0, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor$4;

    invoke-direct {v0}, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor$4;-><init>()V

    sput-object v0, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor;->LONG:Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor$NumberType;

    .line 410
    new-instance v0, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor$5;

    invoke-direct {v0}, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor$5;-><init>()V

    sput-object v0, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor;->DOUBLE:Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor$NumberType;

    .line 420
    sget-object v0, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor;->__numberTypes:Ljava/util/Map;

    const-class v1, Ljava/lang/Short;

    sget-object v2, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor;->SHORT:Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor$NumberType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 421
    sget-object v0, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor;->__numberTypes:Ljava/util/Map;

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    sget-object v2, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor;->SHORT:Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor$NumberType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 422
    sget-object v0, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor;->__numberTypes:Ljava/util/Map;

    const-class v1, Ljava/lang/Integer;

    sget-object v2, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor;->INTEGER:Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor$NumberType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 423
    sget-object v0, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor;->__numberTypes:Ljava/util/Map;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    sget-object v2, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor;->INTEGER:Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor$NumberType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 424
    sget-object v0, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor;->__numberTypes:Ljava/util/Map;

    const-class v1, Ljava/lang/Long;

    sget-object v2, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor;->LONG:Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor$NumberType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 425
    sget-object v0, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor;->__numberTypes:Ljava/util/Map;

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    sget-object v2, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor;->LONG:Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor$NumberType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 426
    sget-object v0, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor;->__numberTypes:Ljava/util/Map;

    const-class v1, Ljava/lang/Float;

    sget-object v2, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor;->FLOAT:Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor$NumberType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 427
    sget-object v0, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor;->__numberTypes:Ljava/util/Map;

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    sget-object v2, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor;->FLOAT:Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor$NumberType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 428
    sget-object v0, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor;->__numberTypes:Ljava/util/Map;

    const-class v1, Ljava/lang/Double;

    sget-object v2, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor;->DOUBLE:Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor$NumberType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 429
    sget-object v0, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor;->__numberTypes:Ljava/util/Map;

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    sget-object v2, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor;->DOUBLE:Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor$NumberType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 66
    check-cast v0, Ljava/util/Set;

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor;-><init>(Ljava/lang/Class;Ljava/util/Set;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 84
    invoke-direct {p0, p1, p2, v0}, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor;-><init>(Ljava/lang/Class;Ljava/util/Set;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Ljava/util/Set;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor;->_getters:Ljava/util/Map;

    .line 58
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor;->_setters:Ljava/util/Map;

    .line 94
    iput-object p1, p0, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor;->_pojoClass:Ljava/lang/Class;

    .line 95
    iput-object p2, p0, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor;->_excluded:Ljava/util/Set;

    .line 96
    iput-boolean p3, p0, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor;->_fromJSON:Z

    .line 97
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor;->init()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;Z)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 106
    check-cast v0, Ljava/util/Set;

    invoke-direct {p0, p1, v0, p2}, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor;-><init>(Ljava/lang/Class;Ljava/util/Set;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;[Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 75
    new-instance v0, Ljava/util/HashSet;

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-direct {v0, p2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    const/4 p2, 0x1

    invoke-direct {p0, p1, v0, p2}, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor;-><init>(Ljava/lang/Class;Ljava/util/Set;Z)V

    return-void
.end method

.method static synthetic access$000()Ljava/util/Map;
    .locals 1

    .line 44
    sget-object v0, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor;->__numberTypes:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$100()Lorg/eclipse/jetty/util/log/Logger;
    .locals 1

    .line 44
    sget-object v0, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    return-object v0
.end method

.method public static getNumberType(Ljava/lang/Class;)Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor$NumberType;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor$NumberType;"
        }
    .end annotation

    .line 52
    sget-object v0, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor;->__numberTypes:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor$NumberType;

    return-object p0
.end method


# virtual methods
.method protected addGetter(Ljava/lang/String;Ljava/lang/reflect/Method;)V
    .locals 1

    .line 151
    iget-object v0, p0, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor;->_getters:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected addSetter(Ljava/lang/String;Ljava/lang/reflect/Method;)V
    .locals 2

    .line 157
    iget-object v0, p0, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor;->_setters:Ljava/util/Map;

    new-instance v1, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor$Setter;

    invoke-direct {v1, p1, p2}, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor$Setter;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public fromJSON(Ljava/util/Map;)Ljava/lang/Object;
    .locals 1

    .line 184
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor;->_pojoClass:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 192
    invoke-virtual {p0, v0, p1}, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor;->setProps(Ljava/lang/Object;Ljava/util/Map;)I

    return-object v0

    :catch_0
    move-exception p1

    .line 189
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method protected getExcludedCount()I
    .locals 1

    .line 175
    iget-object v0, p0, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor;->_excluded:Ljava/util/Set;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor;->_excluded:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method protected getSetter(Ljava/lang/String;)Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor$Setter;
    .locals 1

    .line 163
    iget-object v0, p0, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor;->_setters:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor$Setter;

    return-object p1
.end method

.method protected includeField(Ljava/lang/String;Ljava/lang/reflect/Method;)Z
    .locals 0

    .line 169
    iget-object p2, p0, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor;->_excluded:Ljava/util/Set;

    if-eqz p2, :cond_1

    iget-object p2, p0, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor;->_excluded:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method protected init()V
    .locals 8

    .line 112
    iget-object v0, p0, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor;->_pojoClass:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    .line 113
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_2

    .line 115
    aget-object v2, v0, v1

    .line 116
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v3

    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v3

    const-class v4, Ljava/lang/Object;

    if-eq v3, v4, :cond_1

    .line 118
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    .line 119
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v4

    array-length v4, v4

    const/4 v5, 0x4

    const/4 v6, 0x3

    packed-switch v4, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    const-string v4, "set"

    .line 136
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v6, :cond_1

    .line 138
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v6, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 139
    invoke-virtual {p0, v3, v2}, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor;->includeField(Ljava/lang/String;Ljava/lang/reflect/Method;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 140
    invoke-virtual {p0, v3, v2}, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor;->addSetter(Ljava/lang/String;Ljava/lang/reflect/Method;)V

    goto :goto_2

    .line 123
    :pswitch_1
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v4

    if-eqz v4, :cond_1

    const-string v4, "is"

    .line 125
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v7, 0x2

    if-le v4, v7, :cond_0

    .line 126
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    sget-object v7, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v5, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_0
    const-string v4, "get"

    .line 127
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v6, :cond_1

    .line 128
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v6, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 131
    :goto_1
    invoke-virtual {p0, v3, v2}, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor;->includeField(Ljava/lang/String;Ljava/lang/reflect/Method;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 132
    invoke-virtual {p0, v3, v2}, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor;->addGetter(Ljava/lang/String;Ljava/lang/reflect/Method;)V

    :cond_1
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected log(Ljava/lang/Throwable;)V
    .locals 1

    .line 247
    sget-object v0, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v0, p1}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    return-void
.end method

.method public setProps(Ljava/lang/Object;Ljava/util/Map;)I
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Map<",
            "**>;)I"
        }
    .end annotation

    .line 200
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v0, 0x0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 202
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 203
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, v3}, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor;->getSetter(Ljava/lang/String;)Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor$Setter;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 208
    :try_start_0
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, p1, v4}, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor$Setter;->invoke(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v4

    .line 214
    sget-object v5, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor;->_pojoClass:Ljava/lang/Class;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "#"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor$Setter;->getPropertyName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " not set from "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "="

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v0, [Ljava/lang/Object;

    invoke-interface {v5, v2, v3}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 216
    invoke-virtual {p0, v4}, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor;->log(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    return v1
.end method

.method public toJSON(Ljava/lang/Object;Lorg/eclipse/jetty/util/ajax/JSON$Output;)V
    .locals 8

    .line 226
    iget-boolean v0, p0, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor;->_fromJSON:Z

    if-eqz v0, :cond_0

    .line 227
    iget-object v0, p0, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor;->_pojoClass:Ljava/lang/Class;

    invoke-interface {p2, v0}, Lorg/eclipse/jetty/util/ajax/JSON$Output;->addClass(Ljava/lang/Class;)V

    .line 228
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor;->_getters:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 232
    :try_start_0
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/reflect/Method;

    sget-object v4, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor;->GETTER_ARG:[Ljava/lang/Object;

    invoke-virtual {v3, p1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p2, v2, v3}, Lorg/eclipse/jetty/util/ajax/JSON$Output;->add(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 237
    sget-object v3, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v4, "{} property \'{}\' excluded. (errors)"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor;->_pojoClass:Ljava/lang/Class;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v5, v6

    invoke-interface {v3, v4, v5}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 239
    invoke-virtual {p0, v2}, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor;->log(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    return-void
.end method
