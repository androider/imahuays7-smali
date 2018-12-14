.class public abstract Lorg/fourthline/cling/support/igd/callback/PortMappingAdd;
.super Lorg/fourthline/cling/controlpoint/ActionCallback;
.source "PortMappingAdd.java"


# instance fields
.field protected final portMapping:Lorg/fourthline/cling/support/model/PortMapping;


# direct methods
.method protected constructor <init>(Lorg/fourthline/cling/model/meta/Service;Lorg/fourthline/cling/controlpoint/ControlPoint;Lorg/fourthline/cling/support/model/PortMapping;)V
    .locals 2

    .line 36
    new-instance v0, Lorg/fourthline/cling/model/action/ActionInvocation;

    const-string v1, "AddPortMapping"

    invoke-virtual {p1, v1}, Lorg/fourthline/cling/model/meta/Service;->getAction(Ljava/lang/String;)Lorg/fourthline/cling/model/meta/Action;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/fourthline/cling/model/action/ActionInvocation;-><init>(Lorg/fourthline/cling/model/meta/Action;)V

    invoke-direct {p0, v0, p2}, Lorg/fourthline/cling/controlpoint/ActionCallback;-><init>(Lorg/fourthline/cling/model/action/ActionInvocation;Lorg/fourthline/cling/controlpoint/ControlPoint;)V

    .line 38
    iput-object p3, p0, Lorg/fourthline/cling/support/igd/callback/PortMappingAdd;->portMapping:Lorg/fourthline/cling/support/model/PortMapping;

    .line 40
    invoke-virtual {p0}, Lorg/fourthline/cling/support/igd/callback/PortMappingAdd;->getActionInvocation()Lorg/fourthline/cling/model/action/ActionInvocation;

    move-result-object p1

    const-string p2, "NewExternalPort"

    invoke-virtual {p3}, Lorg/fourthline/cling/support/model/PortMapping;->getExternalPort()Lorg/fourthline/cling/model/types/UnsignedIntegerTwoBytes;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lorg/fourthline/cling/model/action/ActionInvocation;->setInput(Ljava/lang/String;Ljava/lang/Object;)V

    .line 41
    invoke-virtual {p0}, Lorg/fourthline/cling/support/igd/callback/PortMappingAdd;->getActionInvocation()Lorg/fourthline/cling/model/action/ActionInvocation;

    move-result-object p1

    const-string p2, "NewProtocol"

    invoke-virtual {p3}, Lorg/fourthline/cling/support/model/PortMapping;->getProtocol()Lorg/fourthline/cling/support/model/PortMapping$Protocol;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lorg/fourthline/cling/model/action/ActionInvocation;->setInput(Ljava/lang/String;Ljava/lang/Object;)V

    .line 42
    invoke-virtual {p0}, Lorg/fourthline/cling/support/igd/callback/PortMappingAdd;->getActionInvocation()Lorg/fourthline/cling/model/action/ActionInvocation;

    move-result-object p1

    const-string p2, "NewInternalClient"

    invoke-virtual {p3}, Lorg/fourthline/cling/support/model/PortMapping;->getInternalClient()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lorg/fourthline/cling/model/action/ActionInvocation;->setInput(Ljava/lang/String;Ljava/lang/Object;)V

    .line 43
    invoke-virtual {p0}, Lorg/fourthline/cling/support/igd/callback/PortMappingAdd;->getActionInvocation()Lorg/fourthline/cling/model/action/ActionInvocation;

    move-result-object p1

    const-string p2, "NewInternalPort"

    invoke-virtual {p3}, Lorg/fourthline/cling/support/model/PortMapping;->getInternalPort()Lorg/fourthline/cling/model/types/UnsignedIntegerTwoBytes;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lorg/fourthline/cling/model/action/ActionInvocation;->setInput(Ljava/lang/String;Ljava/lang/Object;)V

    .line 44
    invoke-virtual {p0}, Lorg/fourthline/cling/support/igd/callback/PortMappingAdd;->getActionInvocation()Lorg/fourthline/cling/model/action/ActionInvocation;

    move-result-object p1

    const-string p2, "NewLeaseDuration"

    invoke-virtual {p3}, Lorg/fourthline/cling/support/model/PortMapping;->getLeaseDurationSeconds()Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lorg/fourthline/cling/model/action/ActionInvocation;->setInput(Ljava/lang/String;Ljava/lang/Object;)V

    .line 45
    invoke-virtual {p0}, Lorg/fourthline/cling/support/igd/callback/PortMappingAdd;->getActionInvocation()Lorg/fourthline/cling/model/action/ActionInvocation;

    move-result-object p1

    const-string p2, "NewEnabled"

    invoke-virtual {p3}, Lorg/fourthline/cling/support/model/PortMapping;->isEnabled()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lorg/fourthline/cling/model/action/ActionInvocation;->setInput(Ljava/lang/String;Ljava/lang/Object;)V

    .line 46
    invoke-virtual {p3}, Lorg/fourthline/cling/support/model/PortMapping;->hasRemoteHost()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 47
    invoke-virtual {p0}, Lorg/fourthline/cling/support/igd/callback/PortMappingAdd;->getActionInvocation()Lorg/fourthline/cling/model/action/ActionInvocation;

    move-result-object p1

    const-string p2, "NewRemoteHost"

    invoke-virtual {p3}, Lorg/fourthline/cling/support/model/PortMapping;->getRemoteHost()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lorg/fourthline/cling/model/action/ActionInvocation;->setInput(Ljava/lang/String;Ljava/lang/Object;)V

    .line 48
    :cond_0
    invoke-virtual {p3}, Lorg/fourthline/cling/support/model/PortMapping;->hasDescription()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 49
    invoke-virtual {p0}, Lorg/fourthline/cling/support/igd/callback/PortMappingAdd;->getActionInvocation()Lorg/fourthline/cling/model/action/ActionInvocation;

    move-result-object p1

    const-string p2, "NewPortMappingDescription"

    invoke-virtual {p3}, Lorg/fourthline/cling/support/model/PortMapping;->getDescription()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lorg/fourthline/cling/model/action/ActionInvocation;->setInput(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/model/meta/Service;Lorg/fourthline/cling/support/model/PortMapping;)V
    .locals 1

    const/4 v0, 0x0

    .line 32
    invoke-direct {p0, p1, v0, p2}, Lorg/fourthline/cling/support/igd/callback/PortMappingAdd;-><init>(Lorg/fourthline/cling/model/meta/Service;Lorg/fourthline/cling/controlpoint/ControlPoint;Lorg/fourthline/cling/support/model/PortMapping;)V

    return-void
.end method
