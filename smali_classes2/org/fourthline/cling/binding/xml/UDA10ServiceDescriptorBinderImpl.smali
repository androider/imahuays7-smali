.class public Lorg/fourthline/cling/binding/xml/UDA10ServiceDescriptorBinderImpl;
.super Ljava/lang/Object;
.source "UDA10ServiceDescriptorBinderImpl.java"

# interfaces
.implements Lorg/fourthline/cling/binding/xml/ServiceDescriptorBinder;
.implements Lorg/xml/sax/ErrorHandler;


# static fields
.field private static log:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 63
    const-class v0, Lorg/fourthline/cling/binding/xml/ServiceDescriptorBinder;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/fourthline/cling/binding/xml/UDA10ServiceDescriptorBinderImpl;->log:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private generateAction(Lorg/fourthline/cling/model/meta/Action;Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;)V
    .locals 3

    .line 409
    sget-object v0, Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;->action:Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;

    invoke-static {p2, p3, v0}, Lorg/fourthline/cling/model/XMLUtil;->appendNewElement(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Ljava/lang/Enum;)Lorg/w3c/dom/Element;

    move-result-object p3

    .line 411
    sget-object v0, Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;->name:Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;

    invoke-virtual {p1}, Lorg/fourthline/cling/model/meta/Action;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, p3, v0, v1}, Lorg/fourthline/cling/model/XMLUtil;->appendNewElementIfNotNull(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Ljava/lang/Enum;Ljava/lang/Object;)Lorg/w3c/dom/Element;

    .line 413
    invoke-virtual {p1}, Lorg/fourthline/cling/model/meta/Action;->hasArguments()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 414
    sget-object v0, Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;->argumentList:Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;

    invoke-static {p2, p3, v0}, Lorg/fourthline/cling/model/XMLUtil;->appendNewElement(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Ljava/lang/Enum;)Lorg/w3c/dom/Element;

    move-result-object p3

    .line 415
    invoke-virtual {p1}, Lorg/fourthline/cling/model/meta/Action;->getArguments()[Lorg/fourthline/cling/model/meta/ActionArgument;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 416
    invoke-direct {p0, v2, p2, p3}, Lorg/fourthline/cling/binding/xml/UDA10ServiceDescriptorBinderImpl;->generateActionArgument(Lorg/fourthline/cling/model/meta/ActionArgument;Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private generateActionArgument(Lorg/fourthline/cling/model/meta/ActionArgument;Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;)V
    .locals 3

    .line 423
    sget-object v0, Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;->argument:Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;

    invoke-static {p2, p3, v0}, Lorg/fourthline/cling/model/XMLUtil;->appendNewElement(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Ljava/lang/Enum;)Lorg/w3c/dom/Element;

    move-result-object p3

    .line 425
    sget-object v0, Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;->name:Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;

    invoke-virtual {p1}, Lorg/fourthline/cling/model/meta/ActionArgument;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, p3, v0, v1}, Lorg/fourthline/cling/model/XMLUtil;->appendNewElementIfNotNull(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Ljava/lang/Enum;Ljava/lang/Object;)Lorg/w3c/dom/Element;

    .line 426
    sget-object v0, Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;->direction:Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;

    invoke-virtual {p1}, Lorg/fourthline/cling/model/meta/ActionArgument;->getDirection()Lorg/fourthline/cling/model/meta/ActionArgument$Direction;

    move-result-object v1

    invoke-virtual {v1}, Lorg/fourthline/cling/model/meta/ActionArgument$Direction;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, p3, v0, v1}, Lorg/fourthline/cling/model/XMLUtil;->appendNewElementIfNotNull(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Ljava/lang/Enum;Ljava/lang/Object;)Lorg/w3c/dom/Element;

    .line 427
    invoke-virtual {p1}, Lorg/fourthline/cling/model/meta/ActionArgument;->isReturnValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 429
    sget-object v0, Lorg/fourthline/cling/binding/xml/UDA10ServiceDescriptorBinderImpl;->log:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UPnP specification violation: Not producing <retval> element to be compatible with WMP12: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 432
    :cond_0
    sget-object v0, Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;->relatedStateVariable:Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;

    invoke-virtual {p1}, Lorg/fourthline/cling/model/meta/ActionArgument;->getRelatedStateVariableName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p3, v0, p1}, Lorg/fourthline/cling/model/XMLUtil;->appendNewElementIfNotNull(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Ljava/lang/Enum;Ljava/lang/Object;)Lorg/w3c/dom/Element;

    return-void
.end method

