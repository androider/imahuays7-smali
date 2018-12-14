.class public Lorg/dom4j/bean/BeanMetaData;
.super Ljava/lang/Object;
.source "BeanMetaData.java"


# static fields
.field private static final DOCUMENT_FACTORY:Lorg/dom4j/DocumentFactory;

.field protected static final NULL_ARGS:[Ljava/lang/Object;

.field private static singletonCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lorg/dom4j/bean/BeanMetaData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private beanClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private nameMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private propertyDescriptors:[Ljava/beans/PropertyDescriptor;

.field private qNames:[Lorg/dom4j/QName;

.field private readMethods:[Ljava/lang/reflect/Method;

.field private writeMethods:[Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    .line 31
    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Lorg/dom4j/bean/BeanMetaData;->NULL_ARGS:[Ljava/lang/Object;

    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/dom4j/bean/BeanMetaData;->singletonCache:Ljava/util/Map;

    .line 37
    invoke-static {}, Lorg/dom4j/bean/BeanDocumentFactory;->getInstance()Lorg/dom4j/DocumentFactory;

    move-result-object v0

    sput-object v0, Lorg/dom4j/bean/BeanMetaData;->DOCUMENT_FACTORY:Lorg/dom4j/DocumentFactory;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/dom4j/bean/BeanMetaData;->nameMap:Ljava/util/Map;

    .line 60
    iput-object p1, p0, Lorg/dom4j/bean/BeanMetaData;->beanClass:Ljava/lang/Class;

    if-eqz p1, :cond_0

    .line 64
    :try_start_0
    invoke-static {p1}, Ljava/beans/Introspector;->getBeanInfo(Ljava/lang/Class;)Ljava/beans/BeanInfo;

    move-result-object p1

    .line 65
    invoke-interface {p1}, Ljava/beans/BeanInfo;->getPropertyDescriptors()[Ljava/beans/PropertyDescriptor;

    move-result-object p1

    iput-object p1, p0, Lorg/dom4j/bean/BeanMetaData;->propertyDescriptors:[Ljava/beans/PropertyDescriptor;
    :try_end_0
    .catch Ljava/beans/IntrospectionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 67
    invoke-virtual {p0, p1}, Lorg/dom4j/bean/BeanMetaData;->handleException(Ljava/lang/Exception;)V

    .line 71
    :cond_0
    :goto_0
    iget-object p1, p0, Lorg/dom4j/bean/BeanMetaData;->propertyDescriptors:[Ljava/beans/PropertyDescriptor;

    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 72
    new-array p1, v0, [Ljava/beans/PropertyDescriptor;

    iput-object p1, p0, Lorg/dom4j/bean/BeanMetaData;->propertyDescriptors:[Ljava/beans/PropertyDescriptor;

    .line 75
    :cond_1
    iget-object p1, p0, Lorg/dom4j/bean/BeanMetaData;->propertyDescriptors:[Ljava/beans/PropertyDescriptor;

    array-length p1, p1

    .line 76
    new-array v1, p1, [Lorg/dom4j/QName;

    iput-object v1, p0, Lorg/dom4j/bean/BeanMetaData;->qNames:[Lorg/dom4j/QName;

    .line 77
    new-array v1, p1, [Ljava/lang/reflect/Method;

    iput-object v1, p0, Lorg/dom4j/bean/BeanMetaData;->readMethods:[Ljava/lang/reflect/Method;

    .line 78
    new-array v1, p1, [Ljava/lang/reflect/Method;

    iput-object v1, p0, Lorg/dom4j/bean/BeanMetaData;->writeMethods:[Ljava/lang/reflect/Method;

    :goto_1
    if-ge v0, p1, :cond_2

    .line 81
    iget-object v1, p0, Lorg/dom4j/bean/BeanMetaData;->propertyDescriptors:[Ljava/beans/PropertyDescriptor;

    aget-object v1, v1, v0

    .line 82
    invoke-virtual {v1}, Ljava/beans/PropertyDescriptor;->getName()Ljava/lang/String;

    move-result-object v2

    .line 83
    sget-object v3, Lorg/dom4j/bean/BeanMetaData;->DOCUMENT_FACTORY:Lorg/dom4j/DocumentFactory;

    invoke-virtual {v3, v2}, Lorg/dom4j/DocumentFactory;->createQName(Ljava/lang/String;)Lorg/dom4j/QName;

    move-result-object v3

    .line 84
    iget-object v4, p0, Lorg/dom4j/bean/BeanMetaData;->qNames:[Lorg/dom4j/QName;

    aput-object v3, v4, v0

    .line 85
    iget-object v4, p0, Lorg/dom4j/bean/BeanMetaData;->readMethods:[Ljava/lang/reflect/Method;

    invoke-virtual {v1}, Ljava/beans/PropertyDescriptor;->getReadMethod()Ljava/lang/reflect/Method;

    move-result-object v5

    aput-object v5, v4, v0

    .line 86
    iget-object v4, p0, Lorg/dom4j/bean/BeanMetaData;->writeMethods:[Ljava/lang/reflect/Method;

    invoke-virtual {v1}, Ljava/beans/PropertyDescriptor;->getWriteMethod()Ljava/lang/reflect/Method;

    move-result-object v1

    aput-object v1, v4, v0

    .line 88
    iget-object v1, p0, Lorg/dom4j/bean/BeanMetaData;->nameMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    iget-object v1, p0, Lorg/dom4j/bean/BeanMetaData;->nameMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public static get(Ljava/lang/Class;)Lorg/dom4j/bean/BeanMetaData;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lorg/dom4j/bean/BeanMetaData;"
        }
    .end annotation

    .line 102
    sget-object v0, Lorg/dom4j/bean/BeanMetaData;->singletonCache:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/dom4j/bean/BeanMetaData;

    if-nez v0, :cond_0

    .line 105
    new-instance v0, Lorg/dom4j/bean/BeanMetaData;

    invoke-direct {v0, p0}, Lorg/dom4j/bean/BeanMetaData;-><init>(Ljava/lang/Class;)V

    .line 106
    sget-object v1, Lorg/dom4j/bean/BeanMetaData;->singletonCache:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method


# virtual methods
.method public attributeCount()I
    .locals 1

    .line 118
    iget-object v0, p0, Lorg/dom4j/bean/BeanMetaData;->propertyDescriptors:[Ljava/beans/PropertyDescriptor;

    array-length v0, v0

    return v0
.end method

.method public createAttributeList(Lorg/dom4j/bean/BeanElement;)Lorg/dom4j/bean/BeanAttributeList;
    .locals 1

    .line 122
    new-instance v0, Lorg/dom4j/bean/BeanAttributeList;

    invoke-direct {v0, p1, p0}, Lorg/dom4j/bean/BeanAttributeList;-><init>(Lorg/dom4j/bean/BeanElement;Lorg/dom4j/bean/BeanMetaData;)V

    return-object v0
.end method

.method public getData(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 143
    :try_start_0
    iget-object v0, p0, Lorg/dom4j/bean/BeanMetaData;->readMethods:[Ljava/lang/reflect/Method;

    aget-object p1, v0, p1

    .line 145
    sget-object v0, Lorg/dom4j/bean/BeanMetaData;->NULL_ARGS:[Ljava/lang/Object;

    invoke-virtual {p1, p2, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 147
    invoke-virtual {p0, p1}, Lorg/dom4j/bean/BeanMetaData;->handleException(Ljava/lang/Exception;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public getIndex(Ljava/lang/String;)I
    .locals 1

    .line 130
    iget-object v0, p0, Lorg/dom4j/bean/BeanMetaData;->nameMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_0

    .line 132
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method public getIndex(Lorg/dom4j/QName;)I
    .locals 1

    .line 136
    iget-object v0, p0, Lorg/dom4j/bean/BeanMetaData;->nameMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_0

    .line 138
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method public getQName(I)Lorg/dom4j/QName;
    .locals 1

    .line 126
    iget-object v0, p0, Lorg/dom4j/bean/BeanMetaData;->qNames:[Lorg/dom4j/QName;

    aget-object p1, v0, p1

    return-object p1
.end method

.method protected handleException(Ljava/lang/Exception;)V
    .locals 0

    return-void
.end method

.method public setData(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    .line 155
    :try_start_0
    iget-object v0, p0, Lorg/dom4j/bean/BeanMetaData;->writeMethods:[Ljava/lang/reflect/Method;

    aget-object p1, v0, p1

    const/4 v0, 0x1

    .line 156
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    .line 157
    invoke-virtual {p1, p2, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 159
    invoke-virtual {p0, p1}, Lorg/dom4j/bean/BeanMetaData;->handleException(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method
