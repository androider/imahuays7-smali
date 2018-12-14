.class public Lorg/fourthline/cling/binding/annotations/AnnotationLocalServiceBinder;
.super Ljava/lang/Object;
.source "AnnotationLocalServiceBinder.java"

# interfaces
.implements Lorg/fourthline/cling/binding/LocalServiceBinder;


# static fields
.field private static log:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 58
    const-class v0, Lorg/fourthline/cling/binding/annotations/AnnotationLocalServiceBinder;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/fourthline/cling/binding/annotations/AnnotationLocalServiceBinder;->log:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static toJavaActionName(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 287
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 288
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Variable name must be at least 1 character long"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 290
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static toJavaStateVariableName(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 272
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 273
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Variable name must be at least 1 character long"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 275
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static toUpnpActionName(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 280
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 281
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Action name must be at least 1 character long"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 283
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static toUpnpStateVariableName(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 265
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 266
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Variable name must be at least 1 character long"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 268
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method protected isActionExcluded(Lorg/fourthline/cling/model/meta/Action;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public read(Ljava/lang/Class;)Lorg/fourthline/cling/model/meta/LocalService;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lorg/fourthline/cling/model/meta/LocalService;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/binding/LocalServiceBindingException;
        }
    .end annotation

    .line 61
    sget-object v0, Lorg/fourthline/cling/binding/annotations/AnnotationLocalServiceBinder;->log:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Reading and binding annotations of service implementation class: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 64
    const-class v0, Lorg/fourthline/cling/binding/annotations/UpnpService;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 66
    const-class v0, Lorg/fourthline/cling/binding/annotations/UpnpService;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/binding/annotations/UpnpService;

    .line 67
    invoke-interface {v0}, Lorg/fourthline/cling/binding/annotations/UpnpService;->serviceId()Lorg/fourthline/cling/binding/annotations/UpnpServiceId;

    move-result-object v1

    .line 68
    invoke-interface {v0}, Lorg/fourthline/cling/binding/annotations/UpnpService;->serviceType()Lorg/fourthline/cling/binding/annotations/UpnpServiceType;

    move-result-object v2

    .line 70
    invoke-interface {v1}, Lorg/fourthline/cling/binding/annotations/UpnpServiceId;->namespace()Ljava/lang/String;

    move-result-object v3

    const-string v4, "upnp-org"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Lorg/fourthline/cling/model/types/UDAServiceId;

    .line 71
    invoke-interface {v1}, Lorg/fourthline/cling/binding/annotations/UpnpServiceId;->value()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Lorg/fourthline/cling/model/types/UDAServiceId;-><init>(Ljava/lang/String;)V

    :goto_0
    move-object v7, v3

    goto :goto_1

    :cond_0
    new-instance v3, Lorg/fourthline/cling/model/types/ServiceId;

    .line 72
    invoke-interface {v1}, Lorg/fourthline/cling/binding/annotations/UpnpServiceId;->namespace()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1}, Lorg/fourthline/cling/binding/annotations/UpnpServiceId;->value()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v4, v1}, Lorg/fourthline/cling/model/types/ServiceId;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 74
    :goto_1
    invoke-interface {v2}, Lorg/fourthline/cling/binding/annotations/UpnpServiceType;->namespace()Ljava/lang/String;

    move-result-object v1

    const-string v3, "schemas-upnp-org"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lorg/fourthline/cling/model/types/UDAServiceType;

    .line 75
    invoke-interface {v2}, Lorg/fourthline/cling/binding/annotations/UpnpServiceType;->value()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2}, Lorg/fourthline/cling/binding/annotations/UpnpServiceType;->version()I

    move-result v2

    invoke-direct {v1, v3, v2}, Lorg/fourthline/cling/model/types/UDAServiceType;-><init>(Ljava/lang/String;I)V

    :goto_2
    move-object v8, v1

    goto :goto_3

    :cond_1
    new-instance v1, Lorg/fourthline/cling/model/types/ServiceType;

    .line 76
    invoke-interface {v2}, Lorg/fourthline/cling/binding/annotations/UpnpServiceType;->namespace()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2}, Lorg/fourthline/cling/binding/annotations/UpnpServiceType;->value()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2}, Lorg/fourthline/cling/binding/annotations/UpnpServiceType;->version()I

    move-result v2

    invoke-direct {v1, v3, v4, v2}, Lorg/fourthline/cling/model/types/ServiceType;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_2

    .line 78
    :goto_3
    invoke-interface {v0}, Lorg/fourthline/cling/binding/annotations/UpnpService;->supportsQueryStateVariables()Z

    move-result v9

    .line 80
    invoke-interface {v0}, Lorg/fourthline/cling/binding/annotations/UpnpService;->stringConvertibleTypes()[Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/binding/annotations/AnnotationLocalServiceBinder;->readStringConvertibleTypes([Ljava/lang/Class;)Ljava/util/Set;

    move-result-object v10

    move-object v5, p0

    move-object v6, p1

    .line 82
    invoke-virtual/range {v5 .. v10}, Lorg/fourthline/cling/binding/annotations/AnnotationLocalServiceBinder;->read(Ljava/lang/Class;Lorg/fourthline/cling/model/types/ServiceId;Lorg/fourthline/cling/model/types/ServiceType;ZLjava/util/Set;)Lorg/fourthline/cling/model/meta/LocalService;

    move-result-object p1

    return-object p1

    .line 84
    :cond_2
    new-instance p1, Lorg/fourthline/cling/binding/LocalServiceBindingException;

    const-string v0, "Given class is not an @UpnpService"

    invoke-direct {p1, v0}, Lorg/fourthline/cling/binding/LocalServiceBindingException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public read(Ljava/lang/Class;Lorg/fourthline/cling/model/types/ServiceId;Lorg/fourthline/cling/model/types/ServiceType;ZLjava/util/Set;)Lorg/fourthline/cling/model/meta/LocalService;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lorg/fourthline/cling/model/types/ServiceId;",
            "Lorg/fourthline/cling/model/types/ServiceType;",
            "Z",
            "Ljava/util/Set<",
            "Ljava/lang/Class;",
            ">;)",
            "Lorg/fourthline/cling/model/meta/LocalService;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/binding/LocalServiceBindingException;
        }
    .end annotation

    .line 97
    invoke-virtual {p0, p1, p5}, Lorg/fourthline/cling/binding/annotations/AnnotationLocalServiceBinder;->readStateVariables(Ljava/lang/Class;Ljava/util/Set;)Ljava/util/Map;

    move-result-object v4

    .line 98
    invoke-virtual {p0, p1, v4, p5}, Lorg/fourthline/cling/binding/annotations/AnnotationLocalServiceBinder;->readActions(Ljava/lang/Class;Ljava/util/Map;Ljava/util/Set;)Ljava/util/Map;

    move-result-object v3

    if-eqz p4, :cond_0

    .line 102
    new-instance p1, Lorg/fourthline/cling/model/meta/QueryStateVariableAction;

    invoke-direct {p1}, Lorg/fourthline/cling/model/meta/QueryStateVariableAction;-><init>()V

    new-instance v0, Lorg/fourthline/cling/model/action/QueryStateVariableExecutor;

    invoke-direct {v0}, Lorg/fourthline/cling/model/action/QueryStateVariableExecutor;-><init>()V

    invoke-interface {v3, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    :cond_0
    :try_start_0
    new-instance p1, Lorg/fourthline/cling/model/meta/LocalService;

    move-object v0, p1

    move-object v1, p3

    move-object v2, p2

    move-object v5, p5

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lorg/fourthline/cling/model/meta/LocalService;-><init>(Lorg/fourthline/cling/model/types/ServiceType;Lorg/fourthline/cling/model/types/ServiceId;Ljava/util/Map;Ljava/util/Map;Ljava/util/Set;Z)V
    :try_end_0
    .catch Lorg/fourthline/cling/model/ValidationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 109
    sget-object p2, Lorg/fourthline/cling/binding/annotations/AnnotationLocalServiceBinder;->log:Ljava/util/logging/Logger;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Could not validate device model: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/fourthline/cling/model/ValidationException;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    .line 110
    invoke-virtual {p1}, Lorg/fourthline/cling/model/ValidationException;->getErrors()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/fourthline/cling/model/ValidationError;

    .line 111
    sget-object p3, Lorg/fourthline/cling/binding/annotations/AnnotationLocalServiceBinder;->log:Ljava/util/logging/Logger;

    invoke-virtual {p2}, Lorg/fourthline/cling/model/ValidationError;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    goto :goto_0

    .line 113
    :cond_1
    new-instance p1, Lorg/fourthline/cling/binding/LocalServiceBindingException;

    const-string p2, "Validation of model failed, check the log"

    invoke-direct {p1, p2}, Lorg/fourthline/cling/binding/LocalServiceBindingException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public read(Ljava/lang/Class;Lorg/fourthline/cling/model/types/ServiceId;Lorg/fourthline/cling/model/types/ServiceType;Z[Ljava/lang/Class;)Lorg/fourthline/cling/model/meta/LocalService;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lorg/fourthline/cling/model/types/ServiceId;",
            "Lorg/fourthline/cling/model/types/ServiceType;",
            "Z[",
            "Ljava/lang/Class;",
            ")",
            "Lorg/fourthline/cling/model/meta/LocalService;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/binding/LocalServiceBindingException;
        }
    .end annotation

    .line 90
    new-instance v5, Ljava/util/HashSet;

    invoke-static {p5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p5

    invoke-direct {v5, p5}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lorg/fourthline/cling/binding/annotations/AnnotationLocalServiceBinder;->read(Ljava/lang/Class;Lorg/fourthline/cling/model/types/ServiceId;Lorg/fourthline/cling/model/types/ServiceType;ZLjava/util/Set;)Lorg/fourthline/cling/model/meta/LocalService;

    move-result-object p1

    return-object p1
.end method

.method protected readActions(Ljava/lang/Class;Ljava/util/Map;Ljava/util/Set;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/Map<",
            "Lorg/fourthline/cling/model/meta/StateVariable;",
            "Lorg/fourthline/cling/model/state/StateVariableAccessor;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/Class;",
            ">;)",
            "Ljava/util/Map<",
            "Lorg/fourthline/cling/model/meta/Action;",
            "Lorg/fourthline/cling/model/action/ActionExecutor;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/binding/LocalServiceBindingException;
        }
    .end annotation

    .line 241
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 243
    const-class v1, Lorg/fourthline/cling/binding/annotations/UpnpAction;

    invoke-static {p1, v1}, Lorg/seamless/util/Reflections;->getMethods(Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Method;

    .line 244
    new-instance v2, Lorg/fourthline/cling/binding/annotations/AnnotationActionBinder;

    invoke-direct {v2, v1, p2, p3}, Lorg/fourthline/cling/binding/annotations/AnnotationActionBinder;-><init>(Ljava/lang/reflect/Method;Ljava/util/Map;Ljava/util/Set;)V

    .line 246
    invoke-virtual {v2, v0}, Lorg/fourthline/cling/binding/annotations/AnnotationActionBinder;->appendAction(Ljava/util/Map;)Lorg/fourthline/cling/model/meta/Action;

    move-result-object v1

    .line 247
    invoke-virtual {p0, v1}, Lorg/fourthline/cling/binding/annotations/AnnotationLocalServiceBinder;->isActionExcluded(Lorg/fourthline/cling/model/meta/Action;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 248
    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method protected readStateVariables(Ljava/lang/Class;Ljava/util/Set;)Ljava/util/Map;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/Set<",
            "Ljava/lang/Class;",
            ">;)",
            "Ljava/util/Map<",
            "Lorg/fourthline/cling/model/meta/StateVariable;",
            "Lorg/fourthline/cling/model/state/StateVariableAccessor;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/binding/LocalServiceBindingException;
        }
    .end annotation

    .line 146
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 149
    const-class v1, Lorg/fourthline/cling/binding/annotations/UpnpStateVariables;

    invoke-virtual {p1, v1}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 150
    const-class v1, Lorg/fourthline/cling/binding/annotations/UpnpStateVariables;

    invoke-virtual {p1, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lorg/fourthline/cling/binding/annotations/UpnpStateVariables;

    .line 151
    invoke-interface {v1}, Lorg/fourthline/cling/binding/annotations/UpnpStateVariables;->value()[Lorg/fourthline/cling/binding/annotations/UpnpStateVariable;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_5

    aget-object v5, v2, v4

    .line 153
    invoke-interface {v5}, Lorg/fourthline/cling/binding/annotations/UpnpStateVariable;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_0

    .line 154
    new-instance p1, Lorg/fourthline/cling/binding/LocalServiceBindingException;

    const-string p2, "Class-level @UpnpStateVariable name attribute value required"

    invoke-direct {p1, p2}, Lorg/fourthline/cling/binding/LocalServiceBindingException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 156
    :cond_0
    invoke-interface {v5}, Lorg/fourthline/cling/binding/annotations/UpnpStateVariable;->name()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/fourthline/cling/binding/annotations/AnnotationLocalServiceBinder;->toJavaStateVariableName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 158
    invoke-static {p1, v6}, Lorg/seamless/util/Reflections;->getGetterMethod(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v7

    .line 159
    invoke-static {p1, v6}, Lorg/seamless/util/Reflections;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    const/4 v8, 0x0

    if-eqz v7, :cond_2

    if-eqz v6, :cond_2

    .line 163
    invoke-interface {v1}, Lorg/fourthline/cling/binding/annotations/UpnpStateVariables;->preferFields()Z

    move-result v8

    if-eqz v8, :cond_1

    new-instance v7, Lorg/fourthline/cling/model/state/FieldStateVariableAccessor;

    invoke-direct {v7, v6}, Lorg/fourthline/cling/model/state/FieldStateVariableAccessor;-><init>(Ljava/lang/reflect/Field;)V

    move-object v8, v7

    goto :goto_1

    :cond_1
    new-instance v6, Lorg/fourthline/cling/model/state/GetterStateVariableAccessor;

    invoke-direct {v6, v7}, Lorg/fourthline/cling/model/state/GetterStateVariableAccessor;-><init>(Ljava/lang/reflect/Method;)V

    move-object v8, v6

    goto :goto_1

    :cond_2
    if-eqz v6, :cond_3

    .line 167
    new-instance v8, Lorg/fourthline/cling/model/state/FieldStateVariableAccessor;

    invoke-direct {v8, v6}, Lorg/fourthline/cling/model/state/FieldStateVariableAccessor;-><init>(Ljava/lang/reflect/Field;)V

    goto :goto_1

    :cond_3
    if-eqz v7, :cond_4

    .line 169
    new-instance v8, Lorg/fourthline/cling/model/state/GetterStateVariableAccessor;

    invoke-direct {v8, v7}, Lorg/fourthline/cling/model/state/GetterStateVariableAccessor;-><init>(Ljava/lang/reflect/Method;)V

    goto :goto_1

    .line 171
    :cond_4
    sget-object v6, Lorg/fourthline/cling/binding/annotations/AnnotationLocalServiceBinder;->log:Ljava/util/logging/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "No field or getter found for state variable, skipping accessor: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v5}, Lorg/fourthline/cling/binding/annotations/UpnpStateVariable;->name()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 174
    :goto_1
    new-instance v6, Lorg/fourthline/cling/binding/annotations/AnnotationStateVariableBinder;

    .line 175
    invoke-interface {v5}, Lorg/fourthline/cling/binding/annotations/UpnpStateVariable;->name()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v5, v7, v8, p2}, Lorg/fourthline/cling/binding/annotations/AnnotationStateVariableBinder;-><init>(Lorg/fourthline/cling/binding/annotations/UpnpStateVariable;Ljava/lang/String;Lorg/fourthline/cling/model/state/StateVariableAccessor;Ljava/util/Set;)V

    .line 176
    invoke-virtual {v6}, Lorg/fourthline/cling/binding/annotations/AnnotationStateVariableBinder;->createStateVariable()Lorg/fourthline/cling/model/meta/StateVariable;

    move-result-object v5

    .line 178
    invoke-interface {v0, v5, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 183
    :cond_5
    const-class v1, Lorg/fourthline/cling/binding/annotations/UpnpStateVariable;

    invoke-static {p1, v1}, Lorg/seamless/util/Reflections;->getFields(Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/Field;

    .line 185
    const-class v3, Lorg/fourthline/cling/binding/annotations/UpnpStateVariable;

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v3

    check-cast v3, Lorg/fourthline/cling/binding/annotations/UpnpStateVariable;

    .line 187
    new-instance v4, Lorg/fourthline/cling/model/state/FieldStateVariableAccessor;

    invoke-direct {v4, v2}, Lorg/fourthline/cling/model/state/FieldStateVariableAccessor;-><init>(Ljava/lang/reflect/Field;)V

    .line 189
    new-instance v5, Lorg/fourthline/cling/binding/annotations/AnnotationStateVariableBinder;

    .line 191
    invoke-interface {v3}, Lorg/fourthline/cling/binding/annotations/UpnpStateVariable;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_6

    .line 192
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/fourthline/cling/binding/annotations/AnnotationLocalServiceBinder;->toUpnpStateVariableName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    .line 193
    :cond_6
    invoke-interface {v3}, Lorg/fourthline/cling/binding/annotations/UpnpStateVariable;->name()Ljava/lang/String;

    move-result-object v2

    :goto_3
    invoke-direct {v5, v3, v2, v4, p2}, Lorg/fourthline/cling/binding/annotations/AnnotationStateVariableBinder;-><init>(Lorg/fourthline/cling/binding/annotations/UpnpStateVariable;Ljava/lang/String;Lorg/fourthline/cling/model/state/StateVariableAccessor;Ljava/util/Set;)V

    .line 196
    invoke-virtual {v5}, Lorg/fourthline/cling/binding/annotations/AnnotationStateVariableBinder;->createStateVariable()Lorg/fourthline/cling/model/meta/StateVariable;

    move-result-object v2

    .line 198
    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 202
    :cond_7
    const-class v1, Lorg/fourthline/cling/binding/annotations/UpnpStateVariable;

    invoke-static {p1, v1}, Lorg/seamless/util/Reflections;->getMethods(Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Method;

    .line 204
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/seamless/util/Reflections;->getMethodPropertyName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_8

    .line 206
    new-instance p1, Lorg/fourthline/cling/binding/LocalServiceBindingException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Annotated method is not a getter method (: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/fourthline/cling/binding/LocalServiceBindingException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 211
    :cond_8
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v3

    array-length v3, v3

    if-lez v3, :cond_9

    .line 212
    new-instance p1, Lorg/fourthline/cling/binding/LocalServiceBindingException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Getter method defined as @UpnpStateVariable can not have parameters: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/fourthline/cling/binding/LocalServiceBindingException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 216
    :cond_9
    const-class v3, Lorg/fourthline/cling/binding/annotations/UpnpStateVariable;

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v3

    check-cast v3, Lorg/fourthline/cling/binding/annotations/UpnpStateVariable;

    .line 218
    new-instance v4, Lorg/fourthline/cling/model/state/GetterStateVariableAccessor;

    invoke-direct {v4, v1}, Lorg/fourthline/cling/model/state/GetterStateVariableAccessor;-><init>(Ljava/lang/reflect/Method;)V

    .line 220
    new-instance v1, Lorg/fourthline/cling/binding/annotations/AnnotationStateVariableBinder;

    .line 222
    invoke-interface {v3}, Lorg/fourthline/cling/binding/annotations/UpnpStateVariable;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_a

    .line 224
    invoke-static {v2}, Lorg/fourthline/cling/binding/annotations/AnnotationLocalServiceBinder;->toUpnpStateVariableName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_5

    .line 225
    :cond_a
    invoke-interface {v3}, Lorg/fourthline/cling/binding/annotations/UpnpStateVariable;->name()Ljava/lang/String;

    move-result-object v2

    :goto_5
    invoke-direct {v1, v3, v2, v4, p2}, Lorg/fourthline/cling/binding/annotations/AnnotationStateVariableBinder;-><init>(Lorg/fourthline/cling/binding/annotations/UpnpStateVariable;Ljava/lang/String;Lorg/fourthline/cling/model/state/StateVariableAccessor;Ljava/util/Set;)V

    .line 228
    invoke-virtual {v1}, Lorg/fourthline/cling/binding/annotations/AnnotationStateVariableBinder;->createStateVariable()Lorg/fourthline/cling/model/meta/StateVariable;

    move-result-object v1

    .line 230
    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_b
    return-object v0
.end method

.method protected readStringConvertibleTypes([Ljava/lang/Class;)Ljava/util/Set;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/binding/LocalServiceBindingException;
        }
    .end annotation

    .line 119
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    .line 120
    invoke-virtual {v3}, Ljava/lang/Class;->getModifiers()I

    move-result v4

    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 121
    new-instance p1, Lorg/fourthline/cling/binding/LocalServiceBindingException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Declared string-convertible type must be public: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/fourthline/cling/binding/LocalServiceBindingException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    const/4 v4, 0x1

    .line 126
    :try_start_0
    new-array v4, v4, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 128
    :catch_0
    new-instance p1, Lorg/fourthline/cling/binding/LocalServiceBindingException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Declared string-convertible type needs a public single-argument String constructor: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/fourthline/cling/binding/LocalServiceBindingException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 133
    :cond_1
    new-instance v0, Ljava/util/HashSet;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 136
    const-class p1, Ljava/net/URI;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 137
    const-class p1, Ljava/net/URL;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 138
    const-class p1, Lorg/fourthline/cling/model/types/csv/CSV;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object v0
.end method
