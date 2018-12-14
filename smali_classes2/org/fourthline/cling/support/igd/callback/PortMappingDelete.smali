.class public abstract Lorg/fourthline/cling/support/igd/callback/PortMappingDelete;
.super Lorg/fourthline/cling/controlpoint/ActionCallback;
.source "PortMappingDelete.java"


# instance fields
.field protected final portMapping:Lorg/fourthline/cling/support/model/PortMapping;


# direct methods
.method protected constructor <init>(Lorg/fourthline/cling/model/meta/Service;Lorg/fourthline/cling/controlpoint/ControlPoint;Lorg/fourthline/cling/support/model/PortMapping;)V
    .locals 2

    .line 36
    new-instance v0, Lorg/fourthline/cling/model/action/ActionInvocation;

    const-string v1, "DeletePortMapping"

    invoke-virtual {p1, v1}, Lorg/fourthline/cling/model/meta/Service;->getAction(Ljava/lang/String;)Lorg/fourthline/cling/model/meta/Action;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/fourthline/cling/model/action/ActionInvocation;-><init>(Lorg/fourthline/cling/model/meta/Action;)V

    invoke-direct {p0, v0, p2}, Lorg/fourthline/cling/controlpoint/ActionCallback;-><init>(Lorg/fourthline/cling/model/action/ActionInvocation;Lorg/fourthline/cling/controlpoint/ControlPoint;)V

    .line 38
    iput-object p3, p0, Lorg/fourthline/cling/support/igd/callback/PortMappingDelete;->portMapping:Lorg/fourthline/cling/support/model/PortMapping;

    .line 40
    invoke-virtual {p0}, Lorg/fourthline/cling/support/igd/callback/PortMappingDelete;->getActionInvocation()Lorg/fourthline/cling/model/action/ActionInvocation;

    move-result-object p1

    const-string p2, "NewExternalPort"

    invoke-virtual {p3}, Lorg/fourthline/cling/support/model/PortMapping;->getExternalPort()Lorg/fourthline/cling/model/types/UnsignedIntegerTwoBytes;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lorg/fourthline/cling/model/action/ActionInvocation;->setInput(Ljava/lang/String;Ljava/lang/Object;)V

    .line 41
    invoke-virtual {p0}, Lorg/fourthline/cling/support/igd/callback/PortMappingDelete;->getActionInvocation()Lorg/fourthline/cling/model/action/ActionInvocation;

    move-result-object p1

    const-string p2, "NewProtocol"

    invoke-virtual {p3}, Lorg/fourthline/cling/support/model/PortMapping;->getProtocol()Lorg/fourthline/cling/support/model/PortMapping$Protocol;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lorg/fourthline/cling/model/action/ActionInvocation;->setInput(Ljava/lang/String;Ljava/lang/Object;)V

    .line 42
    invoke-virtual {p3}, Lorg/fourthline/cling/support/model/PortMapping;->hasRemoteHost()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 43
    invoke-virtual {p0}, Lorg/fourthline/cling/support/igd/callback/PortMappingDelete;->getActionInvocation()Lorg/fourthline/cling/model/action/ActionInvocation;

    move-result-object p1

    const-string p2, "NewRemoteHost"

    invoke-virtual {p3}, Lorg/fourthline/cling/support/model/PortMapping;->getRemoteHost()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lorg/fourthline/cling/model/action/ActionInvocation;->setInput(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/model/meta/Service;Lorg/fourthline/cling/support/model/PortMapping;)V
    .locals 1

    const/4 v0, 0x0

    .line 32
    invoke-direct {p0, p1, v0, p2}, Lorg/fourthline/cling/support/igd/callback/PortMappingDelete;-><init>(Lorg/fourthline/cling/model/meta/Service;Lorg/fourthline/cling/controlpoint/ControlPoint;Lorg/fourthline/cling/support/model/PortMapping;)V

    return-void
.end method
