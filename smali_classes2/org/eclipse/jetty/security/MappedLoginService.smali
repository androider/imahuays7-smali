.class public abstract Lorg/eclipse/jetty/security/MappedLoginService;
.super Lorg/eclipse/jetty/util/component/AbstractLifeCycle;
.source "MappedLoginService.java"

# interfaces
.implements Lorg/eclipse/jetty/security/LoginService;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jetty/security/MappedLoginService$KnownUser;,
        Lorg/eclipse/jetty/security/MappedLoginService$Anonymous;,
        Lorg/eclipse/jetty/security/MappedLoginService$RolePrincipal;,
        Lorg/eclipse/jetty/security/MappedLoginService$UserPrincipal;
    }
.end annotation


# static fields
.field private static final LOG:Lorg/eclipse/jetty/util/log/Logger;


# instance fields
.field protected _identityService:Lorg/eclipse/jetty/security/IdentityService;

.field protected _name:Ljava/lang/String;

.field protected final _users:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Lorg/eclipse/jetty/server/UserIdentity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 47
    const-class v0, Lorg/eclipse/jetty/security/MappedLoginService;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/security/MappedLoginService;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .line 55
    invoke-direct {p0}, Lorg/eclipse/jetty/util/component/AbstractLifeCycle;-><init>()V

    .line 49
    new-instance v0, Lorg/eclipse/jetty/security/DefaultIdentityService;

    invoke-direct {v0}, Lorg/eclipse/jetty/security/DefaultIdentityService;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/security/MappedLoginService;->_identityService:Lorg/eclipse/jetty/security/IdentityService;

    .line 51
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/security/MappedLoginService;->_users:Ljava/util/concurrent/ConcurrentMap;

    return-void
.end method


# virtual methods
.method protected doStart()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 126
    invoke-virtual {p0}, Lorg/eclipse/jetty/security/MappedLoginService;->loadUsers()V

    .line 127
    invoke-super {p0}, Lorg/eclipse/jetty/util/component/AbstractLifeCycle;->doStart()V

    return-void
.end method

.method protected doStop()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 134
    invoke-super {p0}, Lorg/eclipse/jetty/util/component/AbstractLifeCycle;->doStop()V

    return-void
.end method

.method public getIdentityService()Lorg/eclipse/jetty/security/IdentityService;
    .locals 1

    .line 73
    iget-object v0, p0, Lorg/eclipse/jetty/security/MappedLoginService;->_identityService:Lorg/eclipse/jetty/security/IdentityService;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 64
    iget-object v0, p0, Lorg/eclipse/jetty/security/MappedLoginService;->_name:Ljava/lang/String;

    return-object v0
.end method

.method public getUsers()Ljava/util/concurrent/ConcurrentMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Lorg/eclipse/jetty/server/UserIdentity;",
            ">;"
        }
    .end annotation

    .line 82
    iget-object v0, p0, Lorg/eclipse/jetty/security/MappedLoginService;->_users:Ljava/util/concurrent/ConcurrentMap;

    return-object v0
.end method

.method protected abstract loadUser(Ljava/lang/String;)Lorg/eclipse/jetty/server/UserIdentity;
.end method

