.class public Lorg/fourthline/cling/transport/impl/SOAPActionProcessorImpl;
.super Ljava/lang/Object;
.source "SOAPActionProcessorImpl.java"

# interfaces
.implements Lorg/fourthline/cling/transport/spi/SOAPActionProcessor;
.implements Lorg/xml/sax/ErrorHandler;


# static fields
.field private static log:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 59
    const-class v0, Lorg/fourthline/cling/transport/spi/SOAPActionProcessor;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/fourthline/cling/transport/impl/SOAPActionProcessorImpl;->log:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected createDocumentBuilderFactory()Ljavax/xml/parsers/DocumentBuilderFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/parsers/FactoryConfigurationError;
        }
    .end annotation

    .line 62
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    return-object v0
.end method

.method protected createValue(Lorg/fourthline/cling/model/meta/ActionArgument;Ljava/lang/String;)Lorg/fourthline/cling/model/action/ActionArgumentValue;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/model/action/ActionException;
        }
    .end annotation

    .line 600
    :try_start_0
    new-instance v0, Lorg/fourthline/cling/model/action/ActionArgumentValue;

    invoke-direct {v0, p1, p2}, Lorg/fourthline/cling/model/action/ActionArgumentValue;-><init>(Lorg/fourthline/cling/model/meta/ActionArgument;Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/fourthline/cling/model/types/InvalidValueException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p2

    .line 602
    new-instance v0, Lorg/fourthline/cling/model/action/ActionException;

    sget-object v1, Lorg/fourthline/cling/model/types/ErrorCode;->ARGUMENT_VALUE_INVALID:Lorg/fourthline/cling/model/types/ErrorCode;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Wrong type or invalid value for \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 604
    invoke-virtual {p1}, Lorg/fourthline/cling/model/meta/ActionArgument;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\': "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lorg/fourthline/cling/model/types/InvalidValueException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1, p2}, Lorg/fourthline/cling/model/action/ActionException;-><init>(Lorg/fourthline/cling/model/types/ErrorCode;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public error(Lorg/xml/sax/SAXParseException;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 626
    throw p1
.end method

.method public fatalError(Lorg/xml/sax/SAXParseException;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 630
    throw p1
.end method

.method protected findActionArgumentNode(Ljava/util/List;Lorg/fourthline/cling/model/meta/ActionArgument;)Lorg/w3c/dom/Node;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/w3c/dom/Node;",
            ">;",
            "Lorg/fourthline/cling/model/meta/ActionArgument;",
            ")",
            "Lorg/w3c/dom/Node;"
        }
    .end annotation

    .line 615
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Node;

    .line 616
    invoke-virtual {p0, v0}, Lorg/fourthline/cling/transport/impl/SOAPActionProcessorImpl;->getUnprefixedNodeName(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lorg/fourthline/cling/model/meta/ActionArgument;->isNameOrAlias(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method protected getMatchingNodes(Lorg/w3c/dom/NodeList;[Lorg/fourthline/cling/model/meta/ActionArgument;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/w3c/dom/NodeList;",
            "[",
            "Lorg/fourthline/cling/model/meta/ActionArgument;",
            ")",
            "Ljava/util/List<",
            "Lorg/w3c/dom/Node;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/model/action/ActionException;
        }
    .end annotation

    .line 567
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 568
    array-length v1, p2

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, p2, v3

    .line 569
    invoke-virtual {v4}, Lorg/fourthline/cling/model/meta/ActionArgument;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 570
    invoke-virtual {v4}, Lorg/fourthline/cling/model/meta/ActionArgument;->getAliases()[Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 573
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 574
    :goto_1
    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 575
    invoke-interface {p1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    .line 577
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_1

    goto :goto_2

    .line 580
    :cond_1
    invoke-virtual {p0, v3}, Lorg/fourthline/cling/transport/impl/SOAPActionProcessorImpl;->getUnprefixedNodeName(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 581
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 584
    :cond_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    array-length v0, p2

    if-ge p1, v0, :cond_4

    .line 585
    new-instance p1, Lorg/fourthline/cling/model/action/ActionException;

    sget-object v0, Lorg/fourthline/cling/model/types/ErrorCode;->ARGUMENT_VALUE_INVALID:Lorg/fourthline/cling/model/types/ErrorCode;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid number of input or output arguments in XML message, expected "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p2, p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " but found "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 587
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, v0, p2}, Lorg/fourthline/cling/model/action/ActionException;-><init>(Lorg/fourthline/cling/model/types/ErrorCode;Ljava/lang/String;)V

    throw p1

    :cond_4
    return-object v1
.end method

.method protected getMessageBody(Lorg/fourthline/cling/model/message/control/ActionMessage;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/model/UnsupportedDataException;
        }
    .end annotation

    .line 509
    invoke-interface {p1}, Lorg/fourthline/cling/model/message/control/ActionMessage;->isBodyNonEmptyString()Z

    move-result v0

    if-nez v0, :cond_0

    .line 510
    new-instance v0, Lorg/fourthline/cling/model/UnsupportedDataException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t transform null or non-string/zero-length body of: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/fourthline/cling/model/UnsupportedDataException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 513
    :cond_0
    invoke-interface {p1}, Lorg/fourthline/cling/model/message/control/ActionMessage;->getBodyString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected getUnprefixedNodeName(Lorg/w3c/dom/Node;)Ljava/lang/String;
    .locals 1

    .line 527
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 528
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 529
    :cond_0
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public readActionInputArguments(Lorg/w3c/dom/Element;Lorg/fourthline/cling/model/action/ActionInvocation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/model/action/ActionException;
        }
    .end annotation

    .line 371
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object p1

    .line 372
    invoke-virtual {p2}, Lorg/fourthline/cling/model/action/ActionInvocation;->getAction()Lorg/fourthline/cling/model/meta/Action;

    move-result-object v0

    invoke-virtual {v0}, Lorg/fourthline/cling/model/meta/Action;->getInputArguments()[Lorg/fourthline/cling/model/meta/ActionArgument;

    move-result-object v0

    .line 370
    invoke-virtual {p0, p1, v0}, Lorg/fourthline/cling/transport/impl/SOAPActionProcessorImpl;->readArgumentValues(Lorg/w3c/dom/NodeList;[Lorg/fourthline/cling/model/meta/ActionArgument;)[Lorg/fourthline/cling/model/action/ActionArgumentValue;

    move-result-object p1

    .line 369
    invoke-virtual {p2, p1}, Lorg/fourthline/cling/model/action/ActionInvocation;->setInput([Lorg/fourthline/cling/model/action/ActionArgumentValue;)V

    return-void
.end method

.method protected readActionOutputArguments(Lorg/w3c/dom/Element;Lorg/fourthline/cling/model/action/ActionInvocation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/model/action/ActionException;
        }
    .end annotation

    .line 395
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object p1

    .line 396
    invoke-virtual {p2}, Lorg/fourthline/cling/model/action/ActionInvocation;->getAction()Lorg/fourthline/cling/model/meta/Action;

    move-result-object v0

    invoke-virtual {v0}, Lorg/fourthline/cling/model/meta/Action;->getOutputArguments()[Lorg/fourthline/cling/model/meta/ActionArgument;

    move-result-object v0

    .line 394
    invoke-virtual {p0, p1, v0}, Lorg/fourthline/cling/transport/impl/SOAPActionProcessorImpl;->readArgumentValues(Lorg/w3c/dom/NodeList;[Lorg/fourthline/cling/model/meta/ActionArgument;)[Lorg/fourthline/cling/model/action/ActionArgumentValue;

    move-result-object p1

    .line 393
    invoke-virtual {p2, p1}, Lorg/fourthline/cling/model/action/ActionInvocation;->setOutput([Lorg/fourthline/cling/model/action/ActionArgumentValue;)V

    return-void
.end method

.method protected readActionRequestElement(Lorg/w3c/dom/Element;Lorg/fourthline/cling/model/message/control/ActionRequestMessage;Lorg/fourthline/cling/model/action/ActionInvocation;)Lorg/w3c/dom/Element;
    .locals 4

    .line 293
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object p1

    .line 295
    sget-object v0, Lorg/fourthline/cling/transport/impl/SOAPActionProcessorImpl;->log:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Looking for action request element matching namespace:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lorg/fourthline/cling/model/message/control/ActionRequestMessage;->getActionNamespace()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 297
    :goto_0
    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 298
    invoke-interface {p1, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    .line 300
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    goto :goto_2

    .line 303
    :cond_0
    invoke-virtual {p0, v1}, Lorg/fourthline/cling/transport/impl/SOAPActionProcessorImpl;->getUnprefixedNodeName(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v2

    .line 304
    invoke-virtual {p3}, Lorg/fourthline/cling/model/action/ActionInvocation;->getAction()Lorg/fourthline/cling/model/meta/Action;

    move-result-object v3

    invoke-virtual {v3}, Lorg/fourthline/cling/model/meta/Action;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 305
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 306
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2}, Lorg/fourthline/cling/model/message/control/ActionRequestMessage;->getActionNamespace()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_1

    .line 310
    :cond_1
    sget-object p1, Lorg/fourthline/cling/transport/impl/SOAPActionProcessorImpl;->log:Ljava/util/logging/Logger;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Reading action request element: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 311
    check-cast v1, Lorg/w3c/dom/Element;

    return-object v1

    .line 307
    :cond_2
    :goto_1
    new-instance p1, Lorg/fourthline/cling/model/UnsupportedDataException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Illegal or missing namespace on action request element: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/fourthline/cling/model/UnsupportedDataException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 314
    :cond_4
    new-instance p1, Lorg/fourthline/cling/model/UnsupportedDataException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Could not read action request element matching namespace: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 315
    invoke-interface {p2}, Lorg/fourthline/cling/model/message/control/ActionRequestMessage;->getActionNamespace()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/fourthline/cling/model/UnsupportedDataException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected readActionResponseElement(Lorg/w3c/dom/Element;Lorg/fourthline/cling/model/action/ActionInvocation;)Lorg/w3c/dom/Element;
    .locals 5

    .line 337
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object p1

    const/4 v0, 0x0

    .line 339
    :goto_0
    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 340
    invoke-interface {p1, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    .line 342
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    goto :goto_1

    .line 345
    :cond_0
    invoke-virtual {p0, v1}, Lorg/fourthline/cling/transport/impl/SOAPActionProcessorImpl;->getUnprefixedNodeName(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lorg/fourthline/cling/model/action/ActionInvocation;->getAction()Lorg/fourthline/cling/model/meta/Action;

    move-result-object v4

    invoke-virtual {v4}, Lorg/fourthline/cling/model/meta/Action;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "Response"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 346
    sget-object p1, Lorg/fourthline/cling/transport/impl/SOAPActionProcessorImpl;->log:Ljava/util/logging/Logger;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Reading action response element: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Lorg/fourthline/cling/transport/impl/SOAPActionProcessorImpl;->getUnprefixedNodeName(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 347
    check-cast v1, Lorg/w3c/dom/Element;

    return-object v1

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 350
    :cond_2
    sget-object p1, Lorg/fourthline/cling/transport/impl/SOAPActionProcessorImpl;->log:Ljava/util/logging/Logger;

    const-string p2, "Could not read action response element"

    invoke-virtual {p1, p2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method protected readArgumentValues(Lorg/w3c/dom/NodeList;[Lorg/fourthline/cling/model/meta/ActionArgument;)[Lorg/fourthline/cling/model/action/ActionArgumentValue;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/model/action/ActionException;
        }
    .end annotation

    .line 541
    invoke-virtual {p0, p1, p2}, Lorg/fourthline/cling/transport/impl/SOAPActionProcessorImpl;->getMatchingNodes(Lorg/w3c/dom/NodeList;[Lorg/fourthline/cling/model/meta/ActionArgument;)Ljava/util/List;

    move-result-object p1

    .line 543
    array-length v0, p2

    new-array v0, v0, [Lorg/fourthline/cling/model/action/ActionArgumentValue;

    const/4 v1, 0x0

    .line 545
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_1

    .line 547
    aget-object v2, p2, v1

    .line 548
    invoke-virtual {p0, p1, v2}, Lorg/fourthline/cling/transport/impl/SOAPActionProcessorImpl;->findActionArgumentNode(Ljava/util/List;Lorg/fourthline/cling/model/meta/ActionArgument;)Lorg/w3c/dom/Node;

    move-result-object v3

    if-nez v3, :cond_0

    .line 550
    new-instance p1, Lorg/fourthline/cling/model/action/ActionException;

    sget-object p2, Lorg/fourthline/cling/model/types/ErrorCode;->ARGUMENT_VALUE_INVALID:Lorg/fourthline/cling/model/types/ErrorCode;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not find argument \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 552
    invoke-virtual {v2}, Lorg/fourthline/cling/model/meta/ActionArgument;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' node"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Lorg/fourthline/cling/model/action/ActionException;-><init>(Lorg/fourthline/cling/model/types/ErrorCode;Ljava/lang/String;)V

    throw p1

    .line 554
    :cond_0
    sget-object v4, Lorg/fourthline/cling/transport/impl/SOAPActionProcessorImpl;->log:Ljava/util/logging/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Reading action argument: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lorg/fourthline/cling/model/meta/ActionArgument;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 555
    invoke-static {v3}, Lorg/fourthline/cling/model/XMLUtil;->getTextContent(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v3

    .line 556
    invoke-virtual {p0, v2, v3}, Lorg/fourthline/cling/transport/impl/SOAPActionProcessorImpl;->createValue(Lorg/fourthline/cling/model/meta/ActionArgument;Ljava/lang/String;)Lorg/fourthline/cling/model/action/ActionArgumentValue;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public readBody(Lorg/fourthline/cling/model/message/control/ActionRequestMessage;Lorg/fourthline/cling/model/action/ActionInvocation;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/model/UnsupportedDataException;
        }
    .end annotation

    .line 119
    sget-object v0, Lorg/fourthline/cling/transport/impl/SOAPActionProcessorImpl;->log:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Reading body of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 120
    sget-object v0, Lorg/fourthline/cling/transport/impl/SOAPActionProcessorImpl;->log:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    sget-object v0, Lorg/fourthline/cling/transport/impl/SOAPActionProcessorImpl;->log:Ljava/util/logging/Logger;

    const-string v1, "===================================== SOAP BODY BEGIN ============================================"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 122
    sget-object v0, Lorg/fourthline/cling/transport/impl/SOAPActionProcessorImpl;->log:Ljava/util/logging/Logger;

    invoke-interface {p1}, Lorg/fourthline/cling/model/message/control/ActionRequestMessage;->getBodyString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 123
    sget-object v0, Lorg/fourthline/cling/transport/impl/SOAPActionProcessorImpl;->log:Ljava/util/logging/Logger;

    const-string v1, "-===================================== SOAP BODY END ============================================"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 126
    :cond_0
    invoke-virtual {p0, p1}, Lorg/fourthline/cling/transport/impl/SOAPActionProcessorImpl;->getMessageBody(Lorg/fourthline/cling/model/message/control/ActionMessage;)Ljava/lang/String;

    move-result-object v0

    .line 129
    :try_start_0
    invoke-virtual {p0}, Lorg/fourthline/cling/transport/impl/SOAPActionProcessorImpl;->createDocumentBuilderFactory()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v1

    const/4 v2, 0x1

    .line 130
    invoke-virtual {v1, v2}, Ljavax/xml/parsers/DocumentBuilderFactory;->setNamespaceAware(Z)V

    .line 131
    invoke-virtual {v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v1

    .line 132
    invoke-virtual {v1, p0}, Ljavax/xml/parsers/DocumentBuilder;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    .line 134
    new-instance v2, Lorg/xml/sax/InputSource;

    new-instance v3, Ljava/io/StringReader;

    invoke-direct {v3, v0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v1, v2}, Ljavax/xml/parsers/DocumentBuilder;->parse(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;

    move-result-object v1

    .line 136
    invoke-virtual {p0, v1}, Lorg/fourthline/cling/transport/impl/SOAPActionProcessorImpl;->readBodyElement(Lorg/w3c/dom/Document;)Lorg/w3c/dom/Element;

    move-result-object v2

    .line 138
    invoke-virtual {p0, v1, v2, p1, p2}, Lorg/fourthline/cling/transport/impl/SOAPActionProcessorImpl;->readBodyRequest(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Lorg/fourthline/cling/model/message/control/ActionRequestMessage;Lorg/fourthline/cling/model/action/ActionInvocation;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 141
    new-instance p2, Lorg/fourthline/cling/model/UnsupportedDataException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t transform message payload: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p2, v1, p1, v0}, Lorg/fourthline/cling/model/UnsupportedDataException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/Object;)V

    throw p2
.end method

.method public readBody(Lorg/fourthline/cling/model/message/control/ActionResponseMessage;Lorg/fourthline/cling/model/action/ActionInvocation;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/model/UnsupportedDataException;
        }
    .end annotation

    .line 147
    sget-object v0, Lorg/fourthline/cling/transport/impl/SOAPActionProcessorImpl;->log:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Reading body of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 148
    sget-object v0, Lorg/fourthline/cling/transport/impl/SOAPActionProcessorImpl;->log:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    sget-object v0, Lorg/fourthline/cling/transport/impl/SOAPActionProcessorImpl;->log:Ljava/util/logging/Logger;

    const-string v1, "===================================== SOAP BODY BEGIN ============================================"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 150
    sget-object v0, Lorg/fourthline/cling/transport/impl/SOAPActionProcessorImpl;->log:Ljava/util/logging/Logger;

    invoke-interface {p1}, Lorg/fourthline/cling/model/message/control/ActionResponseMessage;->getBodyString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 151
    sget-object v0, Lorg/fourthline/cling/transport/impl/SOAPActionProcessorImpl;->log:Ljava/util/logging/Logger;

    const-string v1, "-===================================== SOAP BODY END ============================================"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 154
    :cond_0
    invoke-virtual {p0, p1}, Lorg/fourthline/cling/transport/impl/SOAPActionProcessorImpl;->getMessageBody(Lorg/fourthline/cling/model/message/control/ActionMessage;)Ljava/lang/String;

    move-result-object v0

    .line 157
    :try_start_0
    invoke-virtual {p0}, Lorg/fourthline/cling/transport/impl/SOAPActionProcessorImpl;->createDocumentBuilderFactory()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v1

    const/4 v2, 0x1

    .line 158
    invoke-virtual {v1, v2}, Ljavax/xml/parsers/DocumentBuilderFactory;->setNamespaceAware(Z)V

    .line 159
    invoke-virtual {v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v1

    .line 160
    invoke-virtual {v1, p0}, Ljavax/xml/parsers/DocumentBuilder;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    .line 162
    new-instance v2, Lorg/xml/sax/InputSource;

    new-instance v3, Ljava/io/StringReader;

    invoke-direct {v3, v0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v1, v2}, Ljavax/xml/parsers/DocumentBuilder;->parse(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;

    move-result-object v1

    .line 164
    invoke-virtual {p0, v1}, Lorg/fourthline/cling/transport/impl/SOAPActionProcessorImpl;->readBodyElement(Lorg/w3c/dom/Document;)Lorg/w3c/dom/Element;

    move-result-object v2

    .line 166
    invoke-virtual {p0, v1, v2}, Lorg/fourthline/cling/transport/impl/SOAPActionProcessorImpl;->readBodyFailure(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;)Lorg/fourthline/cling/model/action/ActionException;

    move-result-object v3

    if-nez v3, :cond_1

    .line 169
    invoke-virtual {p0, v1, v2, p1, p2}, Lorg/fourthline/cling/transport/impl/SOAPActionProcessorImpl;->readBodyResponse(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Lorg/fourthline/cling/model/message/control/ActionResponseMessage;Lorg/fourthline/cling/model/action/ActionInvocation;)V

    goto :goto_0

    .line 171
    :cond_1
    invoke-virtual {p2, v3}, Lorg/fourthline/cling/model/action/ActionInvocation;->setFailure(Lorg/fourthline/cling/model/action/ActionException;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception p1

    .line 175
    new-instance p2, Lorg/fourthline/cling/model/UnsupportedDataException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t transform message payload: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p2, v1, p1, v0}, Lorg/fourthline/cling/model/UnsupportedDataException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/Object;)V

    throw p2
.end method

.method protected readBodyElement(Lorg/w3c/dom/Document;)Lorg/w3c/dom/Element;
    .locals 4

    .line 251
    invoke-interface {p1}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 253
    invoke-virtual {p0, p1}, Lorg/fourthline/cling/transport/impl/SOAPActionProcessorImpl;->getUnprefixedNodeName(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Envelope"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 257
    :cond_0
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object p1

    const/4 v0, 0x0

    .line 258
    :goto_0
    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 259
    invoke-interface {p1, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    .line 261
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 264
    :cond_1
    invoke-virtual {p0, v1}, Lorg/fourthline/cling/transport/impl/SOAPActionProcessorImpl;->getUnprefixedNodeName(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Body"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 265
    check-cast v1, Lorg/w3c/dom/Element;

    return-object v1

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 269
    :cond_3
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Response envelope did not contain \'Body\' child element"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 254
    :cond_4
    :goto_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Response root element was not \'Envelope\'"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected readBodyFailure(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;)Lorg/fourthline/cling/model/action/ActionException;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 212
    invoke-virtual {p0, p2}, Lorg/fourthline/cling/transport/impl/SOAPActionProcessorImpl;->readFaultElement(Lorg/w3c/dom/Element;)Lorg/fourthline/cling/model/action/ActionException;

    move-result-object p1

    return-object p1
.end method

.method protected readBodyRequest(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Lorg/fourthline/cling/model/message/control/ActionRequestMessage;Lorg/fourthline/cling/model/action/ActionInvocation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 220
    invoke-virtual {p0, p2, p3, p4}, Lorg/fourthline/cling/transport/impl/SOAPActionProcessorImpl;->readActionRequestElement(Lorg/w3c/dom/Element;Lorg/fourthline/cling/model/message/control/ActionRequestMessage;Lorg/fourthline/cling/model/action/ActionInvocation;)Lorg/w3c/dom/Element;

    move-result-object p1

    .line 221
    invoke-virtual {p0, p1, p4}, Lorg/fourthline/cling/transport/impl/SOAPActionProcessorImpl;->readActionInputArguments(Lorg/w3c/dom/Element;Lorg/fourthline/cling/model/action/ActionInvocation;)V

    return-void
.end method

.method protected readBodyResponse(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Lorg/fourthline/cling/model/message/control/ActionResponseMessage;Lorg/fourthline/cling/model/action/ActionInvocation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 229
    invoke-virtual {p0, p2, p4}, Lorg/fourthline/cling/transport/impl/SOAPActionProcessorImpl;->readActionResponseElement(Lorg/w3c/dom/Element;Lorg/fourthline/cling/model/action/ActionInvocation;)Lorg/w3c/dom/Element;

    move-result-object p1

    .line 230
    invoke-virtual {p0, p1, p4}, Lorg/fourthline/cling/transport/impl/SOAPActionProcessorImpl;->readActionOutputArguments(Lorg/w3c/dom/Element;Lorg/fourthline/cling/model/action/ActionInvocation;)V

    return-void
.end method

.method protected readFaultElement(Lorg/w3c/dom/Element;)Lorg/fourthline/cling/model/action/ActionException;
    .locals 17

    move-object/from16 v0, p0

    .line 434
    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v5, v2

    move-object v7, v5

    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 436
    :goto_0
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v8

    if-ge v4, v8, :cond_c

    .line 437
    invoke-interface {v1, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v8

    .line 439
    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v9

    const/4 v10, 0x1

    if-eq v9, v10, :cond_0

    goto/16 :goto_7

    .line 442
    :cond_0
    invoke-virtual {v0, v8}, Lorg/fourthline/cling/transport/impl/SOAPActionProcessorImpl;->getUnprefixedNodeName(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v9

    const-string v11, "Fault"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 446
    invoke-interface {v8}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v6

    move-object v8, v7

    move-object v7, v5

    const/4 v5, 0x0

    .line 448
    :goto_1
    invoke-interface {v6}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v9

    if-ge v5, v9, :cond_a

    .line 449
    invoke-interface {v6, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v9

    .line 451
    invoke-interface {v9}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v11

    if-eq v11, v10, :cond_1

    goto/16 :goto_6

    .line 454
    :cond_1
    invoke-virtual {v0, v9}, Lorg/fourthline/cling/transport/impl/SOAPActionProcessorImpl;->getUnprefixedNodeName(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "detail"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 456
    invoke-interface {v9}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v9

    move-object v11, v8

    move-object v8, v7

    const/4 v7, 0x0

    .line 457
    :goto_2
    invoke-interface {v9}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v12

    if-ge v7, v12, :cond_8

    .line 458
    invoke-interface {v9, v7}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v12

    .line 460
    invoke-interface {v12}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v13

    if-eq v13, v10, :cond_2

    goto :goto_5

    .line 463
    :cond_2
    invoke-virtual {v0, v12}, Lorg/fourthline/cling/transport/impl/SOAPActionProcessorImpl;->getUnprefixedNodeName(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "UPnPError"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 465
    invoke-interface {v12}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v12

    move-object v13, v11

    move-object v11, v8

    const/4 v8, 0x0

    .line 466
    :goto_3
    invoke-interface {v12}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v14

    if-ge v8, v14, :cond_6

    .line 467
    invoke-interface {v12, v8}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v14

    .line 469
    invoke-interface {v14}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v15

    if-eq v15, v10, :cond_3

    goto :goto_4

    .line 472
    :cond_3
    invoke-virtual {v0, v14}, Lorg/fourthline/cling/transport/impl/SOAPActionProcessorImpl;->getUnprefixedNodeName(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v15

    const-string v10, "errorCode"

    invoke-virtual {v15, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 473
    invoke-static {v14}, Lorg/fourthline/cling/model/XMLUtil;->getTextContent(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v11

    .line 475
    :cond_4
    invoke-virtual {v0, v14}, Lorg/fourthline/cling/transport/impl/SOAPActionProcessorImpl;->getUnprefixedNodeName(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v10

    const-string v15, "errorDescription"

    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 476
    invoke-static {v14}, Lorg/fourthline/cling/model/XMLUtil;->getTextContent(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v10

    move-object v13, v10

    :cond_5
    :goto_4
    add-int/lit8 v8, v8, 0x1

    const/4 v10, 0x1

    goto :goto_3

    :cond_6
    move-object v8, v11

    move-object v11, v13

    :cond_7
    :goto_5
    add-int/lit8 v7, v7, 0x1

    const/4 v10, 0x1

    goto :goto_2

    :cond_8
    move-object v7, v8

    move-object v8, v11

    :cond_9
    :goto_6
    add-int/lit8 v5, v5, 0x1

    const/4 v10, 0x1

    goto/16 :goto_1

    :cond_a
    move-object v5, v7

    move-object v7, v8

    const/4 v6, 0x1

    :cond_b
    :goto_7
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_c
    if-eqz v5, :cond_e

    .line 487
    :try_start_0
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 488
    invoke-static {v1}, Lorg/fourthline/cling/model/types/ErrorCode;->getByCode(I)Lorg/fourthline/cling/model/types/ErrorCode;

    move-result-object v2

    if-eqz v2, :cond_d

    .line 490
    sget-object v1, Lorg/fourthline/cling/transport/impl/SOAPActionProcessorImpl;->log:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Reading fault element: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lorg/fourthline/cling/model/types/ErrorCode;->getCode()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 491
    new-instance v1, Lorg/fourthline/cling/model/action/ActionException;

    invoke-direct {v1, v2, v7, v3}, Lorg/fourthline/cling/model/action/ActionException;-><init>(Lorg/fourthline/cling/model/types/ErrorCode;Ljava/lang/String;Z)V

    return-object v1

    .line 493
    :cond_d
    sget-object v2, Lorg/fourthline/cling/transport/impl/SOAPActionProcessorImpl;->log:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Reading fault element: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 494
    new-instance v2, Lorg/fourthline/cling/model/action/ActionException;

    invoke-direct {v2, v1, v7}, Lorg/fourthline/cling/model/action/ActionException;-><init>(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 497
    :catch_0
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Error code was not a number"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_e
    if-eqz v6, :cond_f

    .line 500
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Received fault element but no error code"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_f
    return-object v2
.end method

.method protected toString(Lorg/w3c/dom/Document;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 518
    invoke-static {p1}, Lorg/fourthline/cling/model/XMLUtil;->documentToString(Lorg/w3c/dom/Document;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    const-string v0, "\n"

    .line 519
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "\r"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    return-object p1

    :cond_1
    :goto_1
    const/4 v0, 0x0

    .line 520
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method public warning(Lorg/xml/sax/SAXParseException;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 622
    sget-object v0, Lorg/fourthline/cling/transport/impl/SOAPActionProcessorImpl;->log:Ljava/util/logging/Logger;

    invoke-virtual {p1}, Lorg/xml/sax/SAXParseException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    return-void
.end method

.method protected writeActionInputArguments(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Lorg/fourthline/cling/model/action/ActionInvocation;)V
    .locals 7

    .line 360
    invoke-virtual {p3}, Lorg/fourthline/cling/model/action/ActionInvocation;->getAction()Lorg/fourthline/cling/model/meta/Action;

    move-result-object v0

    invoke-virtual {v0}, Lorg/fourthline/cling/model/meta/Action;->getInputArguments()[Lorg/fourthline/cling/model/meta/ActionArgument;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 361
    sget-object v4, Lorg/fourthline/cling/transport/impl/SOAPActionProcessorImpl;->log:Ljava/util/logging/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Writing action input argument: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lorg/fourthline/cling/model/meta/ActionArgument;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 362
    invoke-virtual {p3, v3}, Lorg/fourthline/cling/model/action/ActionInvocation;->getInput(Lorg/fourthline/cling/model/meta/ActionArgument;)Lorg/fourthline/cling/model/action/ActionArgumentValue;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {p3, v3}, Lorg/fourthline/cling/model/action/ActionInvocation;->getInput(Lorg/fourthline/cling/model/meta/ActionArgument;)Lorg/fourthline/cling/model/action/ActionArgumentValue;

    move-result-object v4

    invoke-virtual {v4}, Lorg/fourthline/cling/model/action/ActionArgumentValue;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_0
    const-string v4, ""

    .line 363
    :goto_1
    invoke-virtual {v3}, Lorg/fourthline/cling/model/meta/ActionArgument;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, p2, v3, v4}, Lorg/fourthline/cling/model/XMLUtil;->appendNewElement(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/Object;)Lorg/w3c/dom/Element;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected writeActionOutputArguments(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Lorg/fourthline/cling/model/action/ActionInvocation;)V
    .locals 7

    .line 383
    invoke-virtual {p3}, Lorg/fourthline/cling/model/action/ActionInvocation;->getAction()Lorg/fourthline/cling/model/meta/Action;

    move-result-object v0

    invoke-virtual {v0}, Lorg/fourthline/cling/model/meta/Action;->getOutputArguments()[Lorg/fourthline/cling/model/meta/ActionArgument;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 384
    sget-object v4, Lorg/fourthline/cling/transport/impl/SOAPActionProcessorImpl;->log:Ljava/util/logging/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Writing action output argument: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lorg/fourthline/cling/model/meta/ActionArgument;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 385
    invoke-virtual {p3, v3}, Lorg/fourthline/cling/model/action/ActionInvocation;->getOutput(Lorg/fourthline/cling/model/meta/ActionArgument;)Lorg/fourthline/cling/model/action/ActionArgumentValue;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {p3, v3}, Lorg/fourthline/cling/model/action/ActionInvocation;->getOutput(Lorg/fourthline/cling/model/meta/ActionArgument;)Lorg/fourthline/cling/model/action/ActionArgumentValue;

    move-result-object v4

    invoke-virtual {v4}, Lorg/fourthline/cling/model/action/ActionArgumentValue;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_0
    const-string v4, ""

    .line 386
    :goto_1
    invoke-virtual {v3}, Lorg/fourthline/cling/model/meta/ActionArgument;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, p2, v3, v4}, Lorg/fourthline/cling/model/XMLUtil;->appendNewElement(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/Object;)Lorg/w3c/dom/Element;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected writeActionRequestElement(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Lorg/fourthline/cling/model/message/control/ActionRequestMessage;Lorg/fourthline/cling/model/action/ActionInvocation;)Lorg/w3c/dom/Element;
    .locals 3

    .line 279
    sget-object v0, Lorg/fourthline/cling/transport/impl/SOAPActionProcessorImpl;->log:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Writing action request element: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Lorg/fourthline/cling/model/action/ActionInvocation;->getAction()Lorg/fourthline/cling/model/meta/Action;

    move-result-object v2

    invoke-virtual {v2}, Lorg/fourthline/cling/model/meta/Action;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 282
    invoke-interface {p3}, Lorg/fourthline/cling/model/message/control/ActionRequestMessage;->getActionNamespace()Ljava/lang/String;

    move-result-object p3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "u:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    invoke-virtual {p4}, Lorg/fourthline/cling/model/action/ActionInvocation;->getAction()Lorg/fourthline/cling/model/meta/Action;

    move-result-object p4

    invoke-virtual {p4}, Lorg/fourthline/cling/model/meta/Action;->getName()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    .line 281
    invoke-interface {p1, p3, p4}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p1

    .line 285
    invoke-interface {p2, p1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    return-object p1
.end method

.method protected writeActionResponseElement(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Lorg/fourthline/cling/model/message/control/ActionResponseMessage;Lorg/fourthline/cling/model/action/ActionInvocation;)Lorg/w3c/dom/Element;
    .locals 3

    .line 326
    sget-object v0, Lorg/fourthline/cling/transport/impl/SOAPActionProcessorImpl;->log:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Writing action response element: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Lorg/fourthline/cling/model/action/ActionInvocation;->getAction()Lorg/fourthline/cling/model/meta/Action;

    move-result-object v2

    invoke-virtual {v2}, Lorg/fourthline/cling/model/meta/Action;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 328
    invoke-interface {p3}, Lorg/fourthline/cling/model/message/control/ActionResponseMessage;->getActionNamespace()Ljava/lang/String;

    move-result-object p3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "u:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    invoke-virtual {p4}, Lorg/fourthline/cling/model/action/ActionInvocation;->getAction()Lorg/fourthline/cling/model/meta/Action;

    move-result-object p4

    invoke-virtual {p4}, Lorg/fourthline/cling/model/meta/Action;->getName()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "Response"

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    .line 327
    invoke-interface {p1, p3, p4}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p1

    .line 331
    invoke-interface {p2, p1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    return-object p1
.end method

.method public writeBody(Lorg/fourthline/cling/model/message/control/ActionRequestMessage;Lorg/fourthline/cling/model/action/ActionInvocation;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/model/UnsupportedDataException;
        }
    .end annotation

    .line 67
    sget-object v0, Lorg/fourthline/cling/transport/impl/SOAPActionProcessorImpl;->log:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Writing body of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 71
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    const/4 v1, 0x1

    .line 72
    invoke-virtual {v0, v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->setNamespaceAware(Z)V

    .line 73
    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilder;->newDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    .line 74
    invoke-virtual {p0, v0}, Lorg/fourthline/cling/transport/impl/SOAPActionProcessorImpl;->writeBodyElement(Lorg/w3c/dom/Document;)Lorg/w3c/dom/Element;

    move-result-object v1

    .line 76
    invoke-virtual {p0, v0, v1, p1, p2}, Lorg/fourthline/cling/transport/impl/SOAPActionProcessorImpl;->writeBodyRequest(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Lorg/fourthline/cling/model/message/control/ActionRequestMessage;Lorg/fourthline/cling/model/action/ActionInvocation;)V

    .line 78
    sget-object p2, Lorg/fourthline/cling/transport/impl/SOAPActionProcessorImpl;->log:Ljava/util/logging/Logger;

    sget-object v0, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {p2, v0}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 79
    sget-object p2, Lorg/fourthline/cling/transport/impl/SOAPActionProcessorImpl;->log:Ljava/util/logging/Logger;

    const-string v0, "===================================== SOAP BODY BEGIN ============================================"

    invoke-virtual {p2, v0}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 80
    sget-object p2, Lorg/fourthline/cling/transport/impl/SOAPActionProcessorImpl;->log:Ljava/util/logging/Logger;

    invoke-interface {p1}, Lorg/fourthline/cling/model/message/control/ActionRequestMessage;->getBodyString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 81
    sget-object p1, Lorg/fourthline/cling/transport/impl/SOAPActionProcessorImpl;->log:Ljava/util/logging/Logger;

    const-string p2, "-===================================== SOAP BODY END ============================================"

    invoke-virtual {p1, p2}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception p1

    .line 85
    new-instance p2, Lorg/fourthline/cling/model/UnsupportedDataException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Can\'t transform message payload: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lorg/fourthline/cling/model/UnsupportedDataException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public writeBody(Lorg/fourthline/cling/model/message/control/ActionResponseMessage;Lorg/fourthline/cling/model/action/ActionInvocation;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/model/UnsupportedDataException;
        }
    .end annotation

    .line 91
    sget-object v0, Lorg/fourthline/cling/transport/impl/SOAPActionProcessorImpl;->log:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Writing body of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 95
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    const/4 v1, 0x1

    .line 96
    invoke-virtual {v0, v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->setNamespaceAware(Z)V

    .line 97
    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilder;->newDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    .line 98
    invoke-virtual {p0, v0}, Lorg/fourthline/cling/transport/impl/SOAPActionProcessorImpl;->writeBodyElement(Lorg/w3c/dom/Document;)Lorg/w3c/dom/Element;

    move-result-object v1

    .line 100
    invoke-virtual {p2}, Lorg/fourthline/cling/model/action/ActionInvocation;->getFailure()Lorg/fourthline/cling/model/action/ActionException;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 101
    invoke-virtual {p0, v0, v1, p1, p2}, Lorg/fourthline/cling/transport/impl/SOAPActionProcessorImpl;->writeBodyFailure(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Lorg/fourthline/cling/model/message/control/ActionResponseMessage;Lorg/fourthline/cling/model/action/ActionInvocation;)V

    goto :goto_0

    .line 103
    :cond_0
    invoke-virtual {p0, v0, v1, p1, p2}, Lorg/fourthline/cling/transport/impl/SOAPActionProcessorImpl;->writeBodyResponse(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Lorg/fourthline/cling/model/message/control/ActionResponseMessage;Lorg/fourthline/cling/model/action/ActionInvocation;)V

    .line 106
    :goto_0
    sget-object p2, Lorg/fourthline/cling/transport/impl/SOAPActionProcessorImpl;->log:Ljava/util/logging/Logger;

    sget-object v0, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {p2, v0}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 107
    sget-object p2, Lorg/fourthline/cling/transport/impl/SOAPActionProcessorImpl;->log:Ljava/util/logging/Logger;

    const-string v0, "===================================== SOAP BODY BEGIN ============================================"

    invoke-virtual {p2, v0}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 108
    sget-object p2, Lorg/fourthline/cling/transport/impl/SOAPActionProcessorImpl;->log:Ljava/util/logging/Logger;

    invoke-interface {p1}, Lorg/fourthline/cling/model/message/control/ActionResponseMessage;->getBodyString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 109
    sget-object p1, Lorg/fourthline/cling/transport/impl/SOAPActionProcessorImpl;->log:Ljava/util/logging/Logger;

    const-string p2, "-===================================== SOAP BODY END ============================================"

    invoke-virtual {p1, p2}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception p1

    .line 113
    new-instance p2, Lorg/fourthline/cling/model/UnsupportedDataException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Can\'t transform message payload: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lorg/fourthline/cling/model/UnsupportedDataException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method protected writeBodyElement(Lorg/w3c/dom/Document;)Lorg/w3c/dom/Element;
    .locals 3

    const-string v0, "http://schemas.xmlsoap.org/soap/envelope/"

    const-string v1, "s:Envelope"

    .line 237
    invoke-interface {p1, v0, v1}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    const-string v1, "http://schemas.xmlsoap.org/soap/envelope/"

    const-string v2, "s:encodingStyle"

    .line 238
    invoke-interface {p1, v1, v2}, Lorg/w3c/dom/Document;->createAttributeNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v1

    const-string v2, "http://schemas.xmlsoap.org/soap/encoding/"

    .line 239
    invoke-interface {v1, v2}, Lorg/w3c/dom/Attr;->setValue(Ljava/lang/String;)V

    .line 240
    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->setAttributeNode(Lorg/w3c/dom/Attr;)Lorg/w3c/dom/Attr;

    .line 241
    invoke-interface {p1, v0}, Lorg/w3c/dom/Document;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    const-string v1, "http://schemas.xmlsoap.org/soap/envelope/"

    const-string v2, "s:Body"

    .line 243
    invoke-interface {p1, v1, v2}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p1

    .line 244
    invoke-interface {v0, p1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    return-object p1
.end method

.method protected writeBodyFailure(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Lorg/fourthline/cling/model/message/control/ActionResponseMessage;Lorg/fourthline/cling/model/action/ActionInvocation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 186
    invoke-virtual {p0, p1, p2, p4}, Lorg/fourthline/cling/transport/impl/SOAPActionProcessorImpl;->writeFaultElement(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Lorg/fourthline/cling/model/action/ActionInvocation;)V

    .line 187
    invoke-virtual {p0, p1}, Lorg/fourthline/cling/transport/impl/SOAPActionProcessorImpl;->toString(Lorg/w3c/dom/Document;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p3, p1}, Lorg/fourthline/cling/model/message/control/ActionResponseMessage;->setBody(Ljava/lang/String;)V

    return-void
.end method

.method protected writeBodyRequest(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Lorg/fourthline/cling/model/message/control/ActionRequestMessage;Lorg/fourthline/cling/model/action/ActionInvocation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 195
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/fourthline/cling/transport/impl/SOAPActionProcessorImpl;->writeActionRequestElement(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Lorg/fourthline/cling/model/message/control/ActionRequestMessage;Lorg/fourthline/cling/model/action/ActionInvocation;)Lorg/w3c/dom/Element;

    move-result-object p2

    .line 196
    invoke-virtual {p0, p1, p2, p4}, Lorg/fourthline/cling/transport/impl/SOAPActionProcessorImpl;->writeActionInputArguments(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Lorg/fourthline/cling/model/action/ActionInvocation;)V

    .line 197
    invoke-virtual {p0, p1}, Lorg/fourthline/cling/transport/impl/SOAPActionProcessorImpl;->toString(Lorg/w3c/dom/Document;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p3, p1}, Lorg/fourthline/cling/model/message/control/ActionRequestMessage;->setBody(Ljava/lang/String;)V

    return-void
.end method

.method protected writeBodyResponse(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Lorg/fourthline/cling/model/message/control/ActionResponseMessage;Lorg/fourthline/cling/model/action/ActionInvocation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 206
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/fourthline/cling/transport/impl/SOAPActionProcessorImpl;->writeActionResponseElement(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Lorg/fourthline/cling/model/message/control/ActionResponseMessage;Lorg/fourthline/cling/model/action/ActionInvocation;)Lorg/w3c/dom/Element;

    move-result-object p2

    .line 207
    invoke-virtual {p0, p1, p2, p4}, Lorg/fourthline/cling/transport/impl/SOAPActionProcessorImpl;->writeActionOutputArguments(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Lorg/fourthline/cling/model/action/ActionInvocation;)V

    .line 208
    invoke-virtual {p0, p1}, Lorg/fourthline/cling/transport/impl/SOAPActionProcessorImpl;->toString(Lorg/w3c/dom/Document;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p3, p1}, Lorg/fourthline/cling/model/message/control/ActionResponseMessage;->setBody(Ljava/lang/String;)V

    return-void
.end method

.method protected writeFaultElement(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Lorg/fourthline/cling/model/action/ActionInvocation;)V
    .locals 4

    const-string v0, "http://schemas.xmlsoap.org/soap/envelope/"

    const-string v1, "s:Fault"

    .line 405
    invoke-interface {p1, v0, v1}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 406
    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    const-string p2, "faultcode"

    const-string v1, "s:Client"

    .line 409
    invoke-static {p1, v0, p2, v1}, Lorg/fourthline/cling/model/XMLUtil;->appendNewElement(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/Object;)Lorg/w3c/dom/Element;

    const-string p2, "faultstring"

    const-string v1, "UPnPError"

    .line 410
    invoke-static {p1, v0, p2, v1}, Lorg/fourthline/cling/model/XMLUtil;->appendNewElement(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/Object;)Lorg/w3c/dom/Element;

    const-string p2, "detail"

    .line 412
    invoke-interface {p1, p2}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p2

    .line 413
    invoke-interface {v0, p2}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    const-string v0, "urn:schemas-upnp-org:control-1-0"

    const-string v1, "UPnPError"

    .line 415
    invoke-interface {p1, v0, v1}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 416
    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 418
    invoke-virtual {p3}, Lorg/fourthline/cling/model/action/ActionInvocation;->getFailure()Lorg/fourthline/cling/model/action/ActionException;

    move-result-object p2

    invoke-virtual {p2}, Lorg/fourthline/cling/model/action/ActionException;->getErrorCode()I

    move-result p2

    .line 419
    invoke-virtual {p3}, Lorg/fourthline/cling/model/action/ActionInvocation;->getFailure()Lorg/fourthline/cling/model/action/ActionException;

    move-result-object p3

    invoke-virtual {p3}, Lorg/fourthline/cling/model/action/ActionException;->getMessage()Ljava/lang/String;

    move-result-object p3

    .line 421
    sget-object v1, Lorg/fourthline/cling/transport/impl/SOAPActionProcessorImpl;->log:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Writing fault element: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    const-string v1, "errorCode"

    .line 423
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, v0, v1, p2}, Lorg/fourthline/cling/model/XMLUtil;->appendNewElement(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/Object;)Lorg/w3c/dom/Element;

    const-string p2, "errorDescription"

    .line 424
    invoke-static {p1, v0, p2, p3}, Lorg/fourthline/cling/model/XMLUtil;->appendNewElement(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/Object;)Lorg/w3c/dom/Element;

    return-void
.end method
