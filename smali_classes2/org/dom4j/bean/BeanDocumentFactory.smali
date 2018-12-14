.class public Lorg/dom4j/bean/BeanDocumentFactory;
.super Lorg/dom4j/DocumentFactory;
.source "BeanDocumentFactory.java"


# static fields
.field private static singleton:Lorg/dom4j/bean/BeanDocumentFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    new-instance v0, Lorg/dom4j/bean/BeanDocumentFactory;

    invoke-direct {v0}, Lorg/dom4j/bean/BeanDocumentFactory;-><init>()V

    sput-object v0, Lorg/dom4j/bean/BeanDocumentFactory;->singleton:Lorg/dom4j/bean/BeanDocumentFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Lorg/dom4j/DocumentFactory;-><init>()V

    return-void
.end method

.method public static getInstance()Lorg/dom4j/DocumentFactory;
    .locals 1

    .line 43
    sget-object v0, Lorg/dom4j/bean/BeanDocumentFactory;->singleton:Lorg/dom4j/bean/BeanDocumentFactory;

    return-object v0
.end method


# virtual methods
.method public createAttribute(Lorg/dom4j/Element;Lorg/dom4j/QName;Ljava/lang/String;)Lorg/dom4j/Attribute;
    .locals 0

    .line 68
    new-instance p1, Lorg/dom4j/tree/DefaultAttribute;

    invoke-direct {p1, p2, p3}, Lorg/dom4j/tree/DefaultAttribute;-><init>(Lorg/dom4j/QName;Ljava/lang/String;)V

    return-object p1
.end method

.method protected createBean(Lorg/dom4j/QName;)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method protected createBean(Lorg/dom4j/QName;Lorg/xml/sax/Attributes;)Ljava/lang/Object;
    .locals 1

    const-string p1, "class"

    .line 77
    invoke-interface {p2, p1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x1

    .line 81
    :try_start_0
    const-class v0, Lorg/dom4j/bean/BeanDocumentFactory;

    .line 82
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 81
    invoke-static {p1, p2, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p1

    .line 84
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 86
    invoke-virtual {p0, p1}, Lorg/dom4j/bean/BeanDocumentFactory;->handleException(Ljava/lang/Exception;)V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public createElement(Lorg/dom4j/QName;)Lorg/dom4j/Element;
    .locals 2

    .line 48
    invoke-virtual {p0, p1}, Lorg/dom4j/bean/BeanDocumentFactory;->createBean(Lorg/dom4j/QName;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 51
    new-instance v0, Lorg/dom4j/bean/BeanElement;

    invoke-direct {v0, p1}, Lorg/dom4j/bean/BeanElement;-><init>(Lorg/dom4j/QName;)V

    return-object v0

    .line 53
    :cond_0
    new-instance v1, Lorg/dom4j/bean/BeanElement;

    invoke-direct {v1, p1, v0}, Lorg/dom4j/bean/BeanElement;-><init>(Lorg/dom4j/QName;Ljava/lang/Object;)V

    return-object v1
.end method

.method public createElement(Lorg/dom4j/QName;Lorg/xml/sax/Attributes;)Lorg/dom4j/Element;
    .locals 1

    .line 58
    invoke-virtual {p0, p1, p2}, Lorg/dom4j/bean/BeanDocumentFactory;->createBean(Lorg/dom4j/QName;Lorg/xml/sax/Attributes;)Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_0

    .line 61
    new-instance p2, Lorg/dom4j/bean/BeanElement;

    invoke-direct {p2, p1}, Lorg/dom4j/bean/BeanElement;-><init>(Lorg/dom4j/QName;)V

    return-object p2

    .line 63
    :cond_0
    new-instance v0, Lorg/dom4j/bean/BeanElement;

    invoke-direct {v0, p1, p2}, Lorg/dom4j/bean/BeanElement;-><init>(Lorg/dom4j/QName;Ljava/lang/Object;)V

    return-object v0
.end method

.method protected handleException(Ljava/lang/Exception;)V
    .locals 3

    .line 95
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#### Warning: couldn\'t create bean: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method
