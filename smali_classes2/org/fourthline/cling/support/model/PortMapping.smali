.class public Lorg/fourthline/cling/support/model/PortMapping;
.super Ljava/lang/Object;
.source "PortMapping.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/fourthline/cling/support/model/PortMapping$Protocol;
    }
.end annotation


# instance fields
.field private description:Ljava/lang/String;

.field private enabled:Z

.field private externalPort:Lorg/fourthline/cling/model/types/UnsignedIntegerTwoBytes;

.field private internalClient:Ljava/lang/String;

.field private internalPort:Lorg/fourthline/cling/model/types/UnsignedIntegerTwoBytes;

.field private leaseDurationSeconds:Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;

.field private protocol:Lorg/fourthline/cling/support/model/PortMapping$Protocol;

.field private remoteHost:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Lorg/fourthline/cling/support/model/PortMapping$Protocol;)V
    .locals 9

    .line 62
    new-instance v2, Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;

    const-wide/16 v0, 0x0

    invoke-direct {v2, v0, v1}, Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;-><init>(J)V

    new-instance v4, Lorg/fourthline/cling/model/types/UnsignedIntegerTwoBytes;

    int-to-long v0, p1

    invoke-direct {v4, v0, v1}, Lorg/fourthline/cling/model/types/UnsignedIntegerTwoBytes;-><init>(J)V

    new-instance v5, Lorg/fourthline/cling/model/types/UnsignedIntegerTwoBytes;

    invoke-direct {v5, v0, v1}, Lorg/fourthline/cling/model/types/UnsignedIntegerTwoBytes;-><init>(J)V

    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v6, p2

    move-object v7, p3

    invoke-direct/range {v0 .. v8}, Lorg/fourthline/cling/support/model/PortMapping;-><init>(ZLorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;Ljava/lang/String;Lorg/fourthline/cling/model/types/UnsignedIntegerTwoBytes;Lorg/fourthline/cling/model/types/UnsignedIntegerTwoBytes;Ljava/lang/String;Lorg/fourthline/cling/support/model/PortMapping$Protocol;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Lorg/fourthline/cling/support/model/PortMapping$Protocol;Ljava/lang/String;)V
    .locals 9

    .line 75
    new-instance v2, Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;

    const-wide/16 v0, 0x0

    invoke-direct {v2, v0, v1}, Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;-><init>(J)V

    new-instance v4, Lorg/fourthline/cling/model/types/UnsignedIntegerTwoBytes;

    int-to-long v0, p1

    invoke-direct {v4, v0, v1}, Lorg/fourthline/cling/model/types/UnsignedIntegerTwoBytes;-><init>(J)V

    new-instance v5, Lorg/fourthline/cling/model/types/UnsignedIntegerTwoBytes;

    invoke-direct {v5, v0, v1}, Lorg/fourthline/cling/model/types/UnsignedIntegerTwoBytes;-><init>(J)V

    const/4 v1, 0x1

    const/4 v3, 0x0

    move-object v0, p0

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    invoke-direct/range {v0 .. v8}, Lorg/fourthline/cling/support/model/PortMapping;-><init>(ZLorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;Ljava/lang/String;Lorg/fourthline/cling/model/types/UnsignedIntegerTwoBytes;Lorg/fourthline/cling/model/types/UnsignedIntegerTwoBytes;Ljava/lang/String;Lorg/fourthline/cling/support/model/PortMapping$Protocol;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/fourthline/cling/model/types/UnsignedIntegerTwoBytes;Lorg/fourthline/cling/support/model/PortMapping$Protocol;)V
    .locals 9

    .line 88
    new-instance v2, Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;

    const-wide/16 v0, 0x0

    invoke-direct {v2, v0, v1}, Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;-><init>(J)V

    const/4 v1, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v7, p3

    invoke-direct/range {v0 .. v8}, Lorg/fourthline/cling/support/model/PortMapping;-><init>(ZLorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;Ljava/lang/String;Lorg/fourthline/cling/model/types/UnsignedIntegerTwoBytes;Lorg/fourthline/cling/model/types/UnsignedIntegerTwoBytes;Ljava/lang/String;Lorg/fourthline/cling/support/model/PortMapping$Protocol;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/fourthline/cling/model/action/ActionArgumentValue<",
            "Lorg/fourthline/cling/model/meta/Service;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "NewEnabled"

    .line 50
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/model/action/ActionArgumentValue;

    invoke-virtual {v0}, Lorg/fourthline/cling/model/action/ActionArgumentValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const-string v0, "NewLeaseDuration"

    .line 51
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/model/action/ActionArgumentValue;

    invoke-virtual {v0}, Lorg/fourthline/cling/model/action/ActionArgumentValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;

    const-string v0, "NewRemoteHost"

    .line 52
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/model/action/ActionArgumentValue;

    invoke-virtual {v0}, Lorg/fourthline/cling/model/action/ActionArgumentValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ljava/lang/String;

    const-string v0, "NewExternalPort"

    .line 53
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/model/action/ActionArgumentValue;

    invoke-virtual {v0}, Lorg/fourthline/cling/model/action/ActionArgumentValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lorg/fourthline/cling/model/types/UnsignedIntegerTwoBytes;

    const-string v0, "NewInternalPort"

    .line 54
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/model/action/ActionArgumentValue;

    invoke-virtual {v0}, Lorg/fourthline/cling/model/action/ActionArgumentValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lorg/fourthline/cling/model/types/UnsignedIntegerTwoBytes;

    const-string v0, "NewInternalClient"

    .line 55
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/model/action/ActionArgumentValue;

    invoke-virtual {v0}, Lorg/fourthline/cling/model/action/ActionArgumentValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Ljava/lang/String;

    const-string v0, "NewProtocol"

    .line 56
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/model/action/ActionArgumentValue;

    invoke-virtual {v0}, Lorg/fourthline/cling/model/action/ActionArgumentValue;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/fourthline/cling/support/model/PortMapping$Protocol;->valueOf(Ljava/lang/String;)Lorg/fourthline/cling/support/model/PortMapping$Protocol;

    move-result-object v8

    const-string v0, "NewPortMappingDescription"

    .line 57
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/fourthline/cling/model/action/ActionArgumentValue;

    invoke-virtual {p1}, Lorg/fourthline/cling/model/action/ActionArgumentValue;->getValue()Ljava/lang/Object;

    move-result-object p1

    move-object v9, p1

    check-cast v9, Ljava/lang/String;

    move-object v1, p0

    .line 49
    invoke-direct/range {v1 .. v9}, Lorg/fourthline/cling/support/model/PortMapping;-><init>(ZLorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;Ljava/lang/String;Lorg/fourthline/cling/model/types/UnsignedIntegerTwoBytes;Lorg/fourthline/cling/model/types/UnsignedIntegerTwoBytes;Ljava/lang/String;Lorg/fourthline/cling/support/model/PortMapping$Protocol;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(ZLorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;Ljava/lang/String;Lorg/fourthline/cling/model/types/UnsignedIntegerTwoBytes;Lorg/fourthline/cling/model/types/UnsignedIntegerTwoBytes;Ljava/lang/String;Lorg/fourthline/cling/support/model/PortMapping$Protocol;Ljava/lang/String;)V
    .locals 0

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    iput-boolean p1, p0, Lorg/fourthline/cling/support/model/PortMapping;->enabled:Z

    .line 103
    iput-object p2, p0, Lorg/fourthline/cling/support/model/PortMapping;->leaseDurationSeconds:Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;

    .line 104
    iput-object p3, p0, Lorg/fourthline/cling/support/model/PortMapping;->remoteHost:Ljava/lang/String;

    .line 105
    iput-object p4, p0, Lorg/fourthline/cling/support/model/PortMapping;->externalPort:Lorg/fourthline/cling/model/types/UnsignedIntegerTwoBytes;

    .line 106
    iput-object p5, p0, Lorg/fourthline/cling/support/model/PortMapping;->internalPort:Lorg/fourthline/cling/model/types/UnsignedIntegerTwoBytes;

    .line 107
    iput-object p6, p0, Lorg/fourthline/cling/support/model/PortMapping;->internalClient:Ljava/lang/String;

    .line 108
    iput-object p7, p0, Lorg/fourthline/cling/support/model/PortMapping;->protocol:Lorg/fourthline/cling/support/model/PortMapping$Protocol;

    .line 109
    iput-object p8, p0, Lorg/fourthline/cling/support/model/PortMapping;->description:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 177
    iget-object v0, p0, Lorg/fourthline/cling/support/model/PortMapping;->description:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "-"

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/fourthline/cling/support/model/PortMapping;->description:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public getExternalPort()Lorg/fourthline/cling/model/types/UnsignedIntegerTwoBytes;
    .locals 1

    .line 141
    iget-object v0, p0, Lorg/fourthline/cling/support/model/PortMapping;->externalPort:Lorg/fourthline/cling/model/types/UnsignedIntegerTwoBytes;

    return-object v0
.end method

.method public getInternalClient()Ljava/lang/String;
    .locals 1

    .line 157
    iget-object v0, p0, Lorg/fourthline/cling/support/model/PortMapping;->internalClient:Ljava/lang/String;

    return-object v0
.end method

.method public getInternalPort()Lorg/fourthline/cling/model/types/UnsignedIntegerTwoBytes;
    .locals 1

    .line 149
    iget-object v0, p0, Lorg/fourthline/cling/support/model/PortMapping;->internalPort:Lorg/fourthline/cling/model/types/UnsignedIntegerTwoBytes;

    return-object v0
.end method

.method public getLeaseDurationSeconds()Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;
    .locals 1

    .line 121
    iget-object v0, p0, Lorg/fourthline/cling/support/model/PortMapping;->leaseDurationSeconds:Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;

    return-object v0
.end method

.method public getProtocol()Lorg/fourthline/cling/support/model/PortMapping$Protocol;
    .locals 1

    .line 165
    iget-object v0, p0, Lorg/fourthline/cling/support/model/PortMapping;->protocol:Lorg/fourthline/cling/support/model/PortMapping$Protocol;

    return-object v0
.end method

.method public getRemoteHost()Ljava/lang/String;
    .locals 1

    .line 133
    iget-object v0, p0, Lorg/fourthline/cling/support/model/PortMapping;->remoteHost:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "-"

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/fourthline/cling/support/model/PortMapping;->remoteHost:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public hasDescription()Z
    .locals 1

    .line 173
    iget-object v0, p0, Lorg/fourthline/cling/support/model/PortMapping;->description:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasRemoteHost()Z
    .locals 1

    .line 129
    iget-object v0, p0, Lorg/fourthline/cling/support/model/PortMapping;->remoteHost:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/fourthline/cling/support/model/PortMapping;->remoteHost:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .line 113
    iget-boolean v0, p0, Lorg/fourthline/cling/support/model/PortMapping;->enabled:Z

    return v0
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, "-"

    .line 181
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 p1, 0x0

    :cond_1
    iput-object p1, p0, Lorg/fourthline/cling/support/model/PortMapping;->description:Ljava/lang/String;

    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    .line 117
    iput-boolean p1, p0, Lorg/fourthline/cling/support/model/PortMapping;->enabled:Z

    return-void
.end method

.method public setExternalPort(Lorg/fourthline/cling/model/types/UnsignedIntegerTwoBytes;)V
    .locals 0

    .line 145
    iput-object p1, p0, Lorg/fourthline/cling/support/model/PortMapping;->externalPort:Lorg/fourthline/cling/model/types/UnsignedIntegerTwoBytes;

    return-void
.end method

.method public setInternalClient(Ljava/lang/String;)V
    .locals 0

    .line 161
    iput-object p1, p0, Lorg/fourthline/cling/support/model/PortMapping;->internalClient:Ljava/lang/String;

    return-void
.end method

.method public setInternalPort(Lorg/fourthline/cling/model/types/UnsignedIntegerTwoBytes;)V
    .locals 0

    .line 153
    iput-object p1, p0, Lorg/fourthline/cling/support/model/PortMapping;->internalPort:Lorg/fourthline/cling/model/types/UnsignedIntegerTwoBytes;

    return-void
.end method

.method public setLeaseDurationSeconds(Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;)V
    .locals 0

    .line 125
    iput-object p1, p0, Lorg/fourthline/cling/support/model/PortMapping;->leaseDurationSeconds:Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;

    return-void
.end method

.method public setProtocol(Lorg/fourthline/cling/support/model/PortMapping$Protocol;)V
    .locals 0

    .line 169
    iput-object p1, p0, Lorg/fourthline/cling/support/model/PortMapping;->protocol:Lorg/fourthline/cling/support/model/PortMapping$Protocol;

    return-void
.end method

.method public setRemoteHost(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, "-"

    .line 137
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 p1, 0x0

    :cond_1
    iput-object p1, p0, Lorg/fourthline/cling/support/model/PortMapping;->remoteHost:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 186
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") Protocol: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/fourthline/cling/support/model/PortMapping;->getProtocol()Lorg/fourthline/cling/support/model/PortMapping$Protocol;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/fourthline/cling/support/model/PortMapping;->getExternalPort()Lorg/fourthline/cling/model/types/UnsignedIntegerTwoBytes;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " => "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/fourthline/cling/support/model/PortMapping;->getInternalClient()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
