.class public Lorg/dom4j/bean/BeanAttribute;
.super Lorg/dom4j/tree/AbstractAttribute;
.source "BeanAttribute.java"


# instance fields
.field private final beanList:Lorg/dom4j/bean/BeanAttributeList;

.field private final index:I


# direct methods
.method public constructor <init>(Lorg/dom4j/bean/BeanAttributeList;I)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lorg/dom4j/tree/AbstractAttribute;-><init>()V

    .line 31
    iput-object p1, p0, Lorg/dom4j/bean/BeanAttribute;->beanList:Lorg/dom4j/bean/BeanAttributeList;

    .line 32
    iput p2, p0, Lorg/dom4j/bean/BeanAttribute;->index:I

    return-void
.end method


# virtual methods
.method public getData()Ljava/lang/Object;
    .locals 2

    .line 54
    iget-object v0, p0, Lorg/dom4j/bean/BeanAttribute;->beanList:Lorg/dom4j/bean/BeanAttributeList;

    iget v1, p0, Lorg/dom4j/bean/BeanAttribute;->index:I

    invoke-virtual {v0, v1}, Lorg/dom4j/bean/BeanAttributeList;->getData(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getParent()Lorg/dom4j/Element;
    .locals 1

    .line 40
    iget-object v0, p0, Lorg/dom4j/bean/BeanAttribute;->beanList:Lorg/dom4j/bean/BeanAttributeList;

    invoke-virtual {v0}, Lorg/dom4j/bean/BeanAttributeList;->getParent()Lorg/dom4j/bean/BeanElement;

    move-result-object v0

    return-object v0
.end method

.method public getQName()Lorg/dom4j/QName;
    .locals 2

    .line 36
    iget-object v0, p0, Lorg/dom4j/bean/BeanAttribute;->beanList:Lorg/dom4j/bean/BeanAttributeList;

    iget v1, p0, Lorg/dom4j/bean/BeanAttribute;->index:I

    invoke-virtual {v0, v1}, Lorg/dom4j/bean/BeanAttributeList;->getQName(I)Lorg/dom4j/QName;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .line 44
    invoke-virtual {p0}, Lorg/dom4j/bean/BeanAttribute;->getData()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 46
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public setData(Ljava/lang/Object;)V
    .locals 2

    .line 58
    iget-object v0, p0, Lorg/dom4j/bean/BeanAttribute;->beanList:Lorg/dom4j/bean/BeanAttributeList;

    iget v1, p0, Lorg/dom4j/bean/BeanAttribute;->index:I

    invoke-virtual {v0, v1, p1}, Lorg/dom4j/bean/BeanAttributeList;->setData(ILjava/lang/Object;)V

    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 2

    .line 50
    iget-object v0, p0, Lorg/dom4j/bean/BeanAttribute;->beanList:Lorg/dom4j/bean/BeanAttributeList;

    iget v1, p0, Lorg/dom4j/bean/BeanAttribute;->index:I

    invoke-virtual {v0, v1, p1}, Lorg/dom4j/bean/BeanAttributeList;->setData(ILjava/lang/Object;)V

    return-void
.end method
