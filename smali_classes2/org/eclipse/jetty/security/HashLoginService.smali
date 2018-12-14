.class public Lorg/eclipse/jetty/security/HashLoginService;
.super Lorg/eclipse/jetty/security/MappedLoginService;
.source "HashLoginService.java"

# interfaces
.implements Lorg/eclipse/jetty/security/PropertyUserStore$UserListener;


# static fields
.field private static final LOG:Lorg/eclipse/jetty/util/log/Logger;


# instance fields
.field private _config:Ljava/lang/String;

.field private _configResource:Lorg/eclipse/jetty/util/resource/Resource;

.field private _propertyUserStore:Lorg/eclipse/jetty/security/PropertyUserStore;

.field private _refreshInterval:I

.field private _scanner:Lorg/eclipse/jetty/util/Scanner;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 50
    const-class v0, Lorg/eclipse/jetty/security/HashLoginService;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/security/HashLoginService;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 60
    invoke-direct {p0}, Lorg/eclipse/jetty/security/MappedLoginService;-><init>()V

    const/4 v0, 0x0

    .line 56
    iput v0, p0, Lorg/eclipse/jetty/security/HashLoginService;->_refreshInterval:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 65
    invoke-direct {p0}, Lorg/eclipse/jetty/security/MappedLoginService;-><init>()V

    const/4 v0, 0x0

    .line 56
    iput v0, p0, Lorg/eclipse/jetty/security/HashLoginService;->_refreshInterval:I

    .line 66
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/security/HashLoginService;->setName(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 71
    invoke-direct {p0}, Lorg/eclipse/jetty/security/MappedLoginService;-><init>()V

    const/4 v0, 0x0

    .line 56
    iput v0, p0, Lorg/eclipse/jetty/security/HashLoginService;->_refreshInterval:I

    .line 72
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/security/HashLoginService;->setName(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p0, p2}, Lorg/eclipse/jetty/security/HashLoginService;->setConfig(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected doStart()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 138
    invoke-super {p0}, Lorg/eclipse/jetty/security/MappedLoginService;->doStart()V

    .line 140
    iget-object v0, p0, Lorg/eclipse/jetty/security/HashLoginService;->_propertyUserStore:Lorg/eclipse/jetty/security/PropertyUserStore;

    if-nez v0, :cond_1

    .line 142
    sget-object v0, Lorg/eclipse/jetty/security/HashLoginService;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v0}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    sget-object v0, Lorg/eclipse/jetty/security/HashLoginService;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doStart: Starting new PropertyUserStore. PropertiesFile: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/eclipse/jetty/security/HashLoginService;->_config:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " refreshInterval: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/eclipse/jetty/security/HashLoginService;->_refreshInterval:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 145
    :cond_0
    new-instance v0, Lorg/eclipse/jetty/security/PropertyUserStore;

    invoke-direct {v0}, Lorg/eclipse/jetty/security/PropertyUserStore;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/security/HashLoginService;->_propertyUserStore:Lorg/eclipse/jetty/security/PropertyUserStore;

    .line 146
    iget-object v0, p0, Lorg/eclipse/jetty/security/HashLoginService;->_propertyUserStore:Lorg/eclipse/jetty/security/PropertyUserStore;

    iget v1, p0, Lorg/eclipse/jetty/security/HashLoginService;->_refreshInterval:I

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/security/PropertyUserStore;->setRefreshInterval(I)V

    .line 147
    iget-object v0, p0, Lorg/eclipse/jetty/security/HashLoginService;->_propertyUserStore:Lorg/eclipse/jetty/security/PropertyUserStore;

    iget-object v1, p0, Lorg/eclipse/jetty/security/HashLoginService;->_config:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/security/PropertyUserStore;->setConfig(Ljava/lang/String;)V

    .line 148
    iget-object v0, p0, Lorg/eclipse/jetty/security/HashLoginService;->_propertyUserStore:Lorg/eclipse/jetty/security/PropertyUserStore;

    invoke-virtual {v0, p0}, Lorg/eclipse/jetty/security/PropertyUserStore;->registerUserListener(Lorg/eclipse/jetty/security/PropertyUserStore$UserListener;)V

    .line 149
    iget-object v0, p0, Lorg/eclipse/jetty/security/HashLoginService;->_propertyUserStore:Lorg/eclipse/jetty/security/PropertyUserStore;

    invoke-virtual {v0}, Lorg/eclipse/jetty/security/PropertyUserStore;->start()V

    :cond_1
    return-void
.end method

.method protected doStop()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 159
    invoke-super {p0}, Lorg/eclipse/jetty/security/MappedLoginService;->doStop()V

    .line 160
    iget-object v0, p0, Lorg/eclipse/jetty/security/HashLoginService;->_scanner:Lorg/eclipse/jetty/util/Scanner;

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lorg/eclipse/jetty/security/HashLoginService;->_scanner:Lorg/eclipse/jetty/util/Scanner;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/Scanner;->stop()V

    :cond_0
    const/4 v0, 0x0

    .line 162
    iput-object v0, p0, Lorg/eclipse/jetty/security/HashLoginService;->_scanner:Lorg/eclipse/jetty/util/Scanner;

    return-void
.end method

.method public getConfig()Ljava/lang/String;
    .locals 1

    .line 79
    iget-object v0, p0, Lorg/eclipse/jetty/security/HashLoginService;->_config:Ljava/lang/String;

    return-object v0
.end method

.method public getConfig(Ljava/lang/String;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lorg/eclipse/jetty/security/HashLoginService;->_config:Ljava/lang/String;

    return-void
.end method

.method public getConfigResource()Lorg/eclipse/jetty/util/resource/Resource;
    .locals 1

    .line 91
    iget-object v0, p0, Lorg/eclipse/jetty/security/HashLoginService;->_configResource:Lorg/eclipse/jetty/util/resource/Resource;

    return-object v0
.end method

.method public getRefreshInterval()I
    .locals 1

    .line 115
    iget v0, p0, Lorg/eclipse/jetty/security/HashLoginService;->_refreshInterval:I

    return v0
.end method

.method protected loadUser(Ljava/lang/String;)Lorg/eclipse/jetty/server/UserIdentity;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public loadUsers()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public remove(Ljava/lang/String;)V
    .locals 3

    .line 176
    sget-object v0, Lorg/eclipse/jetty/security/HashLoginService;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v0}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 177
    sget-object v0, Lorg/eclipse/jetty/security/HashLoginService;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "remove: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 178
    :cond_0
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/security/HashLoginService;->removeUser(Ljava/lang/String;)V

    return-void
.end method

.method public setConfig(Ljava/lang/String;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lorg/eclipse/jetty/security/HashLoginService;->_config:Ljava/lang/String;

    return-void
.end method

.method public setRefreshInterval(I)V
    .locals 0

    .line 109
    iput p1, p0, Lorg/eclipse/jetty/security/HashLoginService;->_refreshInterval:I

    return-void
.end method

.method public update(Ljava/lang/String;Lorg/eclipse/jetty/util/security/Credential;[Ljava/lang/String;)V
    .locals 3

    .line 168
    sget-object v0, Lorg/eclipse/jetty/security/HashLoginService;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v0}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 169
    sget-object v0, Lorg/eclipse/jetty/security/HashLoginService;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "update: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " Roles: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, p3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 170
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lorg/eclipse/jetty/security/HashLoginService;->putUser(Ljava/lang/String;Lorg/eclipse/jetty/util/security/Credential;[Ljava/lang/String;)Lorg/eclipse/jetty/server/UserIdentity;

    return-void
.end method
