.class public abstract Lorg/fourthline/cling/support/avtransport/callback/GetPositionInfo;
.super Lorg/fourthline/cling/controlpoint/ActionCallback;
.source "GetPositionInfo.java"


# static fields
.field private static log:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    const-class v0, Lorg/fourthline/cling/support/avtransport/callback/GetPositionInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/fourthline/cling/support/avtransport/callback/GetPositionInfo;->log:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/model/meta/Service;)V
    .locals 3

    .line 35
    new-instance v0, Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;-><init>(J)V

    invoke-direct {p0, v0, p1}, Lorg/fourthline/cling/support/avtransport/callback/GetPositionInfo;-><init>(Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;Lorg/fourthline/cling/model/meta/Service;)V

    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;Lorg/fourthline/cling/model/meta/Service;)V
    .locals 2

    .line 39
    new-instance v0, Lorg/fourthline/cling/model/action/ActionInvocation;

    const-string v1, "GetPositionInfo"

    invoke-virtual {p2, v1}, Lorg/fourthline/cling/model/meta/Service;->getAction(Ljava/lang/String;)Lorg/fourthline/cling/model/meta/Action;

    move-result-object p2

    invoke-direct {v0, p2}, Lorg/fourthline/cling/model/action/ActionInvocation;-><init>(Lorg/fourthline/cling/model/meta/Action;)V

    invoke-direct {p0, v0}, Lorg/fourthline/cling/controlpoint/ActionCallback;-><init>(Lorg/fourthline/cling/model/action/ActionInvocation;)V

    .line 40
    invoke-virtual {p0}, Lorg/fourthline/cling/support/avtransport/callback/GetPositionInfo;->getActionInvocation()Lorg/fourthline/cling/model/action/ActionInvocation;

    move-result-object p2

    const-string v0, "InstanceID"

    invoke-virtual {p2, v0, p1}, Lorg/fourthline/cling/model/action/ActionInvocation;->setInput(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public abstract received(Lorg/fourthline/cling/model/action/ActionInvocation;Lorg/fourthline/cling/support/model/PositionInfo;)V
.end method

.method public success(Lorg/fourthline/cling/model/action/ActionInvocation;)V
    .locals 2

    .line 44
    new-instance v0, Lorg/fourthline/cling/support/model/PositionInfo;

    invoke-virtual {p1}, Lorg/fourthline/cling/model/action/ActionInvocation;->getOutputMap()Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/fourthline/cling/support/model/PositionInfo;-><init>(Ljava/util/Map;)V

    .line 45
    invoke-virtual {p0, p1, v0}, Lorg/fourthline/cling/support/avtransport/callback/GetPositionInfo;->received(Lorg/fourthline/cling/model/action/ActionInvocation;Lorg/fourthline/cling/support/model/PositionInfo;)V

    return-void
.end method
