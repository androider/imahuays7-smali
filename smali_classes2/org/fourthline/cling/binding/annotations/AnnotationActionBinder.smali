.class public Lorg/fourthline/cling/binding/annotations/AnnotationActionBinder;
.super Ljava/lang/Object;
.source "AnnotationActionBinder.java"


# static fields
.field private static log:Ljava/util/logging/Logger;


# instance fields
.field protected annotation:Lorg/fourthline/cling/binding/annotations/UpnpAction;

.field protected method:Ljava/lang/reflect/Method;

.field protected stateVariables:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/fourthline/cling/model/meta/StateVariable;",
            "Lorg/fourthline/cling/model/state/StateVariableAccessor;",
            ">;"
        }
    .end annotation
.end field

.field protected stringConvertibleTypes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 47
    const-class v0, Lorg/fourthline/cling/binding/annotations/AnnotationLocalServiceBinder;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/fourthline/cling/binding/annotations/AnnotationActionBinder;->log:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/lang/reflect/Method;Ljava/util/Map;Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Method;",
            "Ljava/util/Map<",
            "Lorg/fourthline/cling/model/meta/StateVariable;",
            "Lorg/fourthline/cling/model/state/StateVariableAccessor;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/Class;",
            ">;)V"
        }
    .end annotation

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const-class v0, Lorg/fourthline/cling/binding/annotations/UpnpAction;

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/binding/annotations/UpnpAction;

    iput-object v0, p0, Lorg/fourthline/cling/binding/annotations/AnnotationActionBinder;->annotation:Lorg/fourthline/cling/binding/annotations/UpnpAction;

    .line 56
    iput-object p2, p0, Lorg/fourthline/cling/binding/annotations/AnnotationActionBinder;->stateVariables:Ljava/util/Map;

    .line 57
    iput-object p1, p0, Lorg/fourthline/cling/binding/annotations/AnnotationActionBinder;->method:Ljava/lang/reflect/Method;

    .line 58
    iput-object p3, p0, Lorg/fourthline/cling/binding/annotations/AnnotationActionBinder;->stringConvertibleTypes:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public appendAction(Ljava/util/Map;)Lorg/fourthline/cling/model/meta/Action;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lorg/fourthline/cling/model/meta/Action;",
            "Lorg/fourthline/cling/model/action/ActionExecutor;",
            ">;)",
            "Lorg/fourthline/cling/model/meta/Action;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/binding/LocalServiceBindingException;
        }
    .end annotation

    .line 80
    invoke-virtual {p0}, Lorg/fourthline/cling/binding/annotations/AnnotationActionBinder;->getAnnotation()Lorg/fourthline/cling/binding/annotations/UpnpAction;

    move-result-object v0

    invoke-interface {v0}, Lorg/fourthline/cling/binding/annotations/UpnpAction;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    invoke-virtual {p0}, Lorg/fourthline/cling/binding/annotations/AnnotationActionBinder;->getAnnotation()Lorg/fourthline/cling/binding/annotations/UpnpAction;

    move-result-object v0

    invoke-interface {v0}, Lorg/fourthline/cling/binding/annotations/UpnpAction;->name()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 83
    :cond_0
    invoke-virtual {p0}, Lorg/fourthline/cling/binding/annotations/AnnotationActionBinder;->getMethod()Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/fourthline/cling/binding/annotations/AnnotationLocalServiceBinder;->toUpnpActionName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 86
    :goto_0
    sget-object v1, Lorg/fourthline/cling/binding/annotations/AnnotationActionBinder;->log:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Creating action and executor: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p0}, Lorg/fourthline/cling/binding/annotations/AnnotationActionBinder;->createInputArguments()Ljava/util/List;

    move-result-object v1

    .line 89
    invoke-virtual {p0}, Lorg/fourthline/cling/binding/annotations/AnnotationActionBinder;->createOutputArguments()Ljava/util/Map;

    move-result-object v2

    .line 91
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 93
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Lorg/fourthline/cling/model/meta/ActionArgument;

    invoke-interface {v1, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/fourthline/cling/model/meta/ActionArgument;

    .line 95
    new-instance v3, Lorg/fourthline/cling/model/meta/Action;

    invoke-direct {v3, v0, v1}, Lorg/fourthline/cling/model/meta/Action;-><init>(Ljava/lang/String;[Lorg/fourthline/cling/model/meta/ActionArgument;)V

    .line 96
    invoke-virtual {p0, v2}, Lorg/fourthline/cling/binding/annotations/AnnotationActionBinder;->createExecutor(Ljava/util/Map;)Lorg/fourthline/cling/model/action/ActionExecutor;

    move-result-object v0

    .line 98
    invoke-interface {p1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v3
.end method

.method protected createExecutor(Ljava/util/Map;)Lorg/fourthline/cling/model/action/ActionExecutor;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lorg/fourthline/cling/model/meta/ActionArgument<",
            "Lorg/fourthline/cling/model/meta/LocalService;",
            ">;",
            "Lorg/fourthline/cling/model/state/StateVariableAccessor;",
            ">;)",
            "Lorg/fourthline/cling/model/action/ActionExecutor;"
        }
    .end annotation

    .line 104
    new-instance v0, Lorg/fourthline/cling/model/action/MethodActionExecutor;

    invoke-virtual {p0}, Lorg/fourthline/cling/binding/annotations/AnnotationActionBinder;->getMethod()Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lorg/fourthline/cling/model/action/MethodActionExecutor;-><init>(Ljava/util/Map;Ljava/lang/reflect/Method;)V

    return-object v0
.end method

.method protected createInputArguments()Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/fourthline/cling/model/meta/ActionArgument;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/binding/LocalServiceBindingException;
        }
    .end annotation

    .line 109
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 113
    invoke-virtual {p0}, Lorg/fourthline/cling/binding/annotations/AnnotationActionBinder;->getMethod()Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 114
    :goto_0
    array-length v5, v1

    if-ge v3, v5, :cond_3

    .line 115
    aget-object v5, v1, v3

    .line 116
    array-length v6, v5

    move v7, v4

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v6, :cond_2

    aget-object v8, v5, v4

    .line 117
    instance-of v9, v8, Lorg/fourthline/cling/binding/annotations/UpnpInputArgument;

    if-eqz v9, :cond_1

    .line 118
    check-cast v8, Lorg/fourthline/cling/binding/annotations/UpnpInputArgument;

    add-int/lit8 v7, v7, 0x1

    .line 122
    invoke-interface {v8}, Lorg/fourthline/cling/binding/annotations/UpnpInputArgument;->name()Ljava/lang/String;

    move-result-object v9

    .line 126
    invoke-interface {v8}, Lorg/fourthline/cling/binding/annotations/UpnpInputArgument;->stateVariable()Ljava/lang/String;

    move-result-object v10

    .line 128
    invoke-virtual {p0}, Lorg/fourthline/cling/binding/annotations/AnnotationActionBinder;->getMethod()Ljava/lang/reflect/Method;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v11

    .line 125
    invoke-virtual {p0, v10, v9, v11}, Lorg/fourthline/cling/binding/annotations/AnnotationActionBinder;->findRelatedStateVariable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/fourthline/cling/model/meta/StateVariable;

    move-result-object v10

    if-nez v10, :cond_0

    .line 132
    new-instance v0, Lorg/fourthline/cling/binding/LocalServiceBindingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not detected related state variable of argument: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/fourthline/cling/binding/LocalServiceBindingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 137
    :cond_0
    invoke-virtual {p0}, Lorg/fourthline/cling/binding/annotations/AnnotationActionBinder;->getMethod()Ljava/lang/reflect/Method;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v11

    aget-object v11, v11, v3

    invoke-virtual {p0, v10, v11}, Lorg/fourthline/cling/binding/annotations/AnnotationActionBinder;->validateType(Lorg/fourthline/cling/model/meta/StateVariable;Ljava/lang/Class;)V

    .line 139
    new-instance v11, Lorg/fourthline/cling/model/meta/ActionArgument;

    .line 141
    invoke-interface {v8}, Lorg/fourthline/cling/binding/annotations/UpnpInputArgument;->aliases()[Ljava/lang/String;

    move-result-object v8

    .line 142
    invoke-virtual {v10}, Lorg/fourthline/cling/model/meta/StateVariable;->getName()Ljava/lang/String;

    move-result-object v10

    sget-object v12, Lorg/fourthline/cling/model/meta/ActionArgument$Direction;->IN:Lorg/fourthline/cling/model/meta/ActionArgument$Direction;

    invoke-direct {v11, v9, v8, v10, v12}, Lorg/fourthline/cling/model/meta/ActionArgument;-><init>(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lorg/fourthline/cling/model/meta/ActionArgument$Direction;)V

    .line 146
    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    move v4, v7

    goto :goto_0

    .line 152
    :cond_3
    invoke-virtual {p0}, Lorg/fourthline/cling/binding/annotations/AnnotationActionBinder;->getMethod()Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v1

    array-length v1, v1

    if-ge v4, v1, :cond_4

    const-class v1, Lorg/fourthline/cling/model/profile/RemoteClientInfo;

    iget-object v2, p0, Lorg/fourthline/cling/binding/annotations/AnnotationActionBinder;->method:Ljava/lang/reflect/Method;

    .line 153
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v2

    iget-object v3, p0, Lorg/fourthline/cling/binding/annotations/AnnotationActionBinder;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v3

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 154
    new-instance v0, Lorg/fourthline/cling/binding/LocalServiceBindingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Method has parameters that are not input arguments: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/fourthline/cling/binding/annotations/AnnotationActionBinder;->getMethod()Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/fourthline/cling/binding/LocalServiceBindingException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    return-object v0
.end method

.method protected createOutputArguments()Ljava/util/Map;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lorg/fourthline/cling/model/meta/ActionArgument<",
            "Lorg/fourthline/cling/model/meta/LocalService;",
            ">;",
            "Lorg/fourthline/cling/model/state/StateVariableAccessor;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/binding/LocalServiceBindingException;
        }
    .end annotation

    .line 162
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 164
    invoke-virtual {p0}, Lorg/fourthline/cling/binding/annotations/AnnotationActionBinder;->getMethod()Ljava/lang/reflect/Method;

    move-result-object v1

    const-class v2, Lorg/fourthline/cling/binding/annotations/UpnpAction;

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lorg/fourthline/cling/binding/annotations/UpnpAction;

    .line 165
    invoke-interface {v1}, Lorg/fourthline/cling/binding/annotations/UpnpAction;->out()[Lorg/fourthline/cling/binding/annotations/UpnpOutputArgument;

    move-result-object v2

    array-length v2, v2

    if-nez v2, :cond_0

    return-object v0

    .line 167
    :cond_0
    invoke-interface {v1}, Lorg/fourthline/cling/binding/annotations/UpnpAction;->out()[Lorg/fourthline/cling/binding/annotations/UpnpOutputArgument;

    move-result-object v2

    array-length v2, v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-le v2, v4, :cond_1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    .line 169
    :goto_0
    invoke-interface {v1}, Lorg/fourthline/cling/binding/annotations/UpnpAction;->out()[Lorg/fourthline/cling/binding/annotations/UpnpOutputArgument;

    move-result-object v1

    array-length v2, v1

    :goto_1
    if-ge v3, v2, :cond_4

    aget-object v5, v1, v3

    .line 171
    invoke-interface {v5}, Lorg/fourthline/cling/binding/annotations/UpnpOutputArgument;->name()Ljava/lang/String;

    move-result-object v6

    .line 174
    invoke-interface {v5}, Lorg/fourthline/cling/binding/annotations/UpnpOutputArgument;->stateVariable()Ljava/lang/String;

    move-result-object v7

    .line 176
    invoke-virtual {p0}, Lorg/fourthline/cling/binding/annotations/AnnotationActionBinder;->getMethod()Ljava/lang/reflect/Method;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v8

    .line 173
    invoke-virtual {p0, v7, v6, v8}, Lorg/fourthline/cling/binding/annotations/AnnotationActionBinder;->findRelatedStateVariable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/fourthline/cling/model/meta/StateVariable;

    move-result-object v7

    if-nez v7, :cond_2

    .line 180
    invoke-interface {v5}, Lorg/fourthline/cling/binding/annotations/UpnpOutputArgument;->getterName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_2

    .line 181
    invoke-interface {v5}, Lorg/fourthline/cling/binding/annotations/UpnpOutputArgument;->getterName()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {p0, v8, v8, v7}, Lorg/fourthline/cling/binding/annotations/AnnotationActionBinder;->findRelatedStateVariable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/fourthline/cling/model/meta/StateVariable;

    move-result-object v7

    :cond_2
    if-nez v7, :cond_3

    .line 185
    new-instance v0, Lorg/fourthline/cling/binding/LocalServiceBindingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Related state variable not found for output argument: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/fourthline/cling/binding/LocalServiceBindingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 192
    :cond_3
    invoke-interface {v5}, Lorg/fourthline/cling/binding/annotations/UpnpOutputArgument;->getterName()Ljava/lang/String;

    move-result-object v5

    .line 190
    invoke-virtual {p0, v7, v5, v4}, Lorg/fourthline/cling/binding/annotations/AnnotationActionBinder;->findOutputArgumentAccessor(Lorg/fourthline/cling/model/meta/StateVariable;Ljava/lang/String;Z)Lorg/fourthline/cling/model/state/StateVariableAccessor;

    move-result-object v5

    .line 196
    sget-object v8, Lorg/fourthline/cling/binding/annotations/AnnotationActionBinder;->log:Ljava/util/logging/Logger;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Found related state variable for output argument \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "\': "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 198
    new-instance v8, Lorg/fourthline/cling/model/meta/ActionArgument;

    .line 200
    invoke-virtual {v7}, Lorg/fourthline/cling/model/meta/StateVariable;->getName()Ljava/lang/String;

    move-result-object v7

    sget-object v9, Lorg/fourthline/cling/model/meta/ActionArgument$Direction;->OUT:Lorg/fourthline/cling/model/meta/ActionArgument$Direction;

    xor-int/lit8 v10, v4, 0x1

    invoke-direct {v8, v6, v7, v9, v10}, Lorg/fourthline/cling/model/meta/ActionArgument;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/fourthline/cling/model/meta/ActionArgument$Direction;Z)V

    .line 205
    invoke-interface {v0, v8, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    return-object v0
.end method

.method protected findOutputArgumentAccessor(Lorg/fourthline/cling/model/meta/StateVariable;Ljava/lang/String;Z)Lorg/fourthline/cling/model/state/StateVariableAccessor;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/binding/LocalServiceBindingException;
        }
    .end annotation

    .line 214
    invoke-virtual {p0}, Lorg/fourthline/cling/binding/annotations/AnnotationActionBinder;->getMethod()Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p2, :cond_1

    .line 218
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p3

    if-lez p3, :cond_1

    .line 219
    sget-object p3, Lorg/fourthline/cling/binding/annotations/AnnotationActionBinder;->log:Ljava/util/logging/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Action method is void, will use getter method named: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 222
    invoke-virtual {p0}, Lorg/fourthline/cling/binding/annotations/AnnotationActionBinder;->getMethod()Ljava/lang/reflect/Method;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object p3

    invoke-static {p3, p2}, Lorg/seamless/util/Reflections;->getMethod(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object p3

    if-nez p3, :cond_0

    .line 224
    new-instance p1, Lorg/fourthline/cling/binding/LocalServiceBindingException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Declared getter method \'"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\' not found on: "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    invoke-virtual {p0}, Lorg/fourthline/cling/binding/annotations/AnnotationActionBinder;->getMethod()Ljava/lang/reflect/Method;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/fourthline/cling/binding/LocalServiceBindingException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 228
    :cond_0
    invoke-virtual {p3}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/fourthline/cling/binding/annotations/AnnotationActionBinder;->validateType(Lorg/fourthline/cling/model/meta/StateVariable;Ljava/lang/Class;)V

    .line 230
    new-instance p1, Lorg/fourthline/cling/model/state/GetterStateVariableAccessor;

    invoke-direct {p1, p3}, Lorg/fourthline/cling/model/state/GetterStateVariableAccessor;-><init>(Ljava/lang/reflect/Method;)V

    return-object p1

    .line 233
    :cond_1
    sget-object p2, Lorg/fourthline/cling/binding/annotations/AnnotationActionBinder;->log:Ljava/util/logging/Logger;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Action method is void, trying to find existing accessor of related: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 234
    invoke-virtual {p0}, Lorg/fourthline/cling/binding/annotations/AnnotationActionBinder;->getStateVariables()Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/fourthline/cling/model/state/StateVariableAccessor;

    return-object p1

    :cond_2
    if-eqz p2, :cond_4

    .line 238
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_4

    .line 239
    sget-object p3, Lorg/fourthline/cling/binding/annotations/AnnotationActionBinder;->log:Ljava/util/logging/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Action method is not void, will use getter method on returned instance: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 242
    invoke-virtual {p0}, Lorg/fourthline/cling/binding/annotations/AnnotationActionBinder;->getMethod()Ljava/lang/reflect/Method;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object p3

    invoke-static {p3, p2}, Lorg/seamless/util/Reflections;->getMethod(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object p3

    if-nez p3, :cond_3

    .line 244
    new-instance p1, Lorg/fourthline/cling/binding/LocalServiceBindingException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Declared getter method \'"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\' not found on return type: "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    invoke-virtual {p0}, Lorg/fourthline/cling/binding/annotations/AnnotationActionBinder;->getMethod()Ljava/lang/reflect/Method;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/fourthline/cling/binding/LocalServiceBindingException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 248
    :cond_3
    invoke-virtual {p3}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/fourthline/cling/binding/annotations/AnnotationActionBinder;->validateType(Lorg/fourthline/cling/model/meta/StateVariable;Ljava/lang/Class;)V

    .line 250
    new-instance p1, Lorg/fourthline/cling/model/state/GetterStateVariableAccessor;

    invoke-direct {p1, p3}, Lorg/fourthline/cling/model/state/GetterStateVariableAccessor;-><init>(Ljava/lang/reflect/Method;)V

    return-object p1

    :cond_4
    if-nez p3, :cond_5

    .line 253
    sget-object p2, Lorg/fourthline/cling/binding/annotations/AnnotationActionBinder;->log:Ljava/util/logging/Logger;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Action method is not void, will use the returned instance: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/fourthline/cling/binding/annotations/AnnotationActionBinder;->getMethod()Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 254
    invoke-virtual {p0}, Lorg/fourthline/cling/binding/annotations/AnnotationActionBinder;->getMethod()Ljava/lang/reflect/Method;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/fourthline/cling/binding/annotations/AnnotationActionBinder;->validateType(Lorg/fourthline/cling/model/meta/StateVariable;Ljava/lang/Class;)V

    :cond_5
    const/4 p1, 0x0

    return-object p1
.end method

.method protected findRelatedStateVariable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/fourthline/cling/model/meta/StateVariable;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/binding/LocalServiceBindingException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 265
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 266
    invoke-virtual {p0, p1}, Lorg/fourthline/cling/binding/annotations/AnnotationActionBinder;->getStateVariable(Ljava/lang/String;)Lorg/fourthline/cling/model/meta/StateVariable;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    if-eqz p2, :cond_1

    .line 269
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 270
    invoke-static {p2}, Lorg/fourthline/cling/binding/annotations/AnnotationLocalServiceBinder;->toUpnpStateVariableName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 271
    sget-object v0, Lorg/fourthline/cling/binding/annotations/AnnotationActionBinder;->log:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Finding related state variable with argument name (converted to UPnP name): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 272
    invoke-virtual {p0, p2}, Lorg/fourthline/cling/binding/annotations/AnnotationActionBinder;->getStateVariable(Ljava/lang/String;)Lorg/fourthline/cling/model/meta/StateVariable;

    move-result-object p1

    :cond_1
    if-nez p1, :cond_2

    if-eqz p2, :cond_2

    .line 275
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 277
    invoke-static {p2}, Lorg/fourthline/cling/binding/annotations/AnnotationLocalServiceBinder;->toUpnpStateVariableName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 278
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "A_ARG_TYPE_"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 279
    sget-object p2, Lorg/fourthline/cling/binding/annotations/AnnotationActionBinder;->log:Ljava/util/logging/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Finding related state variable with prefixed argument name (converted to UPnP name): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 280
    invoke-virtual {p0, p1}, Lorg/fourthline/cling/binding/annotations/AnnotationActionBinder;->getStateVariable(Ljava/lang/String;)Lorg/fourthline/cling/model/meta/StateVariable;

    move-result-object p1

    :cond_2
    if-nez p1, :cond_3

    if-eqz p3, :cond_3

    .line 283
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p2

    if-lez p2, :cond_3

    .line 285
    invoke-static {p3}, Lorg/seamless/util/Reflections;->getMethodPropertyName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 287
    sget-object p1, Lorg/fourthline/cling/binding/annotations/AnnotationActionBinder;->log:Ljava/util/logging/Logger;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Finding related state variable with method property name: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 290
    invoke-static {p2}, Lorg/fourthline/cling/binding/annotations/AnnotationLocalServiceBinder;->toUpnpStateVariableName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 289
    invoke-virtual {p0, p1}, Lorg/fourthline/cling/binding/annotations/AnnotationActionBinder;->getStateVariable(Ljava/lang/String;)Lorg/fourthline/cling/model/meta/StateVariable;

    move-result-object p1

    :cond_3
    return-object p1
.end method

.method public getAnnotation()Lorg/fourthline/cling/binding/annotations/UpnpAction;
    .locals 1

    .line 62
    iget-object v0, p0, Lorg/fourthline/cling/binding/annotations/AnnotationActionBinder;->annotation:Lorg/fourthline/cling/binding/annotations/UpnpAction;

    return-object v0
.end method

.method public getMethod()Ljava/lang/reflect/Method;
    .locals 1

    .line 70
    iget-object v0, p0, Lorg/fourthline/cling/binding/annotations/AnnotationActionBinder;->method:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method protected getStateVariable(Ljava/lang/String;)Lorg/fourthline/cling/model/meta/StateVariable;
    .locals 3

    .line 330
    invoke-virtual {p0}, Lorg/fourthline/cling/binding/annotations/AnnotationActionBinder;->getStateVariables()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/fourthline/cling/model/meta/StateVariable;

    .line 331
    invoke-virtual {v1}, Lorg/fourthline/cling/model/meta/StateVariable;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getStateVariables()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lorg/fourthline/cling/model/meta/StateVariable;",
            "Lorg/fourthline/cling/model/state/StateVariableAccessor;",
            ">;"
        }
    .end annotation

    .line 66
    iget-object v0, p0, Lorg/fourthline/cling/binding/annotations/AnnotationActionBinder;->stateVariables:Ljava/util/Map;

    return-object v0
.end method

.method public getStringConvertibleTypes()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation

    .line 74
    iget-object v0, p0, Lorg/fourthline/cling/binding/annotations/AnnotationActionBinder;->stringConvertibleTypes:Ljava/util/Set;

    return-object v0
.end method

.method protected validateType(Lorg/fourthline/cling/model/meta/StateVariable;Ljava/lang/Class;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/binding/LocalServiceBindingException;
        }
    .end annotation

    .line 304
    invoke-virtual {p0}, Lorg/fourthline/cling/binding/annotations/AnnotationActionBinder;->getStringConvertibleTypes()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0, p2}, Lorg/fourthline/cling/model/ModelUtil;->isStringConvertibleType(Ljava/util/Set;Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/fourthline/cling/model/types/Datatype$Default;->STRING:Lorg/fourthline/cling/model/types/Datatype$Default;

    goto :goto_0

    .line 306
    :cond_0
    invoke-static {p2}, Lorg/fourthline/cling/model/types/Datatype$Default;->getByJavaType(Ljava/lang/Class;)Lorg/fourthline/cling/model/types/Datatype$Default;

    move-result-object v0

    .line 308
    :goto_0
    sget-object v1, Lorg/fourthline/cling/binding/annotations/AnnotationActionBinder;->log:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expecting \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "\' to match default mapping: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    if-eqz v0, :cond_1

    .line 311
    invoke-virtual {p1}, Lorg/fourthline/cling/model/meta/StateVariable;->getTypeDetails()Lorg/fourthline/cling/model/meta/StateVariableTypeDetails;

    move-result-object v1

    invoke-virtual {v1}, Lorg/fourthline/cling/model/meta/StateVariableTypeDetails;->getDatatype()Lorg/fourthline/cling/model/types/Datatype;

    move-result-object v1

    invoke-virtual {v0}, Lorg/fourthline/cling/model/types/Datatype$Default;->getJavaType()Ljava/lang/Class;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/fourthline/cling/model/types/Datatype;->isHandlingJavaType(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 314
    new-instance p2, Lorg/fourthline/cling/binding/LocalServiceBindingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "State variable \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\' datatype can\'t handle action "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "argument\'s Java type (change one): "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    invoke-virtual {v0}, Lorg/fourthline/cling/model/types/Datatype$Default;->getJavaType()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/fourthline/cling/binding/LocalServiceBindingException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    if-nez v0, :cond_2

    .line 319
    invoke-virtual {p1}, Lorg/fourthline/cling/model/meta/StateVariable;->getTypeDetails()Lorg/fourthline/cling/model/meta/StateVariableTypeDetails;

    move-result-object v0

    invoke-virtual {v0}, Lorg/fourthline/cling/model/meta/StateVariableTypeDetails;->getDatatype()Lorg/fourthline/cling/model/types/Datatype;

    move-result-object v0

    invoke-interface {v0}, Lorg/fourthline/cling/model/types/Datatype;->getBuiltin()Lorg/fourthline/cling/model/types/Datatype$Builtin;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 320
    new-instance v0, Lorg/fourthline/cling/binding/LocalServiceBindingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "State variable \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\' should be custom datatype "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "(action argument type is unknown Java type): "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/fourthline/cling/binding/LocalServiceBindingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 326
    :cond_2
    sget-object p1, Lorg/fourthline/cling/binding/annotations/AnnotationActionBinder;->log:Ljava/util/logging/Logger;

    const-string p2, "State variable matches required argument datatype (or can\'t be validated because it is custom)"

    invoke-virtual {p1, p2}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    return-void
.end method
