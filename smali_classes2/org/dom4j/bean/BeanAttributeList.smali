.class public Lorg/dom4j/bean/BeanAttributeList;
.super Ljava/util/AbstractList;
.source "BeanAttributeList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList<",
        "Lorg/dom4j/Attribute;",
        ">;"
    }
.end annotation


# instance fields
.field private attributes:[Lorg/dom4j/bean/BeanAttribute;

.field private beanMetaData:Lorg/dom4j/bean/BeanMetaData;

.field private parent:Lorg/dom4j/bean/BeanElement;


# direct methods
.method public constructor <init>(Lorg/dom4j/bean/BeanElement;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 41
    iput-object p1, p0, Lorg/dom4j/bean/BeanAttributeList;->parent:Lorg/dom4j/bean/BeanElement;

    .line 43
    invoke-virtual {p1}, Lorg/dom4j/bean/BeanElement;->getData()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 44
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 45
    :goto_0
    invoke-static {p1}, Lorg/dom4j/bean/BeanMetaData;->get(Ljava/lang/Class;)Lorg/dom4j/bean/BeanMetaData;

    move-result-object p1

    iput-object p1, p0, Lorg/dom4j/bean/BeanAttributeList;->beanMetaData:Lorg/dom4j/bean/BeanMetaData;

    .line 46
    iget-object p1, p0, Lorg/dom4j/bean/BeanAttributeList;->beanMetaData:Lorg/dom4j/bean/BeanMetaData;

    invoke-virtual {p1}, Lorg/dom4j/bean/BeanMetaData;->attributeCount()I

    move-result p1

    new-array p1, p1, [Lorg/dom4j/bean/BeanAttribute;

    iput-object p1, p0, Lorg/dom4j/bean/BeanAttributeList;->attributes:[Lorg/dom4j/bean/BeanAttribute;

    return-void
.end method

.method public constructor <init>(Lorg/dom4j/bean/BeanElement;Lorg/dom4j/bean/BeanMetaData;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 35
    iput-object p1, p0, Lorg/dom4j/bean/BeanAttributeList;->parent:Lorg/dom4j/bean/BeanElement;

    .line 36
    iput-object p2, p0, Lorg/dom4j/bean/BeanAttributeList;->beanMetaData:Lorg/dom4j/bean/BeanMetaData;

    .line 37
    invoke-virtual {p2}, Lorg/dom4j/bean/BeanMetaData;->attributeCount()I

    move-result p1

    new-array p1, p1, [Lorg/dom4j/bean/BeanAttribute;

    iput-object p1, p0, Lorg/dom4j/bean/BeanAttributeList;->attributes:[Lorg/dom4j/bean/BeanAttribute;

    return-void
.end method


# virtual methods
.method public add(ILorg/dom4j/bean/BeanAttribute;)V
    .locals 0

    .line 115
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "add(int,Object) unsupported"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public add(Lorg/dom4j/bean/BeanAttribute;)Z
    .locals 1

    .line 111
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "add(Object) unsupported"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public attribute(I)Lorg/dom4j/bean/BeanAttribute;
    .locals 2

    if-ltz p1, :cond_1

    .line 62
    iget-object v0, p0, Lorg/dom4j/bean/BeanAttributeList;->attributes:[Lorg/dom4j/bean/BeanAttribute;

    array-length v0, v0

    if-gt p1, v0, :cond_1

    .line 63
    iget-object v0, p0, Lorg/dom4j/bean/BeanAttributeList;->attributes:[Lorg/dom4j/bean/BeanAttribute;

    aget-object v0, v0, p1

    if-nez v0, :cond_0

    .line 66
    iget-object v0, p0, Lorg/dom4j/bean/BeanAttributeList;->parent:Lorg/dom4j/bean/BeanElement;

    invoke-virtual {p0, v0, p1}, Lorg/dom4j/bean/BeanAttributeList;->createAttribute(Lorg/dom4j/bean/BeanElement;I)Lorg/dom4j/bean/BeanAttribute;

    move-result-object v0

    .line 67
    iget-object v1, p0, Lorg/dom4j/bean/BeanAttributeList;->attributes:[Lorg/dom4j/bean/BeanAttribute;

    aput-object v0, v1, p1

    :cond_0
    return-object v0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public attribute(Ljava/lang/String;)Lorg/dom4j/bean/BeanAttribute;
    .locals 1

    .line 50
    iget-object v0, p0, Lorg/dom4j/bean/BeanAttributeList;->beanMetaData:Lorg/dom4j/bean/BeanMetaData;

    invoke-virtual {v0, p1}, Lorg/dom4j/bean/BeanMetaData;->getIndex(Ljava/lang/String;)I

    move-result p1

    .line 52
    invoke-virtual {p0, p1}, Lorg/dom4j/bean/BeanAttributeList;->attribute(I)Lorg/dom4j/bean/BeanAttribute;

    move-result-object p1

    return-object p1
.end method

.method public attribute(Lorg/dom4j/QName;)Lorg/dom4j/bean/BeanAttribute;
    .locals 1

    .line 56
    iget-object v0, p0, Lorg/dom4j/bean/BeanAttributeList;->beanMetaData:Lorg/dom4j/bean/BeanMetaData;

    invoke-virtual {v0, p1}, Lorg/dom4j/bean/BeanMetaData;->getIndex(Lorg/dom4j/QName;)I

    move-result p1

    .line 58
    invoke-virtual {p0, p1}, Lorg/dom4j/bean/BeanAttributeList;->attribute(I)Lorg/dom4j/bean/BeanAttribute;

    move-result-object p1

    return-object p1
.end method

.method public clear()V
    .locals 5

    .line 134
    iget-object v0, p0, Lorg/dom4j/bean/BeanAttributeList;->attributes:[Lorg/dom4j/bean/BeanAttribute;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    if-eqz v3, :cond_0

    const/4 v4, 0x0

    .line 136
    invoke-virtual {v3, v4}, Lorg/dom4j/bean/BeanAttribute;->setValue(Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected createAttribute(Lorg/dom4j/bean/BeanElement;I)Lorg/dom4j/bean/BeanAttribute;
    .locals 0

    .line 144
    new-instance p1, Lorg/dom4j/bean/BeanAttribute;

    invoke-direct {p1, p0, p2}, Lorg/dom4j/bean/BeanAttribute;-><init>(Lorg/dom4j/bean/BeanAttributeList;I)V

    return-object p1
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 0

    .line 24
    invoke-virtual {p0, p1}, Lorg/dom4j/bean/BeanAttributeList;->get(I)Lorg/dom4j/bean/BeanAttribute;

    move-result-object p1

    return-object p1
.end method

.method public get(I)Lorg/dom4j/bean/BeanAttribute;
    .locals 2

    .line 100
    iget-object v0, p0, Lorg/dom4j/bean/BeanAttributeList;->attributes:[Lorg/dom4j/bean/BeanAttribute;

    aget-object v0, v0, p1

    if-nez v0, :cond_0

    .line 103
    iget-object v0, p0, Lorg/dom4j/bean/BeanAttributeList;->parent:Lorg/dom4j/bean/BeanElement;

    invoke-virtual {p0, v0, p1}, Lorg/dom4j/bean/BeanAttributeList;->createAttribute(Lorg/dom4j/bean/BeanElement;I)Lorg/dom4j/bean/BeanAttribute;

    move-result-object v0

    .line 104
    iget-object v1, p0, Lorg/dom4j/bean/BeanAttributeList;->attributes:[Lorg/dom4j/bean/BeanAttribute;

    aput-object v0, v1, p1

    :cond_0
    return-object v0
.end method

.method public getData(I)Ljava/lang/Object;
    .locals 2

    .line 85
    iget-object v0, p0, Lorg/dom4j/bean/BeanAttributeList;->beanMetaData:Lorg/dom4j/bean/BeanMetaData;

    iget-object v1, p0, Lorg/dom4j/bean/BeanAttributeList;->parent:Lorg/dom4j/bean/BeanElement;

    invoke-virtual {v1}, Lorg/dom4j/bean/BeanElement;->getData()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/dom4j/bean/BeanMetaData;->getData(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getParent()Lorg/dom4j/bean/BeanElement;
    .locals 1

    .line 77
    iget-object v0, p0, Lorg/dom4j/bean/BeanAttributeList;->parent:Lorg/dom4j/bean/BeanElement;

    return-object v0
.end method

.method public getQName(I)Lorg/dom4j/QName;
    .locals 1

    .line 81
    iget-object v0, p0, Lorg/dom4j/bean/BeanAttributeList;->beanMetaData:Lorg/dom4j/bean/BeanMetaData;

    invoke-virtual {v0, p1}, Lorg/dom4j/bean/BeanMetaData;->getQName(I)Lorg/dom4j/QName;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic remove(I)Ljava/lang/Object;
    .locals 0

    .line 24
    invoke-virtual {p0, p1}, Lorg/dom4j/bean/BeanAttributeList;->remove(I)Lorg/dom4j/bean/BeanAttribute;

    move-result-object p1

    return-object p1
.end method

.method public remove(I)Lorg/dom4j/bean/BeanAttribute;
    .locals 1

    .line 127
    invoke-virtual {p0, p1}, Lorg/dom4j/bean/BeanAttributeList;->get(I)Lorg/dom4j/bean/BeanAttribute;

    move-result-object p1

    const/4 v0, 0x0

    .line 128
    invoke-virtual {p1, v0}, Lorg/dom4j/bean/BeanAttribute;->setValue(Ljava/lang/String;)V

    return-object p1
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public set(ILorg/dom4j/bean/BeanAttribute;)Lorg/dom4j/bean/BeanAttribute;
    .locals 0

    .line 119
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "set(int,Object) unsupported"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setData(ILjava/lang/Object;)V
    .locals 2

    .line 89
    iget-object v0, p0, Lorg/dom4j/bean/BeanAttributeList;->beanMetaData:Lorg/dom4j/bean/BeanMetaData;

    iget-object v1, p0, Lorg/dom4j/bean/BeanAttributeList;->parent:Lorg/dom4j/bean/BeanElement;

    invoke-virtual {v1}, Lorg/dom4j/bean/BeanElement;->getData()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p1, v1, p2}, Lorg/dom4j/bean/BeanMetaData;->setData(ILjava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public size()I
    .locals 1

    .line 96
    iget-object v0, p0, Lorg/dom4j/bean/BeanAttributeList;->attributes:[Lorg/dom4j/bean/BeanAttribute;

    array-length v0, v0

    return v0
.end method
