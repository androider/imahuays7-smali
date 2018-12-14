.class public Lorg/dom4j/xpath/XPathPattern;
.super Ljava/lang/Object;
.source "XPathPattern.java"

# interfaces
.implements Lorg/dom4j/rule/Pattern;


# instance fields
.field private context:Lorg/jaxen/Context;

.field private pattern:Lorg/jaxen/pattern/Pattern;

.field private text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lorg/dom4j/xpath/XPathPattern;->text:Ljava/lang/String;

    .line 53
    new-instance v0, Lorg/jaxen/Context;

    invoke-virtual {p0}, Lorg/dom4j/xpath/XPathPattern;->getContextSupport()Lorg/jaxen/ContextSupport;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jaxen/Context;-><init>(Lorg/jaxen/ContextSupport;)V

    iput-object v0, p0, Lorg/dom4j/xpath/XPathPattern;->context:Lorg/jaxen/Context;

    .line 56
    :try_start_0
    invoke-static {p1}, Lorg/jaxen/pattern/PatternParser;->parse(Ljava/lang/String;)Lorg/jaxen/pattern/Pattern;

    move-result-object v0

    iput-object v0, p0, Lorg/dom4j/xpath/XPathPattern;->pattern:Lorg/jaxen/pattern/Pattern;
    :try_end_0
    .catch Lorg/jaxen/saxpath/SAXPathException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 60
    :catch_0
    new-instance v0, Lorg/dom4j/InvalidXPathException;

    invoke-direct {v0, p1}, Lorg/dom4j/InvalidXPathException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_1
    move-exception v0

    .line 58
    new-instance v1, Lorg/dom4j/InvalidXPathException;

    invoke-virtual {v0}, Lorg/jaxen/saxpath/SAXPathException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, p1, v0}, Lorg/dom4j/InvalidXPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v1
.end method

.method public constructor <init>(Lorg/jaxen/pattern/Pattern;)V
    .locals 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lorg/dom4j/xpath/XPathPattern;->pattern:Lorg/jaxen/pattern/Pattern;

    .line 47
    invoke-virtual {p1}, Lorg/jaxen/pattern/Pattern;->getText()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/dom4j/xpath/XPathPattern;->text:Ljava/lang/String;

    .line 48
    new-instance p1, Lorg/jaxen/Context;

    invoke-virtual {p0}, Lorg/dom4j/xpath/XPathPattern;->getContextSupport()Lorg/jaxen/ContextSupport;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/jaxen/Context;-><init>(Lorg/jaxen/ContextSupport;)V

    iput-object p1, p0, Lorg/dom4j/xpath/XPathPattern;->context:Lorg/jaxen/Context;

    return-void
.end method


# virtual methods
.method protected getContextSupport()Lorg/jaxen/ContextSupport;
    .locals 5

    .line 118
    new-instance v0, Lorg/jaxen/ContextSupport;

    new-instance v1, Lorg/jaxen/SimpleNamespaceContext;

    invoke-direct {v1}, Lorg/jaxen/SimpleNamespaceContext;-><init>()V

    .line 119
    invoke-static {}, Lorg/jaxen/XPathFunctionContext;->getInstance()Lorg/jaxen/FunctionContext;

    move-result-object v2

    new-instance v3, Lorg/jaxen/SimpleVariableContext;

    invoke-direct {v3}, Lorg/jaxen/SimpleVariableContext;-><init>()V

    .line 120
    invoke-static {}, Lorg/jaxen/dom4j/DocumentNavigator;->getInstance()Lorg/jaxen/Navigator;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/jaxen/ContextSupport;-><init>(Lorg/jaxen/NamespaceContext;Lorg/jaxen/FunctionContext;Lorg/jaxen/VariableContext;Lorg/jaxen/Navigator;)V

    return-object v0
.end method

.method public getMatchType()S
    .locals 1

    .line 102
    iget-object v0, p0, Lorg/dom4j/xpath/XPathPattern;->pattern:Lorg/jaxen/pattern/Pattern;

    invoke-virtual {v0}, Lorg/jaxen/pattern/Pattern;->getMatchType()S

    move-result v0

    return v0
