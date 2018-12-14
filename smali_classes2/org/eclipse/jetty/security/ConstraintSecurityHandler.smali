.class public Lorg/eclipse/jetty/security/ConstraintSecurityHandler;
.super Lorg/eclipse/jetty/security/SecurityHandler;
.source "ConstraintSecurityHandler.java"

# interfaces
.implements Lorg/eclipse/jetty/security/ConstraintAware;


# static fields
.field private static final OMISSION_SUFFIX:Ljava/lang/String; = ".omission"


# instance fields
.field private final _constraintMap:Lorg/eclipse/jetty/http/PathMap;

.field private final _constraintMappings:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/eclipse/jetty/security/ConstraintMapping;",
            ">;"
        }
    .end annotation
.end field

.field private final _roles:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private _strict:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 58
    invoke-direct {p0}, Lorg/eclipse/jetty/security/SecurityHandler;-><init>()V

    .line 62
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/security/ConstraintSecurityHandler;->_constraintMappings:Ljava/util/List;

    .line 63
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/security/ConstraintSecurityHandler;->_roles:Ljava/util/Set;

    .line 64
    new-instance v0, Lorg/eclipse/jetty/http/PathMap;

    invoke-direct {v0}, Lorg/eclipse/jetty/http/PathMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/security/ConstraintSecurityHandler;->_constraintMap:Lorg/eclipse/jetty/http/PathMap;

    const/4 v0, 0x1

    .line 65
    iput-boolean v0, p0, Lorg/eclipse/jetty/security/ConstraintSecurityHandler;->_strict:Z

    return-void
.end method

.method public static createConstraint()Lorg/eclipse/jetty/util/security/Constraint;
    .locals 1

    .line 74
    new-instance v0, Lorg/eclipse/jetty/util/security/Constraint;

    invoke-direct {v0}, Lorg/eclipse/jetty/util/security/Constraint;-><init>()V

    return-object v0
.end method

