.class public final Lorg/fourthline/cling/controlpoint/ActionCallback$Default;
.super Lorg/fourthline/cling/controlpoint/ActionCallback;
.source "ActionCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/fourthline/cling/controlpoint/ActionCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Default"
.end annotation


# direct methods
.method public constructor <init>(Lorg/fourthline/cling/model/action/ActionInvocation;Lorg/fourthline/cling/controlpoint/ControlPoint;)V
    .locals 0

    .line 76
    invoke-direct {p0, p1, p2}, Lorg/fourthline/cling/controlpoint/ActionCallback;-><init>(Lorg/fourthline/cling/model/action/ActionInvocation;Lorg/fourthline/cling/controlpoint/ControlPoint;)V

    return-void
.end method


# virtual methods
.method public failure(Lorg/fourthline/cling/model/action/ActionInvocation;Lorg/fourthline/cling/model/message/UpnpResponse;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public success(Lorg/fourthline/cling/model/action/ActionInvocation;)V
    .locals 0

    return-void
.end method