.method private generateActionList(Lorg/fourthline/cling/model/meta/Service;Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;)V
    .locals 5

    .line 399
    sget-object v0, Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;->actionList:Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;

    invoke-static {p2, p3, v0}, Lorg/fourthline/cling/model/XMLUtil;->appendNewElement(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Ljava/lang/Enum;)Lorg/w3c/dom/Element;

    move-result-object p3

    .line 401
    invoke-virtual {p1}, Lorg/fourthline/cling/model/meta/Service;->getActions()[Lorg/fourthline/cling/model/meta/Action;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 402
    invoke-virtual {v2}, Lorg/fourthline/cling/model/meta/Action;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "QueryStateVariable"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 403
    invoke-direct {p0, v2, p2, p3}, Lorg/fourthline/cling/binding/xml/UDA10ServiceDescriptorBinderImpl;->generateAction(Lorg/fourthline/cling/model/meta/Action;Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private generateScpd(Lorg/fourthline/cling/model/meta/Service;Lorg/w3c/dom/Document;)V
    .locals 2

    const-string v0, "urn:schemas-upnp-org:service-1-0"

    .line 381
    sget-object v1, Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;->scpd:Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;

    invoke-virtual {v1}, Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 382
    invoke-interface {p2, v0}, Lorg/w3c/dom/Document;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 384
    invoke-direct {p0, p1, p2, v0}, Lorg/fourthline/cling/binding/xml/UDA10ServiceDescriptorBinderImpl;->generateSpecVersion(Lorg/fourthline/cling/model/meta/Service;Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;)V

    .line 385
    invoke-virtual {p1}, Lorg/fourthline/cling/model/meta/Service;->hasActions()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 386
    invoke-direct {p0, p1, p2, v0}, Lorg/fourthline/cling/binding/xml/UDA10ServiceDescriptorBinderImpl;->generateActionList(Lorg/fourthline/cling/model/meta/Service;Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;)V

    .line 388
    :cond_0
    invoke-direct {p0, p1, p2, v0}, Lorg/fourthline/cling/binding/xml/UDA10ServiceDescriptorBinderImpl;->generateServiceStateTable(Lorg/fourthline/cling/model/meta/Service;Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;)V

    return-void
.end method

.method private generateServiceStateTable(Lorg/fourthline/cling/model/meta/Service;Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;)V
    .locals 3

    .line 437
    sget-object v0, Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;->serviceStateTable:Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;

    invoke-static {p2, p3, v0}, Lorg/fourthline/cling/model/XMLUtil;->appendNewElement(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Ljava/lang/Enum;)Lorg/w3c/dom/Element;

    move-result-object p3

    .line 439
    invoke-virtual {p1}, Lorg/fourthline/cling/model/meta/Service;->getStateVariables()[Lorg/fourthline/cling/model/meta/StateVariable;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 440
    invoke-direct {p0, v2, p2, p3}, Lorg/fourthline/cling/binding/xml/UDA10ServiceDescriptorBinderImpl;->generateStateVariable(Lorg/fourthline/cling/model/meta/StateVariable;Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private generateSpecVersion(Lorg/fourthline/cling/model/meta/Service;Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;)V
    .locals 2

    .line 392
    sget-object v0, Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;->specVersion:Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;

    invoke-static {p2, p3, v0}, Lorg/fourthline/cling/model/XMLUtil;->appendNewElement(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Ljava/lang/Enum;)Lorg/w3c/dom/Element;

    move-result-object p3

    .line 393
    sget-object v0, Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;->major:Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;

    invoke-virtual {p1}, Lorg/fourthline/cling/model/meta/Service;->getDevice()Lorg/fourthline/cling/model/meta/Device;

    move-result-object v1

    invoke-virtual {v1}, Lorg/fourthline/cling/model/meta/Device;->getVersion()Lorg/fourthline/cling/model/meta/UDAVersion;

    move-result-object v1

    invoke-virtual {v1}, Lorg/fourthline/cling/model/meta/UDAVersion;->getMajor()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2, p3, v0, v1}, Lorg/fourthline/cling/model/XMLUtil;->appendNewElementIfNotNull(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Ljava/lang/Enum;Ljava/lang/Object;)Lorg/w3c/dom/Element;

    .line 394
    sget-object v0, Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;->minor:Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;

    invoke-virtual {p1}, Lorg/fourthline/cling/model/meta/Service;->getDevice()Lorg/fourthline/cling/model/meta/Device;

    move-result-object p1

    invoke-virtual {p1}, Lorg/fourthline/cling/model/meta/Device;->getVersion()Lorg/fourthline/cling/model/meta/UDAVersion;

    move-result-object p1

    invoke-virtual {p1}, Lorg/fourthline/cling/model/meta/UDAVersion;->getMinor()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2, p3, v0, p1}, Lorg/fourthline/cling/model/XMLUtil;->appendNewElementIfNotNull(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Ljava/lang/Enum;Ljava/lang/Object;)Lorg/w3c/dom/Element;

    return-void
.end method

.method private generateStateVariable(Lorg/fourthline/cling/model/meta/StateVariable;Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;)V
    .locals 6

    .line 446
    sget-object v0, Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;->stateVariable:Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;

    invoke-static {p2, p3, v0}, Lorg/fourthline/cling/model/XMLUtil;->appendNewElement(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Ljava/lang/Enum;)Lorg/w3c/dom/Element;

    move-result-object p3

    .line 448
    sget-object v0, Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;->name:Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;

    invoke-virtual {p1}, Lorg/fourthline/cling/model/meta/StateVariable;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, p3, v0, v1}, Lorg/fourthline/cling/model/XMLUtil;->appendNewElementIfNotNull(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Ljava/lang/Enum;Ljava/lang/Object;)Lorg/w3c/dom/Element;

    .line 450
    invoke-virtual {p1}, Lorg/fourthline/cling/model/meta/StateVariable;->getTypeDetails()Lorg/fourthline/cling/model/meta/StateVariableTypeDetails;

    move-result-object v0

    invoke-virtual {v0}, Lorg/fourthline/cling/model/meta/StateVariableTypeDetails;->getDatatype()Lorg/fourthline/cling/model/types/Datatype;

    move-result-object v0

    instance-of v0, v0, Lorg/fourthline/cling/model/types/CustomDatatype;

    if-eqz v0, :cond_0

    .line 451
    sget-object v0, Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;->dataType:Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;

    .line 452
    invoke-virtual {p1}, Lorg/fourthline/cling/model/meta/StateVariable;->getTypeDetails()Lorg/fourthline/cling/model/meta/StateVariableTypeDetails;

    move-result-object v1

    invoke-virtual {v1}, Lorg/fourthline/cling/model/meta/StateVariableTypeDetails;->getDatatype()Lorg/fourthline/cling/model/types/Datatype;

    move-result-object v1

    check-cast v1, Lorg/fourthline/cling/model/types/CustomDatatype;

    invoke-virtual {v1}, Lorg/fourthline/cling/model/types/CustomDatatype;->getName()Ljava/lang/String;

    move-result-object v1

    .line 451
    invoke-static {p2, p3, v0, v1}, Lorg/fourthline/cling/model/XMLUtil;->appendNewElementIfNotNull(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Ljava/lang/Enum;Ljava/lang/Object;)Lorg/w3c/dom/Element;

    goto :goto_0

    .line 454
    :cond_0
    sget-object v0, Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;->dataType:Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;

    .line 455
    invoke-virtual {p1}, Lorg/fourthline/cling/model/meta/StateVariable;->getTypeDetails()Lorg/fourthline/cling/model/meta/StateVariableTypeDetails;

    move-result-object v1

    invoke-virtual {v1}, Lorg/fourthline/cling/model/meta/StateVariableTypeDetails;->getDatatype()Lorg/fourthline/cling/model/types/Datatype;

    move-result-object v1

    invoke-interface {v1}, Lorg/fourthline/cling/model/types/Datatype;->getBuiltin()Lorg/fourthline/cling/model/types/Datatype$Builtin;

    move-result-object v1

    invoke-virtual {v1}, Lorg/fourthline/cling/model/types/Datatype$Builtin;->getDescriptorName()Ljava/lang/String;

    move-result-object v1

    .line 454
    invoke-static {p2, p3, v0, v1}, Lorg/fourthline/cling/model/XMLUtil;->appendNewElementIfNotNull(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Ljava/lang/Enum;Ljava/lang/Object;)Lorg/w3c/dom/Element;

    .line 458
    :goto_0
    sget-object v0, Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;->defaultValue:Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;

    .line 459
    invoke-virtual {p1}, Lorg/fourthline/cling/model/meta/StateVariable;->getTypeDetails()Lorg/fourthline/cling/model/meta/StateVariableTypeDetails;

    move-result-object v1

    invoke-virtual {v1}, Lorg/fourthline/cling/model/meta/StateVariableTypeDetails;->getDefaultValue()Ljava/lang/String;

    move-result-object v1

    .line 458
    invoke-static {p2, p3, v0, v1}, Lorg/fourthline/cling/model/XMLUtil;->appendNewElementIfNotNull(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Ljava/lang/Enum;Ljava/lang/Object;)Lorg/w3c/dom/Element;

    .line 462
    invoke-virtual {p1}, Lorg/fourthline/cling/model/meta/StateVariable;->getEventDetails()Lorg/fourthline/cling/model/meta/StateVariableEventDetails;

    move-result-object v0

    invoke-virtual {v0}, Lorg/fourthline/cling/model/meta/StateVariableEventDetails;->isSendEvents()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 463
    sget-object v0, Lorg/fourthline/cling/binding/xml/Descriptor$Service$ATTRIBUTE;->sendEvents:Lorg/fourthline/cling/binding/xml/Descriptor$Service$ATTRIBUTE;

    invoke-virtual {v0}, Lorg/fourthline/cling/binding/xml/Descriptor$Service$ATTRIBUTE;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "yes"

    invoke-interface {p3, v0, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 465
    :cond_1
    sget-object v0, Lorg/fourthline/cling/binding/xml/Descriptor$Service$ATTRIBUTE;->sendEvents:Lorg/fourthline/cling/binding/xml/Descriptor$Service$ATTRIBUTE;

    invoke-virtual {v0}, Lorg/fourthline/cling/binding/xml/Descriptor$Service$ATTRIBUTE;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "no"

    invoke-interface {p3, v0, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    :goto_1
    invoke-virtual {p1}, Lorg/fourthline/cling/model/meta/StateVariable;->getTypeDetails()Lorg/fourthline/cling/model/meta/StateVariableTypeDetails;

    move-result-object v0

    invoke-virtual {v0}, Lorg/fourthline/cling/model/meta/StateVariableTypeDetails;->getAllowedValues()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 469
    sget-object v0, Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;->allowedValueList:Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;

    invoke-static {p2, p3, v0}, Lorg/fourthline/cling/model/XMLUtil;->appendNewElement(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Ljava/lang/Enum;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 470
    invoke-virtual {p1}, Lorg/fourthline/cling/model/meta/StateVariable;->getTypeDetails()Lorg/fourthline/cling/model/meta/StateVariableTypeDetails;

    move-result-object v1

    invoke-virtual {v1}, Lorg/fourthline/cling/model/meta/StateVariableTypeDetails;->getAllowedValues()[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    .line 471
    sget-object v5, Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;->allowedValue:Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;

    invoke-static {p2, v0, v5, v4}, Lorg/fourthline/cling/model/XMLUtil;->appendNewElementIfNotNull(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Ljava/lang/Enum;Ljava/lang/Object;)Lorg/w3c/dom/Element;

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 475
    :cond_2
    invoke-virtual {p1}, Lorg/fourthline/cling/model/meta/StateVariable;->getTypeDetails()Lorg/fourthline/cling/model/meta/StateVariableTypeDetails;

    move-result-object v0

    invoke-virtual {v0}, Lorg/fourthline/cling/model/meta/StateVariableTypeDetails;->getAllowedValueRange()Lorg/fourthline/cling/model/meta/StateVariableAllowedValueRange;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 476
    sget-object v0, Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;->allowedValueRange:Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;

    invoke-static {p2, p3, v0}, Lorg/fourthline/cling/model/XMLUtil;->appendNewElement(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Ljava/lang/Enum;)Lorg/w3c/dom/Element;

    move-result-object p3

    .line 477
    sget-object v0, Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;->minimum:Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;

    .line 478
    invoke-virtual {p1}, Lorg/fourthline/cling/model/meta/StateVariable;->getTypeDetails()Lorg/fourthline/cling/model/meta/StateVariableTypeDetails;

    move-result-object v1

    invoke-virtual {v1}, Lorg/fourthline/cling/model/meta/StateVariableTypeDetails;->getAllowedValueRange()Lorg/fourthline/cling/model/meta/StateVariableAllowedValueRange;

    move-result-object v1

    invoke-virtual {v1}, Lorg/fourthline/cling/model/meta/StateVariableAllowedValueRange;->getMinimum()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 477
    invoke-static {p2, p3, v0, v1}, Lorg/fourthline/cling/model/XMLUtil;->appendNewElementIfNotNull(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Ljava/lang/Enum;Ljava/lang/Object;)Lorg/w3c/dom/Element;

    .line 480
    sget-object v0, Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;->maximum:Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;

    .line 481
    invoke-virtual {p1}, Lorg/fourthline/cling/model/meta/StateVariable;->getTypeDetails()Lorg/fourthline/cling/model/meta/StateVariableTypeDetails;

    move-result-object v1

    invoke-virtual {v1}, Lorg/fourthline/cling/model/meta/StateVariableTypeDetails;->getAllowedValueRange()Lorg/fourthline/cling/model/meta/StateVariableAllowedValueRange;

    move-result-object v1

    invoke-virtual {v1}, Lorg/fourthline/cling/model/meta/StateVariableAllowedValueRange;->getMaximum()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 480
    invoke-static {p2, p3, v0, v1}, Lorg/fourthline/cling/model/XMLUtil;->appendNewElementIfNotNull(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Ljava/lang/Enum;Ljava/lang/Object;)Lorg/w3c/dom/Element;

    .line 483
    invoke-virtual {p1}, Lorg/fourthline/cling/model/meta/StateVariable;->getTypeDetails()Lorg/fourthline/cling/model/meta/StateVariableTypeDetails;

    move-result-object v0

    invoke-virtual {v0}, Lorg/fourthline/cling/model/meta/StateVariableTypeDetails;->getAllowedValueRange()Lorg/fourthline/cling/model/meta/StateVariableAllowedValueRange;

    move-result-object v0

    invoke-virtual {v0}, Lorg/fourthline/cling/model/meta/StateVariableAllowedValueRange;->getStep()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    cmp-long v4, v0, v2

    if-ltz v4, :cond_3

    .line 484
    sget-object v0, Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;->step:Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;

    .line 485
    invoke-virtual {p1}, Lorg/fourthline/cling/model/meta/StateVariable;->getTypeDetails()Lorg/fourthline/cling/model/meta/StateVariableTypeDetails;

    move-result-object p1

    invoke-virtual {p1}, Lorg/fourthline/cling/model/meta/StateVariableTypeDetails;->getAllowedValueRange()Lorg/fourthline/cling/model/meta/StateVariableAllowedValueRange;

    move-result-object p1

    invoke-virtual {p1}, Lorg/fourthline/cling/model/meta/StateVariableAllowedValueRange;->getStep()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    .line 484
    invoke-static {p2, p3, v0, p1}, Lorg/fourthline/cling/model/XMLUtil;->appendNewElementIfNotNull(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Ljava/lang/Enum;Ljava/lang/Object;)Lorg/w3c/dom/Element;

    :cond_3
    return-void
.end method


# virtual methods
.method public buildDOM(Lorg/fourthline/cling/model/meta/Service;)Lorg/w3c/dom/Document;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/binding/xml/DescriptorBindingException;
        }
    .end annotation

    .line 364
    :try_start_0
    sget-object v0, Lorg/fourthline/cling/binding/xml/UDA10ServiceDescriptorBinderImpl;->log:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Generating XML descriptor from service model: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 366
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    const/4 v1, 0x1

    .line 367
    invoke-virtual {v0, v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->setNamespaceAware(Z)V

    .line 369
    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilder;->newDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    .line 370
    invoke-direct {p0, p1, v0}, Lorg/fourthline/cling/binding/xml/UDA10ServiceDescriptorBinderImpl;->generateScpd(Lorg/fourthline/cling/model/meta/Service;Lorg/w3c/dom/Document;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 375
    new-instance v0, Lorg/fourthline/cling/binding/xml/DescriptorBindingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not generate service descriptor: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/fourthline/cling/binding/xml/DescriptorBindingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method protected buildInstance(Lorg/fourthline/cling/model/meta/Service;Lorg/fourthline/cling/binding/staging/MutableService;)Lorg/fourthline/cling/model/meta/Service;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Lorg/fourthline/cling/model/meta/Service;",
            ">(TS;",
            "Lorg/fourthline/cling/binding/staging/MutableService;",
            ")TS;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/model/ValidationException;
        }
    .end annotation

    .line 117
    invoke-virtual {p1}, Lorg/fourthline/cling/model/meta/Service;->getDevice()Lorg/fourthline/cling/model/meta/Device;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/fourthline/cling/binding/staging/MutableService;->build(Lorg/fourthline/cling/model/meta/Device;)Lorg/fourthline/cling/model/meta/Service;

    move-result-object p1

    return-object p1
.end method

.method public describe(Lorg/fourthline/cling/model/meta/Service;Ljava/lang/String;)Lorg/fourthline/cling/model/meta/Service;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Lorg/fourthline/cling/model/meta/Service;",
            ">(TS;",
            "Ljava/lang/String;",
            ")TS;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/binding/xml/DescriptorBindingException;,
            Lorg/fourthline/cling/model/ValidationException;
        }
    .end annotation

    if-eqz p2, :cond_1

    .line 66
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 71
    :cond_0
    :try_start_0
    sget-object v0, Lorg/fourthline/cling/binding/xml/UDA10ServiceDescriptorBinderImpl;->log:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Populating service from XML descriptor: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 73
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    const/4 v1, 0x1

    .line 74
    invoke-virtual {v0, v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->setNamespaceAware(Z)V

    .line 75
    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    .line 76
    invoke-virtual {v0, p0}, Ljavax/xml/parsers/DocumentBuilder;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    .line 78
    new-instance v1, Lorg/xml/sax/InputSource;

    new-instance v2, Ljava/io/StringReader;

    .line 81
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v2, p2}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    .line 78
    invoke-virtual {v0, v1}, Ljavax/xml/parsers/DocumentBuilder;->parse(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;

    move-result-object p2

    .line 85
    invoke-virtual {p0, p1, p2}, Lorg/fourthline/cling/binding/xml/UDA10ServiceDescriptorBinderImpl;->describe(Lorg/fourthline/cling/model/meta/Service;Lorg/w3c/dom/Document;)Lorg/fourthline/cling/model/meta/Service;

    move-result-object p1
    :try_end_0
    .catch Lorg/fourthline/cling/model/ValidationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 90
    new-instance p2, Lorg/fourthline/cling/binding/xml/DescriptorBindingException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not parse service descriptor: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lorg/fourthline/cling/binding/xml/DescriptorBindingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 88
    throw p1

    .line 67
    :cond_1
    :goto_0
    new-instance p1, Lorg/fourthline/cling/binding/xml/DescriptorBindingException;

    const-string p2, "Null or empty descriptor"

    invoke-direct {p1, p2}, Lorg/fourthline/cling/binding/xml/DescriptorBindingException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public describe(Lorg/fourthline/cling/model/meta/Service;Lorg/w3c/dom/Document;)Lorg/fourthline/cling/model/meta/Service;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Lorg/fourthline/cling/model/meta/Service;",
            ">(TS;",
            "Lorg/w3c/dom/Document;",
            ")TS;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/binding/xml/DescriptorBindingException;,
            Lorg/fourthline/cling/model/ValidationException;
        }
    .end annotation

    .line 96
    :try_start_0
    sget-object v0, Lorg/fourthline/cling/binding/xml/UDA10ServiceDescriptorBinderImpl;->log:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Populating service from DOM: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 99
    new-instance v0, Lorg/fourthline/cling/binding/staging/MutableService;

    invoke-direct {v0}, Lorg/fourthline/cling/binding/staging/MutableService;-><init>()V

    .line 101
    invoke-virtual {p0, v0, p1}, Lorg/fourthline/cling/binding/xml/UDA10ServiceDescriptorBinderImpl;->hydrateBasic(Lorg/fourthline/cling/binding/staging/MutableService;Lorg/fourthline/cling/model/meta/Service;)V

    .line 103
    invoke-interface {p2}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object p2

    .line 104
    invoke-virtual {p0, v0, p2}, Lorg/fourthline/cling/binding/xml/UDA10ServiceDescriptorBinderImpl;->hydrateRoot(Lorg/fourthline/cling/binding/staging/MutableService;Lorg/w3c/dom/Element;)V

    .line 107
    invoke-virtual {p0, p1, v0}, Lorg/fourthline/cling/binding/xml/UDA10ServiceDescriptorBinderImpl;->buildInstance(Lorg/fourthline/cling/model/meta/Service;Lorg/fourthline/cling/binding/staging/MutableService;)Lorg/fourthline/cling/model/meta/Service;

    move-result-object p1
    :try_end_0
    .catch Lorg/fourthline/cling/model/ValidationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 112
    new-instance p2, Lorg/fourthline/cling/binding/xml/DescriptorBindingException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not parse service DOM: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lorg/fourthline/cling/binding/xml/DescriptorBindingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 110
    throw p1
.end method

.method public error(Lorg/xml/sax/SAXParseException;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 497
    throw p1
.end method

.method public fatalError(Lorg/xml/sax/SAXParseException;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 501
    throw p1
.end method

.method public generate(Lorg/fourthline/cling/model/meta/Service;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/binding/xml/DescriptorBindingException;
        }
    .end annotation

    .line 352
    :try_start_0
    sget-object v0, Lorg/fourthline/cling/binding/xml/UDA10ServiceDescriptorBinderImpl;->log:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Generating XML descriptor from service model: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 354
    invoke-virtual {p0, p1}, Lorg/fourthline/cling/binding/xml/UDA10ServiceDescriptorBinderImpl;->buildDOM(Lorg/fourthline/cling/model/meta/Service;)Lorg/w3c/dom/Document;

    move-result-object p1

    invoke-static {p1}, Lorg/fourthline/cling/model/XMLUtil;->documentToString(Lorg/w3c/dom/Document;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 357
    new-instance v0, Lorg/fourthline/cling/binding/xml/DescriptorBindingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not build DOM: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/fourthline/cling/binding/xml/DescriptorBindingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public hydrateAction(Lorg/fourthline/cling/binding/staging/MutableAction;Lorg/w3c/dom/Node;)V
    .locals 7

    .line 204
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object p2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 205
    :goto_0
    invoke-interface {p2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 206
    invoke-interface {p2, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    .line 208
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    goto :goto_3

    .line 211
    :cond_0
    sget-object v3, Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;->name:Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;

    invoke-virtual {v3, v2}, Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;->equals(Lorg/w3c/dom/Node;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 212
    invoke-static {v2}, Lorg/fourthline/cling/model/XMLUtil;->getTextContent(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lorg/fourthline/cling/binding/staging/MutableAction;->name:Ljava/lang/String;

    goto :goto_3

    .line 213
    :cond_1
    sget-object v3, Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;->argumentList:Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;

    invoke-virtual {v3, v2}, Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;->equals(Lorg/w3c/dom/Node;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 216
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v2

    const/4 v3, 0x0

    .line 217
    :goto_1
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    if-ge v3, v5, :cond_3

    .line 218
    invoke-interface {v2, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    .line 220
    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v6

    if-eq v6, v4, :cond_2

    goto :goto_2

    .line 223
    :cond_2
    new-instance v6, Lorg/fourthline/cling/binding/staging/MutableActionArgument;

    invoke-direct {v6}, Lorg/fourthline/cling/binding/staging/MutableActionArgument;-><init>()V

    .line 224
    invoke-virtual {p0, v6, v5}, Lorg/fourthline/cling/binding/xml/UDA10ServiceDescriptorBinderImpl;->hydrateActionArgument(Lorg/fourthline/cling/binding/staging/MutableActionArgument;Lorg/w3c/dom/Node;)V

    .line 225
    iget-object v5, p1, Lorg/fourthline/cling/binding/staging/MutableAction;->arguments:Ljava/util/List;

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method public hydrateActionArgument(Lorg/fourthline/cling/binding/staging/MutableActionArgument;Lorg/w3c/dom/Node;)V
    .locals 5

    .line 234
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object p2

    const/4 v0, 0x0

    .line 235
    :goto_0
    invoke-interface {p2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-ge v0, v1, :cond_5

    .line 236
    invoke-interface {p2, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    .line 238
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    goto :goto_1

    .line 241
    :cond_0
    sget-object v2, Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;->name:Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;

    invoke-virtual {v2, v1}, Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;->equals(Lorg/w3c/dom/Node;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 242
    invoke-static {v1}, Lorg/fourthline/cling/model/XMLUtil;->getTextContent(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lorg/fourthline/cling/binding/staging/MutableActionArgument;->name:Ljava/lang/String;

    goto :goto_1

    .line 243
    :cond_1
    sget-object v2, Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;->direction:Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;

    invoke-virtual {v2, v1}, Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;->equals(Lorg/w3c/dom/Node;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 244
    invoke-static {v1}, Lorg/fourthline/cling/model/XMLUtil;->getTextContent(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v1

    .line 246
    :try_start_0
    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/fourthline/cling/model/meta/ActionArgument$Direction;->valueOf(Ljava/lang/String;)Lorg/fourthline/cling/model/meta/ActionArgument$Direction;

    move-result-object v2

    iput-object v2, p1, Lorg/fourthline/cling/binding/staging/MutableActionArgument;->direction:Lorg/fourthline/cling/model/meta/ActionArgument$Direction;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 249
    :catch_0
    sget-object v2, Lorg/fourthline/cling/binding/xml/UDA10ServiceDescriptorBinderImpl;->log:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UPnP specification violation: Invalid action argument direction, assuming \'IN\': "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 250
    sget-object v1, Lorg/fourthline/cling/model/meta/ActionArgument$Direction;->IN:Lorg/fourthline/cling/model/meta/ActionArgument$Direction;

    iput-object v1, p1, Lorg/fourthline/cling/binding/staging/MutableActionArgument;->direction:Lorg/fourthline/cling/model/meta/ActionArgument$Direction;

    goto :goto_1

    .line 252
    :cond_2
    sget-object v2, Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;->relatedStateVariable:Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;

    invoke-virtual {v2, v1}, Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;->equals(Lorg/w3c/dom/Node;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 253
    invoke-static {v1}, Lorg/fourthline/cling/model/XMLUtil;->getTextContent(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lorg/fourthline/cling/binding/staging/MutableActionArgument;->relatedStateVariable:Ljava/lang/String;

    goto :goto_1

    .line 254
    :cond_3
    sget-object v2, Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;->retval:Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;

    invoke-virtual {v2, v1}, Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;->equals(Lorg/w3c/dom/Node;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 255
    iput-boolean v3, p1, Lorg/fourthline/cling/binding/staging/MutableActionArgument;->retval:Z

    :cond_4
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method public hydrateActionList(Lorg/fourthline/cling/binding/staging/MutableService;Lorg/w3c/dom/Node;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/binding/xml/DescriptorBindingException;
        }
    .end annotation

    .line 187
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object p2

    const/4 v0, 0x0

    .line 188
    :goto_0
    invoke-interface {p2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 189
    invoke-interface {p2, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    .line 191
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    goto :goto_1

    .line 194
    :cond_0
    sget-object v2, Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;->action:Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;

    invoke-virtual {v2, v1}, Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;->equals(Lorg/w3c/dom/Node;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 195
    new-instance v2, Lorg/fourthline/cling/binding/staging/MutableAction;

    invoke-direct {v2}, Lorg/fourthline/cling/binding/staging/MutableAction;-><init>()V

    .line 196
    invoke-virtual {p0, v2, v1}, Lorg/fourthline/cling/binding/xml/UDA10ServiceDescriptorBinderImpl;->hydrateAction(Lorg/fourthline/cling/binding/staging/MutableAction;Lorg/w3c/dom/Node;)V

    .line 197
    iget-object v1, p1, Lorg/fourthline/cling/binding/staging/MutableService;->actions:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method protected hydrateBasic(Lorg/fourthline/cling/binding/staging/MutableService;Lorg/fourthline/cling/model/meta/Service;)V
    .locals 1

    .line 121
    invoke-virtual {p2}, Lorg/fourthline/cling/model/meta/Service;->getServiceId()Lorg/fourthline/cling/model/types/ServiceId;

    move-result-object v0

    iput-object v0, p1, Lorg/fourthline/cling/binding/staging/MutableService;->serviceId:Lorg/fourthline/cling/model/types/ServiceId;

    .line 122
    invoke-virtual {p2}, Lorg/fourthline/cling/model/meta/Service;->getServiceType()Lorg/fourthline/cling/model/types/ServiceType;

    move-result-object v0

    iput-object v0, p1, Lorg/fourthline/cling/binding/staging/MutableService;->serviceType:Lorg/fourthline/cling/model/types/ServiceType;

    .line 123
    instance-of v0, p2, Lorg/fourthline/cling/model/meta/RemoteService;

    if-eqz v0, :cond_0

    .line 124
    check-cast p2, Lorg/fourthline/cling/model/meta/RemoteService;

    .line 125
    invoke-virtual {p2}, Lorg/fourthline/cling/model/meta/RemoteService;->getControlURI()Ljava/net/URI;

    move-result-object v0

    iput-object v0, p1, Lorg/fourthline/cling/binding/staging/MutableService;->controlURI:Ljava/net/URI;

    .line 126
    invoke-virtual {p2}, Lorg/fourthline/cling/model/meta/RemoteService;->getEventSubscriptionURI()Ljava/net/URI;

    move-result-object v0

    iput-object v0, p1, Lorg/fourthline/cling/binding/staging/MutableService;->eventSubscriptionURI:Ljava/net/URI;

    .line 127
    invoke-virtual {p2}, Lorg/fourthline/cling/model/meta/RemoteService;->getDescriptorURI()Ljava/net/URI;

    move-result-object p2

    iput-object p2, p1, Lorg/fourthline/cling/binding/staging/MutableService;->descriptorURI:Ljava/net/URI;

    :cond_0
    return-void
.end method

.method protected hydrateRoot(Lorg/fourthline/cling/binding/staging/MutableService;Lorg/w3c/dom/Element;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/binding/xml/DescriptorBindingException;
        }
    .end annotation

    .line 136
    sget-object v0, Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;->scpd:Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;

    invoke-virtual {v0, p2}, Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;->equals(Lorg/w3c/dom/Node;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 137
    new-instance p1, Lorg/fourthline/cling/binding/xml/DescriptorBindingException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Root element name is not <scpd>: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/fourthline/cling/binding/xml/DescriptorBindingException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 140
    :cond_0
    invoke-interface {p2}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object p2

    const/4 v0, 0x0

    .line 142
    :goto_0
    invoke-interface {p2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-ge v0, v1, :cond_5

    .line 143
    invoke-interface {p2, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    .line 145
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 148
    :cond_1
    sget-object v2, Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;->specVersion:Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;

    invoke-virtual {v2, v1}, Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;->equals(Lorg/w3c/dom/Node;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    .line 153
    :cond_2
    sget-object v2, Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;->actionList:Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;

    invoke-virtual {v2, v1}, Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;->equals(Lorg/w3c/dom/Node;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 154
    invoke-virtual {p0, p1, v1}, Lorg/fourthline/cling/binding/xml/UDA10ServiceDescriptorBinderImpl;->hydrateActionList(Lorg/fourthline/cling/binding/staging/MutableService;Lorg/w3c/dom/Node;)V

    goto :goto_1

    .line 155
    :cond_3
    sget-object v2, Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;->serviceStateTable:Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;

    invoke-virtual {v2, v1}, Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;->equals(Lorg/w3c/dom/Node;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 156
    invoke-virtual {p0, p1, v1}, Lorg/fourthline/cling/binding/xml/UDA10ServiceDescriptorBinderImpl;->hydrateServiceStateTableList(Lorg/fourthline/cling/binding/staging/MutableService;Lorg/w3c/dom/Node;)V

    goto :goto_1

    .line 158
    :cond_4
    sget-object v2, Lorg/fourthline/cling/binding/xml/UDA10ServiceDescriptorBinderImpl;->log:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ignoring unknown element: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method public hydrateServiceStateTableList(Lorg/fourthline/cling/binding/staging/MutableService;Lorg/w3c/dom/Node;)V
    .locals 4

    .line 262
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object p2

    const/4 v0, 0x0

    .line 263
    :goto_0
    invoke-interface {p2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 264
    invoke-interface {p2, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    .line 266
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    goto :goto_1

    .line 269
    :cond_0
    sget-object v2, Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;->stateVariable:Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;

    invoke-virtual {v2, v1}, Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;->equals(Lorg/w3c/dom/Node;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 270
    new-instance v2, Lorg/fourthline/cling/binding/staging/MutableStateVariable;

    invoke-direct {v2}, Lorg/fourthline/cling/binding/staging/MutableStateVariable;-><init>()V

    .line 271
    check-cast v1, Lorg/w3c/dom/Element;

    invoke-virtual {p0, v2, v1}, Lorg/fourthline/cling/binding/xml/UDA10ServiceDescriptorBinderImpl;->hydrateStateVariable(Lorg/fourthline/cling/binding/staging/MutableStateVariable;Lorg/w3c/dom/Element;)V

    .line 272
    iget-object v1, p1, Lorg/fourthline/cling/binding/staging/MutableService;->stateVariables:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public hydrateStateVariable(Lorg/fourthline/cling/binding/staging/MutableStateVariable;Lorg/w3c/dom/Element;)V
    .locals 8

    .line 279
    new-instance v0, Lorg/fourthline/cling/model/meta/StateVariableEventDetails;

    const-string v1, "sendEvents"

    .line 280
    invoke-interface {p2, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    sget-object v1, Lorg/fourthline/cling/binding/xml/Descriptor$Service$ATTRIBUTE;->sendEvents:Lorg/fourthline/cling/binding/xml/Descriptor$Service$ATTRIBUTE;

    .line 281
    invoke-virtual {v1}, Lorg/fourthline/cling/binding/xml/Descriptor$Service$ATTRIBUTE;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v1, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "YES"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-direct {v0, v1}, Lorg/fourthline/cling/model/meta/StateVariableEventDetails;-><init>(Z)V

    iput-object v0, p1, Lorg/fourthline/cling/binding/staging/MutableStateVariable;->eventDetails:Lorg/fourthline/cling/model/meta/StateVariableEventDetails;

    .line 284
    invoke-interface {p2}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object p2

    const/4 v0, 0x0

    .line 285
    :goto_1
    invoke-interface {p2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-ge v0, v1, :cond_10

    .line 286
    invoke-interface {p2, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    .line 288
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v4

    if-eq v4, v3, :cond_1

    goto/16 :goto_7

    .line 291
    :cond_1
    sget-object v4, Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;->name:Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;

    invoke-virtual {v4, v1}, Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;->equals(Lorg/w3c/dom/Node;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 292
    invoke-static {v1}, Lorg/fourthline/cling/model/XMLUtil;->getTextContent(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lorg/fourthline/cling/binding/staging/MutableStateVariable;->name:Ljava/lang/String;

    goto/16 :goto_7

    .line 293
    :cond_2
    sget-object v4, Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;->dataType:Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;

    invoke-virtual {v4, v1}, Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;->equals(Lorg/w3c/dom/Node;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 294
    invoke-static {v1}, Lorg/fourthline/cling/model/XMLUtil;->getTextContent(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v1

    .line 295
    invoke-static {v1}, Lorg/fourthline/cling/model/types/Datatype$Builtin;->getByDescriptorName(Ljava/lang/String;)Lorg/fourthline/cling/model/types/Datatype$Builtin;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 296
    invoke-virtual {v4}, Lorg/fourthline/cling/model/types/Datatype$Builtin;->getDatatype()Lorg/fourthline/cling/model/types/Datatype;

    move-result-object v1

    goto :goto_2

    :cond_3
    new-instance v4, Lorg/fourthline/cling/model/types/CustomDatatype;

    invoke-direct {v4, v1}, Lorg/fourthline/cling/model/types/CustomDatatype;-><init>(Ljava/lang/String;)V

    move-object v1, v4

    :goto_2
    iput-object v1, p1, Lorg/fourthline/cling/binding/staging/MutableStateVariable;->dataType:Lorg/fourthline/cling/model/types/Datatype;

    goto/16 :goto_7

    .line 297
    :cond_4
    sget-object v4, Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;->defaultValue:Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;

    invoke-virtual {v4, v1}, Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;->equals(Lorg/w3c/dom/Node;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 298
    invoke-static {v1}, Lorg/fourthline/cling/model/XMLUtil;->getTextContent(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lorg/fourthline/cling/binding/staging/MutableStateVariable;->defaultValue:Ljava/lang/String;

    goto/16 :goto_7

    .line 299
    :cond_5
    sget-object v4, Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;->allowedValueList:Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;

    invoke-virtual {v4, v1}, Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;->equals(Lorg/w3c/dom/Node;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 301
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 303
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    const/4 v5, 0x0

    .line 304
    :goto_3
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v6

    if-ge v5, v6, :cond_8

    .line 305
    invoke-interface {v1, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    .line 307
    invoke-interface {v6}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v7

    if-eq v7, v3, :cond_6

    goto :goto_4

    .line 310
    :cond_6
    sget-object v7, Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;->allowedValue:Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;

    invoke-virtual {v7, v6}, Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;->equals(Lorg/w3c/dom/Node;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 311
    invoke-static {v6}, Lorg/fourthline/cling/model/XMLUtil;->getTextContent(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 314
    :cond_8
    iput-object v4, p1, Lorg/fourthline/cling/binding/staging/MutableStateVariable;->allowedValues:Ljava/util/List;

    goto :goto_7

    .line 316
    :cond_9
    sget-object v4, Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;->allowedValueRange:Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;

    invoke-virtual {v4, v1}, Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;->equals(Lorg/w3c/dom/Node;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 318
    new-instance v4, Lorg/fourthline/cling/binding/staging/MutableAllowedValueRange;

    invoke-direct {v4}, Lorg/fourthline/cling/binding/staging/MutableAllowedValueRange;-><init>()V

    .line 320
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    const/4 v5, 0x0

    .line 321
    :goto_5
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v6

    if-ge v5, v6, :cond_e

    .line 322
    invoke-interface {v1, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    .line 324
    invoke-interface {v6}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v7

    if-eq v7, v3, :cond_a

    goto :goto_6

    .line 327
    :cond_a
    sget-object v7, Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;->minimum:Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;

    invoke-virtual {v7, v6}, Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;->equals(Lorg/w3c/dom/Node;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 329
    :try_start_0
    invoke-static {v6}, Lorg/fourthline/cling/model/XMLUtil;->getTextContent(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    iput-object v6, v4, Lorg/fourthline/cling/binding/staging/MutableAllowedValueRange;->minimum:Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    .line 332
    :cond_b
    sget-object v7, Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;->maximum:Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;

    invoke-virtual {v7, v6}, Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;->equals(Lorg/w3c/dom/Node;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 334
    :try_start_1
    invoke-static {v6}, Lorg/fourthline/cling/model/XMLUtil;->getTextContent(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    iput-object v6, v4, Lorg/fourthline/cling/binding/staging/MutableAllowedValueRange;->maximum:Ljava/lang/Long;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_6

    .line 337
    :cond_c
    sget-object v7, Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;->step:Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;

    invoke-virtual {v7, v6}, Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;->equals(Lorg/w3c/dom/Node;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 339
    :try_start_2
    invoke-static {v6}, Lorg/fourthline/cling/model/XMLUtil;->getTextContent(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    iput-object v6, v4, Lorg/fourthline/cling/binding/staging/MutableAllowedValueRange;->step:Ljava/lang/Long;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :cond_d
    :goto_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 345
    :cond_e
    iput-object v4, p1, Lorg/fourthline/cling/binding/staging/MutableStateVariable;->allowedValueRange:Lorg/fourthline/cling/binding/staging/MutableAllowedValueRange;

    :cond_f
    :goto_7
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    :cond_10
    return-void
.end method

.method public warning(Lorg/xml/sax/SAXParseException;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 493
    sget-object v0, Lorg/fourthline/cling/binding/xml/UDA10ServiceDescriptorBinderImpl;->log:Ljava/util/logging/Logger;

    invoke-virtual {p1}, Lorg/xml/sax/SAXParseException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    return-void
.end method