.method public static createConstraint(Ljava/lang/String;Ljavax/servlet/HttpConstraintElement;)Lorg/eclipse/jetty/util/security/Constraint;
    .locals 2

    .line 124
    invoke-virtual {p1}, Ljavax/servlet/HttpConstraintElement;->getRolesAllowed()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljavax/servlet/HttpConstraintElement;->getEmptyRoleSemantic()Ljavax/servlet/annotation/ServletSecurity$EmptyRoleSemantic;

    move-result-object v1

    invoke-virtual {p1}, Ljavax/servlet/HttpConstraintElement;->getTransportGuarantee()Ljavax/servlet/annotation/ServletSecurity$TransportGuarantee;

    move-result-object p1

    invoke-static {p0, v0, v1, p1}, Lorg/eclipse/jetty/security/ConstraintSecurityHandler;->createConstraint(Ljava/lang/String;[Ljava/lang/String;Ljavax/servlet/annotation/ServletSecurity$EmptyRoleSemantic;Ljavax/servlet/annotation/ServletSecurity$TransportGuarantee;)Lorg/eclipse/jetty/util/security/Constraint;

    move-result-object p0

    return-object p0
.end method

.method public static createConstraint(Ljava/lang/String;Z[Ljava/lang/String;I)Lorg/eclipse/jetty/util/security/Constraint;
    .locals 1

    .line 106
    invoke-static {}, Lorg/eclipse/jetty/security/ConstraintSecurityHandler;->createConstraint()Lorg/eclipse/jetty/util/security/Constraint;

    move-result-object v0

    if-eqz p0, :cond_0

    .line 108
    invoke-virtual {v0, p0}, Lorg/eclipse/jetty/util/security/Constraint;->setName(Ljava/lang/String;)V

    .line 109
    :cond_0
    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/util/security/Constraint;->setAuthenticate(Z)V

    .line 110
    invoke-virtual {v0, p2}, Lorg/eclipse/jetty/util/security/Constraint;->setRoles([Ljava/lang/String;)V

    .line 111
    invoke-virtual {v0, p3}, Lorg/eclipse/jetty/util/security/Constraint;->setDataConstraint(I)V

    return-object v0
.end method

.method public static createConstraint(Ljava/lang/String;[Ljava/lang/String;Ljavax/servlet/annotation/ServletSecurity$EmptyRoleSemantic;Ljavax/servlet/annotation/ServletSecurity$TransportGuarantee;)Lorg/eclipse/jetty/util/security/Constraint;
    .locals 4

    .line 138
    invoke-static {}, Lorg/eclipse/jetty/security/ConstraintSecurityHandler;->createConstraint()Lorg/eclipse/jetty/util/security/Constraint;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_1

    .line 140
    array-length v3, p1

    if-nez v3, :cond_0

    goto :goto_0

    .line 158
    :cond_0
    invoke-virtual {v0, v2}, Lorg/eclipse/jetty/util/security/Constraint;->setAuthenticate(Z)V

    .line 159
    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/util/security/Constraint;->setRoles([Ljava/lang/String;)V

    .line 160
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "-RolesAllowed"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/eclipse/jetty/util/security/Constraint;->setName(Ljava/lang/String;)V

    goto :goto_1

    .line 142
    :cond_1
    :goto_0
    sget-object p1, Ljavax/servlet/annotation/ServletSecurity$EmptyRoleSemantic;->DENY:Ljavax/servlet/annotation/ServletSecurity$EmptyRoleSemantic;

    invoke-virtual {p2, p1}, Ljavax/servlet/annotation/ServletSecurity$EmptyRoleSemantic;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 145
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "-Deny"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/eclipse/jetty/util/security/Constraint;->setName(Ljava/lang/String;)V

    .line 146
    invoke-virtual {v0, v2}, Lorg/eclipse/jetty/util/security/Constraint;->setAuthenticate(Z)V

    goto :goto_1

    .line 151
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "-Permit"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/eclipse/jetty/util/security/Constraint;->setName(Ljava/lang/String;)V

    .line 152
    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/util/security/Constraint;->setAuthenticate(Z)V

    .line 164
    :goto_1
    sget-object p0, Ljavax/servlet/annotation/ServletSecurity$TransportGuarantee;->CONFIDENTIAL:Ljavax/servlet/annotation/ServletSecurity$TransportGuarantee;

    invoke-virtual {p3, p0}, Ljavax/servlet/annotation/ServletSecurity$TransportGuarantee;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 v1, 0x2

    :cond_3
    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/util/security/Constraint;->setDataConstraint(I)V

    return-object v0
.end method

.method public static createConstraint(Lorg/eclipse/jetty/util/security/Constraint;)Lorg/eclipse/jetty/util/security/Constraint;
    .locals 1

    .line 86
    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/security/Constraint;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/eclipse/jetty/util/security/Constraint;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 90
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static createConstraintsWithMappingsForPath(Ljava/lang/String;Ljava/lang/String;Ljavax/servlet/ServletSecurityElement;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljavax/servlet/ServletSecurityElement;",
            ")",
            "Ljava/util/List<",
            "Lorg/eclipse/jetty/security/ConstraintMapping;",
            ">;"
        }
    .end annotation

    .line 230
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 233
    invoke-static {p0, p2}, Lorg/eclipse/jetty/security/ConstraintSecurityHandler;->createConstraint(Ljava/lang/String;Ljavax/servlet/HttpConstraintElement;)Lorg/eclipse/jetty/util/security/Constraint;

    move-result-object v1

    .line 236
    new-instance v2, Lorg/eclipse/jetty/security/ConstraintMapping;

    invoke-direct {v2}, Lorg/eclipse/jetty/security/ConstraintMapping;-><init>()V

    .line 237
    invoke-virtual {v2, p1}, Lorg/eclipse/jetty/security/ConstraintMapping;->setPathSpec(Ljava/lang/String;)V

    .line 238
    invoke-virtual {v2, v1}, Lorg/eclipse/jetty/security/ConstraintMapping;->setConstraint(Lorg/eclipse/jetty/util/security/Constraint;)V

    .line 239
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 243
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 246
    invoke-virtual {p2}, Ljavax/servlet/ServletSecurityElement;->getHttpMethodConstraints()Ljava/util/Collection;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 249
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/servlet/HttpMethodConstraintElement;

    .line 252
    invoke-static {p0, v3}, Lorg/eclipse/jetty/security/ConstraintSecurityHandler;->createConstraint(Ljava/lang/String;Ljavax/servlet/HttpConstraintElement;)Lorg/eclipse/jetty/util/security/Constraint;

    move-result-object v4

    .line 253
    new-instance v5, Lorg/eclipse/jetty/security/ConstraintMapping;

    invoke-direct {v5}, Lorg/eclipse/jetty/security/ConstraintMapping;-><init>()V

    .line 254
    invoke-virtual {v5, v4}, Lorg/eclipse/jetty/security/ConstraintMapping;->setConstraint(Lorg/eclipse/jetty/util/security/Constraint;)V

    .line 255
    invoke-virtual {v5, p1}, Lorg/eclipse/jetty/security/ConstraintMapping;->setPathSpec(Ljava/lang/String;)V

    .line 256
    invoke-virtual {v3}, Ljavax/servlet/HttpMethodConstraintElement;->getMethodName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 258
    invoke-virtual {v3}, Ljavax/servlet/HttpMethodConstraintElement;->getMethodName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lorg/eclipse/jetty/security/ConstraintMapping;->setMethod(Ljava/lang/String;)V

    .line 260
    invoke-virtual {v3}, Ljavax/servlet/HttpMethodConstraintElement;->getMethodName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 262
    :cond_0
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 266
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_2

    .line 267
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/String;

    invoke-interface {v1, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    invoke-virtual {v2, p0}, Lorg/eclipse/jetty/security/ConstraintMapping;->setMethodOmissions([Ljava/lang/String;)V

    :cond_2
    return-object v0
.end method

.method public static getConstraintMappingsForPath(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lorg/eclipse/jetty/security/ConstraintMapping;",
            ">;)",
            "Ljava/util/List<",
            "Lorg/eclipse/jetty/security/ConstraintMapping;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_3

    const-string v0, ""

    .line 178
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 181
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 182
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jetty/security/ConstraintMapping;

    .line 184
    invoke-virtual {v1}, Lorg/eclipse/jetty/security/ConstraintMapping;->getPathSpec()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 186
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0

    .line 179
    :cond_3
    :goto_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static removeConstraintMappingsForPath(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lorg/eclipse/jetty/security/ConstraintMapping;",
            ">;)",
            "Ljava/util/List<",
            "Lorg/eclipse/jetty/security/ConstraintMapping;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_3

    const-string v0, ""

    .line 203
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 206
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 207
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jetty/security/ConstraintMapping;

    .line 210
    invoke-virtual {v1}, Lorg/eclipse/jetty/security/ConstraintMapping;->getPathSpec()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 212
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0

    .line 204
    :cond_3
    :goto_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public addConstraintMapping(Lorg/eclipse/jetty/security/ConstraintMapping;)V
    .locals 4

    .line 406
    iget-object v0, p0, Lorg/eclipse/jetty/security/ConstraintSecurityHandler;->_constraintMappings:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 407
    invoke-virtual {p1}, Lorg/eclipse/jetty/security/ConstraintMapping;->getConstraint()Lorg/eclipse/jetty/util/security/Constraint;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/eclipse/jetty/security/ConstraintMapping;->getConstraint()Lorg/eclipse/jetty/util/security/Constraint;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/security/Constraint;->getRoles()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 408
    invoke-virtual {p1}, Lorg/eclipse/jetty/security/ConstraintMapping;->getConstraint()Lorg/eclipse/jetty/util/security/Constraint;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/security/Constraint;->getRoles()[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 409
    invoke-virtual {p0, v3}, Lorg/eclipse/jetty/security/ConstraintSecurityHandler;->addRole(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 411
    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/security/ConstraintSecurityHandler;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 413
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/security/ConstraintSecurityHandler;->processConstraintMapping(Lorg/eclipse/jetty/security/ConstraintMapping;)V

    :cond_1
    return-void
.end method

.method public addRole(Ljava/lang/String;)V
    .locals 4

    .line 423
    iget-object v0, p0, Lorg/eclipse/jetty/security/ConstraintSecurityHandler;->_roles:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 424
    invoke-virtual {p0}, Lorg/eclipse/jetty/security/ConstraintSecurityHandler;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lorg/eclipse/jetty/security/ConstraintSecurityHandler;->_strict:Z

    if-eqz v0, :cond_2

    .line 427
    iget-object v0, p0, Lorg/eclipse/jetty/security/ConstraintSecurityHandler;->_constraintMap:Lorg/eclipse/jetty/http/PathMap;

    invoke-virtual {v0}, Lorg/eclipse/jetty/http/PathMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 429
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/jetty/security/RoleInfo;

    .line 431
    invoke-virtual {v2}, Lorg/eclipse/jetty/security/RoleInfo;->isAnyRole()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 432
    invoke-virtual {v2, p1}, Lorg/eclipse/jetty/security/RoleInfo;->addRole(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method protected checkUserDataPermissions(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;Lorg/eclipse/jetty/server/Response;Ljava/lang/Object;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p1, 0x1

    if-nez p4, :cond_0

    return p1

    .line 689
    :cond_0
    check-cast p4, Lorg/eclipse/jetty/security/RoleInfo;

    .line 690
    invoke-virtual {p4}, Lorg/eclipse/jetty/security/RoleInfo;->isForbidden()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    return v1

    .line 694
    :cond_1
    invoke-virtual {p4}, Lorg/eclipse/jetty/security/RoleInfo;->getUserDataConstraint()Lorg/eclipse/jetty/security/UserDataConstraint;

    move-result-object p4

    if-eqz p4, :cond_d

    .line 695
    sget-object v0, Lorg/eclipse/jetty/security/UserDataConstraint;->None:Lorg/eclipse/jetty/security/UserDataConstraint;

    if-ne p4, v0, :cond_2

    goto/16 :goto_4

    .line 699
    :cond_2
    invoke-static {}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getCurrentConnection()Lorg/eclipse/jetty/server/AbstractHttpConnection;

    move-result-object v0

    .line 700
    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getConnector()Lorg/eclipse/jetty/server/Connector;

    move-result-object v0

    .line 702
    sget-object v2, Lorg/eclipse/jetty/security/UserDataConstraint;->Integral:Lorg/eclipse/jetty/security/UserDataConstraint;

    const/16 v3, 0x193

    const/16 v4, 0x1bb

    if-ne p4, v2, :cond_7

    .line 704
    invoke-interface {v0, p2}, Lorg/eclipse/jetty/server/Connector;->isIntegral(Lorg/eclipse/jetty/server/Request;)Z

    move-result p4

    if-eqz p4, :cond_3

    return p1

    .line 706
    :cond_3
    invoke-interface {v0}, Lorg/eclipse/jetty/server/Connector;->getIntegralPort()I

    move-result p4

    if-lez p4, :cond_6

    .line 708
    invoke-interface {v0}, Lorg/eclipse/jetty/server/Connector;->getIntegralScheme()Ljava/lang/String;

    move-result-object p4

    .line 709
    invoke-interface {v0}, Lorg/eclipse/jetty/server/Connector;->getIntegralPort()I

    move-result v0

    const-string v2, "https"

    .line 710
    invoke-virtual {v2, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    if-ne v0, v4, :cond_4

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "https://"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lorg/eclipse/jetty/server/Request;->getServerName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lorg/eclipse/jetty/server/Request;->getRequestURI()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    goto :goto_0

    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "://"

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lorg/eclipse/jetty/server/Request;->getServerName()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, ":"

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lorg/eclipse/jetty/server/Request;->getRequestURI()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    .line 713
    :goto_0
    invoke-virtual {p2}, Lorg/eclipse/jetty/server/Request;->getQueryString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 714
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "?"

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lorg/eclipse/jetty/server/Request;->getQueryString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    .line 715
    :cond_5
    invoke-virtual {p3, v1}, Lorg/eclipse/jetty/server/Response;->setContentLength(I)V

    .line 716
    invoke-virtual {p3, p4}, Lorg/eclipse/jetty/server/Response;->sendRedirect(Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    const-string p4, "!Integral"

    .line 719
    invoke-virtual {p3, v3, p4}, Lorg/eclipse/jetty/server/Response;->sendError(ILjava/lang/String;)V

    .line 721
    :goto_1
    invoke-virtual {p2, p1}, Lorg/eclipse/jetty/server/Request;->setHandled(Z)V

    return v1

    .line 724
    :cond_7
    sget-object v2, Lorg/eclipse/jetty/security/UserDataConstraint;->Confidential:Lorg/eclipse/jetty/security/UserDataConstraint;

    if-ne p4, v2, :cond_c

    .line 726
    invoke-interface {v0, p2}, Lorg/eclipse/jetty/server/Connector;->isConfidential(Lorg/eclipse/jetty/server/Request;)Z

    move-result p4

    if-eqz p4, :cond_8

    return p1

    .line 729
    :cond_8
    invoke-interface {v0}, Lorg/eclipse/jetty/server/Connector;->getConfidentialPort()I

    move-result p4

    if-lez p4, :cond_b

    .line 731
    invoke-interface {v0}, Lorg/eclipse/jetty/server/Connector;->getConfidentialScheme()Ljava/lang/String;

    move-result-object p4

    .line 732
    invoke-interface {v0}, Lorg/eclipse/jetty/server/Connector;->getConfidentialPort()I

    move-result v0

    const-string v2, "https"

    .line 733
    invoke-virtual {v2, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    if-ne v0, v4, :cond_9

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "https://"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lorg/eclipse/jetty/server/Request;->getServerName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lorg/eclipse/jetty/server/Request;->getRequestURI()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    goto :goto_2

    :cond_9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "://"

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lorg/eclipse/jetty/server/Request;->getServerName()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, ":"

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lorg/eclipse/jetty/server/Request;->getRequestURI()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    .line 736
    :goto_2
    invoke-virtual {p2}, Lorg/eclipse/jetty/server/Request;->getQueryString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 737
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "?"

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lorg/eclipse/jetty/server/Request;->getQueryString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    .line 738
    :cond_a
    invoke-virtual {p3, v1}, Lorg/eclipse/jetty/server/Response;->setContentLength(I)V

    .line 739
    invoke-virtual {p3, p4}, Lorg/eclipse/jetty/server/Response;->sendRedirect(Ljava/lang/String;)V

    goto :goto_3

    :cond_b
    const-string p4, "!Confidential"

    .line 742
    invoke-virtual {p3, v3, p4}, Lorg/eclipse/jetty/server/Response;->sendError(ILjava/lang/String;)V

    .line 744
    :goto_3
    invoke-virtual {p2, p1}, Lorg/eclipse/jetty/server/Request;->setHandled(Z)V

    return v1

    .line 749
    :cond_c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Invalid dataConstraint value: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_d
    :goto_4
    return p1
.end method

.method protected checkWebResourcePermissions(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;Lorg/eclipse/jetty/server/Response;Ljava/lang/Object;Lorg/eclipse/jetty/server/UserIdentity;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p1, 0x1

    if-nez p4, :cond_0

    return p1

    .line 780
    :cond_0
    check-cast p4, Lorg/eclipse/jetty/security/RoleInfo;

    .line 782
    invoke-virtual {p4}, Lorg/eclipse/jetty/security/RoleInfo;->isChecked()Z

    move-result p3

    if-nez p3, :cond_1

    return p1

    .line 787
    :cond_1
    invoke-virtual {p4}, Lorg/eclipse/jetty/security/RoleInfo;->isAnyRole()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-virtual {p2}, Lorg/eclipse/jetty/server/Request;->getAuthType()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_2

    return p1

    .line 790
    :cond_2
    invoke-virtual {p4}, Lorg/eclipse/jetty/security/RoleInfo;->getRoles()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    const/4 p4, 0x0

    .line 792
    invoke-interface {p5, p3, p4}, Lorg/eclipse/jetty/server/UserIdentity;->isUserInRole(Ljava/lang/String;Lorg/eclipse/jetty/server/UserIdentity$Scope;)Z

    move-result p3

    if-eqz p3, :cond_3

    return p1

    :cond_4
    const/4 p1, 0x0

    return p1
.end method

.method protected configureRoleInfo(Lorg/eclipse/jetty/security/RoleInfo;Lorg/eclipse/jetty/security/ConstraintMapping;)V
    .locals 4

    .line 577
    invoke-virtual {p2}, Lorg/eclipse/jetty/security/ConstraintMapping;->getConstraint()Lorg/eclipse/jetty/util/security/Constraint;

    move-result-object v0

    .line 578
    invoke-virtual {v0}, Lorg/eclipse/jetty/util/security/Constraint;->isForbidden()Z

    move-result v0

    .line 579
    invoke-virtual {p1, v0}, Lorg/eclipse/jetty/security/RoleInfo;->setForbidden(Z)V

    .line 583
    invoke-virtual {p2}, Lorg/eclipse/jetty/security/ConstraintMapping;->getConstraint()Lorg/eclipse/jetty/util/security/Constraint;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/security/Constraint;->getDataConstraint()I

    move-result v0

    invoke-static {v0}, Lorg/eclipse/jetty/security/UserDataConstraint;->get(I)Lorg/eclipse/jetty/security/UserDataConstraint;

    move-result-object v0

    .line 584
    invoke-virtual {p1, v0}, Lorg/eclipse/jetty/security/RoleInfo;->setUserDataConstraint(Lorg/eclipse/jetty/security/UserDataConstraint;)V

    .line 588
    invoke-virtual {p1}, Lorg/eclipse/jetty/security/RoleInfo;->isForbidden()Z

    move-result v0

    if-nez v0, :cond_3

    .line 591
    invoke-virtual {p2}, Lorg/eclipse/jetty/security/ConstraintMapping;->getConstraint()Lorg/eclipse/jetty/util/security/Constraint;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/security/Constraint;->getAuthenticate()Z

    move-result v0

    .line 592
    invoke-virtual {p1, v0}, Lorg/eclipse/jetty/security/RoleInfo;->setChecked(Z)V

    .line 593
    invoke-virtual {p1}, Lorg/eclipse/jetty/security/RoleInfo;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 595
    invoke-virtual {p2}, Lorg/eclipse/jetty/security/ConstraintMapping;->getConstraint()Lorg/eclipse/jetty/util/security/Constraint;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/security/Constraint;->isAnyRole()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 597
    iget-boolean p2, p0, Lorg/eclipse/jetty/security/ConstraintSecurityHandler;->_strict:Z

    if-eqz p2, :cond_0

    .line 600
    iget-object p2, p0, Lorg/eclipse/jetty/security/ConstraintSecurityHandler;->_roles:Ljava/util/Set;

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 601
    invoke-virtual {p1, v0}, Lorg/eclipse/jetty/security/RoleInfo;->addRole(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    .line 605
    invoke-virtual {p1, p2}, Lorg/eclipse/jetty/security/RoleInfo;->setAnyRole(Z)V

    goto :goto_2

    .line 609
    :cond_1
    invoke-virtual {p2}, Lorg/eclipse/jetty/security/ConstraintMapping;->getConstraint()Lorg/eclipse/jetty/util/security/Constraint;

    move-result-object p2

    invoke-virtual {p2}, Lorg/eclipse/jetty/util/security/Constraint;->getRoles()[Ljava/lang/String;

    move-result-object p2

    .line 610
    array-length v0, p2

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_3

    aget-object v2, p2, v1

    .line 612
    iget-boolean v3, p0, Lorg/eclipse/jetty/security/ConstraintSecurityHandler;->_strict:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lorg/eclipse/jetty/security/ConstraintSecurityHandler;->_roles:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 613
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Attempt to use undeclared role: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", known roles: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/eclipse/jetty/security/ConstraintSecurityHandler;->_roles:Ljava/util/Set;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 614
    :cond_2
    invoke-virtual {p1, v2}, Lorg/eclipse/jetty/security/RoleInfo;->addRole(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    return-void
.end method

.method protected doStart()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 445
    iget-object v0, p0, Lorg/eclipse/jetty/security/ConstraintSecurityHandler;->_constraintMap:Lorg/eclipse/jetty/http/PathMap;

    invoke-virtual {v0}, Lorg/eclipse/jetty/http/PathMap;->clear()V

    .line 446
    iget-object v0, p0, Lorg/eclipse/jetty/security/ConstraintSecurityHandler;->_constraintMappings:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 448
    iget-object v0, p0, Lorg/eclipse/jetty/security/ConstraintSecurityHandler;->_constraintMappings:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jetty/security/ConstraintMapping;

    .line 450
    invoke-virtual {p0, v1}, Lorg/eclipse/jetty/security/ConstraintSecurityHandler;->processConstraintMapping(Lorg/eclipse/jetty/security/ConstraintMapping;)V

    goto :goto_0

    .line 453
    :cond_0
    invoke-super {p0}, Lorg/eclipse/jetty/security/SecurityHandler;->doStart()V

    return-void
.end method

.method protected doStop()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 461
    iget-object v0, p0, Lorg/eclipse/jetty/security/ConstraintSecurityHandler;->_constraintMap:Lorg/eclipse/jetty/http/PathMap;

    invoke-virtual {v0}, Lorg/eclipse/jetty/http/PathMap;->clear()V

    .line 462
    iget-object v0, p0, Lorg/eclipse/jetty/security/ConstraintSecurityHandler;->_constraintMappings:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 463
    iget-object v0, p0, Lorg/eclipse/jetty/security/ConstraintSecurityHandler;->_roles:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 464
    invoke-super {p0}, Lorg/eclipse/jetty/security/SecurityHandler;->doStop()V

    return-void
.end method

.method public dump(Ljava/lang/Appendable;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 802
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/security/ConstraintSecurityHandler;->dumpThis(Ljava/lang/Appendable;)V

    const/4 v0, 0x7

    .line 803
    new-array v0, v0, [Ljava/util/Collection;

    invoke-virtual {p0}, Lorg/eclipse/jetty/security/ConstraintSecurityHandler;->getLoginService()Lorg/eclipse/jetty/security/LoginService;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lorg/eclipse/jetty/security/ConstraintSecurityHandler;->getIdentityService()Lorg/eclipse/jetty/security/IdentityService;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lorg/eclipse/jetty/security/ConstraintSecurityHandler;->getAuthenticator()Lorg/eclipse/jetty/security/Authenticator;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lorg/eclipse/jetty/security/ConstraintSecurityHandler;->_roles:Ljava/util/Set;

    invoke-static {v1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lorg/eclipse/jetty/security/ConstraintSecurityHandler;->_constraintMap:Lorg/eclipse/jetty/http/PathMap;

    invoke-virtual {v1}, Lorg/eclipse/jetty/http/PathMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lorg/eclipse/jetty/security/ConstraintSecurityHandler;->getBeans()Ljava/util/Collection;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lorg/eclipse/jetty/security/ConstraintSecurityHandler;->getHandlers()[Lorg/eclipse/jetty/server/Handler;

    move-result-object v1

    invoke-static {v1}, Lorg/eclipse/jetty/util/TypeUtil;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    invoke-static {p1, p2, v0}, Lorg/eclipse/jetty/security/ConstraintSecurityHandler;->dump(Ljava/lang/Appendable;Ljava/lang/String;[Ljava/util/Collection;)V

    return-void
.end method

.method public getConstraintMappings()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/eclipse/jetty/security/ConstraintMapping;",
            ">;"
        }
    .end annotation

    .line 309
    iget-object v0, p0, Lorg/eclipse/jetty/security/ConstraintSecurityHandler;->_constraintMappings:Ljava/util/List;

    return-object v0
.end method

.method public getRoles()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 315
    iget-object v0, p0, Lorg/eclipse/jetty/security/ConstraintSecurityHandler;->_roles:Ljava/util/Set;

    return-object v0
.end method

.method protected isAuthMandatory(Lorg/eclipse/jetty/server/Request;Lorg/eclipse/jetty/server/Response;Ljava/lang/Object;)Z
    .locals 0

    if-nez p3, :cond_0

    const/4 p1, 0x0

    return p1

    .line 764
    :cond_0
    check-cast p3, Lorg/eclipse/jetty/security/RoleInfo;

    invoke-virtual {p3}, Lorg/eclipse/jetty/security/RoleInfo;->isChecked()Z

    move-result p1

    return p1
.end method

.method public isStrict()Z
    .locals 1

    .line 279
    iget-boolean v0, p0, Lorg/eclipse/jetty/security/ConstraintSecurityHandler;->_strict:Z

    return v0
.end method

.method protected prepareConstraintInfo(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;)Ljava/lang/Object;
    .locals 4

    .line 637
    iget-object v0, p0, Lorg/eclipse/jetty/security/ConstraintSecurityHandler;->_constraintMap:Lorg/eclipse/jetty/http/PathMap;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/http/PathMap;->match(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    const/4 v0, 0x0

    if-eqz p1, :cond_6

    .line 641
    invoke-virtual {p2}, Lorg/eclipse/jetty/server/Request;->getMethod()Ljava/lang/String;

    move-result-object p2

    .line 642
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jetty/security/RoleInfo;

    if-nez v1, :cond_5

    .line 646
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 649
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/security/RoleInfo;

    if-eqz v0, :cond_0

    .line 651
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 656
    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 658
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, ".omission"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".omission"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 659
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 662
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_3

    const/4 p1, 0x0

    .line 663
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lorg/eclipse/jetty/security/RoleInfo;

    goto :goto_2

    .line 666
    :cond_3
    new-instance p1, Lorg/eclipse/jetty/security/RoleInfo;

    invoke-direct {p1}, Lorg/eclipse/jetty/security/RoleInfo;-><init>()V

    .line 667
    sget-object p2, Lorg/eclipse/jetty/security/UserDataConstraint;->None:Lorg/eclipse/jetty/security/UserDataConstraint;

    invoke-virtual {p1, p2}, Lorg/eclipse/jetty/security/RoleInfo;->setUserDataConstraint(Lorg/eclipse/jetty/security/UserDataConstraint;)V

    .line 669
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/security/RoleInfo;

    .line 670
    invoke-virtual {p1, v0}, Lorg/eclipse/jetty/security/RoleInfo;->combine(Lorg/eclipse/jetty/security/RoleInfo;)V

    goto :goto_1

    :cond_4
    move-object v1, p1

    :cond_5
    :goto_2
    return-object v1

    :cond_6
    return-object v0
.end method

.method protected processConstraintMapping(Lorg/eclipse/jetty/security/ConstraintMapping;)V
    .locals 5

    .line 477
    iget-object v0, p0, Lorg/eclipse/jetty/security/ConstraintSecurityHandler;->_constraintMap:Lorg/eclipse/jetty/http/PathMap;

    invoke-virtual {p1}, Lorg/eclipse/jetty/security/ConstraintMapping;->getPathSpec()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/http/PathMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-nez v0, :cond_0

    .line 480
    new-instance v0, Lorg/eclipse/jetty/util/StringMap;

    invoke-direct {v0}, Lorg/eclipse/jetty/util/StringMap;-><init>()V

    .line 481
    iget-object v1, p0, Lorg/eclipse/jetty/security/ConstraintSecurityHandler;->_constraintMap:Lorg/eclipse/jetty/http/PathMap;

    invoke-virtual {p1}, Lorg/eclipse/jetty/security/ConstraintMapping;->getPathSpec()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lorg/eclipse/jetty/http/PathMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const/4 v1, 0x0

    .line 483
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/jetty/security/RoleInfo;

    if-eqz v2, :cond_1

    .line 484
    invoke-virtual {v2}, Lorg/eclipse/jetty/security/RoleInfo;->isForbidden()Z

    move-result v3

    if-eqz v3, :cond_1

    return-void

    .line 487
    :cond_1
    invoke-virtual {p1}, Lorg/eclipse/jetty/security/ConstraintMapping;->getMethodOmissions()[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {p1}, Lorg/eclipse/jetty/security/ConstraintMapping;->getMethodOmissions()[Ljava/lang/String;

    move-result-object v3

    array-length v3, v3

    if-lez v3, :cond_2

    .line 490
    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jetty/security/ConstraintSecurityHandler;->processConstraintMappingWithMethodOmissions(Lorg/eclipse/jetty/security/ConstraintMapping;Ljava/util/Map;)V

    return-void

    .line 494
    :cond_2
    invoke-virtual {p1}, Lorg/eclipse/jetty/security/ConstraintMapping;->getMethod()Ljava/lang/String;

    move-result-object v3

    .line 495
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/eclipse/jetty/security/RoleInfo;

    if-nez v4, :cond_3

    .line 498
    new-instance v4, Lorg/eclipse/jetty/security/RoleInfo;

    invoke-direct {v4}, Lorg/eclipse/jetty/security/RoleInfo;-><init>()V

    .line 499
    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v2, :cond_3

    .line 502
    invoke-virtual {v4, v2}, Lorg/eclipse/jetty/security/RoleInfo;->combine(Lorg/eclipse/jetty/security/RoleInfo;)V

    .line 505
    :cond_3
    invoke-virtual {v4}, Lorg/eclipse/jetty/security/RoleInfo;->isForbidden()Z

    move-result v2

    if-eqz v2, :cond_4

    return-void

    .line 509
    :cond_4
    invoke-virtual {p0, v4, p1}, Lorg/eclipse/jetty/security/ConstraintSecurityHandler;->configureRoleInfo(Lorg/eclipse/jetty/security/RoleInfo;Lorg/eclipse/jetty/security/ConstraintMapping;)V

    .line 511
    invoke-virtual {v4}, Lorg/eclipse/jetty/security/RoleInfo;->isForbidden()Z

    move-result p1

    if-eqz p1, :cond_5

    if-nez v3, :cond_7

    .line 515
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 516
    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_5
    if-nez v3, :cond_7

    .line 524
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_6
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 526
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 528
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/security/RoleInfo;

    .line 529
    invoke-virtual {v0, v4}, Lorg/eclipse/jetty/security/RoleInfo;->combine(Lorg/eclipse/jetty/security/RoleInfo;)V

    goto :goto_0

    :cond_7
    :goto_1
    return-void
.end method

.method protected processConstraintMappingWithMethodOmissions(Lorg/eclipse/jetty/security/ConstraintMapping;Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/eclipse/jetty/security/ConstraintMapping;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/eclipse/jetty/security/RoleInfo;",
            ">;)V"
        }
    .end annotation

    .line 550
    invoke-virtual {p1}, Lorg/eclipse/jetty/security/ConstraintMapping;->getMethodOmissions()[Ljava/lang/String;

    move-result-object v0

    .line 552
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 555
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".omission"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/eclipse/jetty/security/RoleInfo;

    if-nez v4, :cond_0

    .line 559
    new-instance v4, Lorg/eclipse/jetty/security/RoleInfo;

    invoke-direct {v4}, Lorg/eclipse/jetty/security/RoleInfo;-><init>()V

    .line 560
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".omission"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 564
    :cond_0
    invoke-virtual {p0, v4, p1}, Lorg/eclipse/jetty/security/ConstraintSecurityHandler;->configureRoleInfo(Lorg/eclipse/jetty/security/RoleInfo;Lorg/eclipse/jetty/security/ConstraintMapping;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setConstraintMappings(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/eclipse/jetty/security/ConstraintMapping;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 329
    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jetty/security/ConstraintSecurityHandler;->setConstraintMappings(Ljava/util/List;Ljava/util/Set;)V

    return-void
.end method

.method public setConstraintMappings(Ljava/util/List;Ljava/util/Set;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/eclipse/jetty/security/ConstraintMapping;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 356
    iget-object v0, p0, Lorg/eclipse/jetty/security/ConstraintSecurityHandler;->_constraintMappings:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 357
    iget-object v0, p0, Lorg/eclipse/jetty/security/ConstraintSecurityHandler;->_constraintMappings:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    if-nez p2, :cond_2

    .line 361
    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    .line 362
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/security/ConstraintMapping;

    .line 364
    invoke-virtual {v0}, Lorg/eclipse/jetty/security/ConstraintMapping;->getConstraint()Lorg/eclipse/jetty/util/security/Constraint;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/security/Constraint;->getRoles()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 367
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    const-string v4, "*"

    .line 368
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 369
    invoke-interface {p2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 373
    :cond_2
    invoke-virtual {p0, p2}, Lorg/eclipse/jetty/security/ConstraintSecurityHandler;->setRoles(Ljava/util/Set;)V

    .line 375
    invoke-virtual {p0}, Lorg/eclipse/jetty/security/ConstraintSecurityHandler;->isStarted()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 377
    iget-object p1, p0, Lorg/eclipse/jetty/security/ConstraintSecurityHandler;->_constraintMappings:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/eclipse/jetty/security/ConstraintMapping;

    .line 379
    invoke-virtual {p0, p2}, Lorg/eclipse/jetty/security/ConstraintSecurityHandler;->processConstraintMapping(Lorg/eclipse/jetty/security/ConstraintMapping;)V

    goto :goto_1

    :cond_3
    return-void
.end method

.method public setConstraintMappings([Lorg/eclipse/jetty/security/ConstraintMapping;)V
    .locals 1

    .line 342
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jetty/security/ConstraintSecurityHandler;->setConstraintMappings(Ljava/util/List;Ljava/util/Set;)V

    return-void
.end method

.method public setRoles(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 394
    iget-object v0, p0, Lorg/eclipse/jetty/security/ConstraintSecurityHandler;->_roles:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 395
    iget-object v0, p0, Lorg/eclipse/jetty/security/ConstraintSecurityHandler;->_roles:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public setStrict(Z)V
    .locals 0

    .line 300
    iput-boolean p1, p0, Lorg/eclipse/jetty/security/ConstraintSecurityHandler;->_strict:Z

    return-void
.end method
