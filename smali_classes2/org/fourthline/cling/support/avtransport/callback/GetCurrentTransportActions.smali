.class public abstract Lorg/fourthline/cling/support/avtransport/callback/GetCurrentTransportActions;
.super Lorg/fourthline/cling/controlpoint/ActionCallback;
.source "GetCurrentTransportActions.java"


# static fields
.field private static log:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    const-class v0, Lorg/fourthline/cling/support/avtransport/callback/GetCurrentTransportActions;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/fourthline/cling/support/avtransport/callback/GetCurrentTransportActions;->log:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/model/meta/Service;)V
    .locals 3

    .line 34
    new-instance v0, Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;-><init>(J)V

    invoke-direct {p0, v0, p1}, Lorg/fourthline/cling/support/avtransport/callback/GetCurrentTransportActions;-><init>(Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;Lorg/fourthline/cling/model/meta/Service;)V

    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;Lorg/fourthline/cling/model/meta/Service;)V
    .locals 2

    .line 38
    new-instance v0, Lorg/fourthline/cling/model/action/ActionInvocation;

    const-string v1, "GetCurrentTransportActions"

    invoke-virtual {p2, v1}, Lorg/fourthline/cling/model/meta/Service;->getAction(Ljava/lang/String;)Lorg/fourthline/cling/model/meta/Action;

    move-result-object p2

    invoke-direct {v0, p2}, Lorg/fourthline/cling/model/action/ActionInvocation;-><init>(Lorg/fourthline/cling/model/meta/Action;)V

    invoke-direct {p0, v0}, Lorg/fourthline/cling/controlpoint/ActionCallback;-><init>(Lorg/fourthline/cling/model/action/ActionInvocation;)V

    .line 39
    invoke-virtual {p0}, Lorg/fourthline/cling/support/avtransport/callback/GetCurrentTransportActions;->getActionInvocation()Lorg/fourthline/cling/model/action/ActionInvocation;

    move-result-object p2

    const-string v0, "InstanceID"

    invoke-virtual {p2, v0, p1}, Lorg/fourthline/cling/model/action/ActionInvocation;->setInput(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public abstract received(Lorg/fourthline/cling/model/action/ActionInvocation;[Lorg/fourthline/cling/support/model/TransportAction;)V
.end method

.method public success(Lorg/fourthline/cling/model/action/ActionInvocation;)V
    .locals 1

    const-string v0, "Actions"

    .line 43
    invoke-virtual {p1, v0}, Lorg/fourthline/cling/model/action/ActionInvocation;->getOutput(Ljava/lang/String;)Lorg/fourthline/cling/model/action/ActionArgumentValue;

    move-result-object v0

    invoke-virtual {v0}, Lorg/fourthline/cling/model/action/ActionArgumentValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 44
    invoke-static {v0}, Lorg/fourthline/cling/support/model/TransportAction;->valueOfCommaSeparatedList(Ljava/lang/String;)[Lorg/fourthline/cling/support/model/TransportAction;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/fourthline/cling/support/avtransport/callback/GetCurrentTransportActions;->received(Lorg/fourthline/cling/model/action/ActionInvocation;[Lorg/fourthline/cling/support/model/TransportAction;)V

    return-void
.end method