.method protected abstract loadUsers()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public login(Ljava/lang/String;Ljava/lang/Object;)Lorg/eclipse/jetty/server/UserIdentity;
    .locals 1

    .line 215
    iget-object v0, p0, Lorg/eclipse/jetty/security/MappedLoginService;->_users:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/server/UserIdentity;

    if-nez v0, :cond_0

    .line 218
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/security/MappedLoginService;->loadUser(Ljava/lang/String;)Lorg/eclipse/jetty/server/UserIdentity;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    .line 222
    invoke-interface {v0}, Lorg/eclipse/jetty/server/UserIdentity;->getUserPrincipal()Ljava/security/Principal;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jetty/security/MappedLoginService$UserPrincipal;

    .line 223
    invoke-interface {p1, p2}, Lorg/eclipse/jetty/security/MappedLoginService$UserPrincipal;->authenticate(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-object v0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public logout(Lorg/eclipse/jetty/server/UserIdentity;)V
    .locals 4

    .line 140
    sget-object v0, Lorg/eclipse/jetty/security/MappedLoginService;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v1, "logout {}"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method protected declared-synchronized putUser(Ljava/lang/String;Ljava/lang/Object;)Lorg/eclipse/jetty/server/UserIdentity;
    .locals 3

    monitor-enter p0

    .line 161
    :try_start_0
    instance-of v0, p2, Lorg/eclipse/jetty/server/UserIdentity;

    if-eqz v0, :cond_0

    .line 162
    check-cast p2, Lorg/eclipse/jetty/server/UserIdentity;

    goto :goto_1

    .line 165
    :cond_0
    instance-of v0, p2, Lorg/eclipse/jetty/util/security/Credential;

    if-eqz v0, :cond_1

    check-cast p2, Lorg/eclipse/jetty/util/security/Credential;

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/eclipse/jetty/util/security/Credential;->getCredential(Ljava/lang/String;)Lorg/eclipse/jetty/util/security/Credential;

    move-result-object p2

    .line 167
    :goto_0
    new-instance v0, Lorg/eclipse/jetty/security/MappedLoginService$KnownUser;

    invoke-direct {v0, p1, p2}, Lorg/eclipse/jetty/security/MappedLoginService$KnownUser;-><init>(Ljava/lang/String;Lorg/eclipse/jetty/util/security/Credential;)V

    .line 168
    new-instance v1, Ljavax/security/auth/Subject;

    invoke-direct {v1}, Ljavax/security/auth/Subject;-><init>()V

    .line 169
    invoke-virtual {v1}, Ljavax/security/auth/Subject;->getPrincipals()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 170
    invoke-virtual {v1}, Ljavax/security/auth/Subject;->getPrivateCredentials()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 171
    invoke-virtual {v1}, Ljavax/security/auth/Subject;->setReadOnly()V

    .line 172
    iget-object p2, p0, Lorg/eclipse/jetty/security/MappedLoginService;->_identityService:Lorg/eclipse/jetty/security/IdentityService;

    sget-object v2, Lorg/eclipse/jetty/security/IdentityService;->NO_ROLES:[Ljava/lang/String;

    invoke-interface {p2, v1, v0, v2}, Lorg/eclipse/jetty/security/IdentityService;->newUserIdentity(Ljavax/security/auth/Subject;Ljava/security/Principal;[Ljava/lang/String;)Lorg/eclipse/jetty/server/UserIdentity;

    move-result-object p2

    .line 175
    :goto_1
    iget-object v0, p0, Lorg/eclipse/jetty/security/MappedLoginService;->_users:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1, p2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 176
    monitor-exit p0

    return-object p2

    :catchall_0
    move-exception p1

    .line 160
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized putUser(Ljava/lang/String;Lorg/eclipse/jetty/util/security/Credential;[Ljava/lang/String;)Lorg/eclipse/jetty/server/UserIdentity;
    .locals 6

    monitor-enter p0

    .line 188
    :try_start_0
    new-instance v0, Lorg/eclipse/jetty/security/MappedLoginService$KnownUser;

    invoke-direct {v0, p1, p2}, Lorg/eclipse/jetty/security/MappedLoginService$KnownUser;-><init>(Ljava/lang/String;Lorg/eclipse/jetty/util/security/Credential;)V

    .line 189
    new-instance v1, Ljavax/security/auth/Subject;

    invoke-direct {v1}, Ljavax/security/auth/Subject;-><init>()V

    .line 190
    invoke-virtual {v1}, Ljavax/security/auth/Subject;->getPrincipals()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 191
    invoke-virtual {v1}, Ljavax/security/auth/Subject;->getPrivateCredentials()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    if-eqz p3, :cond_0

    .line 194
    array-length p2, p3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p2, :cond_0

    aget-object v3, p3, v2

    .line 195
    invoke-virtual {v1}, Ljavax/security/auth/Subject;->getPrincipals()Ljava/util/Set;

    move-result-object v4

    new-instance v5, Lorg/eclipse/jetty/security/MappedLoginService$RolePrincipal;

    invoke-direct {v5, v3}, Lorg/eclipse/jetty/security/MappedLoginService$RolePrincipal;-><init>(Ljava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 197
    :cond_0
    invoke-virtual {v1}, Ljavax/security/auth/Subject;->setReadOnly()V

    .line 198
    iget-object p2, p0, Lorg/eclipse/jetty/security/MappedLoginService;->_identityService:Lorg/eclipse/jetty/security/IdentityService;

    invoke-interface {p2, v1, v0, p3}, Lorg/eclipse/jetty/security/IdentityService;->newUserIdentity(Ljavax/security/auth/Subject;Ljava/security/Principal;[Ljava/lang/String;)Lorg/eclipse/jetty/server/UserIdentity;

    move-result-object p2

    .line 199
    iget-object p3, p0, Lorg/eclipse/jetty/security/MappedLoginService;->_users:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p3, p1, p2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 200
    monitor-exit p0

    return-object p2

    :catchall_0
    move-exception p1

    .line 187
    monitor-exit p0

    throw p1
.end method

.method public removeUser(Ljava/lang/String;)V
    .locals 1

    .line 206
    iget-object v0, p0, Lorg/eclipse/jetty/security/MappedLoginService;->_users:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setIdentityService(Lorg/eclipse/jetty/security/IdentityService;)V
    .locals 1

    .line 91
    invoke-virtual {p0}, Lorg/eclipse/jetty/security/MappedLoginService;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Running"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 93
    :cond_0
    iput-object p1, p0, Lorg/eclipse/jetty/security/MappedLoginService;->_identityService:Lorg/eclipse/jetty/security/IdentityService;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 1

    .line 102
    invoke-virtual {p0}, Lorg/eclipse/jetty/security/MappedLoginService;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Running"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 104
    :cond_0
    iput-object p1, p0, Lorg/eclipse/jetty/security/MappedLoginService;->_name:Ljava/lang/String;

    return-void
.end method

.method public setUsers(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/eclipse/jetty/server/UserIdentity;",
            ">;)V"
        }
    .end annotation

    .line 113
    invoke-virtual {p0}, Lorg/eclipse/jetty/security/MappedLoginService;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Running"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 115
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/security/MappedLoginService;->_users:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->clear()V

    .line 116
    iget-object v0, p0, Lorg/eclipse/jetty/security/MappedLoginService;->_users:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/eclipse/jetty/security/MappedLoginService;->_name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public validate(Lorg/eclipse/jetty/server/UserIdentity;)Z
    .locals 2

    .line 232
    iget-object v0, p0, Lorg/eclipse/jetty/security/MappedLoginService;->_users:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p1}, Lorg/eclipse/jetty/server/UserIdentity;->getUserPrincipal()Ljava/security/Principal;

    move-result-object v1

    invoke-interface {v1}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ConcurrentMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 235
    :cond_0
    invoke-interface {p1}, Lorg/eclipse/jetty/server/UserIdentity;->getUserPrincipal()Ljava/security/Principal;

    move-result-object p1

    invoke-interface {p1}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/security/MappedLoginService;->loadUser(Ljava/lang/String;)Lorg/eclipse/jetty/server/UserIdentity;

    move-result-object p1

    if-eqz p1, :cond_1

    return v1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
