.class public abstract Lorg/fourthline/cling/support/renderingcontrol/callback/SetMute;
.super Lorg/fourthline/cling/controlpoint/ActionCallback;
.source "SetMute.java"


# static fields
.field private static log:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    const-class v0, Lorg/fourthline/cling/support/renderingcontrol/callback/SetMute;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/fourthline/cling/support/renderingcontrol/callback/SetMute;->log:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/model/meta/Service;Z)V
    .locals 3

    .line 35
    new-instance v0, Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;-><init>(J)V

    invoke-direct {p0, v0, p1, p2}, Lorg/fourthline/cling/support/renderingcontrol/callback/SetMute;-><init>(Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;Lorg/fourthline/cling/model/meta/Service;Z)V

    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;Lorg/fourthline/cling/model/meta/Service;Z)V
    .locals 2

    .line 39
    new-instance v0, Lorg/fourthline/cling/model/action/ActionInvocation;

    const-string v1, "SetMute"

    invoke-virtual {p2, v1}, Lorg/fourthline/cling/model/meta/Service;->getAction(Ljava/lang/String;)Lorg/fourthline/cling/model/meta/Action;

    move-result-object p2

    invoke-direct {v0, p2}, Lorg/fourthline/cling/model/action/ActionInvocation;-><init>(Lorg/fourthline/cling/model/meta/Action;)V

    invoke-direct {p0, v0}, Lorg/fourthline/cling/controlpoint/ActionCallback;-><init>(Lorg/fourthline/cling/model/action/ActionInvocation;)V

    .line 40
    invoke-virtual {p0}, Lorg/fourthline/cling/support/renderingcontrol/callback/SetMute;->getActionInvocation()Lorg/fourthline/cling/model/action/ActionInvocation;

    move-result-object p2

    const-string v0, "InstanceID"

    invoke-virtual {p2, v0, p1}, Lorg/fourthline/cling/model/action/ActionInvocation;->setInput(Ljava/lang/String;Ljava/lang/Object;)V

    .line 41
    invoke-virtual {p0}, Lorg/fourthline/cling/support/renderingcontrol/callback/SetMute;->getActionInvocation()Lorg/fourthline/cling/model/action/ActionInvocation;

    move-result-object p1

    const-string p2, "Channel"

    sget-object v0, Lorg/fourthline/cling/support/model/Channel;->Master:Lorg/fourthline/cling/support/model/Channel;

    invoke-virtual {v0}, Lorg/fourthline/cling/support/model/Channel;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lorg/fourthline/cling/model/action/ActionInvocation;->setInput(Ljava/lang/String;Ljava/lang/Object;)V

    .line 42
    invoke-virtual {p0}, Lorg/fourthline/cling/support/renderingcontrol/callback/SetMute;->getActionInvocation()Lorg/fourthline/cling/model/action/ActionInvocation;

    move-result-object p1

    const-string p2, "DesiredMute"

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lorg/fourthline/cling/model/action/ActionInvocation;->setInput(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public success(Lorg/fourthline/cling/model/action/ActionInvocation;)V
    .locals 1

    .line 47
    sget-object p1, Lorg/fourthline/cling/support/renderingcontrol/callback/SetMute;->log:Ljava/util/logging/Logger;

    const-string v0, "Executed successfully"

    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    return-void
.end method
