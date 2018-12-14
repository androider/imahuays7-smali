.class public abstract Lorg/fourthline/cling/support/igd/callback/PortMappingEntryGet;
.super Lorg/fourthline/cling/controlpoint/ActionCallback;
.source "PortMappingEntryGet.java"


# direct methods
.method public constructor <init>(Lorg/fourthline/cling/model/meta/Service;J)V
    .locals 1

    const/4 v0, 0x0

    .line 16
    invoke-direct {p0, p1, v0, p2, p3}, Lorg/fourthline/cling/support/igd/callback/PortMappingEntryGet;-><init>(Lorg/fourthline/cling/model/meta/Service;Lorg/fourthline/cling/controlpoint/ControlPoint;J)V

    return-void
.end method

.method protected constructor <init>(Lorg/fourthline/cling/model/meta/Service;Lorg/fourthline/cling/controlpoint/ControlPoint;J)V
    .locals 2

    .line 20
    new-instance v0, Lorg/fourthline/cling/model/action/ActionInvocation;

    const-string v1, "GetGenericPortMappingEntry"

    invoke-virtual {p1, v1}, Lorg/fourthline/cling/model/meta/Service;->getAction(Ljava/lang/String;)Lorg/fourthline/cling/model/meta/Action;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/fourthline/cling/model/action/ActionInvocation;-><init>(Lorg/fourthline/cling/model/meta/Action;)V

    invoke-direct {p0, v0, p2}, Lorg/fourthline/cling/controlpoint/ActionCallback;-><init>(Lorg/fourthline/cling/model/action/ActionInvocation;Lorg/fourthline/cling/controlpoint/ControlPoint;)V

    .line 22
    invoke-virtual {p0}, Lorg/fourthline/cling/support/igd/callback/PortMappingEntryGet;->getActionInvocation()Lorg/fourthline/cling/model/action/ActionInvocation;

    move-result-object p1

    const-string p2, "NewPortMappingIndex"

    new-instance v0, Lorg/fourthline/cling/model/types/UnsignedIntegerTwoBytes;

    invoke-direct {v0, p3, p4}, Lorg/fourthline/cling/model/types/UnsignedIntegerTwoBytes;-><init>(J)V

    invoke-virtual {p1, p2, v0}, Lorg/fourthline/cling/model/action/ActionInvocation;->setInput(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public success(Lorg/fourthline/cling/model/action/ActionInvocation;)V
    .locals 1

    .line 28
    invoke-virtual {p1}, Lorg/fourthline/cling/model/action/ActionInvocation;->getOutputMap()Ljava/util/Map;

    move-result-object p1

    .line 29
    new-instance v0, Lorg/fourthline/cling/support/model/PortMapping;

    invoke-direct {v0, p1}, Lorg/fourthline/cling/support/model/PortMapping;-><init>(Ljava/util/Map;)V

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/igd/callback/PortMappingEntryGet;->success(Lorg/fourthline/cling/support/model/PortMapping;)V

    return-void
.end method

.method protected abstract success(Lorg/fourthline/cling/support/model/PortMapping;)V
.end method