.end method

.method public getMatchesNodeName()Ljava/lang/String;
    .locals 1

    .line 106
    iget-object v0, p0, Lorg/dom4j/xpath/XPathPattern;->pattern:Lorg/jaxen/pattern/Pattern;

    invoke-virtual {v0}, Lorg/jaxen/pattern/Pattern;->getMatchesNodeName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPriority()D
    .locals 2

    .line 81
    iget-object v0, p0, Lorg/dom4j/xpath/XPathPattern;->pattern:Lorg/jaxen/pattern/Pattern;

    invoke-virtual {v0}, Lorg/jaxen/pattern/Pattern;->getPriority()D

    move-result-wide v0

    return-wide v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .line 77
    iget-object v0, p0, Lorg/dom4j/xpath/XPathPattern;->text:Ljava/lang/String;

    return-object v0
.end method

.method public getUnionPatterns()[Lorg/dom4j/rule/Pattern;
    .locals 6

    .line 85
    iget-object v0, p0, Lorg/dom4j/xpath/XPathPattern;->pattern:Lorg/jaxen/pattern/Pattern;

    invoke-virtual {v0}, Lorg/jaxen/pattern/Pattern;->getUnionPatterns()[Lorg/jaxen/pattern/Pattern;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 88
    array-length v1, v0

    .line 89
    new-array v2, v1, [Lorg/dom4j/xpath/XPathPattern;

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    .line 92
    new-instance v4, Lorg/dom4j/xpath/XPathPattern;

    aget-object v5, v0, v3

    invoke-direct {v4, v5}, Lorg/dom4j/xpath/XPathPattern;-><init>(Lorg/jaxen/pattern/Pattern;)V

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v2

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method protected handleJaxenException(Lorg/jaxen/JaxenException;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/dom4j/XPathException;
        }
    .end annotation

    .line 125
    new-instance v0, Lorg/dom4j/XPathException;

    iget-object v1, p0, Lorg/dom4j/xpath/XPathPattern;->text:Ljava/lang/String;

    invoke-direct {v0, v1, p1}, Lorg/dom4j/XPathException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0
.end method

.method public matches(Lorg/dom4j/Node;)Z
    .locals 2

    .line 66
    :try_start_0
    iget-object v0, p0, Lorg/dom4j/xpath/XPathPattern;->context:Lorg/jaxen/Context;

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jaxen/Context;->setNodeSet(Ljava/util/List;)V

    .line 68
    iget-object v0, p0, Lorg/dom4j/xpath/XPathPattern;->pattern:Lorg/jaxen/pattern/Pattern;

    iget-object v1, p0, Lorg/dom4j/xpath/XPathPattern;->context:Lorg/jaxen/Context;

    invoke-virtual {v0, p1, v1}, Lorg/jaxen/pattern/Pattern;->matches(Ljava/lang/Object;Lorg/jaxen/Context;)Z

    move-result p1
    :try_end_0
    .catch Lorg/jaxen/JaxenException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 70
    invoke-virtual {p0, p1}, Lorg/dom4j/xpath/XPathPattern;->handleJaxenException(Lorg/jaxen/JaxenException;)V

    const/4 p1, 0x0

    return p1
.end method

.method public setVariableContext(Lorg/jaxen/VariableContext;)V
    .locals 1

    .line 110
    iget-object v0, p0, Lorg/dom4j/xpath/XPathPattern;->context:Lorg/jaxen/Context;

    invoke-virtual {v0}, Lorg/jaxen/Context;->getContextSupport()Lorg/jaxen/ContextSupport;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/jaxen/ContextSupport;->setVariableContext(Lorg/jaxen/VariableContext;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[XPathPattern: text: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/dom4j/xpath/XPathPattern;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Pattern: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/dom4j/xpath/XPathPattern;->pattern:Lorg/jaxen/pattern/Pattern;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
