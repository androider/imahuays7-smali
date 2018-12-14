.class public abstract Lorg/fourthline/cling/support/avtransport/callback/Seek;
.super Lorg/fourthline/cling/controlpoint/ActionCallback;
.source "Seek.java"


# static fields
.field private static log:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    const-class v0, Lorg/fourthline/cling/support/avtransport/callback/Seek;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/fourthline/cling/support/avtransport/callback/Seek;->log:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/model/meta/Service;Ljava/lang/String;)V
    .locals 3

    .line 35
    new-instance v0, Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;-><init>(J)V

    sget-object v1, Lorg/fourthline/cling/support/model/SeekMode;->REL_TIME:Lorg/fourthline/cling/support/model/SeekMode;

    invoke-direct {p0, v0, p1, v1, p2}, Lorg/fourthline/cling/support/avtransport/callback/Seek;-><init>(Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;Lorg/fourthline/cling/model/meta/Service;Lorg/fourthline/cling/support/model/SeekMode;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/model/meta/Service;Lorg/fourthline/cling/support/model/SeekMode;Ljava/lang/String;)V
    .locals 3

    .line 43
    new-instance v0, Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;-><init>(J)V

    invoke-direct {p0, v0, p1, p2, p3}, Lorg/fourthline/cling/support/avtransport/callback/Seek;-><init>(Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;Lorg/fourthline/cling/model/meta/Service;Lorg/fourthline/cling/support/model/SeekMode;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;Lorg/fourthline/cling/model/meta/Service;Ljava/lang/String;)V
    .locals 1

    .line 39
    sget-object v0, Lorg/fourthline/cling/support/model/SeekMode;->REL_TIME:Lorg/fourthline/cling/support/model/SeekMode;

    invoke-direct {p0, p1, p2, v0, p3}, Lorg/fourthline/cling/support/avtransport/callback/Seek;-><init>(Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;Lorg/fourthline/cling/model/meta/Service;Lorg/fourthline/cling/support/model/SeekMode;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;Lorg/fourthline/cling/model/meta/Service;Lorg/fourthline/cling/support/model/SeekMode;Ljava/lang/String;)V
    .locals 2

    .line 47
    new-instance v0, Lorg/fourthline/cling/model/action/ActionInvocation;

    const-string v1, "Seek"

    invoke-virtual {p2, v1}, Lorg/fourthline/cling/model/meta/Service;->getAction(Ljava/lang/String;)Lorg/fourthline/cling/model/meta/Action;

    move-result-object p2

    invoke-direct {v0, p2}, Lorg/fourthline/cling/model/action/ActionInvocation;-><init>(Lorg/fourthline/cling/model/meta/Action;)V

    invoke-direct {p0, v0}, Lorg/fourthline/cling/controlpoint/ActionCallback;-><init>(Lorg/fourthline/cling/model/action/ActionInvocation;)V

    .line 48
    invoke-virtual {p0}, Lorg/fourthline/cling/support/avtransport/callback/Seek;->getActionInvocation()Lorg/fourthline/cling/model/action/ActionInvocation;

    move-result-object p2

    const-string v0, "InstanceID"

    invoke-virtual {p2, v0, p1}, Lorg/fourthline/cling/model/action/ActionInvocation;->setInput(Ljava/lang/String;Ljava/lang/Object;)V

    .line 49
    invoke-virtual {p0}, Lorg/fourthline/cling/support/avtransport/callback/Seek;->getActionInvocation()Lorg/fourthline/cling/model/action/ActionInvocation;

    move-result-object p1

    const-string p2, "Unit"

    invoke-virtual {p3}, Lorg/fourthline/cling/support/model/SeekMode;->name()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lorg/fourthline/cling/model/action/ActionInvocation;->setInput(Ljava/lang/String;Ljava/lang/Object;)V

    .line 50
    invoke-virtual {p0}, Lorg/fourthline/cling/support/avtransport/callback/Seek;->getActionInvocation()Lorg/fourthline/cling/model/action/ActionInvocation;

    move-result-object p1

    const-string p2, "Target"

    invoke-virtual {p1, p2, p4}, Lorg/fourthline/cling/model/action/ActionInvocation;->setInput(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public success(Lorg/fourthline/cling/model/action/ActionInvocation;)V
    .locals 1

    .line 55
    sget-object p1, Lorg/fourthline/cling/support/avtransport/callback/Seek;->log:Ljava/util/logging/Logger;

    const-string v0, "Execution successful"

    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    return-void
.end method
